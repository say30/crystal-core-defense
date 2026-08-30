--!strict
-- Mars Colony: all enemies used by this theme's 100 waves.
local EnemyConfigurations = {

	-- Family 1: Dustborn (waves 401-425)
	["Dustborn_DustSkimmer"] = { DisplayName = "Dust Skimmer", Family = "Dustborn", CashReward = 33, MaxHealth = 90000, Damage = 59 },
	["Dustborn_RedDuneCrawler"] = { DisplayName = "Red Dune Crawler", Family = "Dustborn", CashReward = 57, MaxHealth = 154800, Damage = 88 },
	["Dustborn_SandglassRaider"] = { DisplayName = "Sandglass Raider", Family = "Dustborn", CashReward = 99, MaxHealth = 266256, Damage = 117 },
	["Dustborn_BasaltBrute"] = { DisplayName = "Basalt Brute", Family = "Dustborn", CashReward = 170, MaxHealth = 457960, Damage = 147 },
	["Dustborn_DuststormGiant"] = { DisplayName = "Duststorm Giant", Family = "Dustborn", CashReward = 292, MaxHealth = 787692, Damage = 176 },
	["Dustborn_TheCrimsonBurrower"] = { DisplayName = "The Crimson Burrower", Family = "Dustborn", IsBoss = true, CashReward = 25000, MaxHealth = 9000000, Damage = 293 },

	-- Family 2: Rogue Rover (waves 426-450)
	["RogueRover_SurveyDrone"] = { DisplayName = "Survey Drone", Family = "Rogue Rover", CashReward = 502, MaxHealth = 1354830, Damage = 205 },
	["RogueRover_BrokenRover"] = { DisplayName = "Broken Rover", Family = "Rogue Rover", CashReward = 863, MaxHealth = 2330307, Damage = 235 },
	["RogueRover_MiningAutomaton"] = { DisplayName = "Mining Automaton", Family = "Rogue Rover", CashReward = 1484, MaxHealth = 4008129, Damage = 264 },
	["RogueRover_SiegeExcavator"] = { DisplayName = "Siege Excavator", Family = "Rogue Rover", CashReward = 2553, MaxHealth = 6893981, Damage = 293 },
	["RogueRover_TerraformWrecker"] = { DisplayName = "Terraform Wrecker", Family = "Rogue Rover", CashReward = 4392, MaxHealth = 11857647, Damage = 322 },
	["RogueRover_PrimeDirectiveZero"] = { DisplayName = "Prime Directive Zero", Family = "Rogue Rover", IsBoss = true, CashReward = 180000, MaxHealth = 64800000, Damage = 586 },

	-- Family 3: Colony Renegade (waves 451-475)
	["ColonyRenegade_HabitatScavenger"] = { DisplayName = "Habitat Scavenger", Family = "Colony Renegade", CashReward = 7554, MaxHealth = 20395154, Damage = 352 },
	["ColonyRenegade_OxygenRaider"] = { DisplayName = "Oxygen Raider", Family = "Colony Renegade", CashReward = 12992, MaxHealth = 35079664, Damage = 381 },
	["ColonyRenegade_DomeSaboteur"] = { DisplayName = "Dome Saboteur", Family = "Colony Renegade", CashReward = 22347, MaxHealth = 60337022, Damage = 410 },
	["ColonyRenegade_ExosuitEnforcer"] = { DisplayName = "Exosuit Enforcer", Family = "Colony Renegade", CashReward = 38437, MaxHealth = 103779678, Damage = 440 },
	["ColonyRenegade_ColonyWarmachine"] = { DisplayName = "Colony Warmachine", Family = "Colony Renegade", CashReward = 66111, MaxHealth = 178501046, Damage = 469 },
	["ColonyRenegade_MarshalofRedDawn"] = { DisplayName = "Marshal of Red Dawn", Family = "Colony Renegade", IsBoss = true, CashReward = 1296000, MaxHealth = 466560000, Damage = 879 },

	-- Family 4: Solar Anomaly (waves 476-500)
	["SolarAnomaly_FlareWisp"] = { DisplayName = "Flare Wisp", Family = "Solar Anomaly", CashReward = 113712, MaxHealth = 307021800, Damage = 498 },
	["SolarAnomaly_RadiationPhantom"] = { DisplayName = "Radiation Phantom", Family = "Solar Anomaly", CashReward = 195584, MaxHealth = 528077495, Damage = 528 },
	["SolarAnomaly_CoronaBeast"] = { DisplayName = "Corona Beast", Family = "Solar Anomaly", CashReward = 336405, MaxHealth = 908293292, Damage = 557 },
	["SolarAnomaly_SolarRevenant"] = { DisplayName = "Solar Revenant", Family = "Solar Anomaly", CashReward = 578616, MaxHealth = 1562264462, Damage = 586 },
	["SolarAnomaly_HeliosTitan"] = { DisplayName = "Helios Titan", Family = "Solar Anomaly", CashReward = 995220, MaxHealth = 2687094875, Damage = 616 },
	["SolarAnomaly_TheRedSunIncarnate"] = { DisplayName = "The Red Sun Incarnate", Family = "Solar Anomaly", IsBoss = true, CashReward = 9331200, MaxHealth = 3359232000, Damage = 1173 },
}

return EnemyConfigurations
