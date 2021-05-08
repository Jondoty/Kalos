#Format:
#/tedit add INTERACT /scoreboard players add @pl TrainerLoot1 1
#/tedit add INTERACT /function custom:trainerloot

#/tedit add INTERACT /tellraw @pl {"text":"Nowah!","italic":true,"color":"gray"}


#Mask Pixelmon Commands with following execute:
#execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand,c=1] ~ ~ ~ /


#Test
give @a[score_TrainerLoot1_min=1,score_TrainerLoot1=1] minecraft:spawn_egg 1 1 {display:{Name:"HM02: Fly",Lore:["A tool used to return","to a familiar town."]}}
scoreboard players add @a[score_TrainerLoot1_min=1,score_TrainerLoot1=1] TrainerLoot1 1

#Aquacorde
#Player's Starters
tellraw @a[score_TrainerLoot0_min=1,score_TrainerLoot0=1] ["",{"text":"<","color":"white"},{"text":"Serena"},{"text":"> So, which Pokemon do you want?","color":"white"}]
tp @a[score_TrainerLoot0_min=1,score_TrainerLoot0=1] -1078 101 1211 180 10
scoreboard players add @a[score_TrainerLoot0_min=1,score_TrainerLoot0=1] TrainerLoot0 1

give @a[score_TrainerLoot2_min=1,score_TrainerLoot2=1] pixelmon:potion
scoreboard players add @a[score_TrainerLoot2_min=1,score_TrainerLoot2=1] TrainerLoot2 1


#Santalune
give @a[score_TrainerLoot3_min=1,score_TrainerLoot3=1] pixelmon:x_attack 3
give @a[score_TrainerLoot3_min=1,score_TrainerLoot3=1] pixelmon:x_defence 3
scoreboard players add @a[score_TrainerLoot3_min=1,score_TrainerLoot3=1] TrainerLoot3 1

give @a[score_TrainerLoot65_min=1,score_TrainerLoot65=1] pixelmon:great_ball
scoreboard players add @a[score_TrainerLoot65_min=1,score_TrainerLoot65=1] TrainerLoot65 1


#Lumiose - Sycamore Lab
give @a[score_TrainerLoot5_min=1,score_TrainerLoot5=1] pixelmon:luxury_ball 5
scoreboard players add @a[score_TrainerLoot5_min=1,score_TrainerLoot5=1] TrainerLoot5 1

give @a[score_TrainerLoot6_min=1,score_TrainerLoot6=1] pixelmon:tm54
scoreboard players add @a[score_TrainerLoot6_min=1,score_TrainerLoot6=1] TrainerLoot6 1


#Lumiose Diantha's Ralts
#moved to ~dialogue164
#tellraw @a[score_TrainerLoot57_min=1,score_TrainerLoot57=1,score_PokemonLeague=0] ["",{"text":"<Diantha> "},{"selector":"@a[score_TrainerLoot57_min=1,score_TrainerLoot57=1,score_PokemonLeague=0]"},{"text":", right? Don't your Pokémon look happy? I'm a Trainer myself, in my off time. I look forward to us battling someday!"}]
#scoreboard players set @a[score_TrainerLoot57_min=1,score_PokemonLeague=0] TrainerLoot57 0

#tellraw @a[score_TrainerLoot57_min=1,score_TrainerLoot57=1,score_PokemonLeague_min=1] {"text":"<Diantha> You know, I'd really like to learn more about how a strong Trainer like you raises their Pokémon. This probably feels a bit sudden, but how would you feel about raising my Ralts here?"}
#execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokegive @a[score_TrainerLoot57_min=1,score_TrainerLoot57=1,score_PokemonLeague_min=1] Ralts lvl:5 g:female gr:6 n:Modest ab:Synchronize ba:24 ivhp:20 ivatk:20 ivdef:20 ivspatk:31 ivspdef:20 ivspd:31 ot:Diantha
#give @a[score_TrainerLoot57_min=1,score_TrainerLoot57=1,score_PokemonLeague_min=1] pixelmon:gardevoirite 1
#scoreboard players add @a[score_TrainerLoot57_min=1,score_TrainerLoot57=1,score_PokemonLeague_min=1] TrainerLoot57 1






tellraw @a[score_TrainerLoot57_min=3,score_TrainerLoot57=3,score_PokemonLeague_min=1,x=-492,y=100,z=245,r=10] {"text":"<Diantha> Please take good care of Ralts!"}
scoreboard players add @a[score_TrainerLoot57_min=1,score_TrainerLoot57=1,score_PokemonLeague_min=1] TrainerLoot57 1


#Lumiose Poke Ball Boutique
give @a[score_TrainerLoot64_min=1,score_TrainerLoot64=1] pixelmon:heal_ball 3
scoreboard players add @a[score_TrainerLoot64_min=1,score_TrainerLoot64=1] TrainerLoot64 1

#Lumiose Misc
give @a[score_TrainerLoot82_min=1,score_TrainerLoot82=1] pixelmon:wide_lens 1
scoreboard players add @a[score_TrainerLoot82_min=1,score_TrainerLoot82=1] TrainerLoot82 1

#Lumiose Office Cafe
give @a[score_TrainerLoot88_min=1,score_TrainerLoot88=1] pixelmon:prism_scale 1
scoreboard players add @a[score_TrainerLoot88_min=1,score_TrainerLoot88=1] TrainerLoot88 1

#Lumiose Hotel Richissime
give @a[score_TrainerLoot89_min=1,score_TrainerLoot89=1] pixelmon:tm49 1
scoreboard players add @a[score_TrainerLoot89_min=1,score_TrainerLoot89=1] TrainerLoot89 1

#Lumiose Museum
give @a[score_TrainerLoot90_min=1,score_TrainerLoot90=1] pixelmon:tm82 1
scoreboard players add @a[score_TrainerLoot90_min=1,score_TrainerLoot90=1] TrainerLoot90 1

