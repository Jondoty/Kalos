#Runs each time the player clicks on an interaction entity with the tag ItemLoot

execute as @s[x=488,y=100,z=1353,distance=..5,tag=ItemLoot1] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=488,y=100,z=1353,distance=..5,tag=!ItemLoot1] run give @s cobblemon:potion
execute as @s[x=488,y=100,z=1353,distance=..5,tag=!ItemLoot1] run tellraw @s {"text":"You received a Potion!","italic":true,"color":"gray"}
execute as @s[x=488,y=100,z=1353,distance=..5,tag=!ItemLoot1] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=488,y=100,z=1353,distance=..5,tag=!ItemLoot1] run tag @s add ItemLoot1

execute as @s[x=460,y=100,z=1103,distance=..5,tag=ItemLoot2] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=460,y=100,z=1103,distance=..5,tag=!ItemLoot2] run give @s cobblemon:poke_ball 10
execute as @s[x=460,y=100,z=1103,distance=..5,tag=!ItemLoot2] run tellraw @s {"text":"You found 10 Poke Balls!","italic":true,"color":"gray"}
execute as @s[x=460,y=100,z=1103,distance=..5,tag=!ItemLoot2] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=460,y=100,z=1103,distance=..5,tag=!ItemLoot2] run tag @s add ItemLoot2

execute as @s[x=383,y=100,z=956,distance=..5,tag=ItemLoot3] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=383,y=100,z=956,distance=..5,tag=!ItemLoot3] run give @s cobblemon:antidote
execute as @s[x=383,y=100,z=956,distance=..5,tag=!ItemLoot3] run tellraw @s {"text":"You found an Antidote!","italic":true,"color":"gray"}
execute as @s[x=383,y=100,z=956,distance=..5,tag=!ItemLoot3] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=383,y=100,z=956,distance=..5,tag=!ItemLoot3] run tag @s add ItemLoot3

execute as @s[x=394,y=100,z=893,distance=..5,tag=ItemLoot4] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=394,y=100,z=893,distance=..5,tag=!ItemLoot4] run give @s cobblemon:potion
execute as @s[x=394,y=100,z=893,distance=..5,tag=!ItemLoot4] run tellraw @s {"text":"You found a Potion!","italic":true,"color":"gray"}
execute as @s[x=394,y=100,z=893,distance=..5,tag=!ItemLoot4] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=394,y=100,z=893,distance=..5,tag=!ItemLoot4] run tag @s add ItemLoot4

execute as @s[x=493,y=100,z=944,distance=..5,tag=ItemLoot5] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=493,y=100,z=944,distance=..5,tag=!ItemLoot5] run give @s cobblemon:potion
execute as @s[x=493,y=100,z=944,distance=..5,tag=!ItemLoot5] run tellraw @s {"text":"You found a Potion!","italic":true,"color":"gray"}
execute as @s[x=493,y=100,z=944,distance=..5,tag=!ItemLoot5] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=493,y=100,z=944,distance=..5,tag=!ItemLoot5] run tag @s add ItemLoot5

execute as @s[x=376,y=100,z=866,distance=..5,tag=ItemLoot6] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=376,y=100,z=866,distance=..5,tag=!ItemLoot6] run give @s cobblemon:potion
execute as @s[x=376,y=100,z=866,distance=..5,tag=!ItemLoot6] run tellraw @s {"text":"You found a Potion!","italic":true,"color":"gray"}
execute as @s[x=376,y=100,z=866,distance=..5,tag=!ItemLoot6] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=376,y=100,z=866,distance=..5,tag=!ItemLoot6] run tag @s add ItemLoot6

execute as @s[x=468,y=100,z=784,distance=..5,tag=ItemLoot8] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=468,y=100,z=784,distance=..5,tag=!ItemLoot8] run give @s cobblemon:poke_ball
execute as @s[x=468,y=100,z=784,distance=..5,tag=!ItemLoot8] run tellraw @s {"text":"You found a Poke Ball!","italic":true,"color":"gray"}
execute as @s[x=468,y=100,z=784,distance=..5,tag=!ItemLoot8] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=468,y=100,z=784,distance=..5,tag=!ItemLoot8] run tag @s add ItemLoot8

execute as @s[x=328,y=94,z=642,distance=..5,tag=ItemLoot10] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=328,y=94,z=642,distance=..5,tag=!ItemLoot10] run give @s cobblemon:super_potion
execute as @s[x=328,y=94,z=642,distance=..5,tag=!ItemLoot10] run tellraw @s {"text":"You found a Super Potion!","italic":true,"color":"gray"}
execute as @s[x=328,y=94,z=642,distance=..5,tag=!ItemLoot10] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=328,y=94,z=642,distance=..5,tag=!ItemLoot10] run tag @s add ItemLoot10

execute as @s[x=398,y=94,z=560,distance=..5,tag=ItemLoot11] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=398,y=94,z=560,distance=..5,tag=!ItemLoot11] run give @s cobblemon:revive
execute as @s[x=398,y=94,z=560,distance=..5,tag=!ItemLoot11] run tellraw @s {"text":"You found a Revive!","italic":true,"color":"gray"}
execute as @s[x=398,y=94,z=560,distance=..5,tag=!ItemLoot11] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=398,y=94,z=560,distance=..5,tag=!ItemLoot11] run tag @s add ItemLoot11

execute as @s[x=293,y=100,z=699,distance=..5,tag=ItemLoot12] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=293,y=100,z=699,distance=..5,tag=!ItemLoot12] run give @s cobblemon:dawn_stone
execute as @s[x=293,y=100,z=699,distance=..5,tag=!ItemLoot12] run tellraw @s {"text":"You found a Dawn Stone!","italic":true,"color":"gray"}
execute as @s[x=293,y=100,z=699,distance=..5,tag=!ItemLoot12] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=293,y=100,z=699,distance=..5,tag=!ItemLoot12] run tag @s add ItemLoot12

execute as @s[x=323,y=101,z=432,distance=..5,tag=ItemLoot13] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=323,y=101,z=432,distance=..5,tag=!ItemLoot13] run give @s cobblemon:great_ball
execute as @s[x=323,y=101,z=432,distance=..5,tag=!ItemLoot13] run tellraw @s {"text":"You found a Great Ball!","italic":true,"color":"gray"}
execute as @s[x=323,y=101,z=432,distance=..5,tag=!ItemLoot13] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=323,y=101,z=432,distance=..5,tag=!ItemLoot13] run tag @s add ItemLoot13

execute as @s[x=158,y=100,z=454,distance=..5,tag=ItemLoot14] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=158,y=100,z=454,distance=..5,tag=!ItemLoot14] run give @s cobblemon:great_ball
execute as @s[x=158,y=100,z=454,distance=..5,tag=!ItemLoot14] run tellraw @s {"text":"You found a Great Ball!","italic":true,"color":"gray"}
execute as @s[x=158,y=100,z=454,distance=..5,tag=!ItemLoot14] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=158,y=100,z=454,distance=..5,tag=!ItemLoot14] run tag @s add ItemLoot14

execute as @s[x=109,y=104,z=444,distance=..5,tag=ItemLoot15] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=109,y=104,z=444,distance=..5,tag=!ItemLoot15] run give @s cobblemon:antidote
execute as @s[x=109,y=104,z=444,distance=..5,tag=!ItemLoot15] run tellraw @s {"text":"You found an Antidote!","italic":true,"color":"gray"}
execute as @s[x=109,y=104,z=444,distance=..5,tag=!ItemLoot15] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=109,y=104,z=444,distance=..5,tag=!ItemLoot15] run tag @s add ItemLoot15

execute as @s[x=146,y=104,z=436,distance=..5,tag=ItemLoot16] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=146,y=104,z=436,distance=..5,tag=!ItemLoot16] run give @s cobblemon:super_potion
execute as @s[x=146,y=104,z=436,distance=..5,tag=!ItemLoot16] run tellraw @s {"text":"You found a Super Potion!","italic":true,"color":"gray"}
execute as @s[x=146,y=104,z=436,distance=..5,tag=!ItemLoot16] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=146,y=104,z=436,distance=..5,tag=!ItemLoot16] run tag @s add ItemLoot16

execute as @s[x=246,y=85,z=402,distance=..5,tag=ItemLoot16] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=246,y=85,z=402,distance=..5,tag=!ItemLoot16] run give @s cobblemon:x_attack 3
execute as @s[x=246,y=85,z=402,distance=..5,tag=!ItemLoot16] run give @s cobblemon:x_defence 3
execute as @s[x=246,y=85,z=402,distance=..5,tag=!ItemLoot16] run tellraw @s {"text":"You found a Super Potion!","italic":true,"color":"gray"}
execute as @s[x=246,y=85,z=402,distance=..5,tag=!ItemLoot16] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=246,y=85,z=402,distance=..5,tag=!ItemLoot16] run tag @s add ItemLoot16

#execute as @s[x=154,y=100,z=268,distance=..5,tag=ItemLoot20] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
#execute as @s[x=154,y=100,z=268,distance=..5,tag=!ItemLoot20] run give @s cobblemon:repel
#execute as @s[x=154,y=100,z=268,distance=..5,tag=!ItemLoot20] run tellraw @s {"text":"You found a Repel!","italic":true,"color":"gray"}
#execute as @s[x=154,y=100,z=268,distance=..5,tag=!ItemLoot20] run playsound itemget ambient @s ~ ~ ~ 1 1 1
#execute as @s[x=154,y=100,z=268,distance=..5,tag=!ItemLoot20] run tag @s add ItemLoot20

execute as @s[x=128,y=100,z=295,distance=..5,tag=ItemLoot21] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=128,y=100,z=295,distance=..5,tag=!ItemLoot21] run function kalos:spawn/honey
execute as @s[x=128,y=100,z=295,distance=..5,tag=!ItemLoot21] run tellraw @s {"text":"You found a Honey!","italic":true,"color":"gray"}
execute as @s[x=128,y=100,z=295,distance=..5,tag=!ItemLoot21] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=128,y=100,z=295,distance=..5,tag=!ItemLoot21] run tag @s add ItemLoot21

execute as @s[x=178,y=100,z=66,distance=..5,tag=ItemLoot22] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=178,y=100,z=66,distance=..5,tag=!ItemLoot22] run function kalos:spawn/honey
execute as @s[x=178,y=100,z=66,distance=..5,tag=!ItemLoot22] run tellraw @s {"text":"You found a Honey!","italic":true,"color":"gray"}
execute as @s[x=178,y=100,z=66,distance=..5,tag=!ItemLoot22] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=178,y=100,z=66,distance=..5,tag=!ItemLoot22] run tag @s add ItemLoot22

execute as @s[x=151,y=100,z=-47,distance=..5,tag=ItemLoot23] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=151,y=100,z=-47,distance=..5,tag=!ItemLoot23] run function kalos:spawn/honey
execute as @s[x=151,y=100,z=-47,distance=..5,tag=!ItemLoot23] run tellraw @s {"text":"You found a Honey!","italic":true,"color":"gray"}
execute as @s[x=151,y=100,z=-47,distance=..5,tag=!ItemLoot23] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=151,y=100,z=-47,distance=..5,tag=!ItemLoot23] run tag @s add ItemLoot23

execute as @s[x=196,y=100,z=275,distance=..5,tag=ItemLoot24] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=196,y=100,z=275,distance=..5,tag=!ItemLoot24] run give @s cobblemon:super_potion
execute as @s[x=196,y=100,z=275,distance=..5,tag=!ItemLoot24] run tellraw @s {"text":"You found a Super Potion!","italic":true,"color":"gray"}
execute as @s[x=196,y=100,z=275,distance=..5,tag=!ItemLoot24] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=196,y=100,z=275,distance=..5,tag=!ItemLoot24] run tag @s add ItemLoot24

execute as @s[x=206,y=100,z=-48,distance=..5,tag=ItemLoot25] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=206,y=100,z=-48,distance=..5,tag=!ItemLoot25] run give @s cobblemon:super_potion
execute as @s[x=206,y=100,z=-48,distance=..5,tag=!ItemLoot25] run tellraw @s {"text":"You found a Super Potion!","italic":true,"color":"gray"}
execute as @s[x=206,y=100,z=-48,distance=..5,tag=!ItemLoot25] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=206,y=100,z=-48,distance=..5,tag=!ItemLoot25] run tag @s add ItemLoot25

execute as @s[x=203,y=100,z=226,distance=..5,tag=ItemLoot26] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=203,y=100,z=226,distance=..5,tag=!ItemLoot26] run give @s cobblemon:great_ball
execute as @s[x=203,y=100,z=226,distance=..5,tag=!ItemLoot26] run tellraw @s {"text":"You found a Great Ball!","italic":true,"color":"gray"}
execute as @s[x=203,y=100,z=226,distance=..5,tag=!ItemLoot26] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=203,y=100,z=226,distance=..5,tag=!ItemLoot26] run tag @s add ItemLoot26

execute as @s[x=147,y=100,z=228,distance=..5,tag=ItemLoot27] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=147,y=100,z=228,distance=..5,tag=!ItemLoot27] run give @s cobblemon:antidote
execute as @s[x=147,y=100,z=228,distance=..5,tag=!ItemLoot27] run tellraw @s {"text":"You found an Antidote!","italic":true,"color":"gray"}
execute as @s[x=147,y=100,z=228,distance=..5,tag=!ItemLoot27] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=147,y=100,z=228,distance=..5,tag=!ItemLoot27] run tag @s add ItemLoot27

execute as @s[x=180,y=100,z=15,distance=..5,tag=ItemLoot28] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=180,y=100,z=15,distance=..5,tag=!ItemLoot28] run give @s cobblemon:poison_barb
execute as @s[x=180,y=100,z=15,distance=..5,tag=!ItemLoot28] run tellraw @s {"text":"You found a Poison Barb!","italic":true,"color":"gray"}
execute as @s[x=180,y=100,z=15,distance=..5,tag=!ItemLoot28] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=180,y=100,z=15,distance=..5,tag=!ItemLoot28] run tag @s add ItemLoot28

execute as @s[x=125,y=100,z=-68,distance=..5,tag=ItemLoot29] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=125,y=100,z=-68,distance=..5,tag=!ItemLoot29] run give @s cobblemon:net_ball
execute as @s[x=125,y=100,z=-68,distance=..5,tag=!ItemLoot29] run tellraw @s {"text":"You found a Poison Barb!","italic":true,"color":"gray"}
execute as @s[x=125,y=100,z=-68,distance=..5,tag=!ItemLoot29] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=125,y=100,z=-68,distance=..5,tag=!ItemLoot29] run tag @s add ItemLoot29

execute as @s[x=232,y=100,z=-65,distance=..5,tag=ItemLoot30] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=232,y=100,z=-65,distance=..5,tag=!ItemLoot30] run give @s cobblemon:ether
execute as @s[x=232,y=100,z=-65,distance=..5,tag=!ItemLoot30] run tellraw @s {"text":"You found an Ether!","italic":true,"color":"gray"}
execute as @s[x=232,y=100,z=-65,distance=..5,tag=!ItemLoot30] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=232,y=100,z=-65,distance=..5,tag=!ItemLoot30] run tag @s add ItemLoot30

execute as @s[x=-68,y=101,z=203,distance=..5,tag=ItemLoot33] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-68,y=101,z=203,distance=..5,tag=!ItemLoot33] run give @s cobblemon:wide_lens
execute as @s[x=-68,y=101,z=203,distance=..5,tag=!ItemLoot33] run tellraw @s {"text":"You received a Wide Lens!","italic":true,"color":"gray"}
execute as @s[x=-68,y=101,z=203,distance=..5,tag=!ItemLoot33] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-68,y=101,z=203,distance=..5,tag=!ItemLoot33] run tag @s add ItemLoot33

execute as @s[x=-261,y=111,z=91,distance=..5,tag=ItemLoot36] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-261,y=111,z=91,distance=..5,tag=!ItemLoot36] run give @s cobblemon:luxury_ball 5
execute as @s[x=-261,y=111,z=91,distance=..5,tag=!ItemLoot36] run tellraw @s {"text":"You received 5 Luxury Balls!","italic":true,"color":"gray"}
execute as @s[x=-261,y=111,z=91,distance=..5,tag=!ItemLoot36] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-261,y=111,z=91,distance=..5,tag=!ItemLoot36] run tag @s add ItemLoot36

execute as @s[x=-410,y=121,z=96,distance=..5,tag=ItemLoot48] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-410,y=121,z=96,distance=..5,tag=!ItemLoot48] run give @s cobblemon:prism_scale
execute as @s[x=-410,y=121,z=96,distance=..5,tag=!ItemLoot48] run tellraw @s {"text":"You received a Prism Scale!","italic":true,"color":"gray"}
execute as @s[x=-410,y=121,z=96,distance=..5,tag=!ItemLoot48] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-410,y=121,z=96,distance=..5,tag=!ItemLoot48] run tag @s add ItemLoot48

execute as @s[x=-151,y=121,z=208,distance=..5,tag=ItemLoot49] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-151,y=121,z=208,distance=..5,tag=!ItemLoot49] run give @s cobblemon:expert_belt
execute as @s[x=-151,y=121,z=208,distance=..5,tag=!ItemLoot49] run tellraw @s {"text":"You received an Expert Belt!","italic":true,"color":"gray"}
execute as @s[x=-151,y=121,z=208,distance=..5,tag=!ItemLoot49] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-151,y=121,z=208,distance=..5,tag=!ItemLoot49] run tag @s add ItemLoot49

execute as @s[x=-146,y=121,z=211,distance=..5,tag=ItemLoot50] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-146,y=121,z=211,distance=..5,tag=!ItemLoot50] run give @s cobblemon:protein
execute as @s[x=-146,y=121,z=211,distance=..5,tag=!ItemLoot50] run tellraw @s {"text":"You received a Protein!","italic":true,"color":"gray"}
execute as @s[x=-146,y=121,z=211,distance=..5,tag=!ItemLoot50] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-146,y=121,z=211,distance=..5,tag=!ItemLoot50] run tag @s add ItemLoot50

execute as @s[x=-364,y=141,z=349,distance=..5,tag=ItemLoot60] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-364,y=141,z=349,distance=..5,tag=!ItemLoot60] run give @s cobblemon:revive
execute as @s[x=-364,y=141,z=349,distance=..5,tag=!ItemLoot60] run tellraw @s {"text":"You found a Revive!","italic":true,"color":"gray"}
execute as @s[x=-364,y=141,z=349,distance=..5,tag=!ItemLoot60] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-364,y=141,z=349,distance=..5,tag=!ItemLoot60] run tag @s add ItemLoot60

execute as @s[x=-244,y=141,z=338,distance=..5,tag=ItemLoot61] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-244,y=141,z=338,distance=..5,tag=!ItemLoot61] run give @s cobblemon:black_glasses
execute as @s[x=-244,y=141,z=338,distance=..5,tag=!ItemLoot61] run tellraw @s {"text":"You found Black Glasses!","italic":true,"color":"gray"}
execute as @s[x=-244,y=141,z=338,distance=..5,tag=!ItemLoot61] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-244,y=141,z=338,distance=..5,tag=!ItemLoot61] run tag @s add ItemLoot61

execute as @s[x=-299,y=144,z=282,distance=..5,tag=ItemLoot62] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-299,y=144,z=282,distance=..5,tag=!ItemLoot62] run give @s cobblemon:hyper_potion
execute as @s[x=-299,y=144,z=282,distance=..5,tag=!ItemLoot62] run tellraw @s {"text":"You found a Hyper Potion!","italic":true,"color":"gray"}
execute as @s[x=-299,y=144,z=282,distance=..5,tag=!ItemLoot62] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-299,y=144,z=282,distance=..5,tag=!ItemLoot62] run tag @s add ItemLoot62

execute as @s[x=-332,y=141,z=359,distance=..5,tag=ItemLoot63] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-332,y=141,z=359,distance=..5,tag=!ItemLoot63] run give @s cobblemon:rare_candy
execute as @s[x=-332,y=141,z=359,distance=..5,tag=!ItemLoot63] run tellraw @s {"text":"You found a Rare Candy!","italic":true,"color":"gray"}
execute as @s[x=-332,y=141,z=359,distance=..5,tag=!ItemLoot63] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-332,y=141,z=359,distance=..5,tag=!ItemLoot63] run tag @s add ItemLoot63

execute as @s[x=-358,y=101,z=90,distance=..5,tag=ItemLoot67] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-358,y=101,z=90,distance=..5,tag=!ItemLoot67] run give @s cobblemon:miracle_seed
execute as @s[x=-358,y=101,z=90,distance=..5,tag=!ItemLoot67] run tellraw @s {"text":"You recieved a Miracle Seed!","italic":true,"color":"gray"}
execute as @s[x=-358,y=101,z=90,distance=..5,tag=!ItemLoot67] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-358,y=101,z=90,distance=..5,tag=!ItemLoot67] run tag @s add ItemLoot67

execute as @s[x=-371,y=101,z=91,distance=..5,tag=ItemLoot68] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-371,y=101,z=91,distance=..5,tag=!ItemLoot68] run give @s cobblemon:quick_claw
execute as @s[x=-371,y=101,z=91,distance=..5,tag=!ItemLoot68] run tellraw @s {"text":"You recieved a Quick Claw!","italic":true,"color":"gray"}
execute as @s[x=-371,y=101,z=91,distance=..5,tag=!ItemLoot68] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-371,y=101,z=91,distance=..5,tag=!ItemLoot68] run tag @s add ItemLoot68

execute as @s[x=-352,y=111,z=87,distance=..5,tag=ItemLoot69] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-352,y=111,z=87,distance=..5,tag=!ItemLoot69] run give @s cobblemon:quick_ball 3
execute as @s[x=-352,y=111,z=87,distance=..5,tag=!ItemLoot69] run tellraw @s {"text":"You recieved 3 Quick Balls!","italic":true,"color":"gray"}
execute as @s[x=-352,y=111,z=87,distance=..5,tag=!ItemLoot69] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-352,y=111,z=87,distance=..5,tag=!ItemLoot69] run tag @s add ItemLoot69

execute as @s[x=-349,y=111,z=87,distance=..5,tag=ItemLoot70] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-349,y=111,z=87,distance=..5,tag=!ItemLoot70] run give @s cobblemon:timer_ball 3
execute as @s[x=-349,y=111,z=87,distance=..5,tag=!ItemLoot70] run tellraw @s {"text":"You recieved 3 Timer Balls!","italic":true,"color":"gray"}
execute as @s[x=-349,y=111,z=87,distance=..5,tag=!ItemLoot70] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-349,y=111,z=87,distance=..5,tag=!ItemLoot70] run tag @s add ItemLoot70

#Looker tickets

execute as @s[x=-688,y=86,z=-186,distance=..5,tag=ItemLoot76] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-688,y=86,z=-186,distance=..5,tag=!ItemLoot76] run give @s cobblemon:paralyze_heal
execute as @s[x=-688,y=86,z=-186,distance=..5,tag=!ItemLoot76] run tellraw @s {"text":"You found a Paralyze Heal!","italic":true,"color":"gray"}
execute as @s[x=-688,y=86,z=-186,distance=..5,tag=!ItemLoot76] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-688,y=86,z=-186,distance=..5,tag=!ItemLoot76] run tag @s add ItemLoot76

execute as @s[x=-642,y=92,z=-185,distance=..5,tag=ItemLoot77] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-642,y=92,z=-185,distance=..5,tag=!ItemLoot77] run give @s cobblemon:super_potion
execute as @s[x=-642,y=92,z=-185,distance=..5,tag=!ItemLoot77] run tellraw @s {"text":"You found a Super Potion!","italic":true,"color":"gray"}
execute as @s[x=-642,y=92,z=-185,distance=..5,tag=!ItemLoot77] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-642,y=92,z=-185,distance=..5,tag=!ItemLoot77] run tag @s add ItemLoot77

execute as @s[x=-754,y=96,z=-190,distance=..5,tag=ItemLoot78] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-754,y=96,z=-190,distance=..5,tag=!ItemLoot78] run give @s cobblemon:super_potion
execute as @s[x=-754,y=96,z=-190,distance=..5,tag=!ItemLoot78] run tellraw @s {"text":"You found a Super Potion!","italic":true,"color":"gray"}
execute as @s[x=-754,y=96,z=-190,distance=..5,tag=!ItemLoot78] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-754,y=96,z=-190,distance=..5,tag=!ItemLoot78] run tag @s add ItemLoot78

execute as @s[x=-849,y=100,z=-130,distance=..5,tag=ItemLoot79] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-849,y=100,z=-130,distance=..5,tag=!ItemLoot79] run give @s cobblemon:super_potion
execute as @s[x=-849,y=100,z=-130,distance=..5,tag=!ItemLoot79] run tellraw @s {"text":"You found a Super Potion!","italic":true,"color":"gray"}
execute as @s[x=-849,y=100,z=-130,distance=..5,tag=!ItemLoot79] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-849,y=100,z=-130,distance=..5,tag=!ItemLoot79] run tag @s add ItemLoot79

execute as @s[x=-712,y=96,z=-119,distance=..5,tag=ItemLoot80] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-712,y=96,z=-119,distance=..5,tag=!ItemLoot80] run give @s cobblemon:great_ball
execute as @s[x=-712,y=96,z=-119,distance=..5,tag=!ItemLoot80] run tellraw @s {"text":"You found a Great Ball!","italic":true,"color":"gray"}
execute as @s[x=-712,y=96,z=-119,distance=..5,tag=!ItemLoot80] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-712,y=96,z=-119,distance=..5,tag=!ItemLoot80] run tag @s add ItemLoot80

execute as @s[x=-777,y=100,z=-98,distance=..5,tag=ItemLoot82] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-777,y=100,z=-98,distance=..5,tag=!ItemLoot82] run give @s cobblemon:oran_berry
execute as @s[x=-777,y=100,z=-98,distance=..5,tag=!ItemLoot82] run tellraw @s {"text":"You found an Oran Berry!","italic":true,"color":"gray"}
execute as @s[x=-777,y=100,z=-98,distance=..5,tag=!ItemLoot82] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-777,y=100,z=-98,distance=..5,tag=!ItemLoot82] run tag @s add ItemLoot82

execute as @s[x=-884,y=102,z=-88,distance=..5,tag=ItemLoot84] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-884,y=102,z=-88,distance=..5,tag=!ItemLoot84] run give @s cobblemon:x_attack
execute as @s[x=-884,y=102,z=-88,distance=..5,tag=!ItemLoot84] run tellraw @s {"text":"You found an X Attack!","italic":true,"color":"gray"}
execute as @s[x=-884,y=102,z=-88,distance=..5,tag=!ItemLoot84] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-884,y=102,z=-88,distance=..5,tag=!ItemLoot84] run tag @s add ItemLoot84

execute as @s[x=-866,y=100,z=-62,distance=..5,tag=ItemLoot85] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-866,y=100,z=-62,distance=..5,tag=!ItemLoot85] run give @s cobblemon:sharp_beak
execute as @s[x=-866,y=100,z=-62,distance=..5,tag=!ItemLoot85] run tellraw @s {"text":"You found a Sharp Beak!","italic":true,"color":"gray"}
execute as @s[x=-866,y=100,z=-62,distance=..5,tag=!ItemLoot85] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-866,y=100,z=-62,distance=..5,tag=!ItemLoot85] run tag @s add ItemLoot85

execute as @s[x=-1032,y=100,z=22,distance=..5,tag=ItemLoot86] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1032,y=100,z=22,distance=..5,tag=!ItemLoot86] run give @s cobblemon:ultra_ball
execute as @s[x=-1032,y=100,z=22,distance=..5,tag=!ItemLoot86] run tellraw @s {"text":"You found an Ultra Ball!","italic":true,"color":"gray"}
execute as @s[x=-1032,y=100,z=22,distance=..5,tag=!ItemLoot86] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1032,y=100,z=22,distance=..5,tag=!ItemLoot86] run tag @s add ItemLoot86

execute as @s[x=-1074,y=100,z=-42,distance=..5,tag=ItemLoot88] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1074,y=100,z=-42,distance=..5,tag=!ItemLoot88] run give @s cobblemon:antidote
execute as @s[x=-1074,y=100,z=-42,distance=..5,tag=!ItemLoot88] run tellraw @s {"text":"You found an Antidote!","italic":true,"color":"gray"}
execute as @s[x=-1074,y=100,z=-42,distance=..5,tag=!ItemLoot88] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1074,y=100,z=-42,distance=..5,tag=!ItemLoot88] run tag @s add ItemLoot88

