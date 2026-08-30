--!strict
-- Crystal Dimension: all enemies used by this theme's 100 waves.
local EnemyConfigurations = {

	-- Family 1: Shardling (waves 501-525)
	["Shardling_CrystalFleck"] = { DisplayName = "Crystal Fleck", Family = "Shardling", CashReward = 77, MaxHealth = 480000, Damage = 91 },
	["Shardling_ShardSkitter"] = { DisplayName = "Shard Skitter", Family = "Shardling", CashReward = 132, MaxHealth = 825600, Damage = 136 },
	["Shardling_FacetStalker"] = { DisplayName = "Facet Stalker", Family = "Shardling", CashReward = 228, MaxHealth = 1420032, Damage = 181 },
	["Shardling_QuartzBrute"] = { DisplayName = "Quartz Brute", Family = "Shardling", CashReward = 392, MaxHealth = 2442455, Damage = 226 },
	["Shardling_GeodeTitan"] = { DisplayName = "Geode Titan", Family = "Shardling", CashReward = 674, MaxHealth = 4201023, Damage = 272 },
	["Shardling_TheFirstFacet"] = { DisplayName = "The First Facet", Family = "Shardling", IsBoss = true, CashReward = 57735, MaxHealth = 48000000, Damage = 453 },

	-- Family 2: Prismatic (waves 526-550)
	["Prismatic_PrismWisp"] = { DisplayName = "Prism Wisp", Family = "Prismatic", CashReward = 1159, MaxHealth = 7225759, Damage = 317 },
	["Prismatic_SpectrumRunner"] = { DisplayName = "Spectrum Runner", Family = "Prismatic", CashReward = 1993, MaxHealth = 12428305, Damage = 362 },
	["Prismatic_RefractionKnight"] = { DisplayName = "Refraction Knight", Family = "Prismatic", CashReward = 3428, MaxHealth = 21376685, Damage = 408 },
	["Prismatic_RainbowColossus"] = { DisplayName = "Rainbow Colossus", Family = "Prismatic", CashReward = 5897, MaxHealth = 36767899, Damage = 453 },
	["Prismatic_ChromaticDevourer"] = { DisplayName = "Chromatic Devourer", Family = "Prismatic", CashReward = 10142, MaxHealth = 63240786, Damage = 498 },
	["Prismatic_TheSevenfoldMonarch"] = { DisplayName = "The Sevenfold Monarch", Family = "Prismatic", IsBoss = true, CashReward = 415692, MaxHealth = 345600000, Damage = 906 },

	-- Family 3: Resonant (waves 551-575)
	["Resonant_EchoShard"] = { DisplayName = "Echo Shard", Family = "Resonant", CashReward = 17445, MaxHealth = 108774152, Damage = 544 },
	["Resonant_HarmonicHunter"] = { DisplayName = "Harmonic Hunter", Family = "Resonant", CashReward = 30005, MaxHealth = 187091542, Damage = 589 },
	["Resonant_ResonanceGolem"] = { DisplayName = "Resonance Golem", Family = "Resonant", CashReward = 51608, MaxHealth = 321797451, Damage = 634 },
	["Resonant_FrequencyWarden"] = { DisplayName = "Frequency Warden", Family = "Resonant", CashReward = 88766, MaxHealth = 553491616, Damage = 679 },
	["Resonant_SonicCrystalGiant"] = { DisplayName = "Sonic Crystal Giant", Family = "Resonant", CashReward = 152678, MaxHealth = 952005580, Damage = 725 },
	["Resonant_ThePerfectFrequency"] = { DisplayName = "The Perfect Frequency", Family = "Resonant", IsBoss = true, CashReward = 2992984, MaxHealth = 2488320000, Damage = 1359 },

	-- Family 4: Coreborn (waves 576-600)
	["Coreborn_CoreSpark"] = { DisplayName = "Core Spark", Family = "Coreborn", CashReward = 262606, MaxHealth = 1637449598, Damage = 770 },
	["Coreborn_LatticeGuardian"] = { DisplayName = "Lattice Guardian", Family = "Coreborn", CashReward = 451682, MaxHealth = 2816413309, Damage = 815 },
	["Coreborn_DimensionReaver"] = { DisplayName = "Dimension Reaver", Family = "Coreborn", CashReward = 776894, MaxHealth = 4844230891, Damage = 861 },
	["Coreborn_InfiniteFacet"] = { DisplayName = "Infinite Facet", Family = "Coreborn", CashReward = 1336257, MaxHealth = 8332077133, Damage = 906 },
	["Coreborn_RealityGeode"] = { DisplayName = "Reality Geode", Family = "Coreborn", CashReward = 2298363, MaxHealth = 14331172669, Damage = 951 },
	["Coreborn_TheCrystalSingularity"] = { DisplayName = "The Crystal Singularity", Family = "Coreborn", IsBoss = true, CashReward = 21549483, MaxHealth = 17915904000, Damage = 1812 },
}

return EnemyConfigurations
