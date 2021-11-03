#Important Items
#Town Map
give @s minecraft:diamond_hoe 1 1 {display:{Name:"Town Map",Lore:["A map of the Kalos region."]},HideFlags:6,Unbreakable:1}
give @s pixelmon:exp_all 1
give @s pixelmon:tm_gen6 1 0 {tm:27}
give @s pixelmon:tm_gen6 1 0 {tm:17}
give @s pixelmon:jaw_fossil
give @s pixelmon:sail_fossil
give @s pixelmon:hm4
give @s pixelmon:tm_gen6 1 0 {tm:70}
give @s minecraft:fireworks 16 0 {display:{Name:"TM70: Flash",Lore:["Illuminates an area to","the user for 10 minutes."]}}
give @s minecraft:prismarine_crystals 1 0 {display:{Lore:["A rather curious stone that","might appear to be valuable","to some. It's all in the","eye of the beholder."]},HideFlags:6}
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ megaring @a[tag=Temp]
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ pokegive @a[tag=Temp] Lucario lvl:32 ab:Stradyfast gr:6 ivhp:26+ ivatk:29+ ivdef:26+ ivspatk:26+ ivspdef:26+ ivhp:26+
give @s pixelmon:lucarionite
give @s pixelmon:hm3
give @s minecraft:spawn_egg 1 1 {HideFlags:26,display:{Name:"HM02: Fly",Lore:["A tool used to return","to a familiar town."]},CanPlaceOn:["minecraft:air","minecraft:stone","minecraft:grass","minecraft:dirt","minecraft:cobblestone","minecraft:planks","minecraft:sapling","minecraft:bedrock","minecraft:flowing_water","minecraft:water","minecraft:flowing_lava","minecraft:lava","minecraft:sand","minecraft:gravel","minecraft:gold_ore","minecraft:iron_ore","minecraft:coal_ore","minecraft:log","minecraft:leaves","minecraft:sponge","minecraft:glass","minecraft:lapis_ore","minecraft:lapis_block","minecraft:dispenser","minecraft:sandstone","minecraft:noteblock","minecraft:bed","minecraft:golden_rail","minecraft:detector_rail","minecraft:sticky_piston","minecraft:web","minecraft:tallgrass","minecraft:deadbush","minecraft:piston","minecraft:piston_head","minecraft:wool","minecraft:piston_extension","minecraft:yellow_flower","minecraft:red_flower","minecraft:brown_mushroom","minecraft:red_mushroom","minecraft:gold_block","minecraft:iron_block","minecraft:double_stone_slab","minecraft:stone_slab","minecraft:brick_block","minecraft:tnt","minecraft:bookshelf","minecraft:mossy_cobblestone","minecraft:obsidian","minecraft:torch","minecraft:fire","minecraft:mob_spawner","minecraft:oak_stairs","minecraft:chest","minecraft:redstone_wire","minecraft:diamond_ore","minecraft:diamond_block","minecraft:crafting_table","minecraft:wheat","minecraft:farmland","minecraft:furnace","minecraft:lit_furnace","minecraft:standing_sign","minecraft:wooden_door","minecraft:ladder","minecraft:rail","minecraft:stone_stairs","minecraft:wall_sign","minecraft:lever","minecraft:stone_pressure_plate","minecraft:iron_door","minecraft:wooden_pressure_plate","minecraft:redstone_ore","minecraft:lit_redstone_ore","minecraft:unlit_redstone_torch","minecraft:redstone_torch","minecraft:stone_button","minecraft:snow_layer","minecraft:ice","minecraft:snow","minecraft:cactus","minecraft:clay","minecraft:reeds","minecraft:jukebox","minecraft:fence","minecraft:pumpkin","minecraft:netherrack","minecraft:soul_sand","minecraft:glowstone","minecraft:portal","minecraft:lit_pumpkin","minecraft:cake","minecraft:unpowered_repeater","minecraft:powered_repeater","minecraft:stained_glass","minecraft:trapdoor","minecraft:monster_egg","minecraft:stonebrick","minecraft:brown_mushroom_block","minecraft:red_mushroom_block","minecraft:iron_bars","minecraft:glass_pane","minecraft:melon_block","minecraft:pumpkin_stem","minecraft:melon_stem","minecraft:vine","minecraft:fence_gate","minecraft:brick_stairs","minecraft:stone_brick_stairs","minecraft:mycelium","minecraft:waterlily","minecraft:nether_brick","minecraft:nether_brick_fence","minecraft:nether_brick_stairs","minecraft:nether_wart","minecraft:enchanting_table","minecraft:brewing_stand","minecraft:cauldron","minecraft:end_portal","minecraft:end_portal_frame","minecraft:end_stone","minecraft:dragon_egg","minecraft:redstone_lamp","minecraft:lit_redstone_lamp","minecraft:double_wooden_slab","minecraft:wooden_slab","minecraft:cocoa","minecraft:sandstone_stairs","minecraft:emerald_ore","minecraft:ender_chest","minecraft:tripwire_hook","minecraft:tripwire","minecraft:emerald_block","minecraft:spruce_stairs","minecraft:birch_stairs","minecraft:jungle_stairs","minecraft:command_block","minecraft:beacon","minecraft:cobblestone_wall","minecraft:flower_pot","minecraft:carrots","minecraft:potatoes","minecraft:wooden_button","minecraft:skull","minecraft:anvil","minecraft:trapped_chest","minecraft:light_weighted_pressure_plate","minecraft:heavy_weighted_pressure_plate","minecraft:unpowered_comparator","minecraft:powered_comparator","minecraft:daylight_detector","minecraft:redstone_block","minecraft:quartz_ore","minecraft:hopper","minecraft:quartz_block","minecraft:quartz_stairs","minecraft:activator_rail","minecraft:dropper","minecraft:stained_hardened_clay","minecraft:stained_glass_pane","minecraft:log2","minecraft:acacia_stairs","minecraft:dark_oak_stairs","minecraft:slime","minecraft:barrier","minecraft:iron_trapdoor","minecraft:prismarine","minecraft:sea_lantern","minecraft:hay_block","minecraft:carpet","minecraft:hardened_clay","minecraft:coal_block","minecraft:packed_ice","minecraft:double_plant"]}
give @s minecraft:prismarine_shard 1 0 {display:{Lore:["This pass serves as an ID","card for gaining access to","the power plant that lies","along Route 13."]},HideFlags:6}
give @s pixelmon:full_restore 2
give @s pixelmon:kings_rock
give @s pixelmon:master_ball
give @s pixelmon:big_nugget
give @s pixelmon:abomasite
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ pokegive @a[tag=Temp] Mamoswine lvl:35 untradeable gr:7
give @s pixelmon:repeat_ball 10
give @s pixelmon:revive 3
give @s minecraft:iron_horse_armor 1 0 {display:{Lore:["A card key that activates the","elevator in Lysandre Labs.","It is emblazoned with Team","Flare's logo."]},HideFlags:6}
give @s pixelmon:hm7
give @s minecraft:diamond_horse_armor 1 0 {display:{Lore:["A precious symbol that is awarded","only to an individual who has done","great things for the Kalos region."]},HideFlags:6}
give @s minecraft:golden_horse_armor 1 0 {display:{Lore:["A commuter pass that allows","the holder to ride the TMV","between Lumiose City and","Kiloude City at any time."]},HideFlags:6}
give @s pixelmon:absolite




