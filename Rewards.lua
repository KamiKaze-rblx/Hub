local module = {
	SoloWorld = {
		Items = {
			-- Currency
			Coins = {
				Name = "Cash",
				Type = "Currency",
				Rarity = "Common",
				Order = 99,
				Icon = "<:ariseCoin1:1358100658388996216>"
			},
			Gems = {
				Name = "Gems",
				Type = "Currency",
				Rarity = "Common",
				Order = 98,
				Icon = "<:BlueGemPile:1357014156422811861>"
			},

			-- Weapons
			DualKando = {
				Name = "DualKando",
				Chance = 400,
				Type = "Weapons",
				Level = 2,
				Rarity = "Uncommon",
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:Igris:1358099382951739584>"
			},
			DualSteelNaginata = {
				Name = "DualSteelNaginata",
				Chance = 200,
				Type = "Weapons",
				Level = 2,
				Rarity = "Uncommon",
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:Igris:1358099382951739584>"
			},
			WyvernSlayer = {
				Name = "WyvernSlayer",
				Chance = 150,
				Type = "Weapons",
				Level = 3,
				Rarity = "Rare",
				OnlyBoss = true,
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:Igris:1358099382951739584>"
			},

			-- Boss Drops
			Igris = {
				Name = "Vermillion",
				Type = "Shadow",
				Rarity = "Epic",
				Order = -5993434,
				OnlyBoss = true,
				Icon = "<:Igris:1358099382951739584>"
			},

			-- Runes
			DgSoloRune = {
				Name = "DgSoloRune",
				Chance = 30,
				Type = "Items",
				Rarity = "Rare",
				Icon = "<:Igris:1358099382951739584>"
			}
		},
		EnemyPool = {"SL1", "SL2", "SL3", "SL4", "SL5", "SL6"},
		MapPool = {"TrainStation", "DarkDungeon"},
		Rejoin = {
			Gems = 1000,
			Tickets = 15
		},
		Boss = "Igris",
		DoubleBoss = "JinWoo"
	},

	NarutoWorld = {
		Items = {
			-- Currency
			Coins = {
				Name = "Cash",
				Type = "Currency",
				Rarity = "Common",
				Order = 99,
				Icon = "<:ariseCoin1:1358100658388996216>"
			},
			Gems = {
				Name = "Gems",
				Type = "Currency",
				Rarity = "Common",
				Order = 98,
				Icon = "<:BlueGemPile:1357014156422811861>"
			},

			-- Weapons
			MonsterSlayer = {
				Name = "MonsterSlayer",
				Chance = 40,
				Type = "Weapons",
				Level = 2,
				Rarity = "Uncommon",
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:Igris:1358099382951739584>"
			},
			MixedBattleAxe = {
				Name = "MixedBattleAxe",
				Chance = 20,
				Type = "Weapons",
				Level = 2,
				Rarity = "Uncommon",
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:Igris:1358099382951739584>"
			},
			TrollSlayer = {
				Name = "TrollSlayer",
				Chance = 150,
				Type = "Weapons",
				Level = 3,
				Rarity = "Rare",
				OnlyBoss = true,
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:Igris:1358099382951739584>"
			},

			-- Boss Drops
			Pain = {
				Name = "Dor",
				Type = "Shadow",
				Rarity = "Epic",
				Order = -5993434,
				OnlyBoss = true,
				Icon = "<:Igris:1358099382951739584>"
			},

			-- Runes
			DgNarutoRune = {
				Name = "DgNarutoRune",
				Chance = 30,
				Type = "Items",
				Rarity = "Rare",
				Icon = "<:Igris:1358099382951739584>"
			}
		},
		EnemyPool = {"NR1", "NR2", "NR3"},
		MapPool = {"DarkDungeon", "SnakeLab"},
		Rejoin = {
			Gems = 50000,
			Tickets = 15
		},
		Boss = "Pain",
		DoubleBoss = "JinWoo"
	},

	OPWorld = {
		Items = {
			-- Currency
			Coins = {
				Name = "Cash",
				Type = "Currency",
				Rarity = "Common",
				Order = 99,
				Icon = "<:ariseCoin1:1358100658388996216>"
			},
			Gems = {
				Name = "Gems",
				Type = "Currency",
				Rarity = "Common",
				Order = 98,
				Icon = "<:BlueGemPile:1357014156422811861>"
			},

			-- Weapons
			SteelSaber = {
				Name = "SteelSaber",
				Chance = 40,
				Type = "Weapons",
				Level = 2,
				Rarity = "Uncommon",
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:Igris:1358099382951739584>"
			},
			SteelKando = {
				Name = "SteelKando",
				Chance = 20,
				Type = "Weapons",
				Level = 2,
				Rarity = "Uncommon",
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:Igris:1358099382951739584>"
			},
			RuneSword = {
				Name = "RuneSword",
				Chance = 150,
				Type = "Weapons",
				Level = 3,
				Rarity = "Rare",
				OnlyBoss = true,
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:Igris:1358099382951739584>"
			},

			-- Boss Drops
			Mihalk = {
				Name = "Mifalcon",
				Type = "Shadow",
				Rarity = "Epic",
				Order = -5993434,
				OnlyBoss = true,
				Icon = "<:Igris:1358099382951739584>"
			},

			-- Runes
			DgOPRune = {
				Name = "DgOPRune",
				Chance = 30,
				Type = "Items",
				Rarity = "Rare",
				Icon = "<:Igris:1358099382951739584>"
			}
		},
		EnemyPool = {"OP1", "OP2", "OP3"},
		MapPool = {"DarkDungeon", "ImpelDown"},
		Rejoin = {
			Gems = 750000,
			Tickets = 15
		},
		Boss = "Mihalk",
		DoubleBoss = "JinWoo"
	},

	BleachWorld = {
		Items = {
			-- Currency
			Coins = {
				Name = "Cash",
				Type = "Currency",
				Rarity = "Common",
				Order = 99,
				Icon = "<:ariseCoin1:1358100658388996216>"
			},
			Gems = {
				Name = "Gems",
				Type = "Currency",
				Rarity = "Common",
				Order = 98,
				Icon = "<:BlueGemPile:1357014156422811861>"
			},

			-- Weapons
			BoneMace = {
				Name = "BoneMace",
				Chance = 60,
				Type = "Weapons",
				Level = 2,
				Rarity = "Uncommon",
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:Igris:1358099382951739584>"
			},
			GreatSaber = {
				Name = "GreatSaber",
				Chance = 30,
				Type = "Weapons",
				Level = 2,
				Rarity = "Uncommon",
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:Igris:1358099382951739584>"
			},
			SteelScythe = {
				Name = "SteelScythe",
				Chance = 100,
				Type = "Weapons",
				Level = 3,
				Rarity = "Rare",
				OnlyBoss = true,
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:Igris:1358099382951739584>"
			},

			-- Boss Drops
			Ulquiorra = {
				Name = "Murcielago",
				Type = "Shadow",
				Rarity = "Epic",
				Order = -5993434,
				OnlyBoss = true,
				Icon = "<:Igris:1358099382951739584>"
			},

			-- Runes
			DgBleachRune = {
				Name = "DgBleachRune",
				Chance = 30,
				Type = "Items",
				Rarity = "Rare",
				Icon = "<:Igris:1358099382951739584>"
			}
		},
		EnemyPool = {"BL1", "BL2", "BL3"},
		MapPool = {"DarkDungeon", "SoulSociety"},
		Rejoin = {
			Gems = 80000000,
			Tickets = 15
		},
		Boss = "Ulquiorra",
		DoubleBoss = "JinWoo"
	},

	BCWorld = {
		Items = {
			-- Currency
			Coins = {
				Name = "Cash",
				Type = "Currency",
				Rarity = "Common",
				Order = 99,
				Icon = "<:ariseCoin1:1358100658388996216>"
			},
			Gems = {
				Name = "Gems",
				Type = "Currency",
				Rarity = "Common",
				Order = 98,
				Icon = "<:BlueGemPile:1357014156422811861>"
			},

			-- Weapons
			StellKopesh = {
				Name = "StellKopesh",
				Chance = 60,
				Type = "Weapons",
				Level = 2,
				Rarity = "Uncommon",
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:Igris:1358099382951739584>"
			},
			DualTrident = {
				Name = "DualTrident",
				Chance = 30,
				Type = "Weapons",
				Level = 2,
				Rarity = "Uncommon",
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:Igris:1358099382951739584>"
			},
			DualWyvernSlayer = {
				Name = "DualWyvernSlayer",
				Chance = 120,
				Type = "Weapons",
				Level = 3,
				Rarity = "Rare",
				OnlyBoss = true,
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:Igris:1358099382951739584>"
			},

			-- Boss Drops
			Julius = {
				Name = "Time King",
				Type = "Shadow",
				Rarity = "Epic",
				Order = -5993434,
				OnlyBoss = true,
				Icon = "<:Igris:1358099382951739584>"
			},

			-- Runes
			DgBCRune = {
				Name = "DgBCRune",
				Chance = 30,
				Type = "Items",
				Rarity = "Rare",
				Icon = "<:Igris:1358099382951739584>"
			}
		},
		EnemyPool = {"BC1", "BC2", "BC3"},
		MapPool = {"DarkDungeon", "MagicDungeon"},
		Rejoin = {
			Gems = 10000000000,
			Tickets = 15
		},
		Boss = "Julius",
		DoubleBoss = "JinWoo"
	},

	ChainsawWorld = {
		Items = {
			-- Currency
			Coins = {
				Name = "Cash",
				Type = "Currency",
				Rarity = "Common",
				Order = 99,
				Icon = "<:ariseCoin1:1358100658388996216>"
			},
			Gems = {
				Name = "Gems",
				Type = "Currency",
				Rarity = "Common",
				Order = 98,
				Icon = "<:BlueGemPile:1357014156422811861>"
			},

			-- Weapons
			ObsidianDualAxe2 = {
				Name = "ObsidianDualAxe2",
				Chance = 60,
				Type = "Weapons",
				Level = 2,
				Rarity = "Uncommon",
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:Igris:1358099382951739584>"
			},
			DualDivineAxe2 = {
				Name = "DualDivineAxe2",
				Chance = 30,
				Type = "Weapons",
				Level = 2,
				Rarity = "Uncommon",
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:Igris:1358099382951739584>"
			},
			DualOzSword2 = {
				Name = "DualOzSword2",
				Chance = 120,
				Type = "Weapons",
				Level = 3,
				Rarity = "Rare",
				OnlyBoss = true,
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:Igris:1358099382951739584>"
			},

			-- Boss Drops
			Denji = {
				Name = "Chainsaw",
				Type = "Shadow",
				Rarity = "Epic",
				Order = -5993434,
				OnlyBoss = true,
				Icon = "<:Igris:1358099382951739584>"
			},

			-- Runes
			DgChainsawRune = {
				Name = "DgChainsawRune",
				Chance = 30,
				Type = "Items",
				Rarity = "Rare",
				Icon = "<:Igris:1358099382951739584>"
			}
		},
		EnemyPool = {"CH1", "CH2", "CH3"},
		MapPool = {"DarkDungeon", "Hotel"},
		Rejoin = {
			Gems = 840000000000,
			Tickets = 15
		},
		Boss = "Denji",
		DoubleBoss = "JinWoo"
	},

	JojoWorld = {
		Items = {
			-- Currency
			Coins = {
				Name = "Cash",
				Type = "Currency",
				Rarity = "Common",
				Order = 99,
				Icon = "<:ariseCoin1:1358100658388996216>"
			},
			Gems = {
				Name = "Gems",
				Type = "Currency",
				Rarity = "Common",
				Order = 98,
				Icon = "<:BlueGemPile:1357014156422811861>"
			},

			-- Weapons
			DualGemStaffs2 = {
				Name = "DualGemStaffs2",
				Chance = 60,
				Type = "Weapons",
				Level = 2,
				Rarity = "Uncommon",
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:Igris:1358099382951739584>"
			},
			SlayerScythe2 = {
				Name = "SlayerScythe2",
				Chance = 30,
				Type = "Weapons",
				Level = 2,
				Rarity = "Uncommon",
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:Igris:1358099382951739584>"
			},
			DualRuneSword2 = {
				Name = "DualRuneSword2",
				Chance = 120,
				Type = "Weapons",
				Level = 3,
				Rarity = "Rare",
				OnlyBoss = true,
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:Igris:1358099382951739584>"
			},

			-- Boss Drops
			Pucci = {
				Name = "Gucci",
				Type = "Shadow",
				Rarity = "Epic",
				Order = -5993434,
				OnlyBoss = true,
				Icon = "<:Igris:1358099382951739584>"
			},

			-- Runes
			DgJojoRune = {
				Name = "DgJojoRune",
				Chance = 30,
				Type = "Items",
				Rarity = "Rare",
				Icon = "<:Igris:1358099382951739584>"
			}
		},
		EnemyPool = {"JB1", "JB2", "JB3"},
		MapPool = {"DarkDungeon", "Prison"},
		Rejoin = {
			Gems = 42000000000000,
			Tickets = 15
		},
		Boss = "Pucci",
		DoubleBoss = "JinWoo"
	}
}

