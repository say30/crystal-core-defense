--!strict
-- Populates the health shop, shows stock/timers, and handles purchases and equipping.

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local MarketplaceService = game:GetService("MarketplaceService")

local NumberFormatter = require(ReplicatedStorage.Modules.NumberFormatter)
local ModelConfigurations = require(ReplicatedStorage.Modules.ModelConfigurations)

local player = Players.LocalPlayer
local shopFrame = script.Parent
local scrollingFrame = shopFrame:WaitForChild("ScrollingFrame")
local itemTemplate = ReplicatedStorage.Templates:WaitForChild("HealthTemplate")
local designFrame = shopFrame:WaitForChild("Design")
local timerLabel = designFrame:WaitForChild("Timer") 
local restockButton = designFrame:WaitForChild("RestockButton")

-- Remotes needed for all shop functionalities
local getStocksFunc = ReplicatedStorage.Functions:WaitForChild("GetHealthShopStocks")
local getResetTimeFunc = ReplicatedStorage.Functions:WaitForChild("GetHealthShopResetTime")
local getOwnedModelsFunc = ReplicatedStorage.Functions:WaitForChild("GetOwnedModels")
local getEquippedModelFunc = ReplicatedStorage.Functions:WaitForChild("GetEquippedModel")
local purchaseEvent = ReplicatedStorage.Events:WaitForChild("PurchaseHealthUpgrade")
local equipEvent = ReplicatedStorage.Events:WaitForChild("EquipModelRequest")
local updateStocksEvent = ReplicatedStorage.Events:WaitForChild("UpdateHealthStock")

-- State Caching
local currentStocks = {}
local ownedModels = {}
local equippedModel = ""
local robuxPricesCache = {}
local timerConnection: RBXScriptConnection?

local IN_STOCK_BUTTON_STROKE_COLOR = Color3.fromRGB(33, 100, 0)
local IN_STOCK_BUTTON_GRADIENT = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 255, 0)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 0))
})
local IN_STOCK_TEXT_STROKE_COLOR = Color3.fromRGB(33, 100, 0)

local OUT_OF_STOCK_BUTTON_STROKE_COLOR = Color3.fromRGB(40, 40, 40)
local OUT_OF_STOCK_BUTTON_GRADIENT = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 80, 80)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(120, 120, 120))
})
local OUT_OF_STOCK_TEXT_STROKE_COLOR = Color3.fromRGB(40, 40, 40)

local EQUIP_BUTTON_STROKE_COLOR = Color3.fromRGB(0, 93, 140)
local EQUIP_BUTTON_GRADIENT = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 170, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 255, 255))
})
local EQUIP_TEXT_STROKE_COLOR = Color3.fromRGB(0, 93, 140)

local EQUIPPED_BUTTON_STROKE_COLOR = Color3.fromRGB(85, 0, 127)
local EQUIPPED_BUTTON_GRADIENT = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(170, 0, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 85, 255))
})
local EQUIPPED_TEXT_STROKE_COLOR = Color3.fromRGB(85, 0, 127)


local function formatRemaining(seconds: number): string
	if seconds <= 0 then return "00:00" end
	local min = math.floor(seconds / 60)
	local sec = seconds % 60
	return string.format("%02d:%02d", min, sec)
end

local function startTimer(nextTime: number?)
	if timerConnection then timerConnection:Disconnect() end
	local function setupConnection(timestamp: number)
		timerConnection = RunService.Heartbeat:Connect(function()
			if not shopFrame.Visible then
				if timerConnection then timerConnection:Disconnect() timerConnection = nil end
				return
			end
			local remaining = timestamp - os.time()
			timerLabel.Text = formatRemaining(remaining)
		end)
	end
	if nextTime then
		setupConnection(nextTime)
	else
		local success, serverTime = pcall(getResetTimeFunc.InvokeServer, getResetTimeFunc)
		if success and typeof(serverTime) == "number" then
			setupConnection(serverTime)
		end
	end
end