#Fly Spots visited
scoreboard players tag @s add FlyAquacorde
scoreboard players tag @s add FlySantalune
scoreboard players tag @s add FlyLumiose
scoreboard players tag @s add FlyCouriway
scoreboard players tag @s add FlyAmbrette
scoreboard players tag @s add FlyCyllage
scoreboard players tag @s add FlyGeosenge
scoreboard players tag @s add FlyShalour
scoreboard players tag @s add FlyCoumarine
scoreboard players tag @s add FlyLaverre
scoreboard players tag @s add FlyDendemille
scoreboard players tag @s add FlyAnistar
scoreboard players tag @s add FlyCamphrier
scoreboard players tag @s add FlySnowbelle

scoreboard players tag @s add FlyKiloude
scoreboard players tag @s add FlyPokemonLeague





#Gym Leader Tags
scoreboard players tag @s add Viola
scoreboard players tag @s add Grant
scoreboard players tag @s add Korrina
scoreboard players tag @s add Ramos
scoreboard players tag @s add Clemont
scoreboard players tag @s add Valerie
scoreboard players tag @s add Olympia
scoreboard players tag @s add Wulfric




#Advancements
advancement grant @s only kalos:flare1
advancement grant @s only kalos:mega1
advancement grant @s only kalos:flare2
advancement grant @s only kalos:flare3
advancement grant @s only kalos:flare4
advancement grant @s only kalos:flare5
advancement grant @s only kalos:flare6
advancement grant @s only kalos:flare8
advancement grant @s only kalos:flare9
advancement grant @s only kalos:champion
advancement grant @s only kalos:legendroot
advancement grant @s only kalos:mythicalroot
advancement grant @s only kalos:mega2