#Lumiose Feeling Study
give @a[score_TrainerLoot91_min=1,score_TrainerLoot91=1] pixelmon:miracle_seed 1
scoreboard players add @a[score_TrainerLoot91_min=1,score_TrainerLoot91=1] TrainerLoot91 1

give @a[score_TrainerLoot92_min=1,score_TrainerLoot92=1] pixelmon:quick_claw 1
scoreboard players add @a[score_TrainerLoot92_min=1,score_TrainerLoot92=1] TrainerLoot92 1

give @a[score_TrainerLoot93_min=1,score_TrainerLoot93=1] pixelmon:quick_ball 3
scoreboard players add @a[score_TrainerLoot93_min=1,score_TrainerLoot93=1] TrainerLoot93 1

give @a[score_TrainerLoot94_min=1,score_TrainerLoot94=1] pixelmon:timer_ball 3
scoreboard players add @a[score_TrainerLoot94_min=1,score_TrainerLoot94=1] TrainerLoot94 1

#Fighting Dojo
give @a[score_TrainerLoot95_min=1,score_TrainerLoot95=1] pixelmon:expert_belt 1
scoreboard players add @a[score_TrainerLoot95_min=1,score_TrainerLoot95=1] TrainerLoot95 1

give @a[score_TrainerLoot96_min=1,score_TrainerLoot96=1] pixelmon:protein 1
scoreboard players add @a[score_TrainerLoot96_min=1,score_TrainerLoot96=1] TrainerLoot96 1



#Camphrier Town
give @a[score_TrainerLoot66_min=1,score_TrainerLoot66=1] pixelmon:ultra_ball
scoreboard players add @a[score_TrainerLoot66_min=1,score_TrainerLoot66=1] TrainerLoot66 1

give @a[score_TrainerLoot67_min=1,score_TrainerLoot67=1] pixelmon:tm46
scoreboard players add @a[score_TrainerLoot67_min=1,score_TrainerLoot67=1] TrainerLoot67 1

give @a[score_TrainerLoot68_min=1,score_TrainerLoot68=1] pixelmon:berry_juice
scoreboard players add @a[score_TrainerLoot68_min=1,score_TrainerLoot68=1] TrainerLoot68 1

give @a[score_TrainerLoot7_min=1,score_TrainerLoot7=1] pixelmon:full_heal
scoreboard players add @a[score_TrainerLoot7_min=1,score_TrainerLoot7=1] TrainerLoot7 1


#Berry Fields
give @a[score_TrainerLoot8_min=1,score_TrainerLoot8=1] pixelmon:oran_berry 5 0 {CanPlaceOn:[farmland]}
give @a[score_TrainerLoot8_min=1,score_TrainerLoot8=1] pixelmon:pecha_berry 5 0 {CanPlaceOn:[farmland]}
scoreboard players add @a[score_TrainerLoot8_min=1,score_TrainerLoot8=1] TrainerLoot8 1


#Route 8
scoreboard players set @a[score_TrainerLoot9_min=1,score_TrainerLoot9=1,tag=!Dialogue44] TrainerLoot9 0

give @a[score_TrainerLoot9_min=1,score_TrainerLoot9=1,tag=Dialogue44] pixelmon:item_finder
scoreboard players add @a[score_TrainerLoot9_min=1,score_TrainerLoot9=1,tag=Dialogue44] TrainerLoot9 1


#Ambrette
give @a[score_TrainerLoot53_min=1,score_TrainerLoot53=1] pixelmon:tm94
scoreboard players tag @a[score_TrainerLoot53_min=1,score_TrainerLoot53=1] add RockSmash
tellraw @a[score_TrainerLoot53_min=1,score_TrainerLoot53=1,tag=RockSmash] {"text":"You can now use Rock Smash on rocks!","italic":true,"color":"gray"}
scoreboard players add @a[score_TrainerLoot53_min=1,score_TrainerLoot53=1] TrainerLoot53 1


give @a[score_TrainerLoot10_min=1,score_TrainerLoot10=1] pixelmon:tm167
scoreboard players add @a[score_TrainerLoot10_min=1,score_TrainerLoot10=1] TrainerLoot10 1

give @a[score_TrainerLoot11_min=1,score_TrainerLoot11=1] pixelmon:rocky_helmet
scoreboard players add @a[score_TrainerLoot11_min=1,score_TrainerLoot11=1] TrainerLoot11 1

give @a[score_TrainerLoot17_min=1,score_TrainerLoot17=1] pixelmon:old_rod
scoreboard players add @a[score_TrainerLoot17_min=1,score_TrainerLoot17=1] TrainerLoot17 1


#Connecting Cave
give @a[score_TrainerLoot63_min=1,score_TrainerLoot63=1] pixelmon:tm21
scoreboard players add @a[score_TrainerLoot63_min=1,score_TrainerLoot63=1] TrainerLoot63 1


#Parfum Palace
give @a[score_TrainerLoot83_min=1,score_TrainerLoot83=1] pixelmon:oran_berry 1 0 {CanPlaceOn:[farmland]}
scoreboard players add @a[score_TrainerLoot83_min=1,score_TrainerLoot83=1] TrainerLoot83 1


#Cyllage City
give @a[score_TrainerLoot12_min=1,score_TrainerLoot12=1] pixelmon:tm44
scoreboard players add @a[score_TrainerLoot12_min=1,score_TrainerLoot12=1] TrainerLoot12 1

give @a[score_TrainerLoot13_min=1,score_TrainerLoot13=1] pixelmon:tm140
scoreboard players add @a[score_TrainerLoot13_min=1,score_TrainerLoot13=1] TrainerLoot13 1

give @a[score_TrainerLoot14_min=1,score_TrainerLoot14=1] pixelmon:destiny_knot
scoreboard players add @a[score_TrainerLoot14_min=1,score_TrainerLoot14=1] TrainerLoot14 1

give @a[score_TrainerLoot23_min=1,score_TrainerLoot23=1] pixelmon:mach_bike 1 0 {color:13b}
scoreboard players add @a[score_TrainerLoot23_min=1,score_TrainerLoot23=1] TrainerLoot23 1

