#Commands that control where the player can and can't go and when due to story checks


#Aquacorde pre-starter
tellraw @s[x=460,y=101,z=1361,dx=20,dy=10,dz=15,scores={StarterPick=0}] ["",{"text":"<"},{"text":"Serena","color":"gold"},{"text":"> "},{"selector":"@s"},{"text":"! This way! Over here!"}]
execute as @s[x=460,y=101,z=1361,dx=20,dy=10,dz=15,scores={StarterPick=0}] at @s run tp @s ~ 108 ~10

#Aquacorde Mom's Letter
tellraw @s[x=460,y=101,z=1361,dx=20,dy=10,dz=15,tag=!Dialogue7,scores={StarterPick=1..}] {"text":"You still need to run the Prof's Letter to mom!","italic":true,"color":"gray"}
execute as @s[x=460,y=101,z=1361,dx=20,dy=10,dz=15,tag=!Dialogue7,scores={StarterPick=1..}] at @s run tp @s ~ 108 ~10

#Alexa blocking Route 4 until Viola is beaten
execute as @s[x=165,y=99,z=375,dx=28,dy=10,dz=14,tag=!Dialogue10,tag=!Viola] run opendialogue alexa_block @s
execute as @s[x=165,y=99,z=375,dx=28,dy=10,dz=14,tag=!Viola] at @s run tp @s ~ ~ ~10

#Victory Road & Route 21 Ace Trainer Block
execute as @s[x=718,y=103,z=399,dx=9,dy=10,dz=16,tag=!FlySnowbelle] run opendialogue route21_block @s
execute as @s[x=718,y=103,z=399,dx=9,dy=10,dz=16,tag=!FlySnowbelle] at @s run tp @s ~-10 105 ~

#Victory Road Gate Ace Trainer Robbie block entering Victory Road
execute as @s[x=686,y=106,z=388,dx=16,dy=9,dz=8,tag=!Dialogue145] run opendialogue route22_acetrainerm_interaction @s
execute as @s[x=686,y=106,z=388,dx=16,dy=9,dz=8,tag=!Dialogue145] at @s run tp @s ~ ~ ~10

#----------------

#Lumisose Blackout Southern Blvd
execute as @s[x=64,y=101,z=-287,dx=75,dy=10,dz=20,tag=!LumiosePower] run opendialogue lumiose_power_block @s
execute as @s[x=64,y=101,z=-287,dx=75,dy=10,dz=20,tag=!LumiosePower] at @s run tp @s ~-9 ~ ~10

#Vert Plaza Blackout
execute as @s[x=-30,y=101,z=-181,distance=..10,tag=!LumiosePower] run opendialogue lumiose_power_block @s
execute as @s[x=-30,y=101,z=-181,distance=..10,tag=!LumiosePower] at @s run tp @s ~8 ~ ~10

#Vernal Ave
execute as @s[x=-204,y=100,z=-149,dx=46,dy=10,dz=20,tag=!LumiosePower] run opendialogue lumiose_power_block @s
execute as @s[x=-204,y=100,z=-149,dx=46,dy=10,dz=20,tag=!LumiosePower] at @s run tp @s ~ ~ ~10

#Bleu Plaz
execute as @s[x=-331,y=101,z=-183,distance=..10,tag=!LumiosePower] run opendialogue lumiose_power_block @s
execute as @s[x=-331,y=101,z=-183,distance=..10,tag=!LumiosePower] at @s run tp @s ~-8 ~ ~10

#Northern Blvd
execute as @s[x=-504,y=100,z=-437,dx=62,dy=10,dz=27,tag=!LumiosePower] run opendialogue lumiose_power_block @s
execute as @s[x=-504,y=100,z=-437,dx=62,dy=10,dz=27,tag=!LumiosePower] at @s run tp @s ~ ~ ~10

#Estival
execute as @s[x=-427,y=100,z=-335,dx=11,dy=10,dz=49,tag=!LumiosePower] run opendialogue lumiose_power_block @s
execute as @s[x=-427,y=100,z=-335,dx=11,dy=10,dz=49,tag=!LumiosePower] at @s run tp @s ~-10 ~ ~10