execute as @s[x=-1082,y=100,z=-26,distance=..5,tag=ItemLoot89] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1082,y=100,z=-26,distance=..5,tag=!ItemLoot89] run give @s cobblemon:berry_juice
execute as @s[x=-1082,y=100,z=-26,distance=..5,tag=!ItemLoot89] run tellraw @s {"text":"You found a Berry Juice!","italic":true,"color":"gray"}
execute as @s[x=-1082,y=100,z=-26,distance=..5,tag=!ItemLoot89] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1082,y=100,z=-26,distance=..5,tag=!ItemLoot89] run tag @s add ItemLoot89

execute as @s[x=-1141,y=100,z=26,distance=..5,tag=ItemLoot96] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1141,y=100,z=26,distance=..5,tag=!ItemLoot96] run give @s cobblemon:x_attack
execute as @s[x=-1141,y=100,z=26,distance=..5,tag=!ItemLoot96] run tellraw @s {"text":"You found an X Attack!","italic":true,"color":"gray"}
execute as @s[x=-1141,y=100,z=26,distance=..5,tag=!ItemLoot96] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1141,y=100,z=26,distance=..5,tag=!ItemLoot96] run tag @s add ItemLoot96

execute as @s[x=-1112,y=72,z=-2,distance=..5,tag=ItemLoot97] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1112,y=72,z=-2,distance=..5,tag=!ItemLoot97] run give @s cobblemon:full_heal
execute as @s[x=-1112,y=72,z=-2,distance=..5,tag=!ItemLoot97] run tellraw @s {"text":"You recieved a Full Heal!","italic":true,"color":"gray"}
execute as @s[x=-1112,y=72,z=-2,distance=..5,tag=!ItemLoot97] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1112,y=72,z=-2,distance=..5,tag=!ItemLoot97] run tag @s add ItemLoot97

execute as @s[x=-1076,y=100,z=102,distance=..5,tag=ItemLoot98] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1076,y=100,z=102,distance=..5,tag=!ItemLoot98] run scoreboard players add @s Money 6000
execute as @s[x=-1076,y=100,z=102,distance=..5,tag=!ItemLoot98] run tellraw @s {"text":"You recieved $6,000!","italic":true,"color":"gray"}
execute as @s[x=-1076,y=100,z=102,distance=..5,tag=!ItemLoot98] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1076,y=100,z=102,distance=..5,tag=!ItemLoot98] run tag @s add ItemLoot98

execute as @s[x=-1058,y=100,z=104,distance=..5,tag=ItemLoot99] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1058,y=100,z=104,distance=..5,tag=!ItemLoot99] run give @s cobblemon:ether
execute as @s[x=-1058,y=100,z=104,distance=..5,tag=!ItemLoot99] run tellraw @s {"text":"You recieved an Ether!","italic":true,"color":"gray"}
execute as @s[x=-1058,y=100,z=104,distance=..5,tag=!ItemLoot99] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1058,y=100,z=104,distance=..5,tag=!ItemLoot99] run tag @s add ItemLoot99

execute as @s[x=-1303,y=100,z=-90,distance=..5,tag=ItemLoot104] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1303,y=100,z=-90,distance=..5,tag=!ItemLoot104] run give @s cobblemon:heal_ball
execute as @s[x=-1303,y=100,z=-90,distance=..5,tag=!ItemLoot104] run tellraw @s {"text":"You found a Heal Ball!","italic":true,"color":"gray"}
execute as @s[x=-1303,y=100,z=-90,distance=..5,tag=!ItemLoot104] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1303,y=100,z=-90,distance=..5,tag=!ItemLoot104] run tag @s add ItemLoot104

execute as @s[x=-1466,y=100,z=-10,distance=..5,tag=ItemLoot105] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1466,y=100,z=-10,distance=..5,tag=!ItemLoot105] run give @s cobblemon:x_special_defence
execute as @s[x=-1466,y=100,z=-10,distance=..5,tag=!ItemLoot105] run tellraw @s {"text":"You found an X Special Defence!","italic":true,"color":"gray"}
execute as @s[x=-1466,y=100,z=-10,distance=..5,tag=!ItemLoot105] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1466,y=100,z=-10,distance=..5,tag=!ItemLoot105] run tag @s add ItemLoot105

execute as @s[x=-1598,y=100,z=-10,distance=..5,tag=ItemLoot106] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1598,y=100,z=-10,distance=..5,tag=!ItemLoot106] run give @s cobblemon:pp_up
execute as @s[x=-1598,y=100,z=-10,distance=..5,tag=!ItemLoot106] run tellraw @s {"text":"You found a PP Up!","italic":true,"color":"gray"}
execute as @s[x=-1598,y=100,z=-10,distance=..5,tag=!ItemLoot106] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1598,y=100,z=-10,distance=..5,tag=!ItemLoot106] run tag @s add ItemLoot106

execute as @s[x=-1697,y=109,z=-9,distance=..5,tag=ItemLoot107] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1697,y=109,z=-9,distance=..5,tag=!ItemLoot107] run give @s cobblemon:silver_powder
execute as @s[x=-1697,y=109,z=-9,distance=..5,tag=!ItemLoot107] run tellraw @s {"text":"You found a Silver Powder!","italic":true,"color":"gray"}
execute as @s[x=-1697,y=109,z=-9,distance=..5,tag=!ItemLoot107] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1697,y=109,z=-9,distance=..5,tag=!ItemLoot107] run tag @s add ItemLoot107

execute as @s[x=-1706,y=106,z=59,distance=..5,tag=ItemLoot108] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1706,y=106,z=59,distance=..5,tag=!ItemLoot108] run give @s cobblemon:persim_berry
execute as @s[x=-1706,y=106,z=59,distance=..5,tag=!ItemLoot108] run tellraw @s {"text":"You found a Persim Berry!","italic":true,"color":"gray"}
execute as @s[x=-1706,y=106,z=59,distance=..5,tag=!ItemLoot108] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1706,y=106,z=59,distance=..5,tag=!ItemLoot108] run tag @s add ItemLoot108

execute as @s[x=-1711,y=106,z=64,distance=..5,tag=ItemLoot109] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1711,y=106,z=64,distance=..5,tag=!ItemLoot109] run scoreboard players add @s Money 250
execute as @s[x=-1711,y=106,z=64,distance=..5,tag=!ItemLoot109] run tellraw @s {"text":"You recieved $250!","italic":true,"color":"gray"}
execute as @s[x=-1711,y=106,z=64,distance=..5,tag=!ItemLoot109] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1711,y=106,z=64,distance=..5,tag=!ItemLoot109] run tag @s add ItemLoot109

execute as @s[x=-1295,y=100,z=-132,distance=..5,tag=ItemLoot110] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1295,y=100,z=-132,distance=..5,tag=!ItemLoot110] run give @s cobblemon:x_special_attack
execute as @s[x=-1295,y=100,z=-132,distance=..5,tag=!ItemLoot110] run tellraw @s {"text":"You found an X Special Attack!","italic":true,"color":"gray"}
execute as @s[x=-1295,y=100,z=-132,distance=..5,tag=!ItemLoot110] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1295,y=100,z=-132,distance=..5,tag=!ItemLoot110] run tag @s add ItemLoot110

execute as @s[x=-1239,y=100,z=-244,distance=..5,tag=ItemLoot111] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1239,y=100,z=-244,distance=..5,tag=!ItemLoot111] run give @s cobblemon:antidote
execute as @s[x=-1239,y=100,z=-244,distance=..5,tag=!ItemLoot111] run tellraw @s {"text":"You found an Antidote!","italic":true,"color":"gray"}
execute as @s[x=-1239,y=100,z=-244,distance=..5,tag=!ItemLoot111] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1239,y=100,z=-244,distance=..5,tag=!ItemLoot111] run tag @s add ItemLoot111

execute as @s[x=-1173,y=100,z=-259,distance=..5,tag=ItemLoot112] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1173,y=100,z=-259,distance=..5,tag=!ItemLoot112] run give @s cobblemon:antidote
execute as @s[x=-1173,y=100,z=-259,distance=..5,tag=!ItemLoot112] run tellraw @s {"text":"You found an Antidote!","italic":true,"color":"gray"}
execute as @s[x=-1173,y=100,z=-259,distance=..5,tag=!ItemLoot112] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1173,y=100,z=-259,distance=..5,tag=!ItemLoot112] run tag @s add ItemLoot112

execute as @s[x=-1287,y=100,z=-265,distance=..5,tag=ItemLoot114] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1287,y=100,z=-265,distance=..5,tag=!ItemLoot114] run give @s cobblemon:awakening
execute as @s[x=-1287,y=100,z=-265,distance=..5,tag=!ItemLoot114] run tellraw @s {"text":"You found an Awakening!","italic":true,"color":"gray"}
execute as @s[x=-1287,y=100,z=-265,distance=..5,tag=!ItemLoot114] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1287,y=100,z=-265,distance=..5,tag=!ItemLoot114] run tag @s add ItemLoot114

execute as @s[x=-1325,y=100,z=-209,distance=..5,tag=ItemLoot115] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1325,y=100,z=-209,distance=..5,tag=!ItemLoot115] run give @s cobblemon:aguav_berry
execute as @s[x=-1325,y=100,z=-209,distance=..5,tag=!ItemLoot115] run tellraw @s {"text":"You found an Aguav Berry!","italic":true,"color":"gray"}
execute as @s[x=-1325,y=100,z=-209,distance=..5,tag=!ItemLoot115] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1325,y=100,z=-209,distance=..5,tag=!ItemLoot115] run tag @s add ItemLoot115

execute as @s[x=-1346,y=100,z=-134,distance=..5,tag=ItemLoot116] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1346,y=100,z=-134,distance=..5,tag=!ItemLoot116] run give @s cobblemon:ultra_ball
execute as @s[x=-1346,y=100,z=-134,distance=..5,tag=!ItemLoot116] run tellraw @s {"text":"You found an Ultra Ball!","italic":true,"color":"gray"}
execute as @s[x=-1346,y=100,z=-134,distance=..5,tag=!ItemLoot116] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1346,y=100,z=-134,distance=..5,tag=!ItemLoot116] run tag @s add ItemLoot116

execute as @s[x=-1222,y=100,z=-236,distance=..5,tag=ItemLoot117] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1222,y=100,z=-236,distance=..5,tag=!ItemLoot117] run give @s cobblemon:x_speed
execute as @s[x=-1222,y=100,z=-236,distance=..5,tag=!ItemLoot117] run tellraw @s {"text":"You found an X Speed!","italic":true,"color":"gray"}
execute as @s[x=-1222,y=100,z=-236,distance=..5,tag=!ItemLoot117] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1222,y=100,z=-236,distance=..5,tag=!ItemLoot117] run tag @s add ItemLoot117

execute as @s[x=-1198,y=100,z=-276,distance=..5,tag=ItemLoot118] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1198,y=100,z=-276,distance=..5,tag=!ItemLoot118] run scoreboard players add @s Money 250
execute as @s[x=-1198,y=100,z=-276,distance=..5,tag=!ItemLoot118] run tellraw @s {"text":"You recieved $250!","italic":true,"color":"gray"}
execute as @s[x=-1198,y=100,z=-276,distance=..5,tag=!ItemLoot118] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1198,y=100,z=-276,distance=..5,tag=!ItemLoot118] run tag @s add ItemLoot118

execute as @s[x=-1168,y=100,z=-181,distance=..5,tag=ItemLoot120] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1168,y=100,z=-181,distance=..5,tag=!ItemLoot120] run give @s cobblemon:paralyze_heal
execute as @s[x=-1168,y=100,z=-181,distance=..5,tag=!ItemLoot120] run tellraw @s {"text":"You found a Paralyze Heal!","italic":true,"color":"gray"}
execute as @s[x=-1168,y=100,z=-181,distance=..5,tag=!ItemLoot120] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1168,y=100,z=-181,distance=..5,tag=!ItemLoot120] run tag @s add ItemLoot120

execute as @s[x=-1296,y=100,z=-351,distance=..5,tag=ItemLoot121] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1296,y=100,z=-351,distance=..5,tag=!ItemLoot121] run give @s cobblemon:oran_berry
execute as @s[x=-1296,y=100,z=-351,distance=..5,tag=!ItemLoot121] run tellraw @s {"text":"You found an Oran Berry!","italic":true,"color":"gray"}
execute as @s[x=-1296,y=100,z=-351,distance=..5,tag=!ItemLoot121] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1296,y=100,z=-351,distance=..5,tag=!ItemLoot121] run tag @s add ItemLoot121

execute as @s[x=-1340,y=100,z=-324,distance=..5,tag=ItemLoot122] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1340,y=100,z=-324,distance=..5,tag=!ItemLoot122] run give @s cobblemon:ether
execute as @s[x=-1340,y=100,z=-324,distance=..5,tag=!ItemLoot122] run tellraw @s {"text":"You found an Ether!","italic":true,"color":"gray"}
execute as @s[x=-1340,y=100,z=-324,distance=..5,tag=!ItemLoot122] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1340,y=100,z=-324,distance=..5,tag=!ItemLoot122] run tag @s add ItemLoot122

#execute as @s[x=-1390,y=31,z=-298,distance=..5,tag=ItemLoot123] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
#execute as @s[x=-1390,y=31,z=-298,distance=..5,tag=!ItemLoot123] run give @s cobblemon:amulet_coin
#execute as @s[x=-1390,y=31,z=-298,distance=..5,tag=!ItemLoot123] run tellraw @s {"text":"You found an Amulet Coin!","italic":true,"color":"gray"}
#execute as @s[x=-1390,y=31,z=-298,distance=..5,tag=!ItemLoot123] run playsound itemget ambient @s ~ ~ ~ 1 1 1
#execute as @s[x=-1390,y=31,z=-298,distance=..5,tag=!ItemLoot123] run tag @s add ItemLoot123

execute as @s[x=-1575,y=100,z=-435,distance=..5,tag=ItemLoot124] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1575,y=100,z=-435,distance=..5,tag=!ItemLoot124] run give @s cobblemon:antidote
execute as @s[x=-1575,y=100,z=-435,distance=..5,tag=!ItemLoot124] run tellraw @s {"text":"You found an Antidote!","italic":true,"color":"gray"}
execute as @s[x=-1575,y=100,z=-435,distance=..5,tag=!ItemLoot124] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1575,y=100,z=-435,distance=..5,tag=!ItemLoot124] run tag @s add ItemLoot124

execute as @s[x=-1672,y=100,z=-497,distance=..5,tag=ItemLoot125] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1672,y=100,z=-497,distance=..5,tag=!ItemLoot125] run give @s cobblemon:revive
execute as @s[x=-1672,y=100,z=-497,distance=..5,tag=!ItemLoot125] run tellraw @s {"text":"You found a Revive!","italic":true,"color":"gray"}
execute as @s[x=-1672,y=100,z=-497,distance=..5,tag=!ItemLoot125] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1672,y=100,z=-497,distance=..5,tag=!ItemLoot125] run tag @s add ItemLoot125

execute as @s[x=-1670,y=100,z=-422,distance=..5,tag=ItemLoot126] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1670,y=100,z=-422,distance=..5,tag=!ItemLoot126] run scoreboard players add @s Money 500
execute as @s[x=-1670,y=100,z=-422,distance=..5,tag=!ItemLoot126] run tellraw @s {"text":"You recieved $500!","italic":true,"color":"gray"}
execute as @s[x=-1670,y=100,z=-422,distance=..5,tag=!ItemLoot126] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1670,y=100,z=-422,distance=..5,tag=!ItemLoot126] run tag @s add ItemLoot126

execute as @s[x=-1553,y=100,z=-302,distance=..5,tag=ItemLoot127] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1553,y=100,z=-302,distance=..5,tag=!ItemLoot127] run give @s cobblemon:x_special_attack
execute as @s[x=-1553,y=100,z=-302,distance=..5,tag=!ItemLoot127] run tellraw @s {"text":"You found an X Special Attack!","italic":true,"color":"gray"}
execute as @s[x=-1553,y=100,z=-302,distance=..5,tag=!ItemLoot127] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1553,y=100,z=-302,distance=..5,tag=!ItemLoot127] run tag @s add ItemLoot127

execute as @s[x=-1554,y=100,z=-325,distance=..5,tag=Cut] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1554,y=100,z=-325,distance=..5,tag=!Cut] run tellraw @s {"text":"You found HM01: Cut! You can now chop down trees.","italic":true,"color":"gray"}
execute as @s[x=-1554,y=100,z=-325,distance=..5,tag=!Cut] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1554,y=100,z=-325,distance=..5,tag=!Cut] run tag @s add Cut

execute as @s[x=-1589,y=100,z=-299,distance=..5,tag=ItemLoot129] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1589,y=100,z=-299,distance=..5,tag=!ItemLoot129] run give @s cobblemon:super_potion
execute as @s[x=-1589,y=100,z=-299,distance=..5,tag=!ItemLoot129] run tellraw @s {"text":"You found a Super Potion!","italic":true,"color":"gray"}
execute as @s[x=-1589,y=100,z=-299,distance=..5,tag=!ItemLoot129] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1589,y=100,z=-299,distance=..5,tag=!ItemLoot129] run tag @s add ItemLoot129

execute as @s[x=-1734,y=100,z=-254,distance=..5,tag=ItemLoot130] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1734,y=100,z=-254,distance=..5,tag=!ItemLoot130] run give @s cobblemon:guard_spec
execute as @s[x=-1734,y=100,z=-254,distance=..5,tag=!ItemLoot130] run tellraw @s {"text":"You found a Guard Spec!","italic":true,"color":"gray"}
execute as @s[x=-1734,y=100,z=-254,distance=..5,tag=!ItemLoot130] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1734,y=100,z=-254,distance=..5,tag=!ItemLoot130] run tag @s add ItemLoot130

execute as @s[x=-1625,y=100,z=-374,distance=..5,tag=ItemLoot131] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1625,y=100,z=-374,distance=..5,tag=!ItemLoot131] run give @s cobblemon:rare_candy
execute as @s[x=-1625,y=100,z=-374,distance=..5,tag=!ItemLoot131] run tellraw @s {"text":"You found a Rare Candy!","italic":true,"color":"gray"}
execute as @s[x=-1625,y=100,z=-374,distance=..5,tag=!ItemLoot131] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1625,y=100,z=-374,distance=..5,tag=!ItemLoot131] run tag @s add ItemLoot131

execute as @s[x=-1283,y=100,z=37,distance=..5,tag=ItemLoot135] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1283,y=100,z=37,distance=..5,tag=!ItemLoot135] run give @s cobblemon:miracle_seed
execute as @s[x=-1283,y=100,z=37,distance=..5,tag=!ItemLoot135] run tellraw @s {"text":"You found a Miracle Seed!","italic":true,"color":"gray"}
execute as @s[x=-1283,y=100,z=37,distance=..5,tag=!ItemLoot135] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1283,y=100,z=37,distance=..5,tag=!ItemLoot135] run tag @s add ItemLoot135

execute as @s[x=-1939,y=151,z=78,distance=..5,tag=ItemLoot138] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1939,y=151,z=78,distance=..5,tag=!ItemLoot138] run give @s cobblemon:super_potion
execute as @s[x=-1939,y=151,z=78,distance=..5,tag=!ItemLoot138] run tellraw @s {"text":"You found a Super Potion!","italic":true,"color":"gray"}
execute as @s[x=-1939,y=151,z=78,distance=..5,tag=!ItemLoot138] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1939,y=151,z=78,distance=..5,tag=!ItemLoot138] run tag @s add ItemLoot138

execute as @s[x=-1969,y=151,z=138,distance=..5,tag=ItemLoot139] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1969,y=151,z=138,distance=..5,tag=!ItemLoot139] run give @s cobblemon:hp_up
execute as @s[x=-1969,y=151,z=138,distance=..5,tag=!ItemLoot139] run tellraw @s {"text":"You found an HP Up!","italic":true,"color":"gray"}
execute as @s[x=-1969,y=151,z=138,distance=..5,tag=!ItemLoot139] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1969,y=151,z=138,distance=..5,tag=!ItemLoot139] run tag @s add ItemLoot139

execute as @s[x=-1937,y=141,z=265,distance=..5,tag=ItemLoot140] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1937,y=141,z=265,distance=..5,tag=!ItemLoot140] run give @s cobblemon:water_stone
execute as @s[x=-1937,y=141,z=265,distance=..5,tag=!ItemLoot140] run tellraw @s {"text":"You found a Water Stone!","italic":true,"color":"gray"}
execute as @s[x=-1937,y=141,z=265,distance=..5,tag=!ItemLoot140] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1937,y=141,z=265,distance=..5,tag=!ItemLoot140] run tag @s add ItemLoot140

execute as @s[x=-2008,y=151,z=306,distance=..5,tag=ItemLoot141] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-2008,y=151,z=306,distance=..5,tag=!ItemLoot141] run function kalos:spawn/escaperope
execute as @s[x=-2008,y=151,z=306,distance=..5,tag=!ItemLoot141] run tellraw @s {"text":"You found an Escape Rope!","italic":true,"color":"gray"}
execute as @s[x=-2008,y=151,z=306,distance=..5,tag=!ItemLoot141] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2008,y=151,z=306,distance=..5,tag=!ItemLoot141] run tag @s add ItemLoot141

execute as @s[x=-1902,y=151,z=460,distance=..5,tag=ItemLoot142] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1902,y=151,z=460,distance=..5,tag=!ItemLoot142] run give @s cobblemon:leaf_stone
execute as @s[x=-1902,y=151,z=460,distance=..5,tag=!ItemLoot142] run tellraw @s {"text":"You found a Leaf Stone!","italic":true,"color":"gray"}
execute as @s[x=-1902,y=151,z=460,distance=..5,tag=!ItemLoot142] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1902,y=151,z=460,distance=..5,tag=!ItemLoot142] run tag @s add ItemLoot142

execute as @s[x=-2041,y=100,z=379,distance=..5,tag=ItemLoot143] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-2041,y=100,z=379,distance=..5,tag=!ItemLoot143] run give @s cobblemon:mago_berry
execute as @s[x=-2041,y=100,z=379,distance=..5,tag=!ItemLoot143] run tellraw @s {"text":"You found a Mago Berry!","italic":true,"color":"gray"}
execute as @s[x=-2041,y=100,z=379,distance=..5,tag=!ItemLoot143] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2041,y=100,z=379,distance=..5,tag=!ItemLoot143] run tag @s add ItemLoot143

execute as @s[x=-2004,y=100,z=372,distance=..5,tag=ItemLoot145] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-2004,y=100,z=372,distance=..5,tag=!ItemLoot145] run scoreboard players add @s Money 1000
execute as @s[x=-2004,y=100,z=372,distance=..5,tag=!ItemLoot145] run tellraw @s {"text":"You recieved $1,000!","italic":true,"color":"gray"}
execute as @s[x=-2004,y=100,z=372,distance=..5,tag=!ItemLoot145] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2004,y=100,z=372,distance=..5,tag=!ItemLoot145] run tag @s add ItemLoot145

execute as @s[x=-2012,y=100,z=409,distance=..5,tag=ItemLoot146] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-2012,y=100,z=409,distance=..5,tag=!ItemLoot146] run scoreboard players add @s Money 1500
execute as @s[x=-2012,y=100,z=409,distance=..5,tag=!ItemLoot146] run tellraw @s {"text":"You recieved $1,500!","italic":true,"color":"gray"}
execute as @s[x=-2012,y=100,z=409,distance=..5,tag=!ItemLoot146] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2012,y=100,z=409,distance=..5,tag=!ItemLoot146] run tag @s add ItemLoot146

execute as @s[x=-2043,y=100,z=479,distance=..5,tag=ItemLoot147] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-2043,y=100,z=479,distance=..5,tag=!ItemLoot147] run give @s cobblemon:ultra_ball
execute as @s[x=-2043,y=100,z=479,distance=..5,tag=!ItemLoot147] run tellraw @s {"text":"You found an Ultra Ball!","italic":true,"color":"gray"}
execute as @s[x=-2043,y=100,z=479,distance=..5,tag=!ItemLoot147] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2043,y=100,z=479,distance=..5,tag=!ItemLoot147] run tag @s add ItemLoot147

execute as @s[x=-2004,y=141,z=571,distance=..5,tag=RockSmash] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-2004,y=141,z=571,distance=..5,tag=!RockSmash] run tellraw @s {"text":"You found TM94: Rock Smash! You can now break rocks.","italic":true,"color":"gray"}
execute as @s[x=-2004,y=141,z=571,distance=..5,tag=!RockSmash] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2004,y=141,z=571,distance=..5,tag=!RockSmash] run tag @s add RockSmash

execute as @s[x=-1958,y=141,z=597,distance=..5,tag=ItemLoot153] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1958,y=141,z=597,distance=..5,tag=!ItemLoot153] run give @s cobblemon:dive_ball
execute as @s[x=-1958,y=141,z=597,distance=..5,tag=!ItemLoot153] run tellraw @s {"text":"You found a Dive Ball!","italic":true,"color":"gray"}
execute as @s[x=-1958,y=141,z=597,distance=..5,tag=!ItemLoot153] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1958,y=141,z=597,distance=..5,tag=!ItemLoot153] run tag @s add ItemLoot153

execute as @s[x=-1995,y=142,z=599,distance=..5,tag=ItemLoot154] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1995,y=142,z=599,distance=..5,tag=!ItemLoot154] run give @s cobblemon:health_feather
execute as @s[x=-1995,y=142,z=599,distance=..5,tag=!ItemLoot154] run tellraw @s {"text":"You found a Health Feather!","italic":true,"color":"gray"}
execute as @s[x=-1995,y=142,z=599,distance=..5,tag=!ItemLoot154] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1995,y=142,z=599,distance=..5,tag=!ItemLoot154] run tag @s add ItemLoot154

execute as @s[x=-2015,y=128,z=678,distance=..5,tag=ItemLoot155] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-2015,y=128,z=678,distance=..5,tag=!ItemLoot155] run give @s cobblemon:x_attack
execute as @s[x=-2015,y=128,z=678,distance=..5,tag=!ItemLoot155] run tellraw @s {"text":"You found an X Attack!","italic":true,"color":"gray"}
execute as @s[x=-2015,y=128,z=678,distance=..5,tag=!ItemLoot155] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2015,y=128,z=678,distance=..5,tag=!ItemLoot155] run tag @s add ItemLoot155

execute as @s[x=-1947,y=141,z=594,distance=..5,tag=ItemLoot157] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1947,y=141,z=594,distance=..5,tag=!ItemLoot157] run give @s mega_showdown:shockdrive
execute as @s[x=-1947,y=141,z=594,distance=..5,tag=!ItemLoot157] run give @s mega_showdown:burndrive
execute as @s[x=-1947,y=141,z=594,distance=..5,tag=!ItemLoot157] run give @s mega_showdown:dousedrive
execute as @s[x=-1947,y=141,z=594,distance=..5,tag=!ItemLoot157] run give @s mega_showdown:chilldrive
execute as @s[x=-1947,y=141,z=594,distance=..5,tag=!ItemLoot157] run tellraw @s {"text":"You recieved Drives!","italic":true,"color":"gray"}
execute as @s[x=-1947,y=141,z=594,distance=..5,tag=!ItemLoot157] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1947,y=141,z=594,distance=..5,tag=!ItemLoot157] run tag @s add ItemLoot157

execute as @s[x=-1868,y=141,z=629,distance=..5,tag=ItemLoot158] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1868,y=141,z=629,distance=..5,tag=!ItemLoot158] run give @s cobblemon:rocky_helmet
execute as @s[x=-1868,y=141,z=629,distance=..5,tag=!ItemLoot158] run tellraw @s {"text":"You recieved a Rocky Helmet!","italic":true,"color":"gray"}
execute as @s[x=-1868,y=141,z=629,distance=..5,tag=!ItemLoot158] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1868,y=141,z=629,distance=..5,tag=!ItemLoot158] run tag @s add ItemLoot158

execute as @s[x=-2015,y=133,z=531,distance=..5,tag=ItemLoot159] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-2015,y=133,z=531,distance=..5,tag=!ItemLoot159] run give @s cobblemon:poke_rod[custom_name='["",{"text":"Old Rod","italic":false}]',lore=['["",{"text":"An old and beat-up fishing rod.","italic":false}]','["",{"text":"Use it by any body of water to","italic":false}]','["",{"text":"fish for wild aquatic Pokémon.","italic":false}]'],enchantment_glint_override=false,enchantments={levels:{lure:1},show_in_tooltip:false},unbreakable={}]
execute as @s[x=-2015,y=133,z=531,distance=..5,tag=!ItemLoot159] run tellraw @s {"text":"You recieved an Old Rod!","italic":true,"color":"gray"}
execute as @s[x=-2015,y=133,z=531,distance=..5,tag=!ItemLoot159] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2015,y=133,z=531,distance=..5,tag=!ItemLoot159] run tag @s add ItemLoot159

