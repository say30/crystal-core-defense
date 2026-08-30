-- Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local Debris = game:GetService("Debris")
local RunService = game:GetService("RunService")

-- Modules
local Maid = require(ReplicatedStorage.Modules.Maid)

-- Tool & Components
local tool = script.Parent
local handle = tool:WaitForChild("Handle")
local blade = tool:WaitForChild("Blade")
local toolMaid = Maid.new()

-- State & Constants
local swingCombo = 1
local isSwinging = false
local hitDebounce = {}
local equipped = false

-- Sounds & Animations
local HitSoundTemplate = handle:WaitForChild("HitSound")
local EquipSound = handle:WaitForChild("EquipSound")
local UnequipSound = handle:WaitForChild("UnequipSound")
local SwingSound1 = handle:WaitForChild("SwingSound1")
local SwingSound2 = handle:WaitForChild("SwingSound2")
local SwingSound3 = handle:WaitForChild("SwingSound3")

-- Events
local HighlightZombie = ReplicatedStorage.Events:WaitForChild("HighlightZombie")

local animations = {
	Swing1 = tool:WaitForChild("SwingAnimation1"),
	Swing2 = tool:WaitForChild("SwingAnimation2"),
	Swing3 = tool:WaitForChild("SwingAnimation3"),
	Idle   = tool:WaitForChild("IdleAnimation"),
	Walk   = tool:WaitForChild("WalkAnimation")
}

local tracks = {}
local character
local humanoid


-------------------------------------------------------------------------------------
-- FORCE STOP/DESTROY TRACKS (prevents stuck animations)
-- Also stops any playing tracks on the humanoid that match our animations.
-------------------------------------------------------------------------------------
local function stopAllTracks()
	-- Stop & destroy all tracks we stored
	for name, track in pairs(tracks) do
		if track then
			pcall(function()
				track:Stop(0)   -- immediate stop
			end)
			pcall(function()
				track:Destroy()
			end)
		end
		tracks[name] = nil
	end

	-- Also, if we have a humanoid, stop any playing tracks whose Animation matches our animation objects.
	-- This kills leftover tracks that weren't stored in `tracks` for some reason.
	if humanoid then
		for _, playing in ipairs(humanoid:GetPlayingAnimationTracks()) do
			local ok, anim = pcall(function() return playing.Animation end)
			if ok and anim then
				for _, a in pairs(animations) do
					if anim == a then
						pcall(function() playing:Stop(0) end)
						break
					end
				end
			else
				-- fallback: stop stubborn Action-priority tracks (optional)
				pcall(function()
					if playing.Priority == Enum.AnimationPriority.Action then
						playing:Stop(0)
					end
				end)
			end
		end
	end
end


-------------------------------------------------------------------------------------
-- DAMAGE ON HIT
-------------------------------------------------------------------------------------
local function onBladeTouched(hit: BasePart)
	if not equipped or not isSwinging then return end
	if not hit or not hit.Parent then return end

	local hitModel = hit.Parent
	local humanoidHit = hitModel:FindFirstChildOfClass("Humanoid")

	if humanoidHit and humanoidHit.Health > 0 and hitModel:FindFirstChild("Goal") and not hitDebounce[hitModel] then
		hitDebounce[hitModel] = true
		local damage = tool:GetAttribute("Damage") or 10
		humanoidHit:TakeDamage(damage)

		HighlightZombie:FireClient(Players:GetPlayerFromCharacter(tool.Parent), hitModel)

		local sound = HitSoundTemplate:Clone()
		sound.Parent = humanoidHit.RootPart or hitModel.PrimaryPart
		sound:Play()
		Debris:AddItem(sound, 2)
	end
end


