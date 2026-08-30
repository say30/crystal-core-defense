--!strict
-- Alien World: all enemies used by this theme's 100 waves.
local EnemyConfigurations = {

	-- Family 1: Sporeborn (waves 301-325)
	["Sporeborn_Sporeling"] = { DisplayName = "Sporeling", Family = "Sporeborn", CashReward = 14, MaxHealth = 17000, Damage = 38 },
	["Sporeborn_MyceliumSkitter"] = { DisplayName = "Mycelium Skitter", Family = "Sporeborn", CashReward = 25, MaxHealth = 29240, Damage = 57 },
	["Sporeborn_PollenStalker"] = { DisplayName = "Pollen Stalker", Family = "Sporeborn", CashReward = 43, MaxHealth = 50293, Damage = 76 },
	["Sporeborn_BloomBrute"] = { DisplayName = "Bloom Brute", Family = "Sporeborn", CashReward = 74, MaxHealth = 86504, Damage = 95 },
	["Sporeborn_FungalLeviathan"] = { DisplayName = "Fungal Leviathan", Family = "Sporeborn", CashReward = 127, MaxHealth = 148786, Damage = 114 },
	["Sporeborn_TheWorldrootMind"] = { DisplayName = "The Worldroot Mind", Family = "Sporeborn", IsBoss = true, CashReward = 10865, MaxHealth = 1700000, Damage = 190 },

	-- Family 2: Xenobeast (waves 326-350)
	["Xenobeast_GlasswingHunter"] = { DisplayName = "Glasswing Hunter", Family = "Xenobeast", CashReward = 218, MaxHealth = 255912, Damage = 133 },
	["Xenobeast_RazorbackGrazer"] = { DisplayName = "Razorback Grazer", Family = "Xenobeast", CashReward = 375, MaxHealth = 440169, Damage = 152 },
	["Xenobeast_PhasePouncer"] = { DisplayName = "Phase Pouncer", Family = "Xenobeast", CashReward = 645, MaxHealth = 757091, Damage = 171 },
	["Xenobeast_VoidmawPredator"] = { DisplayName = "Voidmaw Predator", Family = "Xenobeast", CashReward = 1110, MaxHealth = 1302196, Damage = 190 },
	["Xenobeast_TitanBroodbeast"] = { DisplayName = "Titan Broodbeast", Family = "Xenobeast", CashReward = 1909, MaxHealth = 2239778, Damage = 209 },
	["Xenobeast_AlphaBeyondtheStars"] = { DisplayName = "Alpha Beyond the Stars", Family = "Xenobeast", IsBoss = true, CashReward = 78230, MaxHealth = 12240000, Damage = 380 },

	-- Family 3: Ancient Ruin (waves 351-375)
	["AncientRuin_RelicDrone"] = { DisplayName = "Relic Drone", Family = "Ancient Ruin", CashReward = 3283, MaxHealth = 3852418, Damage = 228 },
	["AncientRuin_GlyphKeeper"] = { DisplayName = "Glyph Keeper", Family = "Ancient Ruin", CashReward = 5647, MaxHealth = 6626159, Damage = 247 },
	["AncientRuin_ObeliskWalker"] = { DisplayName = "Obelisk Walker", Family = "Ancient Ruin", CashReward = 9712, MaxHealth = 11396993, Damage = 266 },
	["AncientRuin_TempleSentinel"] = { DisplayName = "Temple Sentinel", Family = "Ancient Ruin", CashReward = 16705, MaxHealth = 19602828, Damage = 285 },
	["AncientRuin_RuinColossus"] = { DisplayName = "Ruin Colossus", Family = "Ancient Ruin", CashReward = 28733, MaxHealth = 33716864, Damage = 304 },
	["AncientRuin_OracleoftheLostOrbit"] = { DisplayName = "Oracle of the Lost Orbit", Family = "Ancient Ruin", IsBoss = true, CashReward = 563259, MaxHealth = 88128000, Damage = 570 },

	-- Family 4: Starhive (waves 376-400)
	["Starhive_HiveLarva"] = { DisplayName = "Hive Larva", Family = "Starhive", CashReward = 49421, MaxHealth = 57993007, Damage = 323 },
	["Starhive_ChitinSoldier"] = { DisplayName = "Chitin Soldier", Family = "Starhive", CashReward = 85004, MaxHealth = 99747971, Damage = 342 },
	["Starhive_PlasmaWeaver"] = { DisplayName = "Plasma Weaver", Family = "Starhive", CashReward = 146206, MaxHealth = 171566511, Damage = 361 },
	["Starhive_BroodPraetorian"] = { DisplayName = "Brood Praetorian", Family = "Starhive", CashReward = 251475, MaxHealth = 295094398, Damage = 380 },
	["Starhive_StarhiveDevourer"] = { DisplayName = "Starhive Devourer", Family = "Starhive", CashReward = 432536, MaxHealth = 507562365, Damage = 399 },
	["Starhive_TheCelestialBroodmother"] = { DisplayName = "The Celestial Broodmother", Family = "Starhive", IsBoss = true, CashReward = 4055465, MaxHealth = 634521600, Damage = 760 },
}

return EnemyConfigurations