give @a[score_TrainerLoot69_min=1,score_TrainerLoot69=1] pixelmon:whipped_dream
give @a[score_TrainerLoot69_min=1,score_TrainerLoot69=1] pixelmon:sachet
scoreboard players add @a[score_TrainerLoot69_min=1,score_TrainerLoot69=1] TrainerLoot69 1


#Geosenge Town
give @a[score_TrainerLoot70_min=1,score_TrainerLoot70=1] pixelmon:tm66
scoreboard players add @a[score_TrainerLoot70_min=1,score_TrainerLoot70=1] TrainerLoot70 1

give @a[score_TrainerLoot71_min=1,score_TrainerLoot71=1] pixelmon:ever_stone
scoreboard players add @a[score_TrainerLoot71_min=1,score_TrainerLoot71=1] TrainerLoot71 1



#Reflection Cave
#give @a[score_TrainerLoot28_min=1,score_TrainerLoot28=1] pixelmon:tm70
#give @a[score_TrainerLoot28_min=1,score_TrainerLoot28=1] minecraft:fireworks 16 0 {display:{Name:"TM70: Flash",Lore:["Illuminates an area to","the user for 10 minutes."]}}
#scoreboard players add @a[score_TrainerLoot28_min=1,score_TrainerLoot28=1] TrainerLoot28 1
#imported to dialogue55


#Shalour City
give @a[score_TrainerLoot72_min=1,score_TrainerLoot72=1] pixelmon:soothe_bell
scoreboard players add @a[score_TrainerLoot72_min=1,score_TrainerLoot72=1] TrainerLoot72 1

give @a[score_TrainerLoot73_min=1,score_TrainerLoot73=1] pixelmon:eviolite
scoreboard players add @a[score_TrainerLoot73_min=1,score_TrainerLoot73=1] TrainerLoot73 1

#moved to dialogue264
#give @a[score_TrainerLoot74_min=1,score_TrainerLoot74=1] pixelmon:sun_stone
#scoreboard players add @a[score_TrainerLoot74_min=1,score_TrainerLoot74=1] TrainerLoot74 1

give @a[score_TrainerLoot75_min=1,score_TrainerLoot75=1] pixelmon:hm3
scoreboard players add @a[score_TrainerLoot75_min=1,score_TrainerLoot75=1] TrainerLoot75 1



#Route 12 Lapras Lady
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokegive @a[score_TrainerLoot31_min=1,score_TrainerLoot31=1] Lapras lvl:30
scoreboard players add @a[score_TrainerLoot31_min=1,score_TrainerLoot31=1] TrainerLoot31 1

#Skiddo rancher
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokegive @a[score_TrainerLoot101_min=1,score_TrainerLoot101=1] Skiddo lvl:25
scoreboard players add @a[score_TrainerLoot101_min=1,score_TrainerLoot101=1] TrainerLoot101 1


give @a[score_TrainerLoot81_min=1,score_TrainerLoot81=1] pixelmon:tm45
scoreboard players add @a[score_TrainerLoot81_min=1,score_TrainerLoot81=1] TrainerLoot81 1


#Route 17 Mamoswine Person
#Moved to Dialogue100
#execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokegive @a[score_TrainerLoot61_min=1,score_TrainerLoot61=1,tag=Dialogue98] Mamoswine lvl:35 untradeable
#scoreboard players add @a[score_TrainerLoot61_min=1,score_TrainerLoot61=1,tag=Dialogue98] TrainerLoot61 1
#scoreboard players set @a[score_TrainerLoot61_min=1,score_TrainerLoot61=1,tag=!Dialogue98] TrainerLoot61 0


#Route 9 Rhyhorn Person
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokegive @a[score_TrainerLoot62_min=1,score_TrainerLoot62=1] Rhyhorn lvl:15 untradeable
scoreboard players add @a[score_TrainerLoot62_min=1,score_TrainerLoot62=1] TrainerLoot62 1



#Courmarine City
give @a[score_TrainerLoot15_min=1,score_TrainerLoot15=1] pixelmon:silk_scarf
scoreboard players add @a[score_TrainerLoot15_min=1,score_TrainerLoot15=1] TrainerLoot15 1

give @a[score_TrainerLoot16_min=1,score_TrainerLoot16=1] pixelmon:good_rod
scoreboard players add @a[score_TrainerLoot16_min=1,score_TrainerLoot16=1] TrainerLoot16 1