#Magenta Plaza
execute as @s[x=-321,y=101,z=-399,distance=..10,tag=!LumiosePower] run opendialogue lumiose_power_block @s
execute as @s[x=-321,y=101,z=-399,distance=..10,tag=!LumiosePower] at @s run tp @s ~-5 ~ ~-10

#Autumnal Ave
execute as @s[x=-282,y=101,z=-484,distance=..10,tag=!LumiosePower] run opendialogue lumiose_power_block @s
execute as @s[x=-282,y=101,z=-484,distance=..10,tag=!LumiosePower] at @s run tp @s ~-6 ~ ~5

#Northn Blvd to Shauna
tellraw @s[x=-489,y=100,z=-520,dx=69,dy=6,dz=15,tag=!LumiosePower] ["",{"text":"<"},{"text":"Shauna","color":"light_purple"},{"text":"> Hey! What are you doing? Let\u2019s go see Prism Tower!"}]
tp @s[x=-489,y=100,z=-520,dx=69,dy=6,dz=15,tag=!LumiosePower] -454 101 -492 -36 ~

tellraw @s[x=-502,y=100,z=-463,dx=60,dy=6,dz=10,tag=!LumiosePower] ["",{"text":"<"},{"text":"Shauna","color":"light_purple"},{"text":"> Hey! What are you doing? Let\u2019s go see Prism Tower!"}]
execute as @s[x=-502,y=100,z=-463,dx=60,dy=6,dz=10,tag=!LumiosePower] at @s run tp @s ~ ~ ~-10


#Camphrier Town West Block until seeing castle
execute as @s[x=-1159,y=99,z=-44,dx=12,dy=10,dz=19,tag=!Dialogue27] run opendialogue camphrier_block @s
execute as @s[x=-1159,y=99,z=-44,dx=12,dy=10,dz=19,tag=!Dialogue27] at @s run tp @s ~10 ~ ~

#Santalune, Viola's Gym if player falls
execute as @s[x=-1993,y=100,z=-1918,dx=112,dy=10,dz=112] run tp @s -1937 115 -1847

#
#Route 7, Route 6 block before Snorlax talk
tellraw @s[x=-1207,y=100,z=-55,dx=31,dy=10,dz=11,tag=!Dialogue28] ["",{"text":"<"},{"text":"Shauna","color":"light_purple"},{"text":"> "},{"selector":"@s"},{"text":"! They said they were going this way!"}]
execute as @s[x=-1207,y=100,z=-55,dx=31,dy=10,dz=11,tag=!Dialogue28] at @s run tp @s ~ ~ ~10

#Ambrette Talk to Fossil Lab
tellraw @s[x=-1908,y=140,z=618,dx=10,dy=10,dz=14,tag=!Dialogue39] ["",{"text":"<"},{"text":"Serena","color":"gold"},{"text":"> Hey "},{"selector":"@s"},{"text":"! The Fossil Lab is this way!"}]
execute as @s[x=-1908,y=140,z=618,dx=10,dy=10,dz=14,tag=!Dialogue39] at @s run tp @s ~-10 ~ ~

#Glittering Cave first Team Flare grunt pulling player back
tellraw @s[x=-1423,y=147,z=309,dx=10,dy=5,dz=4,tag=!Dialogue41] {"text":"<???> Get back here!"}
execute as @s[x=-1423,y=147,z=309,dx=10,dy=5,dz=4,tag=!Dialogue41] at @s run tp @s ~-7 ~ ~

#Glittering Cave Double Flare block
execute as @s[x=-1442,y=147,z=269,dx=6,dy=5,dz=8,tag=!Dialogue43] at @s run tp @s ~6 ~ ~

#Route 8 Pre-Fossil block
tellraw @s[x=-2234,y=83,z=337,dx=283,dy=30,dz=5,tag=!Dialogue44] {"text":"<...> W-w-wait! Stop! I dropped the Fossil I was taking to the Fossil Lab in Ambrette Town. I\u2019m really sorry, but could you wait a little bit until I find it?"}
tp @s[x=-2234,y=83,z=337,dx=283,dy=30,dz=5,tag=!Dialogue44] -1971 100 355 ~ ~

