--!strict

-- Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local CollectionService = game:GetService("CollectionService")
local Debris = game:GetService("Debris")

-- Modules
local PlayerController
local TurretController
local PlacementController
local WeaponController
local PlotController 
local WaveConfigurations = require(ReplicatedStorage.Modules.WaveConfigurations)
local ItemConfigurations = require(ReplicatedStorage.Modules.ItemConfigurations)
local EnemyConfigurations = require(ReplicatedStorage.Modules.EnemyConfigurations)
local ModelConfigurations = require(ReplicatedStorage.Modules.ModelConfigurations)

-- Constants
local INTERMISSION_TIME = 1
local FINAL_VICTORY_CASH = 100000

-- Controller
local WaveController = {}
local _plotStates = {}
local _fightToggleDebounce = {}
local _autoWaveStates = {}

local activeEnemiesFolder = Workspace:FindFirstChild("ActiveEnemies")
if not activeEnemiesFolder then
	activeEnemiesFolder = Instance.new("Folder")
	activeEnemiesFolder.Name = "ActiveEnemies"
	activeEnemiesFolder.Parent = Workspace
end

local function getPlotForPlayer(player: Player): Model?
	local plotNum = player:GetAttribute("PlotNumber")
	if plotNum then
		local plot = Workspace.Plots:FindFirstChild("Plot" .. tostring(plotNum))
		if plot and plot:IsA("Model") then
			return plot
		end
	end
	for _, plot in ipairs(Workspace.Plots:GetChildren()) do
		if plot:IsA("Model") and plot:GetAttribute("OwnerId") == player.UserId then
			return plot
		end
	end
	return nil
end

function WaveController:IsPlayerFighting(player: Player): boolean
	local plot = getPlotForPlayer(player)
	if not plot or not _plotStates[plot] then return false end
	return _plotStates[plot].IsActive
end

local function getRandomSpawnCFrame(spawnPart: BasePart): CFrame
	local size = spawnPart.Size
	local randomX = (math.random() - 0.5) * size.X
	local randomZ = (math.random() - 0.5) * size.Z
	local yOffset = size.Y / 2 + 3 
	return spawnPart.CFrame * CFrame.new(randomX, yOffset, randomZ)
end

local startNextWave
local stopFight
local startFight

