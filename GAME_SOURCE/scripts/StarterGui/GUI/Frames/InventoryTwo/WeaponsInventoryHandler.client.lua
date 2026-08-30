--!strict
-- Populates the weapon inventory UI and handles weapon selection.

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local WeaponConfigurations = require(ReplicatedStorage.Modules.WeaponConfigurations)

local player = Players.LocalPlayer
local inventoryFrame = script.Parent
local scrollingFrame = inventoryFrame:WaitForChild("ScrollingFrame")
local template = ReplicatedStorage.Templates:WaitForChild("WeaponsInventoryTemplate")

local setSelectedWeaponRequest = ReplicatedStorage.Events:WaitForChild("SetSelectedWeaponRequest")
local equipWeaponRequest = ReplicatedStorage.Events:WaitForChild("EquipWeaponRequest")

local myWeapons = {}
local selectedTemplate: GuiObject? = nil

-- ## MODIFIED ## Color definitions updated for Design background and Text stroke
local DEFAULT_FRAME_STROKE_COLOR = Color3.fromRGB(85, 0, 127)
local SELECTED_FRAME_STROKE_COLOR = Color3.fromRGB(0, 255, 0)
local DEFAULT_DESIGN_COLOR = Color3.fromRGB(170, 0, 255)
local SELECTED_DESIGN_COLOR = Color3.fromRGB(0, 255, 0)
local DEFAULT_TEXT_STROKE_COLOR = Color3.fromRGB(85, 0, 127)
local SELECTED_TEXT_STROKE_COLOR = Color3.fromRGB(0, 110, 0)

local function populateInventory()
	-- Clear old items
	for _, child in ipairs(scrollingFrame:GetChildren()) do
		if not child:IsA("UILayout") then child:Destroy() end
	end
	selectedTemplate = nil

	local lastEquippedWeapon = player:GetAttribute("LastEquippedWeapon")

	for _, weaponId in ipairs(myWeapons) do
		local weaponConfig = WeaponConfigurations.Weapons[weaponId]
		if weaponConfig then
			local item = template:Clone()
			item.Name = weaponId

			-- Find all the necessary UI elements
			local textLabel = item:FindFirstChild("Text")
			local imageLabel = item:FindFirstChild("Image")
			local design = item:FindFirstChild("Design")
			local frameStroke = design and design:FindFirstChild("Stroke")
			local textStroke = textLabel and textLabel:FindFirstChild("Stroke")

			-- Set Text and Image
			if textLabel and textLabel:IsA("TextLabel") then
				textLabel.Text = weaponConfig.DisplayName
			end
			if imageLabel and imageLabel:IsA("ImageLabel") then
				imageLabel.Image = weaponConfig.ImageId
			end

			-- ## DAMAGE LABEL INTEGRATION ##
			local damageLabel = item:FindFirstChild("Damage")
			local damageValue = weaponConfig.Damage

			-- Override with weapon template attribute if exists
			local weaponTemplate = ReplicatedStorage.Weapons:FindFirstChild(weaponId)
			if weaponTemplate and weaponTemplate:GetAttribute("Damage") then
				damageValue = weaponTemplate:GetAttribute("Damage")
			end

			if damageLabel and damageLabel:IsA("TextLabel") then
				damageLabel.Text = "DMG: " .. tostring(damageValue or 0)
			end

			-- Check if this is the currently selected weapon to set initial colors
			if weaponId == lastEquippedWeapon then
				if frameStroke then frameStroke.Color = SELECTED_FRAME_STROKE_COLOR end
				if design then design.BackgroundColor3 = SELECTED_DESIGN_COLOR end
				if textStroke then textStroke.Color = SELECTED_TEXT_STROKE_COLOR end
				selectedTemplate = item
			end

			if item:IsA("GuiButton") then
				item.MouseButton1Click:Connect(function()
					-- Reset the previously selected item to default colors
					if selectedTemplate then
						local oldDesign = selectedTemplate:FindFirstChild("Design")
						local oldFrameStroke = oldDesign and oldDesign:FindFirstChild("Stroke")
						local oldTextLabel = selectedTemplate:FindFirstChild("Text")
						local oldTextStroke = oldTextLabel and oldTextLabel:FindFirstChild("Stroke")

						if oldFrameStroke then oldFrameStroke.Color = DEFAULT_FRAME_STROKE_COLOR end
						if oldDesign then oldDesign.BackgroundColor3 = DEFAULT_DESIGN_COLOR end
						if oldTextStroke then oldTextStroke.Color = DEFAULT_TEXT_STROKE_COLOR end
					end

					-- Highlight the new item
					if frameStroke then frameStroke.Color = SELECTED_FRAME_STROKE_COLOR end
					if design then design.BackgroundColor3 = SELECTED_DESIGN_COLOR end
					if textStroke then textStroke.Color = SELECTED_TEXT_STROKE_COLOR end
					selectedTemplate = item

					-- Tell the server about our new selection and equip it
					setSelectedWeaponRequest:FireServer(weaponId)
					equipWeaponRequest:FireServer(weaponId)
				end)
			end

			item.Parent = scrollingFrame
		end
	end
end

-- Listen for inventory updates from server
ReplicatedStorage.Events.WeaponInventoryUpdated.OnClientEvent:Connect(function(newInventory)
	myWeapons = newInventory
	if inventoryFrame.Visible then
		populateInventory()
	end
end)

-- Populate inventory when frame is opened
inventoryFrame:GetPropertyChangedSignal("Visible"):Connect(function()
	if inventoryFrame.Visible then
		populateInventory()
	end
end)

-- Initial population
task.spawn(function()
	local getInventoryFunc = ReplicatedStorage.Functions:WaitForChild("GetWeaponInventory")
	local success, result = pcall(function()
		return getInventoryFunc:InvokeServer()
	end)
	if success and result then
		myWeapons = result
		if inventoryFrame.Visible then
			populateInventory()
		end
	else
		warn("WeaponsInventoryHandler: Could not get initial inventory. Error: " .. tostring(result))
	end
end)
