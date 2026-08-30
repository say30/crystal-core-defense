--!strict
-- Mars Colony: explicit waves 401-500.
local WaveConfigurations = {
	[401] = {
		CashReward = 750,
		Enemies = {
			{ Enemy = "Dustborn_DustSkimmer", Count = 1, DelayBetweenSpawns = 1.15 },
		},
	},
	[402] = {
		CashReward = 960,
		Enemies = {
			{ Enemy = "Dustborn_DustSkimmer", Count = 1, DelayBetweenSpawns = 1.15 },
		},
	},
	[403] = {
		CashReward = 1170,
		Enemies = {
			{ Enemy = "Dustborn_DustSkimmer", Count = 1, DelayBetweenSpawns = 1.15 },
		},
	},
	[404] = {
		CashReward = 1380,
		Enemies = {
			{ Enemy = "Dustborn_DustSkimmer", Count = 2, DelayBetweenSpawns = 1.15 },
		},
	},
	[405] = {
		CashReward = 1590,
		UnlocksStartingWave = 401,
		Enemies = {
			{ Enemy = "Dustborn_DustSkimmer", Count = 3, DelayBetweenSpawns = 1.15 },
		},
	},
	[406] = {
		CashReward = 1800,
		Enemies = {
			{ Enemy = "Dustborn_DustSkimmer", Count = 3, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Dustborn_RedDuneCrawler", Count = 1, DelayBetweenSpawns = 1.01 },
		},
	},
	[407] = {
		CashReward = 2010,
		Enemies = {
			{ Enemy = "Dustborn_DustSkimmer", Count = 4, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Dustborn_RedDuneCrawler", Count = 2, DelayBetweenSpawns = 1.01 },
		},
	},
	[408] = {
		CashReward = 2220,
		Enemies = {
			{ Enemy = "Dustborn_DustSkimmer", Count = 5, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Dustborn_RedDuneCrawler", Count = 3, DelayBetweenSpawns = 1.01 },
		},
	},
	[409] = {
		CashReward = 2430,
		Enemies = {
			{ Enemy = "Dustborn_DustSkimmer", Count = 5, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Dustborn_RedDuneCrawler", Count = 3, DelayBetweenSpawns = 1.01 },
		},
	},
	[410] = {
		CashReward = 2640,
		UnlocksStartingWave = 405,
		Enemies = {
			{ Enemy = "Dustborn_DustSkimmer", Count = 6, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Dustborn_RedDuneCrawler", Count = 4, DelayBetweenSpawns = 1.01 },
		},
	},
	[411] = {
		CashReward = 2850,
		Enemies = {
			{ Enemy = "Dustborn_DustSkimmer", Count = 7, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Dustborn_RedDuneCrawler", Count = 5, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Dustborn_SandglassRaider", Count = 3, DelayBetweenSpawns = 0.87 },
		},
	},
	[412] = {
		CashReward = 3060,
		Enemies = {
			{ Enemy = "Dustborn_DustSkimmer", Count = 7, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Dustborn_RedDuneCrawler", Count = 5, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Dustborn_SandglassRaider", Count = 3, DelayBetweenSpawns = 0.87 },
		},
	},
	[413] = {
		CashReward = 3270,
		Enemies = {
			{ Enemy = "Dustborn_DustSkimmer", Count = 8, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Dustborn_RedDuneCrawler", Count = 6, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Dustborn_SandglassRaider", Count = 4, DelayBetweenSpawns = 0.87 },
		},
	},
	[414] = {
		CashReward = 3480,
		Enemies = {
			{ Enemy = "Dustborn_DustSkimmer", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Dustborn_RedDuneCrawler", Count = 7, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Dustborn_SandglassRaider", Count = 5, DelayBetweenSpawns = 0.87 },
		},
	},
	[415] = {
		CashReward = 3690,
		UnlocksStartingWave = 410,
		Enemies = {
			{ Enemy = "Dustborn_DustSkimmer", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Dustborn_RedDuneCrawler", Count = 7, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Dustborn_SandglassRaider", Count = 5, DelayBetweenSpawns = 0.87 },
		},
	},
	[416] = {
		CashReward = 3900,
		Enemies = {
			{ Enemy = "Dustborn_RedDuneCrawler", Count = 8, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Dustborn_SandglassRaider", Count = 6, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Dustborn_BasaltBrute", Count = 4, DelayBetweenSpawns = 0.73 },
		},
	},
	[417] = {
		CashReward = 4110,
		Enemies = {
			{ Enemy = "Dustborn_RedDuneCrawler", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Dustborn_SandglassRaider", Count = 7, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Dustborn_BasaltBrute", Count = 5, DelayBetweenSpawns = 0.73 },
		},
	},
	[418] = {
		CashReward = 4320,
		Enemies = {
			{ Enemy = "Dustborn_RedDuneCrawler", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Dustborn_SandglassRaider", Count = 7, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Dustborn_BasaltBrute", Count = 5, DelayBetweenSpawns = 0.73 },
		},
	},
	[419] = {
		CashReward = 4530,
		Enemies = {
			{ Enemy = "Dustborn_RedDuneCrawler", Count = 10, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Dustborn_SandglassRaider", Count = 8, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Dustborn_BasaltBrute", Count = 6, DelayBetweenSpawns = 0.73 },
		},
	},
	[420] = {
		CashReward = 4740,
		UnlocksStartingWave = 415,
		Enemies = {
			{ Enemy = "Dustborn_RedDuneCrawler", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Dustborn_SandglassRaider", Count = 9, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Dustborn_BasaltBrute", Count = 7, DelayBetweenSpawns = 0.73 },
		},
	},
	[421] = {
		CashReward = 4950,
		Enemies = {
			{ Enemy = "Dustborn_SandglassRaider", Count = 9, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Dustborn_BasaltBrute", Count = 7, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Dustborn_DuststormGiant", Count = 5, DelayBetweenSpawns = 0.59 },
		},
	},
	[422] = {
		CashReward = 5160,
		Enemies = {
			{ Enemy = "Dustborn_SandglassRaider", Count = 10, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Dustborn_BasaltBrute", Count = 8, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Dustborn_DuststormGiant", Count = 6, DelayBetweenSpawns = 0.59 },
		},
	},
	[423] = {
		CashReward = 5370,
		Enemies = {
			{ Enemy = "Dustborn_SandglassRaider", Count = 10, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Dustborn_BasaltBrute", Count = 8, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Dustborn_DuststormGiant", Count = 6, DelayBetweenSpawns = 0.59 },
		},
	},
	[424] = {
		CashReward = 5580,
		Enemies = {
			{ Enemy = "Dustborn_SandglassRaider", Count = 11, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Dustborn_BasaltBrute", Count = 9, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Dustborn_DuststormGiant", Count = 7, DelayBetweenSpawns = 0.59 },
		},
	},
	[425] = {
		CashReward = 5790,
		IsBossWave = true,
		UnlocksStartingWave = 420,
		Enemies = {
			{ Enemy = "Dustborn_TheCrimsonBurrower", Count = 1, DelayBetweenSpawns = 3 },
			{ Enemy = "Dustborn_DuststormGiant", Count = 3, DelayBetweenSpawns = 1.5 },
		},
	},
	[426] = {
		CashReward = 6000,
		Enemies = {
			{ Enemy = "RogueRover_SurveyDrone", Count = 2, DelayBetweenSpawns = 1.15 },
		},
	},
	[427] = {
		CashReward = 6210,
		Enemies = {
			{ Enemy = "RogueRover_SurveyDrone", Count = 3, DelayBetweenSpawns = 1.15 },
		},
	},
	[428] = {
		CashReward = 6420,
		Enemies = {
			{ Enemy = "RogueRover_SurveyDrone", Count = 3, DelayBetweenSpawns = 1.15 },
		},
	},
	[429] = {
		CashReward = 6630,
		Enemies = {
			{ Enemy = "RogueRover_SurveyDrone", Count = 4, DelayBetweenSpawns = 1.15 },
		},
	},
	[430] = {
		CashReward = 6840,
		UnlocksStartingWave = 425,
		Enemies = {
			{ Enemy = "RogueRover_SurveyDrone", Count = 5, DelayBetweenSpawns = 1.15 },
		},
	},
	[431] = {
		CashReward = 7050,
		Enemies = {
			{ Enemy = "RogueRover_SurveyDrone", Count = 5, DelayBetweenSpawns = 1.15 },
			{ Enemy = "RogueRover_BrokenRover", Count = 3, DelayBetweenSpawns = 1.01 },
		},
	},
	[432] = {
		CashReward = 7260,
		Enemies = {
			{ Enemy = "RogueRover_SurveyDrone", Count = 6, DelayBetweenSpawns = 1.15 },
			{ Enemy = "RogueRover_BrokenRover", Count = 4, DelayBetweenSpawns = 1.01 },
		},
	},
	[433] = {
		CashReward = 7470,
		Enemies = {
			{ Enemy = "RogueRover_SurveyDrone", Count = 7, DelayBetweenSpawns = 1.15 },
			{ Enemy = "RogueRover_BrokenRover", Count = 5, DelayBetweenSpawns = 1.01 },
		},
	},
	[434] = {
		CashReward = 7680,
		Enemies = {
			{ Enemy = "RogueRover_SurveyDrone", Count = 7, DelayBetweenSpawns = 1.15 },
			{ Enemy = "RogueRover_BrokenRover", Count = 5, DelayBetweenSpawns = 1.01 },
		},
	},
	[435] = {
		CashReward = 7890,
		UnlocksStartingWave = 430,
		Enemies = {
			{ Enemy = "RogueRover_SurveyDrone", Count = 8, DelayBetweenSpawns = 1.15 },
			{ Enemy = "RogueRover_BrokenRover", Count = 6, DelayBetweenSpawns = 1.01 },
		},
	},
	[436] = {
		CashReward = 8100,
		Enemies = {
			{ Enemy = "RogueRover_SurveyDrone", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "RogueRover_BrokenRover", Count = 7, DelayBetweenSpawns = 1.01 },
			{ Enemy = "RogueRover_MiningAutomaton", Count = 5, DelayBetweenSpawns = 0.87 },
		},
	},
	[437] = {
		CashReward = 8310,
		Enemies = {
			{ Enemy = "RogueRover_SurveyDrone", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "RogueRover_BrokenRover", Count = 7, DelayBetweenSpawns = 1.01 },
			{ Enemy = "RogueRover_MiningAutomaton", Count = 5, DelayBetweenSpawns = 0.87 },
		},
	},
	[438] = {
		CashReward = 8520,
		Enemies = {
			{ Enemy = "RogueRover_SurveyDrone", Count = 10, DelayBetweenSpawns = 1.15 },
			{ Enemy = "RogueRover_BrokenRover", Count = 8, DelayBetweenSpawns = 1.01 },
			{ Enemy = "RogueRover_MiningAutomaton", Count = 6, DelayBetweenSpawns = 0.87 },
		},
	},
	[439] = {
		CashReward = 8730,
		Enemies = {
			{ Enemy = "RogueRover_SurveyDrone", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "RogueRover_BrokenRover", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "RogueRover_MiningAutomaton", Count = 7, DelayBetweenSpawns = 0.87 },
		},
	},
	[440] = {
		CashReward = 8940,
		UnlocksStartingWave = 435,
		Enemies = {
			{ Enemy = "RogueRover_SurveyDrone", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "RogueRover_BrokenRover", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "RogueRover_MiningAutomaton", Count = 7, DelayBetweenSpawns = 0.87 },
		},
	},
	[441] = {
		CashReward = 9150,
		Enemies = {
			{ Enemy = "RogueRover_BrokenRover", Count = 10, DelayBetweenSpawns = 1.01 },
			{ Enemy = "RogueRover_MiningAutomaton", Count = 8, DelayBetweenSpawns = 0.87 },
			{ Enemy = "RogueRover_SiegeExcavator", Count = 6, DelayBetweenSpawns = 0.73 },
		},
	},
	[442] = {
		CashReward = 9360,
		Enemies = {
			{ Enemy = "RogueRover_BrokenRover", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "RogueRover_MiningAutomaton", Count = 9, DelayBetweenSpawns = 0.87 },
			{ Enemy = "RogueRover_SiegeExcavator", Count = 7, DelayBetweenSpawns = 0.73 },
		},
	},
	[443] = {
		CashReward = 9570,
		Enemies = {
			{ Enemy = "RogueRover_BrokenRover", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "RogueRover_MiningAutomaton", Count = 9, DelayBetweenSpawns = 0.87 },
			{ Enemy = "RogueRover_SiegeExcavator", Count = 7, DelayBetweenSpawns = 0.73 },
		},
	},
	[444] = {
		CashReward = 9780,
		Enemies = {
			{ Enemy = "RogueRover_BrokenRover", Count = 12, DelayBetweenSpawns = 1.01 },
			{ Enemy = "RogueRover_MiningAutomaton", Count = 10, DelayBetweenSpawns = 0.87 },
			{ Enemy = "RogueRover_SiegeExcavator", Count = 8, DelayBetweenSpawns = 0.73 },
		},
	},
	[445] = {
		CashReward = 9990,
		UnlocksStartingWave = 440,
		Enemies = {
			{ Enemy = "RogueRover_BrokenRover", Count = 13, DelayBetweenSpawns = 1.01 },
			{ Enemy = "RogueRover_MiningAutomaton", Count = 11, DelayBetweenSpawns = 0.87 },
			{ Enemy = "RogueRover_SiegeExcavator", Count = 9, DelayBetweenSpawns = 0.73 },
		},
	},
	[446] = {
		CashReward = 10200,
		Enemies = {
			{ Enemy = "RogueRover_MiningAutomaton", Count = 11, DelayBetweenSpawns = 0.87 },
			{ Enemy = "RogueRover_SiegeExcavator", Count = 9, DelayBetweenSpawns = 0.73 },
			{ Enemy = "RogueRover_TerraformWrecker", Count = 7, DelayBetweenSpawns = 0.59 },
		},
	},
	[447] = {
		CashReward = 10410,
		Enemies = {
			{ Enemy = "RogueRover_MiningAutomaton", Count = 12, DelayBetweenSpawns = 0.87 },
			{ Enemy = "RogueRover_SiegeExcavator", Count = 10, DelayBetweenSpawns = 0.73 },
			{ Enemy = "RogueRover_TerraformWrecker", Count = 8, DelayBetweenSpawns = 0.59 },
		},
	},
	[448] = {
		CashReward = 10620,
		Enemies = {
			{ Enemy = "RogueRover_MiningAutomaton", Count = 12, DelayBetweenSpawns = 0.87 },
			{ Enemy = "RogueRover_SiegeExcavator", Count = 10, DelayBetweenSpawns = 0.73 },
			{ Enemy = "RogueRover_TerraformWrecker", Count = 8, DelayBetweenSpawns = 0.59 },
		},
	},
	[449] = {
		CashReward = 10830,
		Enemies = {
			{ Enemy = "RogueRover_MiningAutomaton", Count = 13, DelayBetweenSpawns = 0.87 },
			{ Enemy = "RogueRover_SiegeExcavator", Count = 11, DelayBetweenSpawns = 0.73 },
			{ Enemy = "RogueRover_TerraformWrecker", Count = 9, DelayBetweenSpawns = 0.59 },
		},
	},
	[450] = {
		CashReward = 11040,
		IsBossWave = true,
		UnlocksStartingWave = 445,
		Enemies = {
			{ Enemy = "RogueRover_PrimeDirectiveZero", Count = 1, DelayBetweenSpawns = 3 },
			{ Enemy = "RogueRover_TerraformWrecker", Count = 4, DelayBetweenSpawns = 1.5 },
		},
	},
	[451] = {
		CashReward = 11250,
		Enemies = {
			{ Enemy = "ColonyRenegade_HabitatScavenger", Count = 4, DelayBetweenSpawns = 1.15 },
		},
	},
	[452] = {
		CashReward = 11460,
		Enemies = {
			{ Enemy = "ColonyRenegade_HabitatScavenger", Count = 5, DelayBetweenSpawns = 1.15 },
		},
	},
	[453] = {
		CashReward = 11670,
		Enemies = {
			{ Enemy = "ColonyRenegade_HabitatScavenger", Count = 5, DelayBetweenSpawns = 1.15 },
		},
	},
	[454] = {
		CashReward = 11880,
		Enemies = {
			{ Enemy = "ColonyRenegade_HabitatScavenger", Count = 6, DelayBetweenSpawns = 1.15 },
		},
	},
	[455] = {
		CashReward = 12090,
		UnlocksStartingWave = 450,
		Enemies = {
			{ Enemy = "ColonyRenegade_HabitatScavenger", Count = 7, DelayBetweenSpawns = 1.15 },
		},
	},
	[456] = {
		CashReward = 12300,
		Enemies = {
			{ Enemy = "ColonyRenegade_HabitatScavenger", Count = 7, DelayBetweenSpawns = 1.15 },
			{ Enemy = "ColonyRenegade_OxygenRaider", Count = 5, DelayBetweenSpawns = 1.01 },
		},
	},
	[457] = {
		CashReward = 12510,
		Enemies = {
			{ Enemy = "ColonyRenegade_HabitatScavenger", Count = 8, DelayBetweenSpawns = 1.15 },
			{ Enemy = "ColonyRenegade_OxygenRaider", Count = 6, DelayBetweenSpawns = 1.01 },
		},
	},
	[458] = {
		CashReward = 12720,
		Enemies = {
			{ Enemy = "ColonyRenegade_HabitatScavenger", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "ColonyRenegade_OxygenRaider", Count = 7, DelayBetweenSpawns = 1.01 },
		},
	},
	[459] = {
		CashReward = 12930,
		Enemies = {
			{ Enemy = "ColonyRenegade_HabitatScavenger", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "ColonyRenegade_OxygenRaider", Count = 7, DelayBetweenSpawns = 1.01 },
		},
	},
	[460] = {
		CashReward = 13140,
		UnlocksStartingWave = 455,
		Enemies = {
			{ Enemy = "ColonyRenegade_HabitatScavenger", Count = 10, DelayBetweenSpawns = 1.15 },
			{ Enemy = "ColonyRenegade_OxygenRaider", Count = 8, DelayBetweenSpawns = 1.01 },
		},
	},
	[461] = {
		CashReward = 13350,
		Enemies = {
			{ Enemy = "ColonyRenegade_HabitatScavenger", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "ColonyRenegade_OxygenRaider", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "ColonyRenegade_DomeSaboteur", Count = 7, DelayBetweenSpawns = 0.87 },
		},
	},
	[462] = {
		CashReward = 13560,
		Enemies = {
			{ Enemy = "ColonyRenegade_HabitatScavenger", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "ColonyRenegade_OxygenRaider", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "ColonyRenegade_DomeSaboteur", Count = 7, DelayBetweenSpawns = 0.87 },
		},
	},
	[463] = {
		CashReward = 13770,
		Enemies = {
			{ Enemy = "ColonyRenegade_HabitatScavenger", Count = 12, DelayBetweenSpawns = 1.15 },
			{ Enemy = "ColonyRenegade_OxygenRaider", Count = 10, DelayBetweenSpawns = 1.01 },
			{ Enemy = "ColonyRenegade_DomeSaboteur", Count = 8, DelayBetweenSpawns = 0.87 },
		},
	},
	[464] = {
		CashReward = 13980,
		Enemies = {
			{ Enemy = "ColonyRenegade_HabitatScavenger", Count = 13, DelayBetweenSpawns = 1.15 },
			{ Enemy = "ColonyRenegade_OxygenRaider", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "ColonyRenegade_DomeSaboteur", Count = 9, DelayBetweenSpawns = 0.87 },
		},
	},
	[465] = {
		CashReward = 14190,
		UnlocksStartingWave = 460,
		Enemies = {
			{ Enemy = "ColonyRenegade_HabitatScavenger", Count = 13, DelayBetweenSpawns = 1.15 },
			{ Enemy = "ColonyRenegade_OxygenRaider", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "ColonyRenegade_DomeSaboteur", Count = 9, DelayBetweenSpawns = 0.87 },
		},
	},
	[466] = {
		CashReward = 14400,
		Enemies = {
			{ Enemy = "ColonyRenegade_OxygenRaider", Count = 12, DelayBetweenSpawns = 1.01 },
			{ Enemy = "ColonyRenegade_DomeSaboteur", Count = 10, DelayBetweenSpawns = 0.87 },
			{ Enemy = "ColonyRenegade_ExosuitEnforcer", Count = 8, DelayBetweenSpawns = 0.73 },
		},
	},
	[467] = {
		CashReward = 14610,
		Enemies = {
			{ Enemy = "ColonyRenegade_OxygenRaider", Count = 13, DelayBetweenSpawns = 1.01 },
			{ Enemy = "ColonyRenegade_DomeSaboteur", Count = 11, DelayBetweenSpawns = 0.87 },
			{ Enemy = "ColonyRenegade_ExosuitEnforcer", Count = 9, DelayBetweenSpawns = 0.73 },
		},
	},
	[468] = {
		CashReward = 14820,
		Enemies = {
			{ Enemy = "ColonyRenegade_OxygenRaider", Count = 13, DelayBetweenSpawns = 1.01 },
			{ Enemy = "ColonyRenegade_DomeSaboteur", Count = 11, DelayBetweenSpawns = 0.87 },
			{ Enemy = "ColonyRenegade_ExosuitEnforcer", Count = 9, DelayBetweenSpawns = 0.73 },
		},
	},
	[469] = {
		CashReward = 15030,
		Enemies = {
			{ Enemy = "ColonyRenegade_OxygenRaider", Count = 14, DelayBetweenSpawns = 1.01 },
			{ Enemy = "ColonyRenegade_DomeSaboteur", Count = 12, DelayBetweenSpawns = 0.87 },
			{ Enemy = "ColonyRenegade_ExosuitEnforcer", Count = 10, DelayBetweenSpawns = 0.73 },
		},
	},
	[470] = {
		CashReward = 15240,
		UnlocksStartingWave = 465,
		Enemies = {
			{ Enemy = "ColonyRenegade_OxygenRaider", Count = 15, DelayBetweenSpawns = 1.01 },
			{ Enemy = "ColonyRenegade_DomeSaboteur", Count = 13, DelayBetweenSpawns = 0.87 },
			{ Enemy = "ColonyRenegade_ExosuitEnforcer", Count = 11, DelayBetweenSpawns = 0.73 },
		},
	},
	[471] = {
		CashReward = 15450,
		Enemies = {
			{ Enemy = "ColonyRenegade_DomeSaboteur", Count = 13, DelayBetweenSpawns = 0.87 },
			{ Enemy = "ColonyRenegade_ExosuitEnforcer", Count = 11, DelayBetweenSpawns = 0.73 },
			{ Enemy = "ColonyRenegade_ColonyWarmachine", Count = 9, DelayBetweenSpawns = 0.59 },
		},
	},
	[472] = {
		CashReward = 15660,
		Enemies = {
			{ Enemy = "ColonyRenegade_DomeSaboteur", Count = 14, DelayBetweenSpawns = 0.87 },
			{ Enemy = "ColonyRenegade_ExosuitEnforcer", Count = 12, DelayBetweenSpawns = 0.73 },
			{ Enemy = "ColonyRenegade_ColonyWarmachine", Count = 10, DelayBetweenSpawns = 0.59 },
		},
	},
	[473] = {
		CashReward = 15870,
		Enemies = {
			{ Enemy = "ColonyRenegade_DomeSaboteur", Count = 14, DelayBetweenSpawns = 0.87 },
			{ Enemy = "ColonyRenegade_ExosuitEnforcer", Count = 12, DelayBetweenSpawns = 0.73 },
			{ Enemy = "ColonyRenegade_ColonyWarmachine", Count = 10, DelayBetweenSpawns = 0.59 },
		},
	},
	[474] = {
		CashReward = 16080,
		Enemies = {
			{ Enemy = "ColonyRenegade_DomeSaboteur", Count = 15, DelayBetweenSpawns = 0.87 },
			{ Enemy = "ColonyRenegade_ExosuitEnforcer", Count = 13, DelayBetweenSpawns = 0.73 },
			{ Enemy = "ColonyRenegade_ColonyWarmachine", Count = 11, DelayBetweenSpawns = 0.59 },
		},
	},
	[475] = {
		CashReward = 16290,
		IsBossWave = true,
		UnlocksStartingWave = 470,
		Enemies = {
			{ Enemy = "ColonyRenegade_MarshalofRedDawn", Count = 1, DelayBetweenSpawns = 3 },
			{ Enemy = "ColonyRenegade_ColonyWarmachine", Count = 5, DelayBetweenSpawns = 1.5 },
		},
	},
	[476] = {
		CashReward = 16500,
		Enemies = {
			{ Enemy = "SolarAnomaly_FlareWisp", Count = 6, DelayBetweenSpawns = 1.15 },
		},
	},
	[477] = {
		CashReward = 16710,
		Enemies = {
			{ Enemy = "SolarAnomaly_FlareWisp", Count = 7, DelayBetweenSpawns = 1.15 },
		},
	},
	[478] = {
		CashReward = 16920,
		Enemies = {
			{ Enemy = "SolarAnomaly_FlareWisp", Count = 7, DelayBetweenSpawns = 1.15 },
		},
	},
	[479] = {
		CashReward = 17130,
		Enemies = {
			{ Enemy = "SolarAnomaly_FlareWisp", Count = 8, DelayBetweenSpawns = 1.15 },
		},
	},
	[480] = {
		CashReward = 17340,
		UnlocksStartingWave = 475,
		Enemies = {
			{ Enemy = "SolarAnomaly_FlareWisp", Count = 9, DelayBetweenSpawns = 1.15 },
		},
	},
	[481] = {
		CashReward = 17550,
		Enemies = {
			{ Enemy = "SolarAnomaly_FlareWisp", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "SolarAnomaly_RadiationPhantom", Count = 7, DelayBetweenSpawns = 1.01 },
		},
	},
	[482] = {
		CashReward = 17760,
		Enemies = {
			{ Enemy = "SolarAnomaly_FlareWisp", Count = 10, DelayBetweenSpawns = 1.15 },
			{ Enemy = "SolarAnomaly_RadiationPhantom", Count = 8, DelayBetweenSpawns = 1.01 },
		},
	},
	[483] = {
		CashReward = 17970,
		Enemies = {
			{ Enemy = "SolarAnomaly_FlareWisp", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "SolarAnomaly_RadiationPhantom", Count = 9, DelayBetweenSpawns = 1.01 },
		},
	},
	[484] = {
		CashReward = 18180,
		Enemies = {
			{ Enemy = "SolarAnomaly_FlareWisp", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "SolarAnomaly_RadiationPhantom", Count = 9, DelayBetweenSpawns = 1.01 },
		},
	},
	[485] = {
		CashReward = 18390,
		UnlocksStartingWave = 480,
		Enemies = {
			{ Enemy = "SolarAnomaly_FlareWisp", Count = 12, DelayBetweenSpawns = 1.15 },
			{ Enemy = "SolarAnomaly_RadiationPhantom", Count = 10, DelayBetweenSpawns = 1.01 },
		},
	},
	[486] = {
		CashReward = 18600,
		Enemies = {
			{ Enemy = "SolarAnomaly_FlareWisp", Count = 13, DelayBetweenSpawns = 1.15 },
			{ Enemy = "SolarAnomaly_RadiationPhantom", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "SolarAnomaly_CoronaBeast", Count = 9, DelayBetweenSpawns = 0.87 },
		},
	},
	[487] = {
		CashReward = 18810,
		Enemies = {
			{ Enemy = "SolarAnomaly_FlareWisp", Count = 13, DelayBetweenSpawns = 1.15 },
			{ Enemy = "SolarAnomaly_RadiationPhantom", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "SolarAnomaly_CoronaBeast", Count = 9, DelayBetweenSpawns = 0.87 },
		},
	},
	[488] = {
		CashReward = 19020,
		Enemies = {
			{ Enemy = "SolarAnomaly_FlareWisp", Count = 14, DelayBetweenSpawns = 1.15 },
			{ Enemy = "SolarAnomaly_RadiationPhantom", Count = 12, DelayBetweenSpawns = 1.01 },
			{ Enemy = "SolarAnomaly_CoronaBeast", Count = 10, DelayBetweenSpawns = 0.87 },
		},
	},
	[489] = {
		CashReward = 19230,
		Enemies = {
			{ Enemy = "SolarAnomaly_FlareWisp", Count = 15, DelayBetweenSpawns = 1.15 },
			{ Enemy = "SolarAnomaly_RadiationPhantom", Count = 13, DelayBetweenSpawns = 1.01 },
			{ Enemy = "SolarAnomaly_CoronaBeast", Count = 11, DelayBetweenSpawns = 0.87 },
		},
	},
	[490] = {
		CashReward = 19440,
		UnlocksStartingWave = 485,
		Enemies = {
			{ Enemy = "SolarAnomaly_FlareWisp", Count = 15, DelayBetweenSpawns = 1.15 },
			{ Enemy = "SolarAnomaly_RadiationPhantom", Count = 13, DelayBetweenSpawns = 1.01 },
			{ Enemy = "SolarAnomaly_CoronaBeast", Count = 11, DelayBetweenSpawns = 0.87 },
		},
	},
	[491] = {
		CashReward = 19650,
		Enemies = {
			{ Enemy = "SolarAnomaly_RadiationPhantom", Count = 14, DelayBetweenSpawns = 1.01 },
			{ Enemy = "SolarAnomaly_CoronaBeast", Count = 12, DelayBetweenSpawns = 0.87 },
			{ Enemy = "SolarAnomaly_SolarRevenant", Count = 10, DelayBetweenSpawns = 0.73 },
		},
	},
	[492] = {
		CashReward = 19860,
		Enemies = {
			{ Enemy = "SolarAnomaly_RadiationPhantom", Count = 15, DelayBetweenSpawns = 1.01 },
			{ Enemy = "SolarAnomaly_CoronaBeast", Count = 13, DelayBetweenSpawns = 0.87 },
			{ Enemy = "SolarAnomaly_SolarRevenant", Count = 11, DelayBetweenSpawns = 0.73 },
		},
	},
	[493] = {
		CashReward = 20070,
		Enemies = {
			{ Enemy = "SolarAnomaly_RadiationPhantom", Count = 15, DelayBetweenSpawns = 1.01 },
			{ Enemy = "SolarAnomaly_CoronaBeast", Count = 13, DelayBetweenSpawns = 0.87 },
			{ Enemy = "SolarAnomaly_SolarRevenant", Count = 11, DelayBetweenSpawns = 0.73 },
		},
	},
	[494] = {
		CashReward = 20280,
		Enemies = {
			{ Enemy = "SolarAnomaly_RadiationPhantom", Count = 16, DelayBetweenSpawns = 1.01 },
			{ Enemy = "SolarAnomaly_CoronaBeast", Count = 14, DelayBetweenSpawns = 0.87 },
			{ Enemy = "SolarAnomaly_SolarRevenant", Count = 12, DelayBetweenSpawns = 0.73 },
		},
	},
	[495] = {
		CashReward = 20490,
		UnlocksStartingWave = 490,
		Enemies = {
			{ Enemy = "SolarAnomaly_RadiationPhantom", Count = 17, DelayBetweenSpawns = 1.01 },
			{ Enemy = "SolarAnomaly_CoronaBeast", Count = 15, DelayBetweenSpawns = 0.87 },
			{ Enemy = "SolarAnomaly_SolarRevenant", Count = 13, DelayBetweenSpawns = 0.73 },
		},
	},
	[496] = {
		CashReward = 20700,
		Enemies = {
			{ Enemy = "SolarAnomaly_CoronaBeast", Count = 15, DelayBetweenSpawns = 0.87 },
			{ Enemy = "SolarAnomaly_SolarRevenant", Count = 13, DelayBetweenSpawns = 0.73 },
			{ Enemy = "SolarAnomaly_HeliosTitan", Count = 11, DelayBetweenSpawns = 0.59 },
		},
	},
	[497] = {
		CashReward = 20910,
		Enemies = {
			{ Enemy = "SolarAnomaly_CoronaBeast", Count = 16, DelayBetweenSpawns = 0.87 },
			{ Enemy = "SolarAnomaly_SolarRevenant", Count = 14, DelayBetweenSpawns = 0.73 },
			{ Enemy = "SolarAnomaly_HeliosTitan", Count = 12, DelayBetweenSpawns = 0.59 },
		},
	},
	[498] = {
		CashReward = 21120,
		Enemies = {
			{ Enemy = "SolarAnomaly_CoronaBeast", Count = 16, DelayBetweenSpawns = 0.87 },
			{ Enemy = "SolarAnomaly_SolarRevenant", Count = 14, DelayBetweenSpawns = 0.73 },
			{ Enemy = "SolarAnomaly_HeliosTitan", Count = 12, DelayBetweenSpawns = 0.59 },
		},
	},
	[499] = {
		CashReward = 21330,
		Enemies = {
			{ Enemy = "SolarAnomaly_CoronaBeast", Count = 17, DelayBetweenSpawns = 0.87 },
			{ Enemy = "SolarAnomaly_SolarRevenant", Count = 15, DelayBetweenSpawns = 0.73 },
			{ Enemy = "SolarAnomaly_HeliosTitan", Count = 13, DelayBetweenSpawns = 0.59 },
		},
	},
	[500] = {
		CashReward = 21540,
		IsBossWave = true,
		UnlocksStartingWave = 495,
		Enemies = {
			{ Enemy = "SolarAnomaly_TheRedSunIncarnate", Count = 1, DelayBetweenSpawns = 3 },
			{ Enemy = "SolarAnomaly_HeliosTitan", Count = 6, DelayBetweenSpawns = 1.5 },
		},
	},
}

return WaveConfigurations