execute as @s[x=-1960,y=100,z=721,distance=..5,tag=ItemLoot160] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1960,y=100,z=721,distance=..5,tag=!ItemLoot160] run give @s cobblemon:rare_candy
execute as @s[x=-1960,y=100,z=721,distance=..5,tag=!ItemLoot160] run tellraw @s {"text":"You found a Rare Candy!","italic":true,"color":"gray"}
execute as @s[x=-1960,y=100,z=721,distance=..5,tag=!ItemLoot160] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1960,y=100,z=721,distance=..5,tag=!ItemLoot160] run tag @s add ItemLoot160

execute as @s[x=-2032,y=100,z=605,distance=..5,tag=ItemLoot161] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-2032,y=100,z=605,distance=..5,tag=!ItemLoot161] run scoreboard players add @s Money 1000
execute as @s[x=-2032,y=100,z=605,distance=..5,tag=!ItemLoot161] run tellraw @s {"text":"You recieved $1,000!","italic":true,"color":"gray"}
execute as @s[x=-2032,y=100,z=605,distance=..5,tag=!ItemLoot161] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2032,y=100,z=605,distance=..5,tag=!ItemLoot161] run tag @s add ItemLoot161

execute as @s[x=-1622,y=142,z=626,distance=..5,tag=ItemLoot163] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1622,y=142,z=626,distance=..5,tag=!ItemLoot163] run give @s cobblemon:x_defence
execute as @s[x=-1622,y=142,z=626,distance=..5,tag=!ItemLoot163] run tellraw @s {"text":"You found an X Defence!","italic":true,"color":"gray"}
execute as @s[x=-1622,y=142,z=626,distance=..5,tag=!ItemLoot163] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1622,y=142,z=626,distance=..5,tag=!ItemLoot163] run tag @s add ItemLoot163

execute as @s[x=-1538,y=141,z=655,distance=..5,tag=ItemLoot164] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1538,y=141,z=655,distance=..5,tag=!ItemLoot164] run give @s cobblemon:paralyze_heal
execute as @s[x=-1538,y=141,z=655,distance=..5,tag=!ItemLoot164] run tellraw @s {"text":"You found a Paralyze Heal!","italic":true,"color":"gray"}
execute as @s[x=-1538,y=141,z=655,distance=..5,tag=!ItemLoot164] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1538,y=141,z=655,distance=..5,tag=!ItemLoot164] run tag @s add ItemLoot164

execute as @s[x=-1513,y=141,z=651,distance=..5,tag=ItemLoot165] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1513,y=141,z=651,distance=..5,tag=!ItemLoot165] run give @s cobblemon:fire_stone
execute as @s[x=-1513,y=141,z=651,distance=..5,tag=!ItemLoot165] run tellraw @s {"text":"You found a Fire Stone!","italic":true,"color":"gray"}
execute as @s[x=-1513,y=141,z=651,distance=..5,tag=!ItemLoot165] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1513,y=141,z=651,distance=..5,tag=!ItemLoot165] run tag @s add ItemLoot165

execute as @s[x=-1453,y=143,z=684,distance=..5,tag=ItemLoot166] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1453,y=143,z=684,distance=..5,tag=!ItemLoot166] run give @s cobblemon:dusk_ball
execute as @s[x=-1453,y=143,z=684,distance=..5,tag=!ItemLoot166] run tellraw @s {"text":"You found a Dusk Ball!","italic":true,"color":"gray"}
execute as @s[x=-1453,y=143,z=684,distance=..5,tag=!ItemLoot166] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1453,y=143,z=684,distance=..5,tag=!ItemLoot166] run tag @s add ItemLoot166

execute as @s[x=-1505,y=148,z=517,distance=..5,tag=ItemLoot169] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1505,y=148,z=517,distance=..5,tag=!ItemLoot169] run give @s cobblemon:hard_stone
execute as @s[x=-1505,y=148,z=517,distance=..5,tag=!ItemLoot169] run tellraw @s {"text":"You found a Hard Stone!","italic":true,"color":"gray"}
execute as @s[x=-1505,y=148,z=517,distance=..5,tag=!ItemLoot169] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1505,y=148,z=517,distance=..5,tag=!ItemLoot169] run tag @s add ItemLoot169

execute as @s[x=-1479,y=148,z=324,distance=..5,tag=ItemLoot171] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1479,y=148,z=324,distance=..5,tag=!ItemLoot171] run function kalos:spawn/escaperope
execute as @s[x=-1479,y=148,z=324,distance=..5,tag=!ItemLoot171] run tellraw @s {"text":"You found an Escape Rope!","italic":true,"color":"gray"}
execute as @s[x=-1479,y=148,z=324,distance=..5,tag=!ItemLoot171] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1479,y=148,z=324,distance=..5,tag=!ItemLoot171] run tag @s add ItemLoot171

execute as @s[x=-1470,y=148,z=304,distance=..5,tag=ItemLoot172] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1470,y=148,z=304,distance=..5,tag=!ItemLoot172] run give @s cobblemon:jaw_fossil
execute as @s[x=-1470,y=148,z=304,distance=..5,tag=!ItemLoot172] run tellraw @s {"text":"You recieved the Jaw Fossil!","italic":true,"color":"gray"}
execute as @s[x=-1470,y=148,z=304,distance=..5,tag=!ItemLoot172] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1470,y=148,z=304,distance=..5,tag=!ItemLoot172] run tag @s add ItemLoot172

execute as @s[x=-1468,y=148,z=304,distance=..5,tag=ItemLoot173] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1468,y=148,z=304,distance=..5,tag=!ItemLoot173] run give @s cobblemon:sail_fossil
execute as @s[x=-1468,y=148,z=304,distance=..5,tag=!ItemLoot173] run tellraw @s {"text":"You recieved the Sail Fossil!","italic":true,"color":"gray"}
execute as @s[x=-1468,y=148,z=304,distance=..5,tag=!ItemLoot173] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1468,y=148,z=304,distance=..5,tag=!ItemLoot173] run tag @s add ItemLoot173

execute as @s[x=-1968,y=101,z=-3,distance=..5,tag=ItemLoot174] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1968,y=101,z=-3,distance=..5,tag=!ItemLoot174] run give @s cobblemon:whipped_dream
execute as @s[x=-1968,y=101,z=-3,distance=..5,tag=!ItemLoot174] run tellraw @s {"text":"You recieved a Whipped Dream!","italic":true,"color":"gray"}
execute as @s[x=-1968,y=101,z=-3,distance=..5,tag=!ItemLoot174] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1968,y=101,z=-3,distance=..5,tag=!ItemLoot174] run tag @s add ItemLoot174

execute as @s[x=-1968,y=101,z=-3,distance=..5,tag=ItemLoot175] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1968,y=101,z=-3,distance=..5,tag=!ItemLoot175] run give @s cobblemon:sachet
execute as @s[x=-1968,y=101,z=-3,distance=..5,tag=!ItemLoot175] run tellraw @s {"text":"You recieved a Sachet!","italic":true,"color":"gray"}
execute as @s[x=-1968,y=101,z=-3,distance=..5,tag=!ItemLoot175] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1968,y=101,z=-3,distance=..5,tag=!ItemLoot175] run tag @s add ItemLoot175

execute as @s[x=-1983,y=100,z=-15,distance=..5,tag=ItemLoot176] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1983,y=100,z=-15,distance=..5,tag=!ItemLoot176] run give @s cobblemon:ether
execute as @s[x=-1983,y=100,z=-15,distance=..5,tag=!ItemLoot176] run tellraw @s {"text":"You found an Ether!","italic":true,"color":"gray"}
execute as @s[x=-1983,y=100,z=-15,distance=..5,tag=!ItemLoot176] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1983,y=100,z=-15,distance=..5,tag=!ItemLoot176] run tag @s add ItemLoot176

execute as @s[x=-2050,y=65,z=-177,distance=..5,tag=ItemLoot182] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-2050,y=65,z=-177,distance=..5,tag=!ItemLoot182] run give @s cobblemon:destiny_knot
execute as @s[x=-2050,y=65,z=-177,distance=..5,tag=!ItemLoot182] run tellraw @s {"text":"You found a Destiny Knot!","italic":true,"color":"gray"}
execute as @s[x=-2050,y=65,z=-177,distance=..5,tag=!ItemLoot182] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2050,y=65,z=-177,distance=..5,tag=!ItemLoot182] run tag @s add ItemLoot182

execute as @s[x=-1982,y=104,z=-197,distance=..5,tag=ItemLoot183] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1982,y=104,z=-197,distance=..5,tag=!ItemLoot183] run give @s cobblemon:x_speed
execute as @s[x=-1982,y=104,z=-197,distance=..5,tag=!ItemLoot183] run tellraw @s {"text":"You found an X Speed!","italic":true,"color":"gray"}
execute as @s[x=-1982,y=104,z=-197,distance=..5,tag=!ItemLoot183] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1982,y=104,z=-197,distance=..5,tag=!ItemLoot183] run tag @s add ItemLoot183

execute as @s[x=-1958,y=104,z=-165,distance=..5,tag=ItemLoot184] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1958,y=104,z=-165,distance=..5,tag=!ItemLoot184] run give @s cobblemon:super_potion
execute as @s[x=-1958,y=104,z=-165,distance=..5,tag=!ItemLoot184] run tellraw @s {"text":"You found a Super Potion!","italic":true,"color":"gray"}
execute as @s[x=-1958,y=104,z=-165,distance=..5,tag=!ItemLoot184] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1958,y=104,z=-165,distance=..5,tag=!ItemLoot184] run tag @s add ItemLoot184

execute as @s[x=-1904,y=114,z=15,distance=..5,tag=ItemLoot186] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1904,y=114,z=15,distance=..5,tag=!ItemLoot186] run give @s cobblemon:protein
execute as @s[x=-1904,y=114,z=15,distance=..5,tag=!ItemLoot186] run tellraw @s {"text":"You found a Protein!","italic":true,"color":"gray"}
execute as @s[x=-1904,y=114,z=15,distance=..5,tag=!ItemLoot186] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1904,y=114,z=15,distance=..5,tag=!ItemLoot186] run tag @s add ItemLoot186

execute as @s[x=-1950,y=109,z=-17,distance=..5,tag=ItemLoot187] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1950,y=109,z=-17,distance=..5,tag=!ItemLoot187] run give @s cobblemon:x_defence
execute as @s[x=-1950,y=109,z=-17,distance=..5,tag=!ItemLoot187] run tellraw @s {"text":"You found an X Defence!","italic":true,"color":"gray"}
execute as @s[x=-1950,y=109,z=-17,distance=..5,tag=!ItemLoot187] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1950,y=109,z=-17,distance=..5,tag=!ItemLoot187] run tag @s add ItemLoot187

execute as @s[x=-1931,y=117,z=-167,distance=..5,tag=ItemLoot188] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1931,y=117,z=-167,distance=..5,tag=!ItemLoot188] run give @s cobblemon:x_special_attack
execute as @s[x=-1931,y=117,z=-167,distance=..5,tag=!ItemLoot188] run tellraw @s {"text":"You found an X Special Attack!","italic":true,"color":"gray"}
execute as @s[x=-1931,y=117,z=-167,distance=..5,tag=!ItemLoot188] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1931,y=117,z=-167,distance=..5,tag=!ItemLoot188] run tag @s add ItemLoot188

execute as @s[x=-2194,y=100,z=-114,distance=..5,tag=ItemLoot189] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-2194,y=100,z=-114,distance=..5,tag=!ItemLoot189] run scoreboard players add @s Money 1000
execute as @s[x=-2194,y=100,z=-114,distance=..5,tag=!ItemLoot189] run tellraw @s {"text":"You recieved $1,000!","italic":true,"color":"gray"}
execute as @s[x=-2194,y=100,z=-114,distance=..5,tag=!ItemLoot189] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2194,y=100,z=-114,distance=..5,tag=!ItemLoot189] run tag @s add ItemLoot189

execute as @s[x=-2190,y=101,z=1,distance=..5,tag=ItemLoot190] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-2190,y=101,z=1,distance=..5,tag=!ItemLoot190] run give @s cobblemon:charti_berry
execute as @s[x=-2190,y=101,z=1,distance=..5,tag=!ItemLoot190] run tellraw @s {"text":"You found a Charti Berry!","italic":true,"color":"gray"}
execute as @s[x=-2190,y=101,z=1,distance=..5,tag=!ItemLoot190] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2190,y=101,z=1,distance=..5,tag=!ItemLoot190] run tag @s add ItemLoot190

execute as @s[x=-2099,y=104,z=-284,distance=..5,tag=ItemLoot192] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-2099,y=104,z=-284,distance=..5,tag=!ItemLoot192] run give @s cobblemon:iapapa_berry
execute as @s[x=-2099,y=104,z=-284,distance=..5,tag=!ItemLoot192] run tellraw @s {"text":"You found an Iapapa Berry!","italic":true,"color":"gray"}
execute as @s[x=-2099,y=104,z=-284,distance=..5,tag=!ItemLoot192] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2099,y=104,z=-284,distance=..5,tag=!ItemLoot192] run tag @s add ItemLoot192

execute as @s[x=-2185,y=104,z=-324,distance=..5,tag=ItemLoot193] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-2185,y=104,z=-324,distance=..5,tag=!ItemLoot193] run give @s cobblemon:revive
execute as @s[x=-2185,y=104,z=-324,distance=..5,tag=!ItemLoot193] run tellraw @s {"text":"You found a Revive!","italic":true,"color":"gray"}
execute as @s[x=-2185,y=104,z=-324,distance=..5,tag=!ItemLoot193] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2185,y=104,z=-324,distance=..5,tag=!ItemLoot193] run tag @s add ItemLoot193

execute as @s[x=-2163,y=104,z=-345,distance=..5,tag=ItemLoot195] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-2163,y=104,z=-345,distance=..5,tag=!ItemLoot195] run give @s mega_showdown:mindplate
execute as @s[x=-2163,y=104,z=-345,distance=..5,tag=!ItemLoot195] run tellraw @s {"text":"You found a Mind Plate!","italic":true,"color":"gray"}
execute as @s[x=-2163,y=104,z=-345,distance=..5,tag=!ItemLoot195] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2163,y=104,z=-345,distance=..5,tag=!ItemLoot195] run tag @s add ItemLoot195

execute as @s[x=-2257,y=104,z=-440,distance=..5,tag=ItemLoot196] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-2257,y=104,z=-440,distance=..5,tag=!ItemLoot196] run give @s cobblemon:x_accuracy
execute as @s[x=-2257,y=104,z=-440,distance=..5,tag=!ItemLoot196] run tellraw @s {"text":"You found an X Accuracy!","italic":true,"color":"gray"}
execute as @s[x=-2257,y=104,z=-440,distance=..5,tag=!ItemLoot196] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2257,y=104,z=-440,distance=..5,tag=!ItemLoot196] run tag @s add ItemLoot196

execute as @s[x=-2163,y=104,z=-439,distance=..5,tag=ItemLoot197] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-2163,y=104,z=-439,distance=..5,tag=!ItemLoot197] run give @s cobblemon:paralyze_heal
execute as @s[x=-2163,y=104,z=-439,distance=..5,tag=!ItemLoot197] run tellraw @s {"text":"You found a Paralyze Heal!","italic":true,"color":"gray"}
execute as @s[x=-2163,y=104,z=-439,distance=..5,tag=!ItemLoot197] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2163,y=104,z=-439,distance=..5,tag=!ItemLoot197] run tag @s add ItemLoot197

execute as @s[x=-2162,y=104,z=-446,distance=..5,tag=ItemLoot198] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-2162,y=104,z=-446,distance=..5,tag=!ItemLoot198] run give @s cobblemon:burn_heal
execute as @s[x=-2162,y=104,z=-446,distance=..5,tag=!ItemLoot198] run tellraw @s {"text":"You found a Burn Heal!","italic":true,"color":"gray"}
execute as @s[x=-2162,y=104,z=-446,distance=..5,tag=!ItemLoot198] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2162,y=104,z=-446,distance=..5,tag=!ItemLoot198] run tag @s add ItemLoot198

execute as @s[x=-2233,y=104,z=-514,distance=..5,tag=ItemLoot199] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-2233,y=104,z=-514,distance=..5,tag=!ItemLoot199] run give @s cobblemon:thunder_stone
execute as @s[x=-2233,y=104,z=-514,distance=..5,tag=!ItemLoot199] run tellraw @s {"text":"You found a Thunder Stone!","italic":true,"color":"gray"}
execute as @s[x=-2233,y=104,z=-514,distance=..5,tag=!ItemLoot199] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2233,y=104,z=-514,distance=..5,tag=!ItemLoot199] run tag @s add ItemLoot199

execute as @s[x=-2298,y=104,z=-616,distance=..5,tag=ItemLoot201] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-2298,y=104,z=-616,distance=..5,tag=!ItemLoot201] run give @s cobblemon:soft_sand
execute as @s[x=-2298,y=104,z=-616,distance=..5,tag=!ItemLoot201] run tellraw @s {"text":"You found a Soft Sand!","italic":true,"color":"gray"}
execute as @s[x=-2298,y=104,z=-616,distance=..5,tag=!ItemLoot201] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2298,y=104,z=-616,distance=..5,tag=!ItemLoot201] run tag @s add ItemLoot201

execute as @s[x=-2185,y=104,z=-652,distance=..5,tag=ItemLoot202] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-2185,y=104,z=-652,distance=..5,tag=!ItemLoot202] run give @s cobblemon:timer_ball
execute as @s[x=-2185,y=104,z=-652,distance=..5,tag=!ItemLoot202] run tellraw @s {"text":"You found a Timer Ball!","italic":true,"color":"gray"}
execute as @s[x=-2185,y=104,z=-652,distance=..5,tag=!ItemLoot202] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2185,y=104,z=-652,distance=..5,tag=!ItemLoot202] run tag @s add ItemLoot202

execute as @s[x=-2281,y=105,z=-670,distance=..5,tag=ItemLoot203] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-2281,y=105,z=-670,distance=..5,tag=!ItemLoot203] run give @s cobblemon:everstone
execute as @s[x=-2281,y=105,z=-670,distance=..5,tag=!ItemLoot203] run tellraw @s {"text":"You found an Everstone!","italic":true,"color":"gray"}
execute as @s[x=-2281,y=105,z=-670,distance=..5,tag=!ItemLoot203] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2281,y=105,z=-670,distance=..5,tag=!ItemLoot203] run tag @s add ItemLoot203

execute as @s[x=-1105,y=109,z=2068,distance=..5,tag=ItemLoot204] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1105,y=109,z=2068,distance=..5,tag=!ItemLoot204] run give @s cobblemon:timer_ball
execute as @s[x=-1105,y=109,z=2068,distance=..5,tag=!ItemLoot204] run tellraw @s {"text":"You found a Timer Ball!","italic":true,"color":"gray"}
execute as @s[x=-1105,y=109,z=2068,distance=..5,tag=!ItemLoot204] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1105,y=109,z=2068,distance=..5,tag=!ItemLoot204] run tag @s add ItemLoot204

execute as @s[x=-2032,y=104,z=-667,distance=..5,tag=ItemLoot205] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-2032,y=104,z=-667,distance=..5,tag=!ItemLoot205] run give @s cobblemon:sitrus_berry
execute as @s[x=-2032,y=104,z=-667,distance=..5,tag=!ItemLoot205] run tellraw @s {"text":"You found a Sitrus Berry!","italic":true,"color":"gray"}
execute as @s[x=-2032,y=104,z=-667,distance=..5,tag=!ItemLoot205] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2032,y=104,z=-667,distance=..5,tag=!ItemLoot205] run tag @s add ItemLoot205

execute as @s[x=-2016,y=110,z=-663,distance=..5,tag=ItemLoot206] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-2016,y=110,z=-663,distance=..5,tag=!ItemLoot206] run give @s cobblemon:super_potion
execute as @s[x=-2016,y=110,z=-663,distance=..5,tag=!ItemLoot206] run tellraw @s {"text":"You found a Super Potion!","italic":true,"color":"gray"}
execute as @s[x=-2016,y=110,z=-663,distance=..5,tag=!ItemLoot206] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2016,y=110,z=-663,distance=..5,tag=!ItemLoot206] run tag @s add ItemLoot206

execute as @s[x=-1957,y=118,z=-641,distance=..5,tag=ItemLoot208] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1957,y=118,z=-641,distance=..5,tag=!ItemLoot208] run give @s cobblemon:hyper_potion
execute as @s[x=-1957,y=118,z=-641,distance=..5,tag=!ItemLoot208] run tellraw @s {"text":"You found a Hyper Potion!","italic":true,"color":"gray"}
execute as @s[x=-1957,y=118,z=-641,distance=..5,tag=!ItemLoot208] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1957,y=118,z=-641,distance=..5,tag=!ItemLoot208] run tag @s add ItemLoot208

execute as @s[x=-1854,y=134,z=-661,distance=..5,tag=ItemLoot209] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1854,y=134,z=-661,distance=..5,tag=!ItemLoot209] run give @s cobblemon:thunder_stone
execute as @s[x=-1854,y=134,z=-661,distance=..5,tag=!ItemLoot209] run tellraw @s {"text":"You found a Thunder Stone!","italic":true,"color":"gray"}
execute as @s[x=-1854,y=134,z=-661,distance=..5,tag=!ItemLoot209] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1854,y=134,z=-661,distance=..5,tag=!ItemLoot209] run tag @s add ItemLoot209

execute as @s[x=-1774,y=69,z=-428,distance=..5,tag=ItemLoot210] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1774,y=69,z=-428,distance=..5,tag=!ItemLoot210] run give @s cobblemon:nest_ball
execute as @s[x=-1774,y=69,z=-428,distance=..5,tag=!ItemLoot210] run tellraw @s {"text":"You found a Nest Ball!","italic":true,"color":"gray"}
execute as @s[x=-1774,y=69,z=-428,distance=..5,tag=!ItemLoot210] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1774,y=69,z=-428,distance=..5,tag=!ItemLoot210] run tag @s add ItemLoot210

execute as @s[x=-1709,y=69,z=-369,distance=..5,tag=ItemLoot211] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1709,y=69,z=-369,distance=..5,tag=!ItemLoot211] run give @s cobblemon:revive
execute as @s[x=-1709,y=69,z=-369,distance=..5,tag=!ItemLoot211] run tellraw @s {"text":"You found a Revive!","italic":true,"color":"gray"}
execute as @s[x=-1709,y=69,z=-369,distance=..5,tag=!ItemLoot211] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1709,y=69,z=-369,distance=..5,tag=!ItemLoot211] run tag @s add ItemLoot211

execute as @s[x=-1723,y=64,z=-257,distance=..5,tag=ItemLoot212] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1723,y=64,z=-257,distance=..5,tag=!ItemLoot212] run give @s cobblemon:moon_stone
execute as @s[x=-1723,y=64,z=-257,distance=..5,tag=!ItemLoot212] run tellraw @s {"text":"You found a Moon Stone!","italic":true,"color":"gray"}
execute as @s[x=-1723,y=64,z=-257,distance=..5,tag=!ItemLoot212] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1723,y=64,z=-257,distance=..5,tag=!ItemLoot212] run tag @s add ItemLoot212

execute as @s[x=-1697,y=69,z=-345,distance=..5,tag=ItemLoot213] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1697,y=69,z=-345,distance=..5,tag=!ItemLoot213] run give @s mega_showdown:reveal_glass
execute as @s[x=-1697,y=69,z=-345,distance=..5,tag=!ItemLoot213] run tellraw @s {"text":"You found a Reveal Glass!","italic":true,"color":"gray"}
execute as @s[x=-1697,y=69,z=-345,distance=..5,tag=!ItemLoot213] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1697,y=69,z=-345,distance=..5,tag=!ItemLoot213] run tag @s add ItemLoot213

execute as @s[x=-1574,y=35,z=-204,distance=..5,tag=ItemLoot215] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1574,y=35,z=-204,distance=..5,tag=!ItemLoot215] run function kalos:spawn/flashhm
execute as @s[x=-1574,y=35,z=-204,distance=..5,tag=!ItemLoot215] run tellraw @s {"text":"You recieved TM70: Flash!","italic":true,"color":"gray"}
execute as @s[x=-1574,y=35,z=-204,distance=..5,tag=!ItemLoot215] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1574,y=35,z=-204,distance=..5,tag=!ItemLoot215] run tag @s add ItemLoot215

execute as @s[x=-1568,y=40,z=-271,distance=..5,tag=ItemLoot214] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1568,y=40,z=-271,distance=..5,tag=!ItemLoot214] run give @s cobblemon:black_belt
execute as @s[x=-1568,y=40,z=-271,distance=..5,tag=!ItemLoot214] run tellraw @s {"text":"You found a Black Belt!","italic":true,"color":"gray"}
execute as @s[x=-1568,y=40,z=-271,distance=..5,tag=!ItemLoot214] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1568,y=40,z=-271,distance=..5,tag=!ItemLoot214] run tag @s add ItemLoot214

execute as @s[x=-1523,y=39,z=-212,distance=..5,tag=ItemLoot217] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1523,y=39,z=-212,distance=..5,tag=!ItemLoot217] run function kalos:spawn/escaperope
execute as @s[x=-1523,y=39,z=-212,distance=..5,tag=!ItemLoot217] run tellraw @s {"text":"You found an Escape Rope!","italic":true,"color":"gray"}
execute as @s[x=-1523,y=39,z=-212,distance=..5,tag=!ItemLoot217] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1523,y=39,z=-212,distance=..5,tag=!ItemLoot217] run tag @s add ItemLoot217

execute as @s[x=-1477,y=35,z=-362,distance=..5,tag=ItemLoot218] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1477,y=35,z=-362,distance=..5,tag=!ItemLoot218] run give @s cobblemon:hyper_potion
execute as @s[x=-1477,y=35,z=-362,distance=..5,tag=!ItemLoot218] run tellraw @s {"text":"You found a Hyper Potion!","italic":true,"color":"gray"}
execute as @s[x=-1477,y=35,z=-362,distance=..5,tag=!ItemLoot218] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1477,y=35,z=-362,distance=..5,tag=!ItemLoot218] run tag @s add ItemLoot218

execute as @s[x=-1595,y=43,z=-361,distance=..5,tag=ItemLoot219] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1595,y=43,z=-361,distance=..5,tag=!ItemLoot219] run give @s cobblemon:iron
execute as @s[x=-1595,y=43,z=-361,distance=..5,tag=!ItemLoot219] run tellraw @s {"text":"You found an Iron!","italic":true,"color":"gray"}
execute as @s[x=-1595,y=43,z=-361,distance=..5,tag=!ItemLoot219] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1595,y=43,z=-361,distance=..5,tag=!ItemLoot219] run tag @s add ItemLoot219

execute as @s[x=-1641,y=17,z=-377,distance=..5,tag=ItemLoot220] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1641,y=17,z=-377,distance=..5,tag=!ItemLoot220] run give @s mega_showdown:earthplate
execute as @s[x=-1641,y=17,z=-377,distance=..5,tag=!ItemLoot220] run tellraw @s {"text":"You found an Earth Plate!","italic":true,"color":"gray"}
execute as @s[x=-1641,y=17,z=-377,distance=..5,tag=!ItemLoot220] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1641,y=17,z=-377,distance=..5,tag=!ItemLoot220] run tag @s add ItemLoot220

execute as @s[x=-1695,y=76,z=-942,distance=..5,tag=ItemLoot223] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1695,y=76,z=-942,distance=..5,tag=!ItemLoot223] run scoreboard players add @s Money 1500
execute as @s[x=-1695,y=76,z=-942,distance=..5,tag=!ItemLoot223] run tellraw @s {"text":"You recieved $1,500!","italic":true,"color":"gray"}
execute as @s[x=-1695,y=76,z=-942,distance=..5,tag=!ItemLoot223] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1695,y=76,z=-942,distance=..5,tag=!ItemLoot223] run tag @s add ItemLoot223

