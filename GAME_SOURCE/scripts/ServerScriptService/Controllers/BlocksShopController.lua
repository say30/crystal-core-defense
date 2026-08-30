--!strict
-- Manages the per-player logic for the BlocksShop (CASH PURCHASES ONLY)

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local ItemConfigsModule = require(ReplicatedStorage.Modules.ItemConfigurations)
local ItemConfigurations = ItemConfigsModule.ItemConfigurations

local PlayerController

local RESTOCK_INTERVAL_SECONDS = 180
local GUARANTEED_ITEMS = {"WoodBlock", "OldTurret"}

local ShopController = {}

local purchaseItemEvent = ReplicatedStorage.Events:WaitForChild("PurchaseBlockItem")
local updateStocksEvent = ReplicatedStorage.Events:WaitForChild("UpdateBlockStocks")
local getResetTime = ReplicatedStorage.Functions:WaitForChild("GetBlockShopResetTime")
local getStocks = ReplicatedStorage.Functions:WaitForChild("GetBlockShopStocks")
local showNotificationEvent = ReplicatedStorage.Events:WaitForChild("ShowNotification")
local blockInventoryUpdatedEvent = ReplicatedStorage.Events:WaitForChild("BlockInventoryUpdated")

function ShopController:Restock(player: Player)
	local profile = PlayerController:GetProfile(player)
	if not profile then return end

	local newStock = {}
	for _, itemId in ipairs(GUARANTEED_ITEMS) do
		local config = ItemConfigurations[itemId]
		if config and config.StockAmount then
			newStock[itemId] = math.random(config.StockAmount.Min, config.StockAmount.Max)
		end
	end
	for itemId, config in pairs(ItemConfigurations) do
		if config.Unlimited or table.find(GUARANTEED_ITEMS, itemId) then continue end

		if config.Chance and config.StockAmount then
			if math.random() * 100 <= config.Chance then
				newStock[itemId] = math.random(config.StockAmount.Min, config.StockAmount.Max)
			else
				newStock[itemId] = 0
			end
		end
	end

	profile.Data.BlockShopStock = newStock
	profile.Data.BlockShopNextRestock = os.time() + RESTOCK_INTERVAL_SECONDS

	updateStocksEvent:FireClient(player, newStock)
	showNotificationEvent:FireClient(player, "The Blocks Shop has been restocked!", "Normal")
end

local function onPurchaseRequest(player: Player, itemId: string)
	local profile = PlayerController:GetProfile(player)
	local config = ItemConfigurations[itemId]
	if not profile or not config then return end
	local playerStock = profile.Data.BlockShopStock
	if not config.Unlimited then
		if (playerStock[itemId] or 0) <= 0 then
			showNotificationEvent:FireClient(player, "This item is out of stock!", "Error")
			return
		end
	end
	local leaderstats = player:FindFirstChild("leaderstats")
	local cash = leaderstats and leaderstats:FindFirstChild("Cash")
	if cash and cash.Value >= config.Price then
		cash.Value -= config.Price
		if not config.Unlimited then
			playerStock[itemId] -= 1
			updateStocksEvent:FireClient(player, playerStock)
		end
		local inventory = profile.Data.BlockInventory
		inventory[itemId] = (inventory[itemId] or 0) + 1
		showNotificationEvent:FireClient(player, `Purchased {config.DisplayName}!`, "Success")
		blockInventoryUpdatedEvent:FireClient(player, inventory)
		
		if profile.Data.OnboardingStep == "Step3_BuyOldTurret" and itemId == "OldTurret" then
			profile.Data.OnboardingStep = "Step4_TeleportToPlot"
			ReplicatedStorage.Events.UpdateOnboardingStep:FireClient(player, "Step4_TeleportToPlot")
		end

	else
		showNotificationEvent:FireClient(player, "Not enough cash!", "Error")
	end
end

function ShopController:Init(controllers: {[string]: any})
	PlayerController = controllers.PlayerController
end

function ShopController:Start()
	getResetTime.OnServerInvoke = function(player)
		local profile = PlayerController:GetProfile(player)
		while not profile do
			task.wait()
			profile = PlayerController:GetProfile(player)
		end
		return profile.Data.BlockShopNextRestock
	end
	getStocks.OnServerInvoke = function(player)
		local profile = PlayerController:GetProfile(player)
		while not profile do
			task.wait()
			profile = PlayerController:GetProfile(player)
		end
		return profile.Data.BlockShopStock
	end

	purchaseItemEvent.OnServerEvent:Connect(onPurchaseRequest)
end

return ShopController