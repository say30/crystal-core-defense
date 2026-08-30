--!strict
-- Manages the client-side visual timer for placed crates.

local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer
local crateGUITemplate = ReplicatedStorage.Templates:WaitForChild("CrateGUITemplate")

local activeCrateUpdaters = {}

local COUNTDOWN_STROKE_COLOR = Color3.fromRGB(50, 50, 50)
local READY_STROKE_COLOR = Color3.fromRGB(120, 78, 0)

local function formatTime(seconds: number): string
	if seconds < 0 then seconds = 0 end
	local hours = math.floor(seconds / 3600)
	local minutes = math.floor((seconds % 3600) / 60)
	local secs = seconds % 60
	return string.format("%02i:%02i:%02i", hours, minutes, secs)
end

local function setupCrate(crateModel: Model)
	-- ## ADDED ## Wait for the PrimaryPart to be loaded
	while not crateModel.PrimaryPart do
		task.wait()
	end

	local ownerId = crateModel:GetAttribute("OwnerId")
	if ownerId ~= player.UserId then return end

	local gui = crateGUITemplate:Clone()
	gui.Parent = crateModel.PrimaryPart

	local timerLabel = gui.TimerLabel
	local textStroke = timerLabel:FindFirstChild("Stroke")
	local textGradient = timerLabel:FindFirstChild("Gradient")

	activeCrateUpdaters[crateModel] = RunService.Heartbeat:Connect(function()
		local unlockTimestamp = crateModel:GetAttribute("UnlockTimestamp")
		if typeof(unlockTimestamp) ~= "number" then
			if activeCrateUpdaters[crateModel] then
				activeCrateUpdaters[crateModel]:Disconnect()
				activeCrateUpdaters[crateModel] = nil
			end
			return
		end

		local remaining = unlockTimestamp - os.time()

		if remaining > 0 then
			timerLabel.Text = "" .. formatTime(remaining)
			if textStroke then textStroke.Color = COUNTDOWN_STROKE_COLOR end
			if textGradient then textGradient.Enabled = false end
		else
			timerLabel.Text = "Ready!"
			if textStroke then textStroke.Color = READY_STROKE_COLOR end
			if textGradient then textGradient.Enabled = true end

			if activeCrateUpdaters[crateModel] then
				activeCrateUpdaters[crateModel]:Disconnect()
				activeCrateUpdaters[crateModel] = nil
			end
		end
	end)
end

local function cleanupCrate(crateModel: Model)
	if activeCrateUpdaters[crateModel] then
		activeCrateUpdaters[crateModel]:Disconnect()
		activeCrateUpdaters[crateModel] = nil
	end
end

task.spawn(function()
	local playerPlot: Model?
	while not playerPlot do
		local plotNum = player:GetAttribute("PlotNumber")
		if plotNum then playerPlot = Workspace.Plots:FindFirstChild("Plot"..tostring(plotNum)) end
		task.wait(1)
	end

	local crateFolder = playerPlot:WaitForChild("Crate")
	for _, child in ipairs(crateFolder:GetChildren()) do
		if child:IsA("Model") then setupCrate(child) end
	end
	crateFolder.ChildAdded:Connect(function(child)
		if child:IsA("Model") then setupCrate(child) end
	end)
	crateFolder.ChildRemoved:Connect(cleanupCrate)
end)