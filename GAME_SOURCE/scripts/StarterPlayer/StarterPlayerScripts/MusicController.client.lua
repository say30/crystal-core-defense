--!strict
-- This script manages the game's dynamic background music.

local SoundService = game:GetService("SoundService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")

-- Sound References
local NormalMusic = SoundService:WaitForChild("NormalMusic")
local FightingMusic = SoundService:WaitForChild("FightingMusic")
local BossMusic = SoundService:WaitForChild("BossMusic")

-- Events
local WaveUIStateChanged = ReplicatedStorage.Events:WaitForChild("WaveUIStateChanged")

-- State
local currentTrack: Sound? = nil
local FADE_TIME = 1.5 -- Seconds for the music to crossfade

-- Helper function to smoothly transition between music tracks
local function playMusic(trackToPlay: Sound)
	if trackToPlay == currentTrack and trackToPlay.IsPlaying then return end

	-- Fade out the current track if one is playing
	if currentTrack and currentTrack.IsPlaying then
		TweenService:Create(currentTrack, TweenInfo.new(FADE_TIME), {Volume = 0}):Play()
	end

	-- Fade in the new track
	trackToPlay.Volume = 0
	trackToPlay:Play()
	TweenService:Create(trackToPlay, TweenInfo.new(FADE_TIME), {Volume = 1}):Play()

	currentTrack = trackToPlay
end

-- Listen for the server to announce a change in the wave state
WaveUIStateChanged.OnClientEvent:Connect(function(isFighting: boolean, waveNumber: number?, totalEnemies: number?, isBossWave: boolean?)
	if isFighting then
		if isBossWave then
			playMusic(BossMusic)
		else
			playMusic(FightingMusic)
		end
	else
		-- The fight has ended, go back to normal music.
		playMusic(NormalMusic)
	end
end)

-- Start the normal music when the player joins
playMusic(NormalMusic)