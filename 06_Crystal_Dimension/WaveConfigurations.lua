--!strict
-- Crystal Dimension: explicit waves 501-600.
local WaveConfigurations = {
	[501] = {
		CashReward = 1732,
		Enemies = {
			{ Enemy = "Shardling_CrystalFleck", Count = 1, DelayBetweenSpawns = 1.15 },
		},
	},
	[502] = {
		CashReward = 2217,
		Enemies = {
			{ Enemy = "Shardling_CrystalFleck", Count = 1, DelayBetweenSpawns = 1.15 },
		},
	},
	[503] = {
		CashReward = 2702,
		Enemies = {
			{ Enemy = "Shardling_CrystalFleck", Count = 1, DelayBetweenSpawns = 1.15 },
		},
	},
	[504] = {
		CashReward = 3187,
		Enemies = {
			{ Enemy = "Shardling_CrystalFleck", Count = 2, DelayBetweenSpawns = 1.15 },
		},
	},
	[505] = {
		CashReward = 3672,
		UnlocksStartingWave = 501,
		Enemies = {
			{ Enemy = "Shardling_CrystalFleck", Count = 3, DelayBetweenSpawns = 1.15 },
		},
	},
	[506] = {
		CashReward = 4157,
		Enemies = {
			{ Enemy = "Shardling_CrystalFleck", Count = 3, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Shardling_ShardSkitter", Count = 1, DelayBetweenSpawns = 1.01 },
		},
	},
	[507] = {
		CashReward = 4642,
		Enemies = {
			{ Enemy = "Shardling_CrystalFleck", Count = 4, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Shardling_ShardSkitter", Count = 2, DelayBetweenSpawns = 1.01 },
		},
	},
	[508] = {
		CashReward = 5127,
		Enemies = {
			{ Enemy = "Shardling_CrystalFleck", Count = 5, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Shardling_ShardSkitter", Count = 3, DelayBetweenSpawns = 1.01 },
		},
	},
	[509] = {
		CashReward = 5612,
		Enemies = {
			{ Enemy = "Shardling_CrystalFleck", Count = 5, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Shardling_ShardSkitter", Count = 3, DelayBetweenSpawns = 1.01 },
		},
	},
	[510] = {
		CashReward = 6097,
		UnlocksStartingWave = 505,
		Enemies = {
			{ Enemy = "Shardling_CrystalFleck", Count = 6, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Shardling_ShardSkitter", Count = 4, DelayBetweenSpawns = 1.01 },
		},
	},
	[511] = {
		CashReward = 6582,
		Enemies = {
			{ Enemy = "Shardling_CrystalFleck", Count = 7, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Shardling_ShardSkitter", Count = 5, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Shardling_FacetStalker", Count = 3, DelayBetweenSpawns = 0.87 },
		},
	},
	[512] = {
		CashReward = 7067,
		Enemies = {
			{ Enemy = "Shardling_CrystalFleck", Count = 7, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Shardling_ShardSkitter", Count = 5, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Shardling_FacetStalker", Count = 3, DelayBetweenSpawns = 0.87 },
		},
	},
	[513] = {
		CashReward = 7552,
		Enemies = {
			{ Enemy = "Shardling_CrystalFleck", Count = 8, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Shardling_ShardSkitter", Count = 6, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Shardling_FacetStalker", Count = 4, DelayBetweenSpawns = 0.87 },
		},
	},
	[514] = {
		CashReward = 8037,
		Enemies = {
			{ Enemy = "Shardling_CrystalFleck", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Shardling_ShardSkitter", Count = 7, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Shardling_FacetStalker", Count = 5, DelayBetweenSpawns = 0.87 },
		},
	},
	[515] = {
		CashReward = 8522,
		UnlocksStartingWave = 510,
		Enemies = {
			{ Enemy = "Shardling_CrystalFleck", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Shardling_ShardSkitter", Count = 7, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Shardling_FacetStalker", Count = 5, DelayBetweenSpawns = 0.87 },
		},
	},
	[516] = {
		CashReward = 9007,
		Enemies = {
			{ Enemy = "Shardling_ShardSkitter", Count = 8, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Shardling_FacetStalker", Count = 6, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Shardling_QuartzBrute", Count = 4, DelayBetweenSpawns = 0.73 },
		},
	},
	[517] = {
		CashReward = 9492,
		Enemies = {
			{ Enemy = "Shardling_ShardSkitter", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Shardling_FacetStalker", Count = 7, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Shardling_QuartzBrute", Count = 5, DelayBetweenSpawns = 0.73 },
		},
	},
	[518] = {
		CashReward = 9977,
		Enemies = {
			{ Enemy = "Shardling_ShardSkitter", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Shardling_FacetStalker", Count = 7, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Shardling_QuartzBrute", Count = 5, DelayBetweenSpawns = 0.73 },
		},
	},
	[519] = {
		CashReward = 10462,
		Enemies = {
			{ Enemy = "Shardling_ShardSkitter", Count = 10, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Shardling_FacetStalker", Count = 8, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Shardling_QuartzBrute", Count = 6, DelayBetweenSpawns = 0.73 },
		},
	},
	[520] = {
		CashReward = 10947,
		UnlocksStartingWave = 515,
		Enemies = {
			{ Enemy = "Shardling_ShardSkitter", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Shardling_FacetStalker", Count = 9, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Shardling_QuartzBrute", Count = 7, DelayBetweenSpawns = 0.73 },
		},
	},
	[521] = {
		CashReward = 11432,
		Enemies = {
			{ Enemy = "Shardling_FacetStalker", Count = 9, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Shardling_QuartzBrute", Count = 7, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Shardling_GeodeTitan", Count = 5, DelayBetweenSpawns = 0.59 },
		},
	},
	[522] = {
		CashReward = 11917,
		Enemies = {
			{ Enemy = "Shardling_FacetStalker", Count = 10, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Shardling_QuartzBrute", Count = 8, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Shardling_GeodeTitan", Count = 6, DelayBetweenSpawns = 0.59 },
		},
	},
	[523] = {
		CashReward = 12401,
		Enemies = {
			{ Enemy = "Shardling_FacetStalker", Count = 10, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Shardling_QuartzBrute", Count = 8, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Shardling_GeodeTitan", Count = 6, DelayBetweenSpawns = 0.59 },
		},
	},
	[524] = {
		CashReward = 12886,
		Enemies = {
			{ Enemy = "Shardling_FacetStalker", Count = 11, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Shardling_QuartzBrute", Count = 9, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Shardling_GeodeTitan", Count = 7, DelayBetweenSpawns = 0.59 },
		},
	},
	[525] = {
		CashReward = 13371,
		IsBossWave = true,
		UnlocksStartingWave = 520,
		Enemies = {
			{ Enemy = "Shardling_TheFirstFacet", Count = 1, DelayBetweenSpawns = 3 },
			{ Enemy = "Shardling_GeodeTitan", Count = 3, DelayBetweenSpawns = 1.5 },
		},
	},
	[526] = {
		CashReward = 13856,
		Enemies = {
			{ Enemy = "Prismatic_PrismWisp", Count = 2, DelayBetweenSpawns = 1.15 },
		},
	},
	[527] = {
		CashReward = 14341,
		Enemies = {
			{ Enemy = "Prismatic_PrismWisp", Count = 3, DelayBetweenSpawns = 1.15 },
		},
	},
	[528] = {
		CashReward = 14826,
		Enemies = {
			{ Enemy = "Prismatic_PrismWisp", Count = 3, DelayBetweenSpawns = 1.15 },
		},
	},
	[529] = {
		CashReward = 15311,
		Enemies = {
			{ Enemy = "Prismatic_PrismWisp", Count = 4, DelayBetweenSpawns = 1.15 },
		},
	},
	[530] = {
		CashReward = 15796,
		UnlocksStartingWave = 525,
		Enemies = {
			{ Enemy = "Prismatic_PrismWisp", Count = 5, DelayBetweenSpawns = 1.15 },
		},
	},
	[531] = {
		CashReward = 16281,
		Enemies = {
			{ Enemy = "Prismatic_PrismWisp", Count = 5, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Prismatic_SpectrumRunner", Count = 3, DelayBetweenSpawns = 1.01 },
		},
	},
	[532] = {
		CashReward = 16766,
		Enemies = {
			{ Enemy = "Prismatic_PrismWisp", Count = 6, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Prismatic_SpectrumRunner", Count = 4, DelayBetweenSpawns = 1.01 },
		},
	},
	[533] = {
		CashReward = 17251,
		Enemies = {
			{ Enemy = "Prismatic_PrismWisp", Count = 7, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Prismatic_SpectrumRunner", Count = 5, DelayBetweenSpawns = 1.01 },
		},
	},
	[534] = {
		CashReward = 17736,
		Enemies = {
			{ Enemy = "Prismatic_PrismWisp", Count = 7, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Prismatic_SpectrumRunner", Count = 5, DelayBetweenSpawns = 1.01 },
		},
	},
	[535] = {
		CashReward = 18221,
		UnlocksStartingWave = 530,
		Enemies = {
			{ Enemy = "Prismatic_PrismWisp", Count = 8, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Prismatic_SpectrumRunner", Count = 6, DelayBetweenSpawns = 1.01 },
		},
	},
	[536] = {
		CashReward = 18706,
		Enemies = {
			{ Enemy = "Prismatic_PrismWisp", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Prismatic_SpectrumRunner", Count = 7, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Prismatic_RefractionKnight", Count = 5, DelayBetweenSpawns = 0.87 },
		},
	},
	[537] = {
		CashReward = 19191,
		Enemies = {
			{ Enemy = "Prismatic_PrismWisp", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Prismatic_SpectrumRunner", Count = 7, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Prismatic_RefractionKnight", Count = 5, DelayBetweenSpawns = 0.87 },
		},
	},
	[538] = {
		CashReward = 19676,
		Enemies = {
			{ Enemy = "Prismatic_PrismWisp", Count = 10, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Prismatic_SpectrumRunner", Count = 8, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Prismatic_RefractionKnight", Count = 6, DelayBetweenSpawns = 0.87 },
		},
	},
	[539] = {
		CashReward = 20161,
		Enemies = {
			{ Enemy = "Prismatic_PrismWisp", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Prismatic_SpectrumRunner", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Prismatic_RefractionKnight", Count = 7, DelayBetweenSpawns = 0.87 },
		},
	},
	[540] = {
		CashReward = 20646,
		UnlocksStartingWave = 535,
		Enemies = {
			{ Enemy = "Prismatic_PrismWisp", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Prismatic_SpectrumRunner", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Prismatic_RefractionKnight", Count = 7, DelayBetweenSpawns = 0.87 },
		},
	},
	[541] = {
		CashReward = 21131,
		Enemies = {
			{ Enemy = "Prismatic_SpectrumRunner", Count = 10, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Prismatic_RefractionKnight", Count = 8, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Prismatic_RainbowColossus", Count = 6, DelayBetweenSpawns = 0.73 },
		},
	},
	[542] = {
		CashReward = 21616,
		Enemies = {
			{ Enemy = "Prismatic_SpectrumRunner", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Prismatic_RefractionKnight", Count = 9, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Prismatic_RainbowColossus", Count = 7, DelayBetweenSpawns = 0.73 },
		},
	},
	[543] = {
		CashReward = 22101,
		Enemies = {
			{ Enemy = "Prismatic_SpectrumRunner", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Prismatic_RefractionKnight", Count = 9, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Prismatic_RainbowColossus", Count = 7, DelayBetweenSpawns = 0.73 },
		},
	},
	[544] = {
		CashReward = 22586,
		Enemies = {
			{ Enemy = "Prismatic_SpectrumRunner", Count = 12, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Prismatic_RefractionKnight", Count = 10, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Prismatic_RainbowColossus", Count = 8, DelayBetweenSpawns = 0.73 },
		},
	},
	[545] = {
		CashReward = 23071,
		UnlocksStartingWave = 540,
		Enemies = {
			{ Enemy = "Prismatic_SpectrumRunner", Count = 13, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Prismatic_RefractionKnight", Count = 11, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Prismatic_RainbowColossus", Count = 9, DelayBetweenSpawns = 0.73 },
		},
	},
	[546] = {
		CashReward = 23556,
		Enemies = {
			{ Enemy = "Prismatic_RefractionKnight", Count = 11, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Prismatic_RainbowColossus", Count = 9, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Prismatic_ChromaticDevourer", Count = 7, DelayBetweenSpawns = 0.59 },
		},
	},
	[547] = {
		CashReward = 24041,
		Enemies = {
			{ Enemy = "Prismatic_RefractionKnight", Count = 12, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Prismatic_RainbowColossus", Count = 10, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Prismatic_ChromaticDevourer", Count = 8, DelayBetweenSpawns = 0.59 },
		},
	},
	[548] = {
		CashReward = 24526,
		Enemies = {
			{ Enemy = "Prismatic_RefractionKnight", Count = 12, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Prismatic_RainbowColossus", Count = 10, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Prismatic_ChromaticDevourer", Count = 8, DelayBetweenSpawns = 0.59 },
		},
	},
	[549] = {
		CashReward = 25011,
		Enemies = {
			{ Enemy = "Prismatic_RefractionKnight", Count = 13, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Prismatic_RainbowColossus", Count = 11, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Prismatic_ChromaticDevourer", Count = 9, DelayBetweenSpawns = 0.59 },
		},
	},
	[550] = {
		CashReward = 25496,
		IsBossWave = true,
		UnlocksStartingWave = 545,
		Enemies = {
			{ Enemy = "Prismatic_TheSevenfoldMonarch", Count = 1, DelayBetweenSpawns = 3 },
			{ Enemy = "Prismatic_ChromaticDevourer", Count = 4, DelayBetweenSpawns = 1.5 },
		},
	},
	[551] = {
		CashReward = 25981,
		Enemies = {
			{ Enemy = "Resonant_EchoShard", Count = 4, DelayBetweenSpawns = 1.15 },
		},
	},
	[552] = {
		CashReward = 26466,
		Enemies = {
			{ Enemy = "Resonant_EchoShard", Count = 5, DelayBetweenSpawns = 1.15 },
		},
	},
	[553] = {
		CashReward = 26951,
		Enemies = {
			{ Enemy = "Resonant_EchoShard", Count = 5, DelayBetweenSpawns = 1.15 },
		},
	},
	[554] = {
		CashReward = 27436,
		Enemies = {
			{ Enemy = "Resonant_EchoShard", Count = 6, DelayBetweenSpawns = 1.15 },
		},
	},
	[555] = {
		CashReward = 27921,
		UnlocksStartingWave = 550,
		Enemies = {
			{ Enemy = "Resonant_EchoShard", Count = 7, DelayBetweenSpawns = 1.15 },
		},
	},
	[556] = {
		CashReward = 28406,
		Enemies = {
			{ Enemy = "Resonant_EchoShard", Count = 7, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Resonant_HarmonicHunter", Count = 5, DelayBetweenSpawns = 1.01 },
		},
	},
	[557] = {
		CashReward = 28891,
		Enemies = {
			{ Enemy = "Resonant_EchoShard", Count = 8, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Resonant_HarmonicHunter", Count = 6, DelayBetweenSpawns = 1.01 },
		},
	},
	[558] = {
		CashReward = 29376,
		Enemies = {
			{ Enemy = "Resonant_EchoShard", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Resonant_HarmonicHunter", Count = 7, DelayBetweenSpawns = 1.01 },
		},
	},
	[559] = {
		CashReward = 29861,
		Enemies = {
			{ Enemy = "Resonant_EchoShard", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Resonant_HarmonicHunter", Count = 7, DelayBetweenSpawns = 1.01 },
		},
	},
	[560] = {
		CashReward = 30346,
		UnlocksStartingWave = 555,
		Enemies = {
			{ Enemy = "Resonant_EchoShard", Count = 10, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Resonant_HarmonicHunter", Count = 8, DelayBetweenSpawns = 1.01 },
		},
	},
	[561] = {
		CashReward = 30831,
		Enemies = {
			{ Enemy = "Resonant_EchoShard", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Resonant_HarmonicHunter", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Resonant_ResonanceGolem", Count = 7, DelayBetweenSpawns = 0.87 },
		},
	},
	[562] = {
		CashReward = 31315,
		Enemies = {
			{ Enemy = "Resonant_EchoShard", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Resonant_HarmonicHunter", Count = 9, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Resonant_ResonanceGolem", Count = 7, DelayBetweenSpawns = 0.87 },
		},
	},
	[563] = {
		CashReward = 31800,
		Enemies = {
			{ Enemy = "Resonant_EchoShard", Count = 12, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Resonant_HarmonicHunter", Count = 10, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Resonant_ResonanceGolem", Count = 8, DelayBetweenSpawns = 0.87 },
		},
	},
	[564] = {
		CashReward = 32285,
		Enemies = {
			{ Enemy = "Resonant_EchoShard", Count = 13, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Resonant_HarmonicHunter", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Resonant_ResonanceGolem", Count = 9, DelayBetweenSpawns = 0.87 },
		},
	},
	[565] = {
		CashReward = 32770,
		UnlocksStartingWave = 560,
		Enemies = {
			{ Enemy = "Resonant_EchoShard", Count = 13, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Resonant_HarmonicHunter", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Resonant_ResonanceGolem", Count = 9, DelayBetweenSpawns = 0.87 },
		},
	},
	[566] = {
		CashReward = 33255,
		Enemies = {
			{ Enemy = "Resonant_HarmonicHunter", Count = 12, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Resonant_ResonanceGolem", Count = 10, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Resonant_FrequencyWarden", Count = 8, DelayBetweenSpawns = 0.73 },
		},
	},
	[567] = {
		CashReward = 33740,
		Enemies = {
			{ Enemy = "Resonant_HarmonicHunter", Count = 13, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Resonant_ResonanceGolem", Count = 11, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Resonant_FrequencyWarden", Count = 9, DelayBetweenSpawns = 0.73 },
		},
	},
	[568] = {
		CashReward = 34225,
		Enemies = {
			{ Enemy = "Resonant_HarmonicHunter", Count = 13, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Resonant_ResonanceGolem", Count = 11, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Resonant_FrequencyWarden", Count = 9, DelayBetweenSpawns = 0.73 },
		},
	},
	[569] = {
		CashReward = 34710,
		Enemies = {
			{ Enemy = "Resonant_HarmonicHunter", Count = 14, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Resonant_ResonanceGolem", Count = 12, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Resonant_FrequencyWarden", Count = 10, DelayBetweenSpawns = 0.73 },
		},
	},
	[570] = {
		CashReward = 35195,
		UnlocksStartingWave = 565,
		Enemies = {
			{ Enemy = "Resonant_HarmonicHunter", Count = 15, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Resonant_ResonanceGolem", Count = 13, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Resonant_FrequencyWarden", Count = 11, DelayBetweenSpawns = 0.73 },
		},
	},
	[571] = {
		CashReward = 35680,
		Enemies = {
			{ Enemy = "Resonant_ResonanceGolem", Count = 13, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Resonant_FrequencyWarden", Count = 11, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Resonant_SonicCrystalGiant", Count = 9, DelayBetweenSpawns = 0.59 },
		},
	},
	[572] = {
		CashReward = 36165,
		Enemies = {
			{ Enemy = "Resonant_ResonanceGolem", Count = 14, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Resonant_FrequencyWarden", Count = 12, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Resonant_SonicCrystalGiant", Count = 10, DelayBetweenSpawns = 0.59 },
		},
	},
	[573] = {
		CashReward = 36650,
		Enemies = {
			{ Enemy = "Resonant_ResonanceGolem", Count = 14, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Resonant_FrequencyWarden", Count = 12, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Resonant_SonicCrystalGiant", Count = 10, DelayBetweenSpawns = 0.59 },
		},
	},
	[574] = {
		CashReward = 37135,
		Enemies = {
			{ Enemy = "Resonant_ResonanceGolem", Count = 15, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Resonant_FrequencyWarden", Count = 13, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Resonant_SonicCrystalGiant", Count = 11, DelayBetweenSpawns = 0.59 },
		},
	},
	[575] = {
		CashReward = 37620,
		IsBossWave = true,
		UnlocksStartingWave = 570,
		Enemies = {
			{ Enemy = "Resonant_ThePerfectFrequency", Count = 1, DelayBetweenSpawns = 3 },
			{ Enemy = "Resonant_SonicCrystalGiant", Count = 5, DelayBetweenSpawns = 1.5 },
		},
	},
	[576] = {
		CashReward = 38105,
		Enemies = {
			{ Enemy = "Coreborn_CoreSpark", Count = 6, DelayBetweenSpawns = 1.15 },
		},
	},
	[577] = {
		CashReward = 38590,
		Enemies = {
			{ Enemy = "Coreborn_CoreSpark", Count = 7, DelayBetweenSpawns = 1.15 },
		},
	},
	[578] = {
		CashReward = 39075,
		Enemies = {
			{ Enemy = "Coreborn_CoreSpark", Count = 7, DelayBetweenSpawns = 1.15 },
		},
	},
	[579] = {
		CashReward = 39560,
		Enemies = {
			{ Enemy = "Coreborn_CoreSpark", Count = 8, DelayBetweenSpawns = 1.15 },
		},
	},
	[580] = {
		CashReward = 40045,
		UnlocksStartingWave = 575,
		Enemies = {
			{ Enemy = "Coreborn_CoreSpark", Count = 9, DelayBetweenSpawns = 1.15 },
		},
	},
	[581] = {
		CashReward = 40530,
		Enemies = {
			{ Enemy = "Coreborn_CoreSpark", Count = 9, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Coreborn_LatticeGuardian", Count = 7, DelayBetweenSpawns = 1.01 },
		},
	},
	[582] = {
		CashReward = 41015,
		Enemies = {
			{ Enemy = "Coreborn_CoreSpark", Count = 10, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Coreborn_LatticeGuardian", Count = 8, DelayBetweenSpawns = 1.01 },
		},
	},
	[583] = {
		CashReward = 41500,
		Enemies = {
			{ Enemy = "Coreborn_CoreSpark", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Coreborn_LatticeGuardian", Count = 9, DelayBetweenSpawns = 1.01 },
		},
	},
	[584] = {
		CashReward = 41985,
		Enemies = {
			{ Enemy = "Coreborn_CoreSpark", Count = 11, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Coreborn_LatticeGuardian", Count = 9, DelayBetweenSpawns = 1.01 },
		},
	},
	[585] = {
		CashReward = 42470,
		UnlocksStartingWave = 580,
		Enemies = {
			{ Enemy = "Coreborn_CoreSpark", Count = 12, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Coreborn_LatticeGuardian", Count = 10, DelayBetweenSpawns = 1.01 },
		},
	},
	[586] = {
		CashReward = 42955,
		Enemies = {
			{ Enemy = "Coreborn_CoreSpark", Count = 13, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Coreborn_LatticeGuardian", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Coreborn_DimensionReaver", Count = 9, DelayBetweenSpawns = 0.87 },
		},
	},
	[587] = {
		CashReward = 43440,
		Enemies = {
			{ Enemy = "Coreborn_CoreSpark", Count = 13, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Coreborn_LatticeGuardian", Count = 11, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Coreborn_DimensionReaver", Count = 9, DelayBetweenSpawns = 0.87 },
		},
	},
	[588] = {
		CashReward = 43925,
		Enemies = {
			{ Enemy = "Coreborn_CoreSpark", Count = 14, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Coreborn_LatticeGuardian", Count = 12, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Coreborn_DimensionReaver", Count = 10, DelayBetweenSpawns = 0.87 },
		},
	},
	[589] = {
		CashReward = 44410,
		Enemies = {
			{ Enemy = "Coreborn_CoreSpark", Count = 15, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Coreborn_LatticeGuardian", Count = 13, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Coreborn_DimensionReaver", Count = 11, DelayBetweenSpawns = 0.87 },
		},
	},
	[590] = {
		CashReward = 44895,
		UnlocksStartingWave = 585,
		Enemies = {
			{ Enemy = "Coreborn_CoreSpark", Count = 15, DelayBetweenSpawns = 1.15 },
			{ Enemy = "Coreborn_LatticeGuardian", Count = 13, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Coreborn_DimensionReaver", Count = 11, DelayBetweenSpawns = 0.87 },
		},
	},
	[591] = {
		CashReward = 45380,
		Enemies = {
			{ Enemy = "Coreborn_LatticeGuardian", Count = 14, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Coreborn_DimensionReaver", Count = 12, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Coreborn_InfiniteFacet", Count = 10, DelayBetweenSpawns = 0.73 },
		},
	},
	[592] = {
		CashReward = 45865,
		Enemies = {
			{ Enemy = "Coreborn_LatticeGuardian", Count = 15, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Coreborn_DimensionReaver", Count = 13, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Coreborn_InfiniteFacet", Count = 11, DelayBetweenSpawns = 0.73 },
		},
	},
	[593] = {
		CashReward = 46350,
		Enemies = {
			{ Enemy = "Coreborn_LatticeGuardian", Count = 15, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Coreborn_DimensionReaver", Count = 13, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Coreborn_InfiniteFacet", Count = 11, DelayBetweenSpawns = 0.73 },
		},
	},
	[594] = {
		CashReward = 46835,
		Enemies = {
			{ Enemy = "Coreborn_LatticeGuardian", Count = 16, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Coreborn_DimensionReaver", Count = 14, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Coreborn_InfiniteFacet", Count = 12, DelayBetweenSpawns = 0.73 },
		},
	},
	[595] = {
		CashReward = 47320,
		UnlocksStartingWave = 590,
		Enemies = {
			{ Enemy = "Coreborn_LatticeGuardian", Count = 17, DelayBetweenSpawns = 1.01 },
			{ Enemy = "Coreborn_DimensionReaver", Count = 15, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Coreborn_InfiniteFacet", Count = 13, DelayBetweenSpawns = 0.73 },
		},
	},
	[596] = {
		CashReward = 47805,
		Enemies = {
			{ Enemy = "Coreborn_DimensionReaver", Count = 15, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Coreborn_InfiniteFacet", Count = 13, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Coreborn_RealityGeode", Count = 11, DelayBetweenSpawns = 0.59 },
		},
	},
	[597] = {
		CashReward = 48290,
		Enemies = {
			{ Enemy = "Coreborn_DimensionReaver", Count = 16, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Coreborn_InfiniteFacet", Count = 14, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Coreborn_RealityGeode", Count = 12, DelayBetweenSpawns = 0.59 },
		},
	},
	[598] = {
		CashReward = 48775,
		Enemies = {
			{ Enemy = "Coreborn_DimensionReaver", Count = 16, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Coreborn_InfiniteFacet", Count = 14, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Coreborn_RealityGeode", Count = 12, DelayBetweenSpawns = 0.59 },
		},
	},
	[599] = {
		CashReward = 49260,
		Enemies = {
			{ Enemy = "Coreborn_DimensionReaver", Count = 17, DelayBetweenSpawns = 0.87 },
			{ Enemy = "Coreborn_InfiniteFacet", Count = 15, DelayBetweenSpawns = 0.73 },
			{ Enemy = "Coreborn_RealityGeode", Count = 13, DelayBetweenSpawns = 0.59 },
		},
	},
	[600] = {
		CashReward = 49744,
		IsBossWave = true,
		UnlocksStartingWave = 595,
		Enemies = {
			{ Enemy = "Coreborn_TheCrystalSingularity", Count = 1, DelayBetweenSpawns = 3 },
			{ Enemy = "Coreborn_RealityGeode", Count = 6, DelayBetweenSpawns = 1.5 },
		},
	},
}

return WaveConfigurations
