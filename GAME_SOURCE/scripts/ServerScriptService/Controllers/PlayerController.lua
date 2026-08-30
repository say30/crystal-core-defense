--!strict

-- Services
local Players = game:GetService("Players")
local ServerScriptService = game:GetService("ServerScriptService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Modules
local ProfileService = require(ServerScriptService.Modules:WaitForChild("ProfileService"))

-- Controller Definition
local PlayerController = {}

-- ## MODIFIED ## ProfileTemplate updated for the new onboarding system.
local ProfileTemplate = {
	Cash = 250,
	Strength = 0,
	BlockInventory = {},
	PlacedItems = {},
	HighestWave = 0,
	StartingWave = 1,
	OwnedModels = {"Gulf"},
	EquippedModel = "Gulf",
	OnboardingStep = "Step1_TeleportToShop", -- Tracks the player's tutorial step
	Crates = {},
	WeaponInventory = { "WoodSword" },
	LastEquippedWeapon = "WoodSword",
	BlockShopStock = {},
	BlockShopNextRestock = 0,
	WeaponShopStock = {},
	WeaponShopNextRestock = 0,
	HealthShopStock = {},
	HealthShopNextRestock = 0,
}

local GameProfileStore = ProfileService.New(
	"VideoData001",
	ProfileTemplate
)

local _profiles = {}
local _controllers = {}

function PlayerController:GetProfile(player: Player)
	return _profiles[player]
end

function PlayerController:SetupSharedInstances() end

local function onPlayerAdded(player: Player)
	local profileKey = tostring(player.UserId)
	local profile = GameProfileStore:StartSessionAsync(profileKey, {Steal = true})

	if not profile then
		player:Kick("Failed to load your data. Please rejoin.")
		return
	end

	profile:Reconcile()
	profile:AddUserId(player.UserId)
	_profiles[player] = profile

	if profile.Data.LastEquippedWeapon then
		player:SetAttribute("LastEquippedWeapon", profile.Data.LastEquippedWeapon)
	end

	local weaponInventoryUpdatedEvent = ReplicatedStorage.Events:WaitForChild("WeaponInventoryUpdated")
	weaponInventoryUpdatedEvent:FireClient(player, profile.Data.WeaponInventory)

	local blockInventoryUpdatedEvent = ReplicatedStorage.Events:WaitForChild("BlockInventoryUpdated")
	blockInventoryUpdatedEvent:FireClient(player, profile.Data.BlockInventory)

	ReplicatedStorage.Events:WaitForChild("CrateDataUpdated"):FireClient(player, profile.Data.Crates)

	task.wait() 
	if not next(profile.Data.BlockShopStock) then
		_controllers.BlocksShopController:Restock(player)
	end
	if not next(profile.Data.WeaponShopStock) then
		_controllers.WeaponsShopController:Restock(player)
	end
	if not next(profile.Data.HealthShopStock) then
		_controllers.HealthShopController:Restock(player)
	end

	-- ## MODIFIED ## Check the player's saved onboarding step
	if profile.Data.OnboardingStep and profile.Data.OnboardingStep ~= "Completed" then
		-- Tell the client which step to start on
		ReplicatedStorage.Events.UpdateOnboardingStep:FireClient(player, profile.Data.OnboardingStep)
	end

	_controllers.PlotController:OnPlayerProfileLoaded(player)

	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"

	local cash = Instance.new("IntValue")
	cash.Name = "Cash"
	cash.Value = profile.Data.Cash
	cash.Parent = leaderstats

	local highestWave = Instance.new("IntValue")
	highestWave.Name = "Highest Wave"
	highestWave.Value = profile.Data.HighestWave
	highestWave.Parent = leaderstats

	leaderstats.Parent = player

	cash:GetPropertyChangedSignal("Value"):Connect(function()
		profile.Data.Cash = cash.Value
	end)

	print(`Player {player.Name} joined and data was loaded successfully.`)
end

local function onPlayerRemoving(player: Player)
	local profile = _profiles[player]
	if profile then
		profile:EndSession()
		_profiles[player] = nil
		print(`Player {player.Name} left. Data session ended.`)
	end
end

function PlayerController:Init(controllers: {[string]: any})
	_controllers = controllers
end

function PlayerController:Start()
	Players.PlayerAdded:Connect(onPlayerAdded)
	Players.PlayerRemoving:Connect(onPlayerRemoving)

	local getBlockInventoryFunc = ReplicatedStorage.Functions:WaitForChild("GetBlockInventory")
	getBlockInventoryFunc.OnServerInvoke = function(player: Player)
		local profile = _profiles[player]
		while not profile do
			task.wait()
			profile = _profiles[player]
		end
		return profile.Data.BlockInventory
	end

	local getWeaponInventoryFunc = ReplicatedStorage.Functions:WaitForChild("GetWeaponInventory")
	getWeaponInventoryFunc.OnServerInvoke = function(player: Player)
		local profile = _profiles[player]
		while not profile do
			task.wait()
			profile = _profiles[player]
		end
		return profile.Data.WeaponInventory
	end

	local getOwnedModelsFunc = ReplicatedStorage.Functions:WaitForChild("GetOwnedModels")
	getOwnedModelsFunc.OnServerInvoke = function(player: Player)
		local profile = _profiles[player]
		while not profile do task.wait() profile = _profiles[player] end
		return profile.Data.OwnedModels
	end

	-- ## RESTORED ## This function lets the client know which model is currently equipped.
	local getEquippedModelFunc = ReplicatedStorage.Functions:WaitForChild("GetEquippedModel")
	getEquippedModelFunc.OnServerInvoke = function(player: Player)
		local profile = _profiles[player]
		while not profile do task.wait() profile = _profiles[player] end
		return profile.Data.EquippedModel
	end

	local onboardingProgression = {
		["Step1_TeleportToShop"] = "Step2_OpenDefenceShop",
		["Step2_OpenDefenceShop"] = "Step3_BuyOldTurret",
		["Step4_TeleportToPlot"] = "Step5_OpenInventory",
		["Step5_OpenInventory"] = "Step6_PlaceOldTurret",
	}

	ReplicatedStorage.Events.OnboardingStepCompleted.OnServerEvent:Connect(function(player, completedStepName)
		local profile = _profiles[player]
		if not (profile and profile.Data.OnboardingStep == completedStepName) then return end

		local nextStep = onboardingProgression[completedStepName]
		if nextStep then
			profile.Data.OnboardingStep = nextStep
			ReplicatedStorage.Events.UpdateOnboardingStep:FireClient(player, nextStep)
		end
	end)

	for _, player in ipairs(Players:GetPlayers()) do
		task.spawn(onPlayerAdded, player)
	end
end

return PlayerController