--!strict
-- This module contains data for each enemy type.

local EnemyConfigurations = {
	["Normal Zombie"] = {
		CashReward = 1,
		MaxHealth = 100,
		Damage = 10,
	},
	["Ghost Zombie"] = {
		CashReward = 2,
		MaxHealth = 125,
		Damage = 15,
	},
	["Ice Zombie"] = {
		CashReward = 3,
		MaxHealth = 250,
		Damage = 20,
	},
	["Fire Zombie"] = {
		CashReward = 4,
		MaxHealth = 500,
		Damage = 25,
	},
	["Toxic Zombie"] = {
		CashReward = 5,
		MaxHealth = 1000,
		Damage = 30,
	},
	-- BOSS
	["Drooling Zombie"] = {
		CashReward = 1000,
		MaxHealth = 10000,
		Damage = 50,
	},

	["Normal Alien"] = {
		CashReward = 5,
		MaxHealth = 1000,
		Damage = 35,
	},
	
	["Ghost Alien"] = {
		CashReward = 10,
		MaxHealth = 2000,
		Damage = 40,
	},
	
	["Ice Alien"] = {
		CashReward = 15,
		MaxHealth = 3500,
		Damage = 45,
	},
	
	["Fire Alien"] = {
		CashReward = 20,
		MaxHealth = 5000,
		Damage = 50,
	},
	
	["Night Alien"] = {
		CashReward = 25,
		MaxHealth = 7500,
		Damage = 55,
	},
	-- BOSS
	["King Alien"] = {
		CashReward = 7500,
		MaxHealth = 75000,
		Damage = 100,
	},
	
	["Storm Trooper"] = {
		CashReward = 25,
		MaxHealth = 10000,
		Damage = 60,
	},

	["Scout Trooper"] = {
		CashReward = 30,
		MaxHealth = 15000,
		Damage = 65,
	},

	["Star Corps"] = {
		CashReward = 35,
		MaxHealth = 22500,
		Damage = 70,
	},

	["Royal Guard"] = {
		CashReward = 40,
		MaxHealth = 35000,
		Damage = 75,
	},

	["Emperor Palpatine"] = {
		CashReward = 50,
		MaxHealth = 50000,
		Damage = 80,
	},
	-- BOSS
	["Darth Vader"] = {
		CashReward = 50000,
		MaxHealth = 500000,
		Damage = 150,
	},
	
	["Prisoner Noob"] = {
		CashReward = 50,
		MaxHealth = 25000,
		Damage = 85,
	},

	["Prisoner Thug"] = {
		CashReward = 75,
		MaxHealth = 37500,
		Damage = 90,
	},

	["Prisoner Clown"] = {
		CashReward = 100,
		MaxHealth = 50000,
		Damage = 95,
	},

	["Prisoner Monster"] = {
		CashReward = 125,
		MaxHealth = 75000,
		Damage = 100,
	},

	["Weird Prisoner"] = {
		CashReward = 150,
		MaxHealth = 100000,
		Damage = 105,
	},
	-- BOSS
	["Guest Prisoner"] = {
		CashReward = 100000,
		MaxHealth = 1000000,
		Damage = 200,
	},
}

return EnemyConfigurations