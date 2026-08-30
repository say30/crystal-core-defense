--!strict
-- Pirate Cove: all enemies used by this theme's 100 waves.
local EnemyConfigurations = {

	-- Family 1: Deckhand (waves 101-125)
	["Deckhand_BarnacleDeckhand"] = { DisplayName = "Barnacle Deckhand", Family = "Deckhand", CashReward = 3, MaxHealth = 600, Damage = 16 },
	["Deckhand_CutlassCorsair"] = { DisplayName = "Cutlass Corsair", Family = "Deckhand", CashReward = 5, MaxHealth = 1032, Damage = 24 },
	["Deckhand_PowderRunner"] = { DisplayName = "Powder Runner", Family = "Deckhand", CashReward = 8, MaxHealth = 1775, Damage = 32 },
	["Deckhand_ReefMarauder"] = { DisplayName = "Reef Marauder", Family = "Deckhand", CashReward = 14, MaxHealth = 3053, Damage = 40 },
	["Deckhand_IronhookBruiser"] = { DisplayName = "Ironhook Bruiser", Family = "Deckhand", CashReward = 24, MaxHealth = 5251, Damage = 48 },
	["Deckhand_CaptainBlacktide"] = { DisplayName = "Captain Blacktide", Family = "Deckhand", IsBoss = true, CashReward = 2041, MaxHealth = 60000, Damage = 80 },

	-- Family 2: Deepwater (waves 126-150)
	["Deepwater_TideCrawler"] = { DisplayName = "Tide Crawler", Family = "Deepwater", CashReward = 41, MaxHealth = 9032, Damage = 56 },
	["Deepwater_BrineSpecter"] = { DisplayName = "Brine Specter", Family = "Deepwater", CashReward = 70, MaxHealth = 15535, Damage = 64 },
	["Deepwater_HarpoonFiend"] = { DisplayName = "Harpoon Fiend", Family = "Deepwater", CashReward = 121, MaxHealth = 26721, Damage = 72 },
	["Deepwater_AbyssDiver"] = { DisplayName = "Abyss Diver", Family = "Deepwater", CashReward = 208, MaxHealth = 45960, Damage = 80 },
	["Deepwater_KrakenSpawn"] = { DisplayName = "Kraken Spawn", Family = "Deepwater", CashReward = 359, MaxHealth = 79051, Damage = 88 },
	["Deepwater_TheDrownedAdmiral"] = { DisplayName = "The Drowned Admiral", Family = "Deepwater", IsBoss = true, CashReward = 14697, MaxHealth = 432000, Damage = 159 },

	-- Family 3: Treasure (waves 151-175)
	["Treasure_CoinboundRogue"] = { DisplayName = "Coinbound Rogue", Family = "Treasure", CashReward = 617, MaxHealth = 135968, Damage = 96 },
	["Treasure_GildedGunner"] = { DisplayName = "Gilded Gunner", Family = "Treasure", CashReward = 1061, MaxHealth = 233864, Damage = 104 },
	["Treasure_RubyRaider"] = { DisplayName = "Ruby Raider", Family = "Treasure", CashReward = 1825, MaxHealth = 402247, Damage = 112 },
	["Treasure_CursedQuartermaster"] = { DisplayName = "Cursed Quartermaster", Family = "Treasure", CashReward = 3138, MaxHealth = 691865, Damage = 120 },
	["Treasure_VaultBreaker"] = { DisplayName = "Vault Breaker", Family = "Treasure", CashReward = 5398, MaxHealth = 1190007, Damage = 127 },
	["Treasure_KingoftheSunkenHoard"] = { DisplayName = "King of the Sunken Hoard", Family = "Treasure", IsBoss = true, CashReward = 105818, MaxHealth = 3110400, Damage = 239 },

	-- Family 4: Stormfleet (waves 176-200)
	["Stormfleet_GaleScout"] = { DisplayName = "Gale Scout", Family = "Stormfleet", CashReward = 9285, MaxHealth = 2046812, Damage = 135 },
	["Stormfleet_ThunderBuccaneer"] = { DisplayName = "Thunder Buccaneer", Family = "Stormfleet", CashReward = 15969, MaxHealth = 3520517, Damage = 143 },
	["Stormfleet_TempestCannoneer"] = { DisplayName = "Tempest Cannoneer", Family = "Stormfleet", CashReward = 27467, MaxHealth = 6055289, Damage = 151 },
	["Stormfleet_MaelstromReaver"] = { DisplayName = "Maelstrom Reaver", Family = "Stormfleet", CashReward = 47244, MaxHealth = 10415096, Damage = 159 },
	["Stormfleet_StormshipJuggernaut"] = { DisplayName = "Stormship Juggernaut", Family = "Stormfleet", CashReward = 81259, MaxHealth = 17913966, Damage = 167 },
	["Stormfleet_EmpressoftheEndlessGale"] = { DisplayName = "Empress of the Endless Gale", Family = "Stormfleet", IsBoss = true, CashReward = 761889, MaxHealth = 22394880, Damage = 319 },
}

return EnemyConfigurations
