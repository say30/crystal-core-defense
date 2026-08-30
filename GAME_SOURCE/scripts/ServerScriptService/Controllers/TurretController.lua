--!strict
-- This controller manages all active turrets, finds targets, and handles firing logic.

-- Services
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

-- Modules
-- ## MODIFIED ## Updated to handle the new module structure
local ItemConfigsModule = require(ReplicatedStorage.Modules.ItemConfigurations)
local ItemConfigurations = ItemConfigsModule.ItemConfigurations
local LimitedItems = ItemConfigsModule.LimitedItems
local DamageHandler = require(ReplicatedStorage.Modules.DamageHandler)

-- ## ADDED ## Create one master table for all item configurations for easy lookups
local AllItemConfigs = {}
for id, config in pairs(ItemConfigurations) do
	AllItemConfigs[id] = config
end
for id, config in pairs(LimitedItems) do
	AllItemConfigs[id] = config
end

-- Events
local TurretFiredFX = ReplicatedStorage.Events:WaitForChild("TurretFiredFX")
local HighlightZombie = ReplicatedStorage.Events:WaitForChild("HighlightZombie")

-- Controller
local TurretController = {}
local _activeTurrets = {}

function TurretController:AddTurret(turretModel: Model, plot: Model)
	-- ## MODIFIED ## Look for the turret's config in the new master table
	local config = AllItemConfigs[turretModel.Name]
	if not config then
		warn(`[TurretController] Could not find configuration for turret named '{turretModel.Name}'`)
		return
	end

	local attachments = {}
	for _, descendant in ipairs(turretModel:GetDescendants()) do
		if descendant:IsA("Attachment") then
			table.insert(attachments, descendant)
		end
	end

	local head = turretModel:FindFirstChild("Head")

	_activeTurrets[turretModel] = {
		config = config,
		plot = plot,
		lastFireTime = 0,
		attachments = attachments,
		originalHeadCFrame = head and head.PrimaryPart and turretModel.PrimaryPart.CFrame:ToObjectSpace(head.PrimaryPart.CFrame),
		currentTarget = nil,
		lockOnTime = 0,
	}

	if not _activeTurrets[turretModel].originalHeadCFrame then
		warn("Could not store original CFrame for turret:", turretModel.Name)
	end
end

function TurretController:RemoveTurret(turretModel: Model)
	if _activeTurrets[turretModel] then
		_activeTurrets[turretModel] = nil
	end
end

function TurretController:ResetTurretRotation(turretModel: Model)
	local data = _activeTurrets[turretModel]
	local head = turretModel:FindFirstChild("Head")

	if data and data.originalHeadCFrame and head and head.PrimaryPart and turretModel.PrimaryPart then
		local resetWorldCFrame = turretModel.PrimaryPart.CFrame * data.originalHeadCFrame
		head:SetPrimaryPartCFrame(resetWorldCFrame)
	end
end

function TurretController:Start()
	RunService.Heartbeat:Connect(function(deltaTime)
		local enemiesFolder = Workspace:FindFirstChild("ActiveEnemies")
		if not enemiesFolder then return end

		local now = os.clock()

		for turretModel, data in pairs(_activeTurrets) do
			if not turretModel.PrimaryPart or not turretModel.Parent then
				self:RemoveTurret(turretModel)
				continue
			end

			local turretPosition = turretModel.PrimaryPart.Position
			local closestTarget, closestDist = nil, data.config.Range

			for _, enemy in ipairs(enemiesFolder:GetChildren()) do
				local humanoid = enemy:FindFirstChildOfClass("Humanoid")
				local ownerPlotVal = enemy:FindFirstChild("OwnerPlot")
				local rootPart = enemy:FindFirstChild("HumanoidRootPart")

				if ownerPlotVal and ownerPlotVal.Value == data.plot and rootPart and humanoid and humanoid.Health > 0 then
					local dist = (rootPart.Position - turretPosition).Magnitude
					if dist < closestDist then
						closestTarget = enemy
						closestDist = dist
					end
				end
			end

			if closestTarget ~= data.currentTarget then
				data.lockOnTime = now
				data.currentTarget = closestTarget
			end

			local head = turretModel:FindFirstChild("Head")
			if head and head.PrimaryPart and data.currentTarget and data.currentTarget.PrimaryPart then
				local headPart = head.PrimaryPart
				local targetPosition = data.currentTarget.PrimaryPart.Position
				local lookAtPoint = Vector3.new(targetPosition.X, headPart.Position.Y, targetPosition.Z)
				local newCFrame = CFrame.lookAt(headPart.Position, lookAtPoint)
				head:SetPrimaryPartCFrame(newCFrame)
			end

			if now - data.lastFireTime < (1 / data.config.FireRate) then
				continue
			end

			if data.currentTarget then
				if now - data.lockOnTime >= 0.1 then
					data.lastFireTime = now 

					local targetRoot = data.currentTarget:FindFirstChild("HumanoidRootPart")
					if not targetRoot then continue end

					local ownerId = data.plot:GetAttribute("OwnerId")
					local ownerPlayer = ownerId and Players:GetPlayerByUserId(ownerId)

					local raycastParams = RaycastParams.new()
					raycastParams.FilterType = Enum.RaycastFilterType.Exclude
					local ignoreList = {turretModel}
					for _, item in ipairs(data.plot:GetChildren()) do
						if item:GetAttribute("IsPlacedItem") then
							table.insert(ignoreList, item)
						end
					end
					raycastParams.FilterDescendantsInstances = ignoreList

					for _, attachment in ipairs(data.attachments) do
						local origin = attachment.WorldPosition
						local direction = (targetRoot.Position - origin).Unit
						local result = Workspace:Raycast(origin, direction * data.config.Range, raycastParams)

						local hitSomething = false
						if result and result.Instance then
							local hitModel = result.Instance.Parent
							local hitHumanoid = hitModel:FindFirstChildOfClass("Humanoid")

							if hitHumanoid and hitModel:FindFirstChild("Goal") then
								DamageHandler.dealDamage(turretModel, hitModel, data.config.Damage)

								if ownerPlayer then
									TurretFiredFX:FireClient(ownerPlayer, turretModel, origin, result.Position)
								end
								hitSomething = true
							end
						end

						if not hitSomething then
							if ownerPlayer then
								TurretFiredFX:FireClient(ownerPlayer, turretModel, origin, origin + direction * data.config.Range)
							end
						end
					end
				end
			end
		end
	end)
end

return TurretController