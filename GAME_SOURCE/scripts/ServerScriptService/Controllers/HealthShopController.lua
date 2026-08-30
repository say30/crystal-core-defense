--!strict
-- Manages the HealthShop, stocking models and handling purchases.

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local ModelConfigurations = require(ReplicatedStorage.Modules.ModelConfigurations)
local PlayerController
local PlotController

local RESTOCK_INTERVAL_SECONDS = 300 -- 5 minutes

local HealthShopController = {}

local purchaseEvent = ReplicatedStorage.Events:WaitForChild("PurchaseHealthUpgrade")
local showNotificationEvent = ReplicatedStorage.Events:WaitForChild("ShowNotification")
local updateStocksEvent = ReplicatedStorage.Events:WaitForChild("UpdateHealthStock")
local getStocksFunc = ReplicatedStorage.Functions:WaitForChild("GetHealthShopStocks")
local getResetTimeFunc = ReplicatedStorage.Functions:WaitForChild("GetHealthShopResetTime")

function HealthShopController:Restock(player: Player)
	local profile = PlayerController:GetProfile(player)
	if not profile then return end

	local newStock = {}
	-- Loop through all possible models and decide if they should be in stock
	for modelName, config in pairs(ModelConfigurations) do
		-- ## MODIFIED ## Added a check to ensure 'config' is a valid model table
		-- This prevents the loop from erroring on the 'ShopProducts' sub-table.
		if type(config) == "table" and config.PowerLevel then
			if config.Chance > 0 and not table.find(profile.Data.OwnedModels, modelName) then
				if math.random() * 100 <= config.Chance then
					newStock[modelName] = 1
				end
			end
		end
	end

	profile.Data.HealthShopStock = newStock
	profile.Data.HealthShopNextRestock = os.time() + RESTOCK_INTERVAL_SECONDS

	updateStocksEvent:FireClient(player, newStock, profile.Data.HealthShopNextRestock)
	showNotificationEvent:FireClient(player, "The Car Shop has been restocked!", "Normal")
end

local function onPurchaseRequest(player: Player, modelName: string)
	local profile = PlayerController:GetProfile(player)
	if not profile then return end

	local modelConfig = ModelConfigurations[modelName]
	local playerStock = profile.Data.HealthShopStock

	if not modelConfig or (playerStock[modelName] or 0) <= 0 then
		showNotificationEvent:FireClient(player, "This item is out of stock!", "Error")
		return
	end

	if table.find(profile.Data.OwnedModels, modelName) then
		showNotificationEvent:FireClient(player, "You already own this model!", "Error")
		return
	end

	local leaderstats = player:FindFirstChild("leaderstats")
	local cash = leaderstats and leaderstats:FindFirstChild("Cash")

	if cash and cash.Value >= modelConfig.Price then
		cash.Value -= modelConfig.Price

		playerStock[modelName] -= 1
		table.insert(profile.Data.OwnedModels, modelName)

		showNotificationEvent:FireClient(player, `Purchased {modelConfig.DisplayName}!`, "Success")
		updateStocksEvent:FireClient(player, playerStock, profile.Data.HealthShopNextRestock)

		-- Check if the new model is better and auto-equip it
		local equippedModelName = profile.Data.EquippedModel
		local equippedConfig = ModelConfigurations[equippedModelName]
		if equippedConfig and modelConfig.PowerLevel > equippedConfig.PowerLevel then
			PlotController:EquipModel(player, modelName)
			showNotificationEvent:FireClient(player, "New, better model automatically equipped!", "Success")
		end
	else
		showNotificationEvent:FireClient(player, "Not enough cash!", "Error")
	end
end

function HealthShopController:Init(controllers: {[string]: any})
	PlayerController = controllers.PlayerController
	PlotController = controllers.PlotController
end

function HealthShopController:Start()
	getStocksFunc.OnServerInvoke = function(player)
		local profile = PlayerController:GetProfile(player)
		while not profile do task.wait() profile = PlayerController:GetProfile(player) end
		return profile.Data.HealthShopStock
	end

	getResetTimeFunc.OnServerInvoke = function(player)
		local profile = PlayerController:GetProfile(player)
		while not profile do task.wait() profile = PlayerController:GetProfile(player) end
		return profile.Data.HealthShopNextRestock
	end

	purchaseEvent.OnServerEvent:Connect(onPurchaseRequest)
end

return HealthShopController