--!strict
-- Candy Kingdom: explicit waves 201-300.
local WaveConfigurations = {
	[201] = {
		CashReward = 141,
		Enemies = {
			{ Enemy = "Sugarling_SugarSprinkle", Count = 1, DelayBetweenSpawns = 1.15 },
		},
	},
	[202] = {
		CashReward = 181,
		Enemies = {
			{ Enemy = "Sugarling_SugarSprinkle", Count = 1, DelayBetweenSpawns = 1.15 },
		},
	},
	[203] = {
		CashReward = 221,
		Enemies = {
			{ Enemy = "Sugarling_SugarSprinkle", Count = 1, DelayBetweenSpawns = 1.15 },
		},
	},
	[204] = {
		CashReward = 260,
		Enemies = {
			{ Enemy = "Sugarling_SugarSprinkle", Count = 2, DelayBetweenSpawns = 1.15 },
		},
	},
	[205] = {
		CashReward = 300,
		UnlocksStartingWave = 201,
		Enemies = {
			{ Enemy = "Sugarling_SugarSprinkle", Count = 3, DelayBetweenSpawns = 1.15 },
		},
	},
	[206] = {
		CashReward = 339,
		Enemies = {
			{ Enemy = "Sugarling_SugarSprinkle", Count = 3, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Sugarling_GumdropHopper", Count = 1, DelayBetweenSpawns = 1.01 },
		},
	},
	[207] = {
		CashReward = 379,
		Enemies = {
			{ Enemy = "Sugarling_SugarSprinkle", Count = 4, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Sugarling_GumdropHopper", Count = 2, DelayBetweenSpawns = 1.01 },
		},
	},
	[208] = {
		CashReward = 419,
		Enemies = {
			{ Enemy = "Sugarling_SugarSprinkle", Count = 5, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Sugarling_GumdropHopper", Count = 3, DelayBetweenSpawns = 1.01 },
		},
	},
	[209] = {
		CashReward = 458,
		Enemies = {
			{ Enemy = "Sugarling_SugarSprinkle", Count = 5, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Sugarling_GumdropHopper", Count = 3, DelayBetweenSpawns = 1.01 },
		},
	},
	[210] = {
		CashReward = 498,
		UnlocksStartingWave = 205,
		Enemies = {
			{ Enemy = "Sugarling_SugarSprinkle", Count = 6, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Sugarling_GumdropHopper", Count = 4, DelayBetweenSpawns = 1.01 },
		},
	},
	[211] = {
		CashReward = 537,
		Enemies = {
			{ Enemy = "Sugarling_SugarSprinkle", Count = 7, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Sugarling_GumdropHopper", Count = 5, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Sugarling_WaferWalker", Count = 3, DelayBetweenSpawns = 0.87 },
		},
	},
	[212] = {
		CashReward = 577,
		Enemies = {
			{ Enemy = "Sugarling_SugarSprinkle", Count = 7, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Sugarling_GumdropHopper", Count = 5, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Sugarling_WaferWalker", Count = 3, DelayBetweenSpawns = 0.87 },
		},
	},
	[213] = {
		CashReward = 617,
		Enemies = {
			{ Enemy = "Sugarling_SugarSprinkle", Count = 8, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Sugarling_GumdropHopper", Count = 6, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Sugarling_WaferWalker", Count = 4, DelayBetweenSpawns = 0.87 },
		},
	},
	[214] = {
		CashReward = 656,
		Enemies = {
			{ Enemy = "Sugarling_SugarSprinkle", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Sugarling_GumdropHopper", Count = 7, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Sugarling_WaferWalker", Count = 5, DelayBetweenSpawns = 0.87 },
		},
	},
	[215] = {
		CashReward = 696,
		UnlocksStartingWave = 210,
		Enemies = {
			{ Enemy = "Sugarling_SugarSprinkle", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Sugarling_GumdropHopper", Count = 7, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Sugarling_WaferWalker", Count = 5, DelayBetweenSpawns = 0.87 },
		},
	},
	[216] = {
		CashReward = 735,
		Enemies = {
			{ Enemy = "Sugarling_GumdropHopper", Count = 8, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Sugarling_WaferWalker", Count = 6, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Sugarling_CandyCaneGuard", Count = 4, DelayBetweenSpawns = 0.73 },
		},
	},
	[217] = {
		CashReward = 775,
		Enemies = {
			{ Enemy = "Sugarling_GumdropHopper", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Sugarling_WaferWalker", Count = 7, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Sugarling_CandyCaneGuard", Count = 5, DelayBetweenSpawns = 0.73 },
		},
	},
	[218] = {
		CashReward = 815,
		Enemies = {
			{ Enemy = "Sugarling_GumdropHopper", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Sugarling_WaferWalker", Count = 7, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Sugarling_CandyCaneGuard", Count = 5, DelayBetweenSpawns = 0.73 },
		},
	},
	[219] = {
		CashReward = 854,
		Enemies = {
			{ Enemy = "Sugarling_GumdropHopper", Count = 10, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Sugarling_WaferWalker", Count = 8, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Sugarling_CandyCaneGuard", Count = 6, DelayBetweenSpawns = 0.73 },
		},
	},
	[220] = {
		CashReward = 894,
		UnlocksStartingWave = 215,
		Enemies = {
			{ Enemy = "Sugarling_GumdropHopper", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Sugarling_WaferWalker", Count = 9, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Sugarling_CandyCaneGuard", Count = 7, DelayBetweenSpawns = 0.73 },
		},
	},
	[221] = {
		CashReward = 933,
		Enemies = {
			{ Enemy = "Sugarling_WaferWalker", Count = 9, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Sugarling_CandyCaneGuard", Count = 7, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Sugarling_NougatCrusher", Count = 5, DelayBetweenSpawns = 0.59 },
		},
	},
	[222] = {
		CashReward = 973,
		Enemies = {
			{ Enemy = "Sugarling_WaferWalker", Count = 10, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Sugarling_CandyCaneGuard", Count = 8, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Sugarling_NougatCrusher", Count = 6, DelayBetweenSpawns = 0.59 },
		},
	},
	[223] = {
		CashReward = 1013,
		Enemies = {
			{ Enemy = "Sugarling_WaferWalker", Count = 10, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Sugarling_CandyCaneGuard", Count = 8, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Sugarling_NougatCrusher", Count = 6, DelayBetweenSpawns = 0.59 },
		},
	},
	[224] = {
		CashReward = 1052,
		Enemies = {
			{ Enemy = "Sugarling_WaferWalker", Count = 11, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Sugarling_CandyCaneGuard", Count = 9, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Sugarling_NougatCrusher", Count = 7, DelayBetweenSpawns = 0.59 },
		},
	},
	[225] = {
		CashReward = 1092,
		IsBossWave = true,
		UnlocksStartingWave = 220,
		Enemies = {
			{ Enemy = "Sugarling_BaronBonbon", Count = 1, DelayBetweenSpawns = 3 },
			{ Enemy = "Sugarling_NougatCrusher", Count = 3, DelayBetweenSpawns = 1.5 },
		},
	},
	[226] = {
		CashReward = 1131,
		Enemies = {
			{ Enemy = "Chocolate_CocoaDrip", Count = 2, DelayBetweenSpawns = 1.15 },
		},
	},
	[227] = {
		CashReward = 1171,
		Enemies = {
			{ Enemy = "Chocolate_CocoaDrip", Count = 3, DelayBetweenSpawns = 1.15 },
		},
	},
	[228] = {
		CashReward = 1211,
		Enemies = {
			{ Enemy = "Chocolate_CocoaDrip", Count = 3, DelayBetweenSpawns = 1.15 },
		},
	},
	[229] = {
		CashReward = 1250,
		Enemies = {
			{ Enemy = "Chocolate_CocoaDrip", Count = 4, DelayBetweenSpawns = 1.15 },
		},
	},
	[230] = {
		CashReward = 1290,
		UnlocksStartingWave = 225,
		Enemies = {
			{ Enemy = "Chocolate_CocoaDrip", Count = 5, DelayBetweenSpawns = 1.15 },
		},
	},
	[231] = {
		CashReward = 1329,
		Enemies = {
			{ Enemy = "Chocolate_CocoaDrip", Count = 5, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Chocolate_TruffleTumbler", Count = 3, DelayBetweenSpawns = 1.01 },
		},
	},
	[232] = {
		CashReward = 1369,
		Enemies = {
			{ Enemy = "Chocolate_CocoaDrip", Count = 6, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Chocolate_TruffleTumbler", Count = 4, DelayBetweenSpawns = 1.01 },
		},
	},
	[233] = {
		CashReward = 1409,
		Enemies = {
			{ Enemy = "Chocolate_CocoaDrip", Count = 7, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Chocolate_TruffleTumbler", Count = 5, DelayBetweenSpawns = 1.01 },
		},
	},
	[234] = {
		CashReward = 1448,
		Enemies = {
			{ Enemy = "Chocolate_CocoaDrip", Count = 7, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Chocolate_TruffleTumbler", Count = 5, DelayBetweenSpawns = 1.01 },
		},
	},
	[235] = {
		CashReward = 1488,
		UnlocksStartingWave = 230,
		Enemies = {
			{ Enemy = "Chocolate_CocoaDrip", Count = 8, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Chocolate_TruffleTumbler", Count = 6, DelayBetweenSpawns = 1.01 },
		},
	},
	[236] = {
		CashReward = 1527,
		Enemies = {
			{ Enemy = "Chocolate_CocoaDrip", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Chocolate_TruffleTumbler", Count = 7, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Chocolate_FudgeKnight", Count = 5, DelayBetweenSpawns = 0.87 },
		},
	},
	[237] = {
		CashReward = 1567,
		Enemies = {
			{ Enemy = "Chocolate_CocoaDrip", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Chocolate_TruffleTumbler", Count = 7, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Chocolate_FudgeKnight", Count = 5, DelayBetweenSpawns = 0.87 },
		},
	},
	[238] = {
		CashReward = 1607,
		Enemies = {
			{ Enemy = "Chocolate_CocoaDrip", Count = 10, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Chocolate_TruffleTumbler", Count = 8, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Chocolate_FudgeKnight", Count = 6, DelayBetweenSpawns = 0.87 },
		},
	},
	[239] = {
		CashReward = 1646,
		Enemies = {
			{ Enemy = "Chocolate_CocoaDrip", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Chocolate_TruffleTumbler", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Chocolate_FudgeKnight", Count = 7, DelayBetweenSpawns = 0.87 },
		},
	},
	[240] = {
		CashReward = 1686,
		UnlocksStartingWave = 235,
		Enemies = {
			{ Enemy = "Chocolate_CocoaDrip", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Chocolate_TruffleTumbler", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Chocolate_FudgeKnight", Count = 7, DelayBetweenSpawns = 0.87 },
		},
	},
	[241] = {
		CashReward = 1725,
		Enemies = {
			{ Enemy = "Chocolate_TruffleTumbler", Count = 10, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Chocolate_FudgeKnight", Count = 8, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Chocolate_DarkCocoaBeast", Count = 6, DelayBetweenSpawns = 0.73 },
		},
	},
	[242] = {
		CashReward = 1765,
		Enemies = {
			{ Enemy = "Chocolate_TruffleTumbler", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Chocolate_FudgeKnight", Count = 9, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Chocolate_DarkCocoaBeast", Count = 7, DelayBetweenSpawns = 0.73 },
		},
	},
	[243] = {
		CashReward = 1805,
		Enemies = {
			{ Enemy = "Chocolate_TruffleTumbler", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Chocolate_FudgeKnight", Count = 9, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Chocolate_DarkCocoaBeast", Count = 7, DelayBetweenSpawns = 0.73 },
		},
	},
	[244] = {
		CashReward = 1844,
		Enemies = {
			{ Enemy = "Chocolate_TruffleTumbler", Count = 12, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Chocolate_FudgeKnight", Count = 10, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Chocolate_DarkCocoaBeast", Count = 8, DelayBetweenSpawns = 0.73 },
		},
	},
	[245] = {
		CashReward = 1884,
		UnlocksStartingWave = 240,
		Enemies = {
			{ Enemy = "Chocolate_TruffleTumbler", Count = 13, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Chocolate_FudgeKnight", Count = 11, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Chocolate_DarkCocoaBeast", Count = 9, DelayBetweenSpawns = 0.73 },
		},
	},
	[246] = {
		CashReward = 1923,
		Enemies = {
			{ Enemy = "Chocolate_FudgeKnight", Count = 11, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Chocolate_DarkCocoaBeast", Count = 9, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Chocolate_ChocolateGolem", Count = 7, DelayBetweenSpawns = 0.59 },
		},
	},
	[247] = {
		CashReward = 1963,
		Enemies = {
			{ Enemy = "Chocolate_FudgeKnight", Count = 12, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Chocolate_DarkCocoaBeast", Count = 10, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Chocolate_ChocolateGolem", Count = 8, DelayBetweenSpawns = 0.59 },
		},
	},
	[248] = {
		CashReward = 2003,
		Enemies = {
			{ Enemy = "Chocolate_FudgeKnight", Count = 12, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Chocolate_DarkCocoaBeast", Count = 10, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Chocolate_ChocolateGolem", Count = 8, DelayBetweenSpawns = 0.59 },
		},
	},
	[249] = {
		CashReward = 2042,
		Enemies = {
			{ Enemy = "Chocolate_FudgeKnight", Count = 13, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Chocolate_DarkCocoaBeast", Count = 11, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Chocolate_ChocolateGolem", Count = 9, DelayBetweenSpawns = 0.59 },
		},
	},
	[250] = {
		CashReward = 2082,
		IsBossWave = true,
		UnlocksStartingWave = 245,
		Enemies = {
			{ Enemy = "Chocolate_DuchessGanache", Count = 1, DelayBetweenSpawns = 3 },
			{ Enemy = "Chocolate_ChocolateGolem", Count = 4, DelayBetweenSpawns = 1.5 },
		},
	},
	[251] = {
		CashReward = 2121,
		Enemies = {
			{ Enemy = "Sour_SourBlob", Count = 4, DelayBetweenSpawns = 1.15 },
		},
	},
	[252] = {
		CashReward = 2161,
		Enemies = {
			{ Enemy = "Sour_SourBlob", Count = 5, DelayBetweenSpawns = 1.15 },
		},
	},
	[253] = {
		CashReward = 2201,
		Enemies = {
			{ Enemy = "Sour_SourBlob", Count = 5, DelayBetweenSpawns = 1.15 },
		},
	},
	[254] = {
		CashReward = 2240,
		Enemies = {
			{ Enemy = "Sour_SourBlob", Count = 6, DelayBetweenSpawns = 1.15 },
		},
	},
	[255] = {
		CashReward = 2280,
		UnlocksStartingWave = 250,
		Enemies = {
			{ Enemy = "Sour_SourBlob", Count = 7, DelayBetweenSpawns = 1.15 },
		},
	},
	[256] = {
		CashReward = 2319,
		Enemies = {
			{ Enemy = "Sour_SourBlob", Count = 7, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Sour_CitrusSnapper", Count = 5, DelayBetweenSpawns = 1.01 },
		},
	},
	[257] = {
		CashReward = 2359,
		Enemies = {
			{ Enemy = "Sour_SourBlob", Count = 8, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Sour_CitrusSnapper", Count = 6, DelayBetweenSpawns = 1.01 },
		},
	},
	[258] = {
		CashReward = 2399,
		Enemies = {
			{ Enemy = "Sour_SourBlob", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Sour_CitrusSnapper", Count = 7, DelayBetweenSpawns = 1.01 },
		},
	},
	[259] = {
		CashReward = 2438,
		Enemies = {
			{ Enemy = "Sour_SourBlob", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Sour_CitrusSnapper", Count = 7, DelayBetweenSpawns = 1.01 },
		},
	},
	[260] = {
		CashReward = 2478,
		UnlocksStartingWave = 255,
		Enemies = {
			{ Enemy = "Sour_SourBlob", Count = 10, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Sour_CitrusSnapper", Count = 8, DelayBetweenSpawns = 1.01 },
		},
	},
	[261] = {
		CashReward = 2517,
		Enemies = {
			{ Enemy = "Sour_SourBlob", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Sour_CitrusSnapper", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Sour_FizzingFiend", Count = 7, DelayBetweenSpawns = 0.87 },
		},
	},
	[262] = {
		CashReward = 2557,
		Enemies = {
			{ Enemy = "Sour_SourBlob", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Sour_CitrusSnapper", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Sour_FizzingFiend", Count = 7, DelayBetweenSpawns = 0.87 },
		},
	},
	[263] = {
		CashReward = 2596,
		Enemies = {
			{ Enemy = "Sour_SourBlob", Count = 12, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Sour_CitrusSnapper", Count = 10, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Sour_FizzingFiend", Count = 8, DelayBetweenSpawns = 0.87 },
		},
	},
	[264] = {
		CashReward = 2636,
		Enemies = {
			{ Enemy = "Sour_SourBlob", Count = 13, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Sour_CitrusSnapper", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Sour_FizzingFiend", Count = 9, DelayBetweenSpawns = 0.87 },
		},
	},
	[265] = {
		CashReward = 2676,
		UnlocksStartingWave = 260,
		Enemies = {
			{ Enemy = "Sour_SourBlob", Count = 13, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Sour_CitrusSnapper", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Sour_FizzingFiend", Count = 9, DelayBetweenSpawns = 0.87 },
		},
	},
	[266] = {
		CashReward = 2715,
		Enemies = {
			{ Enemy = "Sour_CitrusSnapper", Count = 12, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Sour_FizzingFiend", Count = 10, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Sour_AcidGummy", Count = 8, DelayBetweenSpawns = 0.73 },
		},
	},
	[267] = {
		CashReward = 2755,
		Enemies = {
			{ Enemy = "Sour_CitrusSnapper", Count = 13, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Sour_FizzingFiend", Count = 11, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Sour_AcidGummy", Count = 9, DelayBetweenSpawns = 0.73 },
		},
	},
	[268] = {
		CashReward = 2794,
		Enemies = {
			{ Enemy = "Sour_CitrusSnapper", Count = 13, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Sour_FizzingFiend", Count = 11, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Sour_AcidGummy", Count = 9, DelayBetweenSpawns = 0.73 },
		},
	},
	[269] = {
		CashReward = 2834,
		Enemies = {
			{ Enemy = "Sour_CitrusSnapper", Count = 14, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Sour_FizzingFiend", Count = 12, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Sour_AcidGummy", Count = 10, DelayBetweenSpawns = 0.73 },
		},
	},
	[270] = {
		CashReward = 2874,
		UnlocksStartingWave = 265,
		Enemies = {
			{ Enemy = "Sour_CitrusSnapper", Count = 15, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Sour_FizzingFiend", Count = 13, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Sour_AcidGummy", Count = 11, DelayBetweenSpawns = 0.73 },
		},
	},
	[271] = {
		CashReward = 2913,
		Enemies = {
			{ Enemy = "Sour_FizzingFiend", Count = 13, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Sour_AcidGummy", Count = 11, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Sour_SourjawColossus", Count = 9, DelayBetweenSpawns = 0.59 },
		},
	},
	[272] = {
		CashReward = 2953,
		Enemies = {
			{ Enemy = "Sour_FizzingFiend", Count = 14, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Sour_AcidGummy", Count = 12, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Sour_SourjawColossus", Count = 10, DelayBetweenSpawns = 0.59 },
		},
	},
	[273] = {
		CashReward = 2992,
		Enemies = {
			{ Enemy = "Sour_FizzingFiend", Count = 14, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Sour_AcidGummy", Count = 12, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Sour_SourjawColossus", Count = 10, DelayBetweenSpawns = 0.59 },
		},
	},
	[274] = {
		CashReward = 3032,
		Enemies = {
			{ Enemy = "Sour_FizzingFiend", Count = 15, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Sour_AcidGummy", Count = 13, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Sour_SourjawColossus", Count = 11, DelayBetweenSpawns = 0.59 },
		},
	},
	[275] = {
		CashReward = 3072,
		IsBossWave = true,
		UnlocksStartingWave = 270,
		Enemies = {
			{ Enemy = "Sour_TheTartTyrant", Count = 1, DelayBetweenSpawns = 3 },
			{ Enemy = "Sour_SourjawColossus", Count = 5, DelayBetweenSpawns = 1.5 },
		},
	},
	[276] = {
		CashReward = 3111,
		Enemies = {
			{ Enemy = "RoyalConfection_MarzipanPage", Count = 6, DelayBetweenSpawns = 1.15 },
		},
	},
	[277] = {
		CashReward = 3151,
		Enemies = {
			{ Enemy = "RoyalConfection_MarzipanPage", Count = 7, DelayBetweenSpawns = 1.15 },
		},
	},
	[278] = {
		CashReward = 3190,
		Enemies = {
			{ Enemy = "RoyalConfection_MarzipanPage", Count = 7, DelayBetweenSpawns = 1.15 },
		},
	},
	[279] = {
		CashReward = 3230,
		Enemies = {
			{ Enemy = "RoyalConfection_MarzipanPage", Count = 8, DelayBetweenSpawns = 1.15 },
		},
	},
	[280] = {
		CashReward = 3270,
		UnlocksStartingWave = 275,
		Enemies = {
			{ Enemy = "RoyalConfection_MarzipanPage", Count = 9, DelayBetweenSpawns = 1.15 },
		},
	},
	[281] = {
		CashReward = 3309,
		Enemies = {
			{ Enemy = "RoyalConfection_MarzipanPage", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "RoyalConfection_RoyalJellyGuard", Count = 7, DelayBetweenSpawns = 1.01 },
		},
	},
	[282] = {
		CashReward = 3349,
		Enemies = {
			{ Enemy = "RoyalConfection_MarzipanPage", Count = 10, DelayBetweenSpawns = 1.15 },
			{ Enemy = "RoyalConfection_RoyalJellyGuard", Count = 8, DelayBetweenSpawns = 1.01 },
		},
	},
	[283] = {
		CashReward = 3388,
		Enemies = {
			{ Enemy = "RoyalConfection_MarzipanPage", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "RoyalConfection_RoyalJellyGuard", Count = 9, DelayBetweenSpawns = 1.01 },
		},
	},
	[284] = {
		CashReward = 3428,
		Enemies = {
			{ Enemy = "RoyalConfection_MarzipanPage", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "RoyalConfection_RoyalJellyGuard", Count = 9, DelayBetweenSpawns = 1.01 },
		},
	},
	[285] = {
		CashReward = 3468,
		UnlocksStartingWave = 280,
		Enemies = {
			{ Enemy = "RoyalConfection_MarzipanPage", Count = 12, DelayBetweenSpawns = 1.15 },
			{ Enemy = "RoyalConfection_RoyalJellyGuard", Count = 10, DelayBetweenSpawns = 1.01 },
		},
	},
	[286] = {
		CashReward = 3507,
		Enemies = {
			{ Enemy = "RoyalConfection_MarzipanPage", Count = 13, DelayBetweenSpawns = 1.15 },
			{ Enemy = "RoyalConfection_RoyalJellyGuard", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "RoyalConfection_CaramelCavalier", Count = 9, DelayBetweenSpawns = 0.87 },
		},
	},
	[287] = {
		CashReward = 3547,
		Enemies = {
			{ Enemy = "RoyalConfection_MarzipanPage", Count = 13, DelayBetweenSpawns = 1.15 },
			{ Enemy = "RoyalConfection_RoyalJellyGuard", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "RoyalConfection_CaramelCavalier", Count = 9, DelayBetweenSpawns = 0.87 },
		},
	},
	[288] = {
		CashReward = 3586,
		Enemies = {
			{ Enemy = "RoyalConfection_MarzipanPage", Count = 14, DelayBetweenSpawns = 1.15 },
			{ Enemy = "RoyalConfection_RoyalJellyGuard", Count = 12, DelayBetweenSpawns = 1.01 },
			{ Enemy = "RoyalConfection_CaramelCavalier", Count = 10, DelayBetweenSpawns = 0.87 },
		},
	},
	[289] = {
		CashReward = 3626,
		Enemies = {
			{ Enemy = "RoyalConfection_MarzipanPage", Count = 15, DelayBetweenSpawns = 1.15 },
			{ Enemy = "RoyalConfection_RoyalJellyGuard", Count = 13, DelayBetweenSpawns = 1.01 },
			{ Enemy = "RoyalConfection_CaramelCavalier", Count = 11, DelayBetweenSpawns = 0.87 },
		},
	},
	[290] = {
		CashReward = 3666,
		UnlocksStartingWave = 285,
		Enemies = {
			{ Enemy = "RoyalConfection_MarzipanPage", Count = 15, DelayBetweenSpawns = 1.15 },
			{ Enemy = "RoyalConfection_RoyalJellyGuard", Count = 13, DelayBetweenSpawns = 1.01 },
			{ Enemy = "RoyalConfection_CaramelCavalier", Count = 11, DelayBetweenSpawns = 0.87 },
		},
	},
	[291] = {
		CashReward = 3705,
		Enemies = {
			{ Enemy = "RoyalConfection_RoyalJellyGuard", Count = 14, DelayBetweenSpawns = 1.01 },
			{ Enemy = "RoyalConfection_CaramelCavalier", Count = 12, DelayBetweenSpawns = 0.87 },
			{ Enemy = "RoyalConfection_PralineChampion", Count = 10, DelayBetweenSpawns = 0.73 },
		},
	},
	[292] = {
		CashReward = 3745,
		Enemies = {
			{ Enemy = "RoyalConfection_RoyalJellyGuard", Count = 15, DelayBetweenSpawns = 1.01 },
			{ Enemy = "RoyalConfection_CaramelCavalier", Count = 13, DelayBetweenSpawns = 0.87 },
			{ Enemy = "RoyalConfection_PralineChampion", Count = 11, DelayBetweenSpawns = 0.73 },
		},
	},
	[293] = {
		CashReward = 3784,
		Enemies = {
			{ Enemy = "RoyalConfection_RoyalJellyGuard", Count = 15, DelayBetweenSpawns = 1.01 },
			{ Enemy = "RoyalConfection_CaramelCavalier", Count = 13, DelayBetweenSpawns = 0.87 },
			{ Enemy = "RoyalConfection_PralineChampion", Count = 11, DelayBetweenSpawns = 0.73 },
		},
	},
	[294] = {
		CashReward = 3824,
		Enemies = {
			{ Enemy = "RoyalConfection_RoyalJellyGuard", Count = 16, DelayBetweenSpawns = 1.01 },
			{ Enemy = "RoyalConfection_CaramelCavalier", Count = 14, DelayBetweenSpawns = 0.87 },
			{ Enemy = "RoyalConfection_PralineChampion", Count = 12, DelayBetweenSpawns = 0.73 },
		},
	},
	[295] = {
		CashReward = 3864,
		UnlocksStartingWave = 290,
		Enemies = {
			{ Enemy = "RoyalConfection_RoyalJellyGuard", Count = 17, DelayBetweenSpawns = 1.01 },
			{ Enemy = "RoyalConfection_CaramelCavalier", Count = 15, DelayBetweenSpawns = 0.87 },
			{ Enemy = "RoyalConfection_PralineChampion", Count = 13, DelayBetweenSpawns = 0.73 },
		},
	},
	[296] = {
		CashReward = 3903,
		Enemies = {
			{ Enemy = "RoyalConfection_CaramelCavalier", Count = 15, DelayBetweenSpawns = 0.87 },
			{ Enemy = "RoyalConfection_PralineChampion", Count = 13, DelayBetweenSpawns = 0.73 },
			{ Enemy = "RoyalConfection_FondantTitan", Count = 11, DelayBetweenSpawns = 0.59 },
		},
	},
	[297] = {
		CashReward = 3943,
		Enemies = {
			{ Enemy = "RoyalConfection_CaramelCavalier", Count = 16, DelayBetweenSpawns = 0.87 },
			{ Enemy = "RoyalConfection_PralineChampion", Count = 14, DelayBetweenSpawns = 0.73 },
			{ Enemy = "RoyalConfection_FondantTitan", Count = 12, DelayBetweenSpawns = 0.59 },
		},
	},
	[298] = {
		CashReward = 3982,
		Enemies = {
			{ Enemy = "RoyalConfection_CaramelCavalier", Count = 16, DelayBetweenSpawns = 0.87 },
			{ Enemy = "RoyalConfection_PralineChampion", Count = 14, DelayBetweenSpawns = 0.73 },
			{ Enemy = "RoyalConfection_FondantTitan", Count = 12, DelayBetweenSpawns = 0.59 },
		},
	},
	[299] = {
		CashReward = 4022,
		Enemies = {
			{ Enemy = "RoyalConfection_CaramelCavalier", Count = 17, DelayBetweenSpawns = 0.87 },
			{ Enemy = "RoyalConfection_PralineChampion", Count = 15, DelayBetweenSpawns = 0.73 },
			{ Enemy = "RoyalConfection_FondantTitan", Count = 13, DelayBetweenSpawns = 0.59 },
		},
	},
	[300] = {
		CashReward = 4062,
		IsBossWave = true,
		UnlocksStartingWave = 295,
		Enemies = {
			{ Enemy = "RoyalConfection_EmperorEverlasting", Count = 1, DelayBetweenSpawns = 3 },
			{ Enemy = "RoyalConfection_FondantTitan", Count = 6, DelayBetweenSpawns = 1.5 },
		},
	},
}

return WaveConfigurations
