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


#
#Route 7, Route 6 block before Snorlax talk
tellraw @s[x=-1207,y=100,z=-55,dx=31,dy=10,dz=11,tag=!Dialogue28] ["",{"text":"<"},{"text":"Shauna","color":"light_purple"},{"text":"> "},{"selector":"@p[x=-1207,y=100,z=-55,dx=31,dy=10,dz=11,tag=!Dialogue28]"},{"text":"! They said they were going this way!"}]
execute as @s[x=-1207,y=100,z=-55,dx=31,dy=10,dz=11,tag=!Dialogue28] at @s run tp @s ~ ~ ~10

#Ambrette Talk to Fossil Lab
tellraw @s[x=-1908,y=140,z=618,dx=10,dy=10,dz=14,tag=!Dialogue39] ["",{"text":"<"},{"text":"Serena","color":"gold"},{"text":"> Hey "},{"selector":"@s[x=-1908,y=140,z=618,dx=10,dy=10,dz=14,score_TalkTime=0,tag=!Dialogue39]"},{"text":"! The Fossil Lab is this way!"}]
execute as @s[x=-1908,y=140,z=618,dx=10,dy=10,dz=14,tag=!Dialogue39] at @s run tp @s ~-10 ~ ~

#Glittering Cave first Team Flare grunt pulling player back
tellraw @s[x=-1423,y=147,z=309,dx=10,dy=5,dz=4,tag=!Dialogue41] {"text":"<???> Get back here!"}
execute as @s[x=-1423,y=147,z=309,dx=10,dy=5,dz=4,tag=!Dialogue41] at @s run tp @s ~-7 ~ ~

#Glittering Cave Double Flare block
execute as @s[x=-1442,y=147,z=269,dx=6,dy=5,dz=8,tag=!Dialogue43] at @s run tp @s ~6 ~ ~