startNextWave = function(player: Player, plot: Model)
	local state = _plotStates[plot]
	if not state or not state.IsActive then return end

	state.IsStartingNextWave = false

	local profile = PlayerController:GetProfile(player)
	if not profile then stopFight(plot, "manual"); return end
	state.CurrentWave += 1

	local waveConfig = WaveConfigurations[state.CurrentWave]

	if not waveConfig then
		print(`Player {player.Name} has beaten all waves!`)
		local leaderstats = player:FindFirstChild("leaderstats")
		local cash = leaderstats and leaderstats:FindFirstChild("Cash")
		if cash then
			cash.Value += FINAL_VICTORY_CASH
		end
		ReplicatedStorage.Events.ShowNotification:FireClient(player, "You've beaten all waves! Congratulations!", "Mythical")
		stopFight(plot, "win")
		return
	end

	if state.CurrentWave > profile.Data.HighestWave then
		profile.Data.HighestWave = state.CurrentWave
		local leaderstats = player:FindFirstChild("leaderstats")
		local highestWaveValue = leaderstats and leaderstats:FindFirstChild("Highest Wave")
		if highestWaveValue then highestWaveValue.Value = state.CurrentWave end
	end

	print(`Player {player.Name} is starting Wave {state.CurrentWave}`)
	local totalEnemiesInWave = 0
	for _, group in ipairs(waveConfig.Enemies) do totalEnemiesInWave += group.Count end
	state.EnemiesKilledInWave = 0
	state.TotalEnemiesInWave = totalEnemiesInWave

	ReplicatedStorage.Events.WaveUIStateChanged:FireClient(player, true, state.CurrentWave, totalEnemiesInWave, waveConfig.IsBossWave)

	local spawnPart = plot:FindFirstChild("EnemySpawn")
	if not spawnPart then warn("Plot is missing EnemySpawn part:", plot.Name); return end

	for _, group in ipairs(waveConfig.Enemies) do
		task.spawn(function()
			local enemyTemplate = ReplicatedStorage.Enemies:FindFirstChild(group.Enemy)
			if not enemyTemplate then return end
			for i = 1, group.Count do
				if not state.IsActive then return end
				local enemy = enemyTemplate:Clone()
				local humanoid = enemy:WaitForChild("Humanoid")
				local enemyConfig = EnemyConfigurations[enemy.Name]
				if enemyConfig and enemyConfig.MaxHealth then
					humanoid.MaxHealth = enemyConfig.MaxHealth
					humanoid.Health = enemyConfig.MaxHealth
				end
				if waveConfig.IsBossWave then
					humanoid.MaxSlopeAngle = 0
					humanoid.AutoJumpEnabled = false
					humanoid.JumpPower = 0
				end
				local goalValue = Instance.new("ObjectValue")
				goalValue.Name = "Goal"
				goalValue.Value = plot:FindFirstChild("PlotHealth")
				goalValue.Parent = enemy
				local ownerPlotValue = Instance.new("ObjectValue")
				ownerPlotValue.Name = "OwnerPlot"
				ownerPlotValue.Value = plot
				ownerPlotValue.Parent = enemy
				for _, descendant in ipairs(enemy:GetDescendants()) do
					if descendant:IsA("BasePart") then
						descendant.CollisionGroup = "Zombies"
					end
				end
				enemy:SetPrimaryPartCFrame(getRandomSpawnCFrame(spawnPart))
				enemy.Parent = activeEnemiesFolder
				local rootPart = enemy:FindFirstChild("HumanoidRootPart")
				if rootPart then rootPart:SetNetworkOwner(nil) end
				if waveConfig.IsBossWave then
					ReplicatedStorage.Events.BossWaveStarted:FireClient(player, humanoid, waveConfig.BossImageId)
				end

				local function onEnemyDeath()
					state.EnemiesKilledInWave += 1
					if enemyConfig and enemyConfig.CashReward then
						local leaderstats = player:FindFirstChild("leaderstats")
						local cash = leaderstats and leaderstats:FindFirstChild("Cash")
						if cash then cash.Value += enemyConfig.CashReward end
					end
					ReplicatedStorage.Events.ZombieKilled:FireClient(player, state.EnemiesKilledInWave, state.CurrentWave)
					enemy:Destroy() 
					if state.EnemiesKilledInWave >= state.TotalEnemiesInWave and state.IsActive and not state.IsStartingNextWave then
						state.IsStartingNextWave = true
						task.spawn(function()
							print(`Player {player.Name} cleared Wave {state.CurrentWave}!`)
							local completedWaveConfig = WaveConfigurations[state.CurrentWave]
							if completedWaveConfig.IsBossWave then ReplicatedStorage.Events.BossWaveEnded:FireClient(player) end
							if completedWaveConfig.CashReward then
								local cashReward = completedWaveConfig.CashReward
								local leaderstats = player:FindFirstChild("leaderstats")
								local cash = leaderstats and leaderstats:FindFirstChild("Cash")
								if cash then
									cash.Value += cashReward
									ReplicatedStorage.Events.ShowCollectionEffect:FireClient(player, cashReward)
								end
							end
							
							if profile and completedWaveConfig.UnlocksStartingWave then
								if completedWaveConfig.UnlocksStartingWave > profile.Data.StartingWave then
									profile.Data.StartingWave = completedWaveConfig.UnlocksStartingWave
									ReplicatedStorage.Events.ShowNotification:FireClient(player, `Checkpoint unlocked! You will now start at Wave {profile.Data.StartingWave}.`, "Normal")
								end
							end

							task.wait(INTERMISSION_TIME)
							if state.IsActive then
								startNextWave(player, plot)
							end
						end)
					end
				end

				humanoid.Died:Once(onEnemyDeath)

				task.wait(group.DelayBetweenSpawns)
			end
		end)
	end
end

stopFight = function(plot: Model, reason: string)
	local state = _plotStates[plot]
	if not state then return end
	local player = Players:GetPlayerByUserId(plot:GetAttribute("OwnerId"))
	state.IsActive = false
	if state.HealthConnection then
		state.HealthConnection:Disconnect()
		state.HealthConnection = nil
	end
	for _, enemy in ipairs(activeEnemiesFolder:GetChildren()) do
		local ownerPlotValue = enemy:FindFirstChild("OwnerPlot")
		if ownerPlotValue and ownerPlotValue.Value == plot then
			enemy:Destroy()
		end
	end
	_plotStates[plot] = nil
	if player then
		if reason == "manual" then
			ReplicatedStorage.Events.EquipLastWeaponRequest:FireClient(player)
		end
		for _, itemModel in ipairs(plot:GetChildren()) do
			if itemModel:GetAttribute("IsPlacedItem") then
				local config = ItemConfigurations[itemModel.Name]
				if config and config.Type == "Turrets" then
					TurretController:RemoveTurret(itemModel)
				end
				itemModel:Destroy()
			end
		end
		task.wait(0.1)
		PlacementController:LoadPlacedItems(player, plot)
		local profile = PlayerController:GetProfile(player)
		if profile then
			local equippedModelName = profile.Data.EquippedModel
			local modelConfig = ModelConfigurations[equippedModelName]
			local maxHealth = modelConfig and modelConfig.Health or 100

			local plotHealthPart = plot:FindFirstChild("PlotHealth")
			if plotHealthPart then
				plotHealthPart:SetAttribute("Health", maxHealth)
			else
				warn("Could not find PlotHealth part on plot: " .. plot.Name .. " to reset its health.")
			end
		end
		ReplicatedStorage.Events.WaveStateChanged:FireClient(player, false)
		ReplicatedStorage.Events.WaveUIStateChanged:FireClient(player, false)
		ReplicatedStorage.Events.BossWaveEnded:FireClient(player)

		if reason == "loss" and _autoWaveStates[player] == true then
			task.wait(1)
			if player.Parent then
				startFight(player)
			end
		end
	end