execute as @s[x=-1680,y=80,z=-827,distance=..5,tag=ItemLoot224] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1680,y=80,z=-827,distance=..5,tag=!ItemLoot224] run give @s cobblemon:soothe_bell
execute as @s[x=-1680,y=80,z=-827,distance=..5,tag=!ItemLoot224] run tellraw @s {"text":"You found a Soothe Bell!","italic":true,"color":"gray"}
execute as @s[x=-1680,y=80,z=-827,distance=..5,tag=!ItemLoot224] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1680,y=80,z=-827,distance=..5,tag=!ItemLoot224] run tag @s add ItemLoot224

execute as @s[x=-1586,y=85,z=-829,distance=..5,tag=ItemLoot225] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1586,y=85,z=-829,distance=..5,tag=!ItemLoot225] run give @s cobblemon:eviolite
execute as @s[x=-1586,y=85,z=-829,distance=..5,tag=!ItemLoot225] run tellraw @s {"text":"You found an Eviolite!","italic":true,"color":"gray"}
execute as @s[x=-1586,y=85,z=-829,distance=..5,tag=!ItemLoot225] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1586,y=85,z=-829,distance=..5,tag=!ItemLoot225] run tag @s add ItemLoot225

execute as @s[x=-1563,y=84,z=-844,distance=..5,tag=ItemLoot226] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1563,y=84,z=-844,distance=..5,tag=!ItemLoot226] run give @s cobblemon:sun_stone
execute as @s[x=-1563,y=84,z=-844,distance=..5,tag=!ItemLoot226] run tellraw @s {"text":"You found a Sun Stone!","italic":true,"color":"gray"}
execute as @s[x=-1563,y=84,z=-844,distance=..5,tag=!ItemLoot226] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1563,y=84,z=-844,distance=..5,tag=!ItemLoot226] run tag @s add ItemLoot226

execute as @s[x=-1517,y=80,z=-805,distance=..5,tag=Surf] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1517,y=80,z=-805,distance=..5,tag=!Surf] run tellraw @s {"text":"You recieved HM03: Surf! You can now travel across water.","italic":true,"color":"gray"}
execute as @s[x=-1517,y=80,z=-805,distance=..5,tag=!Surf] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1517,y=80,z=-805,distance=..5,tag=!Surf] run tag @s add Surf

execute as @s[x=-1788,y=108,z=-886,distance=..5,tag=ItemLoot228] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1788,y=108,z=-886,distance=..5,tag=!ItemLoot228] run give @s cobblemon:x_special_attack
execute as @s[x=-1788,y=108,z=-886,distance=..5,tag=!ItemLoot228] run tellraw @s {"text":"You found an X Special Attack!","italic":true,"color":"gray"}
execute as @s[x=-1788,y=108,z=-886,distance=..5,tag=!ItemLoot228] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1788,y=108,z=-886,distance=..5,tag=!ItemLoot228] run tag @s add ItemLoot228

execute as @s[x=-1731,y=108,z=-897,distance=..5,tag=ItemLoot229] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1731,y=108,z=-897,distance=..5,tag=!ItemLoot229] run give @s cobblemon:leppa_berry
execute as @s[x=-1731,y=108,z=-897,distance=..5,tag=!ItemLoot229] run tellraw @s {"text":"You found a Leppa Berry!","italic":true,"color":"gray"}
execute as @s[x=-1731,y=108,z=-897,distance=..5,tag=!ItemLoot229] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1731,y=108,z=-897,distance=..5,tag=!ItemLoot229] run tag @s add ItemLoot229

execute as @s[x=-1609,y=76,z=-1026,distance=..5,tag=ItemLoot230] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1609,y=76,z=-1026,distance=..5,tag=!ItemLoot230] run give @s cobblemon:max_ether
execute as @s[x=-1609,y=76,z=-1026,distance=..5,tag=!ItemLoot230] run tellraw @s {"text":"You found a Max Ether!","italic":true,"color":"gray"}
execute as @s[x=-1609,y=76,z=-1026,distance=..5,tag=!ItemLoot230] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1609,y=76,z=-1026,distance=..5,tag=!ItemLoot230] run tag @s add ItemLoot230

execute as @s[x=-1427,y=104,z=-849,distance=..5,tag=ItemLoot235] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1427,y=104,z=-849,distance=..5,tag=!ItemLoot235] run function kalos:spawn/honey
execute as @s[x=-1427,y=104,z=-849,distance=..5,tag=!ItemLoot235] run tellraw @s {"text":"You found some Honey!","italic":true,"color":"gray"}
execute as @s[x=-1427,y=104,z=-849,distance=..5,tag=!ItemLoot235] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1427,y=104,z=-849,distance=..5,tag=!ItemLoot235] run tag @s add ItemLoot235

execute as @s[x=-1433,y=104,z=-783,distance=..5,tag=ItemLoot236] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1433,y=104,z=-783,distance=..5,tag=!ItemLoot236] run give @s cobblemon:aspear_berry
execute as @s[x=-1433,y=104,z=-783,distance=..5,tag=!ItemLoot236] run tellraw @s {"text":"You found an Aspear Berry!","italic":true,"color":"gray"}
execute as @s[x=-1433,y=104,z=-783,distance=..5,tag=!ItemLoot236] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1433,y=104,z=-783,distance=..5,tag=!ItemLoot236] run tag @s add ItemLoot236

execute as @s[x=-1386,y=100,z=-749,distance=..5,tag=ItemLoot237] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1386,y=100,z=-749,distance=..5,tag=!ItemLoot237] run give @s cobblemon:net_ball
execute as @s[x=-1386,y=100,z=-749,distance=..5,tag=!ItemLoot237] run tellraw @s {"text":"You found a Net Ball!","italic":true,"color":"gray"}
execute as @s[x=-1386,y=100,z=-749,distance=..5,tag=!ItemLoot237] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1386,y=100,z=-749,distance=..5,tag=!ItemLoot237] run tag @s add ItemLoot237

execute as @s[x=-1373,y=102,z=-855,distance=..5,tag=ItemLoot239] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1373,y=102,z=-855,distance=..5,tag=!ItemLoot239] run give @s cobblemon:sachet
execute as @s[x=-1373,y=102,z=-855,distance=..5,tag=!ItemLoot239] run tellraw @s {"text":"You found a Sachet!","italic":true,"color":"gray"}
execute as @s[x=-1373,y=102,z=-855,distance=..5,tag=!ItemLoot239] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1373,y=102,z=-855,distance=..5,tag=!ItemLoot239] run tag @s add ItemLoot239

execute as @s[x=-1274,y=106,z=-884,distance=..5,tag=ItemLoot240] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1274,y=106,z=-884,distance=..5,tag=!ItemLoot240] run give @s cobblemon:shiny_stone
execute as @s[x=-1274,y=106,z=-884,distance=..5,tag=!ItemLoot240] run tellraw @s {"text":"You found a Shiny Stone!","italic":true,"color":"gray"}
execute as @s[x=-1274,y=106,z=-884,distance=..5,tag=!ItemLoot240] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1274,y=106,z=-884,distance=..5,tag=!ItemLoot240] run tag @s add ItemLoot240

execute as @s[x=-1339,y=104,z=-795,distance=..5,tag=ItemLoot241] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1339,y=104,z=-795,distance=..5,tag=!ItemLoot241] run give @s cobblemon:whipped_dream
execute as @s[x=-1339,y=104,z=-795,distance=..5,tag=!ItemLoot241] run tellraw @s {"text":"You found a Whipped Dream!","italic":true,"color":"gray"}
execute as @s[x=-1339,y=104,z=-795,distance=..5,tag=!ItemLoot241] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1339,y=104,z=-795,distance=..5,tag=!ItemLoot241] run tag @s add ItemLoot241

execute as @s[x=-1381,y=104,z=-748,distance=..5,tag=ItemLoot242] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1381,y=104,z=-748,distance=..5,tag=!ItemLoot242] run give @s cobblemon:leftovers
execute as @s[x=-1381,y=104,z=-748,distance=..5,tag=!ItemLoot242] run tellraw @s {"text":"You found Leftovers!","italic":true,"color":"gray"}
execute as @s[x=-1381,y=104,z=-748,distance=..5,tag=!ItemLoot242] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1381,y=104,z=-748,distance=..5,tag=!ItemLoot242] run tag @s add ItemLoot242

execute as @s[x=-1256,y=76,z=-790,distance=..5,tag=ItemLoot243] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1256,y=76,z=-790,distance=..5,tag=!ItemLoot243] run give @s cobblemon:ice_heal
execute as @s[x=-1256,y=76,z=-790,distance=..5,tag=!ItemLoot243] run tellraw @s {"text":"You found an Ice Heal!","italic":true,"color":"gray"}
execute as @s[x=-1256,y=76,z=-790,distance=..5,tag=!ItemLoot243] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1256,y=76,z=-790,distance=..5,tag=!ItemLoot243] run tag @s add ItemLoot243

execute as @s[x=-1288,y=76,z=-841,distance=..5,tag=ItemLoot244] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1288,y=76,z=-841,distance=..5,tag=!ItemLoot244] run give @s cobblemon:water_stone
execute as @s[x=-1288,y=76,z=-841,distance=..5,tag=!ItemLoot244] run tellraw @s {"text":"You found a Water Stone!","italic":true,"color":"gray"}
execute as @s[x=-1288,y=76,z=-841,distance=..5,tag=!ItemLoot244] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1288,y=76,z=-841,distance=..5,tag=!ItemLoot244] run tag @s add ItemLoot244

execute as @s[x=-1286,y=76,z=-1091,distance=..5,tag=ItemLoot247] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1286,y=76,z=-1091,distance=..5,tag=!ItemLoot247] run scoreboard players add @s Money 4000
execute as @s[x=-1286,y=76,z=-1091,distance=..5,tag=!ItemLoot247] run tellraw @s {"text":"You recieved $4,000!","italic":true,"color":"gray"}
execute as @s[x=-1286,y=76,z=-1091,distance=..5,tag=!ItemLoot247] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1286,y=76,z=-1091,distance=..5,tag=!ItemLoot247] run tag @s add ItemLoot247

execute as @s[x=-1251,y=76,z=-1127,distance=..5,tag=ItemLoot248] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1251,y=76,z=-1127,distance=..5,tag=!ItemLoot248] run scoreboard players add @s Money 6000
execute as @s[x=-1251,y=76,z=-1127,distance=..5,tag=!ItemLoot248] run tellraw @s {"text":"You recieved $6,000!","italic":true,"color":"gray"}
execute as @s[x=-1251,y=76,z=-1127,distance=..5,tag=!ItemLoot248] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1251,y=76,z=-1127,distance=..5,tag=!ItemLoot248] run tag @s add ItemLoot248

execute as @s[x=-1311,y=76,z=-1210,distance=..5,tag=ItemLoot249] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1311,y=76,z=-1210,distance=..5,tag=!ItemLoot249] run give @s mega_showdown:splashplate
execute as @s[x=-1311,y=76,z=-1210,distance=..5,tag=!ItemLoot249] run tellraw @s {"text":"You found a Splash Plate!","italic":true,"color":"gray"}
execute as @s[x=-1311,y=76,z=-1210,distance=..5,tag=!ItemLoot249] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1311,y=76,z=-1210,distance=..5,tag=!ItemLoot249] run tag @s add ItemLoot249

execute as @s[x=-1439,y=76,z=-1226,distance=..5,tag=ItemLoot250] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1439,y=76,z=-1226,distance=..5,tag=!ItemLoot250] run give @s cobblemon:dive_ball
execute as @s[x=-1439,y=76,z=-1226,distance=..5,tag=!ItemLoot250] run tellraw @s {"text":"You found a Dive Ball!","italic":true,"color":"gray"}
execute as @s[x=-1439,y=76,z=-1226,distance=..5,tag=!ItemLoot250] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1439,y=76,z=-1226,distance=..5,tag=!ItemLoot250] run tag @s add ItemLoot250

execute as @s[x=-1418,y=76,z=-1023,distance=..5,tag=ItemLoot252] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1418,y=76,z=-1023,distance=..5,tag=!ItemLoot252] run give @s cobblemon:deep_sea_tooth
execute as @s[x=-1418,y=76,z=-1023,distance=..5,tag=!ItemLoot252] run tellraw @s {"text":"You found a Deep Sea Tooth!","italic":true,"color":"gray"}
execute as @s[x=-1418,y=76,z=-1023,distance=..5,tag=!ItemLoot252] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1418,y=76,z=-1023,distance=..5,tag=!ItemLoot252] run tag @s add ItemLoot252

execute as @s[x=-1407,y=76,z=-1004,distance=..5,tag=ItemLoot253] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1407,y=76,z=-1004,distance=..5,tag=!ItemLoot253] run give @s cobblemon:hyper_potion
execute as @s[x=-1407,y=76,z=-1004,distance=..5,tag=!ItemLoot253] run tellraw @s {"text":"You found a Hyper Potion!","italic":true,"color":"gray"}
execute as @s[x=-1407,y=76,z=-1004,distance=..5,tag=!ItemLoot253] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1407,y=76,z=-1004,distance=..5,tag=!ItemLoot253] run tag @s add ItemLoot253

execute as @s[x=-1418,y=76,z=-993,distance=..5,tag=ItemLoot254] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1418,y=76,z=-993,distance=..5,tag=!ItemLoot254] run give @s cobblemon:deep_sea_scale
execute as @s[x=-1418,y=76,z=-993,distance=..5,tag=!ItemLoot254] run tellraw @s {"text":"You found a Deep Sea Scale!","italic":true,"color":"gray"}
execute as @s[x=-1418,y=76,z=-993,distance=..5,tag=!ItemLoot254] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1418,y=76,z=-993,distance=..5,tag=!ItemLoot254] run tag @s add ItemLoot254

execute as @s[x=-1196,y=105,z=-812,distance=..5,tag=ItemLoot256] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1196,y=105,z=-812,distance=..5,tag=!ItemLoot256] run give @s cobblemon:elixir
execute as @s[x=-1196,y=105,z=-812,distance=..5,tag=!ItemLoot256] run tellraw @s {"text":"You found an Elixir!","italic":true,"color":"gray"}
execute as @s[x=-1196,y=105,z=-812,distance=..5,tag=!ItemLoot256] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1196,y=105,z=-812,distance=..5,tag=!ItemLoot256] run tag @s add ItemLoot256

execute as @s[x=-1134,y=81,z=-817,distance=..5,tag=ItemLoot257] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1134,y=81,z=-817,distance=..5,tag=!ItemLoot257] run give @s cobblemon:silk_scarf
execute as @s[x=-1134,y=81,z=-817,distance=..5,tag=!ItemLoot257] run tellraw @s {"text":"You recieved a Silk Scarf!","italic":true,"color":"gray"}
execute as @s[x=-1134,y=81,z=-817,distance=..5,tag=!ItemLoot257] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1134,y=81,z=-817,distance=..5,tag=!ItemLoot257] run tag @s add ItemLoot257

execute as @s[x=-1141,y=104,z=-772,distance=..5,tag=ItemLoot259] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1141,y=104,z=-772,distance=..5,tag=!ItemLoot259] run give @s cobblemon:awakening
execute as @s[x=-1141,y=104,z=-772,distance=..5,tag=!ItemLoot259] run tellraw @s {"text":"You found an Awakening!","italic":true,"color":"gray"}
execute as @s[x=-1141,y=104,z=-772,distance=..5,tag=!ItemLoot259] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1141,y=104,z=-772,distance=..5,tag=!ItemLoot259] run tag @s add ItemLoot259

execute as @s[x=-1094,y=80,z=-785,distance=..5,tag=ItemLoot260] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1094,y=80,z=-785,distance=..5,tag=!ItemLoot260] run give @s cobblemon:great_rod[custom_name='["",{"text":"Good Rod","italic":false}]',lore=['["",{"text":"A new, good-quality fishing rod.","italic":false}]','["",{"text":"Use it by any body of water to","italic":false}]','["",{"text":"fish for wild aquatic Pokémon.","italic":false}]'],enchantment_glint_override=false,enchantments={levels:{lure:2},show_in_tooltip:false},unbreakable={}]
execute as @s[x=-1094,y=80,z=-785,distance=..5,tag=!ItemLoot260] run tellraw @s {"text":"You recieved a Good Rod!","italic":true,"color":"gray"}
execute as @s[x=-1094,y=80,z=-785,distance=..5,tag=!ItemLoot260] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1094,y=80,z=-785,distance=..5,tag=!ItemLoot260] run tag @s add ItemLoot260

execute as @s[x=-1060,y=47,z=-807,distance=..5,tag=ItemLoot262] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1060,y=47,z=-807,distance=..5,tag=!ItemLoot262] run give @s cobblemon:lucky_egg
execute as @s[x=-1060,y=47,z=-807,distance=..5,tag=!ItemLoot262] run tellraw @s {"text":"You found a Lucky Egg!","italic":true,"color":"gray"}
execute as @s[x=-1060,y=47,z=-807,distance=..5,tag=!ItemLoot262] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1060,y=47,z=-807,distance=..5,tag=!ItemLoot262] run tag @s add ItemLoot262

execute as @s[x=-1049,y=80,z=-790,distance=..5,tag=ItemLoot263] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1049,y=80,z=-790,distance=..5,tag=!ItemLoot263] run function kalos:spawn/flyhm
execute as @s[x=-1049,y=80,z=-790,distance=..5,tag=!ItemLoot263] run tellraw @s {"text":"You recieved HM02: Fly!","italic":true,"color":"gray"}
execute as @s[x=-1049,y=80,z=-790,distance=..5,tag=!ItemLoot263] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1049,y=80,z=-790,distance=..5,tag=!ItemLoot263] run tag @s add ItemLoot263

execute as @s[x=-987,y=115,z=-987,distance=..5,tag=ItemLoot265] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-987,y=115,z=-987,distance=..5,tag=!ItemLoot265] run give @s cobblemon:metronome
execute as @s[x=-987,y=115,z=-987,distance=..5,tag=!ItemLoot265] run tellraw @s {"text":"You recieved a Metronome!","italic":true,"color":"gray"}
execute as @s[x=-987,y=115,z=-987,distance=..5,tag=!ItemLoot265] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-987,y=115,z=-987,distance=..5,tag=!ItemLoot265] run tag @s add ItemLoot265

execute as @s[x=-1042,y=119,z=-731,distance=..5,tag=ItemLoot268] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1042,y=119,z=-731,distance=..5,tag=!ItemLoot268] run give @s mega_showdown:skyplate
execute as @s[x=-1042,y=119,z=-731,distance=..5,tag=!ItemLoot268] run tellraw @s {"text":"You found a Sky Plate!","italic":true,"color":"gray"}
execute as @s[x=-1042,y=119,z=-731,distance=..5,tag=!ItemLoot268] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1042,y=119,z=-731,distance=..5,tag=!ItemLoot268] run tag @s add ItemLoot268

execute as @s[x=-1066,y=115,z=-590,distance=..5,tag=ItemLoot270] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-1066,y=115,z=-590,distance=..5,tag=!ItemLoot270] run give @s cobblemon:black_sludge
execute as @s[x=-1066,y=115,z=-590,distance=..5,tag=!ItemLoot270] run tellraw @s {"text":"You found Black Sludge!","italic":true,"color":"gray"}
execute as @s[x=-1066,y=115,z=-590,distance=..5,tag=!ItemLoot270] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1066,y=115,z=-590,distance=..5,tag=!ItemLoot270] run tag @s add ItemLoot270

execute as @s[x=-930,y=104,z=-519,distance=..5,tag=ItemLoot271] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-930,y=104,z=-519,distance=..5,tag=!ItemLoot271] run give @s cobblemon:nest_ball
execute as @s[x=-930,y=104,z=-519,distance=..5,tag=!ItemLoot271] run tellraw @s {"text":"You found a Nest Ball!","italic":true,"color":"gray"}
execute as @s[x=-930,y=104,z=-519,distance=..5,tag=!ItemLoot271] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-930,y=104,z=-519,distance=..5,tag=!ItemLoot271] run tag @s add ItemLoot271

execute as @s[x=-818,y=104,z=-596,distance=..5,tag=ItemLoot272] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-818,y=104,z=-596,distance=..5,tag=!ItemLoot272] run give @s cobblemon:smooth_rock
execute as @s[x=-818,y=104,z=-596,distance=..5,tag=!ItemLoot272] run tellraw @s {"text":"You found a Smooth Rock!","italic":true,"color":"gray"}
execute as @s[x=-818,y=104,z=-596,distance=..5,tag=!ItemLoot272] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-818,y=104,z=-596,distance=..5,tag=!ItemLoot272] run tag @s add ItemLoot272

execute as @s[x=-816,y=104,z=-709,distance=..5,tag=ItemLoot273] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-816,y=104,z=-709,distance=..5,tag=!ItemLoot273] run give @s cobblemon:x_accuracy
execute as @s[x=-816,y=104,z=-709,distance=..5,tag=!ItemLoot273] run tellraw @s {"text":"You found an X Accuracy!","italic":true,"color":"gray"}
execute as @s[x=-816,y=104,z=-709,distance=..5,tag=!ItemLoot273] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-816,y=104,z=-709,distance=..5,tag=!ItemLoot273] run tag @s add ItemLoot273

execute as @s[x=-838,y=104,z=-614,distance=..5,tag=ItemLoot274] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-838,y=104,z=-614,distance=..5,tag=!ItemLoot274] run give @s cobblemon:guard_spec
execute as @s[x=-838,y=104,z=-614,distance=..5,tag=!ItemLoot274] run tellraw @s {"text":"You found a Guard Spec.!","italic":true,"color":"gray"}
execute as @s[x=-838,y=104,z=-614,distance=..5,tag=!ItemLoot274] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-838,y=104,z=-614,distance=..5,tag=!ItemLoot274] run tag @s add ItemLoot274

execute as @s[x=-929,y=104,z=-647,distance=..5,tag=ItemLoot275] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-929,y=104,z=-647,distance=..5,tag=!ItemLoot275] run give @s cobblemon:fire_stone
execute as @s[x=-929,y=104,z=-647,distance=..5,tag=!ItemLoot275] run tellraw @s {"text":"You found a Fire Stone!","italic":true,"color":"gray"}
execute as @s[x=-929,y=104,z=-647,distance=..5,tag=!ItemLoot275] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-929,y=104,z=-647,distance=..5,tag=!ItemLoot275] run tag @s add ItemLoot275

execute as @s[x=-754,y=104,z=-674,distance=..5,tag=ItemLoot276] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-754,y=104,z=-674,distance=..5,tag=!ItemLoot276] run give @s mega_showdown:flameplate
execute as @s[x=-754,y=104,z=-674,distance=..5,tag=!ItemLoot276] run tellraw @s {"text":"You found a Flame Plate!","italic":true,"color":"gray"}
execute as @s[x=-754,y=104,z=-674,distance=..5,tag=!ItemLoot276] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-754,y=104,z=-674,distance=..5,tag=!ItemLoot276] run tag @s add ItemLoot276

execute as @s[x=-898,y=104,z=-573,distance=..5,tag=ItemLoot277] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-898,y=104,z=-573,distance=..5,tag=!ItemLoot277] run give @s cobblemon:heat_rock
execute as @s[x=-898,y=104,z=-573,distance=..5,tag=!ItemLoot277] run tellraw @s {"text":"You found a Heat Rock!","italic":true,"color":"gray"}
execute as @s[x=-898,y=104,z=-573,distance=..5,tag=!ItemLoot277] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-898,y=104,z=-573,distance=..5,tag=!ItemLoot277] run tag @s add ItemLoot277

execute as @s[x=-788,y=104,z=-440,distance=..5,tag=ItemLoot279] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-788,y=104,z=-440,distance=..5,tag=!ItemLoot279] run give @s cobblemon:burn_heal
execute as @s[x=-788,y=104,z=-440,distance=..5,tag=!ItemLoot279] run tellraw @s {"text":"You found a Burn Heal!","italic":true,"color":"gray"}
execute as @s[x=-788,y=104,z=-440,distance=..5,tag=!ItemLoot279] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-788,y=104,z=-440,distance=..5,tag=!ItemLoot279] run tag @s add ItemLoot279

execute as @s[x=-917,y=104,z=-415,distance=..5,tag=ItemLoot280] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-917,y=104,z=-415,distance=..5,tag=!ItemLoot280] run give @s cobblemon:pp_up
execute as @s[x=-917,y=104,z=-415,distance=..5,tag=!ItemLoot280] run tellraw @s {"text":"You found a PP Up!","italic":true,"color":"gray"}
execute as @s[x=-917,y=104,z=-415,distance=..5,tag=!ItemLoot280] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-917,y=104,z=-415,distance=..5,tag=!ItemLoot280] run tag @s add ItemLoot280

execute as @s[x=-780,y=104,z=-357,distance=..5,tag=ItemLoot281] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-780,y=104,z=-357,distance=..5,tag=!ItemLoot281] run give @s cobblemon:hyper_potion
execute as @s[x=-780,y=104,z=-357,distance=..5,tag=!ItemLoot281] run tellraw @s {"text":"You found a Hyper Potion!","italic":true,"color":"gray"}
execute as @s[x=-780,y=104,z=-357,distance=..5,tag=!ItemLoot281] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-780,y=104,z=-357,distance=..5,tag=!ItemLoot281] run tag @s add ItemLoot281

execute as @s[x=-785,y=104,z=-574,distance=..5,tag=ItemLoot278] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-785,y=104,z=-574,distance=..5,tag=!ItemLoot278] run scoreboard players add @s Money 6000
execute as @s[x=-785,y=104,z=-574,distance=..5,tag=!ItemLoot278] run tellraw @s {"text":"You recieved $6,000!","italic":true,"color":"gray"}
execute as @s[x=-785,y=104,z=-574,distance=..5,tag=!ItemLoot278] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-785,y=104,z=-574,distance=..5,tag=!ItemLoot278] run tag @s add ItemLoot278

execute as @s[x=-708,y=100,z=-396,distance=..5,tag=ItemLoot284] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-708,y=100,z=-396,distance=..5,tag=!ItemLoot284] run give @s cobblemon:sun_stone
execute as @s[x=-708,y=100,z=-396,distance=..5,tag=!ItemLoot284] run tellraw @s {"text":"You found a Sun Stone!","italic":true,"color":"gray"}
execute as @s[x=-708,y=100,z=-396,distance=..5,tag=!ItemLoot284] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-708,y=100,z=-396,distance=..5,tag=!ItemLoot284] run tag @s add ItemLoot284

execute as @s[x=-733,y=104,z=-443,distance=..5,tag=ItemLoot285] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-733,y=104,z=-443,distance=..5,tag=!ItemLoot285] run scoreboard players add @s Money 1500
execute as @s[x=-733,y=104,z=-443,distance=..5,tag=!ItemLoot285] run tellraw @s {"text":"You recieved $1,500!","italic":true,"color":"gray"}
execute as @s[x=-733,y=104,z=-443,distance=..5,tag=!ItemLoot285] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-733,y=104,z=-443,distance=..5,tag=!ItemLoot285] run tag @s add ItemLoot285

execute as @s[x=-672,y=100,z=-546,distance=..5,tag=ItemLoot286] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-672,y=100,z=-546,distance=..5,tag=!ItemLoot286] run give @s cobblemon:rare_candy
execute as @s[x=-672,y=100,z=-546,distance=..5,tag=!ItemLoot286] run tellraw @s {"text":"You found a Rare Candy!","italic":true,"color":"gray"}
execute as @s[x=-672,y=100,z=-546,distance=..5,tag=!ItemLoot286] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-672,y=100,z=-546,distance=..5,tag=!ItemLoot286] run tag @s add ItemLoot286

execute as @s[x=-962,y=48,z=-383,distance=..5,tag=ItemLoot287] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-962,y=48,z=-383,distance=..5,tag=!ItemLoot287] run give @s mega_showdown:zapplate
execute as @s[x=-962,y=48,z=-383,distance=..5,tag=!ItemLoot287] run tellraw @s {"text":"You found a Zap Plate!","italic":true,"color":"gray"}
execute as @s[x=-962,y=48,z=-383,distance=..5,tag=!ItemLoot287] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-962,y=48,z=-383,distance=..5,tag=!ItemLoot287] run tag @s add ItemLoot287

execute as @s[x=-958,y=48,z=-361,distance=..5,tag=ItemLoot290] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-958,y=48,z=-361,distance=..5,tag=!ItemLoot290] run give @s cobblemon:magnet
execute as @s[x=-958,y=48,z=-361,distance=..5,tag=!ItemLoot290] run tellraw @s {"text":"You found a Magnet!","italic":true,"color":"gray"}
execute as @s[x=-958,y=48,z=-361,distance=..5,tag=!ItemLoot290] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-958,y=48,z=-361,distance=..5,tag=!ItemLoot290] run tag @s add ItemLoot290