#Moved to Dialogue66
#give @a[score_TrainerLoot18_min=1,score_TrainerLoot18=1] minecraft:spawn_egg 1 1 {HideFlags:26,display:{Name:"HM02: Fly",Lore:["A tool used to return","to a familiar town."]},CanPlaceOn:["minecraft:air","minecraft:stone","minecraft:grass","minecraft:dirt","minecraft:cobblestone","minecraft:planks","minecraft:sapling","minecraft:bedrock","minecraft:flowing_water","minecraft:water","minecraft:flowing_lava","minecraft:lava","minecraft:sand","minecraft:gravel","minecraft:gold_ore","minecraft:iron_ore","minecraft:coal_ore","minecraft:log","minecraft:leaves","minecraft:sponge","minecraft:glass","minecraft:lapis_ore","minecraft:lapis_block","minecraft:dispenser","minecraft:sandstone","minecraft:noteblock","minecraft:bed","minecraft:golden_rail","minecraft:detector_rail","minecraft:sticky_piston","minecraft:web","minecraft:tallgrass","minecraft:deadbush","minecraft:piston","minecraft:piston_head","minecraft:wool","minecraft:piston_extension","minecraft:yellow_flower","minecraft:red_flower","minecraft:brown_mushroom","minecraft:red_mushroom","minecraft:gold_block","minecraft:iron_block","minecraft:double_stone_slab","minecraft:stone_slab","minecraft:brick_block","minecraft:tnt","minecraft:bookshelf","minecraft:mossy_cobblestone","minecraft:obsidian","minecraft:torch","minecraft:fire","minecraft:mob_spawner","minecraft:oak_stairs","minecraft:chest","minecraft:redstone_wire","minecraft:diamond_ore","minecraft:diamond_block","minecraft:crafting_table","minecraft:wheat","minecraft:farmland","minecraft:furnace","minecraft:lit_furnace","minecraft:standing_sign","minecraft:wooden_door","minecraft:ladder","minecraft:rail","minecraft:stone_stairs","minecraft:wall_sign","minecraft:lever","minecraft:stone_pressure_plate","minecraft:iron_door","minecraft:wooden_pressure_plate","minecraft:redstone_ore","minecraft:lit_redstone_ore","minecraft:unlit_redstone_torch","minecraft:redstone_torch","minecraft:stone_button","minecraft:snow_layer","minecraft:ice","minecraft:snow","minecraft:cactus","minecraft:clay","minecraft:reeds","minecraft:jukebox","minecraft:fence","minecraft:pumpkin","minecraft:netherrack","minecraft:soul_sand","minecraft:glowstone","minecraft:portal","minecraft:lit_pumpkin","minecraft:cake","minecraft:unpowered_repeater","minecraft:powered_repeater","minecraft:stained_glass","minecraft:trapdoor","minecraft:monster_egg","minecraft:stonebrick","minecraft:brown_mushroom_block","minecraft:red_mushroom_block","minecraft:iron_bars","minecraft:glass_pane","minecraft:melon_block","minecraft:pumpkin_stem","minecraft:melon_stem","minecraft:vine","minecraft:fence_gate","minecraft:brick_stairs","minecraft:stone_brick_stairs","minecraft:mycelium","minecraft:waterlily","minecraft:nether_brick","minecraft:nether_brick_fence","minecraft:nether_brick_stairs","minecraft:nether_wart","minecraft:enchanting_table","minecraft:brewing_stand","minecraft:cauldron","minecraft:end_portal","minecraft:end_portal_frame","minecraft:end_stone","minecraft:dragon_egg","minecraft:redstone_lamp","minecraft:lit_redstone_lamp","minecraft:double_wooden_slab","minecraft:wooden_slab","minecraft:cocoa","minecraft:sandstone_stairs","minecraft:emerald_ore","minecraft:ender_chest","minecraft:tripwire_hook","minecraft:tripwire","minecraft:emerald_block","minecraft:spruce_stairs","minecraft:birch_stairs","minecraft:jungle_stairs","minecraft:command_block","minecraft:beacon","minecraft:cobblestone_wall","minecraft:flower_pot","minecraft:carrots","minecraft:potatoes","minecraft:wooden_button","minecraft:skull","minecraft:anvil","minecraft:trapped_chest","minecraft:light_weighted_pressure_plate","minecraft:heavy_weighted_pressure_plate","minecraft:unpowered_comparator","minecraft:powered_comparator","minecraft:daylight_detector","minecraft:redstone_block","minecraft:quartz_ore","minecraft:hopper","minecraft:quartz_block","minecraft:quartz_stairs","minecraft:activator_rail","minecraft:dropper","minecraft:stained_hardened_clay","minecraft:stained_glass_pane","minecraft:log2","minecraft:acacia_stairs","minecraft:dark_oak_stairs","minecraft:slime","minecraft:barrier","minecraft:iron_trapdoor","minecraft:prismarine","minecraft:sea_lantern","minecraft:hay_block","minecraft:carpet","minecraft:hardened_clay","minecraft:coal_block","minecraft:packed_ice","minecraft:double_plant"]}
#give @a[score_TrainerLoot18_min=1,score_TrainerLoot18=1] pixelmon:hm2
#scoreboard players add @a[score_TrainerLoot18_min=1,score_TrainerLoot18=1] TrainerLoot18 1

give @a[score_TrainerLoot19_min=1,score_TrainerLoot19=1] pixelmon:metronome
scoreboard players add @a[score_TrainerLoot19_min=1,score_TrainerLoot19=1] TrainerLoot19 1

give @a[score_TrainerLoot20_min=1,score_TrainerLoot20=1] pixelmon:black_sludge
scoreboard players add @a[score_TrainerLoot20_min=1,score_TrainerLoot20=1] TrainerLoot20 1

give @a[score_TrainerLoot76_min=1,score_TrainerLoot76=1] emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
scoreboard players add @a[score_TrainerLoot76_min=1,score_TrainerLoot76=1] TrainerLoot76 1

give @a[score_TrainerLoot77_min=1,score_TrainerLoot77=1] pixelmon:lucky_egg
scoreboard players add @a[score_TrainerLoot77_min=1,score_TrainerLoot77=1] TrainerLoot77 1



#Power Plant
give @a[score_TrainerLoot21_min=1,score_TrainerLoot21=1] pixelmon:tm43
scoreboard players add @a[score_TrainerLoot21_min=1,score_TrainerLoot21=1] TrainerLoot21 1

give @a[score_TrainerLoot22_min=1,score_TrainerLoot22=1] pixelmon:magnet
scoreboard players add @a[score_TrainerLoot22_min=1,score_TrainerLoot22=1] TrainerLoot22 1


#Route 14
give @a[score_TrainerLoot24_min=1,score_TrainerLoot24=1] pixelmon:tm6
scoreboard players add @a[score_TrainerLoot24_min=1,score_TrainerLoot24=1] TrainerLoot24 1


#Laverre City
give @a[score_TrainerLoot25_min=1,score_TrainerLoot25=1] pixelmon:tm41
scoreboard players add @a[score_TrainerLoot25_min=1,score_TrainerLoot25=1] TrainerLoot25 1

give @a[score_TrainerLoot26_min=1,score_TrainerLoot26=1] pixelmon:dusk_stone
scoreboard players add @a[score_TrainerLoot26_min=1,score_TrainerLoot26=1] TrainerLoot26 1


#Poke Ball Factory
give @a[score_TrainerLoot27_min=1,score_TrainerLoot27=1] pixelmon:master_ball
give @a[score_TrainerLoot27_min=1,score_TrainerLoot27=1] pixelmon:big_nugget
scoreboard players add @a[score_TrainerLoot27_min=1,score_TrainerLoot27=1] TrainerLoot27 1




