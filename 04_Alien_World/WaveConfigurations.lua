--!strict
-- Alien World: explicit waves 301-400.
local WaveConfigurations = {
	[301] = {
		CashReward = 326,
		Enemies = {
			{ Enemy = "Sporeborn_Sporeling", Count = 1, DelayBetweenSpawns = 1.15 },
		},
	},
	[302] = {
		CashReward = 417,
		Enemies = {
			{ Enemy = "Sporeborn_Sporeling", Count = 1, DelayBetweenSpawns = 1.15 },
		},
	},
	[303] = {
		CashReward = 508,
		Enemies = {
			{ Enemy = "Sporeborn_Sporeling", Count = 1, DelayBetweenSpawns = 1.15 },
		},
	},
	[304] = {
		CashReward = 600,
		Enemies = {
			{ Enemy = "Sporeborn_Sporeling", Count = 2, DelayBetweenSpawns = 1.15 },
		},
	},
	[305] = {
		CashReward = 691,
		UnlocksStartingWave = 301,
		Enemies = {
			{ Enemy = "Sporeborn_Sporeling", Count = 3, DelayBetweenSpawns = 1.15 },
		},
	},
	[306] = {
		CashReward = 782,
		Enemies = {
			{ Enemy = "Sporeborn_Sporeling", Count = 3, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Sporeborn_MyceliumSkitter", Count = 1, DelayBetweenSpawns = 1.01 },
		},
	},
	[307] = {
		CashReward = 874,
		Enemies = {
			{ Enemy = "Sporeborn_Sporeling", Count = 4, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Sporeborn_MyceliumSkitter", Count = 2, DelayBetweenSpawns = 1.01 },
		},
	},
	[308] = {
		CashReward = 965,
		Enemies = {
			{ Enemy = "Sporeborn_Sporeling", Count = 5, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Sporeborn_MyceliumSkitter", Count = 3, DelayBetweenSpawns = 1.01 },
		},
	},
	[309] = {
		CashReward = 1056,
		Enemies = {
			{ Enemy = "Sporeborn_Sporeling", Count = 5, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Sporeborn_MyceliumSkitter", Count = 3, DelayBetweenSpawns = 1.01 },
		},
	},
	[310] = {
		CashReward = 1147,
		UnlocksStartingWave = 305,
		Enemies = {
			{ Enemy = "Sporeborn_Sporeling", Count = 6, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Sporeborn_MyceliumSkitter", Count = 4, DelayBetweenSpawns = 1.01 },
		},
	},
	[311] = {
		CashReward = 1239,
		Enemies = {
			{ Enemy = "Sporeborn_Sporeling", Count = 7, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Sporeborn_MyceliumSkitter", Count = 5, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Sporeborn_PollenStalker", Count = 3, DelayBetweenSpawns = 0.87 },
		},
	},
	[312] = {
		CashReward = 1330,
		Enemies = {
			{ Enemy = "Sporeborn_Sporeling", Count = 7, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Sporeborn_MyceliumSkitter", Count = 5, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Sporeborn_PollenStalker", Count = 3, DelayBetweenSpawns = 0.87 },
		},
	},
	[313] = {
		CashReward = 1421,
		Enemies = {
			{ Enemy = "Sporeborn_Sporeling", Count = 8, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Sporeborn_MyceliumSkitter", Count = 6, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Sporeborn_PollenStalker", Count = 4, DelayBetweenSpawns = 0.87 },
		},
	},
	[314] = {
		CashReward = 1512,
		Enemies = {
			{ Enemy = "Sporeborn_Sporeling", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Sporeborn_MyceliumSkitter", Count = 7, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Sporeborn_PollenStalker", Count = 5, DelayBetweenSpawns = 0.87 },
		},
	},
	[315] = {
		CashReward = 1604,
		UnlocksStartingWave = 310,
		Enemies = {
			{ Enemy = "Sporeborn_Sporeling", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Sporeborn_MyceliumSkitter", Count = 7, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Sporeborn_PollenStalker", Count = 5, DelayBetweenSpawns = 0.87 },
		},
	},
	[316] = {
		CashReward = 1695,
		Enemies = {
			{ Enemy = "Sporeborn_MyceliumSkitter", Count = 8, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Sporeborn_PollenStalker", Count = 6, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Sporeborn_BloomBrute", Count = 4, DelayBetweenSpawns = 0.73 },
		},
	},
	[317] = {
		CashReward = 1786,
		Enemies = {
			{ Enemy = "Sporeborn_MyceliumSkitter", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Sporeborn_PollenStalker", Count = 7, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Sporeborn_BloomBrute", Count = 5, DelayBetweenSpawns = 0.73 },
		},
	},
	[318] = {
		CashReward = 1878,
		Enemies = {
			{ Enemy = "Sporeborn_MyceliumSkitter", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Sporeborn_PollenStalker", Count = 7, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Sporeborn_BloomBrute", Count = 5, DelayBetweenSpawns = 0.73 },
		},
	},
	[319] = {
		CashReward = 1969,
		Enemies = {
			{ Enemy = "Sporeborn_MyceliumSkitter", Count = 10, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Sporeborn_PollenStalker", Count = 8, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Sporeborn_BloomBrute", Count = 6, DelayBetweenSpawns = 0.73 },
		},
	},
	[320] = {
		CashReward = 2060,
		UnlocksStartingWave = 315,
		Enemies = {
			{ Enemy = "Sporeborn_MyceliumSkitter", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Sporeborn_PollenStalker", Count = 9, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Sporeborn_BloomBrute", Count = 7, DelayBetweenSpawns = 0.73 },
		},
	},
	[321] = {
		CashReward = 2151,
		Enemies = {
			{ Enemy = "Sporeborn_PollenStalker", Count = 9, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Sporeborn_BloomBrute", Count = 7, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Sporeborn_FungalLeviathan", Count = 5, DelayBetweenSpawns = 0.59 },
		},
	},
	[322] = {
		CashReward = 2243,
		Enemies = {
			{ Enemy = "Sporeborn_PollenStalker", Count = 10, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Sporeborn_BloomBrute", Count = 8, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Sporeborn_FungalLeviathan", Count = 6, DelayBetweenSpawns = 0.59 },
		},
	},
	[323] = {
		CashReward = 2334,
		Enemies = {
			{ Enemy = "Sporeborn_PollenStalker", Count = 10, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Sporeborn_BloomBrute", Count = 8, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Sporeborn_FungalLeviathan", Count = 6, DelayBetweenSpawns = 0.59 },
		},
	},
	[324] = {
		CashReward = 2425,
		Enemies = {
			{ Enemy = "Sporeborn_PollenStalker", Count = 11, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Sporeborn_BloomBrute", Count = 9, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Sporeborn_FungalLeviathan", Count = 7, DelayBetweenSpawns = 0.59 },
		},
	},
	[325] = {
		CashReward = 2516,
		IsBossWave = true,
		UnlocksStartingWave = 320,
		Enemies = {
			{ Enemy = "Sporeborn_TheWorldrootMind", Count = 1, DelayBetweenSpawns = 3 },
			{ Enemy = "Sporeborn_FungalLeviathan", Count = 3, DelayBetweenSpawns = 1.5 },
		},
	},
	[326] = {
		CashReward = 2608,
		Enemies = {
			{ Enemy = "Xenobeast_GlasswingHunter", Count = 2, DelayBetweenSpawns = 1.15 },
		},
	},
	[327] = {
		CashReward = 2699,
		Enemies = {
			{ Enemy = "Xenobeast_GlasswingHunter", Count = 3, DelayBetweenSpawns = 1.15 },
		},
	},
	[328] = {
		CashReward = 2790,
		Enemies = {
			{ Enemy = "Xenobeast_GlasswingHunter", Count = 3, DelayBetweenSpawns = 1.15 },
		},
	},
	[329] = {
		CashReward = 2881,
		Enemies = {
			{ Enemy = "Xenobeast_GlasswingHunter", Count = 4, DelayBetweenSpawns = 1.15 },
		},
	},
	[330] = {
		CashReward = 2973,
		UnlocksStartingWave = 325,
		Enemies = {
			{ Enemy = "Xenobeast_GlasswingHunter", Count = 5, DelayBetweenSpawns = 1.15 },
		},
	},
	[331] = {
		CashReward = 3064,
		Enemies = {
			{ Enemy = "Xenobeast_GlasswingHunter", Count = 5, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Xenobeast_RazorbackGrazer", Count = 3, DelayBetweenSpawns = 1.01 },
		},
	},
	[332] = {
		CashReward = 3155,
		Enemies = {
			{ Enemy = "Xenobeast_GlasswingHunter", Count = 6, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Xenobeast_RazorbackGrazer", Count = 4, DelayBetweenSpawns = 1.01 },
		},
	},
	[333] = {
		CashReward = 3247,
		Enemies = {
			{ Enemy = "Xenobeast_GlasswingHunter", Count = 7, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Xenobeast_RazorbackGrazer", Count = 5, DelayBetweenSpawns = 1.01 },
		},
	},
	[334] = {
		CashReward = 3338,
		Enemies = {
			{ Enemy = "Xenobeast_GlasswingHunter", Count = 7, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Xenobeast_RazorbackGrazer", Count = 5, DelayBetweenSpawns = 1.01 },
		},
	},
	[335] = {
		CashReward = 3429,
		UnlocksStartingWave = 330,
		Enemies = {
			{ Enemy = "Xenobeast_GlasswingHunter", Count = 8, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Xenobeast_RazorbackGrazer", Count = 6, DelayBetweenSpawns = 1.01 },
		},
	},
	[336] = {
		CashReward = 3520,
		Enemies = {
			{ Enemy = "Xenobeast_GlasswingHunter", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Xenobeast_RazorbackGrazer", Count = 7, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Xenobeast_PhasePouncer", Count = 5, DelayBetweenSpawns = 0.87 },
		},
	},
	[337] = {
		CashReward = 3612,
		Enemies = {
			{ Enemy = "Xenobeast_GlasswingHunter", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Xenobeast_RazorbackGrazer", Count = 7, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Xenobeast_PhasePouncer", Count = 5, DelayBetweenSpawns = 0.87 },
		},
	},
	[338] = {
		CashReward = 3703,
		Enemies = {
			{ Enemy = "Xenobeast_GlasswingHunter", Count = 10, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Xenobeast_RazorbackGrazer", Count = 8, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Xenobeast_PhasePouncer", Count = 6, DelayBetweenSpawns = 0.87 },
		},
	},
	[339] = {
		CashReward = 3794,
		Enemies = {
			{ Enemy = "Xenobeast_GlasswingHunter", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Xenobeast_RazorbackGrazer", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Xenobeast_PhasePouncer", Count = 7, DelayBetweenSpawns = 0.87 },
		},
	},
	[340] = {
		CashReward = 3885,
		UnlocksStartingWave = 335,
		Enemies = {
			{ Enemy = "Xenobeast_GlasswingHunter", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Xenobeast_RazorbackGrazer", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Xenobeast_PhasePouncer", Count = 7, DelayBetweenSpawns = 0.87 },
		},
	},
	[341] = {
		CashReward = 3977,
		Enemies = {
			{ Enemy = "Xenobeast_RazorbackGrazer", Count = 10, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Xenobeast_PhasePouncer", Count = 8, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Xenobeast_VoidmawPredator", Count = 6, DelayBetweenSpawns = 0.73 },
		},
	},
	[342] = {
		CashReward = 4068,
		Enemies = {
			{ Enemy = "Xenobeast_RazorbackGrazer", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Xenobeast_PhasePouncer", Count = 9, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Xenobeast_VoidmawPredator", Count = 7, DelayBetweenSpawns = 0.73 },
		},
	},
	[343] = {
		CashReward = 4159,
		Enemies = {
			{ Enemy = "Xenobeast_RazorbackGrazer", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Xenobeast_PhasePouncer", Count = 9, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Xenobeast_VoidmawPredator", Count = 7, DelayBetweenSpawns = 0.73 },
		},
	},
	[344] = {
		CashReward = 4251,
		Enemies = {
			{ Enemy = "Xenobeast_RazorbackGrazer", Count = 12, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Xenobeast_PhasePouncer", Count = 10, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Xenobeast_VoidmawPredator", Count = 8, DelayBetweenSpawns = 0.73 },
		},
	},
	[345] = {
		CashReward = 4342,
		UnlocksStartingWave = 340,
		Enemies = {
			{ Enemy = "Xenobeast_RazorbackGrazer", Count = 13, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Xenobeast_PhasePouncer", Count = 11, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Xenobeast_VoidmawPredator", Count = 9, DelayBetweenSpawns = 0.73 },
		},
	},
	[346] = {
		CashReward = 4433,
		Enemies = {
			{ Enemy = "Xenobeast_PhasePouncer", Count = 11, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Xenobeast_VoidmawPredator", Count = 9, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Xenobeast_TitanBroodbeast", Count = 7, DelayBetweenSpawns = 0.59 },
		},
	},
	[347] = {
		CashReward = 4524,
		Enemies = {
			{ Enemy = "Xenobeast_PhasePouncer", Count = 12, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Xenobeast_VoidmawPredator", Count = 10, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Xenobeast_TitanBroodbeast", Count = 8, DelayBetweenSpawns = 0.59 },
		},
	},
	[348] = {
		CashReward = 4616,
		Enemies = {
			{ Enemy = "Xenobeast_PhasePouncer", Count = 12, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Xenobeast_VoidmawPredator", Count = 10, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Xenobeast_TitanBroodbeast", Count = 8, DelayBetweenSpawns = 0.59 },
		},
	},
	[349] = {
		CashReward = 4707,
		Enemies = {
			{ Enemy = "Xenobeast_PhasePouncer", Count = 13, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Xenobeast_VoidmawPredator", Count = 11, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Xenobeast_TitanBroodbeast", Count = 9, DelayBetweenSpawns = 0.59 },
		},
	},
	[350] = {
		CashReward = 4798,
		IsBossWave = true,
		UnlocksStartingWave = 345,
		Enemies = {
			{ Enemy = "Xenobeast_AlphaBeyondtheStars", Count = 1, DelayBetweenSpawns = 3 },
			{ Enemy = "Xenobeast_TitanBroodbeast", Count = 4, DelayBetweenSpawns = 1.5 },
		},
	},
	[351] = {
		CashReward = 4889,
		Enemies = {
			{ Enemy = "AncientRuin_RelicDrone", Count = 4, DelayBetweenSpawns = 1.15 },
		},
	},
	[352] = {
		CashReward = 4981,
		Enemies = {
			{ Enemy = "AncientRuin_RelicDrone", Count = 5, DelayBetweenSpawns = 1.15 },
		},
	},
	[353] = {
		CashReward = 5072,
		Enemies = {
			{ Enemy = "AncientRuin_RelicDrone", Count = 5, DelayBetweenSpawns = 1.15 },
		},
	},
	[354] = {
		CashReward = 5163,
		Enemies = {
			{ Enemy = "AncientRuin_RelicDrone", Count = 6, DelayBetweenSpawns = 1.15 },
		},
	},
	[355] = {
		CashReward = 5254,
		UnlocksStartingWave = 350,
		Enemies = {
			{ Enemy = "AncientRuin_RelicDrone", Count = 7, DelayBetweenSpawns = 1.15 },
		},
	},
	[356] = {
		CashReward = 5346,
		Enemies = {
			{ Enemy = "AncientRuin_RelicDrone", Count = 7, DelayBetweenSpawns = 1.15 },
			{ Enemy = "AncientRuin_GlyphKeeper", Count = 5, DelayBetweenSpawns = 1.01 },
		},
	},
	[357] = {
		CashReward = 5437,
		Enemies = {
			{ Enemy = "AncientRuin_RelicDrone", Count = 8, DelayBetweenSpawns = 1.15 },
			{ Enemy = "AncientRuin_GlyphKeeper", Count = 6, DelayBetweenSpawns = 1.01 },
		},
	},
	[358] = {
		CashReward = 5528,
		Enemies = {
			{ Enemy = "AncientRuin_RelicDrone", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "AncientRuin_GlyphKeeper", Count = 7, DelayBetweenSpawns = 1.01 },
		},
	},
	[359] = {
		CashReward = 5620,
		Enemies = {
			{ Enemy = "AncientRuin_RelicDrone", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "AncientRuin_GlyphKeeper", Count = 7, DelayBetweenSpawns = 1.01 },
		},
	},
	[360] = {
		CashReward = 5711,
		UnlocksStartingWave = 355,
		Enemies = {
			{ Enemy = "AncientRuin_RelicDrone", Count = 10, DelayBetweenSpawns = 1.15 },
			{ Enemy = "AncientRuin_GlyphKeeper", Count = 8, DelayBetweenSpawns = 1.01 },
		},
	},
	[361] = {
		CashReward = 5802,
		Enemies = {
			{ Enemy = "AncientRuin_RelicDrone", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "AncientRuin_GlyphKeeper", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "AncientRuin_ObeliskWalker", Count = 7, DelayBetweenSpawns = 0.87 },
		},
	},
	[362] = {
		CashReward = 5893,
		Enemies = {
			{ Enemy = "AncientRuin_RelicDrone", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "AncientRuin_GlyphKeeper", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "AncientRuin_ObeliskWalker", Count = 7, DelayBetweenSpawns = 0.87 },
		},
	},
	[363] = {
		CashReward = 5985,
		Enemies = {
			{ Enemy = "AncientRuin_RelicDrone", Count = 12, DelayBetweenSpawns = 1.15 },
			{ Enemy = "AncientRuin_GlyphKeeper", Count = 10, DelayBetweenSpawns = 1.01 },
			{ Enemy = "AncientRuin_ObeliskWalker", Count = 8, DelayBetweenSpawns = 0.87 },
		},
	},
	[364] = {
		CashReward = 6076,
		Enemies = {
			{ Enemy = "AncientRuin_RelicDrone", Count = 13, DelayBetweenSpawns = 1.15 },
			{ Enemy = "AncientRuin_GlyphKeeper", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "AncientRuin_ObeliskWalker", Count = 9, DelayBetweenSpawns = 0.87 },
		},
	},
	[365] = {
		CashReward = 6167,
		UnlocksStartingWave = 360,
		Enemies = {
			{ Enemy = "AncientRuin_RelicDrone", Count = 13, DelayBetweenSpawns = 1.15 },
			{ Enemy = "AncientRuin_GlyphKeeper", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "AncientRuin_ObeliskWalker", Count = 9, DelayBetweenSpawns = 0.87 },
		},
	},
	[366] = {
		CashReward = 6258,
		Enemies = {
			{ Enemy = "AncientRuin_GlyphKeeper", Count = 12, DelayBetweenSpawns = 1.01 },
			{ Enemy = "AncientRuin_ObeliskWalker", Count = 10, DelayBetweenSpawns = 0.87 },
			{ Enemy = "AncientRuin_TempleSentinel", Count = 8, DelayBetweenSpawns = 0.73 },
		},
	},
	[367] = {
		CashReward = 6350,
		Enemies = {
			{ Enemy = "AncientRuin_GlyphKeeper", Count = 13, DelayBetweenSpawns = 1.01 },
			{ Enemy = "AncientRuin_ObeliskWalker", Count = 11, DelayBetweenSpawns = 0.87 },
			{ Enemy = "AncientRuin_TempleSentinel", Count = 9, DelayBetweenSpawns = 0.73 },
		},
	},
	[368] = {
		CashReward = 6441,
		Enemies = {
			{ Enemy = "AncientRuin_GlyphKeeper", Count = 13, DelayBetweenSpawns = 1.01 },
			{ Enemy = "AncientRuin_ObeliskWalker", Count = 11, DelayBetweenSpawns = 0.87 },
			{ Enemy = "AncientRuin_TempleSentinel", Count = 9, DelayBetweenSpawns = 0.73 },
		},
	},
	[369] = {
		CashReward = 6532,
		Enemies = {
			{ Enemy = "AncientRuin_GlyphKeeper", Count = 14, DelayBetweenSpawns = 1.01 },
			{ Enemy = "AncientRuin_ObeliskWalker", Count = 12, DelayBetweenSpawns = 0.87 },
			{ Enemy = "AncientRuin_TempleSentinel", Count = 10, DelayBetweenSpawns = 0.73 },
		},
	},
	[370] = {
		CashReward = 6624,
		UnlocksStartingWave = 365,
		Enemies = {
			{ Enemy = "AncientRuin_GlyphKeeper", Count = 15, DelayBetweenSpawns = 1.01 },
			{ Enemy = "AncientRuin_ObeliskWalker", Count = 13, DelayBetweenSpawns = 0.87 },
			{ Enemy = "AncientRuin_TempleSentinel", Count = 11, DelayBetweenSpawns = 0.73 },
		},
	},
	[371] = {
		CashReward = 6715,
		Enemies = {
			{ Enemy = "AncientRuin_ObeliskWalker", Count = 13, DelayBetweenSpawns = 0.87 },
			{ Enemy = "AncientRuin_TempleSentinel", Count = 11, DelayBetweenSpawns = 0.73 },
			{ Enemy = "AncientRuin_RuinColossus", Count = 9, DelayBetweenSpawns = 0.59 },
		},
	},
	[372] = {
		CashReward = 6806,
		Enemies = {
			{ Enemy = "AncientRuin_ObeliskWalker", Count = 14, DelayBetweenSpawns = 0.87 },
			{ Enemy = "AncientRuin_TempleSentinel", Count = 12, DelayBetweenSpawns = 0.73 },
			{ Enemy = "AncientRuin_RuinColossus", Count = 10, DelayBetweenSpawns = 0.59 },
		},
	},
	[373] = {
		CashReward = 6897,
		Enemies = {
			{ Enemy = "AncientRuin_ObeliskWalker", Count = 14, DelayBetweenSpawns = 0.87 },
			{ Enemy = "AncientRuin_TempleSentinel", Count = 12, DelayBetweenSpawns = 0.73 },
			{ Enemy = "AncientRuin_RuinColossus", Count = 10, DelayBetweenSpawns = 0.59 },
		},
	},
	[374] = {
		CashReward = 6989,
		Enemies = {
			{ Enemy = "AncientRuin_ObeliskWalker", Count = 15, DelayBetweenSpawns = 0.87 },
			{ Enemy = "AncientRuin_TempleSentinel", Count = 13, DelayBetweenSpawns = 0.73 },
			{ Enemy = "AncientRuin_RuinColossus", Count = 11, DelayBetweenSpawns = 0.59 },
		},
	},
	[375] = {
		CashReward = 7080,
		IsBossWave = true,
		UnlocksStartingWave = 370,
		Enemies = {
			{ Enemy = "AncientRuin_OracleoftheLostOrbit", Count = 1, DelayBetweenSpawns = 3 },
			{ Enemy = "AncientRuin_RuinColossus", Count = 5, DelayBetweenSpawns = 1.5 },
		},
	},
	[376] = {
		CashReward = 7171,
		Enemies = {
			{ Enemy = "Starhive_HiveLarva", Count = 6, DelayBetweenSpawns = 1.15 },
		},
	},
	[377] = {
		CashReward = 7262,
		Enemies = {
			{ Enemy = "Starhive_HiveLarva", Count = 7, DelayBetweenSpawns = 1.15 },
		},
	},
	[378] = {
		CashReward = 7354,
		Enemies = {
			{ Enemy = "Starhive_HiveLarva", Count = 7, DelayBetweenSpawns = 1.15 },
		},
	},
	[379] = {
		CashReward = 7445,
		Enemies = {
			{ Enemy = "Starhive_HiveLarva", Count = 8, DelayBetweenSpawns = 1.15 },
		},
	},
	[380] = {
		CashReward = 7536,
		UnlocksStartingWave = 375,
		Enemies = {
			{ Enemy = "Starhive_HiveLarva", Count = 9, DelayBetweenSpawns = 1.15 },
		},
	},
	[381] = {
		CashReward = 7627,
		Enemies = {
			{ Enemy = "Starhive_HiveLarva", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Starhive_ChitinSoldier", Count = 7, DelayBetweenSpawns = 1.01 },
		},
	},
	[382] = {
		CashReward = 7719,
		Enemies = {
			{ Enemy = "Starhive_HiveLarva", Count = 10, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Starhive_ChitinSoldier", Count = 8, DelayBetweenSpawns = 1.01 },
		},
	},
	[383] = {
		CashReward = 7810,
		Enemies = {
			{ Enemy = "Starhive_HiveLarva", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Starhive_ChitinSoldier", Count = 9, DelayBetweenSpawns = 1.01 },
		},
	},
	[384] = {
		CashReward = 7901,
		Enemies = {
			{ Enemy = "Starhive_HiveLarva", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Starhive_ChitinSoldier", Count = 9, DelayBetweenSpawns = 1.01 },
		},
	},
	[385] = {
		CashReward = 7993,
		UnlocksStartingWave = 380,
		Enemies = {
			{ Enemy = "Starhive_HiveLarva", Count = 12, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Starhive_ChitinSoldier", Count = 10, DelayBetweenSpawns = 1.01 },
		},
	},
	[386] = {
		CashReward = 8084,
		Enemies = {
			{ Enemy = "Starhive_HiveLarva", Count = 13, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Starhive_ChitinSoldier", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Starhive_PlasmaWeaver", Count = 9, DelayBetweenSpawns = 0.87 },
		},
	},
	[387] = {
		CashReward = 8175,
		Enemies = {
			{ Enemy = "Starhive_HiveLarva", Count = 13, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Starhive_ChitinSoldier", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Starhive_PlasmaWeaver", Count = 9, DelayBetweenSpawns = 0.87 },
		},
	},
	[388] = {
		CashReward = 8266,
		Enemies = {
			{ Enemy = "Starhive_HiveLarva", Count = 14, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Starhive_ChitinSoldier", Count = 12, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Starhive_PlasmaWeaver", Count = 10, DelayBetweenSpawns = 0.87 },
		},
	},
	[389] = {
		CashReward = 8358,
		Enemies = {
			{ Enemy = "Starhive_HiveLarva", Count = 15, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Starhive_ChitinSoldier", Count = 13, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Starhive_PlasmaWeaver", Count = 11, DelayBetweenSpawns = 0.87 },
		},
	},
	[390] = {
		CashReward = 8449,
		UnlocksStartingWave = 385,
		Enemies = {
			{ Enemy = "Starhive_HiveLarva", Count = 15, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Starhive_ChitinSoldier", Count = 13, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Starhive_PlasmaWeaver", Count = 11, DelayBetweenSpawns = 0.87 },
		},
	},
	[391] = {
		CashReward = 8540,
		Enemies = {
			{ Enemy = "Starhive_ChitinSoldier", Count = 14, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Starhive_PlasmaWeaver", Count = 12, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Starhive_BroodPraetorian", Count = 10, DelayBetweenSpawns = 0.73 },
		},
	},
	[392] = {
		CashReward = 8631,
		Enemies = {
			{ Enemy = "Starhive_ChitinSoldier", Count = 15, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Starhive_PlasmaWeaver", Count = 13, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Starhive_BroodPraetorian", Count = 11, DelayBetweenSpawns = 0.73 },
		},
	},
	[393] = {
		CashReward = 8723,
		Enemies = {
			{ Enemy = "Starhive_ChitinSoldier", Count = 15, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Starhive_PlasmaWeaver", Count = 13, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Starhive_BroodPraetorian", Count = 11, DelayBetweenSpawns = 0.73 },
		},
	},
	[394] = {
		CashReward = 8814,
		Enemies = {
			{ Enemy = "Starhive_ChitinSoldier", Count = 16, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Starhive_PlasmaWeaver", Count = 14, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Starhive_BroodPraetorian", Count = 12, DelayBetweenSpawns = 0.73 },
		},
	},
	[395] = {
		CashReward = 8905,
		UnlocksStartingWave = 390,
		Enemies = {
			{ Enemy = "Starhive_ChitinSoldier", Count = 17, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Starhive_PlasmaWeaver", Count = 15, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Starhive_BroodPraetorian", Count = 13, DelayBetweenSpawns = 0.73 },
		},
	},
	[396] = {
		CashReward = 8996,
		Enemies = {
			{ Enemy = "Starhive_PlasmaWeaver", Count = 15, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Starhive_BroodPraetorian", Count = 13, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Starhive_StarhiveDevourer", Count = 11, DelayBetweenSpawns = 0.59 },
		},
	},
	[397] = {
		CashReward = 9088,
		Enemies = {
			{ Enemy = "Starhive_PlasmaWeaver", Count = 16, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Starhive_BroodPraetorian", Count = 14, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Starhive_StarhiveDevourer", Count = 12, DelayBetweenSpawns = 0.59 },
		},
	},
	[398] = {
		CashReward = 9179,
		Enemies = {
			{ Enemy = "Starhive_PlasmaWeaver", Count = 16, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Starhive_BroodPraetorian", Count = 14, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Starhive_StarhiveDevourer", Count = 12, DelayBetweenSpawns = 0.59 },
		},
	},
	[399] = {
		CashReward = 9270,
		Enemies = {
			{ Enemy = "Starhive_PlasmaWeaver", Count = 17, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Starhive_BroodPraetorian", Count = 15, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Starhive_StarhiveDevourer", Count = 13, DelayBetweenSpawns = 0.59 },
		},
	},
	[400] = {
		CashReward = 9362,
		IsBossWave = true,
		UnlocksStartingWave = 395,
		Enemies = {
			{ Enemy = "Starhive_TheCelestialBroodmother", Count = 1, DelayBetweenSpawns = 3 },
			{ Enemy = "Starhive_StarhiveDevourer", Count = 6, DelayBetweenSpawns = 1.5 },
		},
	},
}

return WaveConfigurations
