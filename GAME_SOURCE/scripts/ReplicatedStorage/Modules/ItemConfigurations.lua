local ItemConfigurations = {
	--BLOCKS
	CardboardBlock = {
		DisplayName = "Cardboard Block",
		Type = "Blocks",
		Price = 25,
		ImageId = "rbxassetid://108677275289655",
		ProductID = 3473156755,
		Unlimited = false,
		Chance = 100,
		StockAmount = {Min = 1, Max = 7},
		Health = 50,
	},
	
	WoodBlock = {
		DisplayName = "Wood Block",
		Type = "Blocks",
		Price = 75,
		ImageId = "rbxassetid://97139355895875",
		ProductID = 3473156612,
		Unlimited = false,
		Chance = 80,
		StockAmount = {Min = 1, Max = 7},
		Health = 75,
	},
	
	SteelBlock = {
		DisplayName = "Steel Block",
		Type = "Blocks",
		Price = 150,
		ImageId = "rbxassetid://82043930176672",
		ProductID = 3473156401,
		Unlimited = false,
		Chance = 60,
		StockAmount = {Min = 1, Max = 7},
		Health = 100,
	},
	
	PlateBlock = {
		DisplayName = "Plate Block",
		Type = "Blocks",
		Price = 400,
		ImageId = "rbxassetid://85343695095718",
		ProductID = 3473156234,
		Unlimited = false,
		Chance = 40,
		StockAmount = {Min = 1, Max = 7},
		Health = 125,
	},
	
	ConcreteBlock = {
		DisplayName = "Concrete Block",
		Type = "Blocks",
		Price = 750,
		ImageId = "rbxassetid://79368078622624",
		ProductID = 3473155975,
		Unlimited = false,
		Chance = 30,
		StockAmount = {Min = 1, Max = 7},
		Health = 150,
	},
	
	CarbonBlock = {
		DisplayName = "Carbon Block",
		Type = "Blocks",
		Price = 1200,
		ImageId = "rbxassetid://93567618787148",
		ProductID = 3473155790,
		Unlimited = false,
		Chance = 20,
		StockAmount = {Min = 1, Max = 7},
		Health = 200,
	},
	
	LavaBlock = {
		DisplayName = "Lava Block",
		Type = "Blocks",
		Price = 2500,
		ImageId = "rbxassetid://134669945181506",
		ProductID = 3473155543,
		Unlimited = false,
		Chance = 10,
		StockAmount = {Min = 1, Max = 7},
		Health = 250,
	},

	--TURRETS
	OldTurret = {
		DisplayName = "Old Turret",
		Type = "Turrets",
		Price = 200,
		ImageId = "rbxassetid://79863737566861",
		ProductID = 3473154896,
		Unlimited = false,
		Chance = 100,
		StockAmount = {Min = 1, Max = 4},
		Damage = 50,
		Range = 30,
		FireRate = 2,
		Health = 100,
	},
	
	ModernTurret = {
		DisplayName = "Modern Turret",
		Type = "Turrets",
		Price = 500,
		ImageId = "rbxassetid://134127163464424",
		ProductID = 3473154762,
		Unlimited = false,
		Chance = 80,
		StockAmount = {Min = 1, Max = 4},
		Damage = 100,
		Range = 32.5,
		FireRate = 2,
		Health = 150,
	},
	
	LaserTurret = {
		DisplayName = "Laser Turret",
		Type = "Turrets",
		Price = 1000,
		ImageId = "rbxassetid://138810171314082",
		ProductID = 3473154575,
		Unlimited = false,
		Chance = 60,
		StockAmount = {Min = 1, Max = 4},
		Damage = 175,
		Range = 35,
		FireRate = 2,
		Health = 200,
	},
	
	ExtremeTurret = {
		DisplayName = "Extreme Turret",
		Type = "Turrets",
		Price = 2500,
		ImageId = "rbxassetid://120922630413741",
		ProductID = 3473154406,
		Unlimited = false,
		Chance = 40,
		StockAmount = {Min = 1, Max = 4},
		Damage = 250,
		Range = 37.5,
		FireRate = 2,
		Health = 250,
	},
	
	BunkerTurret = {
		DisplayName = "Bunker Turret",
		Type = "Turrets",
		Price = 4000,
		ImageId = "rbxassetid://110368994158233",
		ProductID = 3473154181,
		Unlimited = false,
		Chance = 30,
		StockAmount = {Min = 1, Max = 4},
		Damage = 400,
		Range = 40,
		FireRate = 2,
		Health = 300,
	},
	
	StarsTurret = {
		DisplayName = "Stars Turret",
		Type = "Turrets",
		Price = 7500,
		ImageId = "rbxassetid://90506924551302",
		ProductID = 3473153289,
		Unlimited = false,
		Chance = 20,
		StockAmount = {Min = 1, Max = 4},
		Damage = 700,
		Range = 42.5,
		FireRate = 2,
		Health = 350,
	},
	
	ToxicTurret = {
		DisplayName = "Toxic Turret",
		Type = "Turrets",
		Price = 15000,
		ImageId = "rbxassetid://79148208455816",
		ProductID = 3473152864,
		Unlimited = false,
		Chance = 10,
		StockAmount = {Min = 1, Max = 4},
		Damage = 1000,
		Range = 45,
		FireRate = 2,
		Health = 400,
	},
}

local LimitedItems = {
	LavaTurret = {
		DisplayName = "Lava Turret",
		Type = "Turrets",
		ImageId = "rbxassetid://118449394421886",
		ProductID = 3473152511, -- IMPORTANT: Replace with your new Dev Product ID
		Damage = 2500,
		Range = 45,
		FireRate = 2,
		Health = 500,
	}
}

return {
	LimitedItems = LimitedItems,
	ItemConfigurations = ItemConfigurations
}