##Route 8 Pre-Fossil block
#tellraw @s[x=-2234,y=83,z=337,dx=283,dy=30,dz=5,tag=!Dialogue44] {"text":"<...> W-w-wait! Stop! I dropped the Fossil I was taking to the Fossil Lab in Ambrette Town. I\u2019m really sorry, but could you wait a little bit until I find it?"}
#tp @s[x=-2234,y=83,z=337,dx=283,dy=30,dz=5,tag=!Dialogue44] -1971 100 355 ~ ~
#
##Geosenge Town Battle Korrina to continue
#tellraw @s[x=-2088,y=103,z=-703,dx=10,dy=10,dz=26,tag=!Dialogue54] {"text":"Win against Korrina to continue!","italic":true,"color":"gray"}
#execute as @s[x=-2088,y=103,z=-703,dx=10,dy=10,dz=26,tag=!Dialogue54] at @s run tp @s ~-10 ~ ~
#
##Shalour City Hiker directing to Trevor and Tierno
#tellraw @s[x=-1578,y=80,z=-853,dx=13,dy=12,dz=8,tag=!Dialogue56] {"text":"<Hiker> I\u2019m really sorry, but I\u2019m looking for something."}
#execute as @s[x=-1578,y=80,z=-853,dx=13,dy=12,dz=8,tag=!Dialogue56] at @s run tp @s ~ ~ ~10
#
##Tower of Mastery pre-Korrina gym
#tellraw @s[x=-1705,y=96,z=-1202,dx=13,dy=10,dz=10,tag=!Korrina] {"text":"<Tower Guard> Only those who have been approved may climb the Tower of Mastery!"}
#tp @s[x=-1705,y=96,z=-1202,dx=13,dy=10,dz=10,tag=!Korrina] -1692 93 -1207
#
##Route 14 Defeat Serena to continue
#tellraw @s[x=-193,y=99,z=-933,dx=18,dy=10,dz=11,tag=!Dialogue81] ["",{"text":"<"},{"text":"Serena","color":"gold"},{"text":"> Come on! Let's battle."}]
#execute as @s[x=-193,y=99,z=-933,dx=18,dy=10,dz=11,tag=!Dialogue81] at @s run tp @s ~ ~ ~10
#
##Route 14 visit Scary House
#tellraw @s[x=-195,y=99,z=-1243,dx=23,dy=5,dz=15,tag=!Dialogue84] ["",{"text":"<"},{"text":"Shauna","color":"light_purple"},{"text":"> C'mon! This way!"}]
#execute as @s[x=-195,y=99,z=-1243,dx=23,dy=5,dz=15,tag=!Dialogue84] at @s run tp @s ~ ~ ~10
#
##Poke Ball Interior Flare Blocks
#execute as @s[x=-136,y=94,z=-1927,dx=4,dy=5,dz=8,tag=!Dialogue90] at @s run tp @s ~ ~ ~8
#execute as @s[x=-134,y=104,z=-1998,dx=6,dy=5,dz=5,tag=!Dialogue90] at @s run tp @s ~-7 ~ ~
#
##Anistar City South Exit
#tellraw @s[x=1342,y=107,z=-122,dx=14,dy=6,dz=15,tag=!Dialogue133] {"text":"<Worker> Stop! The road up ahead was all torn up by the Durant, and we\u2019re still trying to fix it."}
#execute as @s[x=1342,y=107,z=-122,dx=14,dy=6,dz=15,tag=!Dialogue133] at @s run tp @s ~ ~ ~-10
#
##Route 19 Defeat Friends
#tellraw @s[x=1404,y=99,z=489,dx=15,dy=10,dz=6,tag=!Dialogue140] {"text":"Battle your friends on the bridge!","italic":true,"color":"gray"}
#execute as @s[x=1404,y=99,z=489,dx=15,dy=10,dz=6,tag=!Dialogue140] at @s run tp @s ~10 ~ ~
#
##Terminus Cave block Zygarde before Champion
#tellraw @s[x=2023,y=41,z=-100,dx=12,dy=20,dz=5,scores={PokemonLeague=0}] {"text":"<Ace Trainer> It must be dangerous to go further ahead unless you're as strong as the Champion."}
#tp @s[x=2023,y=41,z=-100,dx=12,dy=20,dz=5,scores={PokemonLeague=0}] 2043 41 -98
#
##Victory Road Western Waterfall
#execute as @s[x=1599,y=100,z=2327,dx=19,dy=156,dz=13] at @s run tp @s ~10 ~ ~
#
##Northern Waterfall
#execute as @s[x=1615,y=100,z=2183,dx=50,dy=156,dz=24] at @s run tp @s ~10 ~ ~
#
##East Waterfall
#execute as @s[x=1760,y=100,z=2335,dx=15,dy=156,dz=28] at @s run tp @s ~-10 ~ ~
#
##Southern Waterfall
#execute as @s[x=1627,y=100,z=2415,dx=22,dy=156,dz=36] at @s run tp @s ~ ~ ~-10
#
##Geosenge Town Eastern block until talk with Team Flare grunt twice
#tp @s[x=-2116,y=103,z=-702,dx=10,dy=10,dz=23,tag=!Dialogue52] ~-10 ~ ~
#execute as @s[x=-2124,y=104,z=-691,distance=..20,tag=!Dialogue52] run tp @e[x=-504,y=215,z=1254,dy=3,type=pixelmon:npc_chatting,limit=1] -2116 104 -698
#execute as @s[x=-2124,y=104,z=-691,distance=..20,tag=!Dialogue52] run tp @e[x=-504,y=215,z=1254,dy=3,type=pixelmon:npc_chatting,limit=1] -2116 104 -696
#execute as @s[x=-2124,y=104,z=-691,distance=..20,tag=!Dialogue52] run tp @e[x=-504,y=215,z=1254,dy=3,type=pixelmon:npc_chatting,limit=1] -2116 104 -694
#execute as @s[x=-2124,y=104,z=-691,distance=..20,tag=!Dialogue52] run tp @e[x=-504,y=215,z=1254,dy=3,type=pixelmon:npc_chatting,limit=1] -2116 104 -692
#execute as @s[x=-2124,y=104,z=-691,distance=..20,tag=!Dialogue52] run tp @e[x=-504,y=215,z=1254,dy=3,type=pixelmon:npc_chatting,limit=1] -2116 104 -689
#execute as @s[x=-2124,y=104,z=-691,distance=..20,tag=!Dialogue52] run tp @e[x=-504,y=215,z=1254,dy=3,type=pixelmon:npc_chatting,limit=1] -2116 104 -687
#execute as @s[x=-2124,y=104,z=-691,distance=..20,tag=!Dialogue52] run tp @e[x=-504,y=215,z=1254,dy=3,type=pixelmon:npc_chatting,limit=1] -2116 104 -685
#execute as @s[x=-2124,y=104,z=-691,distance=..20,tag=!Dialogue52] run tp @e[x=-504,y=215,z=1254,dy=3,type=pixelmon:npc_chatting,limit=1] -2116 104 -683
#execute as @s[x=-2124,y=104,z=-691,distance=..20,tag=!Dialogue52] run tp @e[x=-504,y=215,z=1252,dy=3,type=pixelmon:npc_chatting] -2120 104 -690.0
#execute as @s[x=-2124,y=104,z=-691,distance=..20,tag=!Dialogue52] at @s run tp @s[x=-2116,y=103,z=-702,dx=10,dy=10,dz=23,tag=!Dialogue52] ~-10 ~ ~
#
#execute as @s[x=-2124,y=104,z=-691,distance=..30,tag=Dialogue52] run tp @e[x=-2120,y=103,z=-691,dy=3,dz=1,type=pixelmon:npc_chatting] -504 216 1252
#execute as @s[x=-2124,y=104,z=-691,distance=..30,tag=Dialogue52] run tp @e[x=-2116,y=103,z=-699,dy=3,dz=17,type=pixelmon:npc_chatting] -504 216 1254
#
##Route 12 block pre-Surf
#tellraw @s[x=-1423,y=71,z=-850,dx=20,dy=20,dz=41,tag=!Korrina] {"text":"You need the Rumble Badge to use Surf outside of battle!","italic":true,"color":"gray"}
#tp @s[x=-1423,y=71,z=-850,dx=20,dy=20,dz=41,tag=!Korrina] -1440 76 -809
#
##Route 12 block Surf
#tellraw @s[x=-1418,y=71,z=-807,dx=10,dy=20,dz=20,tag=!Korrina] {"text":"You need the Rumble Badge to use Surf outside of battle!","italic":true,"color":"gray"}
#tp @s[x=-1418,y=71,z=-807,dx=10,dy=20,dz=20,tag=!Korrina] -1440 76 -809
#
##Route 12 block until beaten Successor battle
#tellraw @s[x=-1448,y=70,z=-814,dx=9,dy=12,dz=8,tag=!Dialogue64] {"text":"<Poke Breeder> Hey, Trainer! Not a good idea to leave the city when you still have pending matters with Korrina."}
#tp @s[x=-1448,y=70,z=-814,dx=9,dy=12,dz=8,tag=!Dialogue64] ~-10 80 ~
#
##Route 13 stairs to Lumiose blocked while Flare occupied Power Plant
#tellraw @s[x=-728,y=102,z=-474,dx=10,dy=10,dz=12,tag=!Dialogue75] {"text":"<Worker> Is the power not getting here? The gate to Lumiose won\u2019t open... The Power Plant is running, so what could be going on?"}
#execute as @s[x=-728,y=102,z=-474,dx=10,dy=10,dz=12,tag=!Dialogue75] at @s run tp @s ~-10 ~ ~
#
##Power Plant before defeating first Flare Grunt
#tellraw @s[x=-981,y=53,z=-340,dx=7,dy=8,dz=5,tag=!Dialogue72] {"text":"Defeat the Team Flare Grunts!","italic":true,"color":"gray"}
#execute as @s[x=-981,y=53,z=-340,dx=7,dy=8,dz=5,tag=!Dialogue72] at @s run tp @s ~10 ~ ~
#
##Power Plant blocking right path of generator room
#tellraw @s[x=-984,y=53,z=-352,dx=5,dy=5,dz=3,tag=!Dialogue75] ["",{"text":"<Team Flare Grunt> ","color":"white"},{"text":"Now I\u2019m mad! I told you I was persistent! I refuse to budge from this spot! Not an inch!"}]
#execute as @s[x=-984,y=53,z=-352,dx=5,dy=5,dz=3,tag=!Dialogue75] at @s run tp @s ~ ~ ~7
#
##Lysandre Labs Nix blocking the way until after battle
#tp @s[x=-305,y=28,z=318,dx=20,dy=5,dz=10,tag=!Dialogue200] -297 29 331
#
##Flare HQ Battle Lysandre to exit lobby
#tellraw @s[x=-2372,y=69,z=-987,dx=13,dy=5,dz=4,tag=!Dialogue123] {"text":"Defeat Lysandre!","italic":true,"color":"gray"}
#execute as @s[x=-2372,y=69,z=-987,dx=13,dy=5,dz=4,tag=!Dialogue123] at @s run tp @s ~10 ~ ~
#
##Geosenge version portal managers
#
##C-K
#execute as @s[x=-2130,y=103,z=-702,dx=14,dy=10,dz=23,scores={Geosenge=2}] run tp @e[distance=..3,type=pixelmon:bike] -317 109 2030
#tp @s[x=-2130,y=103,z=-702,dx=14,dy=10,dz=23,scores={Geosenge=2}] -317 109 2030
#
##A-I
#execute as @s[x=-2224,y=103,z=-612,dx=26,dy=10,dz=13,scores={Geosenge=2}] run tp @e[distance=..3,type=pixelmon:bike] -411 109 2118
#tp @s[x=-2224,y=103,z=-612,dx=26,dy=10,dz=13,scores={Geosenge=2}] -411 109 2118
#
##J-B
#execute as @s[x=-423,y=108,z=2123,dx=25,dy=10,dz=15,scores={Geosenge=2}] run tp @e[distance=..3,type=pixelmon:bike] -2210 104 -593
#tp @s[x=-423,y=108,z=2123,dx=25,dy=10,dz=15,scores={Geosenge=2}] -2210 104 -593
#
##L-D
#execute as @s[x=-314,y=108,z=2018,dx=18,dy=10,dz=23,scores={Geosenge=2}] run tp @e[distance=..3,type=pixelmon:bike] -2112 104 -690
#tp @s[x=-314,y=108,z=2018,dx=18,dy=10,dz=23,scores={Geosenge=2}] -2112 104 -690
#
##C-G
#execute as @s[x=-2130,y=103,z=-702,dx=14,dy=10,dz=23,scores={Geosenge=1}] run tp @e[distance=..3,type=pixelmon:bike] -1040 109 2030
#tp @s[x=-2130,y=103,z=-702,dx=14,dy=10,dz=23,scores={Geosenge=1}] -1040 109 2030
#
##A-E
#execute as @s[x=-2224,y=103,z=-612,dx=26,dy=10,dz=13,scores={Geosenge=1}] run tp @e[distance=..3,type=pixelmon:bike] -1131 109 2117
#tp @s[x=-2224,y=103,z=-612,dx=26,dy=10,dz=13,scores={Geosenge=1}] -1131 109 2117
#
##F-B
#execute as @s[x=-1143,y=108,z=2123,dx=25,dy=10,dz=15,scores={Geosenge=1}] run tp @e[distance=..3,type=pixelmon:bike] -2210 104 -593
#tp @s[x=-1143,y=108,z=2123,dx=25,dy=10,dz=15,scores={Geosenge=1}] -2210 104 -593
#
##H-D
#execute as @s[x=-1034,y=108,z=2018,dx=18,dy=10,dz=23,scores={Geosenge=1}] run tp @e[distance=..3,type=pixelmon:bike] -2112 104 -690
#tp @s[x=-1034,y=108,z=2018,dx=18,dy=10,dz=23,scores={Geosenge=1}] -2112 104 -690
#
#
##---------------------------------------------------------
#
#
#
#
#
#
#
#
#
#
#
#





















#