execute as @s[x=-214,y=100,z=-871,distance=..5,tag=ItemLoot292] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-214,y=100,z=-871,distance=..5,tag=!ItemLoot292] run give @s cobblemon:super_potion
execute as @s[x=-214,y=100,z=-871,distance=..5,tag=!ItemLoot292] run tellraw @s {"text":"You found a Super Potion!","italic":true,"color":"gray"}
execute as @s[x=-214,y=100,z=-871,distance=..5,tag=!ItemLoot292] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-214,y=100,z=-871,distance=..5,tag=!ItemLoot292] run tag @s add ItemLoot292

execute as @s[x=-125,y=100,z=-920,distance=..5,tag=ItemLoot293] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-125,y=100,z=-920,distance=..5,tag=!ItemLoot293] run give @s cobblemon:rare_candy
execute as @s[x=-125,y=100,z=-920,distance=..5,tag=!ItemLoot293] run tellraw @s {"text":"You found a Rare Candy!","italic":true,"color":"gray"}
execute as @s[x=-125,y=100,z=-920,distance=..5,tag=!ItemLoot293] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-125,y=100,z=-920,distance=..5,tag=!ItemLoot293] run tag @s add ItemLoot293

execute as @s[x=-171,y=100,z=-1044,distance=..5,tag=ItemLoot294] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-171,y=100,z=-1044,distance=..5,tag=!ItemLoot294] run scoreboard players add @s Money 250
execute as @s[x=-171,y=100,z=-1044,distance=..5,tag=!ItemLoot294] run tellraw @s {"text":"You recieved $250!","italic":true,"color":"gray"}
execute as @s[x=-171,y=100,z=-1044,distance=..5,tag=!ItemLoot294] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-171,y=100,z=-1044,distance=..5,tag=!ItemLoot294] run tag @s add ItemLoot294

execute as @s[x=-101,y=100,z=-1103,distance=..5,tag=ItemLoot295] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-101,y=100,z=-1103,distance=..5,tag=!ItemLoot295] run give @s cobblemon:cleanse_tag
execute as @s[x=-101,y=100,z=-1103,distance=..5,tag=!ItemLoot295] run tellraw @s {"text":"You found a Cleanse Tag!","italic":true,"color":"gray"}
execute as @s[x=-101,y=100,z=-1103,distance=..5,tag=!ItemLoot295] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-101,y=100,z=-1103,distance=..5,tag=!ItemLoot295] run tag @s add ItemLoot295

execute as @s[x=-238,y=100,z=-1045,distance=..5,tag=ItemLoot296] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-238,y=100,z=-1045,distance=..5,tag=!ItemLoot296] run scoreboard players add @s Money 2500
execute as @s[x=-238,y=100,z=-1045,distance=..5,tag=!ItemLoot296] run tellraw @s {"text":"You recieved $2,500!","italic":true,"color":"gray"}
execute as @s[x=-238,y=100,z=-1045,distance=..5,tag=!ItemLoot296] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-238,y=100,z=-1045,distance=..5,tag=!ItemLoot296] run tag @s add ItemLoot296

execute as @s[x=-193,y=100,z=-1198,distance=..5,tag=ItemLoot297] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-193,y=100,z=-1198,distance=..5,tag=!ItemLoot297] run give @s cobblemon:hyper_potion
execute as @s[x=-193,y=100,z=-1198,distance=..5,tag=!ItemLoot297] run tellraw @s {"text":"You found a Hyper Potion!","italic":true,"color":"gray"}
execute as @s[x=-193,y=100,z=-1198,distance=..5,tag=!ItemLoot297] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-193,y=100,z=-1198,distance=..5,tag=!ItemLoot297] run tag @s add ItemLoot297

execute as @s[x=-129,y=100,z=-1250,distance=..5,tag=ItemLoot299] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-129,y=100,z=-1250,distance=..5,tag=!ItemLoot299] run give @s cobblemon:damp_rock
execute as @s[x=-129,y=100,z=-1250,distance=..5,tag=!ItemLoot299] run tellraw @s {"text":"You found a Damp Rock!","italic":true,"color":"gray"}
execute as @s[x=-129,y=100,z=-1250,distance=..5,tag=!ItemLoot299] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-129,y=100,z=-1250,distance=..5,tag=!ItemLoot299] run tag @s add ItemLoot299

execute as @s[x=-213,y=100,z=-1120,distance=..5,tag=ItemLoot300] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-213,y=100,z=-1120,distance=..5,tag=!ItemLoot300] run give @s cobblemon:spell_tag
execute as @s[x=-213,y=100,z=-1120,distance=..5,tag=!ItemLoot300] run tellraw @s {"text":"You found a Spell Tag!","italic":true,"color":"gray"}
execute as @s[x=-213,y=100,z=-1120,distance=..5,tag=!ItemLoot300] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-213,y=100,z=-1120,distance=..5,tag=!ItemLoot300] run tag @s add ItemLoot300

execute as @s[x=-242,y=100,z=-1203,distance=..5,tag=ItemLoot301] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-242,y=100,z=-1203,distance=..5,tag=!ItemLoot301] run give @s cobblemon:revive
execute as @s[x=-242,y=100,z=-1203,distance=..5,tag=!ItemLoot301] run tellraw @s {"text":"You found a Revive!","italic":true,"color":"gray"}
execute as @s[x=-242,y=100,z=-1203,distance=..5,tag=!ItemLoot301] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-242,y=100,z=-1203,distance=..5,tag=!ItemLoot301] run tag @s add ItemLoot301

execute as @s[x=-57,y=100,z=-1202,distance=..5,tag=ItemLoot302] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-57,y=100,z=-1202,distance=..5,tag=!ItemLoot302] run give @s cobblemon:roseli_berry
execute as @s[x=-57,y=100,z=-1202,distance=..5,tag=!ItemLoot302] run tellraw @s {"text":"You found a Roseli Berry!","italic":true,"color":"gray"}
execute as @s[x=-57,y=100,z=-1202,distance=..5,tag=!ItemLoot302] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-57,y=100,z=-1202,distance=..5,tag=!ItemLoot302] run tag @s add ItemLoot302

execute as @s[x=-240,y=88,z=-1241,distance=..5,tag=ItemLoot304] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-240,y=88,z=-1241,distance=..5,tag=!ItemLoot304] run give @s mega_showdown:prison_bottle
execute as @s[x=-240,y=88,z=-1241,distance=..5,tag=!ItemLoot304] run tellraw @s {"text":"You found a Prison Bottle!","italic":true,"color":"gray"}
execute as @s[x=-240,y=88,z=-1241,distance=..5,tag=!ItemLoot304] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-240,y=88,z=-1241,distance=..5,tag=!ItemLoot304] run tag @s add ItemLoot304

execute as @s[x=-201,y=100,z=-1369,distance=..5,tag=ItemLoot306] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-201,y=100,z=-1369,distance=..5,tag=!ItemLoot306] run scoreboard players add @s Money 250
execute as @s[x=-201,y=100,z=-1369,distance=..5,tag=!ItemLoot306] run tellraw @s {"text":"You recieved $250!","italic":true,"color":"gray"}
execute as @s[x=-201,y=100,z=-1369,distance=..5,tag=!ItemLoot306] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-201,y=100,z=-1369,distance=..5,tag=!ItemLoot306] run tag @s add ItemLoot306

execute as @s[x=-137,y=100,z=-1392,distance=..5,tag=ItemLoot307] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-137,y=100,z=-1392,distance=..5,tag=!ItemLoot307] run give @s cobblemon:ether
execute as @s[x=-137,y=100,z=-1392,distance=..5,tag=!ItemLoot307] run tellraw @s {"text":"You found an Ether!","italic":true,"color":"gray"}
execute as @s[x=-137,y=100,z=-1392,distance=..5,tag=!ItemLoot307] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-137,y=100,z=-1392,distance=..5,tag=!ItemLoot307] run tag @s add ItemLoot307

execute as @s[x=-160,y=100,z=-1442,distance=..5,tag=ItemLoot310] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-160,y=100,z=-1442,distance=..5,tag=!ItemLoot310] run give @s cobblemon:ultra_ball
execute as @s[x=-160,y=100,z=-1442,distance=..5,tag=!ItemLoot310] run tellraw @s {"text":"You found an Ultra Ball!","italic":true,"color":"gray"}
execute as @s[x=-160,y=100,z=-1442,distance=..5,tag=!ItemLoot310] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-160,y=100,z=-1442,distance=..5,tag=!ItemLoot310] run tag @s add ItemLoot310

execute as @s[x=-166,y=104,z=-1485,distance=..5,tag=ItemLoot311] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-166,y=104,z=-1485,distance=..5,tag=!ItemLoot311] run give @s cobblemon:dusk_stone
execute as @s[x=-166,y=104,z=-1485,distance=..5,tag=!ItemLoot311] run tellraw @s {"text":"You found a Dusk Stone!","italic":true,"color":"gray"}
execute as @s[x=-166,y=104,z=-1485,distance=..5,tag=!ItemLoot311] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-166,y=104,z=-1485,distance=..5,tag=!ItemLoot311] run tag @s add ItemLoot311

execute as @s[x=-56,y=104,z=-1524,distance=..5,tag=ItemLoot312] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-56,y=104,z=-1524,distance=..5,tag=!ItemLoot312] run give @s cobblemon:leaf_stone
execute as @s[x=-56,y=104,z=-1524,distance=..5,tag=!ItemLoot312] run tellraw @s {"text":"You found a Leaf Stone!","italic":true,"color":"gray"}
execute as @s[x=-56,y=104,z=-1524,distance=..5,tag=!ItemLoot312] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-56,y=104,z=-1524,distance=..5,tag=!ItemLoot312] run tag @s add ItemLoot312

execute as @s[x=-211,y=125,z=-1831,distance=..5,tag=ItemLoot313] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-211,y=125,z=-1831,distance=..5,tag=!ItemLoot313] run give @s cobblemon:dusk_ball
execute as @s[x=-211,y=125,z=-1831,distance=..5,tag=!ItemLoot313] run tellraw @s {"text":"You found a Dusk Ball!","italic":true,"color":"gray"}
execute as @s[x=-211,y=125,z=-1831,distance=..5,tag=!ItemLoot313] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-211,y=125,z=-1831,distance=..5,tag=!ItemLoot313] run tag @s add ItemLoot313

execute as @s[x=-245,y=125,z=-1777,distance=..5,tag=ItemLoot314] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-245,y=125,z=-1777,distance=..5,tag=!ItemLoot314] run give @s cobblemon:burn_heal
execute as @s[x=-245,y=125,z=-1777,distance=..5,tag=!ItemLoot314] run tellraw @s {"text":"You found a Burn Heal!","italic":true,"color":"gray"}
execute as @s[x=-245,y=125,z=-1777,distance=..5,tag=!ItemLoot314] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-245,y=125,z=-1777,distance=..5,tag=!ItemLoot314] run tag @s add ItemLoot314

execute as @s[x=-237,y=125,z=-1725,distance=..5,tag=ItemLoot315] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-237,y=125,z=-1725,distance=..5,tag=!ItemLoot315] run give @s cobblemon:poke_ball
execute as @s[x=-237,y=125,z=-1725,distance=..5,tag=!ItemLoot315] run tellraw @s {"text":"You found a Poke Ball!","italic":true,"color":"gray"}
execute as @s[x=-237,y=125,z=-1725,distance=..5,tag=!ItemLoot315] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-237,y=125,z=-1725,distance=..5,tag=!ItemLoot315] run tag @s add ItemLoot315

execute as @s[x=-197,y=125,z=-1733,distance=..5,tag=ItemLoot316] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-197,y=125,z=-1733,distance=..5,tag=!ItemLoot316] run give @s cobblemon:max_ether
execute as @s[x=-197,y=125,z=-1733,distance=..5,tag=!ItemLoot316] run tellraw @s {"text":"You found a Max Ether!","italic":true,"color":"gray"}
execute as @s[x=-197,y=125,z=-1733,distance=..5,tag=!ItemLoot316] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-197,y=125,z=-1733,distance=..5,tag=!ItemLoot316] run tag @s add ItemLoot316

execute as @s[x=-62,y=125,z=-1755,distance=..5,tag=ItemLoot317] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-62,y=125,z=-1755,distance=..5,tag=!ItemLoot317] run give @s cobblemon:hyper_potion
execute as @s[x=-62,y=125,z=-1755,distance=..5,tag=!ItemLoot317] run tellraw @s {"text":"You found a Hyper Potion!","italic":true,"color":"gray"}
execute as @s[x=-62,y=125,z=-1755,distance=..5,tag=!ItemLoot317] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-62,y=125,z=-1755,distance=..5,tag=!ItemLoot317] run tag @s add ItemLoot317

execute as @s[x=-75,y=125,z=-1737,distance=..5,tag=ItemLoot318] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-75,y=125,z=-1737,distance=..5,tag=!ItemLoot318] run give @s cobblemon:max_revive
execute as @s[x=-75,y=125,z=-1737,distance=..5,tag=!ItemLoot318] run tellraw @s {"text":"You found a Max Revive!","italic":true,"color":"gray"}
execute as @s[x=-75,y=125,z=-1737,distance=..5,tag=!ItemLoot318] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-75,y=125,z=-1737,distance=..5,tag=!ItemLoot318] run tag @s add ItemLoot318

execute as @s[x=-239,y=89,z=-2023,distance=..5,tag=ItemLoot319] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-239,y=89,z=-2023,distance=..5,tag=!ItemLoot319] run give @s cobblemon:quick_ball
execute as @s[x=-239,y=89,z=-2023,distance=..5,tag=!ItemLoot319] run tellraw @s {"text":"You found a Quick Ball!","italic":true,"color":"gray"}
execute as @s[x=-239,y=89,z=-2023,distance=..5,tag=!ItemLoot319] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-239,y=89,z=-2023,distance=..5,tag=!ItemLoot319] run tag @s add ItemLoot319

execute as @s[x=-108,y=104,z=-1927,distance=..5,tag=ItemLoot320] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-108,y=104,z=-1927,distance=..5,tag=!ItemLoot320] run give @s cobblemon:metal_coat
execute as @s[x=-108,y=104,z=-1927,distance=..5,tag=!ItemLoot320] run tellraw @s {"text":"You found a Metal Coat!","italic":true,"color":"gray"}
execute as @s[x=-108,y=104,z=-1927,distance=..5,tag=!ItemLoot320] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-108,y=104,z=-1927,distance=..5,tag=!ItemLoot320] run tag @s add ItemLoot320

execute as @s[x=-87,y=89,z=-1969,distance=..5,tag=ItemLoot321] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-87,y=89,z=-1969,distance=..5,tag=!ItemLoot321] run give @s cobblemon:timer_ball
execute as @s[x=-87,y=89,z=-1969,distance=..5,tag=!ItemLoot321] run tellraw @s {"text":"You found a Timer Ball!","italic":true,"color":"gray"}
execute as @s[x=-87,y=89,z=-1969,distance=..5,tag=!ItemLoot321] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-87,y=89,z=-1969,distance=..5,tag=!ItemLoot321] run tag @s add ItemLoot321

execute as @s[x=-77,y=105,z=-2014,distance=..5,tag=ItemLoot322] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=-77,y=105,z=-2014,distance=..5,tag=!ItemLoot322] run give @s cobblemon:master_ball
execute as @s[x=-77,y=105,z=-2014,distance=..5,tag=!ItemLoot322] run tellraw @s {"text":"You found a Master Ball!","italic":true,"color":"gray"}
execute as @s[x=-77,y=105,z=-2014,distance=..5,tag=!ItemLoot322] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-77,y=105,z=-2014,distance=..5,tag=!ItemLoot322] run tag @s add ItemLoot322

execute as @s[x=290,y=108,z=-518,distance=..5,tag=ItemLoot324] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=290,y=108,z=-518,distance=..5,tag=!ItemLoot324] run give @s cobblemon:revive
execute as @s[x=290,y=108,z=-518,distance=..5,tag=!ItemLoot324] run tellraw @s {"text":"You found a Revive!","italic":true,"color":"gray"}
execute as @s[x=290,y=108,z=-518,distance=..5,tag=!ItemLoot324] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=290,y=108,z=-518,distance=..5,tag=!ItemLoot324] run tag @s add ItemLoot324

execute as @s[x=362,y=108,z=-573,distance=..5,tag=ItemLoot325] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=362,y=108,z=-573,distance=..5,tag=!ItemLoot325] run give @s cobblemon:net_ball
execute as @s[x=362,y=108,z=-573,distance=..5,tag=!ItemLoot325] run tellraw @s {"text":"You found a Net Ball!","italic":true,"color":"gray"}
execute as @s[x=362,y=108,z=-573,distance=..5,tag=!ItemLoot325] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=362,y=108,z=-573,distance=..5,tag=!ItemLoot325] run tag @s add ItemLoot325

execute as @s[x=389,y=108,z=-581,distance=..5,tag=ItemLoot326] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=389,y=108,z=-581,distance=..5,tag=!ItemLoot326] run give @s cobblemon:leppa_berry
execute as @s[x=389,y=108,z=-581,distance=..5,tag=!ItemLoot326] run tellraw @s {"text":"You found a Leppa Berry!","italic":true,"color":"gray"}
execute as @s[x=389,y=108,z=-581,distance=..5,tag=!ItemLoot326] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=389,y=108,z=-581,distance=..5,tag=!ItemLoot326] run tag @s add ItemLoot326

execute as @s[x=392,y=108,z=-591,distance=..5,tag=ItemLoot327] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=392,y=108,z=-591,distance=..5,tag=!ItemLoot327] run give @s cobblemon:antidote
execute as @s[x=392,y=108,z=-591,distance=..5,tag=!ItemLoot327] run tellraw @s {"text":"You found an Antidote!","italic":true,"color":"gray"}
execute as @s[x=392,y=108,z=-591,distance=..5,tag=!ItemLoot327] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=392,y=108,z=-591,distance=..5,tag=!ItemLoot327] run tag @s add ItemLoot327

execute as @s[x=473,y=108,z=-566,distance=..5,tag=ItemLoot328] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=473,y=108,z=-566,distance=..5,tag=!ItemLoot328] run give @s cobblemon:pp_up
execute as @s[x=473,y=108,z=-566,distance=..5,tag=!ItemLoot328] run tellraw @s {"text":"You found a PP Up!","italic":true,"color":"gray"}
execute as @s[x=473,y=108,z=-566,distance=..5,tag=!ItemLoot328] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=473,y=108,z=-566,distance=..5,tag=!ItemLoot328] run tag @s add ItemLoot328

execute as @s[x=419,y=108,z=-559,distance=..5,tag=ItemLoot329] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=419,y=108,z=-559,distance=..5,tag=!ItemLoot329] run scoreboard players add @s Money 250
execute as @s[x=419,y=108,z=-559,distance=..5,tag=!ItemLoot329] run tellraw @s {"text":"You recieved $250!","italic":true,"color":"gray"}
execute as @s[x=419,y=108,z=-559,distance=..5,tag=!ItemLoot329] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=419,y=108,z=-559,distance=..5,tag=!ItemLoot329] run tag @s add ItemLoot329

execute as @s[x=382,y=108,z=-507,distance=..5,tag=ItemLoot330] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=382,y=108,z=-507,distance=..5,tag=!ItemLoot330] run give @s cobblemon:dire_hit
execute as @s[x=382,y=108,z=-507,distance=..5,tag=!ItemLoot330] run tellraw @s {"text":"You found a Dire Hit!","italic":true,"color":"gray"}
execute as @s[x=382,y=108,z=-507,distance=..5,tag=!ItemLoot330] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=382,y=108,z=-507,distance=..5,tag=!ItemLoot330] run tag @s add ItemLoot330

execute as @s[x=343,y=108,z=-465,distance=..5,tag=ItemLoot331] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=343,y=108,z=-465,distance=..5,tag=!ItemLoot331] run give @s cobblemon:full_heal
execute as @s[x=343,y=108,z=-465,distance=..5,tag=!ItemLoot331] run tellraw @s {"text":"You found a Full Heal!","italic":true,"color":"gray"}
execute as @s[x=343,y=108,z=-465,distance=..5,tag=!ItemLoot331] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=343,y=108,z=-465,distance=..5,tag=!ItemLoot331] run tag @s add ItemLoot331

execute as @s[x=470,y=108,z=-520,distance=..5,tag=ItemLoot332] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=470,y=108,z=-520,distance=..5,tag=!ItemLoot332] run give @s cobblemon:protein
execute as @s[x=470,y=108,z=-520,distance=..5,tag=!ItemLoot332] run tellraw @s {"text":"You found a Protein!","italic":true,"color":"gray"}
execute as @s[x=470,y=108,z=-520,distance=..5,tag=!ItemLoot332] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=470,y=108,z=-520,distance=..5,tag=!ItemLoot332] run tag @s add ItemLoot332

execute as @s[x=484,y=112,z=-522,distance=..5,tag=ItemLoot333] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=484,y=112,z=-522,distance=..5,tag=!ItemLoot333] run give @s cobblemon:hp_up
execute as @s[x=484,y=112,z=-522,distance=..5,tag=!ItemLoot333] run tellraw @s {"text":"You found an HP Up!","italic":true,"color":"gray"}
execute as @s[x=484,y=112,z=-522,distance=..5,tag=!ItemLoot333] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=484,y=112,z=-522,distance=..5,tag=!ItemLoot333] run tag @s add ItemLoot333

execute as @s[x=526,y=112,z=-552,distance=..5,tag=ItemLoot334] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=526,y=112,z=-552,distance=..5,tag=!ItemLoot334] run give @s mega_showdown:stoneplate
execute as @s[x=526,y=112,z=-552,distance=..5,tag=!ItemLoot334] run tellraw @s {"text":"You found a Stone Plate!","italic":true,"color":"gray"}
execute as @s[x=526,y=112,z=-552,distance=..5,tag=!ItemLoot334] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=526,y=112,z=-552,distance=..5,tag=!ItemLoot334] run tag @s add ItemLoot334

execute as @s[x=491,y=108,z=-415,distance=..5,tag=ItemLoot336] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=491,y=108,z=-415,distance=..5,tag=!ItemLoot336] run scoreboard players add @s Money 500
execute as @s[x=491,y=108,z=-415,distance=..5,tag=!ItemLoot336] run tellraw @s {"text":"You recieved $500!","italic":true,"color":"gray"}
execute as @s[x=491,y=108,z=-415,distance=..5,tag=!ItemLoot336] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=491,y=108,z=-415,distance=..5,tag=!ItemLoot336] run tag @s add ItemLoot336

execute as @s[x=561,y=113,z=-493,distance=..5,tag=ItemLoot337] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=561,y=113,z=-493,distance=..5,tag=!ItemLoot337] run give @s cobblemon:x_defence
execute as @s[x=561,y=113,z=-493,distance=..5,tag=!ItemLoot337] run tellraw @s {"text":"You found an X Defence!","italic":true,"color":"gray"}
execute as @s[x=561,y=113,z=-493,distance=..5,tag=!ItemLoot337] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=561,y=113,z=-493,distance=..5,tag=!ItemLoot337] run tag @s add ItemLoot337

execute as @s[x=518,y=92,z=-421,distance=..5,tag=ItemLoot339] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=518,y=92,z=-421,distance=..5,tag=!ItemLoot339] run give @s cobblemon:smoke_ball
execute as @s[x=518,y=92,z=-421,distance=..5,tag=!ItemLoot339] run tellraw @s {"text":"You found a Smoke Ball!","italic":true,"color":"gray"}
execute as @s[x=518,y=92,z=-421,distance=..5,tag=!ItemLoot339] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=518,y=92,z=-421,distance=..5,tag=!ItemLoot339] run tag @s add ItemLoot339

execute as @s[x=494,y=92,z=-475,distance=..5,tag=ItemLoot340] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=494,y=92,z=-475,distance=..5,tag=!ItemLoot340] run give @s cobblemon:twisted_spoon
execute as @s[x=494,y=92,z=-475,distance=..5,tag=!ItemLoot340] run tellraw @s {"text":"You found a Twisted Spoon!","italic":true,"color":"gray"}
execute as @s[x=494,y=92,z=-475,distance=..5,tag=!ItemLoot340] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=494,y=92,z=-475,distance=..5,tag=!ItemLoot340] run tag @s add ItemLoot340

execute as @s[x=484,y=92,z=-393,distance=..5,tag=ItemLoot342] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=484,y=92,z=-393,distance=..5,tag=!ItemLoot342] run give @s mega_showdown:dreadplate
execute as @s[x=484,y=92,z=-393,distance=..5,tag=!ItemLoot342] run tellraw @s {"text":"You found a Dread Plate!","italic":true,"color":"gray"}
execute as @s[x=484,y=92,z=-393,distance=..5,tag=!ItemLoot342] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=484,y=92,z=-393,distance=..5,tag=!ItemLoot342] run tag @s add ItemLoot342

execute as @s[x=432,y=92,z=-414,distance=..5,tag=ItemLoot344] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=432,y=92,z=-414,distance=..5,tag=!ItemLoot344] run give @s cobblemon:protector
execute as @s[x=432,y=92,z=-414,distance=..5,tag=!ItemLoot344] run tellraw @s {"text":"You found a Protector!","italic":true,"color":"gray"}
execute as @s[x=432,y=92,z=-414,distance=..5,tag=!ItemLoot344] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=432,y=92,z=-414,distance=..5,tag=!ItemLoot344] run tag @s add ItemLoot344

execute as @s[x=514,y=108,z=-389,distance=..5,tag=ItemLoot346] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=514,y=108,z=-389,distance=..5,tag=!ItemLoot346] run give @s cobblemon:rare_candy
execute as @s[x=514,y=108,z=-389,distance=..5,tag=!ItemLoot346] run tellraw @s {"text":"You found a Rare Candy!","italic":true,"color":"gray"}
execute as @s[x=514,y=108,z=-389,distance=..5,tag=!ItemLoot346] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=514,y=108,z=-389,distance=..5,tag=!ItemLoot346] run tag @s add ItemLoot346

execute as @s[x=357,y=100,z=-195,distance=..5,tag=ItemLoot347] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=357,y=100,z=-195,distance=..5,tag=!ItemLoot347] run give @s cobblemon:rare_candy
execute as @s[x=357,y=100,z=-195,distance=..5,tag=!ItemLoot347] run tellraw @s {"text":"You found a Rare Candy!","italic":true,"color":"gray"}
execute as @s[x=357,y=100,z=-195,distance=..5,tag=!ItemLoot347] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=357,y=100,z=-195,distance=..5,tag=!ItemLoot347] run tag @s add ItemLoot347

execute as @s[x=471,y=108,z=-210,distance=..5,tag=ItemLoot348] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=471,y=108,z=-210,distance=..5,tag=!ItemLoot348] run give @s cobblemon:lum_berry
execute as @s[x=471,y=108,z=-210,distance=..5,tag=!ItemLoot348] run tellraw @s {"text":"You found a Lum Berry!","italic":true,"color":"gray"}
execute as @s[x=471,y=108,z=-210,distance=..5,tag=!ItemLoot348] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=471,y=108,z=-210,distance=..5,tag=!ItemLoot348] run tag @s add ItemLoot348

execute as @s[x=461,y=108,z=-186,distance=..5,tag=ItemLoot349] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=461,y=108,z=-186,distance=..5,tag=!ItemLoot349] run scoreboard players add @s Money 2500
execute as @s[x=461,y=108,z=-186,distance=..5,tag=!ItemLoot349] run tellraw @s {"text":"You recieved $2,500!","italic":true,"color":"gray"}
execute as @s[x=461,y=108,z=-186,distance=..5,tag=!ItemLoot349] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=461,y=108,z=-186,distance=..5,tag=!ItemLoot349] run tag @s add ItemLoot349

execute as @s[x=501,y=108,z=-190,distance=..5,tag=ItemLoot350] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=501,y=108,z=-190,distance=..5,tag=!ItemLoot350] run give @s cobblemon:max_potion
execute as @s[x=501,y=108,z=-190,distance=..5,tag=!ItemLoot350] run tellraw @s {"text":"You found a Max Potion!","italic":true,"color":"gray"}
execute as @s[x=501,y=108,z=-190,distance=..5,tag=!ItemLoot350] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=501,y=108,z=-190,distance=..5,tag=!ItemLoot350] run tag @s add ItemLoot350