local function populateShop()
	for _, child in ipairs(scrollingFrame:GetChildren()) do
		if not child:IsA("UILayout") then child:Destroy() end
	end

	local modelsToSort = {}
	for name, config in pairs(ModelConfigurations) do
		if type(config) == "table" and config.PowerLevel then
			table.insert(modelsToSort, {Name = name, Config = config})
		end
	end
	table.sort(modelsToSort, function(a, b) return a.Config.PowerLevel < b.Config.PowerLevel end)

	for _, modelData in ipairs(modelsToSort) do
		local modelName = modelData.Name
		local config = modelData.Config
		if config.Price == 0 then continue end

		local item = itemTemplate:Clone()
		item.Name = modelName

		if item:FindFirstChild("ItemImage") and config.ImageId then item.ItemImage.Image = config.ImageId end
		if item:FindFirstChild("ItemName") then item.ItemName.Text = config.DisplayName end
		if item:FindFirstChild("HealthValue") then item.HealthValue.Text = NumberFormatter.formatNumber(config.Health) end

		local buyButton: TextButton? = item:FindFirstChild("BuyButton")
		local robuxButton: TextButton? = item:FindFirstChild("RobuxBuy")
		local itemStock: TextLabel? = item:FindFirstChild("ItemStock") 
		local buyButtonText: TextLabel? = buyButton and buyButton:FindFirstChild("Text")

		local strokeFrame: Frame? = buyButton and buyButton:FindFirstChild("Stroke")
		local buttonGradient: UIGradient? = strokeFrame and strokeFrame:FindFirstChild("Gradient")
		local buttonStroke: UIStroke? = strokeFrame and strokeFrame:FindFirstChild("Stroke")
		local textStroke: UIStroke? = buyButtonText and buyButtonText:FindFirstChildOfClass("UIStroke")

		local isOwned = table.find(ownedModels, modelName)
		local isEquipped = (equippedModel == modelName)
		local stockCount = currentStocks[modelName] or 0

		if isOwned then
			if itemStock then itemStock.Visible = false end
			if robuxButton then robuxButton.Visible = false end

			if isEquipped then
				if buyButtonText then buyButtonText.Text = "Equipped" end
				if buyButton then buyButton.Active = false end
				if buttonGradient then buttonGradient.Color = EQUIPPED_BUTTON_GRADIENT end
				if buttonStroke then buttonStroke.Color = EQUIPPED_BUTTON_STROKE_COLOR end
				if textStroke then textStroke.Color = EQUIPPED_TEXT_STROKE_COLOR end
			else
				if buyButtonText then buyButtonText.Text = "Equip" end
				if buyButton then
					buyButton.Active = true
					buyButton.MouseButton1Click:Connect(function()
						equipEvent:FireServer(modelName)

						-- ## MODIFIED ## Instead of closing the frame, wait briefly for the server
						-- to process, then refetch the data and refresh the UI.
						task.wait(0.2)

						local success, result = pcall(getEquippedModelFunc.InvokeServer, getEquippedModelFunc)
						if success then equippedModel = result end

						populateShop()
					end)
				end
				if buttonGradient then buttonGradient.Color = EQUIP_BUTTON_GRADIENT end
				if buttonStroke then buttonStroke.Color = EQUIP_BUTTON_STROKE_COLOR end
				if textStroke then textStroke.Color = EQUIP_TEXT_STROKE_COLOR end
			end
		else
			if stockCount > 0 then
				if itemStock then itemStock.Text = "x1"; itemStock.Visible = true end
				if buyButton and buyButtonText then
					buyButtonText.Text = NumberFormatter.formatNumber(config.Price, "$")
					buyButton.Active = true
					buyButton.MouseButton1Click:Connect(function()
						purchaseEvent:FireServer(modelName)
					end)
				end
				if buttonGradient then buttonGradient.Color = IN_STOCK_BUTTON_GRADIENT end
				if buttonStroke then buttonStroke.Color = IN_STOCK_BUTTON_STROKE_COLOR end
				if textStroke then textStroke.Color = IN_STOCK_TEXT_STROKE_COLOR end
			else
				if itemStock then itemStock.Text = "Out of stock!"; itemStock.Visible = true end
				if buyButton and buyButtonText then
					buyButtonText.Text = "N/A"
					buyButton.Active = false
				end
				if buttonGradient then buttonGradient.Color = OUT_OF_STOCK_BUTTON_GRADIENT end
				if buttonStroke then buttonStroke.Color = OUT_OF_STOCK_BUTTON_STROKE_COLOR end
				if textStroke then textStroke.Color = OUT_OF_STOCK_TEXT_STROKE_COLOR end
			end

			if robuxButton and config.ProductID > 0 then
				robuxButton.Visible = true
				local priceLabel: TextLabel? = robuxButton:FindFirstChild("Text")
				if priceLabel then
					if robuxPricesCache[config.ProductID] then
						priceLabel.Text = robuxPricesCache[config.ProductID]
					else
						priceLabel.Text = "..."
						task.spawn(function()
							local success, pinfo = pcall(MarketplaceService.GetProductInfo, MarketplaceService, config.ProductID, Enum.InfoType.Product)
							if success and pinfo and item.Parent then
								priceLabel.Text = "" .. tostring(pinfo.PriceInRobux) 
								robuxPricesCache[config.ProductID] = priceLabel.Text
							elseif item.Parent then
								priceLabel.Text = "N/A"
							end
						end)
					end
				end
				robuxButton.MouseButton1Click:Connect(function()
					MarketplaceService:PromptProductPurchase(player, config.ProductID)
				end)
			elseif robuxButton then
				robuxButton.Visible = false
			end
		end

		item.Parent = scrollingFrame
	end