#Story-related dialogues
scoreboard players tag @s add Dialogue1
scoreboard players tag @s add Dialogue2
#Gives starter
#scoreboard players tag @s add Dialogue3
scoreboard players tag @s add Dialogue4
scoreboard players tag @s add Dialogue5
scoreboard players tag @s add Dialogue6
scoreboard players tag @s add Dialogue7
scoreboard players tag @s add Dialogue8
scoreboard players tag @s add Dialogue9
scoreboard players tag @s add Dialogue10
scoreboard players tag @s add Dialogue11
scoreboard players tag @s add Dialogue12
scoreboard players tag @s add Dialogue13
scoreboard players tag @s add Dialogue14
scoreboard players tag @s add Dialogue15
scoreboard players tag @s add Dialogue16
scoreboard players tag @s add Dialogue17
#Needs to pick a Kanto starter
#scoreboard players tag @s add Dialogue18
#scoreboard players tag @s add Dialogue19
#scoreboard players tag @s add Dialogue20
scoreboard players tag @s add Dialogue21
scoreboard players tag @s add Dialogue22
scoreboard players tag @s add Dialogue23
scoreboard players tag @s add Dialogue24
scoreboard players tag @s add Dialogue25
scoreboard players tag @s add Dialogue26
scoreboard players tag @s add Dialogue27
scoreboard players tag @s add Dialogue28
scoreboard players tag @s add Dialogue29
scoreboard players tag @s add Dialogue30
scoreboard players tag @s add Dialogue31
scoreboard players tag @s add Dialogue32
scoreboard players tag @s add Dialogue33
scoreboard players tag @s add Dialogue34
scoreboard players tag @s add Dialogue35
scoreboard players tag @s add Dialogue36
scoreboard players tag @s add Dialogue37
scoreboard players tag @s add Dialogue38
scoreboard players tag @s add Dialogue39
scoreboard players tag @s add Dialogue40
scoreboard players tag @s add Dialogue41
scoreboard players tag @s add Dialogue42
scoreboard players tag @s add Dialogue43
scoreboard players tag @s add Dialogue44
scoreboard players tag @s add Dialogue45
scoreboard players tag @s add Dialogue46
scoreboard players tag @s add Dialogue47
scoreboard players tag @s add Dialogue48
scoreboard players tag @s add Dialogue49
scoreboard players tag @s add Dialogue50
scoreboard players tag @s add Dialogue51
scoreboard players tag @s add Dialogue52
scoreboard players tag @s add Dialogue53
scoreboard players tag @s add Dialogue54
scoreboard players tag @s add Dialogue55
scoreboard players tag @s add Dialogue56
scoreboard players tag @s add Dialogue57
scoreboard players tag @s add Dialogue58
scoreboard players tag @s add Dialogue59
scoreboard players tag @s add Dialogue60
scoreboard players tag @s add Dialogue61
scoreboard players tag @s add Dialogue62
scoreboard players tag @s add Dialogue63
scoreboard players tag @s add Dialogue64
scoreboard players tag @s add Dialogue65
scoreboard players tag @s add Dialogue66
scoreboard players tag @s add Dialogue67
scoreboard players tag @s add Dialogue68
scoreboard players tag @s add Dialogue69
scoreboard players tag @s add Dialogue70
scoreboard players tag @s add PowerPlantPass
scoreboard players tag @s add Dialogue71
scoreboard players tag @s add Dialogue72
scoreboard players tag @s add Dialogue73
scoreboard players tag @s add Dialogue74
scoreboard players tag @s add Dialogue75
scoreboard players tag @s add Dialogue76
scoreboard players tag @s add Dialogue77
scoreboard players tag @s add Dialogue78
scoreboard players tag @s add LumiosePower
scoreboard players tag @s add Dialogue79
scoreboard players tag @s add Dialogue80
scoreboard players tag @s add Dialogue81
scoreboard players tag @s add Dialogue82
scoreboard players tag @s add Dialogue83
scoreboard players tag @s add Dialogue84
scoreboard players tag @s add Dialogue85
scoreboard players tag @s add Dialogue86
scoreboard players tag @s add Dialogue87
scoreboard players tag @s add Dialogue88
scoreboard players tag @s add Dialogue89
scoreboard players tag @s add Dialogue90
scoreboard players tag @s add Dialogue91
scoreboard players tag @s add Dialogue92
scoreboard players tag @s add Dialogue93
scoreboard players tag @s add Dialogue94
scoreboard players tag @s add Dialogue95
scoreboard players tag @s add Dialogue96
scoreboard players tag @s add Dialogue97
scoreboard players tag @s add Dialogue98
scoreboard players tag @s add Dialogue99
scoreboard players tag @s add Dialogue100
scoreboard players tag @s add Dialogue101
scoreboard players tag @s add Dialogue102
scoreboard players tag @s add Dialogue103
scoreboard players tag @s add Dialogue104
scoreboard players tag @s add Dialogue105
scoreboard players tag @s add Dialogue106
scoreboard players tag @s add Dialogue107
scoreboard players tag @s add Dialogue108
scoreboard players tag @s add Dialogue109
scoreboard players tag @s add Dialogue110
scoreboard players tag @s add Dialogue111
scoreboard players tag @s add Dialogue112
scoreboard players tag @s add Dialogue113
scoreboard players tag @s add Dialogue114
scoreboard players tag @s add Dialogue115
scoreboard players tag @s add ElevatorKey
scoreboard players tag @s add Dialogue116
scoreboard players tag @s add Dialogue117
#Picks your legend
#scoreboard players tag @s add Dialogue118
#scoreboard players tag @s add Dialogue119
#scoreboard players tag @s add Dialogue120
scoreboard players tag @s add Dialogue121
scoreboard players tag @s add Dialogue122
scoreboard players tag @s add Dialogue123
scoreboard players tag @s add Dialogue124
scoreboard players tag @s add Dialogue125
scoreboard players tag @s add Dialogue126
scoreboard players tag @s add Dialogue127
scoreboard players tag @s add Dialogue128
scoreboard players tag @s add Dialogue129
scoreboard players tag @pl add Admin1
scoreboard players tag @pl add Admin3
scoreboard players tag @pl add Admin4
scoreboard players tag @pl add Admin6
scoreboard players tag @s add Dialogue130
#Spawns your legend
#scoreboard players tag @s add Dialogue131
scoreboard players tag @s add Dialogue132
scoreboard players tag @s add Dialogue133
scoreboard players set @s Geosenge 2
scoreboard players tag @s add Dialogue134
scoreboard players tag @s add Dialogue135
scoreboard players tag @s add Dialogue136
scoreboard players tag @s add Dialogue137
scoreboard players tag @s add Dialogue138
scoreboard players tag @s add Dialogue139
scoreboard players tag @s add Dialogue140
scoreboard players tag @s add Dialogue141
scoreboard players tag @s add Dialogue143
scoreboard players tag @s add Dialogue144
scoreboard players tag @s add Dialogue145
scoreboard players tag @s add Dialogue146
scoreboard players tag @s add Dialogue147
scoreboard players tag @s add Dialogue148
scoreboard players tag @s add Dialogue149
scoreboard players tag @s add Dialogue150
scoreboard players tag @s add Dialogue151
scoreboard players tag @s add Dialogue152
scoreboard players tag @s add Dialogue153
scoreboard players tag @s add Dialogue154
scoreboard players add @s PokemonLeague 1
scoreboard players tag @s add Dialogue155
scoreboard players tag @s add Dialogue156
scoreboard players tag @s add Dialogue157
#Shauna Gives player an extra starter
#scoreboard players tag @s add Dialogue158
scoreboard players tag @s add Dialogue159
scoreboard players tag @s add Dialogue160
scoreboard players tag @s add TMVPass
scoreboard players tag @s add Dialogue161
scoreboard players tag @s add Dialogue162
scoreboard players tag @s add Dialogue163