execute as @s[x=337,y=81,z=-262,distance=..5,tag=ItemLoot351] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=337,y=81,z=-262,distance=..5,tag=!ItemLoot351] run give @s cobblemon:ultra_rod[custom_name='["",{"text":"Super Rod","italic":false}]',lore=['["",{"text":"An awesome, high-tech fishing rod.","italic":false}]','["",{"text":"Use it by any body of water to","italic":false}]','["",{"text":"fish for wild aquatic Pokémon.","italic":false}]'],enchantment_glint_override=false,enchantments={levels:{lure:3},show_in_tooltip:false},unbreakable={}]
execute as @s[x=337,y=81,z=-262,distance=..5,tag=!ItemLoot351] run tellraw @s {"text":"You recieved a Super Rod!","italic":true,"color":"gray"}
execute as @s[x=337,y=81,z=-262,distance=..5,tag=!ItemLoot351] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=337,y=81,z=-262,distance=..5,tag=!ItemLoot351] run tag @s add ItemLoot351

execute as @s[x=289,y=100,z=-356,distance=..5,tag=ItemLoot353] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=289,y=100,z=-356,distance=..5,tag=!ItemLoot353] run give @s cobblemon:dive_ball
execute as @s[x=289,y=100,z=-356,distance=..5,tag=!ItemLoot353] run tellraw @s {"text":"You found a Dive Ball!","italic":true,"color":"gray"}
execute as @s[x=289,y=100,z=-356,distance=..5,tag=!ItemLoot353] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=289,y=100,z=-356,distance=..5,tag=!ItemLoot353] run tag @s add ItemLoot353

execute as @s[x=377,y=104,z=-200,distance=..5,tag=ItemLoot354] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=377,y=104,z=-200,distance=..5,tag=!ItemLoot354] run give @s mega_showdown:fistplate
execute as @s[x=377,y=104,z=-200,distance=..5,tag=!ItemLoot354] run tellraw @s {"text":"You found a Fist Plate!","italic":true,"color":"gray"}
execute as @s[x=377,y=104,z=-200,distance=..5,tag=!ItemLoot354] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=377,y=104,z=-200,distance=..5,tag=!ItemLoot354] run tag @s add ItemLoot354

execute as @s[x=632,y=87,z=-386,distance=..5,tag=ItemLoot356] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=632,y=87,z=-386,distance=..5,tag=!ItemLoot356] run give @s cobblemon:sitrus_berry
execute as @s[x=632,y=87,z=-386,distance=..5,tag=!ItemLoot356] run tellraw @s {"text":"You found a Sitrus Berry!","italic":true,"color":"gray"}
execute as @s[x=632,y=87,z=-386,distance=..5,tag=!ItemLoot356] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=632,y=87,z=-386,distance=..5,tag=!ItemLoot356] run tag @s add ItemLoot356

execute as @s[x=604,y=108,z=-358,distance=..5,tag=ItemLoot357] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=604,y=108,z=-358,distance=..5,tag=!ItemLoot357] run give @s cobblemon:heal_ball
execute as @s[x=604,y=108,z=-358,distance=..5,tag=!ItemLoot357] run tellraw @s {"text":"You found a Heal Ball!","italic":true,"color":"gray"}
execute as @s[x=604,y=108,z=-358,distance=..5,tag=!ItemLoot357] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=604,y=108,z=-358,distance=..5,tag=!ItemLoot357] run tag @s add ItemLoot357

execute as @s[x=701,y=108,z=-332,distance=..5,tag=ItemLoot358] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=701,y=108,z=-332,distance=..5,tag=!ItemLoot358] run give @s cobblemon:big_root
execute as @s[x=701,y=108,z=-332,distance=..5,tag=!ItemLoot358] run tellraw @s {"text":"You found a Big Root!","italic":true,"color":"gray"}
execute as @s[x=701,y=108,z=-332,distance=..5,tag=!ItemLoot358] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=701,y=108,z=-332,distance=..5,tag=!ItemLoot358] run tag @s add ItemLoot358

execute as @s[x=691,y=108,z=-338,distance=..5,tag=ItemLoot359] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=691,y=108,z=-338,distance=..5,tag=!ItemLoot359] run scoreboard players add @s Money 5000
execute as @s[x=691,y=108,z=-338,distance=..5,tag=!ItemLoot359] run tellraw @s {"text":"You recieved $5,000!","italic":true,"color":"gray"}
execute as @s[x=691,y=108,z=-338,distance=..5,tag=!ItemLoot359] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=691,y=108,z=-338,distance=..5,tag=!ItemLoot359] run tag @s add ItemLoot359

execute as @s[x=694,y=89,z=-548,distance=..5,tag=ItemLoot360] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=694,y=89,z=-548,distance=..5,tag=!ItemLoot360] run give @s cobblemon:shell_bell
execute as @s[x=694,y=89,z=-548,distance=..5,tag=!ItemLoot360] run tellraw @s {"text":"You found a Shell Bell!","italic":true,"color":"gray"}
execute as @s[x=694,y=89,z=-548,distance=..5,tag=!ItemLoot360] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=694,y=89,z=-548,distance=..5,tag=!ItemLoot360] run tag @s add ItemLoot360

execute as @s[x=606,y=87,z=-550,distance=..5,tag=ItemLoot361] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=606,y=87,z=-550,distance=..5,tag=!ItemLoot361] run scoreboard players add @s Money 20000
execute as @s[x=606,y=87,z=-550,distance=..5,tag=!ItemLoot361] run tellraw @s {"text":"You recieved $20,000!","italic":true,"color":"gray"}
execute as @s[x=606,y=87,z=-550,distance=..5,tag=!ItemLoot361] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=606,y=87,z=-550,distance=..5,tag=!ItemLoot361] run tag @s add ItemLoot361

execute as @s[x=639,y=116,z=-556,distance=..5,tag=ItemLoot362] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=639,y=116,z=-556,distance=..5,tag=!ItemLoot362] run give @s cobblemon:x_speed
execute as @s[x=639,y=116,z=-556,distance=..5,tag=!ItemLoot362] run tellraw @s {"text":"You found an X Speed!","italic":true,"color":"gray"}
execute as @s[x=639,y=116,z=-556,distance=..5,tag=!ItemLoot362] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=639,y=116,z=-556,distance=..5,tag=!ItemLoot362] run tag @s add ItemLoot362

execute as @s[x=650,y=118,z=-720,distance=..5,tag=ItemLoot365] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=650,y=118,z=-720,distance=..5,tag=!ItemLoot365] run give @s cobblemon:x_special_defence
execute as @s[x=650,y=118,z=-720,distance=..5,tag=!ItemLoot365] run tellraw @s {"text":"You found an X Special Defence!","italic":true,"color":"gray"}
execute as @s[x=650,y=118,z=-720,distance=..5,tag=!ItemLoot365] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=650,y=118,z=-720,distance=..5,tag=!ItemLoot365] run tag @s add ItemLoot365

execute as @s[x=659,y=120,z=-890,distance=..5,tag=ItemLoot366] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=659,y=120,z=-890,distance=..5,tag=!ItemLoot366] run function kalos:spawn/escaperope
execute as @s[x=659,y=120,z=-890,distance=..5,tag=!ItemLoot366] run tellraw @s {"text":"You found an Escape Rope!","italic":true,"color":"gray"}
execute as @s[x=659,y=120,z=-890,distance=..5,tag=!ItemLoot366] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=659,y=120,z=-890,distance=..5,tag=!ItemLoot366] run tag @s add ItemLoot366

execute as @s[x=659,y=33,z=-924,distance=..5,tag=ItemLoot369] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=659,y=33,z=-924,distance=..5,tag=!ItemLoot369] run give @s cobblemon:ice_heal
execute as @s[x=659,y=33,z=-924,distance=..5,tag=!ItemLoot369] run tellraw @s {"text":"You found an Ice Heal!","italic":true,"color":"gray"}
execute as @s[x=659,y=33,z=-924,distance=..5,tag=!ItemLoot369] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=659,y=33,z=-924,distance=..5,tag=!ItemLoot369] run tag @s add ItemLoot369

execute as @s[x=805,y=38,z=-1036,distance=..5,tag=ItemLoot370] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=805,y=38,z=-1036,distance=..5,tag=!ItemLoot370] run give @s cobblemon:dusk_ball
execute as @s[x=805,y=38,z=-1036,distance=..5,tag=!ItemLoot370] run tellraw @s {"text":"You found a Dusk Ball!","italic":true,"color":"gray"}
execute as @s[x=805,y=38,z=-1036,distance=..5,tag=!ItemLoot370] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=805,y=38,z=-1036,distance=..5,tag=!ItemLoot370] run tag @s add ItemLoot370

execute as @s[x=637,y=42,z=-1220,distance=..5,tag=ItemLoot371] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=637,y=42,z=-1220,distance=..5,tag=!ItemLoot371] run give @s cobblemon:icy_rock
execute as @s[x=637,y=42,z=-1220,distance=..5,tag=!ItemLoot371] run tellraw @s {"text":"You found an Icy Rock!","italic":true,"color":"gray"}
execute as @s[x=637,y=42,z=-1220,distance=..5,tag=!ItemLoot371] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=637,y=42,z=-1220,distance=..5,tag=!ItemLoot371] run tag @s add ItemLoot371

execute as @s[x=666,y=43,z=-943,distance=..5,tag=ItemLoot372] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=666,y=43,z=-943,distance=..5,tag=!ItemLoot372] run give @s cobblemon:hyper_potion
execute as @s[x=666,y=43,z=-943,distance=..5,tag=!ItemLoot372] run tellraw @s {"text":"You found a Hyper Potion!","italic":true,"color":"gray"}
execute as @s[x=666,y=43,z=-943,distance=..5,tag=!ItemLoot372] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=666,y=43,z=-943,distance=..5,tag=!ItemLoot372] run tag @s add ItemLoot372

execute as @s[x=840,y=65,z=-1225,distance=..5,tag=ItemLoot373] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=840,y=65,z=-1225,distance=..5,tag=!ItemLoot373] run give @s cobblemon:ice_heal
execute as @s[x=840,y=65,z=-1225,distance=..5,tag=!ItemLoot373] run tellraw @s {"text":"You found an Ice Heal!","italic":true,"color":"gray"}
execute as @s[x=840,y=65,z=-1225,distance=..5,tag=!ItemLoot373] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=840,y=65,z=-1225,distance=..5,tag=!ItemLoot373] run tag @s add ItemLoot373

execute as @s[x=803,y=65,z=-1260,distance=..5,tag=ItemLoot374] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=803,y=65,z=-1260,distance=..5,tag=!ItemLoot374] run give @s cobblemon:ice_heal
execute as @s[x=803,y=65,z=-1260,distance=..5,tag=!ItemLoot374] run tellraw @s {"text":"You found an Ice Heal!","italic":true,"color":"gray"}
execute as @s[x=803,y=65,z=-1260,distance=..5,tag=!ItemLoot374] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=803,y=65,z=-1260,distance=..5,tag=!ItemLoot374] run tag @s add ItemLoot374

execute as @s[x=776,y=66,z=-1110,distance=..5,tag=ItemLoot375] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=776,y=66,z=-1110,distance=..5,tag=!ItemLoot375] run give @s cobblemon:dire_hit
execute as @s[x=776,y=66,z=-1110,distance=..5,tag=!ItemLoot375] run tellraw @s {"text":"You found a Dire Hit!","italic":true,"color":"gray"}
execute as @s[x=776,y=66,z=-1110,distance=..5,tag=!ItemLoot375] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=776,y=66,z=-1110,distance=..5,tag=!ItemLoot375] run tag @s add ItemLoot375

execute as @s[x=608,y=65,z=-1087,distance=..5,tag=ItemLoot376] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=608,y=65,z=-1087,distance=..5,tag=!ItemLoot376] run scoreboard players add @s Money 1000
execute as @s[x=608,y=65,z=-1087,distance=..5,tag=!ItemLoot376] run tellraw @s {"text":"You recieved $1,000!","italic":true,"color":"gray"}
execute as @s[x=608,y=65,z=-1087,distance=..5,tag=!ItemLoot376] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=608,y=65,z=-1087,distance=..5,tag=!ItemLoot376] run tag @s add ItemLoot376

execute as @s[x=568,y=65,z=-960,distance=..5,tag=ItemLoot378] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=568,y=65,z=-960,distance=..5,tag=!ItemLoot378] run give @s cobblemon:never_melt_ice
execute as @s[x=568,y=65,z=-960,distance=..5,tag=!ItemLoot378] run tellraw @s {"text":"You found a Never-Melt Ice!","italic":true,"color":"gray"}
execute as @s[x=568,y=65,z=-960,distance=..5,tag=!ItemLoot378] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=568,y=65,z=-960,distance=..5,tag=!ItemLoot378] run tag @s add ItemLoot378

execute as @s[x=691,y=65,z=-1070,distance=..5,tag=ItemLoot379] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=691,y=65,z=-1070,distance=..5,tag=!ItemLoot379] run give @s cobblemon:super_potion
execute as @s[x=691,y=65,z=-1070,distance=..5,tag=!ItemLoot379] run tellraw @s {"text":"You found a Super Potion!","italic":true,"color":"gray"}
execute as @s[x=691,y=65,z=-1070,distance=..5,tag=!ItemLoot379] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=691,y=65,z=-1070,distance=..5,tag=!ItemLoot379] run tag @s add ItemLoot379

execute as @s[x=624,y=85,z=-1198,distance=..5,tag=ItemLoot381] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=624,y=85,z=-1198,distance=..5,tag=!ItemLoot381] run give @s cobblemon:ether
execute as @s[x=624,y=85,z=-1198,distance=..5,tag=!ItemLoot381] run tellraw @s {"text":"You found an Ether!","italic":true,"color":"gray"}
execute as @s[x=624,y=85,z=-1198,distance=..5,tag=!ItemLoot381] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=624,y=85,z=-1198,distance=..5,tag=!ItemLoot381] run tag @s add ItemLoot381

execute as @s[x=757,y=85,z=-1227,distance=..5,tag=ItemLoot382] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=757,y=85,z=-1227,distance=..5,tag=!ItemLoot382] run give @s cobblemon:elixir
execute as @s[x=757,y=85,z=-1227,distance=..5,tag=!ItemLoot382] run tellraw @s {"text":"You found an Elixir!","italic":true,"color":"gray"}
execute as @s[x=757,y=85,z=-1227,distance=..5,tag=!ItemLoot382] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=757,y=85,z=-1227,distance=..5,tag=!ItemLoot382] run tag @s add ItemLoot382

execute as @s[x=862,y=85,z=-1077,distance=..5,tag=ItemLoot383] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=862,y=85,z=-1077,distance=..5,tag=!ItemLoot383] run give @s cobblemon:zinc
execute as @s[x=862,y=85,z=-1077,distance=..5,tag=!ItemLoot383] run tellraw @s {"text":"You found a Zinc!","italic":true,"color":"gray"}
execute as @s[x=862,y=85,z=-1077,distance=..5,tag=!ItemLoot383] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=862,y=85,z=-1077,distance=..5,tag=!ItemLoot383] run tag @s add ItemLoot383

execute as @s[x=716,y=82,z=-1332,distance=..5,tag=ItemLoot384] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=716,y=82,z=-1332,distance=..5,tag=!ItemLoot384] run give @s cobblemon:pp_up
execute as @s[x=716,y=82,z=-1332,distance=..5,tag=!ItemLoot384] run tellraw @s {"text":"You found a PP Up!","italic":true,"color":"gray"}
execute as @s[x=716,y=82,z=-1332,distance=..5,tag=!ItemLoot384] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=716,y=82,z=-1332,distance=..5,tag=!ItemLoot384] run tag @s add ItemLoot384

execute as @s[x=935,y=108,z=-354,distance=..5,tag=ItemLoot385] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=935,y=108,z=-354,distance=..5,tag=!ItemLoot385] run give @s cobblemon:timer_ball
execute as @s[x=935,y=108,z=-354,distance=..5,tag=!ItemLoot385] run tellraw @s {"text":"You found a Timer Ball!","italic":true,"color":"gray"}
execute as @s[x=935,y=108,z=-354,distance=..5,tag=!ItemLoot385] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=935,y=108,z=-354,distance=..5,tag=!ItemLoot385] run tag @s add ItemLoot385

execute as @s[x=921,y=108,z=-399,distance=..5,tag=ItemLoot386] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=921,y=108,z=-399,distance=..5,tag=!ItemLoot386] run give @s mega_showdown:icicleplate
execute as @s[x=921,y=108,z=-399,distance=..5,tag=!ItemLoot386] run tellraw @s {"text":"You found an Icicle Plate!","italic":true,"color":"gray"}
execute as @s[x=921,y=108,z=-399,distance=..5,tag=!ItemLoot386] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=921,y=108,z=-399,distance=..5,tag=!ItemLoot386] run tag @s add ItemLoot386

execute as @s[x=839,y=108,z=-152,distance=..5,tag=ItemLoot387] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=839,y=108,z=-152,distance=..5,tag=!ItemLoot387] run give @s cobblemon:calcium
execute as @s[x=839,y=108,z=-152,distance=..5,tag=!ItemLoot387] run tellraw @s {"text":"You found a Calcium!","italic":true,"color":"gray"}
execute as @s[x=839,y=108,z=-152,distance=..5,tag=!ItemLoot387] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=839,y=108,z=-152,distance=..5,tag=!ItemLoot387] run tag @s add ItemLoot387

execute as @s[x=1111,y=108,z=-207,distance=..5,tag=ItemLoot388] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1111,y=108,z=-207,distance=..5,tag=!ItemLoot388] run give @s cobblemon:paralyze_heal
execute as @s[x=1111,y=108,z=-207,distance=..5,tag=!ItemLoot388] run tellraw @s {"text":"You found a Paralyze Heal!","italic":true,"color":"gray"}
execute as @s[x=1111,y=108,z=-207,distance=..5,tag=!ItemLoot388] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1111,y=108,z=-207,distance=..5,tag=!ItemLoot388] run tag @s add ItemLoot388

execute as @s[x=1102,y=108,z=-239,distance=..5,tag=ItemLoot389] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1102,y=108,z=-239,distance=..5,tag=!ItemLoot389] run give @s cobblemon:rare_candy
execute as @s[x=1102,y=108,z=-239,distance=..5,tag=!ItemLoot389] run tellraw @s {"text":"You found a Rare Candy!","italic":true,"color":"gray"}
execute as @s[x=1102,y=108,z=-239,distance=..5,tag=!ItemLoot389] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1102,y=108,z=-239,distance=..5,tag=!ItemLoot389] run tag @s add ItemLoot389

execute as @s[x=1381,y=106,z=-277,distance=..5,tag=ItemLoot397] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1381,y=106,z=-277,distance=..5,tag=!ItemLoot397] run function kalos:spawn/escaperope
execute as @s[x=1381,y=106,z=-277,distance=..5,tag=!ItemLoot397] run tellraw @s {"text":"You found an Escape Rope!","italic":true,"color":"gray"}
execute as @s[x=1381,y=106,z=-277,distance=..5,tag=!ItemLoot397] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1381,y=106,z=-277,distance=..5,tag=!ItemLoot397] run tag @s add ItemLoot397

execute as @s[x=1205,y=108,z=-291,distance=..5,tag=ItemLoot398] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1205,y=108,z=-291,distance=..5,tag=!ItemLoot398] run give @s cobblemon:sun_stone
execute as @s[x=1205,y=108,z=-291,distance=..5,tag=!ItemLoot398] run tellraw @s {"text":"You found a Sun Stone!","italic":true,"color":"gray"}
execute as @s[x=1205,y=108,z=-291,distance=..5,tag=!ItemLoot398] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1205,y=108,z=-291,distance=..5,tag=!ItemLoot398] run tag @s add ItemLoot398

execute as @s[x=1230,y=108,z=-300,distance=..5,tag=ItemLoot399] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1230,y=108,z=-300,distance=..5,tag=!ItemLoot399] run scoreboard players add @s Money 500
execute as @s[x=1230,y=108,z=-300,distance=..5,tag=!ItemLoot399] run tellraw @s {"text":"You recieved $500!","italic":true,"color":"gray"}
execute as @s[x=1230,y=108,z=-300,distance=..5,tag=!ItemLoot399] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1230,y=108,z=-300,distance=..5,tag=!ItemLoot399] run tag @s add ItemLoot399

execute as @s[x=1360,y=108,z=-50,distance=..5,tag=ItemLoot402] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1360,y=108,z=-50,distance=..5,tag=!ItemLoot402] run give @s cobblemon:poke_ball
execute as @s[x=1360,y=108,z=-50,distance=..5,tag=!ItemLoot402] run tellraw @s {"text":"You found a Poké Ball!","italic":true,"color":"gray"}
execute as @s[x=1360,y=108,z=-50,distance=..5,tag=!ItemLoot402] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1360,y=108,z=-50,distance=..5,tag=!ItemLoot402] run tag @s add ItemLoot402

execute as @s[x=1356,y=108,z=7,distance=..5,tag=ItemLoot403] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1356,y=108,z=7,distance=..5,tag=!ItemLoot403] run give @s cobblemon:hyper_potion
execute as @s[x=1356,y=108,z=7,distance=..5,tag=!ItemLoot403] run tellraw @s {"text":"You found a Hyper Potion!","italic":true,"color":"gray"}
execute as @s[x=1356,y=108,z=7,distance=..5,tag=!ItemLoot403] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1356,y=108,z=7,distance=..5,tag=!ItemLoot403] run tag @s add ItemLoot403

execute as @s[x=1409,y=108,z=-100,distance=..5,tag=ItemLoot404] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1409,y=108,z=-100,distance=..5,tag=!ItemLoot404] run give @s cobblemon:wacan_berry
execute as @s[x=1409,y=108,z=-100,distance=..5,tag=!ItemLoot404] run tellraw @s {"text":"You found a Wacan Berry!","italic":true,"color":"gray"}
execute as @s[x=1409,y=108,z=-100,distance=..5,tag=!ItemLoot404] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1409,y=108,z=-100,distance=..5,tag=!ItemLoot404] run tag @s add ItemLoot404

execute as @s[x=1456,y=105,z=-92,distance=..5,tag=ItemLoot405] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1456,y=105,z=-92,distance=..5,tag=!ItemLoot405] run give @s cobblemon:pp_up
execute as @s[x=1456,y=105,z=-92,distance=..5,tag=!ItemLoot405] run tellraw @s {"text":"You found a PP Up!","italic":true,"color":"gray"}
execute as @s[x=1456,y=105,z=-92,distance=..5,tag=!ItemLoot405] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1456,y=105,z=-92,distance=..5,tag=!ItemLoot405] run tag @s add ItemLoot405

execute as @s[x=1464,y=105,z=-23,distance=..5,tag=ItemLoot406] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1464,y=105,z=-23,distance=..5,tag=!ItemLoot406] run give @s cobblemon:ether
execute as @s[x=1464,y=105,z=-23,distance=..5,tag=!ItemLoot406] run tellraw @s {"text":"You found an Ether!","italic":true,"color":"gray"}
execute as @s[x=1464,y=105,z=-23,distance=..5,tag=!ItemLoot406] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1464,y=105,z=-23,distance=..5,tag=!ItemLoot406] run tag @s add ItemLoot406

execute as @s[x=1530,y=110,z=46,distance=..5,tag=ItemLoot407] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1530,y=110,z=46,distance=..5,tag=!ItemLoot407] run give @s cobblemon:max_ether
execute as @s[x=1530,y=110,z=46,distance=..5,tag=!ItemLoot407] run tellraw @s {"text":"You found a Max Ether!","italic":true,"color":"gray"}
execute as @s[x=1530,y=110,z=46,distance=..5,tag=!ItemLoot407] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1530,y=110,z=46,distance=..5,tag=!ItemLoot407] run tag @s add ItemLoot407

execute as @s[x=1518,y=105,z=-5,distance=..5,tag=ItemLoot408] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1518,y=105,z=-5,distance=..5,tag=!ItemLoot408] run give @s cobblemon:x_defence
execute as @s[x=1518,y=105,z=-5,distance=..5,tag=!ItemLoot408] run tellraw @s {"text":"You found an X Defence!","italic":true,"color":"gray"}
execute as @s[x=1518,y=105,z=-5,distance=..5,tag=!ItemLoot408] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1518,y=105,z=-5,distance=..5,tag=!ItemLoot408] run tag @s add ItemLoot408

execute as @s[x=1501,y=110,z=40,distance=..5,tag=ItemLoot409] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1501,y=110,z=40,distance=..5,tag=!ItemLoot409] run give @s cobblemon:super_potion
execute as @s[x=1501,y=110,z=40,distance=..5,tag=!ItemLoot409] run tellraw @s {"text":"You found a Super Potion!","italic":true,"color":"gray"}
execute as @s[x=1501,y=110,z=40,distance=..5,tag=!ItemLoot409] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1501,y=110,z=40,distance=..5,tag=!ItemLoot409] run tag @s add ItemLoot409

execute as @s[x=1456,y=105,z=36,distance=..5,tag=ItemLoot410] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1456,y=105,z=36,distance=..5,tag=!ItemLoot410] run function kalos:spawn/honey
execute as @s[x=1456,y=105,z=36,distance=..5,tag=!ItemLoot410] run tellraw @s {"text":"You found Honey!","italic":true,"color":"gray"}
execute as @s[x=1456,y=105,z=36,distance=..5,tag=!ItemLoot410] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1456,y=105,z=36,distance=..5,tag=!ItemLoot410] run tag @s add ItemLoot410

execute as @s[x=1557,y=70,z=57,distance=..5,tag=ItemLoot411] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1557,y=70,z=57,distance=..5,tag=!ItemLoot411] run give @s cobblemon:normal_gem
execute as @s[x=1557,y=70,z=57,distance=..5,tag=!ItemLoot411] run tellraw @s {"text":"You found a Normal Gem!","italic":true,"color":"gray"}
execute as @s[x=1557,y=70,z=57,distance=..5,tag=!ItemLoot411] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1557,y=70,z=57,distance=..5,tag=!ItemLoot411] run tag @s add ItemLoot411

execute as @s[x=1580,y=70,z=41,distance=..5,tag=ItemLoot412] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1580,y=70,z=41,distance=..5,tag=!ItemLoot412] run give @s cobblemon:dragon_scale
execute as @s[x=1580,y=70,z=41,distance=..5,tag=!ItemLoot412] run tellraw @s {"text":"You found a Dragon Scale!","italic":true,"color":"gray"}
execute as @s[x=1580,y=70,z=41,distance=..5,tag=!ItemLoot412] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1580,y=70,z=41,distance=..5,tag=!ItemLoot412] run tag @s add ItemLoot412

execute as @s[x=1933,y=53,z=-23,distance=..5,tag=ItemLoot414] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1933,y=53,z=-23,distance=..5,tag=!ItemLoot414] run scoreboard players add @s Money 6000
execute as @s[x=1933,y=53,z=-23,distance=..5,tag=!ItemLoot414] run tellraw @s {"text":"You recieved $6,000!","italic":true,"color":"gray"}
execute as @s[x=1933,y=53,z=-23,distance=..5,tag=!ItemLoot414] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1933,y=53,z=-23,distance=..5,tag=!ItemLoot414] run tag @s add ItemLoot414

execute as @s[x=1816,y=33,z=-42,distance=..5,tag=ItemLoot415] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1816,y=33,z=-42,distance=..5,tag=!ItemLoot415] run give @s cobblemon:dusk_ball
execute as @s[x=1816,y=33,z=-42,distance=..5,tag=!ItemLoot415] run tellraw @s {"text":"You found a Dusk Ball!","italic":true,"color":"gray"}
execute as @s[x=1816,y=33,z=-42,distance=..5,tag=!ItemLoot415] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1816,y=33,z=-42,distance=..5,tag=!ItemLoot415] run tag @s add ItemLoot415

execute as @s[x=1790,y=48,z=-34,distance=..5,tag=ItemLoot416] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1790,y=48,z=-34,distance=..5,tag=!ItemLoot416] run give @s cobblemon:hyper_potion
execute as @s[x=1790,y=48,z=-34,distance=..5,tag=!ItemLoot416] run tellraw @s {"text":"You found a Hyper Potion!","italic":true,"color":"gray"}
execute as @s[x=1790,y=48,z=-34,distance=..5,tag=!ItemLoot416] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1790,y=48,z=-34,distance=..5,tag=!ItemLoot416] run tag @s add ItemLoot416