#Lost Hotel
give @a[score_TrainerLoot29_min=1,score_TrainerLoot29=1] pixelmon:tm56
scoreboard players add @a[score_TrainerLoot29_min=1,score_TrainerLoot29=1] TrainerLoot29 1


#Route 16
give @a[score_TrainerLoot30_min=1,score_TrainerLoot30=1] pixelmon:super_rod
give @a[score_TrainerLoot30_min=1,score_TrainerLoot30=1] pixelmon:dive_ball 10
scoreboard players add @a[score_TrainerLoot30_min=1,score_TrainerLoot30=1] TrainerLoot30 1

give @a[score_TrainerLoot87_min=1,score_TrainerLoot87=1] pixelmon:dive_ball 20
scoreboard players add @a[score_TrainerLoot87_min=1,score_TrainerLoot87=1] TrainerLoot87 1


#Dendemille Town
give @a[score_TrainerLoot32_min=1,score_TrainerLoot32=1] pixelmon:shell_bell
scoreboard players add @a[score_TrainerLoot32_min=1,score_TrainerLoot32=1] TrainerLoot32 1

give @a[score_TrainerLoot33_min=1,score_TrainerLoot33=1] pixelmon:big_nugget
scoreboard players add @a[score_TrainerLoot33_min=1,score_TrainerLoot33=1] TrainerLoot33 1

give @a[score_TrainerLoot34_min=1,score_TrainerLoot34=1] pixelmon:tm42
scoreboard players add @a[score_TrainerLoot34_min=1,score_TrainerLoot34=1] TrainerLoot34 1

give @a[score_TrainerLoot78_min=1,score_TrainerLoot78=1] pixelmon:sitrus_berry 1 0 {CanPlaceOn:[farmland]}
scoreboard players add @a[score_TrainerLoot78_min=1,score_TrainerLoot78=1] TrainerLoot78 1


#Anistar City
give @a[score_TrainerLoot35_min=1,score_TrainerLoot35=1] pixelmon:repeat_ball 10
scoreboard players add @a[score_TrainerLoot35_min=1,score_TrainerLoot35=1] TrainerLoot35 1

give @a[score_TrainerLoot41_min=1,score_TrainerLoot41=1] pixelmon:tm10
scoreboard players add @a[score_TrainerLoot41_min=1,score_TrainerLoot41=1] TrainerLoot41 1

execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=1,score_Weekday=2] ~ ~ ~ /give @a[score_TrainerLoot36_min=1,score_TrainerLoot36=1] pixelmon:tm35
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=1,score_Weekday=2] ~ ~ ~ /scoreboard players add @a[score_TrainerLoot36_min=1,score_TrainerLoot36=1] TrainerLoot36 1

execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=3,score_Weekday=3] ~ ~ ~ /give @a[score_TrainerLoot37_min=1,score_TrainerLoot37=1] pixelmon:tm77
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=3,score_Weekday=3] ~ ~ ~ /scoreboard players add @a[score_TrainerLoot37_min=1,score_TrainerLoot37=1] TrainerLoot37 1

execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=5] ~ ~ ~ /give @a[score_TrainerLoot38_min=1,score_TrainerLoot38=1] pixelmon:tm90
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=5] ~ ~ ~ /scoreboard players add @a[score_TrainerLoot38_min=1,score_TrainerLoot38=1] TrainerLoot38 1

execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=6,score_Weekday=7] ~ ~ ~ /give @a[score_TrainerLoot39_min=1,score_TrainerLoot39=1] pixelmon:tm32
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=6,score_Weekday=7] ~ ~ ~ /scoreboard players add @a[score_TrainerLoot39_min=1,score_TrainerLoot39=1] TrainerLoot39 1

scoreboard players set @a[score_TrainerLoot36_min=1,score_TrainerLoot36=1] TrainerLoot36 0
scoreboard players set @a[score_TrainerLoot37_min=1,score_TrainerLoot37=1] TrainerLoot37 0
scoreboard players set @a[score_TrainerLoot38_min=1,score_TrainerLoot38=1] TrainerLoot38 0
scoreboard players set @a[score_TrainerLoot39_min=1,score_TrainerLoot39=1] TrainerLoot39 0


#Couriway Town
give @a[score_TrainerLoot42_min=1,score_TrainerLoot42=1] pixelmon:tm89
scoreboard players add @a[score_TrainerLoot42_min=1,score_TrainerLoot42=1] TrainerLoot42 1

give @a[score_TrainerLoot43_min=1,score_TrainerLoot43=1] pixelmon:revive
scoreboard players add @a[score_TrainerLoot43_min=1,score_TrainerLoot43=1] TrainerLoot43 1

give @a[score_TrainerLoot44_min=1,score_TrainerLoot44=1] pixelmon:tm55
scoreboard players add @a[score_TrainerLoot44_min=1,score_TrainerLoot44=1] TrainerLoot44 1

give @a[score_TrainerLoot79_min=1,score_TrainerLoot79=1,score_StarterPick_min=1,score_StarterPick=1] pixelmon:miracle_seed
give @a[score_TrainerLoot79_min=1,score_TrainerLoot79=1,score_StarterPick_min=2,score_StarterPick=2] pixelmon:charcoal
give @a[score_TrainerLoot79_min=1,score_TrainerLoot79=1,score_StarterPick_min=3,score_StarterPick=3] pixelmon:mystic_water
scoreboard players add @a[score_TrainerLoot79_min=1,score_TrainerLoot79=1] TrainerLoot79 1


#Route 19
give @a[score_TrainerLoot45_min=1,score_TrainerLoot45=1] pixelmon:hm7
scoreboard players add @a[score_TrainerLoot45_min=1,score_TrainerLoot45=1] TrainerLoot45 1


#Snowbelle City
give @a[score_TrainerLoot47_min=1,score_TrainerLoot47=1] pixelmon:tm8
scoreboard players add @a[score_TrainerLoot47_min=1,score_TrainerLoot47=1] TrainerLoot47 1


