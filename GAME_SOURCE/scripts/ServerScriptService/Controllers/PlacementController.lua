--!strict

-- Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local CollectionService = game:GetService("CollectionService")
local HttpService = game:GetService("HttpService")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")

-- Modules
-- ## MODIFIED ## Updated to handle the new module structure
local ItemConfigsModule = require(ReplicatedStorage.Modules.ItemConfigurations)
local ItemConfigurations = ItemConfigsModule.ItemConfigurations
local LimitedItems = ItemConfigsModule.LimitedItems
local PlayerController
local TurretController

-- Events
local PlaceItemEvent = ReplicatedStorage.Events:WaitForChild("PlaceItemEvent")
local RemoveItemEvent = ReplicatedStorage.Events:WaitForChild("RemoveItemEvent")
local ItemPlacedFX = ReplicatedStorage.Events:WaitForChild("ItemPlacedFX")
local ItemRemovedFX = ReplicatedStorage.Events:WaitForChild("ItemRemovedFX")

-- Folders for item models
local BLOCKS_MODELS = ReplicatedStorage:WaitForChild("Blocks")
local TURRETS_MODELS = ReplicatedStorage:WaitForChild("Turrets")

-- ## ADDED ## Create one master table for all item configurations for easy lookups
local AllItemConfigs = {}
for id, config in pairs(ItemConfigurations) do
	AllItemConfigs[id] = config
end
for id, config in pairs(LimitedItems) do
	AllItemConfigs[id] = config
end

-- Controller Definition
local PlacementController = {}
local placementDebounce = {}

local function getModelTemplate(itemId: string)
	local config = AllItemConfigs[itemId] -- Use the master table
	if not config then return nil end

	-- The LavaTurret might be in the main Turrets folder
	local template = BLOCKS_MODELS:FindFirstChild(itemId) or TURRETS_MODELS:FindFirstChild(itemId)
	return template
end

local function cframeToPositionTable(cframe: CFrame)
	local _, rotY, _ = cframe:ToOrientation()
	return {cframe.X, cframe.Y, cframe.Z, math.deg(rotY)}
end

local function positionTableToCFrame(posTable: {number})
	return CFrame.new(posTable[1], posTable[2], posTable[3]) * CFrame.Angles(0, math.rad(posTable[4]), 0)
end

function PlacementController:LoadPlacedItems(player: Player, plot: Model)
	local profile = PlayerController:GetProfile(player)
	if not (profile and profile.Data.PlacedItems) then return end

	local plotBase = plot:FindFirstChild("Base")
	if not plotBase then 
		warn("LoadPlacedItems failed: Plot is missing its 'Base' part.")
		return 
	end

	for _, itemData in ipairs(profile.Data.PlacedItems) do
		local template = getModelTemplate(itemData.ItemId)
		if template then
			local newItem = template:Clone()
			local config = AllItemConfigs[newItem.Name]

			newItem:SetAttribute("UniqueId", itemData.UniqueId)
			newItem:SetAttribute("IsPlacedItem", true)

			if config and config.Health then
				newItem:SetAttribute("Health", config.Health)
			end

			local relativeCFrame = positionTableToCFrame(itemData.Position)
			local worldCFrame = plotBase.CFrame * relativeCFrame

			newItem:SetPrimaryPartCFrame(worldCFrame)
			newItem.Parent = plot
			CollectionService:AddTag(newItem, "PlacedItem")
			CollectionService:AddTag(newItem, "Damageable")

			if config and config.Type == "Turrets" then
				TurretController:AddTurret(newItem, plot)
			end
		end
	end
end

function PlacementController:ResetPlotItems(player: Player)
	local profile = PlayerController:GetProfile(player)
	if not profile then return end
	local playerPlot
	for _, plot in ipairs(Workspace.Plots:GetChildren()) do
		if plot:IsA("Model") and plot:GetAttribute("OwnerId") == player.UserId then
			playerPlot = plot
			break
		end
	end
	if not playerPlot then return end
	local itemsOnPlot = {}
	for _, child in ipairs(playerPlot:GetChildren()) do
		if CollectionService:HasTag(child, "PlacedItem") then
			table.insert(itemsOnPlot, child)
		end
	end
	if #itemsOnPlot == 0 then return end
	for _, itemModel in ipairs(itemsOnPlot) do
		local itemId = itemModel.Name
		local uniqueId = itemModel:GetAttribute("UniqueId")
		profile.Data.BlockInventory[itemId] = (profile.Data.BlockInventory[itemId] or 0) + 1
		for i = #profile.Data.PlacedItems, 1, -1 do
			if profile.Data.PlacedItems[i].UniqueId == uniqueId then
				table.remove(profile.Data.PlacedItems, i)
				break
			end
		end
		local config = AllItemConfigs[itemModel.Name]
		if config and config.Type == "Turrets" then
			TurretController:RemoveTurret(itemModel)
		end
		itemModel:Destroy()
	end
	ReplicatedStorage.Events.BlockInventoryUpdated:FireClient(player, profile.Data.BlockInventory)
	ItemRemovedFX:FireClient(player)
end