execute as @s[x=1864,y=41,z=13,distance=..5,tag=ItemLoot417] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1864,y=41,z=13,distance=..5,tag=!ItemLoot417] run function kalos:spawn/escaperope
execute as @s[x=1864,y=41,z=13,distance=..5,tag=!ItemLoot417] run tellraw @s {"text":"You found an Escape Rope!","italic":true,"color":"gray"}
execute as @s[x=1864,y=41,z=13,distance=..5,tag=!ItemLoot417] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1864,y=41,z=13,distance=..5,tag=!ItemLoot417] run tag @s add ItemLoot417

execute as @s[x=1802,y=38,z=66,distance=..5,tag=ItemLoot418] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1802,y=38,z=66,distance=..5,tag=!ItemLoot418] run give @s cobblemon:heat_rock
execute as @s[x=1802,y=38,z=66,distance=..5,tag=!ItemLoot418] run tellraw @s {"text":"You found a Heat Rock!","italic":true,"color":"gray"}
execute as @s[x=1802,y=38,z=66,distance=..5,tag=!ItemLoot418] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1802,y=38,z=66,distance=..5,tag=!ItemLoot418] run tag @s add ItemLoot418

execute as @s[x=1889,y=38,z=-90,distance=..5,tag=ItemLoot419] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1889,y=38,z=-90,distance=..5,tag=!ItemLoot419] run give @s cobblemon:moon_stone
execute as @s[x=1889,y=38,z=-90,distance=..5,tag=!ItemLoot419] run tellraw @s {"text":"You found a Moon Stone!","italic":true,"color":"gray"}
execute as @s[x=1889,y=38,z=-90,distance=..5,tag=!ItemLoot419] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1889,y=38,z=-90,distance=..5,tag=!ItemLoot419] run tag @s add ItemLoot419

execute as @s[x=1879,y=10,z=-96,distance=..5,tag=ItemLoot420] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1879,y=10,z=-96,distance=..5,tag=!ItemLoot420] run give @s cobblemon:iron
execute as @s[x=1879,y=10,z=-96,distance=..5,tag=!ItemLoot420] run tellraw @s {"text":"You found Iron!","italic":true,"color":"gray"}
execute as @s[x=1879,y=10,z=-96,distance=..5,tag=!ItemLoot420] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1879,y=10,z=-96,distance=..5,tag=!ItemLoot420] run tag @s add ItemLoot420

execute as @s[x=1859,y=10,z=-73,distance=..5,tag=ItemLoot421] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1859,y=10,z=-73,distance=..5,tag=!ItemLoot421] run give @s cobblemon:dusk_stone
execute as @s[x=1859,y=10,z=-73,distance=..5,tag=!ItemLoot421] run tellraw @s {"text":"You found a Dusk Stone!","italic":true,"color":"gray"}
execute as @s[x=1859,y=10,z=-73,distance=..5,tag=!ItemLoot421] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1859,y=10,z=-73,distance=..5,tag=!ItemLoot421] run tag @s add ItemLoot421

execute as @s[x=1865,y=10,z=-192,distance=..5,tag=ItemLoot422] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1865,y=10,z=-192,distance=..5,tag=!ItemLoot422] run give @s cobblemon:x_attack
execute as @s[x=1865,y=10,z=-192,distance=..5,tag=!ItemLoot422] run tellraw @s {"text":"You found an X Attack!","italic":true,"color":"gray"}
execute as @s[x=1865,y=10,z=-192,distance=..5,tag=!ItemLoot422] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1865,y=10,z=-192,distance=..5,tag=!ItemLoot422] run tag @s add ItemLoot422

execute as @s[x=1967,y=10,z=-189,distance=..5,tag=ItemLoot423] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1967,y=10,z=-189,distance=..5,tag=!ItemLoot423] run give @s cobblemon:elixir
execute as @s[x=1967,y=10,z=-189,distance=..5,tag=!ItemLoot423] run tellraw @s {"text":"You found an Elixir!","italic":true,"color":"gray"}
execute as @s[x=1967,y=10,z=-189,distance=..5,tag=!ItemLoot423] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1967,y=10,z=-189,distance=..5,tag=!ItemLoot423] run tag @s add ItemLoot423

execute as @s[x=2041,y=10,z=-116,distance=..5,tag=ItemLoot424] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=2041,y=10,z=-116,distance=..5,tag=!ItemLoot424] run give @s cobblemon:full_heal
execute as @s[x=2041,y=10,z=-116,distance=..5,tag=!ItemLoot424] run tellraw @s {"text":"You found a Full Heal!","italic":true,"color":"gray"}
execute as @s[x=2041,y=10,z=-116,distance=..5,tag=!ItemLoot424] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=2041,y=10,z=-116,distance=..5,tag=!ItemLoot424] run tag @s add ItemLoot424

execute as @s[x=1978,y=6,z=-99,distance=..5,tag=ItemLoot426] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1978,y=6,z=-99,distance=..5,tag=!ItemLoot426] run give @s cobblemon:max_potion
execute as @s[x=1978,y=6,z=-99,distance=..5,tag=!ItemLoot426] run tellraw @s {"text":"You found a Max Potion!","italic":true,"color":"gray"}
execute as @s[x=1978,y=6,z=-99,distance=..5,tag=!ItemLoot426] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1978,y=6,z=-99,distance=..5,tag=!ItemLoot426] run tag @s add ItemLoot426

execute as @s[x=1990,y=10,z=-51,distance=..5,tag=ItemLoot427] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1990,y=10,z=-51,distance=..5,tag=!ItemLoot427] run give @s cobblemon:dire_hit
execute as @s[x=1990,y=10,z=-51,distance=..5,tag=!ItemLoot427] run tellraw @s {"text":"You found a Dire Hit!","italic":true,"color":"gray"}
execute as @s[x=1990,y=10,z=-51,distance=..5,tag=!ItemLoot427] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1990,y=10,z=-51,distance=..5,tag=!ItemLoot427] run tag @s add ItemLoot427

execute as @s[x=1961,y=10,z=-43,distance=..5,tag=ItemLoot428] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1961,y=10,z=-43,distance=..5,tag=!ItemLoot428] run give @s mega_showdown:ironplate
execute as @s[x=1961,y=10,z=-43,distance=..5,tag=!ItemLoot428] run tellraw @s {"text":"You found an Iron Plate!","italic":true,"color":"gray"}
execute as @s[x=1961,y=10,z=-43,distance=..5,tag=!ItemLoot428] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1961,y=10,z=-43,distance=..5,tag=!ItemLoot428] run tag @s add ItemLoot428

execute as @s[x=2082,y=33,z=-74,distance=..5,tag=ItemLoot430] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=2082,y=33,z=-74,distance=..5,tag=!ItemLoot430] run give @s cobblemon:reaper_cloth
execute as @s[x=2082,y=33,z=-74,distance=..5,tag=!ItemLoot430] run tellraw @s {"text":"You found a Reaper Cloth!","italic":true,"color":"gray"}
execute as @s[x=2082,y=33,z=-74,distance=..5,tag=!ItemLoot430] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=2082,y=33,z=-74,distance=..5,tag=!ItemLoot430] run tag @s add ItemLoot430

execute as @s[x=1946,y=56,z=-210,distance=..5,tag=ItemLoot431] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1946,y=56,z=-210,distance=..5,tag=!ItemLoot431] run give @s mega_showdown:griseous_orb
execute as @s[x=1946,y=56,z=-210,distance=..5,tag=!ItemLoot431] run tellraw @s {"text":"You found a Griseous Orb!","italic":true,"color":"gray"}
execute as @s[x=1946,y=56,z=-210,distance=..5,tag=!ItemLoot431] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1946,y=56,z=-210,distance=..5,tag=!ItemLoot431] run tag @s add ItemLoot431

execute as @s[x=2081,y=56,z=-136,distance=..5,tag=ItemLoot432] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=2081,y=56,z=-136,distance=..5,tag=!ItemLoot432] run give @s mega_showdown:lustrous_orb
execute as @s[x=2081,y=56,z=-136,distance=..5,tag=!ItemLoot432] run tellraw @s {"text":"You found a Lustrous Orb!","italic":true,"color":"gray"}
execute as @s[x=2081,y=56,z=-136,distance=..5,tag=!ItemLoot432] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=2081,y=56,z=-136,distance=..5,tag=!ItemLoot432] run tag @s add ItemLoot432

execute as @s[x=1962,y=56,z=-112,distance=..5,tag=ItemLoot433] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1962,y=56,z=-112,distance=..5,tag=!ItemLoot433] run give @s mega_showdown:adamant_orb
execute as @s[x=1962,y=56,z=-112,distance=..5,tag=!ItemLoot433] run tellraw @s {"text":"You found an Adamant Orb!","italic":true,"color":"gray"}
execute as @s[x=1962,y=56,z=-112,distance=..5,tag=!ItemLoot433] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1962,y=56,z=-112,distance=..5,tag=!ItemLoot433] run tag @s add ItemLoot433

execute as @s[x=2055,y=56,z=-203,distance=..5,tag=ItemLoot434] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=2055,y=56,z=-203,distance=..5,tag=!ItemLoot434] run scoreboard players add @s Money 20000
execute as @s[x=2055,y=56,z=-203,distance=..5,tag=!ItemLoot434] run tellraw @s {"text":"You recieved $20,000!","italic":true,"color":"gray"}
execute as @s[x=2055,y=56,z=-203,distance=..5,tag=!ItemLoot434] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=2055,y=56,z=-203,distance=..5,tag=!ItemLoot434] run tag @s add ItemLoot434

execute as @s[x=1465,y=100,z=141,distance=..5,tag=ItemLoot435] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1465,y=100,z=141,distance=..5,tag=!ItemLoot435] run scoreboard players add @s Money 500
execute as @s[x=1465,y=100,z=141,distance=..5,tag=!ItemLoot435] run tellraw @s {"text":"You recieved $500!","italic":true,"color":"gray"}
execute as @s[x=1465,y=100,z=141,distance=..5,tag=!ItemLoot435] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1465,y=100,z=141,distance=..5,tag=!ItemLoot435] run tag @s add ItemLoot435

execute as @s[x=1493,y=110,z=167,distance=..5,tag=ItemLoot436] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1493,y=110,z=167,distance=..5,tag=!ItemLoot436] run give @s cobblemon:ether
execute as @s[x=1493,y=110,z=167,distance=..5,tag=!ItemLoot436] run tellraw @s {"text":"You found an Ether!","italic":true,"color":"gray"}
execute as @s[x=1493,y=110,z=167,distance=..5,tag=!ItemLoot436] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1493,y=110,z=167,distance=..5,tag=!ItemLoot436] run tag @s add ItemLoot436

execute as @s[x=1551,y=120,z=165,distance=..5,tag=ItemLoot438] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1551,y=120,z=165,distance=..5,tag=!ItemLoot438] run give @s cobblemon:poke_ball
execute as @s[x=1551,y=120,z=165,distance=..5,tag=!ItemLoot438] run tellraw @s {"text":"You found a Poké Ball!","italic":true,"color":"gray"}
execute as @s[x=1551,y=120,z=165,distance=..5,tag=!ItemLoot438] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1551,y=120,z=165,distance=..5,tag=!ItemLoot438] run tag @s add ItemLoot438

execute as @s[x=1574,y=120,z=173,distance=..5,tag=ItemLoot439] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1574,y=120,z=173,distance=..5,tag=!ItemLoot439] run give @s cobblemon:rare_candy
execute as @s[x=1574,y=120,z=173,distance=..5,tag=!ItemLoot439] run tellraw @s {"text":"You found a Rare Candy!","italic":true,"color":"gray"}
execute as @s[x=1574,y=120,z=173,distance=..5,tag=!ItemLoot439] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1574,y=120,z=173,distance=..5,tag=!ItemLoot439] run tag @s add ItemLoot439

execute as @s[x=1452,y=84,z=204,distance=..5,tag=ItemLoot440] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1452,y=84,z=204,distance=..5,tag=!ItemLoot440] run give @s cobblemon:revive
execute as @s[x=1452,y=84,z=204,distance=..5,tag=!ItemLoot440] run tellraw @s {"text":"You found a Revive!","italic":true,"color":"gray"}
execute as @s[x=1452,y=84,z=204,distance=..5,tag=!ItemLoot440] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1452,y=84,z=204,distance=..5,tag=!ItemLoot440] run tag @s add ItemLoot440

execute as @s[x=1544,y=101,z=235,distance=..5,tag=ItemLoot441] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1544,y=101,z=235,distance=..5,tag=!ItemLoot441] run give @s cobblemon:burn_heal
execute as @s[x=1544,y=101,z=235,distance=..5,tag=!ItemLoot441] run tellraw @s {"text":"You found a Burn Heal!","italic":true,"color":"gray"}
execute as @s[x=1544,y=101,z=235,distance=..5,tag=!ItemLoot441] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1544,y=101,z=235,distance=..5,tag=!ItemLoot441] run tag @s add ItemLoot441

execute as @s[x=1481,y=81,z=274,distance=..5,tag=ItemLoot442] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1481,y=81,z=274,distance=..5,tag=!ItemLoot442,scores={StarterPick=1}] run give @s cobblemon:miracle_seed
execute as @s[x=1481,y=81,z=274,distance=..5,tag=!ItemLoot442,scores={StarterPick=2}] run give @s cobblemon:charcoal_stick
execute as @s[x=1481,y=81,z=274,distance=..5,tag=!ItemLoot442,scores={StarterPick=3}] run give @s cobblemon:mystic_water
execute as @s[x=1481,y=81,z=274,distance=..5,tag=!ItemLoot442,scores={StarterPick=1}] run tellraw @s {"text":"You recieved a Miracle Seed!","italic":true,"color":"gray"}
execute as @s[x=1481,y=81,z=274,distance=..5,tag=!ItemLoot442,scores={StarterPick=2}] run tellraw @s {"text":"You recieved a Charcoal!","italic":true,"color":"gray"}
execute as @s[x=1481,y=81,z=274,distance=..5,tag=!ItemLoot442,scores={StarterPick=3}] run tellraw @s {"text":"You recieved a Mystic Water!","italic":true,"color":"gray"}
execute as @s[x=1481,y=81,z=274,distance=..5,tag=!ItemLoot442] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1481,y=81,z=274,distance=..5,tag=!ItemLoot442] run tag @s add ItemLoot442

execute as @s[x=1610,y=115,z=233,distance=..5,tag=ItemLoot446] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1610,y=115,z=233,distance=..5,tag=!ItemLoot446] run give @s cobblemon:max_potion
execute as @s[x=1610,y=115,z=233,distance=..5,tag=!ItemLoot446] run tellraw @s {"text":"You found a Max Potion!","italic":true,"color":"gray"}
execute as @s[x=1610,y=115,z=233,distance=..5,tag=!ItemLoot446] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1610,y=115,z=233,distance=..5,tag=!ItemLoot446] run tag @s add ItemLoot446

execute as @s[x=1595,y=115,z=244,distance=..5,tag=ItemLoot447] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1595,y=115,z=244,distance=..5,tag=!ItemLoot447] run give @s cobblemon:prism_scale
execute as @s[x=1595,y=115,z=244,distance=..5,tag=!ItemLoot447] run tellraw @s {"text":"You found a Prism Scale!","italic":true,"color":"gray"}
execute as @s[x=1595,y=115,z=244,distance=..5,tag=!ItemLoot447] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1595,y=115,z=244,distance=..5,tag=!ItemLoot447] run tag @s add ItemLoot447

execute as @s[x=1511,y=100,z=436,distance=..5,tag=ItemLoot449] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1511,y=100,z=436,distance=..5,tag=!ItemLoot449] run give @s cobblemon:net_ball
execute as @s[x=1511,y=100,z=436,distance=..5,tag=!ItemLoot449] run tellraw @s {"text":"You found a Net Ball!","italic":true,"color":"gray"}
execute as @s[x=1511,y=100,z=436,distance=..5,tag=!ItemLoot449] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1511,y=100,z=436,distance=..5,tag=!ItemLoot449] run tag @s add ItemLoot449

execute as @s[x=1504,y=100,z=474,distance=..5,tag=ItemLoot450] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1504,y=100,z=474,distance=..5,tag=!ItemLoot450] run give @s cobblemon:max_revive
execute as @s[x=1504,y=100,z=474,distance=..5,tag=!ItemLoot450] run tellraw @s {"text":"You found a Max Revive!","italic":true,"color":"gray"}
execute as @s[x=1504,y=100,z=474,distance=..5,tag=!ItemLoot450] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1504,y=100,z=474,distance=..5,tag=!ItemLoot450] run tag @s add ItemLoot450

execute as @s[x=1488,y=75,z=517,distance=..5,tag=ItemLoot451] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1488,y=75,z=517,distance=..5,tag=!ItemLoot451] run give @s cobblemon:damp_rock
execute as @s[x=1488,y=75,z=517,distance=..5,tag=!ItemLoot451] run tellraw @s {"text":"You found a Damp Rock!","italic":true,"color":"gray"}
execute as @s[x=1488,y=75,z=517,distance=..5,tag=!ItemLoot451] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1488,y=75,z=517,distance=..5,tag=!ItemLoot451] run tag @s add ItemLoot451

execute as @s[x=1411,y=75,z=561,distance=..5,tag=ItemLoot452] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1411,y=75,z=561,distance=..5,tag=!ItemLoot452] run scoreboard players add @s Money 2500
execute as @s[x=1411,y=75,z=561,distance=..5,tag=!ItemLoot452] run tellraw @s {"text":"You recieved $2,500!","italic":true,"color":"gray"}
execute as @s[x=1411,y=75,z=561,distance=..5,tag=!ItemLoot452] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1411,y=75,z=561,distance=..5,tag=!ItemLoot452] run tag @s add ItemLoot452

execute as @s[x=1453,y=75,z=523,distance=..5,tag=ItemLoot453] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1453,y=75,z=523,distance=..5,tag=!ItemLoot453] run function kalos:spawn/escaperope
execute as @s[x=1453,y=75,z=523,distance=..5,tag=!ItemLoot453] run tellraw @s {"text":"You found an Escape Rope!","italic":true,"color":"gray"}
execute as @s[x=1453,y=75,z=523,distance=..5,tag=!ItemLoot453] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1453,y=75,z=523,distance=..5,tag=!ItemLoot453] run tag @s add ItemLoot453

execute as @s[x=1441,y=75,z=351,distance=..5,tag=ItemLoot454] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1441,y=75,z=351,distance=..5,tag=!ItemLoot454] run give @s mega_showdown:toxicplate
execute as @s[x=1441,y=75,z=351,distance=..5,tag=!ItemLoot454] run tellraw @s {"text":"You found a Toxic Plate!","italic":true,"color":"gray"}
execute as @s[x=1441,y=75,z=351,distance=..5,tag=!ItemLoot454] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1441,y=75,z=351,distance=..5,tag=!ItemLoot454] run tag @s add ItemLoot454

execute as @s[x=1360,y=87,z=434,distance=..5,tag=ItemLoot455] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1360,y=87,z=434,distance=..5,tag=!ItemLoot455] run give @s cobblemon:pp_up
execute as @s[x=1360,y=87,z=434,distance=..5,tag=!ItemLoot455] run tellraw @s {"text":"You found a PP Up!","italic":true,"color":"gray"}
execute as @s[x=1360,y=87,z=434,distance=..5,tag=!ItemLoot455] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1360,y=87,z=434,distance=..5,tag=!ItemLoot455] run tag @s add ItemLoot455

execute as @s[x=1448,y=87,z=396,distance=..5,tag=ItemLoot456] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1448,y=87,z=396,distance=..5,tag=!ItemLoot456] run give @s cobblemon:yache_berry
execute as @s[x=1448,y=87,z=396,distance=..5,tag=!ItemLoot456] run tellraw @s {"text":"You found a Yache Berry!","italic":true,"color":"gray"}
execute as @s[x=1448,y=87,z=396,distance=..5,tag=!ItemLoot456] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1448,y=87,z=396,distance=..5,tag=!ItemLoot456] run tag @s add ItemLoot456

execute as @s[x=1497,y=100,z=534,distance=..5,tag=ItemLoot458] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1497,y=100,z=534,distance=..5,tag=!ItemLoot458] run give @s cobblemon:antidote
execute as @s[x=1497,y=100,z=534,distance=..5,tag=!ItemLoot458] run tellraw @s {"text":"You found an Antidote!","italic":true,"color":"gray"}
execute as @s[x=1497,y=100,z=534,distance=..5,tag=!ItemLoot458] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1497,y=100,z=534,distance=..5,tag=!ItemLoot458] run tag @s add ItemLoot458

execute as @s[x=1551,y=100,z=507,distance=..5,tag=ItemLoot459] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1551,y=100,z=507,distance=..5,tag=!ItemLoot459] run give @s cobblemon:hp_up
execute as @s[x=1551,y=100,z=507,distance=..5,tag=!ItemLoot459] run tellraw @s {"text":"You found an HP Up!","italic":true,"color":"gray"}
execute as @s[x=1551,y=100,z=507,distance=..5,tag=!ItemLoot459] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1551,y=100,z=507,distance=..5,tag=!ItemLoot459] run tag @s add ItemLoot459

execute as @s[x=1398,y=100,z=475,distance=..5,tag=ItemLoot461] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1398,y=100,z=475,distance=..5,tag=!ItemLoot461] run give @s cobblemon:timer_ball
execute as @s[x=1398,y=100,z=475,distance=..5,tag=!ItemLoot461] run tellraw @s {"text":"You found a Timer Ball!","italic":true,"color":"gray"}
execute as @s[x=1398,y=100,z=475,distance=..5,tag=!ItemLoot461] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1398,y=100,z=475,distance=..5,tag=!ItemLoot461] run tag @s add ItemLoot461

execute as @s[x=1064,y=100,z=500,distance=..5,tag=ItemLoot465] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1064,y=100,z=500,distance=..5,tag=!ItemLoot465] run give @s cobblemon:icy_rock
execute as @s[x=1064,y=100,z=500,distance=..5,tag=!ItemLoot465] run tellraw @s {"text":"You found an Icy Rock!","italic":true,"color":"gray"}
execute as @s[x=1064,y=100,z=500,distance=..5,tag=!ItemLoot465] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1064,y=100,z=500,distance=..5,tag=!ItemLoot465] run tag @s add ItemLoot465

execute as @s[x=1067,y=100,z=565,distance=..5,tag=ItemLoot466] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1067,y=100,z=565,distance=..5,tag=!ItemLoot466] run give @s cobblemon:full_restore
execute as @s[x=1067,y=100,z=565,distance=..5,tag=!ItemLoot466] run tellraw @s {"text":"You found a Full Restore!","italic":true,"color":"gray"}
execute as @s[x=1067,y=100,z=565,distance=..5,tag=!ItemLoot466] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1067,y=100,z=565,distance=..5,tag=!ItemLoot466] run tag @s add ItemLoot466

execute as @s[x=1105,y=105,z=532,distance=..5,tag=ItemLoot467] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1105,y=105,z=532,distance=..5,tag=!ItemLoot467] run give @s cobblemon:x_special_attack
execute as @s[x=1105,y=105,z=532,distance=..5,tag=!ItemLoot467] run tellraw @s {"text":"You found an X Special Attack!","italic":true,"color":"gray"}
execute as @s[x=1105,y=105,z=532,distance=..5,tag=!ItemLoot467] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1105,y=105,z=532,distance=..5,tag=!ItemLoot467] run tag @s add ItemLoot467

execute as @s[x=1123,y=95,z=488,distance=..5,tag=ItemLoot468] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1123,y=95,z=488,distance=..5,tag=!ItemLoot468] run give @s cobblemon:full_heal
execute as @s[x=1123,y=95,z=488,distance=..5,tag=!ItemLoot468] run tellraw @s {"text":"You found a Full Heal!","italic":true,"color":"gray"}
execute as @s[x=1123,y=95,z=488,distance=..5,tag=!ItemLoot468] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1123,y=95,z=488,distance=..5,tag=!ItemLoot468] run tag @s add ItemLoot468

execute as @s[x=1381,y=100,z=782,distance=..5,tag=ItemLoot469] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1381,y=100,z=782,distance=..5,tag=!ItemLoot469] run give @s cobblemon:kasib_berry
execute as @s[x=1381,y=100,z=782,distance=..5,tag=!ItemLoot469] run tellraw @s {"text":"You found a Kasib Berry!","italic":true,"color":"gray"}
execute as @s[x=1381,y=100,z=782,distance=..5,tag=!ItemLoot469] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1381,y=100,z=782,distance=..5,tag=!ItemLoot469] run tag @s add ItemLoot469

execute as @s[x=1400,y=100,z=780,distance=..5,tag=ItemLoot470] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1400,y=100,z=780,distance=..5,tag=!ItemLoot470] run give @s cobblemon:paralyze_heal
execute as @s[x=1400,y=100,z=780,distance=..5,tag=!ItemLoot470] run tellraw @s {"text":"You found a Paralyze Heal!","italic":true,"color":"gray"}
execute as @s[x=1400,y=100,z=780,distance=..5,tag=!ItemLoot470] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1400,y=100,z=780,distance=..5,tag=!ItemLoot470] run tag @s add ItemLoot470

execute as @s[x=1384,y=100,z=960,distance=..5,tag=ItemLoot471] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1384,y=100,z=960,distance=..5,tag=!ItemLoot471] run give @s mega_showdown:meadowplate
execute as @s[x=1384,y=100,z=960,distance=..5,tag=!ItemLoot471] run tellraw @s {"text":"You found a Meadow Plate!","italic":true,"color":"gray"}
execute as @s[x=1384,y=100,z=960,distance=..5,tag=!ItemLoot471] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1384,y=100,z=960,distance=..5,tag=!ItemLoot471] run tag @s add ItemLoot471

execute as @s[x=1266,y=100,z=941,distance=..5,tag=ItemLoot472] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1266,y=100,z=941,distance=..5,tag=!ItemLoot472] run give @s cobblemon:antidote
execute as @s[x=1266,y=100,z=941,distance=..5,tag=!ItemLoot472] run tellraw @s {"text":"You found an Antidote!","italic":true,"color":"gray"}
execute as @s[x=1266,y=100,z=941,distance=..5,tag=!ItemLoot472] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1266,y=100,z=941,distance=..5,tag=!ItemLoot472] run tag @s add ItemLoot472

execute as @s[x=1418,y=103,z=872,distance=..5,tag=ItemLoot473] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1418,y=103,z=872,distance=..5,tag=!ItemLoot473] run give @s cobblemon:protein
execute as @s[x=1418,y=103,z=872,distance=..5,tag=!ItemLoot473] run tellraw @s {"text":"You found a Protein!","italic":true,"color":"gray"}
execute as @s[x=1418,y=103,z=872,distance=..5,tag=!ItemLoot473] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1418,y=103,z=872,distance=..5,tag=!ItemLoot473] run tag @s add ItemLoot473

execute as @s[x=1464,y=103,z=911,distance=..5,tag=ItemLoot474] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1464,y=103,z=911,distance=..5,tag=!ItemLoot474] run give @s cobblemon:repeat_ball
execute as @s[x=1464,y=103,z=911,distance=..5,tag=!ItemLoot474] run tellraw @s {"text":"You found a Repeat Ball!","italic":true,"color":"gray"}
execute as @s[x=1464,y=103,z=911,distance=..5,tag=!ItemLoot474] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1464,y=103,z=911,distance=..5,tag=!ItemLoot474] run tag @s add ItemLoot474

execute as @s[x=1188,y=100,z=833,distance=..5,tag=ItemLoot475] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1188,y=100,z=833,distance=..5,tag=!ItemLoot475] run give @s cobblemon:mental_herb
execute as @s[x=1188,y=100,z=833,distance=..5,tag=!ItemLoot475] run tellraw @s {"text":"You found a Mental Herb!","italic":true,"color":"gray"}
execute as @s[x=1188,y=100,z=833,distance=..5,tag=!ItemLoot475] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1188,y=100,z=833,distance=..5,tag=!ItemLoot475] run tag @s add ItemLoot475

execute as @s[x=1159,y=100,z=879,distance=..5,tag=ItemLoot476] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1159,y=100,z=879,distance=..5,tag=!ItemLoot476] run scoreboard players add @s Money 250
execute as @s[x=1159,y=100,z=879,distance=..5,tag=!ItemLoot476] run tellraw @s {"text":"You recieved $250!","italic":true,"color":"gray"}
execute as @s[x=1159,y=100,z=879,distance=..5,tag=!ItemLoot476] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1159,y=100,z=879,distance=..5,tag=!ItemLoot476] run tag @s add ItemLoot476