-- Add global drops to all worlds
for _, world in next, module do
	-- Tickets
	world.Items.Ticket = {
		Name = "Ticket",
		Amount = "1-2",
		Chance = 1000,
		Type = "Items",
		Rank = 1,
		OnlyBoss = true,
		Icon = "<:Ticket1:1357014159434453124>"
	}
	world.Items.Ticket2 = {
		Name = "Ticket",
		Amount = "2-3",
		Chance = 1000,
		Type = "Items",
		Rank = 2,
		OnlyBoss = true,
		Icon = "<:Ticket1:1357014159434453124>"
	}
	world.Items.Ticket3 = {
		Name = "Ticket",
		Amount = "3-5",
		Chance = 1000,
		Type = "Items",
		Rank = 3,
		OnlyBoss = true,
		Icon = "<:Ticket1:1357014159434453124>"
	}
	world.Items.Ticket4 = {
		Name = "Ticket",
		Amount = "5-8",
		Chance = 1000,
		Type = "Items",
		Rank = 4,
		OnlyBoss = true,
		Icon = "<:Ticket2:1357014160956981340>"
	}
	world.Items.Ticket5 = {
		Name = "Ticket",
		Amount = "8-13",
		Chance = 1000,
		Type = "Items",
		Rank = 5,
		OnlyBoss = true,
		Icon = "<:Ticket2:1357014160956981340>"
	}
	world.Items.Ticket6 = {
		Name = "Ticket",
		Amount = "13-21",
		Chance = 1000,
		Type = "Items",
		Rank = 6,
		OnlyBoss = true,
		Icon = "<:TicketBag:1357014162999611442>"
	}
	world.Items.Ticket7 = {
		Name = "Ticket",
		Amount = "13-21",
		Chance = 1000,
		Type = "Items",
		Rank = 7,
		OnlyBoss = true,
		Icon = "<:TicketBag:1357014162999611442>"
	}
	-- [Add all other global drops...]

	-- Rank Runes
	world.Items.RankUpRune = {
		Name = "Rank Up Rune",
		Amount = "1",
		Chance = 75,
		Type = "Items",
		Rank = 4,
		OnlyBoss = true,
		Icon = "<:Igris:1358099382951739584>"
	}
	world.Items.RankDownRune = {
		Name = "Rank Down Rune",
		Amount = "1",
		Chance = 75,
		Type = "Items",
		Rank = 1,
		OnlyBoss = true,
		Icon = "<:Igris:1358099382951739584>"
	}

	-- Powder Dusts
	world.Items.CommonPowderDust = {
		Name = "Common Powder Dust",
		Amount = "1-3",
		Chance = 90,
		Type = "Items",
		Rank = 1,
		OnDestroy = true,
		Icon = "<:COMMON_POWDER:1357008889220173964>"
	}
	world.Items.CommonPowderDust2 = {
		Name = "Common Powder Dust",
		Amount = "2-4";
		Chance = 90;
		Type = "Items";
		Rank = 2;
		OnDestroy = true;
		Icon = "<:COMMON_POWDER:1357008889220173964>"
	}
	world.Items.RarePowderDust = {
		Name = "Rare Powder Dust",
		Amount = "1-3",
		Chance = 65,
		Type = "Items",
		Rank = 3,
		OnDestroy = true,
		Icon = "<:RareDust:1357011491223507164>"
	}
	world.Items.RarePowderDust2 = {
		Name = "Rare Powder Dust",
		Amount = "2-4";
		Chance = 75;
		Type = "Items";
		Rank = 4;
		OnDestroy = true;
		Icon = "<:RareDust:1357011491223507164>"
	}
	world.Items.LegendaryPowderDust = {
		Name = "Legendary Powder Dust",
		Amount = "1-2",
		Chance = 20,
		Type = "Items",
		Rank = 5,
		OnDestroy = true,
		Icon = "<:LEGENDARYPOWDER:1357010255586001098>"
	}
	world.Items.LegendaryPowderDust2 = {
		Name = "Legendary Powder Dust",
		Amount = "2-4";
		Chance = 30;
		Type = "Items";
		Rank = 6;
		OnDestroy = true;
		Icon = "<:LEGENDARYPOWDER:1357010255586001098>"
	}
	world.Items.LegendaryPowderDust3 = {
		Name = "Legendary Powder Dust",
		Amount = "2-4";
		Chance = 30;
		Type = "Items";
		Rank = 7;
		OnDestroy = true;
		Icon = "<:LEGENDARYPOWDER:1357010255586001098>"
	}
end

return module
