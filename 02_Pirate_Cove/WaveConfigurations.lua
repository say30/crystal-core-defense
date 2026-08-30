--!strict
-- Pirate Cove: explicit waves 101-200.
local WaveConfigurations = {
	[101] = {
		CashReward = 61,
		Enemies = {
			{ Enemy = "Deckhand_BarnacleDeckhand", Count = 1, DelayBetweenSpawns = 1.15 },
		},
	},
	[102] = {
		CashReward = 78,
		Enemies = {
			{ Enemy = "Deckhand_BarnacleDeckhand", Count = 1, DelayBetweenSpawns = 1.15 },
		},
	},
	[103] = {
		CashReward = 96,
		Enemies = {
			{ Enemy = "Deckhand_BarnacleDeckhand", Count = 1, DelayBetweenSpawns = 1.15 },
		},
	},
	[104] = {
		CashReward = 113,
		Enemies = {
			{ Enemy = "Deckhand_BarnacleDeckhand", Count = 2, DelayBetweenSpawns = 1.15 },
		},
	},
	[105] = {
		CashReward = 130,
		UnlocksStartingWave = 101,
		Enemies = {
			{ Enemy = "Deckhand_BarnacleDeckhand", Count = 3, DelayBetweenSpawns = 1.15 },
		},
	},
	[106] = {
		CashReward = 147,
		Enemies = {
			{ Enemy = "Deckhand_BarnacleDeckhand", Count = 3, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Deckhand_CutlassCorsair", Count = 1, DelayBetweenSpawns = 1.01 },
		},
	},
	[107] = {
		CashReward = 164,
		Enemies = {
			{ Enemy = "Deckhand_BarnacleDeckhand", Count = 4, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Deckhand_CutlassCorsair", Count = 2, DelayBetweenSpawns = 1.01 },
		},
	},
	[108] = {
		CashReward = 181,
		Enemies = {
			{ Enemy = "Deckhand_BarnacleDeckhand", Count = 5, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Deckhand_CutlassCorsair", Count = 3, DelayBetweenSpawns = 1.01 },
		},
	},
	[109] = {
		CashReward = 198,
		Enemies = {
			{ Enemy = "Deckhand_BarnacleDeckhand", Count = 5, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Deckhand_CutlassCorsair", Count = 3, DelayBetweenSpawns = 1.01 },
		},
	},
	[110] = {
		CashReward = 216,
		UnlocksStartingWave = 105,
		Enemies = {
			{ Enemy = "Deckhand_BarnacleDeckhand", Count = 6, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Deckhand_CutlassCorsair", Count = 4, DelayBetweenSpawns = 1.01 },
		},
	},
	[111] = {
		CashReward = 233,
		Enemies = {
			{ Enemy = "Deckhand_BarnacleDeckhand", Count = 7, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Deckhand_CutlassCorsair", Count = 5, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Deckhand_PowderRunner", Count = 3, DelayBetweenSpawns = 0.87 },
		},
	},
	[112] = {
		CashReward = 250,
		Enemies = {
			{ Enemy = "Deckhand_BarnacleDeckhand", Count = 7, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Deckhand_CutlassCorsair", Count = 5, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Deckhand_PowderRunner", Count = 3, DelayBetweenSpawns = 0.87 },
		},
	},
	[113] = {
		CashReward = 267,
		Enemies = {
			{ Enemy = "Deckhand_BarnacleDeckhand", Count = 8, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Deckhand_CutlassCorsair", Count = 6, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Deckhand_PowderRunner", Count = 4, DelayBetweenSpawns = 0.87 },
		},
	},
	[114] = {
		CashReward = 284,
		Enemies = {
			{ Enemy = "Deckhand_BarnacleDeckhand", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Deckhand_CutlassCorsair", Count = 7, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Deckhand_PowderRunner", Count = 5, DelayBetweenSpawns = 0.87 },
		},
	},
	[115] = {
		CashReward = 301,
		UnlocksStartingWave = 110,
		Enemies = {
			{ Enemy = "Deckhand_BarnacleDeckhand", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Deckhand_CutlassCorsair", Count = 7, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Deckhand_PowderRunner", Count = 5, DelayBetweenSpawns = 0.87 },
		},
	},
	[116] = {
		CashReward = 318,
		Enemies = {
			{ Enemy = "Deckhand_CutlassCorsair", Count = 8, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Deckhand_PowderRunner", Count = 6, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Deckhand_ReefMarauder", Count = 4, DelayBetweenSpawns = 0.73 },
		},
	},
	[117] = {
		CashReward = 336,
		Enemies = {
			{ Enemy = "Deckhand_CutlassCorsair", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Deckhand_PowderRunner", Count = 7, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Deckhand_ReefMarauder", Count = 5, DelayBetweenSpawns = 0.73 },
		},
	},
	[118] = {
		CashReward = 353,
		Enemies = {
			{ Enemy = "Deckhand_CutlassCorsair", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Deckhand_PowderRunner", Count = 7, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Deckhand_ReefMarauder", Count = 5, DelayBetweenSpawns = 0.73 },
		},
	},
	[119] = {
		CashReward = 370,
		Enemies = {
			{ Enemy = "Deckhand_CutlassCorsair", Count = 10, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Deckhand_PowderRunner", Count = 8, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Deckhand_ReefMarauder", Count = 6, DelayBetweenSpawns = 0.73 },
		},
	},
	[120] = {
		CashReward = 387,
		UnlocksStartingWave = 115,
		Enemies = {
			{ Enemy = "Deckhand_CutlassCorsair", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Deckhand_PowderRunner", Count = 9, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Deckhand_ReefMarauder", Count = 7, DelayBetweenSpawns = 0.73 },
		},
	},
	[121] = {
		CashReward = 404,
		Enemies = {
			{ Enemy = "Deckhand_PowderRunner", Count = 9, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Deckhand_ReefMarauder", Count = 7, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Deckhand_IronhookBruiser", Count = 5, DelayBetweenSpawns = 0.59 },
		},
	},
	[122] = {
		CashReward = 421,
		Enemies = {
			{ Enemy = "Deckhand_PowderRunner", Count = 10, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Deckhand_ReefMarauder", Count = 8, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Deckhand_IronhookBruiser", Count = 6, DelayBetweenSpawns = 0.59 },
		},
	},
	[123] = {
		CashReward = 438,
		Enemies = {
			{ Enemy = "Deckhand_PowderRunner", Count = 10, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Deckhand_ReefMarauder", Count = 8, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Deckhand_IronhookBruiser", Count = 6, DelayBetweenSpawns = 0.59 },
		},
	},
	[124] = {
		CashReward = 456,
		Enemies = {
			{ Enemy = "Deckhand_PowderRunner", Count = 11, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Deckhand_ReefMarauder", Count = 9, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Deckhand_IronhookBruiser", Count = 7, DelayBetweenSpawns = 0.59 },
		},
	},
	[125] = {
		CashReward = 473,
		IsBossWave = true,
		UnlocksStartingWave = 120,
		Enemies = {
			{ Enemy = "Deckhand_CaptainBlacktide", Count = 1, DelayBetweenSpawns = 3 },
			{ Enemy = "Deckhand_IronhookBruiser", Count = 3, DelayBetweenSpawns = 1.5 },
		},
	},
	[126] = {
		CashReward = 490,
		Enemies = {
			{ Enemy = "Deepwater_TideCrawler", Count = 2, DelayBetweenSpawns = 1.15 },
		},
	},
	[127] = {
		CashReward = 507,
		Enemies = {
			{ Enemy = "Deepwater_TideCrawler", Count = 3, DelayBetweenSpawns = 1.15 },
		},
	},
	[128] = {
		CashReward = 524,
		Enemies = {
			{ Enemy = "Deepwater_TideCrawler", Count = 3, DelayBetweenSpawns = 1.15 },
		},
	},
	[129] = {
		CashReward = 541,
		Enemies = {
			{ Enemy = "Deepwater_TideCrawler", Count = 4, DelayBetweenSpawns = 1.15 },
		},
	},
	[130] = {
		CashReward = 558,
		UnlocksStartingWave = 125,
		Enemies = {
			{ Enemy = "Deepwater_TideCrawler", Count = 5, DelayBetweenSpawns = 1.15 },
		},
	},
	[131] = {
		CashReward = 576,
		Enemies = {
			{ Enemy = "Deepwater_TideCrawler", Count = 5, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Deepwater_BrineSpecter", Count = 3, DelayBetweenSpawns = 1.01 },
		},
	},
	[132] = {
		CashReward = 593,
		Enemies = {
			{ Enemy = "Deepwater_TideCrawler", Count = 6, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Deepwater_BrineSpecter", Count = 4, DelayBetweenSpawns = 1.01 },
		},
	},
	[133] = {
		CashReward = 610,
		Enemies = {
			{ Enemy = "Deepwater_TideCrawler", Count = 7, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Deepwater_BrineSpecter", Count = 5, DelayBetweenSpawns = 1.01 },
		},
	},
	[134] = {
		CashReward = 627,
		Enemies = {
			{ Enemy = "Deepwater_TideCrawler", Count = 7, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Deepwater_BrineSpecter", Count = 5, DelayBetweenSpawns = 1.01 },
		},
	},
	[135] = {
		CashReward = 644,
		UnlocksStartingWave = 130,
		Enemies = {
			{ Enemy = "Deepwater_TideCrawler", Count = 8, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Deepwater_BrineSpecter", Count = 6, DelayBetweenSpawns = 1.01 },
		},
	},
	[136] = {
		CashReward = 661,
		Enemies = {
			{ Enemy = "Deepwater_TideCrawler", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Deepwater_BrineSpecter", Count = 7, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Deepwater_HarpoonFiend", Count = 5, DelayBetweenSpawns = 0.87 },
		},
	},
	[137] = {
		CashReward = 679,
		Enemies = {
			{ Enemy = "Deepwater_TideCrawler", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Deepwater_BrineSpecter", Count = 7, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Deepwater_HarpoonFiend", Count = 5, DelayBetweenSpawns = 0.87 },
		},
	},
	[138] = {
		CashReward = 696,
		Enemies = {
			{ Enemy = "Deepwater_TideCrawler", Count = 10, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Deepwater_BrineSpecter", Count = 8, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Deepwater_HarpoonFiend", Count = 6, DelayBetweenSpawns = 0.87 },
		},
	},
	[139] = {
		CashReward = 713,
		Enemies = {
			{ Enemy = "Deepwater_TideCrawler", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Deepwater_BrineSpecter", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Deepwater_HarpoonFiend", Count = 7, DelayBetweenSpawns = 0.87 },
		},
	},
	[140] = {
		CashReward = 730,
		UnlocksStartingWave = 135,
		Enemies = {
			{ Enemy = "Deepwater_TideCrawler", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Deepwater_BrineSpecter", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Deepwater_HarpoonFiend", Count = 7, DelayBetweenSpawns = 0.87 },
		},
	},
	[141] = {
		CashReward = 747,
		Enemies = {
			{ Enemy = "Deepwater_BrineSpecter", Count = 10, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Deepwater_HarpoonFiend", Count = 8, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Deepwater_AbyssDiver", Count = 6, DelayBetweenSpawns = 0.73 },
		},
	},
	[142] = {
		CashReward = 764,
		Enemies = {
			{ Enemy = "Deepwater_BrineSpecter", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Deepwater_HarpoonFiend", Count = 9, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Deepwater_AbyssDiver", Count = 7, DelayBetweenSpawns = 0.73 },
		},
	},
	[143] = {
		CashReward = 781,
		Enemies = {
			{ Enemy = "Deepwater_BrineSpecter", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Deepwater_HarpoonFiend", Count = 9, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Deepwater_AbyssDiver", Count = 7, DelayBetweenSpawns = 0.73 },
		},
	},
	[144] = {
		CashReward = 799,
		Enemies = {
			{ Enemy = "Deepwater_BrineSpecter", Count = 12, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Deepwater_HarpoonFiend", Count = 10, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Deepwater_AbyssDiver", Count = 8, DelayBetweenSpawns = 0.73 },
		},
	},
	[145] = {
		CashReward = 816,
		UnlocksStartingWave = 140,
		Enemies = {
			{ Enemy = "Deepwater_BrineSpecter", Count = 13, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Deepwater_HarpoonFiend", Count = 11, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Deepwater_AbyssDiver", Count = 9, DelayBetweenSpawns = 0.73 },
		},
	},
	[146] = {
		CashReward = 833,
		Enemies = {
			{ Enemy = "Deepwater_HarpoonFiend", Count = 11, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Deepwater_AbyssDiver", Count = 9, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Deepwater_KrakenSpawn", Count = 7, DelayBetweenSpawns = 0.59 },
		},
	},
	[147] = {
		CashReward = 850,
		Enemies = {
			{ Enemy = "Deepwater_HarpoonFiend", Count = 12, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Deepwater_AbyssDiver", Count = 10, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Deepwater_KrakenSpawn", Count = 8, DelayBetweenSpawns = 0.59 },
		},
	},
	[148] = {
		CashReward = 867,
		Enemies = {
			{ Enemy = "Deepwater_HarpoonFiend", Count = 12, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Deepwater_AbyssDiver", Count = 10, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Deepwater_KrakenSpawn", Count = 8, DelayBetweenSpawns = 0.59 },
		},
	},
	[149] = {
		CashReward = 884,
		Enemies = {
			{ Enemy = "Deepwater_HarpoonFiend", Count = 13, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Deepwater_AbyssDiver", Count = 11, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Deepwater_KrakenSpawn", Count = 9, DelayBetweenSpawns = 0.59 },
		},
	},
	[150] = {
		CashReward = 901,
		IsBossWave = true,
		UnlocksStartingWave = 145,
		Enemies = {
			{ Enemy = "Deepwater_TheDrownedAdmiral", Count = 1, DelayBetweenSpawns = 3 },
			{ Enemy = "Deepwater_KrakenSpawn", Count = 4, DelayBetweenSpawns = 1.5 },
		},
	},
	[151] = {
		CashReward = 919,
		Enemies = {
			{ Enemy = "Treasure_CoinboundRogue", Count = 4, DelayBetweenSpawns = 1.15 },
		},
	},
	[152] = {
		CashReward = 936,
		Enemies = {
			{ Enemy = "Treasure_CoinboundRogue", Count = 5, DelayBetweenSpawns = 1.15 },
		},
	},
	[153] = {
		CashReward = 953,
		Enemies = {
			{ Enemy = "Treasure_CoinboundRogue", Count = 5, DelayBetweenSpawns = 1.15 },
		},
	},
	[154] = {
		CashReward = 970,
		Enemies = {
			{ Enemy = "Treasure_CoinboundRogue", Count = 6, DelayBetweenSpawns = 1.15 },
		},
	},
	[155] = {
		CashReward = 987,
		UnlocksStartingWave = 150,
		Enemies = {
			{ Enemy = "Treasure_CoinboundRogue", Count = 7, DelayBetweenSpawns = 1.15 },
		},
	},
	[156] = {
		CashReward = 1004,
		Enemies = {
			{ Enemy = "Treasure_CoinboundRogue", Count = 7, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Treasure_GildedGunner", Count = 5, DelayBetweenSpawns = 1.01 },
		},
	},
	[157] = {
		CashReward = 1021,
		Enemies = {
			{ Enemy = "Treasure_CoinboundRogue", Count = 8, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Treasure_GildedGunner", Count = 6, DelayBetweenSpawns = 1.01 },
		},
	},
	[158] = {
		CashReward = 1039,
		Enemies = {
			{ Enemy = "Treasure_CoinboundRogue", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Treasure_GildedGunner", Count = 7, DelayBetweenSpawns = 1.01 },
		},
	},
	[159] = {
		CashReward = 1056,
		Enemies = {
			{ Enemy = "Treasure_CoinboundRogue", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Treasure_GildedGunner", Count = 7, DelayBetweenSpawns = 1.01 },
		},
	},
	[160] = {
		CashReward = 1073,
		UnlocksStartingWave = 155,
		Enemies = {
			{ Enemy = "Treasure_CoinboundRogue", Count = 10, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Treasure_GildedGunner", Count = 8, DelayBetweenSpawns = 1.01 },
		},
	},
	[161] = {
		CashReward = 1090,
		Enemies = {
			{ Enemy = "Treasure_CoinboundRogue", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Treasure_GildedGunner", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Treasure_RubyRaider", Count = 7, DelayBetweenSpawns = 0.87 },
		},
	},
	[162] = {
		CashReward = 1107,
		Enemies = {
			{ Enemy = "Treasure_CoinboundRogue", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Treasure_GildedGunner", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Treasure_RubyRaider", Count = 7, DelayBetweenSpawns = 0.87 },
		},
	},
	[163] = {
		CashReward = 1124,
		Enemies = {
			{ Enemy = "Treasure_CoinboundRogue", Count = 12, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Treasure_GildedGunner", Count = 10, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Treasure_RubyRaider", Count = 8, DelayBetweenSpawns = 0.87 },
		},
	},
	[164] = {
		CashReward = 1141,
		Enemies = {
			{ Enemy = "Treasure_CoinboundRogue", Count = 13, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Treasure_GildedGunner", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Treasure_RubyRaider", Count = 9, DelayBetweenSpawns = 0.87 },
		},
	},
	[165] = {
		CashReward = 1159,
		UnlocksStartingWave = 160,
		Enemies = {
			{ Enemy = "Treasure_CoinboundRogue", Count = 13, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Treasure_GildedGunner", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Treasure_RubyRaider", Count = 9, DelayBetweenSpawns = 0.87 },
		},
	},
	[166] = {
		CashReward = 1176,
		Enemies = {
			{ Enemy = "Treasure_GildedGunner", Count = 12, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Treasure_RubyRaider", Count = 10, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Treasure_CursedQuartermaster", Count = 8, DelayBetweenSpawns = 0.73 },
		},
	},
	[167] = {
		CashReward = 1193,
		Enemies = {
			{ Enemy = "Treasure_GildedGunner", Count = 13, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Treasure_RubyRaider", Count = 11, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Treasure_CursedQuartermaster", Count = 9, DelayBetweenSpawns = 0.73 },
		},
	},
	[168] = {
		CashReward = 1210,
		Enemies = {
			{ Enemy = "Treasure_GildedGunner", Count = 13, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Treasure_RubyRaider", Count = 11, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Treasure_CursedQuartermaster", Count = 9, DelayBetweenSpawns = 0.73 },
		},
	},
	[169] = {
		CashReward = 1227,
		Enemies = {
			{ Enemy = "Treasure_GildedGunner", Count = 14, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Treasure_RubyRaider", Count = 12, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Treasure_CursedQuartermaster", Count = 10, DelayBetweenSpawns = 0.73 },
		},
	},
	[170] = {
		CashReward = 1244,
		UnlocksStartingWave = 165,
		Enemies = {
			{ Enemy = "Treasure_GildedGunner", Count = 15, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Treasure_RubyRaider", Count = 13, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Treasure_CursedQuartermaster", Count = 11, DelayBetweenSpawns = 0.73 },
		},
	},
	[171] = {
		CashReward = 1261,
		Enemies = {
			{ Enemy = "Treasure_RubyRaider", Count = 13, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Treasure_CursedQuartermaster", Count = 11, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Treasure_VaultBreaker", Count = 9, DelayBetweenSpawns = 0.59 },
		},
	},
	[172] = {
		CashReward = 1279,
		Enemies = {
			{ Enemy = "Treasure_RubyRaider", Count = 14, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Treasure_CursedQuartermaster", Count = 12, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Treasure_VaultBreaker", Count = 10, DelayBetweenSpawns = 0.59 },
		},
	},
	[173] = {
		CashReward = 1296,
		Enemies = {
			{ Enemy = "Treasure_RubyRaider", Count = 14, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Treasure_CursedQuartermaster", Count = 12, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Treasure_VaultBreaker", Count = 10, DelayBetweenSpawns = 0.59 },
		},
	},
	[174] = {
		CashReward = 1313,
		Enemies = {
			{ Enemy = "Treasure_RubyRaider", Count = 15, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Treasure_CursedQuartermaster", Count = 13, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Treasure_VaultBreaker", Count = 11, DelayBetweenSpawns = 0.59 },
		},
	},
	[175] = {
		CashReward = 1330,
		IsBossWave = true,
		UnlocksStartingWave = 170,
		Enemies = {
			{ Enemy = "Treasure_KingoftheSunkenHoard", Count = 1, DelayBetweenSpawns = 3 },
			{ Enemy = "Treasure_VaultBreaker", Count = 5, DelayBetweenSpawns = 1.5 },
		},
	},
	[176] = {
		CashReward = 1347,
		Enemies = {
			{ Enemy = "Stormfleet_GaleScout", Count = 6, DelayBetweenSpawns = 1.15 },
		},
	},
	[177] = {
		CashReward = 1364,
		Enemies = {
			{ Enemy = "Stormfleet_GaleScout", Count = 7, DelayBetweenSpawns = 1.15 },
		},
	},
	[178] = {
		CashReward = 1382,
		Enemies = {
			{ Enemy = "Stormfleet_GaleScout", Count = 7, DelayBetweenSpawns = 1.15 },
		},
	},
	[179] = {
		CashReward = 1399,
		Enemies = {
			{ Enemy = "Stormfleet_GaleScout", Count = 8, DelayBetweenSpawns = 1.15 },
		},
	},
	[180] = {
		CashReward = 1416,
		UnlocksStartingWave = 175,
		Enemies = {
			{ Enemy = "Stormfleet_GaleScout", Count = 9, DelayBetweenSpawns = 1.15 },
		},
	},
	[181] = {
		CashReward = 1433,
		Enemies = {
			{ Enemy = "Stormfleet_GaleScout", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Stormfleet_ThunderBuccaneer", Count = 7, DelayBetweenSpawns = 1.01 },
		},
	},
	[182] = {
		CashReward = 1450,
		Enemies = {
			{ Enemy = "Stormfleet_GaleScout", Count = 10, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Stormfleet_ThunderBuccaneer", Count = 8, DelayBetweenSpawns = 1.01 },
		},
	},
	[183] = {
		CashReward = 1467,
		Enemies = {
			{ Enemy = "Stormfleet_GaleScout", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Stormfleet_ThunderBuccaneer", Count = 9, DelayBetweenSpawns = 1.01 },
		},
	},
	[184] = {
		CashReward = 1484,
		Enemies = {
			{ Enemy = "Stormfleet_GaleScout", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Stormfleet_ThunderBuccaneer", Count = 9, DelayBetweenSpawns = 1.01 },
		},
	},
	[185] = {
		CashReward = 1502,
		UnlocksStartingWave = 180,
		Enemies = {
			{ Enemy = "Stormfleet_GaleScout", Count = 12, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Stormfleet_ThunderBuccaneer", Count = 10, DelayBetweenSpawns = 1.01 },
		},
	},
	[186] = {
		CashReward = 1519,
		Enemies = {
			{ Enemy = "Stormfleet_GaleScout", Count = 13, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Stormfleet_ThunderBuccaneer", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Stormfleet_TempestCannoneer", Count = 9, DelayBetweenSpawns = 0.87 },
		},
	},
	[187] = {
		CashReward = 1536,
		Enemies = {
			{ Enemy = "Stormfleet_GaleScout", Count = 13, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Stormfleet_ThunderBuccaneer", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Stormfleet_TempestCannoneer", Count = 9, DelayBetweenSpawns = 0.87 },
		},
	},
	[188] = {
		CashReward = 1553,
		Enemies = {
			{ Enemy = "Stormfleet_GaleScout", Count = 14, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Stormfleet_ThunderBuccaneer", Count = 12, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Stormfleet_TempestCannoneer", Count = 10, DelayBetweenSpawns = 0.87 },
		},
	},
	[189] = {
		CashReward = 1570,
		Enemies = {
			{ Enemy = "Stormfleet_GaleScout", Count = 15, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Stormfleet_ThunderBuccaneer", Count = 13, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Stormfleet_TempestCannoneer", Count = 11, DelayBetweenSpawns = 0.87 },
		},
	},
	[190] = {
		CashReward = 1587,
		UnlocksStartingWave = 185,
		Enemies = {
			{ Enemy = "Stormfleet_GaleScout", Count = 15, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Stormfleet_ThunderBuccaneer", Count = 13, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Stormfleet_TempestCannoneer", Count = 11, DelayBetweenSpawns = 0.87 },
		},
	},
	[191] = {
		CashReward = 1604,
		Enemies = {
			{ Enemy = "Stormfleet_ThunderBuccaneer", Count = 14, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Stormfleet_TempestCannoneer", Count = 12, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Stormfleet_MaelstromReaver", Count = 10, DelayBetweenSpawns = 0.73 },
		},
	},
	[192] = {
		CashReward = 1622,
		Enemies = {
			{ Enemy = "Stormfleet_ThunderBuccaneer", Count = 15, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Stormfleet_TempestCannoneer", Count = 13, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Stormfleet_MaelstromReaver", Count = 11, DelayBetweenSpawns = 0.73 },
		},
	},
	[193] = {
		CashReward = 1639,
		Enemies = {
			{ Enemy = "Stormfleet_ThunderBuccaneer", Count = 15, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Stormfleet_TempestCannoneer", Count = 13, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Stormfleet_MaelstromReaver", Count = 11, DelayBetweenSpawns = 0.73 },
		},
	},
	[194] = {
		CashReward = 1656,
		Enemies = {
			{ Enemy = "Stormfleet_ThunderBuccaneer", Count = 16, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Stormfleet_TempestCannoneer", Count = 14, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Stormfleet_MaelstromReaver", Count = 12, DelayBetweenSpawns = 0.73 },
		},
	},
	[195] = {
		CashReward = 1673,
		UnlocksStartingWave = 190,
		Enemies = {
			{ Enemy = "Stormfleet_ThunderBuccaneer", Count = 17, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Stormfleet_TempestCannoneer", Count = 15, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Stormfleet_MaelstromReaver", Count = 13, DelayBetweenSpawns = 0.73 },
		},
	},
	[196] = {
		CashReward = 1690,
		Enemies = {
			{ Enemy = "Stormfleet_TempestCannoneer", Count = 15, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Stormfleet_MaelstromReaver", Count = 13, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Stormfleet_StormshipJuggernaut", Count = 11, DelayBetweenSpawns = 0.59 },
		},
	},
	[197] = {
		CashReward = 1707,
		Enemies = {
			{ Enemy = "Stormfleet_TempestCannoneer", Count = 16, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Stormfleet_MaelstromReaver", Count = 14, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Stormfleet_StormshipJuggernaut", Count = 12, DelayBetweenSpawns = 0.59 },
		},
	},
	[198] = {
		CashReward = 1724,
		Enemies = {
			{ Enemy = "Stormfleet_TempestCannoneer", Count = 16, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Stormfleet_MaelstromReaver", Count = 14, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Stormfleet_StormshipJuggernaut", Count = 12, DelayBetweenSpawns = 0.59 },
		},
	},
	[199] = {
		CashReward = 1742,
		Enemies = {
			{ Enemy = "Stormfleet_TempestCannoneer", Count = 17, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Stormfleet_MaelstromReaver", Count = 15, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Stormfleet_StormshipJuggernaut", Count = 13, DelayBetweenSpawns = 0.59 },
		},
	},
	[200] = {
		CashReward = 1759,
		IsBossWave = true,
		UnlocksStartingWave = 195,
		Enemies = {
			{ Enemy = "Stormfleet_EmpressoftheEndlessGale", Count = 1, DelayBetweenSpawns = 3 },
			{ Enemy = "Stormfleet_StormshipJuggernaut", Count = 6, DelayBetweenSpawns = 1.5 },
		},
	},
}

return WaveConfigurations