local function onPlaceItem(player: Player, itemId: string, targetCFrame: CFrame, plot: Model)
	if placementDebounce[player] then return end
	placementDebounce[player] = true
	local profile = PlayerController:GetProfile(player)
	-- ## MODIFIED ## Look for the item's config in the new master table
	local config = AllItemConfigs[itemId]

	if not (profile and config and plot and plot:GetAttribute("OwnerId") == player.UserId) then
		placementDebounce[player] = nil
		return
	end
	local ownedCount = profile.Data.BlockInventory[itemId] or 0
	if ownedCount <= 0 then
		placementDebounce[player] = nil
		return
	end
	local template = getModelTemplate(itemId)
	if not (template and template.PrimaryPart) then
		placementDebounce[player] = nil
		return
	end
	local placementBoxTemplate = template:FindFirstChild("PlacementBox")
	if not placementBoxTemplate then
		warn(`[PlacementController] Item '{itemId}' is missing its 'PlacementBox' part.`)
		placementDebounce[player] = nil
		return
	end
	local tempServerBox = placementBoxTemplate:Clone()
	tempServerBox.CFrame = targetCFrame * template.PrimaryPart.CFrame:ToObjectSpace(placementBoxTemplate.CFrame)
	tempServerBox.Parent = Workspace
	task.wait()
	local isOverlapping = false
	local overlapParams = OverlapParams.new()
	overlapParams.FilterDescendantsInstances = {tempServerBox}
	for _, part in ipairs(Workspace:GetPartsInPart(tempServerBox, overlapParams)) do
		local model = part:FindFirstAncestorOfClass("Model")
		if model and model.Parent == plot and CollectionService:HasTag(model, "PlacedItem") then
			isOverlapping = true
			break
		end
	end
	tempServerBox:Destroy()
	if isOverlapping then
		placementDebounce[player] = nil
		return
	end

	-- Onboarding check for placing the Old Turret
	if profile.Data.OnboardingStep == "Step6_PlaceOldTurret" and itemId == "OldTurret" then
		profile.Data.OnboardingStep = "Step7_StartFight"
		ReplicatedStorage.Events.UpdateOnboardingStep:FireClient(player, "Step7_StartFight")
	end

	profile.Data.BlockInventory[itemId] = ownedCount - 1
	local uniqueId = HttpService:GenerateGUID(false)

	local plotBase = plot:FindFirstChild("Base")
	if not plotBase then
		placementDebounce[player] = nil
		return
	end

	local relativeCFrame = plotBase.CFrame:ToObjectSpace(targetCFrame)
	table.insert(profile.Data.PlacedItems, {
		UniqueId = uniqueId,
		ItemId = itemId,
		Position = cframeToPositionTable(relativeCFrame)
	})

	local newItem = template:Clone()
	newItem:SetAttribute("UniqueId", uniqueId)
	newItem:SetAttribute("IsPlacedItem", true)
	if config.Health then
		newItem:SetAttribute("Health", config.Health)
	end
	newItem:SetPrimaryPartCFrame(targetCFrame)
	newItem.Parent = plot
	CollectionService:AddTag(newItem, "PlacedItem")
	CollectionService:AddTag(newItem, "Damageable")

	if config.Type == "Turrets" then
		TurretController:AddTurret(newItem, plot)
	end
	ItemPlacedFX:FireClient(player)
	ReplicatedStorage.Events.BlockInventoryUpdated:FireClient(player, profile.Data.BlockInventory)
	task.delay(0.2, function()
		placementDebounce[player] = nil
	end)
end

local function onRemoveItem(player: Player, itemToRemove: Model)
	local profile = PlayerController:GetProfile(player)
	local uniqueId = itemToRemove:GetAttribute("UniqueId")
	if not (profile and uniqueId and itemToRemove.Parent and itemToRemove.Parent:GetAttribute("OwnerId") == player.UserId) then
		return
	end
	local itemId = itemToRemove.Name
	local config = AllItemConfigs[itemId]
	if not config then return end
	for i, data in ipairs(profile.Data.PlacedItems) do
		if data.UniqueId == uniqueId then
			table.remove(profile.Data.PlacedItems, i)
			break
		end
	end
	profile.Data.BlockInventory[itemId] = (profile.Data.BlockInventory[itemId] or 0) + 1
	if config.Type == "Turrets" then
		TurretController:RemoveTurret(itemToRemove)
	end
	itemToRemove:Destroy()
	ItemRemovedFX:FireClient(player)
	ReplicatedStorage.Events.BlockInventoryUpdated:FireClient(player, profile.Data.BlockInventory)
end
local function onItemDestroyedByNPC(player: Player, uniqueId: string)
	local profile = PlayerController:GetProfile(player)
	if not profile then return end
	for i, data in ipairs(profile.Data.PlacedItems) do
		if data.UniqueId == uniqueId then
			table.remove(profile.Data.PlacedItems, i)
			print("Removed item destroyed by zombie from save data.")
			break
		end
	end
end

function PlacementController:Init(controllers: {[string]: any})
	PlayerController = controllers.PlayerController
	TurretController = controllers.TurretController
end

function PlacementController:Start()
	PlaceItemEvent.OnServerEvent:Connect(onPlaceItem)
	RemoveItemEvent.OnServerEvent:Connect(onRemoveItem)
	ReplicatedStorage.Events:WaitForChild("ItemDestroyedByNPC").Event:Connect(onItemDestroyedByNPC)
end

return PlacementController