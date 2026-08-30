--[[
	Defines the enemies and their counts for each wave.
	- CashReward: How much cash the player receives for clearing the wave.
	- Enemies: A list of enemy groups to spawn.
--]]

local WaveConfigurations = {
	-- Wave 1
	[1] = {
		CashReward = 5,
		Enemies = {
			{Enemy = "Normal Zombie", Count = 2, DelayBetweenSpawns = 1},
		}
	},

	[2] = {
		CashReward = 10,
		Enemies = {
			{Enemy = "Normal Zombie", Count = 3, DelayBetweenSpawns = 1},
		}
	},

	[3] = {
		CashReward = 15,
		Enemies = {
			{Enemy = "Normal Zombie", Count = 4, DelayBetweenSpawns = 1},
		}
	},

	[4] = {
		CashReward = 20,
		Enemies = {
			{Enemy = "Normal Zombie", Count = 5, DelayBetweenSpawns = 1},
		}
	},

	[5] = {
		CashReward = 25,
		Enemies = {
			{Enemy = "Normal Zombie", Count = 6, DelayBetweenSpawns = 1},
			{Enemy = "Ghost Zombie", Count = 1, DelayBetweenSpawns = 2},
		}
	},
	
	[6] = {
		CashReward = 30,
		Enemies = {
			{Enemy = "Normal Zombie", Count = 7, DelayBetweenSpawns = 1},
			{Enemy = "Ghost Zombie", Count = 2, DelayBetweenSpawns = 2},
		}
	},
	
	[7] = {
		CashReward = 35,
		Enemies = {
			{Enemy = "Normal Zombie", Count = 8, DelayBetweenSpawns = 1},
			{Enemy = "Ghost Zombie", Count = 3, DelayBetweenSpawns = 2},
		}
	},
	
	[8] = {
		CashReward = 40,
		Enemies = {
			{Enemy = "Normal Zombie", Count = 9, DelayBetweenSpawns = 1},
			{Enemy = "Ghost Zombie", Count = 4, DelayBetweenSpawns = 2},
		}
	},
	
	[9] = {
		CashReward = 45,
		Enemies = {
			{Enemy = "Normal Zombie", Count = 10, DelayBetweenSpawns = 1},
			{Enemy = "Ghost Zombie", Count = 5, DelayBetweenSpawns = 2},
		}
	},
	
	[10] = {
		CashReward = 50,
		UnlocksStartingWave = 5,
		Enemies = {
			{Enemy = "Normal Zombie", Count = 11, DelayBetweenSpawns = 1},
			{Enemy = "Ghost Zombie", Count = 6, DelayBetweenSpawns = 2},
			{Enemy = "Ice Zombie", Count = 1, DelayBetweenSpawns = 4},
		}
	},
	
	[11] = {
		CashReward = 55,
		Enemies = {
			{Enemy = "Normal Zombie", Count = 12, DelayBetweenSpawns = 1},
			{Enemy = "Ghost Zombie", Count = 7, DelayBetweenSpawns = 2},
			{Enemy = "Ice Zombie", Count = 2, DelayBetweenSpawns = 4},
		}
	},
	
	[12] = {
		CashReward = 60,
		Enemies = {
			{Enemy = "Normal Zombie", Count = 13, DelayBetweenSpawns = 1},
			{Enemy = "Ghost Zombie", Count = 8, DelayBetweenSpawns = 2},
			{Enemy = "Ice Zombie", Count = 3, DelayBetweenSpawns = 4},
		}
	},
	
	[13] = {
		CashReward = 65,
		Enemies = {
			{Enemy = "Normal Zombie", Count = 14, DelayBetweenSpawns = 1},
			{Enemy = "Ghost Zombie", Count = 9, DelayBetweenSpawns = 2},
			{Enemy = "Ice Zombie", Count = 4, DelayBetweenSpawns = 4},
		}
	},
	
	[14] = {
		CashReward = 70,
		Enemies = {
			{Enemy = "Normal Zombie", Count = 15, DelayBetweenSpawns = 1},
			{Enemy = "Ghost Zombie", Count = 10, DelayBetweenSpawns = 2},
			{Enemy = "Ice Zombie", Count = 5, DelayBetweenSpawns = 4},
		}
	},
	
	[15] = {
		CashReward = 75,
		UnlocksStartingWave = 10,
		Enemies = {
			{Enemy = "Ghost Zombie", Count = 11, DelayBetweenSpawns = 1},
			{Enemy = "Ice Zombie", Count = 6, DelayBetweenSpawns = 2},
			{Enemy = "Fire Zombie", Count = 1, DelayBetweenSpawns = 4},
		}
	},
	
	[16] = {
		CashReward = 80,
		Enemies = {
			{Enemy = "Ghost Zombie", Count = 12, DelayBetweenSpawns = 1},
			{Enemy = "Ice Zombie", Count = 7, DelayBetweenSpawns = 2},
			{Enemy = "Fire Zombie", Count = 2, DelayBetweenSpawns = 4},
		}
	},
	
	[17] = {
		CashReward = 85,
		Enemies = {
			{Enemy = "Ghost Zombie", Count = 13, DelayBetweenSpawns = 1},
			{Enemy = "Ice Zombie", Count = 8, DelayBetweenSpawns = 2},
			{Enemy = "Fire Zombie", Count = 3, DelayBetweenSpawns = 4},
		}
	},
	
	[18] = {
		CashReward = 90,
		Enemies = {
			{Enemy = "Ghost Zombie", Count = 14, DelayBetweenSpawns = 1},
			{Enemy = "Ice Zombie", Count = 9, DelayBetweenSpawns = 2},
			{Enemy = "Fire Zombie", Count = 4, DelayBetweenSpawns = 4},
		}
	},
	
	[19] = {
		CashReward = 95,
		Enemies = {
			{Enemy = "Ghost Zombie", Count = 15, DelayBetweenSpawns = 1},
			{Enemy = "Ice Zombie", Count = 10, DelayBetweenSpawns = 2},
			{Enemy = "Fire Zombie", Count = 5, DelayBetweenSpawns = 4},
		}
	},
	
	[20] = {
		CashReward = 100,
		UnlocksStartingWave = 15,
		Enemies = {
			{Enemy = "Ice Zombie", Count = 11, DelayBetweenSpawns = 1},
			{Enemy = "Fire Zombie", Count = 6, DelayBetweenSpawns = 2},
			{Enemy = "Toxic Zombie", Count = 1, DelayBetweenSpawns = 4},
		}
	},
	
	[21] = {
		CashReward = 105,
		Enemies = {
			{Enemy = "Ice Zombie", Count = 12, DelayBetweenSpawns = 1},
			{Enemy = "Fire Zombie", Count = 7, DelayBetweenSpawns = 2},
			{Enemy = "Toxic Zombie", Count = 2, DelayBetweenSpawns = 4},
		}
	},
	
	[22] = {
		CashReward = 110,
		Enemies = {
			{Enemy = "Ice Zombie", Count = 13, DelayBetweenSpawns = 1},
			{Enemy = "Fire Zombie", Count = 8, DelayBetweenSpawns = 2},
			{Enemy = "Toxic Zombie", Count = 3, DelayBetweenSpawns = 4},
		}
	},
	
	[23] = {
		CashReward = 115,
		Enemies = {
			{Enemy = "Ice Zombie", Count = 14, DelayBetweenSpawns = 1},
			{Enemy = "Fire Zombie", Count = 9, DelayBetweenSpawns = 2},
			{Enemy = "Toxic Zombie", Count = 4, DelayBetweenSpawns = 4},
		}
	},
	
	[24] = {
		CashReward = 120,
		Enemies = {
			{Enemy = "Ice Zombie", Count = 15, DelayBetweenSpawns = 1},
			{Enemy = "Fire Zombie", Count = 10, DelayBetweenSpawns = 2},
			{Enemy = "Toxic Zombie", Count = 5, DelayBetweenSpawns = 4},
		}
	},

	[25] = {
		CashReward = 125,
		IsBossWave = true,
		UnlocksStartingWave = 20,
		BossImageId = "rbxassetid://121107085551812",
		Enemies = {
			{Enemy = "Drooling Zombie", Count = 1, DelayBetweenSpawns = 0},
		}
	},
	
	[26] = {
		CashReward = 130,
		Enemies = {
			{Enemy = "Normal Alien", Count = 2, DelayBetweenSpawns = 1},
		}
	},

	[27] = {
		CashReward = 135,
		Enemies = {
			{Enemy = "Normal Alien", Count = 3, DelayBetweenSpawns = 1},
		}
	},

	[28] = {
		CashReward = 140,
		Enemies = {
			{Enemy = "Normal Alien", Count = 4, DelayBetweenSpawns = 1},
		}
	},

	[29] = {
		CashReward = 145,
		Enemies = {
			{Enemy = "Normal Alien", Count = 5, DelayBetweenSpawns = 1},
		}
	},

	[30] = {
		CashReward = 150,
		UnlocksStartingWave = 25,
		Enemies = {
			{Enemy = "Normal Alien", Count = 6, DelayBetweenSpawns = 1},
			{Enemy = "Ghost Alien", Count = 1, DelayBetweenSpawns = 2},
		}
	},

	[31] = {
		CashReward = 155,
		Enemies = {
			{Enemy = "Normal Alien", Count = 7, DelayBetweenSpawns = 1},
			{Enemy = "Ghost Alien", Count = 2, DelayBetweenSpawns = 2},
		}
	},

	[32] = {
		CashReward = 160,
		Enemies = {
			{Enemy = "Normal Alien", Count = 8, DelayBetweenSpawns = 1},
			{Enemy = "Ghost Alien", Count = 3, DelayBetweenSpawns = 2},
		}
	},

	[33] = {
		CashReward = 165,
		Enemies = {
			{Enemy = "Normal Alien", Count = 9, DelayBetweenSpawns = 1},
			{Enemy = "Ghost Alien", Count = 4, DelayBetweenSpawns = 2},
		}
	},

	[34] = {
		CashReward = 170,
		Enemies = {
			{Enemy = "Normal Alien", Count = 10, DelayBetweenSpawns = 1},
			{Enemy = "Ghost Alien", Count = 5, DelayBetweenSpawns = 2},
		}
	},

	[35] = {
		CashReward = 175,
		UnlocksStartingWave = 30,
		Enemies = {
			{Enemy = "Normal Alien", Count = 11, DelayBetweenSpawns = 1},
			{Enemy = "Ghost Alien", Count = 6, DelayBetweenSpawns = 2},
			{Enemy = "Ice Alien", Count = 1, DelayBetweenSpawns = 4},
		}
	},

	[36] = {
		CashReward = 180,
		Enemies = {
			{Enemy = "Normal Alien", Count = 12, DelayBetweenSpawns = 1},
			{Enemy = "Ghost Alien", Count = 7, DelayBetweenSpawns = 2},
			{Enemy = "Ice Alien", Count = 2, DelayBetweenSpawns = 4},
		}
	},

	[37] = {
		CashReward = 185,
		Enemies = {
			{Enemy = "Normal Alien", Count = 13, DelayBetweenSpawns = 1},
			{Enemy = "Ghost Alien", Count = 8, DelayBetweenSpawns = 2},
			{Enemy = "Ice Alien", Count = 3, DelayBetweenSpawns = 4},
		}
	},

	[38] = {
		CashReward = 190,
		Enemies = {
			{Enemy = "Normal Alien", Count = 14, DelayBetweenSpawns = 1},
			{Enemy = "Ghost Alien", Count = 9, DelayBetweenSpawns = 2},
			{Enemy = "Ice Alien", Count = 4, DelayBetweenSpawns = 4},
		}
	},

	[39] = {
		CashReward = 195,
		Enemies = {
			{Enemy = "Normal Alien", Count = 15, DelayBetweenSpawns = 1},
			{Enemy = "Ghost Alien", Count = 10, DelayBetweenSpawns = 2},
			{Enemy = "Ice Alien", Count = 5, DelayBetweenSpawns = 4},
		}
	},

	[40] = {
		CashReward = 200,
		UnlocksStartingWave = 35,
		Enemies = {
			{Enemy = "Ghost Alien", Count = 11, DelayBetweenSpawns = 1},
			{Enemy = "Ice Alien", Count = 6, DelayBetweenSpawns = 2},
			{Enemy = "Fire Alien", Count = 1, DelayBetweenSpawns = 4},
		}
	},

	[41] = {
		CashReward = 205,
		Enemies = {
			{Enemy = "Ghost Alien", Count = 12, DelayBetweenSpawns = 1},
			{Enemy = "Ice Alien", Count = 7, DelayBetweenSpawns = 2},
			{Enemy = "Fire Alien", Count = 2, DelayBetweenSpawns = 4},
		}
	},

	[42] = {
		CashReward = 210,
		Enemies = {
			{Enemy = "Ghost Alien", Count = 13, DelayBetweenSpawns = 1},
			{Enemy = "Ice Alien", Count = 8, DelayBetweenSpawns = 2},
			{Enemy = "Fire Alien", Count = 3, DelayBetweenSpawns = 4},
		}
	},

	[43] = {
		CashReward = 215,
		Enemies = {
			{Enemy = "Ghost Alien", Count = 14, DelayBetweenSpawns = 1},
			{Enemy = "Ice Alien", Count = 9, DelayBetweenSpawns = 2},
			{Enemy = "Fire Alien", Count = 4, DelayBetweenSpawns = 4},
		}
	},

	[44] = {
		CashReward = 220,
		Enemies = {
			{Enemy = "Ghost Alien", Count = 15, DelayBetweenSpawns = 1},
			{Enemy = "Ice Alien", Count = 10, DelayBetweenSpawns = 2},
			{Enemy = "Fire Alien", Count = 5, DelayBetweenSpawns = 4},
		}
	},

	[45] = {
		CashReward = 225,
		UnlocksStartingWave = 40,
		Enemies = {
			{Enemy = "Ice Alien", Count = 11, DelayBetweenSpawns = 1},
			{Enemy = "Fire Alien", Count = 6, DelayBetweenSpawns = 2},
			{Enemy = "Night Alien", Count = 1, DelayBetweenSpawns = 4},
		}
	},

	[46] = {
		CashReward = 230,
		Enemies = {
			{Enemy = "Ice Alien", Count = 12, DelayBetweenSpawns = 1},
			{Enemy = "Fire Alien", Count = 7, DelayBetweenSpawns = 2},
			{Enemy = "Night Alien", Count = 2, DelayBetweenSpawns = 4},
		}
	},

	[47] = {
		CashReward = 235,
		Enemies = {
			{Enemy = "Ice Alien", Count = 13, DelayBetweenSpawns = 1},
			{Enemy = "Fire Alien", Count = 8, DelayBetweenSpawns = 2},
			{Enemy = "Night Alien", Count = 3, DelayBetweenSpawns = 4},
		}
	},

	[48] = {
		CashReward = 240,
		Enemies = {
			{Enemy = "Ice Alien", Count = 14, DelayBetweenSpawns = 1},
			{Enemy = "Fire Alien", Count = 9, DelayBetweenSpawns = 2},
			{Enemy = "Night Alien", Count = 4, DelayBetweenSpawns = 4},
		}
	},

	[49] = {
		CashReward = 245,
		Enemies = {
			{Enemy = "Ice Alien", Count = 15, DelayBetweenSpawns = 1},
			{Enemy = "Fire Alien", Count = 10, DelayBetweenSpawns = 2},
			{Enemy = "Night Alien", Count = 5, DelayBetweenSpawns = 4},
		}
	},

	[50] = {
		CashReward = 250,
		IsBossWave = true,
		UnlocksStartingWave = 45,
		BossImageId = "rbxassetid://120006972104396",
		Enemies = {
			{Enemy = "King Alien", Count = 1, DelayBetweenSpawns = 0},
		}
	},
	
	[51] = {
		CashReward = 255,
		Enemies = {
			{Enemy = "Storm Trooper", Count = 2, DelayBetweenSpawns = 1},
		}
	},

	[52] = {
		CashReward = 260,
		Enemies = {
			{Enemy = "Storm Trooper", Count = 3, DelayBetweenSpawns = 1},
		}
	},

	[53] = {
		CashReward = 265,
		Enemies = {
			{Enemy = "Storm Trooper", Count = 4, DelayBetweenSpawns = 1},
		}
	},

	[54] = {
		CashReward = 270,
		Enemies = {
			{Enemy = "Storm Trooper", Count = 5, DelayBetweenSpawns = 1},
		}
	},

	[55] = {
		CashReward = 275,
		UnlocksStartingWave = 50,
		Enemies = {
			{Enemy = "Storm Trooper", Count = 6, DelayBetweenSpawns = 1},
			{Enemy = "Scout Trooper", Count = 1, DelayBetweenSpawns = 2},
		}
	},

	[56] = {
		CashReward = 280,
		Enemies = {
			{Enemy = "Storm Trooper", Count = 7, DelayBetweenSpawns = 1},
			{Enemy = "Scout Trooper", Count = 2, DelayBetweenSpawns = 2},
		}
	},

	[57] = {
		CashReward = 285,
		Enemies = {
			{Enemy = "Storm Trooper", Count = 8, DelayBetweenSpawns = 1},
			{Enemy = "Scout Trooper", Count = 3, DelayBetweenSpawns = 2},
		}
	},

	[58] = {
		CashReward = 290,
		Enemies = {
			{Enemy = "Storm Trooper", Count = 9, DelayBetweenSpawns = 1},
			{Enemy = "Scout Trooper", Count = 4, DelayBetweenSpawns = 2},
		}
	},

	[59] = {
		CashReward = 295,
		Enemies = {
			{Enemy = "Storm Trooper", Count = 10, DelayBetweenSpawns = 1},
			{Enemy = "Scout Trooper", Count = 5, DelayBetweenSpawns = 2},
		}
	},

	[60] = {
		CashReward = 300,
		UnlocksStartingWave = 55,
		Enemies = {
			{Enemy = "Storm Trooper", Count = 11, DelayBetweenSpawns = 1},
			{Enemy = "Scout Trooper", Count = 6, DelayBetweenSpawns = 2},
			{Enemy = "Star Corps", Count = 1, DelayBetweenSpawns = 4},
		}
	},

	[61] = {
		CashReward = 305,
		Enemies = {
			{Enemy = "Storm Trooper", Count = 12, DelayBetweenSpawns = 1},
			{Enemy = "Scout Trooper", Count = 7, DelayBetweenSpawns = 2},
			{Enemy = "Star Corps", Count = 2, DelayBetweenSpawns = 4},
		}
	},

	[62] = {
		CashReward = 310,
		Enemies = {
			{Enemy = "Storm Trooper", Count = 13, DelayBetweenSpawns = 1},
			{Enemy = "Scout Trooper", Count = 8, DelayBetweenSpawns = 2},
			{Enemy = "Star Corps", Count = 3, DelayBetweenSpawns = 4},
		}
	},

	[63] = {
		CashReward = 315,
		Enemies = {
			{Enemy = "Storm Trooper", Count = 14, DelayBetweenSpawns = 1},
			{Enemy = "Scout Trooper", Count = 9, DelayBetweenSpawns = 2},
			{Enemy = "Star Corps", Count = 4, DelayBetweenSpawns = 4},
		}
	},

	[64] = {
		CashReward = 320,
		Enemies = {
			{Enemy = "Storm Trooper", Count = 15, DelayBetweenSpawns = 1},
			{Enemy = "Scout Trooper", Count = 10, DelayBetweenSpawns = 2},
			{Enemy = "Star Corps", Count = 5, DelayBetweenSpawns = 4},
		}
	},

	[65] = {
		CashReward = 325,
		UnlocksStartingWave = 60,
		Enemies = {
			{Enemy = "Scout Trooper", Count = 11, DelayBetweenSpawns = 1},
			{Enemy = "Star Corps", Count = 6, DelayBetweenSpawns = 2},
			{Enemy = "Royal Guard", Count = 1, DelayBetweenSpawns = 4},
		}
	},

	[66] = {
		CashReward = 330,
		Enemies = {
			{Enemy = "Scout Trooper", Count = 12, DelayBetweenSpawns = 1},
			{Enemy = "Star Corps", Count = 7, DelayBetweenSpawns = 2},
			{Enemy = "Royal Guard", Count = 2, DelayBetweenSpawns = 4},
		}
	},

	[67] = {
		CashReward = 335,
		Enemies = {
			{Enemy = "Scout Trooper", Count = 13, DelayBetweenSpawns = 1},
			{Enemy = "Star Corps", Count = 8, DelayBetweenSpawns = 2},
			{Enemy = "Royal Guard", Count = 3, DelayBetweenSpawns = 4},
		}
	},

	[68] = {
		CashReward = 340,
		Enemies = {
			{Enemy = "Scout Trooper", Count = 14, DelayBetweenSpawns = 1},
			{Enemy = "Star Corps", Count = 9, DelayBetweenSpawns = 2},
			{Enemy = "Royal Guard", Count = 4, DelayBetweenSpawns = 4},
		}
	},

	[69] = {
		CashReward = 345,
		Enemies = {
			{Enemy = "Scout Trooper", Count = 15, DelayBetweenSpawns = 1},
			{Enemy = "Star Corps", Count = 10, DelayBetweenSpawns = 2},
			{Enemy = "Royal Guard", Count = 5, DelayBetweenSpawns = 4},
		}
	},

	[70] = {
		CashReward = 350,
		UnlocksStartingWave = 65,
		Enemies = {
			{Enemy = "Star Corps", Count = 11, DelayBetweenSpawns = 1},
			{Enemy = "Royal Guard", Count = 6, DelayBetweenSpawns = 2},
			{Enemy = "Emperor Palpatine", Count = 1, DelayBetweenSpawns = 4},
		}
	},

	[71] = {
		CashReward = 355,
		Enemies = {
			{Enemy = "Star Corps", Count = 12, DelayBetweenSpawns = 1},
			{Enemy = "Royal Guard", Count = 7, DelayBetweenSpawns = 2},
			{Enemy = "Emperor Palpatine", Count = 2, DelayBetweenSpawns = 4},
		}
	},

	[72] = {
		CashReward = 360,
		Enemies = {
			{Enemy = "Star Corps", Count = 13, DelayBetweenSpawns = 1},
			{Enemy = "Royal Guard", Count = 8, DelayBetweenSpawns = 2},
			{Enemy = "Emperor Palpatine", Count = 3, DelayBetweenSpawns = 4},
		}
	},

	[73] = {
		CashReward = 365,
		Enemies = {
			{Enemy = "Star Corps", Count = 14, DelayBetweenSpawns = 1},
			{Enemy = "Royal Guard", Count = 9, DelayBetweenSpawns = 2},
			{Enemy = "Emperor Palpatine", Count = 4, DelayBetweenSpawns = 4},
		}
	},

	[74] = {
		CashReward = 370,
		Enemies = {
			{Enemy = "Star Corps", Count = 15, DelayBetweenSpawns = 1},
			{Enemy = "Royal Guard", Count = 10, DelayBetweenSpawns = 2},
			{Enemy = "Emperor Palpatine", Count = 5, DelayBetweenSpawns = 4},
		}
	},

	[75] = {
		CashReward = 375,
		IsBossWave = true,
		UnlocksStartingWave = 70,
		BossImageId = "rbxassetid://94361686895245",
		Enemies = {
			{Enemy = "Darth Vader", Count = 1, DelayBetweenSpawns = 0},
		}
	},


	[76] = {
		CashReward = 380,
		Enemies = {
			{Enemy = "Prisoner Noob", Count = 2, DelayBetweenSpawns = 1},
		}
	},

	[77] = {
		CashReward = 385,
		Enemies = {
			{Enemy = "Prisoner Noob", Count = 3, DelayBetweenSpawns = 1},
		}
	},

	[78] = {
		CashReward = 390,
		Enemies = {
			{Enemy = "Prisoner Noob", Count = 4, DelayBetweenSpawns = 1},
		}
	},

	[79] = {
		CashReward = 395,
		Enemies = {
			{Enemy = "Prisoner Noob", Count = 5, DelayBetweenSpawns = 1},
		}
	},

	[80] = {
		CashReward = 400,
		UnlocksStartingWave = 75,
		Enemies = {
			{Enemy = "Prisoner Noob", Count = 6, DelayBetweenSpawns = 1},
			{Enemy = "Prisoner Thug", Count = 1, DelayBetweenSpawns = 2},
		}
	},

	[81] = {
		CashReward = 405,
		Enemies = {
			{Enemy = "Prisoner Noob", Count = 7, DelayBetweenSpawns = 1},
			{Enemy = "Prisoner Thug", Count = 2, DelayBetweenSpawns = 2},
		}
	},

	[82] = {
		CashReward = 410,
		Enemies = {
			{Enemy = "Prisoner Noob", Count = 8, DelayBetweenSpawns = 1},
			{Enemy = "Prisoner Thug", Count = 3, DelayBetweenSpawns = 2},
		}
	},

	[83] = {
		CashReward = 415,
		Enemies = {
			{Enemy = "Prisoner Noob", Count = 9, DelayBetweenSpawns = 1},
			{Enemy = "Prisoner Thug", Count = 4, DelayBetweenSpawns = 2},
		}
	},

	[84] = {
		CashReward = 420,
		Enemies = {
			{Enemy = "Prisoner Noob", Count = 10, DelayBetweenSpawns = 1},
			{Enemy = "Prisoner Thug", Count = 5, DelayBetweenSpawns = 2},
		}
	},

	[85] = {
		CashReward = 425,
		UnlocksStartingWave = 80,
		Enemies = {
			{Enemy = "Prisoner Noob", Count = 11, DelayBetweenSpawns = 1},
			{Enemy = "Prisoner Thug", Count = 6, DelayBetweenSpawns = 2},
			{Enemy = "Prisoner Clown", Count = 1, DelayBetweenSpawns = 4},
		}
	},

	[86] = {
		CashReward = 430,
		Enemies = {
			{Enemy = "Prisoner Noob", Count = 12, DelayBetweenSpawns = 1},
			{Enemy = "Prisoner Thug", Count = 7, DelayBetweenSpawns = 2},
			{Enemy = "Prisoner Clown", Count = 2, DelayBetweenSpawns = 4},
		}
	},

	[87] = {
		CashReward = 435,
		Enemies = {
			{Enemy = "Prisoner Noob", Count = 13, DelayBetweenSpawns = 1},
			{Enemy = "Prisoner Thug", Count = 8, DelayBetweenSpawns = 2},
			{Enemy = "Prisoner Clown", Count = 3, DelayBetweenSpawns = 4},
		}
	},

	[88] = {
		CashReward = 440,
		Enemies = {
			{Enemy = "Prisoner Noob", Count = 14, DelayBetweenSpawns = 1},
			{Enemy = "Prisoner Thug", Count = 9, DelayBetweenSpawns = 2},
			{Enemy = "Prisoner Clown", Count = 4, DelayBetweenSpawns = 4},
		}
	},

	[89] = {
		CashReward = 445,
		Enemies = {
			{Enemy = "Prisoner Noob", Count = 15, DelayBetweenSpawns = 1},
			{Enemy = "Prisoner Thug", Count = 10, DelayBetweenSpawns = 2},
			{Enemy = "Prisoner Clown", Count = 5, DelayBetweenSpawns = 4},
		}
	},

	[90] = {
		CashReward = 450,
		UnlocksStartingWave = 85,
		Enemies = {
			{Enemy = "Prisoner Thug", Count = 11, DelayBetweenSpawns = 1},
			{Enemy = "Prisoner Clown", Count = 6, DelayBetweenSpawns = 2},
			{Enemy = "Prisoner Monster", Count = 1, DelayBetweenSpawns = 4},
		}
	},

	[91] = {
		CashReward = 455,
		Enemies = {
			{Enemy = "Prisoner Thug", Count = 12, DelayBetweenSpawns = 1},
			{Enemy = "Prisoner Clown", Count = 7, DelayBetweenSpawns = 2},
			{Enemy = "Prisoner Monster", Count = 2, DelayBetweenSpawns = 4},
		}
	},

	[92] = {
		CashReward = 460,
		Enemies = {
			{Enemy = "Prisoner Thug", Count = 13, DelayBetweenSpawns = 1},
			{Enemy = "Prisoner Clown", Count = 8, DelayBetweenSpawns = 2},
			{Enemy = "Prisoner Monster", Count = 3, DelayBetweenSpawns = 4},
		}
	},

	[93] = {
		CashReward = 465,
		Enemies = {
			{Enemy = "Prisoner Thug", Count = 14, DelayBetweenSpawns = 1},
			{Enemy = "Prisoner Clown", Count = 9, DelayBetweenSpawns = 2},
			{Enemy = "Prisoner Monster", Count = 4, DelayBetweenSpawns = 4},
		}
	},

	[94] = {
		CashReward = 470,
		Enemies = {
			{Enemy = "Prisoner Thug", Count = 15, DelayBetweenSpawns = 1},
			{Enemy = "Prisoner Clown", Count = 10, DelayBetweenSpawns = 2},
			{Enemy = "Prisoner Monster", Count = 5, DelayBetweenSpawns = 4},
		}
	},

	[95] = {
		CashReward = 475,
		UnlocksStartingWave = 90,
		Enemies = {
			{Enemy = "Prisoner Clown", Count = 11, DelayBetweenSpawns = 1},
			{Enemy = "Prisoner Monster", Count = 6, DelayBetweenSpawns = 2},
			{Enemy = "Weird Prisoner", Count = 1, DelayBetweenSpawns = 4},
		}
	},

	[96] = {
		CashReward = 480,
		Enemies = {
			{Enemy = "Prisoner Clown", Count = 12, DelayBetweenSpawns = 1},
			{Enemy = "Prisoner Monster", Count = 7, DelayBetweenSpawns = 2},
			{Enemy = "Weird Prisoner", Count = 2, DelayBetweenSpawns = 4},
		}
	},

	[97] = {
		CashReward = 485,
		Enemies = {
			{Enemy = "Prisoner Clown", Count = 13, DelayBetweenSpawns = 1},
			{Enemy = "Prisoner Monster", Count = 8, DelayBetweenSpawns = 2},
			{Enemy = "Weird Prisoner", Count = 3, DelayBetweenSpawns = 4},
		}
	},

	[98] = {
		CashReward = 490,
		Enemies = {
			{Enemy = "Prisoner Clown", Count = 14, DelayBetweenSpawns = 1},
			{Enemy = "Prisoner Monster", Count = 9, DelayBetweenSpawns = 2},
			{Enemy = "Weird Prisoner", Count = 4, DelayBetweenSpawns = 4},
		}
	},

	[99] = {
		CashReward = 495,
		Enemies = {
			{Enemy = "Prisoner Clown", Count = 15, DelayBetweenSpawns = 1},
			{Enemy = "Prisoner Monster", Count = 10, DelayBetweenSpawns = 2},
			{Enemy = "Weird Prisoner", Count = 5, DelayBetweenSpawns = 4},
		}
	},

	[100] = {
		CashReward = 500,
		IsBossWave = true,
		UnlocksStartingWave = 95,
		BossImageId = "rbxassetid://94361686895245",
		Enemies = {
			{Enemy = "Guest Prisoner", Count = 1, DelayBetweenSpawns = 0},
		}
	},
}

return WaveConfigurations