end

startFight = function(player: Player)
	local plot = getPlotForPlayer(player)
	if not plot then return end
	local profile = PlayerController:GetProfile(player)
	if not profile or _plotStates[plot] then return end

	local equippedModelName = profile.Data.EquippedModel
	local modelConfig = ModelConfigurations[equippedModelName]
	local maxHealth = modelConfig and modelConfig.Health or 100

	local plotHealth = plot:FindFirstChild("PlotHealth")
	if not plotHealth then
		warn("Cannot start fight: Plot is missing its PlotHealth part.")
		return
	end
	plotHealth:SetAttribute("Health", maxHealth)

	_plotStates[plot] = {
		IsActive = true,
		CurrentWave = profile.Data.StartingWave - 1,
		EnemiesKilledInWave = 0,
		TotalEnemiesInWave = 0,
		IsStartingNextWave = false,
		HealthConnection = plotHealth:GetAttributeChangedSignal("Health"):Connect(function()
			if plotHealth:GetAttribute("Health") <= 0 then
				print(`Player {player.Name}'s plot was destroyed!`)
				ReplicatedStorage.Events.ShowNotification:FireClient(player, "Your plot was destroyed!", "Error")
				stopFight(plot, "loss")
			end
		end)
	}
	-- ## MODIFIED ## No longer sending the model index
	ReplicatedStorage.Events.WaveStateChanged:FireClient(player, true, maxHealth, maxHealth)
	startNextWave(player, plot)
end

function WaveController:Init(controllers: {[string]: any})
	PlayerController = controllers.PlayerController
	TurretController = controllers.TurretController
	PlacementController = controllers.PlacementController
	WeaponController = controllers.WeaponController
	PlotController = controllers.PlotController
end

function WaveController:Start()
	ReplicatedStorage.Events.SetAutoWave.OnServerEvent:Connect(function(player, isEnabled)
		_autoWaveStates[player] = isEnabled
	end)

	ReplicatedStorage.Events.ToggleWaveState.OnServerEvent:Connect(function(player)
		if _fightToggleDebounce[player] then return end
		_fightToggleDebounce[player] = true

		local profile = PlayerController:GetProfile(player)

		if profile and profile.Data.OnboardingStep == "Step7_StartFight" then
			profile.Data.OnboardingStep = "Completed"
			ReplicatedStorage.Events.EndOnboarding:FireClient(player)
		end

		local plot = getPlotForPlayer(player)
		if not plot then 
			_fightToggleDebounce[player] = nil
			return 
		end
		if _plotStates[plot] and _plotStates[plot].IsActive then

			if _autoWaveStates[player] then
				_autoWaveStates[player] = false
				ReplicatedStorage.Events.AutoWaveStateChanged:FireClient(player, false)
			end

			stopFight(plot, "manual")
		else
			startFight(player)
		end
		task.delay(1, function()
			_fightToggleDebounce[player] = nil
		end)
	end)
	Players.PlayerRemoving:Connect(function(player)
		_autoWaveStates[player] = nil 

		local plot = getPlotForPlayer(player)
		if not plot then return end
		local state = _plotStates[plot]
		if not state then return end
		state.IsActive = false
		if state.HealthConnection then
			state.HealthConnection:Disconnect()
		end
		for _, enemy in ipairs(activeEnemiesFolder:GetChildren()) do
			local ownerPlotValue = enemy:FindFirstChild("OwnerPlot")
			if ownerPlotValue and ownerPlotValue.Value == plot then
				enemy:Destroy()
			end
		end
		_plotStates[plot] = nil
		print("Cleaned up active wave for leaving player:", player.Name)
	end)
end

return WaveController