execute as @s[x=1086,y=106,z=974,distance=..5,tag=ItemLoot477] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1086,y=106,z=974,distance=..5,tag=!ItemLoot477] run scoreboard players add @s Money 7500
execute as @s[x=1086,y=106,z=974,distance=..5,tag=!ItemLoot477] run tellraw @s {"text":"You recieved $7,500!","italic":true,"color":"gray"}
execute as @s[x=1086,y=106,z=974,distance=..5,tag=!ItemLoot477] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1086,y=106,z=974,distance=..5,tag=!ItemLoot477] run tag @s add ItemLoot477

execute as @s[x=1067,y=106,z=983,distance=..5,tag=ItemLoot478] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1067,y=106,z=983,distance=..5,tag=!ItemLoot478] run give @s cobblemon:x_accuracy
execute as @s[x=1067,y=106,z=983,distance=..5,tag=!ItemLoot478] run tellraw @s {"text":"You found an X Accuracy!","italic":true,"color":"gray"}
execute as @s[x=1067,y=106,z=983,distance=..5,tag=!ItemLoot478] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1067,y=106,z=983,distance=..5,tag=!ItemLoot478] run tag @s add ItemLoot478

execute as @s[x=867,y=93,z=715,distance=..5,tag=ItemLoot482] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=867,y=93,z=715,distance=..5,tag=!ItemLoot482] run scoreboard players add @s Money 500
execute as @s[x=867,y=93,z=715,distance=..5,tag=!ItemLoot482] run tellraw @s {"text":"You recieved $500!","italic":true,"color":"gray"}
execute as @s[x=867,y=93,z=715,distance=..5,tag=!ItemLoot482] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=867,y=93,z=715,distance=..5,tag=!ItemLoot482] run tag @s add ItemLoot482

execute as @s[x=918,y=95,z=719,distance=..5,tag=ItemLoot483] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=918,y=95,z=719,distance=..5,tag=!ItemLoot483] run give @s cobblemon:max_ether
execute as @s[x=918,y=95,z=719,distance=..5,tag=!ItemLoot483] run tellraw @s {"text":"You found a Max Ether!","italic":true,"color":"gray"}
execute as @s[x=918,y=95,z=719,distance=..5,tag=!ItemLoot483] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=918,y=95,z=719,distance=..5,tag=!ItemLoot483] run tag @s add ItemLoot483

execute as @s[x=810,y=93,z=666,distance=..5,tag=ItemLoot484] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=810,y=93,z=666,distance=..5,tag=!ItemLoot484] run function kalos:spawn/honey
execute as @s[x=810,y=93,z=666,distance=..5,tag=!ItemLoot484] run tellraw @s {"text":"You found Honey!","italic":true,"color":"gray"}
execute as @s[x=810,y=93,z=666,distance=..5,tag=!ItemLoot484] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=810,y=93,z=666,distance=..5,tag=!ItemLoot484] run tag @s add ItemLoot484

execute as @s[x=746,y=95,z=644,distance=..5,tag=ItemLoot485] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=746,y=95,z=644,distance=..5,tag=!ItemLoot485] run function kalos:spawn/honey
execute as @s[x=746,y=95,z=644,distance=..5,tag=!ItemLoot485] run tellraw @s {"text":"You found Honey!","italic":true,"color":"gray"}
execute as @s[x=746,y=95,z=644,distance=..5,tag=!ItemLoot485] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=746,y=95,z=644,distance=..5,tag=!ItemLoot485] run tag @s add ItemLoot485

execute as @s[x=786,y=93,z=633,distance=..5,tag=ItemLoot486] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=786,y=93,z=633,distance=..5,tag=!ItemLoot486] run give @s cobblemon:full_restore
execute as @s[x=786,y=93,z=633,distance=..5,tag=!ItemLoot486] run tellraw @s {"text":"You found a Full Restore!","italic":true,"color":"gray"}
execute as @s[x=786,y=93,z=633,distance=..5,tag=!ItemLoot486] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=786,y=93,z=633,distance=..5,tag=!ItemLoot486] run tag @s add ItemLoot486

execute as @s[x=740,y=95,z=657,distance=..5,tag=ItemLoot487] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=740,y=95,z=657,distance=..5,tag=!ItemLoot487] run give @s mega_showdown:pixieplate
execute as @s[x=740,y=95,z=657,distance=..5,tag=!ItemLoot487] run tellraw @s {"text":"You found a Pixie Plate!","italic":true,"color":"gray"}
execute as @s[x=740,y=95,z=657,distance=..5,tag=!ItemLoot487] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=740,y=95,z=657,distance=..5,tag=!ItemLoot487] run tag @s add ItemLoot487

execute as @s[x=836,y=75,z=539,distance=..5,tag=ItemLoot489] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=836,y=75,z=539,distance=..5,tag=!ItemLoot489] run give @s cobblemon:oval_stone
execute as @s[x=836,y=75,z=539,distance=..5,tag=!ItemLoot489] run tellraw @s {"text":"You found an Oval Stone!","italic":true,"color":"gray"}
execute as @s[x=836,y=75,z=539,distance=..5,tag=!ItemLoot489] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=836,y=75,z=539,distance=..5,tag=!ItemLoot489] run tag @s add ItemLoot489

execute as @s[x=941,y=100,z=389,distance=..5,tag=ItemLoot490] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=941,y=100,z=389,distance=..5,tag=!ItemLoot490] run give @s mega_showdown:insectplate
execute as @s[x=941,y=100,z=389,distance=..5,tag=!ItemLoot490] run tellraw @s {"text":"You found an Insect Plate!","italic":true,"color":"gray"}
execute as @s[x=941,y=100,z=389,distance=..5,tag=!ItemLoot490] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=941,y=100,z=389,distance=..5,tag=!ItemLoot490] run tag @s add ItemLoot490

execute as @s[x=691,y=100,z=492,distance=..5,tag=ItemLoot492] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=691,y=100,z=492,distance=..5,tag=!ItemLoot492] run give @s cobblemon:pp_up
execute as @s[x=691,y=100,z=492,distance=..5,tag=!ItemLoot492] run tellraw @s {"text":"You found a PP Up!","italic":true,"color":"gray"}
execute as @s[x=691,y=100,z=492,distance=..5,tag=!ItemLoot492] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=691,y=100,z=492,distance=..5,tag=!ItemLoot492] run tag @s add ItemLoot492

execute as @s[x=787,y=104,z=288,distance=..5,tag=ItemLoot493] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=787,y=104,z=288,distance=..5,tag=!ItemLoot493] run give @s cobblemon:elixir
execute as @s[x=787,y=104,z=288,distance=..5,tag=!ItemLoot493] run tellraw @s {"text":"You found an Elixir!","italic":true,"color":"gray"}
execute as @s[x=787,y=104,z=288,distance=..5,tag=!ItemLoot493] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=787,y=104,z=288,distance=..5,tag=!ItemLoot493] run tag @s add ItemLoot493

execute as @s[x=701,y=104,z=501,distance=..5,tag=ItemLoot494] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=701,y=104,z=501,distance=..5,tag=!ItemLoot494] run give @s cobblemon:elixir
execute as @s[x=701,y=104,z=501,distance=..5,tag=!ItemLoot494] run tellraw @s {"text":"You found an Elixir!","italic":true,"color":"gray"}
execute as @s[x=701,y=104,z=501,distance=..5,tag=!ItemLoot494] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=701,y=104,z=501,distance=..5,tag=!ItemLoot494] run tag @s add ItemLoot494

execute as @s[x=860,y=100,z=539,distance=..5,tag=ItemLoot495] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=860,y=100,z=539,distance=..5,tag=!ItemLoot495] run give @s cobblemon:rare_candy
execute as @s[x=860,y=100,z=539,distance=..5,tag=!ItemLoot495] run tellraw @s {"text":"You found a Rare Candy!","italic":true,"color":"gray"}
execute as @s[x=860,y=100,z=539,distance=..5,tag=!ItemLoot495] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=860,y=100,z=539,distance=..5,tag=!ItemLoot495] run tag @s add ItemLoot495

execute as @s[x=880,y=104,z=316,distance=..5,tag=ItemLoot497] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=880,y=104,z=316,distance=..5,tag=!ItemLoot497] run scoreboard players add @s Money 10000
execute as @s[x=880,y=104,z=316,distance=..5,tag=!ItemLoot497] run tellraw @s {"text":"You recieved $10,000!","italic":true,"color":"gray"}
execute as @s[x=880,y=104,z=316,distance=..5,tag=!ItemLoot497] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=880,y=104,z=316,distance=..5,tag=!ItemLoot497] run tag @s add ItemLoot497

execute as @s[x=819,y=104,z=307,distance=..5,tag=ItemLoot498] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=819,y=104,z=307,distance=..5,tag=!ItemLoot498] run give @s cobblemon:repeat_ball
execute as @s[x=819,y=104,z=307,distance=..5,tag=!ItemLoot498] run tellraw @s {"text":"You found a Repeat Ball!","italic":true,"color":"gray"}
execute as @s[x=819,y=104,z=307,distance=..5,tag=!ItemLoot498] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=819,y=104,z=307,distance=..5,tag=!ItemLoot498] run tag @s add ItemLoot498

execute as @s[x=794,y=104,z=299,distance=..5,tag=ItemLoot499] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=794,y=104,z=299,distance=..5,tag=!ItemLoot499] run give @s cobblemon:figy_berry
execute as @s[x=794,y=104,z=299,distance=..5,tag=!ItemLoot499] run tellraw @s {"text":"You found a Figy Berry!","italic":true,"color":"gray"}
execute as @s[x=794,y=104,z=299,distance=..5,tag=!ItemLoot499] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=794,y=104,z=299,distance=..5,tag=!ItemLoot499] run tag @s add ItemLoot499

execute as @s[x=440,y=100,z=403,distance=..5,tag=ItemLoot500] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=440,y=100,z=403,distance=..5,tag=!ItemLoot500] run give @s cobblemon:super_potion
execute as @s[x=440,y=100,z=403,distance=..5,tag=!ItemLoot500] run tellraw @s {"text":"You found a Super Potion!","italic":true,"color":"gray"}
execute as @s[x=440,y=100,z=403,distance=..5,tag=!ItemLoot500] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=440,y=100,z=403,distance=..5,tag=!ItemLoot500] run tag @s add ItemLoot500

execute as @s[x=382,y=100,z=335,distance=..5,tag=ItemLoot501] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=382,y=100,z=335,distance=..5,tag=!ItemLoot501] run give @s cobblemon:elixir
execute as @s[x=382,y=100,z=335,distance=..5,tag=!ItemLoot501] run tellraw @s {"text":"You found an Elixir!","italic":true,"color":"gray"}
execute as @s[x=382,y=100,z=335,distance=..5,tag=!ItemLoot501] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=382,y=100,z=335,distance=..5,tag=!ItemLoot501] run tag @s add ItemLoot501

execute as @s[x=653,y=100,z=485,distance=..5,tag=ItemLoot502] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=653,y=100,z=485,distance=..5,tag=!ItemLoot502] run give @s mega_showdown:dracoplate
execute as @s[x=653,y=100,z=485,distance=..5,tag=!ItemLoot502] run tellraw @s {"text":"You found a Draco Plate!","italic":true,"color":"gray"}
execute as @s[x=653,y=100,z=485,distance=..5,tag=!ItemLoot502] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=653,y=100,z=485,distance=..5,tag=!ItemLoot502] run tag @s add ItemLoot502

execute as @s[x=550,y=91,z=557,distance=..5,tag=ItemLoot503] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=550,y=91,z=557,distance=..5,tag=!ItemLoot503] run give @s cobblemon:full_restore
execute as @s[x=550,y=91,z=557,distance=..5,tag=!ItemLoot503] run tellraw @s {"text":"You found a Full Restore!","italic":true,"color":"gray"}
execute as @s[x=550,y=91,z=557,distance=..5,tag=!ItemLoot503] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=550,y=91,z=557,distance=..5,tag=!ItemLoot503] run tag @s add ItemLoot503

execute as @s[x=625,y=91,z=572,distance=..5,tag=ItemLoot504] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=625,y=91,z=572,distance=..5,tag=!ItemLoot504] run give @s cobblemon:tanga_berry
execute as @s[x=625,y=91,z=572,distance=..5,tag=!ItemLoot504] run tellraw @s {"text":"You found a Tanga Berry!","italic":true,"color":"gray"}
execute as @s[x=625,y=91,z=572,distance=..5,tag=!ItemLoot504] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=625,y=91,z=572,distance=..5,tag=!ItemLoot504] run tag @s add ItemLoot504

execute as @s[x=565,y=91,z=564,distance=..5,tag=ItemLoot505] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=565,y=91,z=564,distance=..5,tag=!ItemLoot505] run give @s cobblemon:max_elixir
execute as @s[x=565,y=91,z=564,distance=..5,tag=!ItemLoot505] run tellraw @s {"text":"You found a Max Elixir!","italic":true,"color":"gray"}
execute as @s[x=565,y=91,z=564,distance=..5,tag=!ItemLoot505] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=565,y=91,z=564,distance=..5,tag=!ItemLoot505] run tag @s add ItemLoot505

execute as @s[x=583,y=72,z=425,distance=..5,tag=ItemLoot507] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=583,y=72,z=425,distance=..5,tag=!ItemLoot507] run give @s mega_showdown:spookyplate
execute as @s[x=583,y=72,z=425,distance=..5,tag=!ItemLoot507] run tellraw @s {"text":"You found a Spooky Plate!","italic":true,"color":"gray"}
execute as @s[x=583,y=72,z=425,distance=..5,tag=!ItemLoot507] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=583,y=72,z=425,distance=..5,tag=!ItemLoot507] run tag @s add ItemLoot507

execute as @s[x=2359,y=40,z=1665,distance=..5,tag=ItemLoot508] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=2359,y=40,z=1665,distance=..5,tag=!ItemLoot508] run give @s cobblemon:x_attack
execute as @s[x=2359,y=40,z=1665,distance=..5,tag=!ItemLoot508] run tellraw @s {"text":"You found an X Attack!","italic":true,"color":"gray"}
execute as @s[x=2359,y=40,z=1665,distance=..5,tag=!ItemLoot508] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=2359,y=40,z=1665,distance=..5,tag=!ItemLoot508] run tag @s add ItemLoot508

execute as @s[x=2291,y=60,z=1726,distance=..5,tag=ItemLoot509] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=2291,y=60,z=1726,distance=..5,tag=!ItemLoot509] run give @s cobblemon:dusk_ball
execute as @s[x=2291,y=60,z=1726,distance=..5,tag=!ItemLoot509] run tellraw @s {"text":"You found a Dusk Ball!","italic":true,"color":"gray"}
execute as @s[x=2291,y=60,z=1726,distance=..5,tag=!ItemLoot509] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=2291,y=60,z=1726,distance=..5,tag=!ItemLoot509] run tag @s add ItemLoot509

execute as @s[x=1979,y=175,z=2330,distance=..5,tag=ItemLoot510] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1979,y=175,z=2330,distance=..5,tag=!ItemLoot510] run give @s cobblemon:hyper_potion
execute as @s[x=1979,y=175,z=2330,distance=..5,tag=!ItemLoot510] run tellraw @s {"text":"You found a Hyper Potion!","italic":true,"color":"gray"}
execute as @s[x=1979,y=175,z=2330,distance=..5,tag=!ItemLoot510] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1979,y=175,z=2330,distance=..5,tag=!ItemLoot510] run tag @s add ItemLoot510

execute as @s[x=1920,y=175,z=2189,distance=..5,tag=ItemLoot511] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1920,y=175,z=2189,distance=..5,tag=!ItemLoot511] run give @s cobblemon:full_heal
execute as @s[x=1920,y=175,z=2189,distance=..5,tag=!ItemLoot511] run tellraw @s {"text":"You found a Full Heal!","italic":true,"color":"gray"}
execute as @s[x=1920,y=175,z=2189,distance=..5,tag=!ItemLoot511] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1920,y=175,z=2189,distance=..5,tag=!ItemLoot511] run tag @s add ItemLoot511

execute as @s[x=2129,y=91,z=1335,distance=..5,tag=ItemLoot512] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=2129,y=91,z=1335,distance=..5,tag=!ItemLoot512] run give @s cobblemon:rare_candy
execute as @s[x=2129,y=91,z=1335,distance=..5,tag=!ItemLoot512] run tellraw @s {"text":"You found a Rare Candy!","italic":true,"color":"gray"}
execute as @s[x=2129,y=91,z=1335,distance=..5,tag=!ItemLoot512] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=2129,y=91,z=1335,distance=..5,tag=!ItemLoot512] run tag @s add ItemLoot512

execute as @s[x=2205,y=71,z=1438,distance=..5,tag=ItemLoot513] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=2205,y=71,z=1438,distance=..5,tag=!ItemLoot513] run give @s cobblemon:ultra_ball
execute as @s[x=2205,y=71,z=1438,distance=..5,tag=!ItemLoot513] run tellraw @s {"text":"You found an Ultra Ball!","italic":true,"color":"gray"}
execute as @s[x=2205,y=71,z=1438,distance=..5,tag=!ItemLoot513] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=2205,y=71,z=1438,distance=..5,tag=!ItemLoot513] run tag @s add ItemLoot513

execute as @s[x=2203,y=91,z=1314,distance=..5,tag=ItemLoot514] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=2203,y=91,z=1314,distance=..5,tag=!ItemLoot514] run give @s cobblemon:carbos
execute as @s[x=2203,y=91,z=1314,distance=..5,tag=!ItemLoot514] run tellraw @s {"text":"You found Carbos!","italic":true,"color":"gray"}
execute as @s[x=2203,y=91,z=1314,distance=..5,tag=!ItemLoot514] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=2203,y=91,z=1314,distance=..5,tag=!ItemLoot514] run tag @s add ItemLoot514

execute as @s[x=2219,y=91,z=1296,distance=..5,tag=ItemLoot515] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=2219,y=91,z=1296,distance=..5,tag=!ItemLoot515] run give @s cobblemon:smooth_rock
execute as @s[x=2219,y=91,z=1296,distance=..5,tag=!ItemLoot515] run tellraw @s {"text":"You found a Smooth Rock!","italic":true,"color":"gray"}
execute as @s[x=2219,y=91,z=1296,distance=..5,tag=!ItemLoot515] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=2219,y=91,z=1296,distance=..5,tag=!ItemLoot515] run tag @s add ItemLoot515

execute as @s[x=2208,y=176,z=2290,distance=..5,tag=ItemLoot517] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=2208,y=176,z=2290,distance=..5,tag=!ItemLoot517] run give @s cobblemon:revive
execute as @s[x=2208,y=176,z=2290,distance=..5,tag=!ItemLoot517] run tellraw @s {"text":"You found a Revive!","italic":true,"color":"gray"}
execute as @s[x=2208,y=176,z=2290,distance=..5,tag=!ItemLoot517] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=2208,y=176,z=2290,distance=..5,tag=!ItemLoot517] run tag @s add ItemLoot517

execute as @s[x=2144,y=175,z=2190,distance=..5,tag=ItemLoot518] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=2144,y=175,z=2190,distance=..5,tag=!ItemLoot518] run give @s cobblemon:pp_up
execute as @s[x=2144,y=175,z=2190,distance=..5,tag=!ItemLoot518] run tellraw @s {"text":"You found a PP Up!","italic":true,"color":"gray"}
execute as @s[x=2144,y=175,z=2190,distance=..5,tag=!ItemLoot518] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=2144,y=175,z=2190,distance=..5,tag=!ItemLoot518] run tag @s add ItemLoot518

execute as @s[x=2304,y=177,z=2142,distance=..5,tag=ItemLoot519] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=2304,y=177,z=2142,distance=..5,tag=!ItemLoot519] run give @s cobblemon:quick_ball
execute as @s[x=2304,y=177,z=2142,distance=..5,tag=!ItemLoot519] run tellraw @s {"text":"You found a Quick Ball!","italic":true,"color":"gray"}
execute as @s[x=2304,y=177,z=2142,distance=..5,tag=!ItemLoot519] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=2304,y=177,z=2142,distance=..5,tag=!ItemLoot519] run tag @s add ItemLoot519

execute as @s[x=2237,y=175,z=2224,distance=..5,tag=ItemLoot521] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=2237,y=175,z=2224,distance=..5,tag=!ItemLoot521] run give @s cobblemon:zinc
execute as @s[x=2237,y=175,z=2224,distance=..5,tag=!ItemLoot521] run tellraw @s {"text":"You found Zinc!","italic":true,"color":"gray"}
execute as @s[x=2237,y=175,z=2224,distance=..5,tag=!ItemLoot521] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=2237,y=175,z=2224,distance=..5,tag=!ItemLoot521] run tag @s add ItemLoot521

execute as @s[x=2348,y=190,z=2275,distance=..5,tag=ItemLoot522] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=2348,y=190,z=2275,distance=..5,tag=!ItemLoot522] run scoreboard players add @s Money 500
execute as @s[x=2348,y=190,z=2275,distance=..5,tag=!ItemLoot522] run tellraw @s {"text":"You recieved $500!","italic":true,"color":"gray"}
execute as @s[x=2348,y=190,z=2275,distance=..5,tag=!ItemLoot522] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=2348,y=190,z=2275,distance=..5,tag=!ItemLoot522] run tag @s add ItemLoot522

execute as @s[x=2383,y=190,z=2216,distance=..5,tag=ItemLoot523] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=2383,y=190,z=2216,distance=..5,tag=!ItemLoot523] run give @s cobblemon:max_elixir
execute as @s[x=2383,y=190,z=2216,distance=..5,tag=!ItemLoot523] run tellraw @s {"text":"You found a Max Elixir!","italic":true,"color":"gray"}
execute as @s[x=2383,y=190,z=2216,distance=..5,tag=!ItemLoot523] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=2383,y=190,z=2216,distance=..5,tag=!ItemLoot523] run tag @s add ItemLoot523

execute as @s[x=1826,y=82,z=1409,distance=..5,tag=ItemLoot524] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1826,y=82,z=1409,distance=..5,tag=!ItemLoot524] run function kalos:spawn/escaperope
execute as @s[x=1826,y=82,z=1409,distance=..5,tag=!ItemLoot524] run tellraw @s {"text":"You found an Escape Rope!","italic":true,"color":"gray"}
execute as @s[x=1826,y=82,z=1409,distance=..5,tag=!ItemLoot524] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1826,y=82,z=1409,distance=..5,tag=!ItemLoot524] run tag @s add ItemLoot524

execute as @s[x=1955,y=82,z=1442,distance=..5,tag=ItemLoot526] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1955,y=82,z=1442,distance=..5,tag=!ItemLoot526] run give @s cobblemon:dragon_fang
execute as @s[x=1955,y=82,z=1442,distance=..5,tag=!ItemLoot526] run tellraw @s {"text":"You found a Dragon Fang!","italic":true,"color":"gray"}
execute as @s[x=1955,y=82,z=1442,distance=..5,tag=!ItemLoot526] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1955,y=82,z=1442,distance=..5,tag=!ItemLoot526] run tag @s add ItemLoot526

execute as @s[x=1954,y=92,z=1518,distance=..5,tag=ItemLoot527] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1954,y=92,z=1518,distance=..5,tag=!ItemLoot527] run give @s cobblemon:full_restore
execute as @s[x=1954,y=92,z=1518,distance=..5,tag=!ItemLoot527] run tellraw @s {"text":"You found a Full Restore!","italic":true,"color":"gray"}
execute as @s[x=1954,y=92,z=1518,distance=..5,tag=!ItemLoot527] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1954,y=92,z=1518,distance=..5,tag=!ItemLoot527] run tag @s add ItemLoot527

execute as @s[x=1728,y=175,z=2306,distance=..5,tag=ItemLoot528] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1728,y=175,z=2306,distance=..5,tag=!ItemLoot528] run give @s cobblemon:x_defence
execute as @s[x=1728,y=175,z=2306,distance=..5,tag=!ItemLoot528] run tellraw @s {"text":"You found an X Defence!","italic":true,"color":"gray"}
execute as @s[x=1728,y=175,z=2306,distance=..5,tag=!ItemLoot528] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1728,y=175,z=2306,distance=..5,tag=!ItemLoot528] run tag @s add ItemLoot528

execute as @s[x=1748,y=190,z=2189,distance=..5,tag=ItemLoot530] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1748,y=190,z=2189,distance=..5,tag=!ItemLoot530] run give @s cobblemon:max_ether
execute as @s[x=1748,y=190,z=2189,distance=..5,tag=!ItemLoot530] run tellraw @s {"text":"You found a Max Ether!","italic":true,"color":"gray"}
execute as @s[x=1748,y=190,z=2189,distance=..5,tag=!ItemLoot530] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1748,y=190,z=2189,distance=..5,tag=!ItemLoot530] run tag @s add ItemLoot530

execute as @s[x=1599,y=96,z=1413,distance=..5,tag=ItemLoot531] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1599,y=96,z=1413,distance=..5,tag=!ItemLoot531] run scoreboard players add @s Money 6000
execute as @s[x=1599,y=96,z=1413,distance=..5,tag=!ItemLoot531] run tellraw @s {"text":"You recieved $6,000!","italic":true,"color":"gray"}
execute as @s[x=1599,y=96,z=1413,distance=..5,tag=!ItemLoot531] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1599,y=96,z=1413,distance=..5,tag=!ItemLoot531] run tag @s add ItemLoot531

execute as @s[x=933,y=105,z=1663,distance=..5,tag=ItemLoot532] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=933,y=105,z=1663,distance=..5,tag=!ItemLoot532] run give @s cobblemon:max_revive
execute as @s[x=933,y=105,z=1663,distance=..5,tag=!ItemLoot532] run tellraw @s {"text":"You found a Max Revive!","italic":true,"color":"gray"}
execute as @s[x=933,y=105,z=1663,distance=..5,tag=!ItemLoot532] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=933,y=105,z=1663,distance=..5,tag=!ItemLoot532] run tag @s add ItemLoot532

execute as @s[x=1132,y=81,z=1649,distance=..5,tag=ItemLoot534] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1132,y=81,z=1649,distance=..5,tag=!ItemLoot534] run give @s cobblemon:revive
execute as @s[x=1132,y=81,z=1649,distance=..5,tag=!ItemLoot534] run tellraw @s {"text":"You found a Revive!","italic":true,"color":"gray"}
execute as @s[x=1132,y=81,z=1649,distance=..5,tag=!ItemLoot534] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1132,y=81,z=1649,distance=..5,tag=!ItemLoot534] run tag @s add ItemLoot534

execute as @s[x=1304,y=108,z=1586,distance=..5,tag=ItemLoot536] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1304,y=108,z=1586,distance=..5,tag=!ItemLoot536] run scoreboard players add @s Money 5000
execute as @s[x=1304,y=108,z=1586,distance=..5,tag=!ItemLoot536] run tellraw @s {"text":"You recieved $5,000!","italic":true,"color":"gray"}
execute as @s[x=1304,y=108,z=1586,distance=..5,tag=!ItemLoot536] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1304,y=108,z=1586,distance=..5,tag=!ItemLoot536] run tag @s add ItemLoot536

execute as @s[x=1173,y=67,z=1527,distance=..5,tag=ItemLoot538] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1173,y=67,z=1527,distance=..5,tag=!ItemLoot538] run give @s mega_showdown:dna_splicer
execute as @s[x=1173,y=67,z=1527,distance=..5,tag=!ItemLoot538] run tellraw @s {"text":"You recieved DNA Splicers!","italic":true,"color":"gray"}
execute as @s[x=1173,y=67,z=1527,distance=..5,tag=!ItemLoot538] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1173,y=67,z=1527,distance=..5,tag=!ItemLoot538] run tag @s add ItemLoot538

execute as @s[x=1238,y=114,z=1530,distance=..5,tag=ItemLoot539] run tellraw @s {"text":"You've already claimed this loot!","italic":true,"color":"gray"}
execute as @s[x=1238,y=114,z=1530,distance=..5,tag=!ItemLoot539] run give @s cobblemon:pp_up
execute as @s[x=1238,y=114,z=1530,distance=..5,tag=!ItemLoot539] run tellraw @s {"text":"You found a PP Up!","italic":true,"color":"gray"}
execute as @s[x=1238,y=114,z=1530,distance=..5,tag=!ItemLoot539] run playsound itemget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1238,y=114,z=1530,distance=..5,tag=!ItemLoot539] run tag @s add ItemLoot539

































advancement revoke @s only kalos:click/itemclick
tag @s remove ItemLoot


#