--!strict
-- Candy Kingdom: all enemies used by this theme's 100 waves.
local EnemyConfigurations = {

	-- Family 1: Sugarling (waves 201-225)
	["Sugarling_SugarSprinkle"] = { DisplayName = "Sugar Sprinkle", Family = "Sugarling", CashReward = 6, MaxHealth = 3200, Damage = 25 },
	["Sugarling_GumdropHopper"] = { DisplayName = "Gumdrop Hopper", Family = "Sugarling", CashReward = 11, MaxHealth = 5504, Damage = 37 },
	["Sugarling_WaferWalker"] = { DisplayName = "Wafer Walker", Family = "Sugarling", CashReward = 19, MaxHealth = 9467, Damage = 49 },
	["Sugarling_CandyCaneGuard"] = { DisplayName = "Candy Cane Guard", Family = "Sugarling", CashReward = 32, MaxHealth = 16283, Damage = 62 },
	["Sugarling_NougatCrusher"] = { DisplayName = "Nougat Crusher", Family = "Sugarling", CashReward = 55, MaxHealth = 28007, Damage = 74 },
	["Sugarling_BaronBonbon"] = { DisplayName = "Baron Bonbon", Family = "Sugarling", IsBoss = true, CashReward = 4714, MaxHealth = 320000, Damage = 123 },

	-- Family 2: Chocolate (waves 226-250)
	["Chocolate_CocoaDrip"] = { DisplayName = "Cocoa Drip", Family = "Chocolate", CashReward = 95, MaxHealth = 48172, Damage = 86 },
	["Chocolate_TruffleTumbler"] = { DisplayName = "Truffle Tumbler", Family = "Chocolate", CashReward = 163, MaxHealth = 82855, Damage = 98 },
	["Chocolate_FudgeKnight"] = { DisplayName = "Fudge Knight", Family = "Chocolate", CashReward = 280, MaxHealth = 142511, Damage = 111 },
	["Chocolate_DarkCocoaBeast"] = { DisplayName = "Dark Cocoa Beast", Family = "Chocolate", CashReward = 481, MaxHealth = 245119, Damage = 123 },
	["Chocolate_ChocolateGolem"] = { DisplayName = "Chocolate Golem", Family = "Chocolate", CashReward = 828, MaxHealth = 421605, Damage = 135 },
	["Chocolate_DuchessGanache"] = { DisplayName = "Duchess Ganache", Family = "Chocolate", IsBoss = true, CashReward = 33941, MaxHealth = 2304000, Damage = 246 },

	-- Family 3: Sour (waves 251-275)
	["Sour_SourBlob"] = { DisplayName = "Sour Blob", Family = "Sour", CashReward = 1424, MaxHealth = 725161, Damage = 148 },
	["Sour_CitrusSnapper"] = { DisplayName = "Citrus Snapper", Family = "Sour", CashReward = 2450, MaxHealth = 1247277, Damage = 160 },
	["Sour_FizzingFiend"] = { DisplayName = "Fizzing Fiend", Family = "Sour", CashReward = 4214, MaxHealth = 2145316, Damage = 172 },
	["Sour_AcidGummy"] = { DisplayName = "Acid Gummy", Family = "Sour", CashReward = 7248, MaxHealth = 3689944, Damage = 185 },
	["Sour_SourjawColossus"] = { DisplayName = "Sourjaw Colossus", Family = "Sour", CashReward = 12466, MaxHealth = 6346704, Damage = 197 },
	["Sour_TheTartTyrant"] = { DisplayName = "The Tart Tyrant", Family = "Sour", IsBoss = true, CashReward = 244376, MaxHealth = 16588800, Damage = 369 },

	-- Family 4: Royal Confection (waves 276-300)
	["RoyalConfection_MarzipanPage"] = { DisplayName = "Marzipan Page", Family = "Royal Confection", CashReward = 21442, MaxHealth = 10916331, Damage = 209 },
	["RoyalConfection_RoyalJellyGuard"] = { DisplayName = "Royal Jelly Guard", Family = "Royal Confection", CashReward = 36880, MaxHealth = 18776089, Damage = 222 },
	["RoyalConfection_CaramelCavalier"] = { DisplayName = "Caramel Cavalier", Family = "Royal Confection", CashReward = 63433, MaxHealth = 32294873, Damage = 234 },
	["RoyalConfection_PralineChampion"] = { DisplayName = "Praline Champion", Family = "Royal Confection", CashReward = 109105, MaxHealth = 55547181, Damage = 246 },
	["RoyalConfection_FondantTitan"] = { DisplayName = "Fondant Titan", Family = "Royal Confection", CashReward = 187661, MaxHealth = 95541151, Damage = 259 },
	["RoyalConfection_EmperorEverlasting"] = { DisplayName = "Emperor Everlasting", Family = "Royal Confection", IsBoss = true, CashReward = 1759508, MaxHealth = 119439360, Damage = 492 },
}

return EnemyConfigurations
