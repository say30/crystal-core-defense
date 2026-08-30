--!strict
-- This script manages HUD button interactions, visuals, and auto equip/unequip logic.

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")

-- Modules
local FrameManager = require(ReplicatedStorage.Modules.FrameManager)
local PlacementHandler = require(ReplicatedStorage.Modules.PlacementHandler)
local WeaponConfigurations = require(ReplicatedStorage.Modules.WeaponConfigurations)

-- Player and UI
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local bottomHud = playerGui:WaitForChild("GUI"):WaitForChild("HUD"):WaitForChild("Bottom")
local inventoryButton = bottomHud:WaitForChild("Inventory")
local deleteButton = bottomHud:WaitForChild("Delete")
local weaponsButton = bottomHud:WaitForChild("Weapons")
local weaponsButtonImage = weaponsButton:WaitForChild("Image")

local inventoryDesign = inventoryButton:WaitForChild("Design")
local inventoryStroke = inventoryDesign:WaitForChild("Stroke")
local deleteDesign = deleteButton:WaitForChild("Design")
local deleteStroke = deleteDesign:WaitForChild("Stroke")
local weaponsDesign = weaponsButton:WaitForChild("Design")
local weaponsStroke = weaponsDesign:WaitForChild("Stroke")

-- Events
local unequipWeaponRequest = ReplicatedStorage.Events:WaitForChild("UnequipWeaponRequest")
local equipLastWeaponRequest = ReplicatedStorage.Events:WaitForChild("EquipLastWeaponRequest")

-- State Tracking
local wasInUIMode = false

-- Color Definitions
local SELECTED_BG_COLOR = Color3.fromRGB(0, 255, 0)
local SELECTED_STROKE_COLOR = Color3.fromRGB(0, 255, 0)
local DEFAULT_BG_COLOR = Color3.fromRGB(0, 0, 0)
local DEFAULT_STROKE_COLOR = Color3.fromRGB(50, 50, 50)


local function onInventoryButtonClick()
	unequipWeaponRequest:FireServer()
	PlacementHandler:ExitAllModes()
end

local function onWeaponsButtonClick()
	PlacementHandler:ExitAllModes()
end

inventoryButton.MouseButton1Click:Connect(function()
	onInventoryButtonClick()
	if FrameManager.getOpenFrameName() == "Inventory" then
		FrameManager.close("Inventory")
	else
		FrameManager.open("Inventory")
	end
end)

weaponsButton.MouseButton1Click:Connect(function()
	onWeaponsButtonClick()
	if FrameManager.getOpenFrameName() == "InventoryTwo" then
		FrameManager.close("InventoryTwo")
	else
		FrameManager.open("InventoryTwo")
	end
end)

deleteButton.MouseButton1Click:Connect(function()
	if not PlacementHandler.State.isDeleteMode then
		unequipWeaponRequest:FireServer()
	end

	FrameManager.close("Inventory")
	FrameManager.close("InventoryTwo")
	PlacementHandler:EnterDeleteMode()
end)

-- ## ADDED ## This new listener fixes the bug.
-- It watches for when any frame is closed.
FrameManager.onFrameClosed(function(frameName)
	-- If the closed frame was an inventory, exit any active placement mode.
	if frameName == "Inventory" or frameName == "InventoryTwo" then
		PlacementHandler:ExitAllModes()
	end
end)


local function updateWeaponsButtonImage()
	local weaponName = player:GetAttribute("LastEquippedWeapon")
	if typeof(weaponName) == "string" then
		local weaponConfig = WeaponConfigurations.Weapons[weaponName]
		if weaponConfig and weaponConfig.ImageId then
			weaponsButtonImage.Image = weaponConfig.ImageId
			weaponsButtonImage.ImageTransparency = 0
		end
	else
		weaponsButtonImage.ImageTransparency = 1
	end
end

RunService.Heartbeat:Connect(function()
	local openFrameName = FrameManager.getOpenFrameName()
	local isDeleteActive = PlacementHandler.State.isDeleteMode

	-- Set Inventory button color
	if openFrameName == "Inventory" then
		inventoryDesign.BackgroundColor3 = SELECTED_BG_COLOR
		inventoryStroke.Color = SELECTED_STROKE_COLOR
	else
		inventoryDesign.BackgroundColor3 = DEFAULT_BG_COLOR
		inventoryStroke.Color = DEFAULT_STROKE_COLOR
	end

	-- Set Weapons button color
	if openFrameName == "InventoryTwo" then
		weaponsDesign.BackgroundColor3 = SELECTED_BG_COLOR
		weaponsStroke.Color = SELECTED_STROKE_COLOR
	else
		weaponsDesign.BackgroundColor3 = DEFAULT_BG_COLOR
		weaponsStroke.Color = DEFAULT_STROKE_COLOR
	end

	-- Set Delete button color
	if isDeleteActive then
		deleteDesign.BackgroundColor3 = SELECTED_BG_COLOR
		deleteStroke.Color = SELECTED_STROKE_COLOR
	else
		deleteDesign.BackgroundColor3 = DEFAULT_BG_COLOR
		deleteStroke.Color = DEFAULT_STROKE_COLOR
	end

	-- Handle auto equip/unequip logic
	local isCurrentlyInUIMode = (openFrameName == "Inventory") or isDeleteActive
	if not isCurrentlyInUIMode and wasInUIMode then
		equipLastWeaponRequest:FireServer()
	end
	wasInUIMode = isCurrentlyInUIMode
end)

player:GetAttributeChangedSignal("LastEquippedWeapon"):Connect(updateWeaponsButtonImage)
updateWeaponsButtonImage()

task.wait(1)
local openFrameName = FrameManager.getOpenFrameName()
local isDeleteActive = PlacementHandler.State.isDeleteMode
if not ((openFrameName == "Inventory") or isDeleteActive) then
	equipLastWeaponRequest:FireServer()
end