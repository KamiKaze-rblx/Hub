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
				Name = "Solo Rune",
				Chance = 30,
				Type = "Items",
				Rarity = "Rare",
				Icon = "<:SoloRune:1358475569649422386>"
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
				Name = "Grass Rune",
				Chance = 30,
				Type = "Items",
				Rarity = "Rare",
				Icon = "<:GrassRune:1358474708298760394>"
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
				Name = "Runic Blade", -- 103689297962462
				Chance = 150,
				Type = "Weapons",
				Level = 3,
				Rarity = "Rare",
				OnlyBoss = true,
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:RunicBlade:1358568670569300048>"
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
				Name = "Brum Rune",
				Chance = 30,
				Type = "Items",
				Rarity = "Rare",
				Icon = "<:BrumRune:1358474227602427934>"
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
				Name = "Bone Crusher",
				Chance = 60,
				Type = "Weapons",
				Level = 2,
				Rarity = "Uncommon",
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:BoneCrusher:1358569337761300550>"
			},
			GreatSaber = {
				Name = "Colossal Saber",
				Chance = 30,
				Type = "Weapons",
				Level = 2,
				Rarity = "Uncommon",
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:ColossalSaber:1358571262221484102>"
			},
			SteelScythe = {
				Name = "Iron Scythe",
				Chance = 100,
				Type = "Weapons",
				Level = 3,
				Rarity = "Rare",
				OnlyBoss = true,
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:IronScythe:1358571727327592518>"
			},

			-- Boss Drops
			Ulquiorra = {
				Name = "Murcielago",
				Type = "Shadow",
				Rarity = "Epic",
				Order = -5993434,
				OnlyBoss = true,
				Icon = "<:Murcielago:1358572310616866986>"
			},

			-- Runes
			DgBleachRune = {
				Name = "Faceheal Rune",
				Chance = 30,
				Type = "Items",
				Rarity = "Rare",
				Icon = "<:FacehealRune:1358474693086019614>"
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
				Name = "Steel Khopesh",
				Chance = 60,
				Type = "Weapons",
				Level = 2,
				Rarity = "Uncommon",
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:SteelKhopesh:1358572800834666695>"
			},
			DualTrident = {
				Name = "Twin Tridents",
				Chance = 30,
				Type = "Weapons",
				Level = 2,
				Rarity = "Uncommon",
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:TwinTridents:1358573121569034270>"
			},
			DualWyvernSlayer = {
				Name = "Twin Wyvern Vanquishers",
				Chance = 120,
				Type = "Weapons",
				Level = 3,
				Rarity = "Rare",
				OnlyBoss = true,
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:TwinWyvernVanquishers:1358573375039082726>"
			},

			-- Boss Drops
			Julius = {
				Name = "Time King",
				Type = "Shadow",
				Rarity = "Epic",
				Order = -5993434,
				OnlyBoss = true,
				Icon = "<:TimeKing:1358573668858597526>"
			},

			-- Runes
			DgBCRune = {
				Name = "Lucky Rune",
				Chance = 30,
				Type = "Items",
				Rarity = "Rare",
				Icon = "<:LuckyRune:1358474748639711566>"
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
				Name = "Obsidian Axe", -- 132983074010949
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
				Name = "Twin Sacred Axes",
				Chance = 30,
				Type = "Weapons",
				Level = 2,
				Rarity = "Uncommon",
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:TwinSacredAxes:1358574160271638598>"
			},
			DualOzSword2 = {
				Name = "Twin Oz Blades",
				Chance = 120,
				Type = "Weapons",
				Level = 3,
				Rarity = "Rare",
				OnlyBoss = true,
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:TwinOzBlades:1358574416119988294>"
			},

			-- Boss Drops
			Denji = {
				Name = "Chainsaw",
				Type = "Shadow",
				Rarity = "Epic",
				Order = -5993434,
				OnlyBoss = true,
				Icon = "<:Chainsaw:1358574892131553310>"
			},

			-- Runes
			DgChainsawRune = {
				Name = "Nipon Rune",
				Chance = 30,
				Type = "Items",
				Rarity = "Rare",
				Icon = "<:NiponRune:1358475531431182418>"
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
				Name = "Twin Jeweled Rods",
				Chance = 60,
				Type = "Weapons",
				Level = 2,
				Rarity = "Uncommon",
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:TwinJeweledRods:1358576352814698593>"
			},
			SlayerScythe2 = {
				Name = "Reaper's Scythe",
				Chance = 30,
				Type = "Weapons",
				Level = 2,
				Rarity = "Uncommon",
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:ReapersScythe:1358576186715934740>"
			},
			DualRuneSword2 = {
				Name = "Twin Runic Blades",
				Chance = 120,
				Type = "Weapons",
				Level = 3,
				Rarity = "Rare",
				OnlyBoss = true,
				Favorite = false,
				Enchanted = false,
				Enchants = {},
				Icon = "<:TwinRunicBlades:1358575967173480679>" --98191425110495
			},

			-- Boss Drops
			Pucci = {
				Name = "Gucci",
				Type = "Shadow",
				Rarity = "Epic",
				Order = -5993434,
				OnlyBoss = true,
				Icon = "<:Igris:1358099382951739584>" -- 72858700577127
			},

			-- Runes
			DgJojoRune = {
				Name = "Mori Rune",
				Chance = 30,
				Type = "Items",
				Rarity = "Rare",
				Icon = "<:MoriRune:1358474771083563160>"
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
		Type = "Currency",
		Rank = 1,
		OnlyBoss = true,
		Icon = "<:Ticket1:1357014159434453124>"
	}
	world.Items.Ticket2 = {
		Name = "Ticket",
		Amount = "2-3",
		Chance = 1000,
		Type = "Currency",
		Rank = 2,
		OnlyBoss = true,
		Icon = "<:Ticket1:1357014159434453124>"
	}
	world.Items.Ticket3 = {
		Name = "Ticket",
		Amount = "3-5",
		Chance = 1000,
		Type = "Currency",
		Rank = 3,
		OnlyBoss = true,
		Icon = "<:Ticket1:1357014159434453124>"
	}
	world.Items.Ticket4 = {
		Name = "Ticket",
		Amount = "5-8",
		Chance = 1000,
		Type = "Currency",
		Rank = 4,
		OnlyBoss = true,
		Icon = "<:Ticket2:1357014160956981340>"
	}
	world.Items.Ticket5 = {
		Name = "Ticket",
		Amount = "8-13",
		Chance = 1000,
		Type = "Currency",
		Rank = 5,
		OnlyBoss = true,
		Icon = "<:Ticket2:1357014160956981340>"
	}
	world.Items.Ticket6 = {
		Name = "Ticket",
		Amount = "13-21",
		Chance = 1000,
		Type = "Currency",
		Rank = 6,
		OnlyBoss = true,
		Icon = "<:TicketBag:1357014162999611442>"
	}
	world.Items.Ticket7 = {
		Name = "Ticket",
		Amount = "13-21",
		Chance = 1000,
		Type = "Currency",
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
		Icon = "<:RankUpRune:1358475555661549730>"
	}
	world.Items.RankDownRune = {
		Name = "Rank Down Rune",
		Amount = "1",
		Chance = 75,
		Type = "Items",
		Rank = 1,
		OnlyBoss = true,
		Icon = "<:RankDownRune:1358475544672473108>"
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