#Pokemon Village
give @a[score_TrainerLoot49_min=1,score_TrainerLoot49=1] pixelmon:chople_berry 1 0 {CanPlaceOn:[farmland]}
scoreboard players add @a[score_TrainerLoot49_min=1,score_TrainerLoot49=1] TrainerLoot49 1

give @a[score_TrainerLoot50_min=1,score_TrainerLoot50=1] pixelmon:pretty_wing
scoreboard players add @a[score_TrainerLoot50_min=1,score_TrainerLoot50=1] TrainerLoot50 1


#Kiloude City
give @a[score_TrainerLoot51_min=1,score_TrainerLoot51=1] pixelmon:tm91
scoreboard players add @a[score_TrainerLoot51_min=1,score_TrainerLoot51=1] TrainerLoot51 1

give @a[score_TrainerLoot52_min=1,score_TrainerLoot52=1] pixelmon:tm58
scoreboard players add @a[score_TrainerLoot52_min=1,score_TrainerLoot52=1] TrainerLoot52 1

give @a[score_TrainerLoot80_min=1,score_TrainerLoot80=1] pixelmon:max_revive
scoreboard players add @a[score_TrainerLoot80_min=1,score_TrainerLoot80=1] TrainerLoot80 1

give @a[score_TrainerLoot60_min=1,score_TrainerLoot60=1] written_book 1 0 {pages:["[\"\",{\"text\":\"Click what type you want to explore!\\n\\n[\"},{\"text\":\"Normal\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 100\"}},{\"text\":\"]\\n[\"},{\"text\":\"Fire\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 101\"}},{\"text\":\"]\\n[\"},{\"text\":\"Fighting\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 102\"}},{\"text\":\"]\\n[\"},{\"text\":\"Water\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 103\"}},{\"text\":\"]\\n[\"},{\"text\":\"Flying\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 104\"}},{\"text\":\"]\\n[\"},{\"text\":\"Grass\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 105\"}},{\"text\":\"]\\n[\"},{\"text\":\"Poison\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 106\"}},{\"text\":\"]\\n[\"},{\"text\":\"Electric\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 107\"}},{\"text\":\"]\\n[\"},{\"text\":\"Ground\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 108\"}},{\"text\":\"]\\n[\"},{\"text\":\"Psychic\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 109\"}},{\"text\":\"]\\n\\n \"}]","[\"\",{\"text\":\"[\"},{\"text\":\"Rock\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 110\"}},{\"text\":\"]\\n[\"},{\"text\":\"Ice\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 111\"}},{\"text\":\"]\\n[\"},{\"text\":\"Bug\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 112\"}},{\"text\":\"]\\n[\"},{\"text\":\"Dragon\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 113\"}},{\"text\":\"]\\n[\"},{\"text\":\"Ghost\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 114\"}},{\"text\":\"]\\n[\"},{\"text\":\"Dark\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 115\"}},{\"text\":\"]\\n[\"},{\"text\":\"Steel\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 116\"}},{\"text\":\"]\\n[\"},{\"text\":\"Fairy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 117\"}},{\"text\":\"]\\n \"}]"],title:"Friend Safari",author:"",display:{Lore:["A tool to activate your","Friend Safari codes!"]}}
scoreboard players add @a[score_TrainerLoot60_min=1,score_TrainerLoot60=1] TrainerLoot60 1


#Mega Stones
#moved Abomasite to dialogue
#give @a[score_TrainerLoot54_min=1,score_TrainerLoot54=1] pixelmon:abomasite
#playsound pixelmon:pixelmon.mob.abomasnow ambient @a[score_TrainerLoot54_min=1,score_TrainerLoot54=1] ~ ~ ~ 10 1 1
#tellraw @a[score_TrainerLoot54_min=1,score_TrainerLoot54=1] {"text":"Whooo whooon!!","italic":true,"color":"gray"}
#scoreboard players add @a[score_TrainerLoot54_min=1,score_TrainerLoot54=1] TrainerLoot54 1

give @a[score_TrainerLoot55_min=1,score_TrainerLoot55=1] pixelmon:aerodactylite
scoreboard players add @a[score_TrainerLoot55_min=1,score_TrainerLoot55=1] TrainerLoot55 1

give @a[score_TrainerLoot56_min=1,score_TrainerLoot56=1] pixelmon:ampharosite
scoreboard players add @a[score_TrainerLoot56_min=1,score_TrainerLoot56=1] TrainerLoot56 1

give @a[score_TrainerLoot58_min=1,score_TrainerLoot58=1] pixelmon:gengarite
scoreboard players add @a[score_TrainerLoot58_min=1,score_TrainerLoot58=1] TrainerLoot58 1

#Korrina's Lucario
#Moved to Dialogue63
#give @a[score_TrainerLoot59_min=1,score_TrainerLoot59=1] pixelmon:lucarionite
#scoreboard players add @a[score_TrainerLoot59_min=1,score_TrainerLoot59=1] TrainerLoot59 1


#Mega Ring and unlocks wild Mega Stones
#Moved to Dialogue64 for Lucario
#Moved Unlocking hidden stones until Sycamore's Mega Ring Upgrade (Dialogue~163)
#execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /megaring @a[score_TrainerLoot86_min=1,score_TrainerLoot86=1]
#execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokegive @a[score_TrainerLoot86_min=1,score_TrainerLoot86=1] Lucario lvl:32 gr:7 ab:Steadfast