scoreboard players set @s MegaStones 1
scoreboard players set @s Abomasite 0
scoreboard players set @s Aggronite 0
scoreboard players set @s Alakazite 0
scoreboard players set @s Banettite 0
scoreboard players set @s Diancite 0
scoreboard players set @s Garchompite 0
scoreboard players set @s Gyaradosite 0
scoreboard players set @s Heracronite 0
scoreboard players set @s Houndoominite 0
scoreboard players set @s Kangaskhanite 0
scoreboard players set @s Manectite 0
scoreboard players set @s Mawilite 0
scoreboard players set @s Medichamite 0
scoreboard players set @s Mewtwonite_X 0
scoreboard players set @s Mewtwonite_Y 0
scoreboard players set @s Scizorite 0
scoreboard players set @s Tyranitarite 0

scoreboard players tag @s add Dialogue164
#Looker remains, player can just skip that all




#Holo Calls
scoreboard players tag @s add Call1
scoreboard players tag @s add Call2
scoreboard players tag @s add Call3
scoreboard players tag @s add Call4
scoreboard players tag @s add Call5
scoreboard players tag @s add Call6
scoreboard players tag @s add Call7
scoreboard players tag @s add Call8
scoreboard players tag @s add Call9
scoreboard players tag @s add Call10
scoreboard players tag @s add Call11
scoreboard players tag @s add Call12




scoreboard players tag @s remove Temp

#