-------------------------------------------------------------------------------------
-- IDLE & WALK LOGIC (only when equipped)
-------------------------------------------------------------------------------------
local function updateMovementAnimation()
	if not equipped then return end
	if not humanoid or not humanoid.RootPart then return end
	if isSwinging then return end

	local velocity = humanoid.RootPart.Velocity.Magnitude

	if velocity > 2 then
		-- Walk animation
		if tracks.Idle and tracks.Idle.IsPlaying then
			tracks.Idle:Stop(0)
		end
		if tracks.Walk and not tracks.Walk.IsPlaying then
			tracks.Walk:Play()
		end
	else
		-- Idle animation
		if tracks.Walk and tracks.Walk.IsPlaying then
			tracks.Walk:Stop(0)
		end
		if tracks.Idle and not tracks.Idle.IsPlaying then
			tracks.Idle:Play()
		end
	end
end


-------------------------------------------------------------------------------------
-- SWING / COMBO
-------------------------------------------------------------------------------------
local function onActivated()
	if not equipped then return end
	if not humanoid or isSwinging then return end
	if humanoid:GetState() == Enum.HumanoidStateType.Dead then return end

	isSwinging = true
	hitDebounce = {}

	-- Stop idle/walk during swing
	if tracks.Idle then tracks.Idle:Stop(0) end
	if tracks.Walk then tracks.Walk:Stop(0) end

	local currentSwingTrack
	local currentSwingSound

	if swingCombo == 1 then
		currentSwingTrack = tracks.Swing1
		currentSwingSound = SwingSound1
	elseif swingCombo == 2 then
		currentSwingTrack = tracks.Swing2
		currentSwingSound = SwingSound2
	else
		currentSwingTrack = tracks.Swing3
		currentSwingSound = SwingSound3
	end

	if currentSwingSound then currentSwingSound:Play() end
	if currentSwingTrack then currentSwingTrack:Play() end

	task.wait(currentSwingTrack and currentSwingTrack.Length or 0.5)

	isSwinging = false
	swingCombo = (swingCombo % 3) + 1

	-- Resume movement animation if still equipped
	if equipped then
		updateMovementAnimation()
	end
end


-------------------------------------------------------------------------------------
-- EQUIP
-------------------------------------------------------------------------------------
tool.Equipped:Connect(function()
	-- mark equipped
	equipped = true
	EquipSound:Play()

	-- set up character + humanoid
	character = tool.Parent
	humanoid = character and character:FindFirstChildOfClass("Humanoid")
	if not humanoid then return end

	-- First, stop any stray tracks that might be lingering on the humanoid from other tools.
	-- IMPORTANT: do this BEFORE loading animations so we don't destroy the freshly loaded tracks.
	stopAllTracks()

	-- ensure fresh table for our tracks
	tracks = {}

	local animator = humanoid:WaitForChild("Animator")

	-- Load animations into tracks table
	for name, anim in pairs(animations) do
		-- safe pcall in case animator changes unexpectedly
		local ok, track = pcall(function()
			return animator:LoadAnimation(anim)
		end)
		if ok and track then
			tracks[name] = track
			tracks[name].Priority = Enum.AnimationPriority.Action
		else
			tracks[name] = nil
		end
	end

	-- Start idle animation
	if tracks.Idle then
		tracks.Idle:Play()
	end

	-- Movement checking loop (only active when equipped)
	toolMaid:GiveTask(RunService.Heartbeat:Connect(updateMovementAnimation))

	-- Connections
	toolMaid:GiveTask(blade.Touched:Connect(onBladeTouched))
	toolMaid:GiveTask(tool.Activated:Connect(onActivated))
end)


-------------------------------------------------------------------------------------
-- UNEQUIP (FIXED SO ANIMATIONS CANNOT GET STUCK)
-------------------------------------------------------------------------------------
tool.Unequipped:Connect(function()
	-- mark unequipped early so callbacks know
	equipped = false
	UnequipSound:Play()

	isSwinging = false

	-- stop and destroy all tracked animations, and stop matching playing tracks on humanoid
	stopAllTracks()

	-- clear character/humanoid references and remove connections
	character = nil
	humanoid = nil

	-- remove all connections (movement loop, touch, activated)
	toolMaid:DoCleaning()

	swingCombo = 1
end)