end

updateStocksEvent.OnClientEvent:Connect(function(newStocks, newRestockTime)
	currentStocks = newStocks

	local success, result
	success, result = pcall(getOwnedModelsFunc.InvokeServer, getOwnedModelsFunc)
	if success then ownedModels = result end

	success, result = pcall(getEquippedModelFunc.InvokeServer, getEquippedModelFunc)
	if success then equippedModel = result end

	if shopFrame.Visible then
		populateShop()
		startTimer(newRestockTime)
	end
end)

shopFrame:GetPropertyChangedSignal("Visible"):Connect(function()
	if shopFrame.Visible then
		local success, result
		success, result = pcall(getStocksFunc.InvokeServer, getStocksFunc)
		if success then currentStocks = result end

		success, result = pcall(getOwnedModelsFunc.InvokeServer, getOwnedModelsFunc)
		if success then ownedModels = result end

		success, result = pcall(getEquippedModelFunc.InvokeServer, getEquippedModelFunc)
		if success then equippedModel = result end

		populateShop()
		startTimer()
	elseif timerConnection then
		timerConnection:Disconnect()
		timerConnection = nil
	end
end)

local restockConfig = ModelConfigurations.ShopProducts and ModelConfigurations.ShopProducts.RestockHealthShop
if restockButton and restockConfig then
	local priceLabel = restockButton:FindFirstChild("Text")
	if priceLabel and priceLabel:IsA("TextLabel") then
		if robuxPricesCache[restockConfig.ProductID] then
			priceLabel.Text = robuxPricesCache[restockConfig.ProductID]
		else
			priceLabel.Text = "..."
			task.spawn(function()
				local success, productInfo = pcall(MarketplaceService.GetProductInfo, MarketplaceService, restockConfig.ProductID, Enum.InfoType.Product)
				if success and productInfo and restockButton.Parent then
					local priceString = "" .. tostring(productInfo.PriceInRobux)
					robuxPricesCache[restockConfig.ProductID] = priceString
					priceLabel.Text = priceString
				elseif restockButton.Parent then
					priceLabel.Text = "N/A"
				end
			end)
		end
	end

	restockButton.MouseButton1Click:Connect(function()
		MarketplaceService:PromptProductPurchase(player, restockConfig.ProductID)
	end)
end

task.spawn(function()
	local success, initialStocks = pcall(getStocksFunc.InvokeServer, getStocksFunc)
	if success and initialStocks then
		currentStocks = initialStocks
	end
end)