#scoreboard players set @a[score_TrainerLoot86_min=1,score_TrainerLoot86=1] MegaStones 1
#scoreboard players set @a[score_TrainerLoot86_min=1,score_TrainerLoot86=1] Abomasite 0
#scoreboard players set @a[score_TrainerLoot86_min=1,score_TrainerLoot86=1] Absolite 0
#scoreboard players set @a[score_TrainerLoot86_min=1,score_TrainerLoot86=1] Aggronite 0
#scoreboard players set @a[score_TrainerLoot86_min=1,score_TraizerLoot86=1] Alakazite 0
#scoreboard players set @a[score_TrainerLoot86_min=1,score_TrainerLoot86=1] Banettite 0
#scoreboard players set @a[score_TrainerLoot86_min=1,score_TrainerLoot86=1] Diancite 0
#scoreboard players set @a[score_TrainerLoot86_min=1,score_TrainerLoot86=1] Garchompite 0
#scoreboard players set @a[score_TrainerLoot86_min=1,score_TrainerLoot86=1] Gyaradosite 0
#scoreboard players set @a[score_TrainerLoot86_min=1,score_TrainerLoot86=1] Heracronite 0
#scoreboard players set @a[score_TrainerLoot86_min=1,score_TrainerLoot86=1] Houndoominite 0
#scoreboard players set @a[score_TrainerLoot86_min=1,score_TrainerLoot86=1] Kangaskhanite 0
#scoreboard players set @a[score_TrainerLoot86_min=1,score_TrainerLoot86=1] Manectite 0
#scoreboard players set @a[score_TrainerLoot86_min=1,score_TrainerLoot86=1] Mawilite 0
#scoreboard players set @a[score_TrainerLoot86_min=1,score_TrainerLoot86=1] Medichamite 0
#scoreboard players set @a[score_TrainerLoot86_min=1,score_TrainerLoot86=1] Mewtwonite_X 0
#scoreboard players set @a[score_TrainerLoot86_min=1,score_TrainerLoot86=1] Mewtwonite_Y 0
#scoreboard players set @a[score_TrainerLoot86_min=1,score_TrainerLoot86=1] Pinsirite 0
#scoreboard players set @a[score_TrainerLoot86_min=1,score_TrainerLoot86=1] Scizorite 0
#scoreboard players set @a[score_TrainerLoot86_min=1,score_TrainerLoot86=1] Tyranitarite 0
#tellraw @a[score_TrainerLoot86_min=1,score_TrainerLoot86=1] {"text":"You can now find Mega Stones scattered throughout Kalos!","italic":true,"color":"gray"}
#scoreboard players add @a[score_TrainerLoot86_min=1,score_TrainerLoot86=1] TrainerLoot86 1



#Lysandre's Lab
#Team Flare Grunt
give @a[score_TrainerLoot97_min=1,score_TrainerLoot97=1] pixelmon:tm12
scoreboard players add @a[score_TrainerLoot97_min=1,score_TrainerLoot97=1] TrainerLoot97 1



#Red and blue buttons moved to TalkTrigger and Dialogue118-120

#Blue Button (Xerneas)
#scoreboard players set @a[score_TrainerLoot85_min=1,score_TrainerLoot85=1,score_Yveltal_min=1,score_Yveltal=1] Yveltal 0
#scoreboard players set @a[score_TrainerLoot85_min=1,score_TrainerLoot85=1,score_Xerneas=0] Xerneas 1
#execute @a[score_TrainerLoot85_min=1,score_TrainerLoot85=1] ~ ~ ~ /entitydata @e[x=-319,y=106,z=314,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:31s}]}
#execute @a[score_TrainerLoot85_min=1,score_TrainerLoot85=1] ~ ~ ~ /entitydata @e[x=-302,y=106,z=314,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:32s}]}
#tellraw @a[score_TrainerLoot85_min=1,score_TrainerLoot85=1,score_Xerneas_min=0,score_Xerneas=1] {"text":"You pressed the blue button... A signal was sent to Geosenge somewhere...","italic":true,"color":"gray"}
#tellraw @a[score_TrainerLoot85_min=1,score_TrainerLoot85=1,score_Xerneas_min=2] {"text":"You pressed the blue button... but nothing happened!","italic":true,"color":"gray"}
#scoreboard players set @a[score_TrainerLoot85_min=1,score_TrainerLoot85=1] TrainerLoot85 0

#Red Button (Yveltal)
#scoreboard players set @a[score_TrainerLoot84_min=1,score_TrainerLoot84=1,score_Xerneas_min=1,score_Xerneas=1] Xerneas 0
#scoreboard players set @a[score_TrainerLoot84_min=1,score_TrainerLoot84=1,score_Yveltal=0] Yveltal 1
#execute @a[score_TrainerLoot84_min=1,score_TrainerLoot84=1] ~ ~ ~ /entitydata @e[x=-319,y=106,z=314,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:33s}]}
#execute @a[score_TrainerLoot84_min=1,score_TrainerLoot84=1] ~ ~ ~ /entitydata @e[x=-302,y=106,z=314,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:30s}]}
#tellraw @a[score_TrainerLoot84_min=1,score_TrainerLoot84=1,score_Yveltal_min=0,score_Yveltal=1] {"text":"You pressed the red button... A signal was sent to Geosenge somewhere...","italic":true,"color":"gray"}
#tellraw @a[score_TrainerLoot84_min=1,score_TrainerLoot84=1,score_Yveltal_min=2] {"text":"You pressed the red button... but nothing happened!","italic":true,"color":"gray"}
#scoreboard players set @a[score_TrainerLoot84_min=1,score_TrainerLoot84=1] TrainerLoot84 0





#NPCs wanting to see Pokemon
#Genesect
execute @a[x=-1947,y=140,z=594,r=15,type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!Genesect] add Genesect {ndex:649s}
execute @e[tag=Genesect,type=pixelmon:pixelmon,c=1] ~ ~ ~ /tellraw @a[score_TrainerLoot98_min=1,score_TrainerLoot98=1] {"text":"<Hiker> Is that Pokémon with you... Genesect?! Well then, why don\u2019t I give you these four drives?"}
execute @e[tag=Genesect,type=pixelmon:pixelmon,c=1] ~ ~ ~ /give @a[score_TrainerLoot98_min=1,score_TrainerLoot98=1] pixelmon:shock_drive
execute @e[tag=Genesect,type=pixelmon:pixelmon,c=1] ~ ~ ~ /give @a[score_TrainerLoot98_min=1,score_TrainerLoot98=1] pixelmon:burn_drive
execute @e[tag=Genesect,type=pixelmon:pixelmon,c=1] ~ ~ ~ /give @a[score_TrainerLoot98_min=1,score_TrainerLoot98=1] pixelmon:douse_drive
execute @e[tag=Genesect,type=pixelmon:pixelmon,c=1] ~ ~ ~ /give @a[score_TrainerLoot98_min=1,score_TrainerLoot98=1] pixelmon:chill_drive
execute @e[tag=Genesect,type=pixelmon:pixelmon,c=1] ~ ~ ~ /scoreboard players add @a[score_TrainerLoot98_min=1,score_TrainerLoot98=1] TrainerLoot98 1
scoreboard players set @a[score_TrainerLoot98_min=1,score_TrainerLoot98=1] TrainerLoot98 0


