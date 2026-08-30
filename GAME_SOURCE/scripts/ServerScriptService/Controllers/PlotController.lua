--!strict
-- Services
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local CollectionService = game:GetService("CollectionService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Modules
local PlacementController
local PlayerController
local CrateController
local WaveController 
local ModelConfigurations = require(ReplicatedStorage.Modules.ModelConfigurations)

local CRATE_MODELS = ReplicatedStorage:WaitForChild("Crates")
local ShowNotificationEvent = ReplicatedStorage.Events:WaitForChild("ShowNotification")

-- Controller Definition
local PlotController = {}
local PLOTS_FOLDER = Workspace:WaitForChild("Plots")
local ResetPlotEvent = ReplicatedStorage.Events:WaitForChild("ResetPlot")
local UpdateProtectionModelFX = ReplicatedStorage.Events:WaitForChild("UpdateProtectionModelFX")

local function findAvailablePlot(): Model?
	for _, plot in ipairs(PLOTS_FOLDER:GetChildren()) do
		if plot:IsA("Model") and not plot:GetAttribute("OwnerId") then
			return plot
		end
	end
	return nil
end

local function getPlotForPlayer(player: Player): Model?
	for _, plot in ipairs(PLOTS_FOLDER:GetChildren()) do
		if plot:IsA("Model") and plot:GetAttribute("OwnerId") == player.UserId then
			return plot
		end
	end
	return nil
end

local function spawnPromotionalCrate(plot: Model)
	local spawnPart = plot:FindFirstChild("RobuxCrateSpawn")
	if not spawnPart then 
		return
	end
	local crateTemplate = CRATE_MODELS:FindFirstChild("GoldCrate")
	if not (crateTemplate and crateTemplate.PrimaryPart) then return end

	local promoCrate = crateTemplate:Clone()
	promoCrate.Name = "PromotionalGoldCrate"
	promoCrate:SetPrimaryPartCFrame(spawnPart.CFrame * CFrame.new(0, 3, 0))
	promoCrate.Parent = plot
end

-- ## MODIFIED ## Added an optional 'force' parameter
function PlotController:EquipModel(player: Player, modelName: string, forceEquip: boolean?)
	local profile = PlayerController:GetProfile(player)
	if not profile then return end

	if not table.find(profile.Data.OwnedModels, modelName) then return end
	local modelConfig = ModelConfigurations[modelName]
	if not modelConfig then return end

	-- ## MODIFIED ## This check now allows forcing an equip
	if profile.Data.EquippedModel == modelName and not forceEquip then return end

	local plot = getPlotForPlayer(player)
	if not plot then return end

	local plotHealthPart = plot:FindFirstChild("PlotHealth")
	if not plotHealthPart then return end

	profile.Data.EquippedModel = modelName

	for _, child in ipairs(plotHealthPart:GetChildren()) do
		if child:IsA("Model") then child:Destroy() end
	end

	local modelTemplate = ReplicatedStorage.Models:FindFirstChild(modelName)
	if modelTemplate then
		local newModel = modelTemplate:Clone()
		if newModel.PrimaryPart then
			newModel:SetPrimaryPartCFrame(plotHealthPart.CFrame)
		end
		newModel.Parent = plotHealthPart
	end

	plotHealthPart:SetAttribute("Health", modelConfig.Health)

	UpdateProtectionModelFX:FireClient(player, modelConfig.ImageId, modelConfig.Health)

	if WaveController:IsPlayerFighting(player) then
		ReplicatedStorage.Events.WaveStateChanged:FireClient(player, true, modelConfig.Health, modelConfig.Health)
	end

	-- Only send notification on manual equips (when 'force' is not used)
	if not forceEquip then
		ShowNotificationEvent:FireClient(player, `{modelConfig.DisplayName} equipped!`, "Success")
	end
end


function PlotController:OnPlayerProfileLoaded(player: Player)
	while not PlacementController or not CrateController or not PlayerController or not WaveController do
		task.wait()
	end

	local plot = findAvailablePlot()
	if plot then
		plot:SetAttribute("OwnerId", player.UserId)
		player:SetAttribute("PlotNumber", tonumber(string.match(plot.Name, "%d+")))

		local plotHealthPart = plot:FindFirstChild("PlotHealth")
		if plotHealthPart then
			CollectionService:AddTag(plotHealthPart, "Damageable")
		end

		local profile = PlayerController:GetProfile(player)

		spawnPromotionalCrate(plot)
		if profile then
			-- ## MODIFIED ## Pass 'true' to force the initial equip when the player loads in.
			self:EquipModel(player, profile.Data.EquippedModel, true)
		end
		PlacementController:LoadPlacedItems(player, plot)
		CrateController:LoadPlayerCrates(player, plot)

		local spawnLocation = plot:FindFirstChild("SpawnPart")
		if spawnLocation and spawnLocation:IsA("SpawnLocation") then
			player.RespawnLocation = spawnLocation
			if player.Character then
				player.Character:SetPrimaryPartCFrame(spawnLocation.CFrame * CFrame.new(0, 3, 0))
			end
		end
	else
		player:Kick("Sorry, all plots are currently taken! Please try a different server.")
	end
end

local function onPlayerRemoving(player: Player)
	local plot = getPlotForPlayer(player)
	if not plot then return end

	player.RespawnLocation = nil
	local plotHealthPart = plot:FindFirstChild("PlotHealth")
	if plotHealthPart then
		CollectionService:RemoveTag(plotHealthPart, "Damageable")
	end
	plot:SetAttribute("OwnerId", nil)

	for _, child in ipairs(plot:GetChildren()) do
		if child:GetAttribute("IsPlacedItem") == true or child.Name == "GoldCrate" or child:IsA("Model") then
			child:Destroy()
		end
	end
	local crateFolder = plot:FindFirstChild("Crate")
	if crateFolder then
		crateFolder:ClearAllChildren()
	end
	if plotHealthPart then
		for _, modelChild in ipairs(plotHealthPart:GetChildren()) do
			if modelChild:IsA("Model") then
				modelChild:Destroy()
			end
		end
	end
end

local function setupPlot(plot: Model)
	if not plot:IsA("Model") then return end
	plot:SetAttribute("OwnerId", nil)
end

function PlotController:Init(controllers: {[string]: any})
	PlacementController = controllers.PlacementController
	PlayerController = controllers.PlayerController
	CrateController = controllers.CrateController
	WaveController = controllers.WaveController
end

function PlotController:Start()
	for _, plot in ipairs(PLOTS_FOLDER:GetChildren()) do
		setupPlot(plot)
	end
	PLOTS_FOLDER.ChildAdded:Connect(setupPlot)
	Players.PlayerRemoving:Connect(onPlayerRemoving)

	Players.PlayerAdded:Connect(function(player)
		player.CharacterAdded:Connect(function(character)
			task.wait(0.5) 
			local plotNum = player:GetAttribute("PlotNumber")
			if not plotNum then return end
			local plot = Workspace.Plots:FindFirstChild("Plot" .. tostring(plotNum))
			if not plot then return end
			local spawnPart = plot:FindFirstChild("SpawnPart")
			if spawnPart and character:FindFirstChild("HumanoidRootPart") then
				if spawnPart:IsA("SpawnLocation") then
					player.RespawnLocation = spawnPart
				end
				character:SetPrimaryPartCFrame(spawnPart.CFrame * CFrame.new(0, 3, 0))
			end
		end)
	end)

	ResetPlotEvent.OnServerEvent:Connect(function(player)
		PlacementController:ResetPlotItems(player)
	end)

	ReplicatedStorage.Events.EquipModelRequest.OnServerEvent:Connect(function(player, modelName)
		self:EquipModel(player, modelName)
	end)
end

return PlotController