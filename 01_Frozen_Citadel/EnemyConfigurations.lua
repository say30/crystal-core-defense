--!strict
-- Frozen Citadel: all enemies used by this theme's 100 waves.
local EnemyConfigurations = {

	-- Family 1: Frostbound (waves 1-25)
	["Frostbound_SnowdriftScout"] = { DisplayName = "Snowdrift Scout", Family = "Frostbound", CashReward = 1, MaxHealth = 100, Damage = 10 },
	["Frostbound_RimeWalker"] = { DisplayName = "Rime Walker", Family = "Frostbound", CashReward = 2, MaxHealth = 172, Damage = 15 },
	["Frostbound_IcicleBrute"] = { DisplayName = "Icicle Brute", Family = "Frostbound", CashReward = 3, MaxHealth = 296, Damage = 20 },
	["Frostbound_GlacierStalker"] = { DisplayName = "Glacier Stalker", Family = "Frostbound", CashReward = 6, MaxHealth = 509, Damage = 25 },
	["Frostbound_WhiteoutColossus"] = { DisplayName = "Whiteout Colossus", Family = "Frostbound", CashReward = 10, MaxHealth = 875, Damage = 30 },
	["Frostbound_AncientFrostWarden"] = { DisplayName = "Ancient Frost Warden", Family = "Frostbound", IsBoss = true, CashReward = 1000, MaxHealth = 10000, Damage = 50 },

	-- Family 2: Citadel (waves 26-50)
	["Citadel_FrozenSquire"] = { DisplayName = "Frozen Squire", Family = "Citadel", CashReward = 17, MaxHealth = 1505, Damage = 35 },
	["Citadel_RampartRaider"] = { DisplayName = "Rampart Raider", Family = "Citadel", CashReward = 29, MaxHealth = 2589, Damage = 40 },
	["Citadel_IceboundKnight"] = { DisplayName = "Icebound Knight", Family = "Citadel", CashReward = 49, MaxHealth = 4453, Damage = 45 },
	["Citadel_FrostBanneret"] = { DisplayName = "Frost Banneret", Family = "Citadel", CashReward = 85, MaxHealth = 7660, Damage = 50 },
	["Citadel_SiegeBehemoth"] = { DisplayName = "Siege Behemoth", Family = "Citadel", CashReward = 146, MaxHealth = 13175, Damage = 55 },
	["Citadel_CrownedGlacialRegent"] = { DisplayName = "Crowned Glacial Regent", Family = "Citadel", IsBoss = true, CashReward = 6000, MaxHealth = 72000, Damage = 100 },

	-- Family 3: Aurora (waves 51-75)
	["Aurora_AuroraWisp"] = { DisplayName = "Aurora Wisp", Family = "Aurora", CashReward = 252, MaxHealth = 22661, Damage = 60 },
	["Aurora_PrismProwler"] = { DisplayName = "Prism Prowler", Family = "Aurora", CashReward = 433, MaxHealth = 38977, Damage = 65 },
	["Aurora_BorealShaman"] = { DisplayName = "Boreal Shaman", Family = "Aurora", CashReward = 745, MaxHealth = 67041, Damage = 70 },
	["Aurora_NorthernSentinel"] = { DisplayName = "Northern Sentinel", Family = "Aurora", CashReward = 1281, MaxHealth = 115311, Damage = 75 },
	["Aurora_AuroraTitan"] = { DisplayName = "Aurora Titan", Family = "Aurora", CashReward = 2204, MaxHealth = 198334, Damage = 80 },
	["Aurora_HeartoftheLongNight"] = { DisplayName = "Heart of the Long Night", Family = "Aurora", IsBoss = true, CashReward = 43200, MaxHealth = 518400, Damage = 150 },

	-- Family 4: Abyssal Ice (waves 76-100)
	["AbyssalIce_CrevasseCrawler"] = { DisplayName = "Crevasse Crawler", Family = "Abyssal Ice", CashReward = 3790, MaxHealth = 341135, Damage = 85 },
	["AbyssalIce_BlackIceHunter"] = { DisplayName = "Black Ice Hunter", Family = "Abyssal Ice", CashReward = 6519, MaxHealth = 586753, Damage = 90 },
	["AbyssalIce_PermafrostHorror"] = { DisplayName = "Permafrost Horror", Family = "Abyssal Ice", CashReward = 11214, MaxHealth = 1009215, Damage = 95 },
	["AbyssalIce_AbyssalYeti"] = { DisplayName = "Abyssal Yeti", Family = "Abyssal Ice", CashReward = 19287, MaxHealth = 1735849, Damage = 100 },
	["AbyssalIce_EternalIcebreaker"] = { DisplayName = "Eternal Icebreaker", Family = "Abyssal Ice", CashReward = 33174, MaxHealth = 2985661, Damage = 105 },
	["AbyssalIce_SovereignofWinter"] = { DisplayName = "Sovereign of Winter", Family = "Abyssal Ice", IsBoss = true, CashReward = 311040, MaxHealth = 3732480, Damage = 200 },
}

return EnemyConfigurations
