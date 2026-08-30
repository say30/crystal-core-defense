--[[
	TeleportController Script
	
	Description: Manages the client-side logic for teleporting the player to various
	locations via UI buttons. Now includes success notifications.
	
	Location: StarterPlayerScripts
--]]
--!strict

-- Services
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage") -- ## ADDED ##

-- Modules
local NotificationManager = require(ReplicatedStorage.Modules.NotificationManager) -- ## ADDED ##

-- Player and Plot References
local localPlayer: Player = Players.LocalPlayer
local PLOTS_FOLDER = Workspace:WaitForChild("Plots")
local SHOP_TELEPORT_PART = Workspace:WaitForChild("ShopTeleport")

-- ## MODIFIED ## This function now accepts a message to show on successful teleport.
local function teleportCharacter(targetCFrame: CFrame, successMessage: string)
	local character = localPlayer.Character
	if not character then
		warn("Teleport failed: Character not found.")
		return
	end

	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
	if not humanoidRootPart then
		warn("Teleport failed: HumanoidRootPart not found.")
		return
	end

	-- We add a small vertical offset to prevent the player from getting stuck in the ground.
	humanoidRootPart.CFrame = targetCFrame * CFrame.new(0, 3, 0)

	-- ## ADDED ## Show the success notification after teleporting.
	NotificationManager.show(successMessage, "Success")
end

-- This function finds the player's assigned plot.
local function getPlayerPlot(): Model?
	for _, plot in ipairs(PLOTS_FOLDER:GetChildren()) do
		if plot:IsA("Model") and plot:GetAttribute("OwnerId") == localPlayer.UserId then
			return plot
		end
	end
	return nil
end

-- This function connects the teleport buttons to their logic.
local function initializeTeleporters()
	local playerGui = localPlayer:WaitForChild("PlayerGui")
	local buttonsContainer = playerGui:WaitForChild("GUI"):WaitForChild("HUD"):WaitForChild("Top"):WaitForChild("Buttons")

	local plotTeleportButton: TextButton = buttonsContainer:WaitForChild("PlotTeleport")
	local shopTeleportButton: TextButton = buttonsContainer:WaitForChild("ShopTeleport")

	-- Connect Plot Teleport Button
	plotTeleportButton.MouseButton1Click:Connect(function()
		print("Plot teleport requested.")
		local playerPlot = getPlayerPlot()
		if playerPlot then
			local spawnPart = playerPlot:FindFirstChild("SpawnPart")
			if spawnPart and spawnPart:IsA("BasePart") then
				-- ## MODIFIED ## Pass the notification message.
				teleportCharacter(spawnPart.CFrame, "Teleported to your plot!")
			else
				warn("Could not teleport to plot: SpawnPart is missing.")
			end
		else
			warn("Could not teleport to plot: Player plot not found.")
		end
	end)

	-- Connect Shop Teleport Button
	shopTeleportButton.MouseButton1Click:Connect(function()
		print("Shop teleport requested.")
		if SHOP_TELEPORT_PART and SHOP_TELEPORT_PART:IsA("BasePart") then
			-- ## MODIFIED ## Pass the notification message.
			teleportCharacter(SHOP_TELEPORT_PART.CFrame, "Teleported to the shop!")
		else
			warn("Could not teleport to shop: ShopTeleport part is missing in Workspace.")
		end
	end)
end

-- Using the same robust pattern from your UIInitializer script.
localPlayer.CharacterAdded:Connect(initializeTeleporters)

-- Also run it once for the character that exists on join.
if localPlayer.Character then
	initializeTeleporters()
end