#Resets specific Connecting Cave Cyllage side boulder to prevent story bypassing
execute if entity @a[x=-1790,y=48,z=35,distance=..30,tag=!Dialogue45] run execute positioned -1790 44 35 run function kalos:spawn/strengthrock
execute if entity @a[x=-1790,y=48,z=35,distance=..30,tag=!Dialogue45] run fill -1787 42 33 -1783 43 37 air

#Geosenge Town Battle Korrina to continue
tellraw @s[x=-2088,y=103,z=-703,dx=10,dy=10,dz=26,tag=!Dialogue54] ["",{"text":"<Korrina> Hey "},{"selector":"@s"},{"text":", come here a second!"}]
execute as @s[x=-2088,y=103,z=-703,dx=10,dy=10,dz=26,tag=!Dialogue54] at @s run tp @s ~-10 ~ ~

#Shalour City Hiker directing to Trevor and Tierno
tellraw @s[x=-1578,y=80,z=-853,dx=13,dy=12,dz=8,tag=!Dialogue56] {"text":"<Hiker> I\u2019m really sorry, but I\u2019m looking for something."}
execute as @s[x=-1578,y=80,z=-853,dx=13,dy=12,dz=8,tag=!Dialogue56] at @s run tp @s ~ ~ ~10

#Shalour Gym spawn in gym guy blocking
execute as @s[x=-1770,y=84,z=-898,distance=..30,tag=!Dialogue61] unless entity @e[x=-1770,y=85,z=-898,dy=3,type=cobblemon:npc] run npcspawnat -1770 85 -898 gymguy_shalour
execute as @s[x=-1770,y=84,z=-898,distance=..30,tag=Dialogue61] run tp @e[x=-1770,y=85,z=-898,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000

#Route 14 Defeat Serena to continue
tellraw @s[x=-193,y=99,z=-933,dx=18,dy=10,dz=11,tag=!Dialogue81] ["",{"text":"<"},{"text":"Serena","color":"gold"},{"text":"> Over here!"}]
execute as @s[x=-193,y=99,z=-933,dx=18,dy=10,dz=11,tag=!Dialogue81] at @s run tp @s ~ ~ ~10

#Route 14 visit Scary House
tellraw @s[x=-195,y=99,z=-1243,dx=23,dy=5,dz=15,tag=!Dialogue84] ["",{"text":"<"},{"text":"Shauna","color":"light_purple"},{"text":"> C'mon! This way!"}]
execute as @s[x=-195,y=99,z=-1243,dx=23,dy=5,dz=15,tag=!Dialogue84] at @s run tp @s ~ ~ ~10

#Poke Ball Factory Flare Guard blocking entrance
execute as @s[x=-155,y=125,z=-1715,distance=..30,tag=!Dialogue86] unless entity @e[x=-158,y=124,z=-1771,dy=3,type=cobblemon:npc] run npcspawnat -158 125 -1771 flare_ballfactory_block
execute as @s[x=-155,y=125,z=-1715,distance=..30,tag=Dialogue86] run tp @e[x=-158,y=124,z=-1771,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000

#Laverre Route 15 Gate Flare Block
execute as @s[x=-27,y=100,z=-1353,distance=..30,tag=!Dialogue90] unless entity @e[x=41,y=100,z=-1357,dy=3,type=cobblemon:npc] run npcspawnat 41 100 -1357 flare_laverre_block
execute as @s[x=-27,y=100,z=-1353,distance=..30,tag=!Dialogue90] unless entity @e[x=41,y=100,z=-1349,dy=3,type=cobblemon:npc] run npcspawnat 41 100 -1349 flare_laverre_block
execute as @s[x=-27,y=100,z=-1353,distance=..30,tag=Dialogue90] run tp @e[x=41,y=100,z=-1357,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @s[x=-27,y=100,z=-1353,distance=..30,tag=Dialogue90] run tp @e[x=41,y=100,z=-1349,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000


#Anistar City South Exit
execute as @s[x=1342,y=107,z=-122,dx=14,dy=6,dz=15,tag=!Dialogue133] run opendialogue anistar_exitblocked @s
execute as @s[x=1342,y=107,z=-122,dx=14,dy=6,dz=15,tag=!Dialogue133] at @s run tp @s ~ ~ ~-10

#Route 19 Defeat Friends
tellraw @s[x=1404,y=99,z=489,dx=15,dy=10,dz=6,tag=!Dialogue140] {"text":"Battle your friends on the bridge!","italic":true,"color":"gray"}
execute as @s[x=1404,y=99,z=489,dx=15,dy=10,dz=6,tag=!Dialogue140] at @s run tp @s ~10 ~ ~

##Terminus Cave block Zygarde before Champion
#tellraw @s[x=2023,y=41,z=-100,dx=12,dy=20,dz=5,scores={PokemonLeague=0}] {"text":"<Ace Trainer> It must be dangerous to go further ahead unless you're as strong as the Champion."}
#tp @s[x=2023,y=41,z=-100,dx=12,dy=20,dz=5,scores={PokemonLeague=0}] 2043 41 -98

#Geosenge Town Eastern block until talk with Team Flare grunt twice
execute as @s[x=-2116,y=103,z=-702,dx=10,dy=10,dz=23,tag=!Dialogue52] at @s run tp @s ~-10 ~ ~
execute as @s[x=-2124,y=104,z=-691,distance=..20,tag=!Dialogue52] unless entity @e[x=-2116,y=104,z=-698,dy=3,type=cobblemon:npc] run npcspawnat -2116 104 -698 geosenge_backpacker
execute as @s[x=-2124,y=104,z=-691,distance=..20,tag=!Dialogue52] unless entity @e[x=-2116,y=104,z=-696,dy=3,type=cobblemon:npc] run npcspawnat -2116 104 -696 geosenge_backpacker2
execute as @s[x=-2124,y=104,z=-691,distance=..20,tag=!Dialogue52] unless entity @e[x=-2116,y=104,z=-694,dy=3,type=cobblemon:npc] run npcspawnat -2116 104 -694 geosenge_backpacker3
execute as @s[x=-2124,y=104,z=-691,distance=..20,tag=!Dialogue52] unless entity @e[x=-2116,y=104,z=-692,dy=3,type=cobblemon:npc] run npcspawnat -2116 104 -692 geosenge_backpacker4
execute as @s[x=-2124,y=104,z=-691,distance=..20,tag=!Dialogue52] unless entity @e[x=-2116,y=104,z=-689,dy=3,type=cobblemon:npc] run npcspawnat -2116 104 -689 geosenge_backpacker5
execute as @s[x=-2124,y=104,z=-691,distance=..20,tag=!Dialogue52] unless entity @e[x=-2116,y=104,z=-687,dy=3,type=cobblemon:npc] run npcspawnat -2116 104 -687 geosenge_backpacker6
execute as @s[x=-2124,y=104,z=-691,distance=..20,tag=!Dialogue52] unless entity @e[x=-2116,y=104,z=-685,dy=3,type=cobblemon:npc] run npcspawnat -2116 104 -685 geosenge_backpacker7
execute as @s[x=-2124,y=104,z=-691,distance=..20,tag=!Dialogue52] unless entity @e[x=-2116,y=104,z=-683,dy=3,type=cobblemon:npc] run npcspawnat -2116 104 -683 geosenge_backpacker8
execute as @s[x=-2124,y=104,z=-691,distance=..20,tag=!Dialogue52] unless entity @e[x=-2120,y=104,z=-690,dy=3,type=cobblemon:npc] run npcspawnat -2120 104 -690.0 geosenge_pokemonranger2
#execute as @s[x=-2124,y=104,z=-691,distance=..20,tag=!Dialogue52] at @s run tp @s[x=-2116,y=103,z=-702,dx=10,dy=10,dz=23,tag=!Dialogue52] ~-10 ~ ~

execute as @s[x=-2175,y=104,z=-691,distance=..30,tag=Dialogue52] run tp @e[x=-2120,y=103,z=-691,dy=3,dz=1,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @s[x=-2175,y=104,z=-691,distance=..30,tag=Dialogue52] run tp @e[x=-2116,y=103,z=-699,dy=3,dz=17,type=cobblemon:npc] 10000000 -50000 -10000000

#Route 12 block until beaten Successor battle
tellraw @s[x=-1448,y=70,z=-814,dx=9,dy=12,dz=8,tag=!Dialogue64] {"text":"<Poke Breeder> Hey, Trainer! Not a good idea to leave the city when you still have pending matters with Korrina."}
execute as @s[x=-1448,y=70,z=-814,dx=9,dy=12,dz=8,tag=!Dialogue64] at @s run tp @s ~-10 80 ~

#Route 13 stairs to Lumiose blocked while Flare occupied Power Plant
execute as @s[x=-728,y=102,z=-474,dx=10,dy=10,dz=12,tag=!Dialogue75] run opendialogue route13_worker_interaction @s
execute as @s[x=-728,y=102,z=-474,dx=10,dy=10,dz=12,tag=!Dialogue75] at @s run tp @s ~-10 ~ ~

#Power Plant Doors
execute as @p[x=-817,y=104,z=-304,distance=..10,tag=PowerPlantPass] run setblock -817 103 -303 minecraft:redstone_torch
execute as @p[x=-817,y=104,z=-304,distance=..10,tag=PowerPlantPass] run setblock -817 103 -304 minecraft:redstone_torch

execute as @p[x=-817,y=104,z=-304,distance=..30,tag=!PowerPlantPass] run setblock -817 103 -303 minecraft:air
execute as @p[x=-817,y=104,z=-304,distance=..30,tag=!PowerPlantPass] run setblock -817 103 -304 minecraft:air

#Power Plant before defeating first Flare Grunt
#tellraw @s[x=-981,y=53,z=-340,dx=7,dy=8,dz=5,tag=!Dialogue72] {"text":"Defeat the Team Flare Grunts!","italic":true,"color":"gray"}
#execute as @s[x=-981,y=53,z=-340,dx=7,dy=8,dz=5,tag=!Dialogue72] at @s run tp @s ~10 ~ ~

#Power Plant blocking right path of generator room
tellraw @s[x=-984,y=53,z=-352,dx=5,dy=5,dz=3,tag=!Dialogue75] ["",{"text":"<Team Flare Grunt> ","color":"white"},{"text":"Now I\u2019m mad! I told you I was persistent! I refuse to budge from this spot! Not an inch!"}]
execute as @s[x=-984,y=53,z=-352,dx=5,dy=5,dz=3,tag=!Dialogue75] at @s run tp @s ~ ~ ~7

#Lysandre Labs Nix blocking the way until after battle
execute as @s[x=-305,y=28,z=318,dx=20,dy=5,dz=10,tag=!Dialogue200] at @s run tp @s -297 29 331

#Flare HQ Battle Lysandre to exit lobby
tellraw @s[x=-2372,y=69,z=-987,dx=13,dy=5,dz=4,tag=!Dialogue123] {"text":"Defeat Lysandre!","italic":true,"color":"gray"}
execute as @s[x=-2372,y=69,z=-987,dx=13,dy=5,dz=4,tag=!Dialogue123] at @s run tp @s ~10 ~ ~

#Geosenge version portal managers

#C-K
tp @s[x=-2130,y=103,z=-702,dx=14,dy=10,dz=23,scores={Geosenge=2}] -317 109 2030

#A-I
tp @s[x=-2224,y=103,z=-612,dx=26,dy=10,dz=13,scores={Geosenge=2}] -411 109 2118

#J-B
tp @s[x=-423,y=108,z=2123,dx=25,dy=10,dz=15,scores={Geosenge=2}] -2210 104 -593

#L-D
tp @s[x=-314,y=108,z=2018,dx=18,dy=10,dz=23,scores={Geosenge=2}] -2112 104 -690

#C-G
tp @s[x=-2130,y=103,z=-702,dx=14,dy=10,dz=23,scores={Geosenge=1}] -1040 109 2030

#A-E
tp @s[x=-2224,y=103,z=-612,dx=26,dy=10,dz=13,scores={Geosenge=1}] -1131 109 2117

#F-B
tp @s[x=-1143,y=108,z=2123,dx=25,dy=10,dz=15,scores={Geosenge=1}] -2210 104 -593

#H-D
tp @s[x=-1034,y=108,z=2018,dx=18,dy=10,dz=23,scores={Geosenge=1}] -2112 104 -690


#---------------------------------------------------------
#Surf Blocks

#Route 3
execute as @s[x=327,y=95,z=664,dx=36,dy=10,dz=45,tag=!Surf] at @s if block ~ ~ ~ water run tellraw @s {"text":"This area requires Surf to traverse!","italic":true,"color":"gray"}
execute as @s[x=327,y=95,z=664,dx=36,dy=10,dz=45,tag=!Surf] at @s if block ~ ~ ~ water run tp @s 372.78 100.00 686.01 86.60 10.05

#Route 8, Cyllage and Ambrette, North to South
execute as @s[x=-2237,y=83,z=-21,dx=215,dy=16,dz=69,tag=!Surf] at @s if block ~ ~ ~ water run tellraw @s {"text":"This area requires Surf to traverse!","italic":true,"color":"gray"}
execute as @s[x=-2237,y=83,z=-21,dx=215,dy=16,dz=69,tag=!Surf] at @s if block ~ ~ ~ water run tp @s -2065.30 100.00 9.19 74.60 7.20

execute as @s[x=-2165,y=83,z=49,dx=143,dy=16,dz=55,tag=!Surf] at @s if block ~ ~ ~ water run tellraw @s {"text":"This area requires Surf to traverse!","italic":true,"color":"gray"}
execute as @s[x=-2165,y=83,z=49,dx=143,dy=16,dz=55,tag=!Surf] at @s if block ~ ~ ~ water run tp @s -2022.46 100.00 83.99 122.30 9.45

execute as @s[x=-2114,y=83,z=105,dx=161,dy=16,dz=99,tag=!Surf] at @s if block ~ ~ ~ water run tellraw @s {"text":"This area requires Surf to traverse!","italic":true,"color":"gray"}
execute as @s[x=-2114,y=83,z=105,dx=161,dy=16,dz=99,tag=!Surf] at @s if block ~ ~ ~ water run tp @s -2041.96 100.00 138.39 64.85 12.90

execute as @s[x=-2114,y=83,z=205,dx=161,dy=16,dz=112,tag=!Surf] at @s if block ~ ~ ~ water run tellraw @s {"text":"This area requires Surf to traverse!","italic":true,"color":"gray"}
execute as @s[x=-2114,y=83,z=205,dx=161,dy=16,dz=112,tag=!Surf] at @s if block ~ ~ ~ water run tp @s -2009.46 100.00 247.96 49.40 13.65

execute as @s[x=-2114,y=83,z=318,dx=161,dy=16,dz=85,tag=!Surf] at @s if block ~ ~ ~ water run tellraw @s {"text":"This area requires Surf to traverse!","italic":true,"color":"gray"}
execute as @s[x=-2114,y=83,z=318,dx=161,dy=16,dz=85,tag=!Surf] at @s if block ~ ~ ~ water run tp @s -2027.28 100.00 366.47 204.20 9.90

execute as @s[x=-2114,y=83,z=404,dx=161,dy=16,dz=86,tag=!Surf] at @s if block ~ ~ ~ water run tellraw @s {"text":"This area requires Surf to traverse!","italic":true,"color":"gray"}
execute as @s[x=-2114,y=83,z=404,dx=161,dy=16,dz=86,tag=!Surf] at @s if block ~ ~ ~ water run tp @s -2025.12 100.00 437.54 74.60 12.00

execute as @s[x=-2114,y=83,z=491,dx=161,dy=16,dz=166,tag=!Surf] at @s if block ~ ~ ~ water run tellraw @s {"text":"This area requires Surf to traverse!","italic":true,"color":"gray"}
execute as @s[x=-2114,y=83,z=491,dx=161,dy=16,dz=166,tag=!Surf] at @s if block ~ ~ ~ water run tp @s -2071.91 100.00 577.74 39.65 10.35

execute as @s[x=-2114,y=83,z=658,dx=161,dy=16,dz=98,tag=!Surf] at @s if block ~ ~ ~ water run tellraw @s {"text":"This area requires Surf to traverse!","italic":true,"color":"gray"}
execute as @s[x=-2114,y=83,z=658,dx=161,dy=16,dz=98,tag=!Surf] at @s if block ~ ~ ~ water run tp @s -2006.74 100.00 720.10 53.45 11.85


#Tower of Mastery
execute as @s[x=-1788,y=65,z=-1037,dx=130,dy=9,dz=52,tag=!Surf] at @s if block ~ ~ ~ water run tellraw @s {"text":"This area requires Surf to traverse!","italic":true,"color":"gray"}
execute as @s[x=-1788,y=65,z=-1037,dx=130,dy=9,dz=52,tag=!Surf] at @s if block ~ ~ ~ water run tp @s -1696.94 76.00 -1023.18 -372.70 11.10

execute as @s[x=-1788,y=65,z=-984,dx=130,dy=9,dz=51,tag=!Surf] at @s if block ~ ~ ~ water run tellraw @s {"text":"This area requires Surf to traverse!","italic":true,"color":"gray"}
execute as @s[x=-1788,y=65,z=-984,dx=130,dy=9,dz=51,tag=!Surf] at @s if block ~ ~ ~ water run tp @s -1667.54 76.00 -951.76 -238.15 10.35

execute as @s[x=-1657,y=65,z=-1036,dx=61,dy=9,dz=52,tag=!Surf] at @s if block ~ ~ ~ water run tellraw @s {"text":"This area requires Surf to traverse!","italic":true,"color":"gray"}
execute as @s[x=-1657,y=65,z=-1036,dx=61,dy=9,dz=52,tag=!Surf] at @s if block ~ ~ ~ water run tp @s -1643.61 76.00 -1018.71 -42.10 9.15

execute as @s[x=-1657,y=65,z=-984,dx=61,dy=9,dz=51,tag=!Surf] at @s if block ~ ~ ~ water run tellraw @s {"text":"This area requires Surf to traverse!","italic":true,"color":"gray"}
execute as @s[x=-1657,y=65,z=-984,dx=61,dy=9,dz=51,tag=!Surf] at @s if block ~ ~ ~ water run tp @s -1636.04 76.00 -944.59 -143.95 8.40


#Route 12 block pre-Surf
tellraw @s[x=-1423,y=71,z=-850,dx=20,dy=20,dz=41,tag=!Korrina] {"text":"You need the Rumble Badge to use Surf outside of battle!","italic":true,"color":"gray"}
tp @s[x=-1423,y=71,z=-850,dx=20,dy=20,dz=41,tag=!Korrina] -1440 76 -809

#Route 12 block Surf
tellraw @s[x=-1418,y=71,z=-807,dx=10,dy=20,dz=20,tag=!Korrina] {"text":"You need the Rumble Badge to use Surf outside of battle!","italic":true,"color":"gray"}
tp @s[x=-1418,y=71,z=-807,dx=10,dy=20,dz=20,tag=!Korrina] -1440 76 -809

#Route 22 block Surf
tellraw @s[x=523,y=96,z=438,dx=40,dy=3,dz=15,tag=!Korrina] {"text":"You need the Rumble Badge to use Surf outside of battle!","italic":true,"color":"gray"}
tp @s[x=523,y=96,z=438,dx=40,dy=3,dz=15,tag=!Korrina] 543 100 432



















#