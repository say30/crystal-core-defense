--!strict
-- This module contains data for all crates and weapons.

local WeaponConfigurations = {
	--RESTOCKS
	ShopProducts = {
		RestockBlocksShop = { ProductID = 3414562773}, -- Use your new DevProduct ID here
		RestockWeaponsShop = { ProductID = 3419179869}, -- Use your new DevProduct ID here
	},
	--CASH
	CashProducts = {
		Product1 = { ProductID = 3420017396, CashAmount = 1000 },
		Product2 = { ProductID = 3420017612, CashAmount = 4000 },
		Product3 = { ProductID = 3420017966, CashAmount = 12000 },
		Product4 = { ProductID = 3420018252, CashAmount = 60000 },
	},
	--CRATES
	Crates = {
		--ROBUX
		GoldCrate = {
			DisplayName = "Gold Crate",
			ImageId = "rbxassetid://78132678043082",
			ProductID = 3419147362,
			Loot = {
				{Item = "GoldSword", Weight = 30},
				{Item = "GoldClassic", Weight = 20},
				{Item = "GoldIce", Weight = 15},
				{Item = "GoldAzure", Weight = 7.5},
			}
		},
		--SHOP
		WoodCrate = {
			DisplayName = "Wood Crate",
			Price = 600,
			ImageId = "rbxassetid://98370866657355",
			ProductID = 3419147572,
			SkipTimerProductID = 3419179495,
			Unlimited = false,
			Chance = 100,
			StockAmount = {Min = 1, Max = 5},
			UnlockTime = 60,
			Loot = {
				{Item = "StoneSword", Weight = 40},
				{Item = "ClassicSword", Weight = 25},
				{Item = "WhiteSword", Weight = 10},
			}
		},
		MetalCrate = {
			DisplayName = "Metal Crate",
			Price = 4000,
			ImageId = "rbxassetid://75275480502344",
			ProductID = 3419147682,
			SkipTimerProductID = 3419179605,
			Unlimited = false,
			Chance = 100,
			StockAmount = {Min = 1, Max = 4},
			UnlockTime = 300,
			Loot = {
				{Item = "BlueSword", Weight = 30},
				{Item = "IceSword", Weight = 20},
				{Item = "AzureSword", Weight = 15},
				{Item = "PinkSword", Weight = 7.5},
			}
		},
		LavaCrate = {
			DisplayName = "Lava Crate",
			Price = 15000,
			ImageId = "rbxassetid://97803069518831",
			ProductID = 3419147791,
			SkipTimerProductID = 3419179747,
			Unlimited = false,
			Chance = 100,
			StockAmount = {Min = 1, Max = 3},
			UnlockTime = 900,
			Loot = {
				{Item = "OrangeSword", Weight = 40},
				{Item = "RedSword", Weight = 25},
				{Item = "DragonSword", Weight = 10},
			}
		},
	},

	Weapons = {
		--Starter
		WoodSword = { DisplayName = "Wood Sword", ImageId = "rbxassetid://126321981198719" },
		--Wood
		StoneSword = { DisplayName = "Stone Sword", ImageId = "rbxassetid://98850338938642" },
		ClassicSword = { DisplayName = "Classic Sword", ImageId = "rbxassetid://137083985660048" },
		WhiteSword = { DisplayName = "WhiteSword", ImageId = "rbxassetid://107209992307667" },
		--Metal
		BlueSword = { DisplayName = "Blue Sword", ImageId = "rbxassetid://106268955187746" },
		IceSword = { DisplayName = "Ice Sword", ImageId = "rbxassetid://86285408542421" },
		AzureSword = { DisplayName = "Azure Sword", ImageId = "rbxassetid://139447042654835" },
		PinkSword = { DisplayName = "Pink Sword", ImageId = "rbxassetid://123160254672400" },
		--Lava
		OrangeSword = { DisplayName = "Orange Sword", ImageId = "rbxassetid://127527435191865" },
		RedSword = { DisplayName = "Red Sword", ImageId = "rbxassetid://101443099194443" },
		DragonSword = { DisplayName = "Dragon Sword", ImageId = "rbxassetid://101415025341980" },
		--Gold
		GoldSword = { DisplayName = "Gold Sword", ImageId = "rbxassetid://122412629570696" },
		GoldClassic = { DisplayName = "Gold Classic", ImageId = "rbxassetid://94902355900831" },
		GoldIce = { DisplayName = "Gold Ice", ImageId = "rbxassetid://87139784295616" },
		GoldAzure = { DisplayName = "Gold Azure", ImageId = "rbxassetid://74018974426561" },
	}
}

return WeaponConfigurations