#Genie Trio
execute @a[x=-1697,y=69,z=-345,r=20,type=player,score_TrainerLoot99_min=1,score_TrainerLoot99=1] ~ ~ ~ /scoreboard players tag @e[r=20,type=pixelmon:pixelmon,tag=!Genie] add Genie {ndex:642s}
execute @a[x=-1697,y=69,z=-345,r=20,type=player,score_TrainerLoot99_min=1,score_TrainerLoot99=1] ~ ~ ~ /scoreboard players tag @e[r=20,type=pixelmon:pixelmon,tag=!Genie] add Genie {ndex:641s}
execute @a[x=-1697,y=69,z=-345,r=20,type=player,score_TrainerLoot99_min=1,score_TrainerLoot99=1] ~ ~ ~ /scoreboard players tag @e[r=20,type=pixelmon:pixelmon,tag=!Genie] add Genie {ndex:645s}
execute @e[tag=Genie,type=pixelmon:pixelmon,c=1] ~ ~ ~ /tellraw @a[score_TrainerLoot99_min=1,score_TrainerLoot99=1] ["",{"text":"<Scientist Marie> Oh! That Pokémon with you! That is the "},{"selector":"@e[x=-1697,y=69,z=-345,r=20,type=pixelmon:pixelmon,tag=Genie]"},{"text":" of legend! Then take this, won\u2019t you?"}]
execute @e[tag=Genie,type=pixelmon:pixelmon,c=1] ~ ~ ~ /give @a[score_TrainerLoot99_min=1,score_TrainerLoot99=1] pixelmon:reveal_glass
execute @e[tag=Genie,type=pixelmon:pixelmon,c=1] ~ ~ ~ /scoreboard players add @a[score_TrainerLoot99_min=1,score_TrainerLoot99=1] TrainerLoot99 1
scoreboard players set @a[score_TrainerLoot99_min=1,score_TrainerLoot99=1] TrainerLoot99 0

#Shaymin
execute @a[x=1195,y=74,z=472,dx=50,dy=10,dz=50,type=player,score_TrainerLoot46_min=1,score_TrainerLoot46=1] ~ ~ ~ /scoreboard players tag @e[x=1195,y=74,z=472,dx=50,dy=10,dz=50,type=pixelmon:pixelmon,tag=!Shaymin] add Shaymin {ndex:492s}
execute @e[x=1195,y=74,z=472,dx=50,dy=10,dz=50,tag=Shaymin,type=pixelmon:pixelmon,c=1] ~ ~ ~ /tellraw @a[x=1195,y=74,z=472,dx=50,dy=10,dz=50,type=player,score_TrainerLoot46_min=1,score_TrainerLoot46=1] {"text":"<Lass Amy> Oh, wow! It's Shaymin! When I see Shaymin, the first thing that comes to mind is the Gracidea flower! And it just so happens that I have a bunch. I'd be happy to share with you!"}
execute @e[x=1195,y=74,z=472,dx=50,dy=10,dz=50,tag=Shaymin,type=pixelmon:pixelmon,c=1] ~ ~ ~ /give @a[score_TrainerLoot46_min=1,score_TrainerLoot46=1] pixelmon:gracidea
execute @e[x=1195,y=74,z=472,dx=50,dy=10,dz=50,tag=Shaymin,type=pixelmon:pixelmon,c=1] ~ ~ ~ /scoreboard players add @a[score_TrainerLoot46_min=1,score_TrainerLoot46=1] TrainerLoot46 1
scoreboard players set @a[score_TrainerLoot46_min=1,score_TrainerLoot46=1] TrainerLoot46 0

#Deoxys








#Kyurem
execute @a[x=1143,y=65,z=1512,dx=39,dy=10,dz=26,type=player,score_TrainerLoot100_min=1,score_TrainerLoot100=1] ~ ~ ~ /scoreboard players tag @e[x=1143,y=65,z=1512,dx=39,dy=10,dz=26,type=pixelmon:pixelmon,tag=!Kyurem] add Kyurem {ndex:646s}
execute @e[x=1143,y=65,z=1512,dx=39,dy=10,dz=26,tag=Kyurem,type=pixelmon:pixelmon,c=1] ~ ~ ~ /tellraw @a[x=1143,y=65,z=1512,dx=39,dy=10,dz=26,type=player,score_TrainerLoot100_min=1,score_TrainerLoot100=1] {"text":"<Punk Girl> That's Kyurem! Then, take these... The great Pokémon Kyurem can use those DNA Splicers... Then it can absofuse with Reshiram or Zekrom!"}
execute @e[x=1143,y=65,z=1512,dx=39,dy=10,dz=26,tag=Kyurem,type=pixelmon:pixelmon,c=1] ~ ~ ~ /give @a[score_TrainerLoot100_min=1,score_TrainerLoot100=1] pixelmon:dna_splicers
execute @e[x=1143,y=65,z=1512,dx=39,dy=10,dz=26,tag=Kyurem,type=pixelmon:pixelmon,c=1] ~ ~ ~ /scoreboard players add @a[score_TrainerLoot100_min=1,score_TrainerLoot100=1] TrainerLoot100 1
scoreboard players set @a[score_TrainerLoot100_min=1,score_TrainerLoot100=1] TrainerLoot100 0
