--!strict
-- Frozen Citadel: explicit waves 1-100.
local WaveConfigurations = {
	[1] = {
		CashReward = 25,
		Enemies = {
			{ Enemy = "Frostbound_SnowdriftScout", Count = 1, DelayBetweenSpawns = 1.15 },
		},
	},
	[2] = {
		CashReward = 32,
		Enemies = {
			{ Enemy = "Frostbound_SnowdriftScout", Count = 1, DelayBetweenSpawns = 1.15 },
		},
	},
	[3] = {
		CashReward = 39,
		Enemies = {
			{ Enemy = "Frostbound_SnowdriftScout", Count = 1, DelayBetweenSpawns = 1.15 },
		},
	},
	[4] = {
		CashReward = 46,
		Enemies = {
			{ Enemy = "Frostbound_SnowdriftScout", Count = 2, DelayBetweenSpawns = 1.15 },
		},
	},
	[5] = {
		CashReward = 53,
		UnlocksStartingWave = 1,
		Enemies = {
			{ Enemy = "Frostbound_SnowdriftScout", Count = 3, DelayBetweenSpawns = 1.15 },
		},
	},
	[6] = {
		CashReward = 60,
		Enemies = {
			{ Enemy = "Frostbound_SnowdriftScout", Count = 3, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Frostbound_RimeWalker", Count = 1, DelayBetweenSpawns = 1.01 },
		},
	},
	[7] = {
		CashReward = 67,
		Enemies = {
			{ Enemy = "Frostbound_SnowdriftScout", Count = 4, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Frostbound_RimeWalker", Count = 2, DelayBetweenSpawns = 1.01 },
		},
	},
	[8] = {
		CashReward = 74,
		Enemies = {
			{ Enemy = "Frostbound_SnowdriftScout", Count = 5, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Frostbound_RimeWalker", Count = 3, DelayBetweenSpawns = 1.01 },
		},
	},
	[9] = {
		CashReward = 81,
		Enemies = {
			{ Enemy = "Frostbound_SnowdriftScout", Count = 5, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Frostbound_RimeWalker", Count = 3, DelayBetweenSpawns = 1.01 },
		},
	},
	[10] = {
		CashReward = 88,
		UnlocksStartingWave = 5,
		Enemies = {
			{ Enemy = "Frostbound_SnowdriftScout", Count = 6, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Frostbound_RimeWalker", Count = 4, DelayBetweenSpawns = 1.01 },
		},
	},
	[11] = {
		CashReward = 95,
		Enemies = {
			{ Enemy = "Frostbound_SnowdriftScout", Count = 7, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Frostbound_RimeWalker", Count = 5, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Frostbound_IcicleBrute", Count = 3, DelayBetweenSpawns = 0.87 },
		},
	},
	[12] = {
		CashReward = 102,
		Enemies = {
			{ Enemy = "Frostbound_SnowdriftScout", Count = 7, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Frostbound_RimeWalker", Count = 5, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Frostbound_IcicleBrute", Count = 3, DelayBetweenSpawns = 0.87 },
		},
	},
	[13] = {
		CashReward = 109,
		Enemies = {
			{ Enemy = "Frostbound_SnowdriftScout", Count = 8, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Frostbound_RimeWalker", Count = 6, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Frostbound_IcicleBrute", Count = 4, DelayBetweenSpawns = 0.87 },
		},
	},
	[14] = {
		CashReward = 116,
		Enemies = {
			{ Enemy = "Frostbound_SnowdriftScout", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Frostbound_RimeWalker", Count = 7, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Frostbound_IcicleBrute", Count = 5, DelayBetweenSpawns = 0.87 },
		},
	},
	[15] = {
		CashReward = 123,
		UnlocksStartingWave = 10,
		Enemies = {
			{ Enemy = "Frostbound_SnowdriftScout", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Frostbound_RimeWalker", Count = 7, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Frostbound_IcicleBrute", Count = 5, DelayBetweenSpawns = 0.87 },
		},
	},
	[16] = {
		CashReward = 130,
		Enemies = {
			{ Enemy = "Frostbound_RimeWalker", Count = 8, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Frostbound_IcicleBrute", Count = 6, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Frostbound_GlacierStalker", Count = 4, DelayBetweenSpawns = 0.73 },
		},
	},
	[17] = {
		CashReward = 137,
		Enemies = {
			{ Enemy = "Frostbound_RimeWalker", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Frostbound_IcicleBrute", Count = 7, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Frostbound_GlacierStalker", Count = 5, DelayBetweenSpawns = 0.73 },
		},
	},
	[18] = {
		CashReward = 144,
		Enemies = {
			{ Enemy = "Frostbound_RimeWalker", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Frostbound_IcicleBrute", Count = 7, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Frostbound_GlacierStalker", Count = 5, DelayBetweenSpawns = 0.73 },
		},
	},
	[19] = {
		CashReward = 151,
		Enemies = {
			{ Enemy = "Frostbound_RimeWalker", Count = 10, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Frostbound_IcicleBrute", Count = 8, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Frostbound_GlacierStalker", Count = 6, DelayBetweenSpawns = 0.73 },
		},
	},
	[20] = {
		CashReward = 158,
		UnlocksStartingWave = 15,
		Enemies = {
			{ Enemy = "Frostbound_RimeWalker", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Frostbound_IcicleBrute", Count = 9, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Frostbound_GlacierStalker", Count = 7, DelayBetweenSpawns = 0.73 },
		},
	},
	[21] = {
		CashReward = 165,
		Enemies = {
			{ Enemy = "Frostbound_IcicleBrute", Count = 9, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Frostbound_GlacierStalker", Count = 7, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Frostbound_WhiteoutColossus", Count = 5, DelayBetweenSpawns = 0.59 },
		},
	},
	[22] = {
		CashReward = 172,
		Enemies = {
			{ Enemy = "Frostbound_IcicleBrute", Count = 10, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Frostbound_GlacierStalker", Count = 8, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Frostbound_WhiteoutColossus", Count = 6, DelayBetweenSpawns = 0.59 },
		},
	},
	[23] = {
		CashReward = 179,
		Enemies = {
			{ Enemy = "Frostbound_IcicleBrute", Count = 10, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Frostbound_GlacierStalker", Count = 8, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Frostbound_WhiteoutColossus", Count = 6, DelayBetweenSpawns = 0.59 },
		},
	},
	[24] = {
		CashReward = 186,
		Enemies = {
			{ Enemy = "Frostbound_IcicleBrute", Count = 11, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Frostbound_GlacierStalker", Count = 9, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Frostbound_WhiteoutColossus", Count = 7, DelayBetweenSpawns = 0.59 },
		},
	},
	[25] = {
		CashReward = 193,
		IsBossWave = true,
		UnlocksStartingWave = 20,
		Enemies = {
			{ Enemy = "Frostbound_AncientFrostWarden", Count = 1, DelayBetweenSpawns = 3 },
			{ Enemy = "Frostbound_WhiteoutColossus", Count = 3, DelayBetweenSpawns = 1.5 },
		},
	},
	[26] = {
		CashReward = 200,
		Enemies = {
			{ Enemy = "Citadel_FrozenSquire", Count = 2, DelayBetweenSpawns = 1.15 },
		},
	},
	[27] = {
		CashReward = 207,
		Enemies = {
			{ Enemy = "Citadel_FrozenSquire", Count = 3, DelayBetweenSpawns = 1.15 },
		},
	},
	[28] = {
		CashReward = 214,
		Enemies = {
			{ Enemy = "Citadel_FrozenSquire", Count = 3, DelayBetweenSpawns = 1.15 },
		},
	},
	[29] = {
		CashReward = 221,
		Enemies = {
			{ Enemy = "Citadel_FrozenSquire", Count = 4, DelayBetweenSpawns = 1.15 },
		},
	},
	[30] = {
		CashReward = 228,
		UnlocksStartingWave = 25,
		Enemies = {
			{ Enemy = "Citadel_FrozenSquire", Count = 5, DelayBetweenSpawns = 1.15 },
		},
	},
	[31] = {
		CashReward = 235,
		Enemies = {
			{ Enemy = "Citadel_FrozenSquire", Count = 5, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Citadel_RampartRaider", Count = 3, DelayBetweenSpawns = 1.01 },
		},
	},
	[32] = {
		CashReward = 242,
		Enemies = {
			{ Enemy = "Citadel_FrozenSquire", Count = 6, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Citadel_RampartRaider", Count = 4, DelayBetweenSpawns = 1.01 },
		},
	},
	[33] = {
		CashReward = 249,
		Enemies = {
			{ Enemy = "Citadel_FrozenSquire", Count = 7, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Citadel_RampartRaider", Count = 5, DelayBetweenSpawns = 1.01 },
		},
	},
	[34] = {
		CashReward = 256,
		Enemies = {
			{ Enemy = "Citadel_FrozenSquire", Count = 7, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Citadel_RampartRaider", Count = 5, DelayBetweenSpawns = 1.01 },
		},
	},
	[35] = {
		CashReward = 263,
		UnlocksStartingWave = 30,
		Enemies = {
			{ Enemy = "Citadel_FrozenSquire", Count = 8, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Citadel_RampartRaider", Count = 6, DelayBetweenSpawns = 1.01 },
		},
	},
	[36] = {
		CashReward = 270,
		Enemies = {
			{ Enemy = "Citadel_FrozenSquire", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Citadel_RampartRaider", Count = 7, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Citadel_IceboundKnight", Count = 5, DelayBetweenSpawns = 0.87 },
		},
	},
	[37] = {
		CashReward = 277,
		Enemies = {
			{ Enemy = "Citadel_FrozenSquire", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Citadel_RampartRaider", Count = 7, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Citadel_IceboundKnight", Count = 5, DelayBetweenSpawns = 0.87 },
		},
	},
	[38] = {
		CashReward = 284,
		Enemies = {
			{ Enemy = "Citadel_FrozenSquire", Count = 10, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Citadel_RampartRaider", Count = 8, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Citadel_IceboundKnight", Count = 6, DelayBetweenSpawns = 0.87 },
		},
	},
	[39] = {
		CashReward = 291,
		Enemies = {
			{ Enemy = "Citadel_FrozenSquire", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Citadel_RampartRaider", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Citadel_IceboundKnight", Count = 7, DelayBetweenSpawns = 0.87 },
		},
	},
	[40] = {
		CashReward = 298,
		UnlocksStartingWave = 35,
		Enemies = {
			{ Enemy = "Citadel_FrozenSquire", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Citadel_RampartRaider", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Citadel_IceboundKnight", Count = 7, DelayBetweenSpawns = 0.87 },
		},
	},
	[41] = {
		CashReward = 305,
		Enemies = {
			{ Enemy = "Citadel_RampartRaider", Count = 10, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Citadel_IceboundKnight", Count = 8, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Citadel_FrostBanneret", Count = 6, DelayBetweenSpawns = 0.73 },
		},
	},
	[42] = {
		CashReward = 312,
		Enemies = {
			{ Enemy = "Citadel_RampartRaider", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Citadel_IceboundKnight", Count = 9, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Citadel_FrostBanneret", Count = 7, DelayBetweenSpawns = 0.73 },
		},
	},
	[43] = {
		CashReward = 319,
		Enemies = {
			{ Enemy = "Citadel_RampartRaider", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Citadel_IceboundKnight", Count = 9, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Citadel_FrostBanneret", Count = 7, DelayBetweenSpawns = 0.73 },
		},
	},
	[44] = {
		CashReward = 326,
		Enemies = {
			{ Enemy = "Citadel_RampartRaider", Count = 12, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Citadel_IceboundKnight", Count = 10, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Citadel_FrostBanneret", Count = 8, DelayBetweenSpawns = 0.73 },
		},
	},
	[45] = {
		CashReward = 333,
		UnlocksStartingWave = 40,
		Enemies = {
			{ Enemy = "Citadel_RampartRaider", Count = 13, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Citadel_IceboundKnight", Count = 11, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Citadel_FrostBanneret", Count = 9, DelayBetweenSpawns = 0.73 },
		},
	},
	[46] = {
		CashReward = 340,
		Enemies = {
			{ Enemy = "Citadel_IceboundKnight", Count = 11, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Citadel_FrostBanneret", Count = 9, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Citadel_SiegeBehemoth", Count = 7, DelayBetweenSpawns = 0.59 },
		},
	},
	[47] = {
		CashReward = 347,
		Enemies = {
			{ Enemy = "Citadel_IceboundKnight", Count = 12, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Citadel_FrostBanneret", Count = 10, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Citadel_SiegeBehemoth", Count = 8, DelayBetweenSpawns = 0.59 },
		},
	},
	[48] = {
		CashReward = 354,
		Enemies = {
			{ Enemy = "Citadel_IceboundKnight", Count = 12, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Citadel_FrostBanneret", Count = 10, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Citadel_SiegeBehemoth", Count = 8, DelayBetweenSpawns = 0.59 },
		},
	},
	[49] = {
		CashReward = 361,
		Enemies = {
			{ Enemy = "Citadel_IceboundKnight", Count = 13, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Citadel_FrostBanneret", Count = 11, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Citadel_SiegeBehemoth", Count = 9, DelayBetweenSpawns = 0.59 },
		},
	},
	[50] = {
		CashReward = 368,
		IsBossWave = true,
		UnlocksStartingWave = 45,
		Enemies = {
			{ Enemy = "Citadel_CrownedGlacialRegent", Count = 1, DelayBetweenSpawns = 3 },
			{ Enemy = "Citadel_SiegeBehemoth", Count = 4, DelayBetweenSpawns = 1.5 },
		},
	},
	[51] = {
		CashReward = 375,
		Enemies = {
			{ Enemy = "Aurora_AuroraWisp", Count = 4, DelayBetweenSpawns = 1.15 },
		},
	},
	[52] = {
		CashReward = 382,
		Enemies = {
			{ Enemy = "Aurora_AuroraWisp", Count = 5, DelayBetweenSpawns = 1.15 },
		},
	},
	[53] = {
		CashReward = 389,
		Enemies = {
			{ Enemy = "Aurora_AuroraWisp", Count = 5, DelayBetweenSpawns = 1.15 },
		},
	},
	[54] = {
		CashReward = 396,
		Enemies = {
			{ Enemy = "Aurora_AuroraWisp", Count = 6, DelayBetweenSpawns = 1.15 },
		},
	},
	[55] = {
		CashReward = 403,
		UnlocksStartingWave = 50,
		Enemies = {
			{ Enemy = "Aurora_AuroraWisp", Count = 7, DelayBetweenSpawns = 1.15 },
		},
	},
	[56] = {
		CashReward = 410,
		Enemies = {
			{ Enemy = "Aurora_AuroraWisp", Count = 7, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Aurora_PrismProwler", Count = 5, DelayBetweenSpawns = 1.01 },
		},
	},
	[57] = {
		CashReward = 417,
		Enemies = {
			{ Enemy = "Aurora_AuroraWisp", Count = 8, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Aurora_PrismProwler", Count = 6, DelayBetweenSpawns = 1.01 },
		},
	},
	[58] = {
		CashReward = 424,
		Enemies = {
			{ Enemy = "Aurora_AuroraWisp", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Aurora_PrismProwler", Count = 7, DelayBetweenSpawns = 1.01 },
		},
	},
	[59] = {
		CashReward = 431,
		Enemies = {
			{ Enemy = "Aurora_AuroraWisp", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Aurora_PrismProwler", Count = 7, DelayBetweenSpawns = 1.01 },
		},
	},
	[60] = {
		CashReward = 438,
		UnlocksStartingWave = 55,
		Enemies = {
			{ Enemy = "Aurora_AuroraWisp", Count = 10, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Aurora_PrismProwler", Count = 8, DelayBetweenSpawns = 1.01 },
		},
	},
	[61] = {
		CashReward = 445,
		Enemies = {
			{ Enemy = "Aurora_AuroraWisp", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Aurora_PrismProwler", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Aurora_BorealShaman", Count = 7, DelayBetweenSpawns = 0.87 },
		},
	},
	[62] = {
		CashReward = 452,
		Enemies = {
			{ Enemy = "Aurora_AuroraWisp", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Aurora_PrismProwler", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Aurora_BorealShaman", Count = 7, DelayBetweenSpawns = 0.87 },
		},
	},
	[63] = {
		CashReward = 459,
		Enemies = {
			{ Enemy = "Aurora_AuroraWisp", Count = 12, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Aurora_PrismProwler", Count = 10, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Aurora_BorealShaman", Count = 8, DelayBetweenSpawns = 0.87 },
		},
	},
	[64] = {
		CashReward = 466,
		Enemies = {
			{ Enemy = "Aurora_AuroraWisp", Count = 13, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Aurora_PrismProwler", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Aurora_BorealShaman", Count = 9, DelayBetweenSpawns = 0.87 },
		},
	},
	[65] = {
		CashReward = 473,
		UnlocksStartingWave = 60,
		Enemies = {
			{ Enemy = "Aurora_AuroraWisp", Count = 13, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Aurora_PrismProwler", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Aurora_BorealShaman", Count = 9, DelayBetweenSpawns = 0.87 },
		},
	},
	[66] = {
		CashReward = 480,
		Enemies = {
			{ Enemy = "Aurora_PrismProwler", Count = 12, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Aurora_BorealShaman", Count = 10, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Aurora_NorthernSentinel", Count = 8, DelayBetweenSpawns = 0.73 },
		},
	},
	[67] = {
		CashReward = 487,
		Enemies = {
			{ Enemy = "Aurora_PrismProwler", Count = 13, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Aurora_BorealShaman", Count = 11, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Aurora_NorthernSentinel", Count = 9, DelayBetweenSpawns = 0.73 },
		},
	},
	[68] = {
		CashReward = 494,
		Enemies = {
			{ Enemy = "Aurora_PrismProwler", Count = 13, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Aurora_BorealShaman", Count = 11, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Aurora_NorthernSentinel", Count = 9, DelayBetweenSpawns = 0.73 },
		},
	},
	[69] = {
		CashReward = 501,
		Enemies = {
			{ Enemy = "Aurora_PrismProwler", Count = 14, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Aurora_BorealShaman", Count = 12, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Aurora_NorthernSentinel", Count = 10, DelayBetweenSpawns = 0.73 },
		},
	},
	[70] = {
		CashReward = 508,
		UnlocksStartingWave = 65,
		Enemies = {
			{ Enemy = "Aurora_PrismProwler", Count = 15, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Aurora_BorealShaman", Count = 13, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Aurora_NorthernSentinel", Count = 11, DelayBetweenSpawns = 0.73 },
		},
	},
	[71] = {
		CashReward = 515,
		Enemies = {
			{ Enemy = "Aurora_BorealShaman", Count = 13, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Aurora_NorthernSentinel", Count = 11, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Aurora_AuroraTitan", Count = 9, DelayBetweenSpawns = 0.59 },
		},
	},
	[72] = {
		CashReward = 522,
		Enemies = {
			{ Enemy = "Aurora_BorealShaman", Count = 14, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Aurora_NorthernSentinel", Count = 12, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Aurora_AuroraTitan", Count = 10, DelayBetweenSpawns = 0.59 },
		},
	},
	[73] = {
		CashReward = 529,
		Enemies = {
			{ Enemy = "Aurora_BorealShaman", Count = 14, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Aurora_NorthernSentinel", Count = 12, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Aurora_AuroraTitan", Count = 10, DelayBetweenSpawns = 0.59 },
		},
	},
	[74] = {
		CashReward = 536,
		Enemies = {
			{ Enemy = "Aurora_BorealShaman", Count = 15, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Aurora_NorthernSentinel", Count = 13, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Aurora_AuroraTitan", Count = 11, DelayBetweenSpawns = 0.59 },
		},
	},
	[75] = {
		CashReward = 543,
		IsBossWave = true,
		UnlocksStartingWave = 70,
		Enemies = {
			{ Enemy = "Aurora_HeartoftheLongNight", Count = 1, DelayBetweenSpawns = 3 },
			{ Enemy = "Aurora_AuroraTitan", Count = 5, DelayBetweenSpawns = 1.5 },
		},
	},
	[76] = {
		CashReward = 550,
		Enemies = {
			{ Enemy = "AbyssalIce_CrevasseCrawler", Count = 6, DelayBetweenSpawns = 1.15 },
		},
	},
	[77] = {
		CashReward = 557,
		Enemies = {
			{ Enemy = "AbyssalIce_CrevasseCrawler", Count = 7, DelayBetweenSpawns = 1.15 },
		},
	},
	[78] = {
		CashReward = 564,
		Enemies = {
			{ Enemy = "AbyssalIce_CrevasseCrawler", Count = 7, DelayBetweenSpawns = 1.15 },
		},
	},
	[79] = {
		CashReward = 571,
		Enemies = {
			{ Enemy = "AbyssalIce_CrevasseCrawler", Count = 8, DelayBetweenSpawns = 1.15 },
		},
	},
	[80] = {
		CashReward = 578,
		UnlocksStartingWave = 75,
		Enemies = {
			{ Enemy = "AbyssalIce_CrevasseCrawler", Count = 9, DelayBetweenSpawns = 1.15 },
		},
	},
	[81] = {
		CashReward = 585,
		Enemies = {
			{ Enemy = "AbyssalIce_CrevasseCrawler", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "AbyssalIce_BlackIceHunter", Count = 7, DelayBetweenSpawns = 1.01 },
		},
	},
	[82] = {
		CashReward = 592,
		Enemies = {
			{ Enemy = "AbyssalIce_CrevasseCrawler", Count = 10, DelayBetweenSpawns = 1.15 },
			{ Enemy = "AbyssalIce_BlackIceHunter", Count = 8, DelayBetweenSpawns = 1.01 },
		},
	},
	[83] = {
		CashReward = 599,
		Enemies = {
			{ Enemy = "AbyssalIce_CrevasseCrawler", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "AbyssalIce_BlackIceHunter", Count = 9, DelayBetweenSpawns = 1.01 },
		},
	},
	[84] = {
		CashReward = 606,
		Enemies = {
			{ Enemy = "AbyssalIce_CrevasseCrawler", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "AbyssalIce_BlackIceHunter", Count = 9, DelayBetweenSpawns = 1.01 },
		},
	},
	[85] = {
		CashReward = 613,
		UnlocksStartingWave = 80,
		Enemies = {
			{ Enemy = "AbyssalIce_CrevasseCrawler", Count = 12, DelayBetweenSpawns = 1.15 },
			{ Enemy = "AbyssalIce_BlackIceHunter", Count = 10, DelayBetweenSpawns = 1.01 },
		},
	},
	[86] = {
		CashReward = 620,
		Enemies = {
			{ Enemy = "AbyssalIce_CrevasseCrawler", Count = 13, DelayBetweenSpawns = 1.15 },
			{ Enemy = "AbyssalIce_BlackIceHunter", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "AbyssalIce_PermafrostHorror", Count = 9, DelayBetweenSpawns = 0.87 },
		},
	},
	[87] = {
		CashReward = 627,
		Enemies = {
			{ Enemy = "AbyssalIce_CrevasseCrawler", Count = 13, DelayBetweenSpawns = 1.15 },
			{ Enemy = "AbyssalIce_BlackIceHunter", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "AbyssalIce_PermafrostHorror", Count = 9, DelayBetweenSpawns = 0.87 },
		},
	},
	[88] = {
		CashReward = 634,
		Enemies = {
			{ Enemy = "AbyssalIce_CrevasseCrawler", Count = 14, DelayBetweenSpawns = 1.15 },
			{ Enemy = "AbyssalIce_BlackIceHunter", Count = 12, DelayBetweenSpawns = 1.01 },
			{ Enemy = "AbyssalIce_PermafrostHorror", Count = 10, DelayBetweenSpawns = 0.87 },
		},
	},
	[89] = {
		CashReward = 641,
		Enemies = {
			{ Enemy = "AbyssalIce_CrevasseCrawler", Count = 15, DelayBetweenSpawns = 1.15 },
			{ Enemy = "AbyssalIce_BlackIceHunter", Count = 13, DelayBetweenSpawns = 1.01 },
			{ Enemy = "AbyssalIce_PermafrostHorror", Count = 11, DelayBetweenSpawns = 0.87 },
		},
	},
	[90] = {
		CashReward = 648,
		UnlocksStartingWave = 85,
		Enemies = {
			{ Enemy = "AbyssalIce_CrevasseCrawler", Count = 15, DelayBetweenSpawns = 1.15 },
			{ Enemy = "AbyssalIce_BlackIceHunter", Count = 13, DelayBetweenSpawns = 1.01 },
			{ Enemy = "AbyssalIce_PermafrostHorror", Count = 11, DelayBetweenSpawns = 0.87 },
		},
	},
	[91] = {
		CashReward = 655,
		Enemies = {
			{ Enemy = "AbyssalIce_BlackIceHunter", Count = 14, DelayBetweenSpawns = 1.01 },
			{ Enemy = "AbyssalIce_PermafrostHorror", Count = 12, DelayBetweenSpawns = 0.87 },
			{ Enemy = "AbyssalIce_AbyssalYeti", Count = 10, DelayBetweenSpawns = 0.73 },
		},
	},
	[92] = {
		CashReward = 662,
		Enemies = {
			{ Enemy = "AbyssalIce_BlackIceHunter", Count = 15, DelayBetweenSpawns = 1.01 },
			{ Enemy = "AbyssalIce_PermafrostHorror", Count = 13, DelayBetweenSpawns = 0.87 },
			{ Enemy = "AbyssalIce_AbyssalYeti", Count = 11, DelayBetweenSpawns = 0.73 },
		},
	},
	[93] = {
		CashReward = 669,
		Enemies = {
			{ Enemy = "AbyssalIce_BlackIceHunter", Count = 15, DelayBetweenSpawns = 1.01 },
			{ Enemy = "AbyssalIce_PermafrostHorror", Count = 13, DelayBetweenSpawns = 0.87 },
			{ Enemy = "AbyssalIce_AbyssalYeti", Count = 11, DelayBetweenSpawns = 0.73 },
		},
	},
	[94] = {
		CashReward = 676,
		Enemies = {
			{ Enemy = "AbyssalIce_BlackIceHunter", Count = 16, DelayBetweenSpawns = 1.01 },
			{ Enemy = "AbyssalIce_PermafrostHorror", Count = 14, DelayBetweenSpawns = 0.87 },
			{ Enemy = "AbyssalIce_AbyssalYeti", Count = 12, DelayBetweenSpawns = 0.73 },
		},
	},
	[95] = {
		CashReward = 683,
		UnlocksStartingWave = 90,
		Enemies = {
			{ Enemy = "AbyssalIce_BlackIceHunter", Count = 17, DelayBetweenSpawns = 1.01 },
			{ Enemy = "AbyssalIce_PermafrostHorror", Count = 15, DelayBetweenSpawns = 0.87 },
			{ Enemy = "AbyssalIce_AbyssalYeti", Count = 13, DelayBetweenSpawns = 0.73 },
		},
	},
	[96] = {
		CashReward = 690,
		Enemies = {
			{ Enemy = "AbyssalIce_PermafrostHorror", Count = 15, DelayBetweenSpawns = 0.87 },
			{ Enemy = "AbyssalIce_AbyssalYeti", Count = 13, DelayBetweenSpawns = 0.73 },
			{ Enemy = "AbyssalIce_EternalIcebreaker", Count = 11, DelayBetweenSpawns = 0.59 },
		},
	},
	[97] = {
		CashReward = 697,
		Enemies = {
			{ Enemy = "AbyssalIce_PermafrostHorror", Count = 16, DelayBetweenSpawns = 0.87 },
			{ Enemy = "AbyssalIce_AbyssalYeti", Count = 14, DelayBetweenSpawns = 0.73 },
			{ Enemy = "AbyssalIce_EternalIcebreaker", Count = 12, DelayBetweenSpawns = 0.59 },
		},
	},
	[98] = {
		CashReward = 704,
		Enemies = {
			{ Enemy = "AbyssalIce_PermafrostHorror", Count = 16, DelayBetweenSpawns = 0.87 },
			{ Enemy = "AbyssalIce_AbyssalYeti", Count = 14, DelayBetweenSpawns = 0.73 },
			{ Enemy = "AbyssalIce_EternalIcebreaker", Count = 12, DelayBetweenSpawns = 0.59 },
		},
	},
	[99] = {
		CashReward = 711,
		Enemies = {
			{ Enemy = "AbyssalIce_PermafrostHorror", Count = 17, DelayBetweenSpawns = 0.87 },
			{ Enemy = "AbyssalIce_AbyssalYeti", Count = 15, DelayBetweenSpawns = 0.73 },
			{ Enemy = "AbyssalIce_EternalIcebreaker", Count = 13, DelayBetweenSpawns = 0.59 },
		},
	},
	[100] = {
		CashReward = 718,
		IsBossWave = true,
		UnlocksStartingWave = 95,
		Enemies = {
			{ Enemy = "AbyssalIce_SovereignofWinter", Count = 1, DelayBetweenSpawns = 3 },
			{ Enemy = "AbyssalIce_EternalIcebreaker", Count = 6, DelayBetweenSpawns = 1.5 },
		},
	},
}

return WaveConfigurations
