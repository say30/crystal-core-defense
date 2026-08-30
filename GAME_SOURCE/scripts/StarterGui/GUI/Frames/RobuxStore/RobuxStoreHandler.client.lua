--!strict
-- LOCATION: GUI/Frames/RobuxStore/RobuxStoreHandler.lua
-- Populates the Robux store UI for cash purchases.

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local MarketplaceService = game:GetService("MarketplaceService")

local WeaponConfigurations = require(ReplicatedStorage.Modules.WeaponConfigurations)
local NumberFormatter = require(ReplicatedStorage.Modules.NumberFormatter)

local player = Players.LocalPlayer
local storeFrame = script.Parent
local cashFrame = storeFrame:WaitForChild("ScrollingFrame"):WaitForChild("Cash")

local robuxPricesCache = {}

local function populateStore()
	for productName, productConfig in pairs(WeaponConfigurations.CashProducts) do
		local productFrame = cashFrame:FindFirstChild(productName)
		if not productFrame then continue end

		local buyButton = productFrame:FindFirstChild("BuyButton")
		local amountLabel = productFrame:FindFirstChild("Amount")

		if not (buyButton and amountLabel) then continue end

		-- Set the cash amount text
		amountLabel.Text = NumberFormatter.formatNumber(productConfig.CashAmount)

		-- Fetch and display the Robux price
		local priceLabel = buyButton:FindFirstChild("Text")
		if not (priceLabel and priceLabel:IsA("TextLabel")) then continue end

		if robuxPricesCache[productConfig.ProductID] then
			priceLabel.Text = robuxPricesCache[productConfig.ProductID]
		else
			priceLabel.Text = "..." -- Placeholder
			task.spawn(function()
				local success, productInfo = pcall(function()
					return MarketplaceService:GetProductInfo(productConfig.ProductID, Enum.InfoType.Product)
				end)
				if success and productInfo and productFrame.Parent then
					local priceString = "" .. productInfo.PriceInRobux
					robuxPricesCache[productConfig.ProductID] = priceString
					priceLabel.Text = priceString
				elseif productFrame.Parent then
					priceLabel.Text = "N/A"
				end
			end)
		end

		-- Connect the buy button
		buyButton.MouseButton1Click:Connect(function()
			MarketplaceService:PromptProductPurchase(player, productConfig.ProductID)
		end)
	end
end

populateStore()