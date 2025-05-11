tellraw @a[tag=!InitialTags] {"text":"Initial scoreboard values required to run the map not found. TPing to spawn...","italic":true,"color":"gray"}
tp @a[tag=!InitialTags] -552 100 1257

#Lobby to Sycamore Welcome scene
execute as @a[x=-764,y=102,z=1208,dy=3,dz=3,scores={TalkTime=0},tag=!Dialogue266] run gamemode spectator @s
execute as @a[x=-764,y=102,z=1208,dy=3,dz=3,scores={TalkTime=0},tag=!Dialogue266] run scoreboard players set @s DialogueTrigger 266
tp @a[x=-764,y=102,z=1208,dy=3,dz=3,scores={TalkTime=0},tag=!Dialogue266] -1009 125 1457 180 90

#Lobby to Vaniville
scoreboard players set @a[x=-764,y=102,z=1208,dy=3,dz=3,scores={TalkTime=0},tag=Dialogue266] click1
tp @a[x=-764,y=102,z=1208,dy=3,dz=3,scores={TalkTime=0},tag=Dialogue266] 506 118 1558 180 10

tp @a[x=516,y=118,z=1549,dy=4,scores={TalkTime=0}] -783 102 1210.0 -90 13

#Gyms

#Santalune City Gym
scoreboard players set @a[x=310,y=102,z=383,dx=6,dy=5,dz=1,scores={TalkTime=0}] click1
tp @a[x=310,y=102,z=383,dx=6,dy=5,dz=1,scores={TalkTime=0}] -1919 138 -1890

scoreboard players set @a[x=-1922,y=138,z=-1889,dx=6,dy=5,scores={TalkTime=0}] click1
tp @a[x=-1922,y=138,z=-1889,dx=6,dy=5,scores={TalkTime=0}] 313 102 385

tp @a[x=-1921,y=132,z=-1904,dx=4,dy=1,dz=5] -1937 115 -1847


#Cyllage City Gym
scoreboard players set @a[x=-1917,y=114,z=1,dx=11,dy=5,scores={TalkTime=0}] click1
tp @a[x=-1917,y=114,z=1,dx=11,dy=5,scores={TalkTime=0}] -1677 102 -1866

scoreboard players set @a[x=-1679,y=101,z=-1865,dx=5,dy=5] click1
tp @a[x=-1679,y=101,z=-1865,dx=5,dy=5] -1912 114 2


#Shalour City Gym
#Pre-Tower of Mastery Serena defeat
scoreboard players set @a[x=-1774,y=86,z=-903,dx=5,dy=5,dz=1,scores={TalkTime=0},tag=!Dialogue61] DialogueTrigger 57
execute as @a[x=-1774,y=86,z=-903,dx=5,dy=5,dz=1,scores={TalkTime=0},tag=!Dialogue61] at @s run tp @s ~ ~ ~10

scoreboard players set @a[x=-1774,y=86,z=-903,dx=5,dy=5,dz=1] click1
tp @a[x=-1774,y=86,z=-903,dx=5,dy=5,dz=1] -1328 102 -1816

scoreboard players set @a[x=-1331,y=102,z=-1814,dx=6,dy=5] click1
tp @a[x=-1331,y=102,z=-1814,dx=6,dy=5] -1771 86 -900


#Tower of Mastery
tp @a[x=-1659,y=91,z=-1101,dx=6,dy=5] -1656 91 -1107
tp @a[x=-1659,y=91,z=-1105,dx=6,dy=5] -1656 91 -1099

#Under Lucario Statue Room
scoreboard players set @a[x=-1662,y=93,z=-1160,dx=6,dy=5,scores={TalkTime=0},tag=!Dialogue59] DialogueTrigger 59
tp @a[x=-1662,y=93,z=-1160,dx=6,dy=5,scores={TalkTime=0}] -1658 77 -1177

scoreboard players set @a[x=-1661,y=77,z=-1176,dx=5,dy=5,scores={TalkTime=0},tag=Dialogue59] DialogueTrigger 60
tp @a[x=-1661,y=77,z=-1176,dx=5,dy=5,scores={TalkTime=0}] -1659 93 -1159



#Courmarine City Gym
tellraw @a[x=-1083,y=121,z=-714,dx=9,dy=5,tag=!Dialogue68] {"text":"Defeat Serena to continue!","italic":true,"color":"gray"}
execute as @a[x=-1083,y=121,z=-714,dx=9,dy=5,tag=!Dialogue68] at @s run tp @s ~ ~ ~10

scoreboard players set @a[x=-1083,y=121,z=-714,dx=9,dy=5,tag=Dialogue68] click1
tp @a[x=-1083,y=121,z=-714,dx=9,dy=5,tag=Dialogue68] -1926 102 -2147

scoreboard players set @a[x=-1929,y=102,z=-2145,dx=6,dy=5] click1
tp @a[x=-1929,y=102,z=-2145,dx=6,dy=5] -1078 121 -712

tp @a[x=-1932,y=176,z=-2162,dy=5] -1924 102 -2157 0 ~



#Laverre City Gym
scoreboard players set @a[x=-95,y=100,z=-1462,dx=4,dy=5] click1
tp @a[x=-95,y=100,z=-1462,dx=4,dy=5] -1962 101 -1668

scoreboard players set @a[x=-1965,y=101,z=-1667,dx=6,dy=5] click1
tp @a[x=-1965,y=101,z=-1667,dx=6,dy=5] -93 100 -1460


#Anistar City Gym
tellraw @a[x=1325,y=110,z=-289,dx=5,dy=5,dz=1,tag=!Dialogue103,scores={TalkTime=0}] ["",{"text":"<"},{"text":"Serena","color":"gold"},{"text":"> Let's battle, "},{"selector":"@p[x=1325,y=110,z=-289,dx=5,dy=5,dz=1,tag=!Dialogue103]"},{"text":"!"}]
execute as @a[x=1325,y=110,z=-289,dx=5,dy=5,dz=1,tag=!Dialogue103] at @s run tp @s ~ ~ ~10

scoreboard players set @a[x=1325,y=110,z=-289,dx=5,dy=5,dz=1,tag=Dialogue103] click1
tp @a[x=1325,y=110,z=-289,dx=5,dy=5,dz=1,tag=Dialogue103] -1057 101 -1710

scoreboard players set @a[x=-1060,y=101,z=-1709,dx=6,dy=5] click1
tp @a[x=-1060,y=101,z=-1709,dx=6,dy=5] 1327 110 -286


#Snowbelle City Gym
scoreboard players set @a[x=1141,y=97,z=485,dx=5,dy=5,dz=1] click1
tp @a[x=1141,y=97,z=485,dx=5,dy=5,dz=1] -800 154 -1837

scoreboard players set @a[x=-803,y=154,z=-1835,dx=6,dy=5] click1
tp @a[x=-803,y=154,z=-1835,dx=6,dy=5] 1144 97 488



#Santalune Pokemon Center
scoreboard players set @a[x=295,y=68,z=486,dx=4,dy=5] click 1
execute as @a[x=295,y=68,z=486,dx=4,dy=5,scores={TalkTime=0},tag=Birthday] run scoreboard players set @s[scores={DialogueTrigger=0},tag=!Dialogue265] DialogueTrigger 265
execute as @a[x=295,y=68,z=486,dx=4,dy=5,tag=!Dialogue9] run tp @e[x=-504,y=120,z=1252,dy=3,type=pixelmon:npc_chatting] 308 68 481
spawnpoint @a[x=295,y=68,z=486,dx=4,dy=5] 297 68 482
tp @a[x=295,y=68,z=486,dx=4,dy=5] 297 100 486

execute as @a[x=295,y=68,z=486,dx=4,dy=5,tag=Dialogue9] run tp @e[x=308,y=67,z=481,dy=3,type=pixelmon:npc_chatting] -504 121 1252
scoreboard players set @a[x=294,y=100,z=485,dx=5,dy=5,dz=5,scores={TalkTime=0},tag=!Dialogue9] DialogueTrigger 9
scoreboard players set @a[x=294,y=100,z=485,dx=5,dy=5] click 1
tp @a[x=294,y=100,z=485,dx=5,dy=5] 297 68 485


#Camphrier Pokemon Center
execute as @a[x=-1016,y=100,z=10,dx=5,dy=5,scores={TalkTime=0},tag=Birthday] run scoreboard players set @s[scores={DialogueTrigger=0},tag=!Dialogue265] DialogueTrigger 265
scoreboard players set @a[x=-1016,y=100,z=10,dx=5,dy=5] click 1
spawnpoint @a[x=-1016,y=100,z=10,dx=5,dy=5] -1013 80 6
tp @a[x=-1016,y=100,z=10,dx=5,dy=5] -1013 80 9

scoreboard players set @a[x=-1015,y=80,z=10,dx=4,dy=5] click 1
tp @a[x=-1015,y=80,z=10,dx=4,dy=5] -1013 100 12


#Cyllage Pokemon Center
execute as @a[x=-2039,y=104,z=-62,dx=5,dy=5,scores={TalkTime=0},tag=Birthday] run scoreboard players set @s[scores={DialogueTrigger=0},tag=!Dialogue265] DialogueTrigger 265
scoreboard players set @a[x=-2039,y=104,z=-62,dx=5,dy=5] click 1
spawnpoint @a[x=-2039,y=104,z=-62,dx=5,dy=5] -2036 78 -66
tp @a[x=-2039,y=104,z=-62,dx=5,dy=5] -2036 78 -63

scoreboard players set @a[x=-2038,y=78,z=-62,dx=4,dy=5] click 1
tp @a[x=-2038,y=78,z=-62,dx=4,dy=5] -2036 104 -60


#Ambrette Pokemon Center
execute as @a[x=-1964,y=141,z=554,dx=5,dy=5,scores={TalkTime=0},tag=Birthday] run scoreboard players set @s[scores={DialogueTrigger=0},tag=!Dialogue265] DialogueTrigger 265
scoreboard players set @a[x=-1964,y=141,z=554,dx=5,dy=5] click 1
spawnpoint @a[x=-1964,y=141,z=554,dx=5,dy=5] -1961 103 550
tp @a[x=-1964,y=141,z=554,dx=5,dy=5] -1961 103 553

scoreboard players set @a[x=-1963,y=103,z=554,dx=4,dy=5] click 1
tp @a[x=-1963,y=103,z=554,dx=4,dy=5] -1961 141 556


#Geosenge Pokemon Center (Ultimate Weapon Destroyed)
execute as @a[x=-444,y=109,z=2094,dx=4,dy=5,scores={TalkTime=0},tag=Birthday] run scoreboard players set @s[scores={DialogueTrigger=0},tag=!Dialogue265] DialogueTrigger 265
scoreboard players set @a[x=-444,y=109,z=2094,dx=4,dy=5] click 1
spawnpoint @a[x=-444,y=109,z=2094,dx=4,dy=5] -2241 79 -630
tp @a[x=-444,y=109,z=2094,dx=4,dy=5] -2241 79 -627

scoreboard players set @a[x=-2243,y=79,z=-626,dx=4,dy=5,scores={Geosenge=2}] click 1
tp @a[x=-2243,y=79,z=-626,dx=4,dy=5,scores={Geosenge=2}] -441 109 2096


#Geosenge Pokemon Center (Ultimate Weapon)
execute as @a[x=-1164,y=104,z=2094,dx=4,dy=5,scores={TalkTime=0},tag=Birthday] run scoreboard players set @s[scores={DialogueTrigger=0},tag=!Dialogue265] DialogueTrigger 265
scoreboard players set @a[x=-1164,y=104,z=2094,dx=4,dy=5] click 1
spawnpoint @a[x=-1164,y=104,z=2094,dx=4,dy=5] -2241 79 -630
tp @a[x=-1164,y=104,z=2094,dx=4,dy=5] -2241 79 -627

scoreboard players set @a[x=-2243,y=79,z=-626,dx=4,dy=5,scores={Geosenge=1}] click 1
tp @a[x=-2243,y=79,z=-626,dx=4,dy=5,scores={Geosenge=1}] -1161 109 2095


#Geosenge Pokemon Center (normal)
execute as @a[x=-2244,y=104,z=-626,dx=4,dy=5,scores={TalkTime=0},tag=Birthday] run scoreboard players set @s[scores={DialogueTrigger=0},tag=!Dialogue265] DialogueTrigger 265
scoreboard players set @a[x=-2244,y=104,z=-626,dx=4,dy=5] click 1
spawnpoint @a[x=-2244,y=104,z=-626,dx=4,dy=5] -2241 79 -630
tp @a[x=-2244,y=104,z=-626,dx=4,dy=5] -2241 79 -627

scoreboard players set @a[x=-2243,y=79,z=-626,dx=4,dy=5] click 1
tp @a[x=-2243,y=79,z=-626,dx=4,dy=5] -2241 104 -624


#Shalour City Pokemon Center
execute as @a[x=-1622,y=80,z=-819,dx=5,dy=5,scores={TalkTime=0},tag=Birthday] run scoreboard players set @s[scores={DialogueTrigger=0},tag=!Dialogue265] DialogueTrigger 265
scoreboard players set @a[x=-1622,y=80,z=-819,dx=5,dy=5] click 1
spawnpoint @a[x=-1622,y=80,z=-819,dx=5,dy=5] -1619 57 -823
tp @a[x=-1622,y=80,z=-819,dx=5,dy=5] -1619 57 -820

scoreboard players set @a[x=-1621,y=57,z=-819,dx=5,dy=5] click 1
tp @a[x=-1621,y=57,z=-819,dx=5,dy=5] -1619 80 -817


#Courmarine Pokemon Center
execute as @a[x=-1029,y=115,z=-660,dx=5,dy=5,scores={TalkTime=0},tag=Birthday] run scoreboard players set @s[scores={DialogueTrigger=0},tag=!Dialogue265] DialogueTrigger 265
scoreboard players set @a[x=-1029,y=115,z=-660,dx=5,dy=5] click 1
spawnpoint @a[x=-1029,y=115,z=-660,dx=5,dy=5] -1026 89 -664
tp @a[x=-1029,y=115,z=-660,dx=5,dy=5] -1026 89 -661

scoreboard players set @a[x=-1028,y=89,z=-660,dx=4,dy=5] click 1
tp @a[x=-1028,y=89,z=-660,dx=4,dy=5] -1026 115 -658


#Laverre Pokemon Center
execute as @a[x=-73,y=100,z=-1365,dx=5,dy=5,scores={TalkTime=0},tag=Birthday] run scoreboard players set @s[scores={DialogueTrigger=0},tag=!Dialogue265] DialogueTrigger 265
scoreboard players set @a[x=-73,y=100,z=-1365,dx=5,dy=5] click 1
spawnpoint @a[x=-73,y=100,z=-1365,dx=5,dy=5] -70 77 -1369
tp @a[x=-73,y=100,z=-1365,dx=5,dy=5] -70 77 -1366

scoreboard players set @a[x=-72,y=77,z=-1365,dx=4,dy=5] click 1
tp @a[x=-72,y=77,z=-1365,dx=4,dy=5] -70 100 -1363


#Dendemille Pokemon Center
execute as @a[x=618,y=108,z=-375,dx=5,dy=5,scores={TalkTime=0},tag=Birthday] run scoreboard players set @s[scores={DialogueTrigger=0},tag=!Dialogue265] DialogueTrigger 265
scoreboard players set @a[x=618,y=108,z=-375,dx=5,dy=5] click 1
spawnpoint @a[x=618,y=108,z=-375,dx=5,dy=5] 621 87 -379
tp @a[x=618,y=108,z=-375,dx=5,dy=5] 621 87 -376

scoreboard players set @a[x=619,y=87,z=-375,dx=4,dy=5] click 1
tp @a[x=619,y=87,z=-375,dx=4,dy=5] 621 108 -373


#Anistar Pokemon Center
execute as @a[x=1267,y=108,z=-197,dx=5,dy=5,scores={TalkTime=0},tag=Birthday] run scoreboard players set @s[scores={DialogueTrigger=0},tag=!Dialogue265] DialogueTrigger 265
scoreboard players set @a[x=1267,y=108,z=-197,dx=5,dy=5] click 1
spawnpoint @a[x=1267,y=108,z=-197,dx=5,dy=5] 1270 80 -201
tp @a[x=1267,y=108,z=-197,dx=5,dy=5] 1270 80 -198

scoreboard players set @a[x=1268,y=80,z=-197,dx=4,dy=5] click 1
tp @a[x=1268,y=80,z=-197,dx=4,dy=5] 1270 108 -195


#Couriway Pokemon Center
execute as @a[x=1473,y=100,z=173,dx=5,dy=5,scores={TalkTime=0},tag=Birthday] run scoreboard players set @s[scores={DialogueTrigger=0},tag=!Dialogue265] DialogueTrigger 265
scoreboard players set @a[x=1473,y=100,z=173,dx=5,dy=5] click 1
spawnpoint @a[x=1473,y=100,z=173,dx=5,dy=5] 1476 79 169
tp @a[x=1473,y=100,z=173,dx=5,dy=5] 1476 79 172

scoreboard players set @a[x=1474,y=79,z=173,dx=5,dy=5] click 1
tp @a[x=1474,y=79,z=173,dx=5,dy=5] 1476 100 175



#Snowbelle Pokemon Center
execute as @a[x=1215,y=105,z=503,dx=5,dy=5,scores={TalkTime=0},tag=Birthday] run scoreboard players set @s[scores={DialogueTrigger=0},tag=!Dialogue265] DialogueTrigger 265
scoreboard players set @a[x=1215,y=105,z=503,dx=5,dy=5] click 1
spawnpoint @a[x=1215,y=105,z=503,dx=5,dy=5] 1218 75 499
tp @a[x=1215,y=105,z=503,dx=5,dy=5] 1218 75 502

scoreboard players set @a[x=1216,y=75,z=503,dx=5,dy=5] click 1
tp @a[x=1216,y=75,z=503,dx=5,dy=5] 1218 105 505



#Kiloude Pokemon Center
execute as @a[x=1177,y=101,z=1661,dx=5,dy=5,scores={TalkTime=0},tag=Birthday] run scoreboard players set @s[scores={DialogueTrigger=0},tag=!Dialogue265] DialogueTrigger 265
scoreboard players set @a[x=1177,y=101,z=1661,dx=5,dy=5] click 1
spawnpoint @a[x=1177,y=101,z=1661,dx=5,dy=5] 1180 81 1657
tp @a[x=1177,y=101,z=1661,dx=5,dy=5] 1180 81 1660

scoreboard players set @a[x=1178,y=81,z=1661,dx=4,dy=5] click 1
tp @a[x=1178,y=81,z=1661,dx=4,dy=5] 1180 101 1663


#Pokemon League Pokemon Center
execute as @a[x=-1938,y=88,z=2278,dx=5,dy=5,scores={TalkTime=0},tag=Birthday] run scoreboard players set @s[scores={DialogueTrigger=0},tag=!Dialogue265] DialogueTrigger 265
scoreboard players set @a[x=-1938,y=88,z=2278,dx=5,dy=5] click 1
spawnpoint @a[x=-1938,y=88,z=2278,dx=5,dy=5] -1936 39 2274
tp @a[x=-1938,y=88,z=2278,dx=5,dy=5] -1936 39 2277

scoreboard players set @a[x=-1938,y=39,z=2278,dx=4,dy=5] click 1
tp @a[x=-1938,y=39,z=2278,dx=4,dy=5] -1936 88 2279




#All Lumiose Pokemon Center Interiors removing Looker Cooldown tag
tag @a[x=-487,y=100,z=456,dx=120,dy=5,tag=LookerCooldown] remove LookerCooldown


#Lumiose Northern Pokemon Center
execute as @a[x=-151,y=101,z=-655,dx=5,dy=5,dz=3,scores={TalkTime=0},tag=Birthday] run scoreboard players set @s[scores={DialogueTrigger=0},tag=!Dialogue265] DialogueTrigger 265
scoreboard players set @a[x=-151,y=101,z=-655,dx=5,dy=5,dz=3] click 1
spawnpoint @a[x=-151,y=101,z=-655,dx=5,dy=5,dz=3] -486 101 452
tp @a[x=-151,y=101,z=-655,dx=5,dy=5,dz=3] -486 101 455 180 ~

scoreboard players set @a[x=-488,y=101,z=456,dx=4,dy=5] click 1
tp @a[x=-488,y=101,z=456,dx=4,dy=5] -148 101 -656 180 ~

#Lumiose Middle Pokemon Center
execute as @a[x=-261,y=101,z=-403,dx=4,dy=5,dz=3,scores={TalkTime=0},tag=Birthday] run scoreboard players set @s[scores={DialogueTrigger=0},tag=!Dialogue265] DialogueTrigger 265
scoreboard players set @a[x=-261,y=101,z=-403,dx=4,dy=5,dz=3] click 1
spawnpoint @a[x=-261,y=101,z=-403,dx=4,dy=5,dz=3] -430 101 452
tp @a[x=-261,y=101,z=-403,dx=4,dy=5,dz=3] -430 101 455 180 ~

scoreboard players set @a[x=-432,y=101,z=456,dx=4,dy=5] click 1
tp @a[x=-432,y=101,z=456,dx=4,dy=5] -258 101 -404 180 ~

#Lumiose South Pokemon Center
execute as @a[x=-228,y=101,z=-132,dx=3,dy=4,dz=2,scores={TalkTime=0},tag=Birthday] run scoreboard players set @s[scores={DialogueTrigger=0},tag=!Dialogue265] DialogueTrigger 265
scoreboard players set @a[x=-228,y=101,z=-132,dx=3,dy=4,dz=2,scores={TalkTime=0}] click 1
spawnpoint @a[x=-228,y=101,z=-132,dx=3,dy=4,dz=2,scores={TalkTime=0}] -375 101 452
tp @a[x=-228,y=101,z=-132,dx=3,dy=4,dz=2,scores={TalkTime=0}] -375 101 455 180 ~

scoreboard players set @a[x=-377,y=101,z=456,dx=4,dy=4] click 1
tp @a[x=-377,y=101,z=456,dx=4,dy=4] -227 101 -129 26 ~




#Vaniville

#Your home
scoreboard players set @a[x=504,y=108,z=1576,dx=10,dy=5,tag=!Dialogue7,scores={StarterPick=1..,TalkTime=0}] DialogueTrigger 7
tp @a[x=504,y=108,z=1576,dx=10,dy=5,scores={TalkTime=0}] 506 108 1566

scoreboard players set @a[x=503,y=108,z=1568,dx=5,dy=4,tag=Dialogue1,tag=!Dialogue2,scores={TalkTime=0}] DialogueTrigger 2
scoreboard players set @a[x=503,y=108,z=1568,dx=5,dy=4,tag=Dialogue2,scores={TalkTime=0,PokemonLeague=1..}] DialogueTrigger 158
tp @a[x=503,y=108,z=1568,dx=5,dy=4,tag=Dialogue1,scores={TalkTime=0}] 509 108 1578

#Neighbor Home
tp @a[x=550,y=108,z=1576,dx=10,dy=5] 555 108 1569
tp @a[x=552,y=108,z=1570,dx=5,dy=4] 555 108 1578

#Eastern Home
tp @a[x=420,y=108,z=1581,dx=10,dy=5] 419 108 1572
tp @a[x=417,y=108,z=1574,dx=5,dy=4] 425 108 1583


#Santalune City Trainer School
tp @a[x=245,y=100,z=415,dx=6,dy=5] 248 85 412
tp @a[x=245,y=85,z=414,dx=6,dy=5] 248 100 417

#Santalune City Boutique
tp @a[x=319,y=100,z=485,dx=5,dy=5] 321 87 483
tp @a[x=319,y=87,z=484,dx=5,dy=5] 322 100 487



#Lumiose Route 5 Connector
scoreboard players set @a[x=-565,y=92,z=-166,dy=10,dz=14,scores={TalkTime=0}] click1
tp @a[x=-565,y=92,z=-166,dy=10,dz=14,scores={TalkTime=0}] -386 101 -108 -144 ~

scoreboard players set @a[x=-393,y=101,z=-107,dx=7,dy=5,dz=6,tag=KantoStarters,tag=Dialogue22,scores={TalkTime=0}] click1
tp @a[x=-393,y=101,z=-107,dx=7,dy=5,dz=6,tag=KantoStarters,tag=Dialogue22,scores={TalkTime=0}] -567 92 -159 90 ~

tellraw @a[x=-393,y=101,z=-107,dx=7,dy=5,dz=6,tag=!KantoStarters] {"text":"You need to go see Professor Sycamore!","italic":true,"color":"gray"}
execute as @a[x=-393,y=101,z=-107,dx=7,dy=5,dz=6,tag=!KantoStarters] at @s run tp @s ~5 ~ ~-5

tellraw @a[x=-393,y=101,z=-107,dx=7,dy=5,dz=6,tag=KantoStarters,tag=!Dialogue22] {"text":"Serena is waiting at Cafe Soleil!","italic":true,"color":"gray"}
execute as @a[x=-393,y=101,z=-107,dx=7,dy=5,dz=6,tag=KantoStarters,tag=!Dialogue22] at @s run tp @s ~5 ~ ~-5


#Lumiose Route 4 Connector
scoreboard players set @a[x=172,y=100,z=-118,dx=14,dy=5,tag=Dialogue15] click1
tp @a[x=172,y=100,z=-118,dx=14,dy=5,tag=Dialogue15] 19 101 -108 145 ~

scoreboard players set @a[x=20,y=101,z=-107,dx=7,dy=5,dz=6] click1
tp @a[x=20,y=101,z=-107,dx=7,dy=5,dz=6] 179 100 -116 0 ~


#Lumiose Route 16 Connector
tellraw @a[x=165,y=101,z=-510,dx=4,dy=5,dz=9,tag=!Dialogue90] {"text":"<Worker> The power outage has messed up something in the gate. Clemont is probably busy over at the Gym, so it's up to me to figure out how to fix it."}
execute as @a[x=165,y=101,z=-510,dx=4,dy=5,dz=9,tag=!Dialogue90] at @s run tp @s ~-10 ~ ~

scoreboard players set @a[x=218,y=100,z=-246,dy=5,dz=14] click1
tp @a[x=218,y=100,z=-246,dy=5,dz=14] 162 101 -502 70 ~

scoreboard players set @a[x=165,y=101,z=-510,dx=4,dy=5,dz=9,tag=Dialogue90] click1
tp @a[x=165,y=101,z=-510,dx=4,dy=5,dz=9,tag=Dialogue90] 220 100 -239 -90 ~


#Lumiose Route 14 Connector
tellraw @a[x=-188,y=101,z=-754,dx=11,dy=5,tag=!Clemont] {"text":"<Worker> The power outage has messed up something in the gate. Clemont is probably busy over at the Gym, so it's up to me to figure out how to fix it."}
execute at @a[x=-188,y=101,z=-754,dx=11,dy=5,tag=!Clemont] as @s run tp @s ~ ~ ~10

scoreboard players set @a[x=-188,y=101,z=-754,dx=11,dy=5,tag=Clemont] click1
tp @a[x=-188,y=101,z=-754,dx=11,dy=5,tag=Clemont] -183 100 -797

scoreboard players set @a[x=-190,y=100,z=-795,dx=14,dy=5,scores={TalkTime=0}] click1
tp @a[x=-190,y=100,z=-795,dx=14,dy=5,scores={TalkTime=0}] -183 101 -751


#Lumiose Route 13 Connector
scoreboard players set @a[x=-524,y=101,z=-506,dx=4,dy=5,dz=8] click1
tp @a[x=-524,y=101,z=-506,dx=4,dy=5,dz=8] -605 100 -468 90 ~

scoreboard players set @a[x=-603,y=100,z=-475,dy=5,dz=14] click1
tp @a[x=-603,y=100,z=-475,dy=5,dz=14] -516 101 -498 -72 ~




#Shabboneau Castle
scoreboard players set @a[x=-1060,y=100,z=-102,dx=11,dy=5,tag=!Dialogue27,scores={TalkTime=0}] DialogueTrigger 27
tp @a[x=-1060,y=100,z=-102,dx=11,dy=5,scores={TalkTime=0}] -1055 56 -104
tp @a[x=-1058,y=56,z=-102,dx=5,dy=5,scores={TalkTime=0}] -1055 100 -100

#Camphrier Town NPC Home Left
tp @a[x=-1108,y=100,z=-42,dx=4,dy=5] -1107 84 -43
tp @a[x=-1109,y=84,z=-42,dx=5,dy=5] -1106 100 -41

#Camphrier Town NPC Home Right
tp @a[x=-1005,y=100,z=-41,dx=4,dy=5] -1004 83 -42
tp @a[x=-1006,y=83,z=-41,dx=5,dy=5] -1003 100 -40


#Berry Field Home
tp @a[x=-1200,y=100,z=0,dx=4,dy=5] -1199 85 -1
tp @a[x=-1201,y=85,z=0,dx=5,dy=5] -1198 100 1



#Connecting Cave Cyllage
scoreboard players set @a[x=-1891,y=134,z=-133,dy=5,dz=7] click1
scoreboard players set @a[x=-1891,y=134,z=-133,dy=5,dz=7] EscapeRope 4
tp @a[x=-1891,y=134,z=-133,dy=5,dz=7] -1858 48 -7

scoreboard players set @a[x=-1860,y=48,z=-9,dy=5,dz=5] click1
scoreboard players set @a[x=-1860,y=48,z=-9,dy=5,dz=5] EscapeRope 0
tp @a[x=-1860,y=48,z=-9,dy=5,dz=5] -1893 134 -130


#Connecting Cave Route 8
scoreboard players set @a[x=-1855,y=56,z=103,dy=5,dz=5] click1
scoreboard players set @a[x=-1855,y=56,z=103,dy=5,dz=5] EscapeRope 0
tp @a[x=-1855,y=56,z=103,dy=5,dz=5] -1879 154 97

scoreboard players set @a[x=-1877,y=154,z=93,dy=5,dz=9] click1
scoreboard players set @a[x=-1877,y=154,z=93,dy=5,dz=9] EscapeRope 3
tp @a[x=-1877,y=154,z=93,dy=5,dz=9] -1853 56 105


#Connecting Cave Route 7
#South Gate
scoreboard players set @a[x=-1741,y=44,z=104,dy=5,dz=5,scores={TalkTime=0}] click1
scoreboard players set @a[x=-1741,y=44,z=104,dy=5,dz=5,scores={TalkTime=0}] EscapeRope 0
tp @a[x=-1741,y=44,z=104,dy=5,dz=5] -1702 109 25

scoreboard players set @a[x=-1704,y=109,z=21,dy=5,dz=5,scores={TalkTime=0}] click1
scoreboard players set @a[x=-1704,y=109,z=21,dy=5,dz=5,scores={TalkTime=0}] EscapeRope 2
tp @a[x=-1704,y=109,z=21,dy=5,dz=5,scores={TalkTime=0}] -1743 44 107

#North Gate
scoreboard players set @a[x=-1668,y=36,z=33,dy=5,dz=5] click1
scoreboard players set @a[x=-1668,y=36,z=33,dy=5,dz=5] EscapeRope 0
tp @a[x=-1668,y=36,z=33,dy=5,dz=5] -1642 103 -36

scoreboard players set @a[x=-1644,y=103,z=-39,dy=5,dz=5,scores={TalkTime=0,PhotoSpot=1..}] TalkTrigger 299
scoreboard players set @a[x=-1644,y=103,z=-39,dy=5,dz=5,scores={TalkTime=0,PhotoSpot=0}] click 1
scoreboard players set @a[x=-1644,y=103,z=-39,dy=5,dz=5,scores={TalkTime=0,PhotoSpot=0}] EscapeRope 1
tp @a[x=-1644,y=103,z=-39,dy=5,dz=5,scores={TalkTime=0,PhotoSpot=0}] -1670 36 36


#Courmarine City Rail
tp @a[x=-1007,y=116,z=-678,dx=2,dy=5,dz=2] -1037 80 -802
tp @a[x=-1039,y=81,z=-791,dx=2,dy=5,dz=2,scores={TalkTime=0}] -1006 115 -665



#Reflection Cave Shallour
scoreboard players set @a[x=-1621,y=84,z=-744,dx=6,dy=5] click1
scoreboard players set @a[x=-1621,y=84,z=-744,dx=6,dy=5] EscapeRope 9
tp @a[x=-1621,y=84,z=-744,dx=6,dy=5] -1667 74 -362

scoreboard players set @a[x=-1671,y=74,z=-364,dx=7,dy=5] click1
scoreboard players set @a[x=-1671,y=74,z=-364,dx=7,dy=5] EscapeRope 0
tp @a[x=-1671,y=74,z=-364,dx=7,dy=5] -1618 84 -746


#Reflection Cave Route
scoreboard players set @a[x=-1810,y=64,z=-308,dx=8,dy=5] click1
scoreboard players set @a[x=-1810,y=64,z=-308,dx=8,dy=5] EscapeRope 0
tp @a[x=-1810,y=64,z=-308,dx=8,dy=5] -1972 118 -718

scoreboard players set @a[x=-1976,y=118,z=-720,dx=7,dy=5] click1
scoreboard players set @a[x=-1976,y=118,z=-720,dx=7,dy=5] EscapeRope 10
tp @a[x=-1976,y=118,z=-720,dx=7,dy=5] -1806 64 -310


#Poke Ball Factory

tellraw @a[x=-157,y=125,z=-1774,dx=6,dy=5,tag=!Dialogue86] {"text":"<Team Flare Grunt> Adults are talking inside. Scram, kid. Shoo! Shoo!"}
execute as @a[x=-157,y=125,z=-1774,dx=6,dy=5,tag=!Dialogue86] at @s run tp @s ~ ~ ~10

execute as @a[x=-157,y=125,z=-1774,dx=6,dy=5,tag=Dialogue86] run scoreboard players set @s[tag=!Dialogue87] DialogueTrigger 87
#Removes reverse tag in case player can't ride the left belt to the reverse button
execute as @a[x=-157,y=125,z=-1774,dx=6,dy=5,tag=Dialogue86] run tag @e[x=-681,y=100,z=1388,dy=3,type=armor_stand,tag=Reverse] remove Reverse
tp @a[x=-157,y=125,z=-1774,dx=6,dy=5,tag=Dialogue86] -154 89 -1845
tp @a[x=-158,y=89,z=-1843,dx=7,dy=5,scores={TalkTime=0}] -154 125 -1772


#Laverre Gate
tellraw @a[x=43,y=100,z=-1360,dy=5,dz=14,scores={TalkTime=0},tag=!Dialogue90] {"text":"<Team Flare Grunt> Hey, hey! Stop right there. You want to go beyond this point? You\u2019ll have to join Team Flare! I\u2019ll let you in for a small fee... Let\u2019s say $5,000,000?"}
execute as @a[x=43,y=100,z=-1360,dy=5,dz=14,tag=!Dialogue90] at @s run tp @s ~-10 ~ ~

scoreboard players set @a[x=43,y=100,z=-1360,dy=5,dz=14,tag=Dialogue90] click1
tp @a[x=43,y=100,z=-1360,dy=5,dz=14,tag=Dialogue90] 265 108 -571

scoreboard players set @a[x=263,y=108,z=-578,dy=5,dz=14] click1
tp @a[x=263,y=108,z=-578,dy=5,dz=14] 41 100 -1353


#Frost Cavern Cave
scoreboard players set @a[x=669,y=120,z=-892,dx=9,dy=5] click1
tp @a[x=669,y=120,z=-892,dx=9,dy=5] 684 33 -907

scoreboard players set @a[x=680,y=33,z=-905,dx=9,dy=5] click1
tp @a[x=680,y=33,z=-905,dx=9,dy=5] 674 120 -890


#Terminus Cave
scoreboard players set @a[x=1497,y=110,z=-45,dx=8,dy=5] click1
tp @a[x=1497,y=110,z=-45,dx=8,dy=5] 1753 78 -34

scoreboard players set @a[x=1749,y=78,z=-33,dx=8,dy=5] click1
tp @a[x=1749,y=78,z=-33,dx=8,dy=5] 1501 111 -44


#Dead End Caverns
#Left
scoreboard players set @a[x=1481,y=105,z=-8,dx=8,dy=5] click 1
tp @a[x=1481,y=105,z=-8,dx=8,dy=5] 1578 70 69

scoreboard players set @a[x=1575,y=70,z=70,dx=5,dy=5] click 1
tp @a[x=1575,y=70,z=70,dx=5,dy=5] 1485 106 -6



#Right
scoreboard players set @a[x=1529,y=110,z=6,dx=8,dy=5] click 1
tp @a[x=1529,y=110,z=6,dx=8,dy=5] 1656 70 73

scoreboard players set @a[x=1653,y=70,z=74,dx=6,dy=5] click 1
tp @a[x=1653,y=70,z=74,dx=6,dy=5] 1533 110 7





#Anistar Gym Interior Portals
effect give @a[x=-1057,y=101,z=-1720,dy=5,dz=1] minecraft:blindness 5 5 true
tp @a[x=-1057,y=101,z=-1720,dy=5,dz=1] -1077 184 -1955 180 ~

effect give @a[x=-1077,y=183,z=-1953,dy=5,dz=1] minecraft:blindness 5 5 true
tp @a[x=-1077,y=183,z=-1953,dy=5,dz=1] -1057 102 -1717 0 ~

#Portal 1
tp @a[x=-1078,y=183,z=-2043,dx=2,dy=3,dz=2] -1126 135 -1861 -90 ~
tp @a[x=-1130,y=135,z=-1862,dx=2,dy=3,dz=2] -1077 183 -2039 0 ~

#Portal 2
tp @a[x=-1058,y=135,z=-1862,dx=2,dy=5,dz=2] -1075 219 -1966 0 ~
tp @a[x=-1076,y=219,z=-1970,dx=2,dy=5,dz=2] -1060 135 -1861 90 ~

#Portal 3
tp @a[x=-1076,y=219,z=-1922,dx=2,dy=5,dz=2] -1034 101 -2013 0 ~
tp @a[x=-1035,y=101,z=-2017,dx=2,dy=5,dz=2] -1075 219 -1924 180 ~

#Portal 4
tp @a[x=-1035,y=101,z=-1960,dx=2,dy=5,dz=2] -1077 154 -2039 0 ~
tp @a[x=-1078,y=154,z=-2043,dx=2,dy=5,dz=2] -1034 101 -1962 180 ~

#Portal 5
tp @a[x=-1037,y=154,z=-1881,dx=2,dy=5,dz=2] -1136 57 -1932 180 ~
tp @a[x=-1137,y=57,z=-1930,dx=2,dy=5,dz=2] -1039 154 -1880 90 ~

#Portal 6
tp @a[x=-1137,y=57,z=-1969,dx=2,dy=5,dz=2] -1017 70 -1948 90 ~
tp @a[x=-1015,y=70,z=-1949,dx=2,dy=5,dz=2] -1136 57 -1965 0 ~

#Portal 7
tp @a[x=-1015,y=70,z=-1967,dx=2,dy=5,dz=2] -1080 108 -1946 90 ~
tp @a[x=1078,y=108,z=-1947,dx=2,dy=5,dz=2] -1014 70 -1963 90 ~

#Portal 8
tp @a[x=-1156,y=108,z=-1947,dx=2,dy=5,dz=2] -1077 86 -1907 180 ~
tp @a[x=-1078,y=86,z=-1905,dx=2,dy=5,dz=2] -1152 108 -1946 -90 ~

#Portal to Exit
tp @a[x=-1078,y=86,z=-1959,dx=2,dy=5,dz=2] -1077 183 -1944 180 ~



#Route 20 and Snowbelle
scoreboard players set @a[x=1034,y=100,z=614,dy=4,dz=5] click1
tp @a[x=1034,y=100,z=614,dy=4,dz=5] 1401 100 753

scoreboard players set @a[x=1403,y=100,z=751,dy=5,dz=5] click1
tp @a[x=1403,y=100,z=751,dy=5,dz=5] 1036 100 616

#Portal A
tp @a[x=1326,y=100,z=747,dy=5,dz=5] 1405 100 802
tp @a[x=1407,y=100,z=799,dy=5,dz=5] 1328 100 749

#Portal B
tp @a[x=1257,y=100,z=841,dx=5,dy=5] 1390 100 1012
tp @a[x=1388,y=100,z=1014,dx=5,dy=5] 1260 100 843

#Portal C
tp @a[x=1349,y=100,z=988,dy=5,dz=5] 1474 103 896
tp @a[x=1476,y=103,z=894,dy=5,dz=5] 1351 100 990

#Portal D
tp @a[x=1360,y=100,z=1066,dx=5,dy=5] 1067 100 807
tp @a[x=1064,y=100,z=805,dx=5,dy=5] 1362 100 1064

#Portal E
tp @a[x=1189,y=100,z=893,dy=5,dz=5] 1045 100 822

#Portal F
tp @a[x=1060,y=100,z=1017,dy=5,dz=5] 1428 100 1005

#Portal G
tp @a[x=1430,y=100,z=1002,dy=5,dz=5] 1045 100 822

#Portal 2
tp @a[x=1361,y=100,z=888,dx=5,dy=5] 1360 100 962
tp @a[x=1358,y=100,z=960,dx=5,dy=5] 1363 100 886

#Portal 4
tp @a[x=1397,y=100,z=907,dy=5,dz=5] 1414 100 981
tp @a[x=1416,y=100,z=979,dy=5,dz=5] 1399 100 909

#Portal 6
tp @a[x=1161,y=100,z=930,dx=5,dy=5] 1162 100 1001
tp @a[x=1160,y=100,z=999,dx=5,dy=5] 1163 100 928

#Portal 7
tp @a[x=1161,y=100,z=818,dy=5,dz=5] 1186 100 896

#Portal 8
tp @a[x=1043,y=100,z=819,dy=5,dz=5] 1091 100 822

#Portal 9
tp @a[x=1138,y=100,z=894,dy=5,dz=5] 1091 100 822

#Portal 10
tp @a[x=1093,y=100,z=819,dy=5,dz=5] 1163 100 821

#Route 20 & Pokemon Village
scoreboard players set @a[x=1035,y=100,z=856,dy=5,dz=5,scores={TalkTime=0}] click1
tp @a[x=1035,y=100,z=856,dy=5,dz=5,scores={TalkTime=0}] 966 93 663

scoreboard players set @a[x=968,y=93,z=660,dy=5,dz=5,scores={TalkTime=0}] click1
tp @a[x=968,y=93,z=660,dy=5,dz=5,scores={TalkTime=0}] 1037 100 858


#Unknown Dungeon
scoreboard players set @a[x=841,y=95,z=608,dx=5,dy=5,scores={PokemonLeague=1..}] click1
tp @a[x=841,y=95,z=608,dx=5,dy=5,scores={PokemonLeague=1..}] 845 75 606

execute as @a[x=841,y=95,z=608,dx=5,dy=5,scores={PokemonLeague=0}] at @s run tp @s ~ ~ ~10

scoreboard players set @a[x=842,y=75,z=608,dx=6,dy=5] click1
tp @a[x=842,y=75,z=608,dx=6,dy=5] 844 95 610


#Chamber of Emptiness
scoreboard players set @a[x=581,y=91,z=473,dx=7,dy=5] click1
tp @a[x=581,y=91,z=473,dx=7,dy=5] 583 72 472

scoreboard players set @a[x=581,y=91,z=473,dx=7,dy=5] click1
tp @a[x=580,y=72,z=474,dx=6,dy=5] 585 91 475


#Victory Road Entrance
#Gives AllGyms check
execute as @a[tag=Viola] run execute as @s[tag=Grant] run execute as @s[tag=Korrina] run execute as @s[tag=Ramos] run execute as @s[tag=Clemont] run execute as @s[tag=Valerie] run execute as @s[tag=Olympia] run execute as @s[tag=Wulfric] run tag @s[tag=!AllGyms] add AllGyms
tellraw @a[x=688,y=117,z=312,dx=11,dy=5,tag=!AllGyms,scores={TalkTime=0}] {"text":"You haven't defeated all the gym leaders yet!","italic":true,"color":"gray"}
tp @a[x=688,y=117,z=312,dx=11,dy=5,tag=!AllGyms,scores={TalkTime=0}] 694 108 328

scoreboard players set @a[x=688,y=117,z=312,dx=11,dy=5,scores={TalkTime=0},tag=AllGyms] click1
scoreboard players set @a[x=688,y=117,z=312,dx=11,dy=5,scores={TalkTime=0},tag=AllGyms] EscapeRope 7
tp @a[x=688,y=117,z=312,dx=11,dy=5,scores={TalkTime=0},tag=AllGyms] 700 85 182

scoreboard players set @a[x=695,y=84,z=183,dx=11,dy=6] EscapeRope 0
tp @a[x=695,y=84,z=183,dx=11,dy=6] 693 117 313


#Victory Road & Pokemon League
scoreboard players set @a[x=-1914,y=79,z=2311,dx=16,dy=5] click1
scoreboard players set @a[x=-1914,y=79,z=2311,dx=16,dy=5] EscapeRope 11
tp @a[x=-1914,y=79,z=2311,dx=16,dy=5] 1579 118 1359

scoreboard players set @a[x=1574,y=118,z=1358,dx=12,dy=5] click1
scoreboard players set @a[x=1574,y=118,z=1358,dx=12,dy=5] EscapeRope 0
tp @a[x=1574,y=118,z=1358,dx=12,dy=5] -1906 83 2310



#Victory Road caves and Exteriors
tp @a[x=695,y=120,z=68,dx=10,dy=5] 2421 45 1725
tp @a[x=2418,y=45,z=1727,dx=7,dy=5] 700 120 70

tp @a[x=2282,y=60,z=1641,dy=5,dz=6] 2009 175 2430
tp @a[x=2011,y=175,z=2426,dy=5,dz=7] 2284 60 1644

tp @a[x=1968,y=175,z=2187,dx=8,dy=5] 2200 76 1561
tp @a[x=2197,y=76,z=1563,dx=7,dy=5] 1972 175 2189

tp @a[x=2318,y=106,z=1322,dy=5,dz=6,scores={TalkTime=0}] 2137 175 2257
tp @a[x=2135,y=175,z=2253,dy=5,dz=8,scores={TalkTime=0}] 2316 106 1325

tp @a[x=2338,y=175,z=2254,dy=5,dz=6,scores={TalkTime=0}] 1764 72 1386
tp @a[x=1762,y=72,z=1383,dy=5,dz=6,scores={TalkTime=0}] 2336 175 2257

tp @a[x=1772,y=82,z=1440,dy=5,dz=6] 2389 190 2281
tp @a[x=2391,y=190,z=2278,dy=5,dz=6] 1774 82 1443

tp @a[x=2290,y=175,z=2304,dy=5,dz=6] 1750 72 1538
tp @a[x=1748,y=72,z=1535,dy=5,dz=6] 2288 175 2307

tp @a[x=2192,y=175,z=2297,dy=5,dz=6] 2413 111 1508
tp @a[x=2415,y=111,z=1505,dy=5,dz=6] 2194 175 2300

tp @a[x=1746,y=175,z=2258,dy=5,dz=6] 2041 102 1458
tp @a[x=2043,y=102,z=1455,dy=5,dz=6] 1748 175 2261

tp @a[x=2311,y=76,z=1610,dx=6,dy=5] 2040 175 2210
tp @a[x=2037,y=175,z=2208,dx=6,dy=5] 2314 76 1608



#Non-Portal activated tps at

#tp @e[x=1639,y=170,z=2305,dx=12,dy=10,dz=4] 1579 71 1592

#1580 80 1601
#tp @e[x=1574,y=66,z=1599,dx=11,dy=10,dz=5] 1645 175 2315


#Prism Tower North Facing Door
scoreboard players set @a[x=-186,y=105,z=-368,dx=10,dy=5,tag=LumiosePower] click1
tp @a[x=-186,y=105,z=-368,dx=10,dy=5,tag=LumiosePower] -1823 100 -1670

execute as @a[x=-1826,y=100,z=-1668,dx=6,tag=Clemont] run scoreboard players set @s[tag=!Call6] HoloCall 6
scoreboard players set @a[x=-1826,y=100,z=-1668,dx=6,dy=5] click1
tp @a[x=-1826,y=100,z=-1668,dx=6,dy=5] -181 105 -367


#Prism Tower East Facing Door
scoreboard players set @a[x=-203,y=105,z=-395,dy=5,dz=10,tag=LumiosePower] click1
tp @a[x=-203,y=105,z=-395,dy=5,dz=10,tag=LumiosePower] -1858 100 -1705

execute as @a[x=-1860,y=100,z=-1708,dy=5,dz=6,tag=Clemont] run scoreboard players set @s[tag=!Call6] HoloCall 6
scoreboard players set @a[x=-1860,y=100,z=-1708,dy=5,dz=6] click1
tp @a[x=-1860,y=100,z=-1708,dy=5,dz=6] -204 105 -390


#Prism Tower South Facing Door
execute as @a[x=-1826,y=100,z=-1742,dx=6,dy=5,tag=Clemont] run scoreboard players set @s[tag=!Call6] HoloCall 6
scoreboard players set @a[x=-1826,y=100,z=-1742,dx=6,dy=5,tag=LumiosePower] click1
tp @a[x=-1826,y=100,z=-1742,dx=6,dy=5,tag=LumiosePower] -181 105 -413

scoreboard players set @a[x=-186,y=105,z=-412,dx=10,dy=5] click1
tp @a[x=-186,y=105,z=-412,dx=10,dy=5] -1823 100 -1740


#Prism Tower West Facing Door
scoreboard players set @a[x=-159,y=105,z=-395,dy=5,dz=10,tag=LumiosePower] click1
tp @a[x=-159,y=105,z=-395,dy=5,dz=10,tag=LumiosePower] -1788 100 -1705

execute as @a[x=-1786,y=100,z=-1708,dy=5,dz=6,tag=Clemont] run scoreboard players set @s[tag=!Call6] HoloCall 6
scoreboard players set @a[x=-1786,y=100,z=-1708,dy=5,dz=6] click1
tp @a[x=-1786,y=100,z=-1708,dy=5,dz=6] -158 105 -390


#Cyllage City Cafe
tp @a[x=-2074,y=85,z=-159,dx=5,dy=5] -2072 104 -157
tp @a[x=-2074,y=104,z=-159,dx=4,dy=5] -2071 85 -161

#Cyllage City Bike Shop
tp @a[x=-1997,y=104,z=-63,dx=4,dy=5] -1996 87 -64
tp @a[x=-1998,y=87,z=-63,dx=5,dy=5] -1995 104 -62

#Cyllage City Boutique
tp @a[x=-2003,y=104,z=-122,dx=4,dy=5] -2002 92 -122
tp @a[x=-2004,y=92,z=-121,dx=5,dy=5] -2001 104 -121


#Anistar City Cafe
tp @a[x=1292,y=108,z=-324,dx=4,dy=3] 1293 74 -326
tp @a[x=1291,y=74,z=-324,dx=4,dy=5] 1294 108 -322


#Camphrier Hotel
execute as @a[x=-1098,y=100,z=11,dx=6,dy=5,dz=2] run function kalos:world/hotelguests
tp @a[x=-1098,y=100,z=11,dx=6,dy=5,dz=2] -1095 72 11
tp @a[x=-1098,y=72,z=13,dx=6,dy=5] -1096 100 15

#Ambrette Hotel
execute as @a[x=-2001,y=128,z=657,dx=6,dy=5,dz=2] run function kalos:world/hotelguests
tp @a[x=-2001,y=128,z=657,dx=6,dy=5,dz=2] -1975 100 657
tp @a[x=-1978,y=100,z=659,dx=6,dy=5] -1999 128 661

#Cyllage Hotel
execute as @a[x=-2036,y=104,z=-143,dx=6,dy=5,dz=2] run function kalos:world/hotelguests
tp @a[x=-2036,y=104,z=-143,dx=6,dy=5,dz=2] -2033 56 -143
tp @a[x=-2036,y=56,z=-141,dx=6,dy=5] -2034 104 -139


#Geosenge Hotel (Ultimate Weapon Destroyed)
tp @a[x=-378,y=109,z=2094,dx=6,dy=5,dz=2] -2175 78 -626
execute as @a[x=-378,y=109,z=2094,dx=6,dy=5,dz=2] run function kalos:world/hotelguests
tp @a[x=-2178,y=78,z=-624,dx=6,dy=5,scores={Geosenge=2}] -376 109 2098

#Geosenge Hotel (Ultimate Weapon)
execute as @a[x=-1098,y=109,z=2094,dx=6,dy=5,dz=2] run function kalos:world/hotelguests
tp @a[x=-1098,y=109,z=2094,dx=6,dy=5,dz=2] -2175 78 -626
tp @a[x=-2178,y=78,z=-624,dx=6,dy=5,scores={Geosenge=1}] -1096 109 2097

#Geosenge Hotel (normal)
execute as @a[x=-2178,y=104,z=-626,dx=6,dy=5,dz=2] run function kalos:world/hotelguests
tp @a[x=-2178,y=104,z=-626,dx=6,dy=5,dz=2] -2175 78 -626
tp @a[x=-2178,y=78,z=-624,dx=6,dy=5] -2176 104 -622


#Coumarine Hotel
execute as @a[x=-1067,y=80,z=-840,dx=6,dy=5,dz=2] run function kalos:world/hotelguests
tp @a[x=-1067,y=80,z=-840,dx=6,dy=5,dz=2] -1040 47 -800
tp @a[x=-1043,y=47,z=-798,dx=6,dy=5] -1065 80 -836

#Couriway Hotel
execute as @a[x=1571,y=115,z=277,dx=6,dy=5,dz=2] run function kalos:world/hotelguests
tp @a[x=1571,y=115,z=277,dx=6,dy=5,dz=2] 1574 65 277
tp @a[x=1571,y=65,z=279,dx=6,dy=5] 1573 115 281



#Anistar NPC Home 1
tp @a[x=1336,y=108,z=-198,dx=4,dy=5] 1337 80 -201
tp @a[x=1335,y=80,z=-199,dx=5,dy=5] 1338 108 -196

#Anistar NPC Home 2
tp @a[x=1313,y=108,z=-222,dx=4,dy=5] 1314 87 -225
tp @a[x=1312,y=87,z=-223,dx=5,dy=5] 1315 108 -220

#Anistar NPC Home 3
tp @a[x=1313,y=108,z=-246,dx=4,dy=5] 1314 86 -252
tp @a[x=1312,y=86,z=-250,dx=5,dy=5] 1315 108 -244

#Anistar Boutique
tp @a[x=1313,y=108,z=-198,dx=4,dy=5] 1315 61 -199
tp @a[x=1313,y=61,z=-198,dx=5,dy=5] 1315 108 -197




#Kiloude and Lumiose Rail
scoreboard players set @a[x=935,y=105,z=1643,dx=1,dy=3,dz=1] click1
playsound tmv ambient @a[x=935,y=105,z=1643,dx=1,dy=3,dz=1] ~ ~ ~ 1 1 1
tp @a[x=935,y=105,z=1643,dx=1,dy=3,dz=1] 1053 105 1899 0 ~

tellraw @a[x=1053,y=105,z=1893,dx=1,dy=3,dz=1,tag=!TMVPass] {"text":"A TMV Pass is required to ride on the train!","italic":true,"color":"gray"}
execute as @a[x=1053,y=105,z=1893,dx=1,dy=3,dz=1,tag=!TMVPass] at @s run tp @s ~ ~ ~10

scoreboard players set @a[x=1053,y=105,z=1893,dx=1,dy=3,dz=1,tag=TMVPass] click1
playsound tmv ambient @a[x=1053,y=105,z=1893,dx=1,dy=3,dz=1,tag=TMVPass] ~ ~ ~ 1 1 1
tp @a[x=1053,y=105,z=1893,dx=1,dy=3,dz=1,tag=TMVPass] 942 105 1644 -90 ~


#Portal in Looker Chapter duplicate station
tellraw @a[x=1053,y=105,z=1995,dx=1,dy=3,dz=1] {"text":"The train is not currently running. Please try again later!","italic":true,"color":"gray"}
execute as @a[x=1053,y=105,z=1995,dx=1,dy=3,dz=1] at @s run tp @s ~ ~ ~10


#Kiloude City NPC Home 1
tp @a[x=1127,y=101,z=1661,dx=6,dy=5] 1129 80 1658
tp @a[x=1126,y=80,z=1660,dx=6,dy=5] 1130 101 1663

#Kiloude City NPC Home 2
tp @a[x=1254,y=101,z=1661,dx=6,dy=5] 1256 80 1658
tp @a[x=1253,y=80,z=1660,dx=6,dy=5] 1257 101 1663

#Kiloude City NPC Home 3
tp @a[x=1123,y=106,z=1602,dx=6,dy=5] 1125 79 1599
tp @a[x=1122,y=79,z=1601,dx=6,dy=5] 1126 106 1604

#Kiloude City NPC Home 4
tp @a[x=1133,y=111,z=1538,dx=6,dy=5] 1135 91 1535
tp @a[x=1132,y=91,z=1537,dx=6,dy=5] 1136 111 1540

#Kiloude City NPC Home 5
tp @a[x=1159,y=111,z=1538,dx=6,dy=5] 1161 67 1535
tp @a[x=1158,y=67,z=1537,dx=6,dy=5] 1162 111 1540

#Kiloude City Station
tp @a[x=1075,y=101,z=1649,dx=10,dy=5] 948 105 1688
tp @a[x=943,y=105,z=1690,dx=10,dy=5] 1080 101 1651

#Kiloude City Battle Maison
scoreboard players set @a[x=1216,y=106,z=1602,dx=8,dy=5] click 1
tp @a[x=1216,y=106,z=1602,dx=8,dy=5] 1220 65 1603

scoreboard players set @a[x=1216,y=65,z=1604,dx=8,dy=5] click 1
scoreboard players set @a[x=1216,y=65,z=1604,dx=8,dy=5] BattleMaison 0
tp @a[x=1216,y=65,z=1604,dx=8,dy=5] 1220 106 1603




#Lumiose City Station

#Looker Chapter Active
execute as @a[x=141,y=101,z=-385,dy=5,dz=10,tag=Dialogue182] run tp @s[tag=!Dialogue184] 1016 105 2020 180 ~
tp @a[x=1011,y=105,z=2021,dx=10,dy=5,scores={TalkTime=0}] 139 101 -380 90 ~

tp @a[x=1011,y=105,z=1919,dx=10,dy=5] 139 101 -380 90 ~
tp @a[x=141,y=101,z=-385,dy=5,dz=10] 1016 105 1917 180 ~




#Route 13 and Power Plant
tellraw @a[x=-818,y=105,z=-304,dx=1,dy=2,dz=1,tag=!PowerPlantPass] {"text":"A Power Plant Pass is reqiured to access the Power Plant!","italic":true,"color":"gray"}
execute as @a[x=-818,y=105,z=-304,dx=1,dy=2,dz=1,tag=!PowerPlantPass] at @s run tp @s ~10 ~ ~

scoreboard players set @a[x=-818,y=105,z=-304,dx=1,dy=2,dz=1,tag=PowerPlantPass] click1
tp @a[x=-818,y=105,z=-304,dx=1,dy=2,dz=1,tag=PowerPlantPass] -808 48 -349

scoreboard players set @a[x=-806,y=48,z=-352,dy=5,dz=6] click1
tp @a[x=-806,y=48,z=-352,dy=5,dz=6] -814 104 -304


#Power Plant Interior room
tp @a[x=-947,y=48,z=-367,dy=5,dz=5,scores={TalkTime=0},tag=!Dialogue75] -949 75 -364
tp @a[x=-947,y=48,z=-367,dy=5,dz=5,scores={TalkTime=0},tag=Dialogue75] -949 63 -364

tp @a[x=-948,y=75,z=-367,dy=5,dz=5] -946 48 -364
tp @a[x=-948,y=63,z=-367,dy=5,dz=5] -946 48 -364

#Azure Bay Sea Spirit's Den
execute as @a[x=-1332,y=76,z=-1187,dx=5,dy=5,scores={Articuno=5,StarterPick=1,PokemonLeague=1..}] run tp @e[x=-501,y=163,z=1238,dy=3,type=pixelmon:statue] -1335 22 -1252
execute as @a[x=-1332,y=76,z=-1187,dx=5,dy=5,scores={Zapdos=5,StarterPick=2,PokemonLeague=1..}] run tp @e[x=-501,y=172,z=1238,dy=3,type=pixelmon:statue] -1349 22 -1232
execute as @a[x=-1332,y=76,z=-1187,dx=5,dy=5,scores={Moltres=5,StarterPick=3,PokemonLeague=1..}] run tp @e[x=-501,y=154,z=1238,dy=3,type=pixelmon:statue] -1313 22 -1232
scoreboard players set @a[x=-1332,y=76,z=-1187,dx=5,dy=5] click1
tp @a[x=-1332,y=76,z=-1187,dx=5,dy=5] -1331 22 -1188

scoreboard players set @a[x=-1334,y=22,z=-1187,dx=6,dy=5] click1
tp @a[x=-1334,y=22,z=-1187,dx=6,dy=5] -1329 76 -1186




#Battle Chateau
team join Default @a[x=-1535,y=65,z=-54,dx=5,dy=5,scores={TalkTime=0}]
scoreboard players set @a[x=-1535,y=65,z=-54,dx=5,dy=5,scores={TalkTime=0}] click1
tp @a[x=-1535,y=65,z=-54,dx=5,dy=5,scores={TalkTime=0}] -1534 102 -49

#Prompts the player to pick a gender if not present
tellraw @a[x=-1537,y=100,z=-53,dx=5,dy=7,scores={Gender=0,TalkTime=0}] ["",{"text":"Welcome to the Battle Chateau! For the purposes of nobility ranks, please choose a gender.","italic":true,"color":"gray"},{"text":"\n["},{"text":"Man","color":"blue","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 12"}},{"text":"] ["},{"text":"Woman","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 13"}},{"text":"]"}]
scoreboard players enable @a[x=-1537,y=100,z=-53,dx=5,dy=7,scores={Gender=0,TalkTime=0}] TalkTrigger

#Welcomes the player using their rank
tellraw @a[x=-1537,y=100,z=-53,dx=5,dy=7,scores={Gender=1,ChateauRank=1..5,TalkTime=0}] ["",{"text":"Welcome to the Battle Chateau, Baron "},{"selector":"@p[x=-1537,y=100,z=-53,dx=5,dy=7]"}]
tellraw @a[x=-1537,y=100,z=-53,dx=5,dy=7,scores={Gender=1,ChateauRank=6..30,TalkTime=0}] ["",{"text":"Welcome to the Battle Chateau, Viscount "},{"selector":"@p[x=-1537,y=100,z=-53,dx=5,dy=7]"}]
tellraw @a[x=-1537,y=100,z=-53,dx=5,dy=7,scores={Gender=1,ChateauRank=31..98,TalkTime=0}] ["",{"text":"Welcome to the Battle Chateau, Earl "},{"selector":"@p[x=-1537,y=100,z=-53,dx=5,dy=7]"}]
tellraw @a[x=-1537,y=100,z=-53,dx=5,dy=7,scores={Gender=1,ChateauRank=99..295,TalkTime=0}] ["",{"text":"Welcome to the Battle Chateau, Marquis "},{"selector":"@p[x=-1537,y=100,z=-53,dx=5,dy=7]"}]
tellraw @a[x=-1537,y=100,z=-53,dx=5,dy=7,scores={Gender=1,ChateauRank=296..,TalkTime=0},tag=!GrandDuke] ["",{"text":"Welcome to the Battle Chateau, Duke "},{"selector":"@p[x=-1537,y=100,z=-53,dx=5,dy=7]"}]
tellraw @a[x=-1537,y=100,z=-53,dx=5,dy=7,scores={Gender=1,ChateauRank=296..,TalkTime=0},tag=GrandDuke] ["",{"text":"Welcome to the Battle Chateau, Grand Duke "},{"selector":"@p[x=-1537,y=100,z=-53,dx=5,dy=7]"}]

tellraw @a[x=-1537,y=100,z=-53,dx=5,dy=7,scores={Gender=2,ChateauRank=1..5,TalkTime=0}] ["",{"text":"Welcome to the Battle Chateau, Baroness "},{"selector":"@p[x=-1537,y=100,z=-53,dx=5,dy=7]"}]
tellraw @a[x=-1537,y=100,z=-53,dx=5,dy=7,scores={Gender=2,ChateauRank=6..30,TalkTime=0}] ["",{"text":"Welcome to the Battle Chateau, Viscountess "},{"selector":"@p[x=-1537,y=100,z=-53,dx=5,dy=7]"}]
tellraw @a[x=-1537,y=100,z=-53,dx=5,dy=7,scores={Gender=2,ChateauRank=31..98,TalkTime=0}] ["",{"text":"Welcome to the Battle Chateau, Countess "},{"selector":"@p[x=-1537,y=100,z=-53,dx=5,dy=7]"}]
tellraw @a[x=-1537,y=100,z=-53,dx=5,dy=7,scores={Gender=2,ChateauRank=99..295,TalkTime=0}] ["",{"text":"Welcome to the Battle Chateau, Marchioness "},{"selector":"@p[x=-1537,y=100,z=-53,dx=5,dy=7]"}]
tellraw @a[x=-1537,y=100,z=-53,dx=5,dy=7,scores={Gender=2,ChateauRank=296,TalkTime=0},tag=!GrandDuke] ["",{"text":"Welcome to the Battle Chateau, Duchess "},{"selector":"@p[x=-1537,y=100,z=-53,dx=5,dy=7]"}]
tellraw @a[x=-1537,y=100,z=-53,dx=5,dy=7,scores={Gender=2,ChateauRank=296,TalkTime=0},tag=GrandDuke] ["",{"text":"Welcome to the Battle Chateau, Grand Duchess "},{"selector":"@p[x=-1537,y=100,z=-53,dx=5,dy=7]"}]


#tps player
team join Chateau @a[x=-1537,y=100,z=-53,dx=5,dy=7,scores={TalkTime=0}]
scoreboard players set @a[x=-1537,y=100,z=-53,dx=5,dy=7,scores={TalkTime=0}] click1
tp @a[x=-1537,y=100,z=-53,dx=5,dy=7,scores={TalkTime=0}] -1533 65 -56





#Battle Chateau Front Left Room
tp @a[x=-1544,y=65,z=-80,dx=7,dy=5] -1575 67 -111
tp @a[x=-1578,y=67,z=-110,dx=7,dy=5] -1540 65 -79

#Battle Chateau Front Right Room
tp @a[x=-1528,y=65,z=-80,dx=7,dy=5] -1532 67 -111
tp @a[x=-1535,y=67,z=-110,dx=7,dy=5] -1525 65 -79

#Battle Chateau Back Room
tp @a[x=-1536,y=65,z=-84,dx=7,dy=5] -1499 67 -129
tp @a[x=-1503,y=67,z=-130,dx=7,dy=5] -1533 65 -85



#Starter Rooms TP Back
#Kalos
tellraw @a[x=-1079,y=100,z=1281,dx=2,dy=5,dz=1] {"text":"Right click what starter you want!","italic":true,"color":"gray"}
tp @a[x=-1079,y=100,z=1281,dx=2,dy=5,dz=1] -1078 101 1211 180 ~

tellraw @a[x=-1079,y=100,z=1334,dx=2,dy=5,dz=1] {"text":"Right click what starter you want!","italic":true,"color":"gray"}
tp @a[x=-1079,y=100,z=1334,dx=2,dy=5,dz=1] -1078 101 1211 180 ~

tellraw @a[x=-1079,y=100,z=1396,dx=2,dy=5,dz=1] {"text":"Right click what starter you want!","italic":true,"color":"gray"}
tp @a[x=-1079,y=100,z=1396,dx=2,dy=5,dz=1] -1078 101 1211 180 ~


#Kanto
tellraw @a[x=-1010,y=100,z=1396,dx=2,dy=5,dz=1] {"text":"Right click what starter you want!","italic":true,"color":"gray"}
tp @a[x=-1010,y=100,z=1396,dx=2,dy=5,dz=1] -1009 101 1211 180 ~

tellraw @a[x=-1010,y=100,z=1334,dx=2,dy=5,dz=1] {"text":"Right click what starter you want!","italic":true,"color":"gray"}
tp @a[x=-1010,y=100,z=1334,dx=2,dy=5,dz=1] -1009 101 1211 180 ~

tellraw @a[x=-1010,y=100,z=1281,dx=2,dy=5,dz=1] {"text":"Right click what starter you want!","italic":true,"color":"gray"}
tp @a[x=-1010,y=100,z=1281,dx=2,dy=5,dz=1] -1009 101 1211 180 ~


#Snowbelle City NPC Home 1
tp @a[x=1215,y=105,z=455,dx=4,dy=5] 1216 68 454
tp @a[x=1213,y=68,z=455,dx=6,dy=5] 1217 105 456

#Snowbelle City NPC Home 2
tp @a[x=1195,y=105,z=455,dx=4,dy=5] 1196 47 454
tp @a[x=1193,y=47,z=455,dx=6,dy=5] 1197 105 457

#Snowbelle City NPC Home 3
tp @a[x=1168,y=100,z=430,dx=4,dy=5] 1169 71 429
tp @a[x=1166,y=71,z=430,dx=6,dy=5] 1170 100 431

#Snowbelle City NPC Home 4
tp @a[x=1078,y=109,z=427,dx=4,dy=5] 1079 70 426
tp @a[x=1076,y=70,z=427,dx=6,dy=5] 1080 109 429

#Snowbelle City NPC Home 5
tp @a[x=1092,y=109,z=523,dx=4,dy=5] 1093 80 522
tp @a[x=1090,y=80,z=523,dx=6,dy=5] 1094 109 525

#Snowbelle City Boutique
tp @a[x=1111,y=100,z=455,dx=5,dy=5] 1112 86 454
tp @a[x=1110,y=86,z=455,dx=5,dy=5] 1113 100 456


#Route 18 Inver Home
scoreboard players set @a[x=1474,y=110,z=-51,dx=3,dy=3,scores={TalkTime=0},tag=!Dialogue267] DialogueTrigger 267
tp @a[x=1474,y=110,z=-51,dx=3,dy=3,scores={TalkTime=0}] 1476 86 -52

tp @a[x=1473,y=86,z=-51,dx=5,dy=5] 1476 110 -50


#Couriway NPC Home 1
tp @a[x=1480,y=100,z=294,dx=4,dy=5] 1481 80 292
tp @a[x=1479,y=80,z=293,dx=6,dy=5] 1482 100 295

#Couriway NPC Home 2
tp @a[x=1455,y=100,z=221,dx=4,dy=5] 1456 83 219
tp @a[x=1454,y=83,z=220,dx=5,dy=5] 1457 100 222




#Dendemille NPC Home 1
tp @a[x=691,y=108,z=-431,dx=4,dy=5] 692 90 -433
tp @a[x=690,y=90,z=-432,dx=5,dy=5] 693 108 -430

#Dendemille NPC Home 2
tp @a[x=701,y=119,z=-534,dx=4,dy=5] 702 87 -536
tp @a[x=700,y=87,z=-535,dx=5,dy=5] 703 119 -533

#Dendemille NPC Home 3
tp @a[x=612,y=116,z=-536,dx=4,dy=5] 613 85 -538
tp @a[x=611,y=85,z=-537,dx=5,dy=5] 614 116 -535

#Dendemille NPC Home 4
tp @a[x=612,y=116,z=-467,dx=4,dy=5] 613 91 -469
tp @a[x=611,y=91,z=-468,dx=5,dy=5] 614 116 -466



#Laverre City NPC Home 1
tp @a[x=-185,y=100,z=-1364,dx=4,dy=5] -184 86 -1366
tp @a[x=-186,y=86,z=-1365,dx=5,dy=5] -183 100 -1363

#Laverre City NPC Home 2
tp @a[x=-48,y=100,z=-1449,dx=4,dy=5] -47 85 -1451
tp @a[x=-49,y=85,z=-1450,dx=5,dy=5] -46 100 -1448

#Laverre City NPC Home 3
tp @a[x=-177,y=104,z=-1500,dx=4,dy=5] -176 90 -1502
tp @a[x=-178,y=90,z=-1501,dx=5,dy=5] -175 104 -1499

#Laverre City NPC Home 4
tp @a[x=-203,y=104,z=-1500,dx=4,dy=5] -202 89 -1502
tp @a[x=-204,y=89,z=-1501,dx=5,dy=5] -201 104 -1499

#Laverre City Boutique
tp @a[x=-154,y=100,z=-1364,dx=4,dy=5] -151 88 -1365
tp @a[x=-153,y=88,z=-1364,dx=5,dy=5] -152 100 -1363

#Laverre City Cafe
tp @a[x=-42,y=104,z=-1511,dx=4,dy=5] -41 86 -1511
tp @a[x=-43,y=86,z=-1509,dx=5,dy=5] -40 104 -1510


#Route 14 Scary House
#Interior Door
execute as @e[x=-233,y=87,z=-1225,dx=6,dy=5,scores={TalkTime=0}] run tp @e[x=-230,y=88,z=-1242,dy=3,type=pixelmon:statue] -501 119 1238
execute as @e[x=-233,y=87,z=-1225,dx=6,dy=5,scores={TalkTime=0}] run tp @e[x=-501,y=118,z=1238,dy=3,type=pixelmon:npc_chatting] -230 88 -1242

scoreboard players set @a[x=-233,y=87,z=-1225,dx=6,dy=5,tag=Dialogue83] DialogueTrigger 84
scoreboard players set @a[x=-233,y=87,z=-1225,dx=6,dy=5,scores={TalkTime=0}] click 1
tp @a[x=-233,y=87,z=-1225,dx=6,dy=5,scores={TalkTime=0}] -231 100 -1224


#Exterior Door
execute as @e[x=-233,y=100,z=-1225,dx=4,dy=5,scores={Hoopa=0,PokemonLeague=1..,TalkTime=0}] run tp @e[x=-501,y=118,z=1238,dy=3,type=pixelmon:statue] -230 88 -1242
execute as @e[x=-233,y=100,z=-1225,dx=4,dy=5,scores={Hoopa=0,PokemonLeague=1..,TalkTime=0}] run tp @e[x=-230,y=87,z=-1242,dy=3,type=pixelmon:npc_chatting] -501 119 1238

scoreboard players set @a[x=-233,y=100,z=-1225,dx=4,dy=5,tag=Dialogue82] DialogueTrigger 83
scoreboard players set @a[x=-233,y=100,z=-1225,dx=4,dy=5,scores={TalkTime=0}] click 1
tp @a[x=-233,y=100,z=-1225,dx=4,dy=5,scores={TalkTime=0}] -231 87 -1226



#Route 16 Fishing Shack
tp @a[x=336,y=100,z=-251,dx=4,dy=5] 337 80 -252
tp @a[x=335,y=80,z=-251,dx=5,dy=5] 338 100 -250

#Route 21 Move Tutor
tp @a[x=923,y=104,z=318,dx=4,dy=5] 923 88 317
tp @a[x=921,y=88,z=318,dx=5,dy=5] 925 104 319




#Lumiose City PR Video Studio
scoreboard players set @a[x=-253,y=101,z=-75,dx=8,dy=5,dz=4] click 1
tp @a[x=-253,y=101,z=-75,dx=8,dy=5,dz=4] -133 101 106 180 ~

scoreboard players set @a[x=-135,y=101,z=108,dx=4,dy=5] click 1
tp @a[x=-135,y=101,z=108,dx=4,dy=5] -247 101 -76 -167 ~


#Lumiose City Sycamore Pokemon Lab
scoreboard players set @a[x=-184,y=104,z=-41,dx=6,dy=5,tag=!Dialogue17,scores={TalkTime=0}] DialogueTrigger 17
scoreboard players set @a[x=-184,y=104,z=-41,dx=6,dy=5,scores={TalkTime=0}] click 1
tp @a[x=-184,y=104,z=-41,dx=6,dy=5,scores={TalkTime=0}] -253 101 98 180 ~

scoreboard players set @a[x=-256,y=101,z=100,dx=6,dy=5,scores={TalkTime=0}] click 1
tp @a[x=-256,y=101,z=100,dx=6,dy=5,scores={TalkTime=0}] -181 104 -43 180 ~


#Lumiose City Transportation Office
tp @a[x=-40,y=100,z=-101,dx=8,dy=5,dz=3] -306 101 98 180 ~
tp @a[x=-309,y=101,z=100,dx=6,dy=5] -38 101 -102 147 ~

#Lumiose City Battle Institute
tp @a[x=142,y=101,z=-455,dy=5,dz=7] -366 101 224 180 ~
tp @a[x=-369,y=101,z=225,dx=6,dy=5] 140 101 -452 90 ~

#Lumiose Office Cafe
tp @a[x=48,y=101,z=-621,dx=8,dy=5,dz=5] -406 101 98 180 ~
tp @a[x=-409,y=101,z=100,dx=6,dy=5] 47 101 -615 58 ~

#Lumiose Hotel Richissime
scoreboard players set @a[x=-12,y=101,z=-673,dx=5,dy=5,dz=2] click 1
tp @a[x=-12,y=101,z=-673,dx=5,dy=5,dz=2] -464 101 354 180 ~

scoreboard players set @a[x=-467,y=101,z=355,dx=6,dy=5] click 1
tp @a[x=-467,y=101,z=355,dx=6,dy=5] -11 101 -670 18 ~


#Lumiose City Museum
scoreboard players set @a[x=-105,y=101,z=-711,dx=8,dy=5,dz=3,scores={TalkTime=0}] click 1
tp @a[x=-105,y=101,z=-711,dx=8,dy=5,dz=3,scores={TalkTime=0}] -83 77 357 180 ~

scoreboard players set @a[x=-86,y=77,z=358,dx=6,dy=5,scores={TalkTime=0}] click 1
tp @a[x=-86,y=77,z=358,dx=6,dy=5,scores={TalkTime=0}] -102 101 -707 21 ~

#Lumiose Fighting Dojo
tp @a[x=-267,y=101,z=-704,dx=5,dy=5,dz=3] -158 101 225 180 ~
tp @a[x=-161,y=101,z=226,dx=6,dy=5] -263 101 -700 -21 ~

#Lumiose Mamoswine Photoshoot Area
tp @a[x=-455,y=101,z=-569,dx=6,dy=5,dz=8] -499 101 99 180 ~
tp @a[x=-502,y=101,z=100,dx=6,dy=5] -448 101 -562 -58 ~

#Lumiose Pokemon Feeling Study
tp @a[x=-503,y=101,z=-339,dy=5,dz=10] -451 101 98 180 ~
tp @a[x=-454,y=101,z=100,dx=5,dy=5] -502 101 -334 -90 ~

#Lumiose Pokemon Catching Study
tp @a[x=-471,y=101,z=-238,dx=4,dy=5,dz=5] -361 101 99 180 ~
tp @a[x=-364,y=101,z=100,dx=5,dy=5] -466 101 -239 -120 ~

#Lumiose Stone Emporium
scoreboard players set @a[x=-205,y=101,z=-171,dy=5,dz=8] click 1
tp @a[x=-205,y=101,z=-171,dy=5,dz=8] -414 101 225 180 ~

scoreboard players set @a[x=-416,y=101,z=226,dx=5,dy=5] click 1
tp @a[x=-416,y=101,z=226,dx=5,dy=5] -203 101 -166 -90 ~

#Lumiose City Herboriste
scoreboard players set @a[x=-205,y=101,z=-192,dy=5,dz=8] click 1
tp @a[x=-205,y=101,z=-192,dy=5,dz=8] -293 101.1 225 180 ~

scoreboard players set @a[x=-295,y=101,z=226,dx=5,dy=5] click 1
tp @a[x=-295,y=101,z=226,dx=5,dy=5] -203 101 -187 -90 ~

#Lumiose City Friseur Furfrou
scoreboard players set @a[x=-205,y=101,z=-219,dy=5,dz=8] click 1
tp @a[x=-205,y=101,z=-219,dy=5,dz=8] -196 101.1 225 180 ~

scoreboard players set @a[x=-198,y=101,z=226,dx=5,dy=5] click 1
tp @a[x=-198,y=101,z=226,dx=5,dy=5] -203 101 -214 -90 ~


#Lumiose City Cafe Woof
tp @a[x=-205,y=101,z=-240,dy=5,dz=8] -223 101 265 180 ~
tp @a[x=-225,y=101,z=266,dx=5,dy=5] -203 101 -235 -90 ~

#Lumiose City Cafe Classe
tp @a[x=-158,y=101,z=-221,dy=5,dz=8] -189 101 265 180 ~
tp @a[x=-191,y=101,z=266,dx=4,dy=5] -159 101 -217 90 ~

#Lumiose City Boutique Couture
tellraw @a[x=-156,y=101,z=-192,dy=5,dz=7,scores={Style=..14}] {"text":"Only the most stylish Trainers may shop here!","italic":true,"color":"gray"}
execute as @a[x=-156,y=101,z=-192,dy=5,dz=7,scores={Style=..14}] at @s run tp @s ~-10 ~ ~

scoreboard players set @a[x=-156,y=101,z=-192,dy=5,dz=7,scores={Style=15..}] click 1
tp @a[x=-156,y=101,z=-192,dy=5,dz=7,scores={Style=15..}] -25 101 93 180 ~

scoreboard players set @a[x=-27,y=101,z=94,dx=5,dy=5] click 1
tp @a[x=-27,y=101,z=94,dx=5,dy=5] -157 101 -188 90 ~


#Lumiose City Cafe Introversion
tp @a[x=-94,y=101,z=-146,dx=6,dy=5,dz=3] -20 101 265 180 ~
tp @a[x=-22,y=101,z=266,dx=5,dy=5] -90 101 -142 -31 ~

#Lumiose City Cafe Cyclone
tp @a[x=-54,y=101,z=-233,dx=3,dy=5,dz=5] -151 101 265 180 ~
tp @a[x=-153,y=101,z=266,dx=5,dy=5] -55 101 -229 48 ~

#Lumiose City Restaurant Le Nah
tp @a[x=27,y=101,z=-237,dx=4,dy=5,dz=4] -193 101 185 180 ~

tellraw @a[x=-196,y=101,z=186,dx=6,dy=5,scores={RestaurantBattle=1..}] {"text":"<Server> Please come back to the table!"}
execute as @a[x=-196,y=101,z=186,dx=6,dy=5,scores={RestaurantBattle=1..}] at @s run tp @s ~ ~ ~-5 ~ ~
tp @a[x=-196,y=101,z=186,dx=6,dy=5] 31 101 -232 -48 ~

#Lumiose City Jaune Plaza NPC Home
tp @a[x=21,y=101,z=-445,dx=4,dy=5] -80 101 108 180 ~
tp @a[x=-83,y=101,z=109,dx=6,dy=5] 23 101 -446 180 ~

#Lumiose City Cafe Bataille
tp @a[x=81,y=101,z=-403,dy=5,dz=8] -267 101 265 180 ~
tp @a[x=-270,y=101,z=266,dx=5,dy=5] 82 101 -399 -90 ~

#Lumiose City Cafe Action!
tp @a[x=62,y=101,z=-498,dx=4,dy=5,dz=5] -310 101 265 180 ~
tp @a[x=-313,y=101,z=266,dx=5,dy=5] 67 101 -498 -134 ~

#Lumiose City Cafe Ultimo
tp @a[x=7,y=101,z=-575,dx=4,dy=5,dz=5] -353 101 265 180 ~
tp @a[x=-356,y=101,z=266,dx=5,dy=5] 12 101 -575 -134 ~

#Lumiose City Cafe Kizuna
tp @a[x=-58,y=101,z=-523,dx=4,dy=5,dz=4] -398 101 265 180 ~
tp @a[x=-401,y=101,z=266,dx=5,dy=5] -59 101 -523 124 ~

#Lumiose City Sushi High Roller
scoreboard players set @a[x=-170,y=101,z=-602,dy=5,dz=5] click 1
tp @a[x=-170,y=101,z=-602,dy=5,dz=5] -489 101 185 180 ~

tellraw @a[x=-492,y=101,z=186,dx=6,dy=5,scores={RestaurantBattle=1..}] {"text":"<Server> Please come back to the table!"}
execute as @a[x=-492,y=101,z=186,dx=6,dy=5,scores={RestaurantBattle=1..}] at @s run tp @s ~ ~ ~-5 ~ ~
scoreboard players set @a[x=-492,y=101,z=186,dx=6,dy=5] click 1
tp @a[x=-492,y=101,z=186,dx=6,dy=5] -171 101 -600 90 ~

#Lumiose City Restaurant Le Wow
tp @a[x=-102,y=101,z=-544,dx=3,dy=5,dz=5] -295 101 185 180 ~

tellraw @a[x=-298,y=101,z=186,dx=6,dy=5,scores={RestaurantBattle=1..}] {"text":"<Server> Please come back to the table!"}
execute as @a[x=-298,y=101,z=186,dx=6,dy=5,scores={RestaurantBattle=1..}] at @s run tp @s ~ ~ ~-5 ~ ~
tp @a[x=-298,y=101,z=186,dx=6,dy=5] -98 101 -539 -70 ~

#Lumiose City Poke Ball Boutique
scoreboard players set @a[x=-280,y=101,z=-568,dx=3,dy=5,dz=4] click 1
tp @a[x=-280,y=101,z=-568,dx=3,dy=5,dz=4] -260 101.1 225 180 ~

scoreboard players set @a[x=-262,y=101,z=226,dx=5,dy=5] click 1
tp @a[x=-262,y=101,z=226,dx=5,dy=5] -281 101 -564 57 ~

#Lumiose City Cafe Pokemon-Amie
tp @a[x=-328,y=101,z=-552,dx=3,dy=5,dz=5] -443 101 265 180 ~
tp @a[x=-446,y=101,z=266,dx=5,dy=5] -324 101 -552 -131 ~

#Lumiose City Restaurant Le Yeah
tp @a[x=-267,y=100,z=-551,dx=4,dy=5,dz=4] -402 101 185 180 ~

tellraw @a[x=-405,y=101,z=186,dx=6,dy=5,scores={RestaurantBattle=1..}] {"text":"<Server> Please come back to the table!"}
execute as @a[x=-405,y=101,z=186,dx=6,dy=5,scores={RestaurantBattle=1..}] at @s run tp @s ~ ~ ~-5 ~ ~
tp @a[x=-405,y=101,z=186,dx=6,dy=5] -268 101 -547 62 ~

#Lumiose City Juice Shoppe
scoreboard players set @a[x=-254,y=101,z=-533,dx=4,dy=5,dz=5] click 1
tp @a[x=-254,y=101,z=-533,dx=4,dy=5,dz=5] -327 101 225 180 ~

scoreboard players set @a[x=-329,y=101,z=226,dx=5,dy=5] click 1
tp @a[x=-329,y=101,z=226,dx=5,dy=5] -255 101 -528 69 ~


#Lumiose City Lysandre's Cafe

#Looker Chapter



execute as @a[x=-302,y=101,z=-485,dx=4,dy=5,dz=3,scores={TalkTime=0},tag=Call21] run execute as @s[tag=!Dialogue217] run scoreboard players set @s DialogueTrigger 217
execute as @a[x=-302,y=101,z=-485,dx=4,dy=5,dz=3,scores={TalkTime=0},tag=Call21] run execute as @s[tag=!Dialogue217] run scoreboard players set @s click 1
execute as @a[x=-302,y=101,z=-485,dx=4,dy=5,dz=3,scores={TalkTime=0},tag=Call21] run execute as @s[tag=!Dialogue217] run tp @s -296 108 451 180 ~

#With Labs entrance but no Flare:
scoreboard players set @a[x=-302,y=101,z=-485,dx=4,dy=5,dz=3,tag=Dialogue133] click 1
tp @a[x=-302,y=101,z=-485,dx=4,dy=5,dz=3,tag=Dialogue133] -296 81 451 180 ~


#With Labs entrance:
scoreboard players set @a[x=-302,y=101,z=-485,dx=4,dy=5,dz=3,tag=Olympia] click 1
tp @a[x=-302,y=101,z=-485,dx=4,dy=5,dz=3,tag=Olympia] -296 133 451 180 ~


#Only storefront:
execute as @a[x=-302,y=101,z=-485,dx=4,dy=5,dz=3,scores={TalkTime=0},tag=Clemont] run scoreboard players set @s[tag=!Dialogue79] DialogueTrigger 79
tp @a[x=-302,y=101,z=-485,dx=4,dy=5,dz=3,scores={TalkTime=0}] -296 121 451 180 ~

#Return TP
scoreboard players set @a[x=-298,y=133,z=452,dx=5,dy=60,scores={TalkTime=0}] click 1
tp @a[x=-298,y=80,z=452,dx=5,dy=60,scores={TalkTime=0}] -298 101 -481 -43 ~


#----------------------------------Looker Bureau--------------------------------------------------

execute as @a[x=-191,y=101,z=-637,dy=5,dz=6,tag=Call13,scores={DialogueTrigger=0}] run scoreboard players set @s[tag=!Dialogue172] DialogueTrigger 172
execute as @a[x=-191,y=101,z=-637,dy=5,dz=6,tag=Call14,scores={DialogueTrigger=0}] run scoreboard players set @s[tag=!Dialogue176] DialogueTrigger 176
execute as @a[x=-191,y=101,z=-637,dy=5,dz=6,tag=Call15,scores={DialogueTrigger=0}] run scoreboard players set @s[tag=!Dialogue182] DialogueTrigger 179
execute as @a[x=-191,y=101,z=-637,dy=5,dz=6,tag=Call16,scores={DialogueTrigger=0}] run scoreboard players set @s[tag=!Dialogue185] DialogueTrigger 185
execute as @a[x=-191,y=101,z=-637,dy=5,dz=6,tag=Call18,scores={DialogueTrigger=0}] run scoreboard players set @s[tag=!Dialogue188] DialogueTrigger 188
execute as @a[x=-191,y=101,z=-637,dy=5,dz=6,tag=Call19,scores={DialogueTrigger=0}] run scoreboard players set @s[tag=!Dialogue194] DialogueTrigger 193
execute as @a[x=-191,y=101,z=-637,dy=5,dz=6,tag=Call20,scores={DialogueTrigger=0}] run scoreboard players set @s[tag=!Dialogue214] DialogueTrigger 214
execute as @a[x=-191,y=101,z=-637,dy=5,dz=6,tag=Dialogue217,scores={DialogueTrigger=0},tag=!LookerCooldown] run scoreboard players set @s[tag=!Dialogue226] DialogueTrigger 226


execute as @a[x=-191,y=101,z=-637,dy=5,dz=6,tag=Dialogue217,scores={TalkTime=0}] run execute as @s[tag=!LookerCooldown] run tp @s[tag=!Dialogue227] -1 101 397 180 ~
execute as @a[x=-191,y=101,z=-637,dy=5,dz=6,tag=Dialogue217,scores={TalkTime=0}] run tp @s -26 101 397 180 ~
execute as @a[x=-191,y=101,z=-637,dy=5,dz=6,tag=Call20,scores={TalkTime=0}] run tp @s -51 101 397 180 ~
execute as @a[x=-191,y=101,z=-637,dy=5,dz=6,tag=Call19,scores={TalkTime=0}] run tp @s -76 101 397 180 ~
execute as @a[x=-191,y=101,z=-637,dy=5,dz=6,tag=!Call19,scores={TalkTime=0}] run execute as @s[tag=Dialogue192] run tellraw @s[tag=!Dialogue225] {"text":"Mimi appears to be holding a note...","italic":true,"color":"gray"}
execute as @a[x=-191,y=101,z=-637,dy=5,dz=6,tag=!Call19,scores={TalkTime=0}] run tp @s[tag=Dialogue192] -101 101 397 180 ~
execute as @a[x=-191,y=101,z=-637,dy=5,dz=6,tag=Call18,scores={TalkTime=0}] run tp @s -177 101 397 180 ~
execute as @a[x=-191,y=101,z=-637,dy=5,dz=6,tag=Call16,scores={TalkTime=0}] run tp @s -126 101 397 180 ~
execute as @a[x=-191,y=101,z=-637,dy=5,dz=6,tag=Call15,scores={TalkTime=0}] run tp @s -151 101 397 180 ~
execute as @a[x=-191,y=101,z=-637,dy=5,dz=6,tag=Call14,scores={TalkTime=0}] run tp @s -177 101 397 180 ~
execute as @a[x=-191,y=101,z=-637,dy=5,dz=6,tag=Call13,scores={TalkTime=0}] run tp @s -177 101 397 180 ~


tp @a[x=-4,y=101,z=398,dx=5,dy=3,scores={TalkTime=0}] -190 101 -634 -90 ~
tp @a[x=-29,y=101,z=398,dx=5,dy=3,scores={TalkTime=0}] -190 101 -634 -90 ~
tp @a[x=-79,y=101,z=398,dx=5,dy=3,scores={TalkTime=0}] -190 101 -634 -90 ~
tp @a[x=-104,y=101,z=398,dx=5,dy=3,scores={TalkTime=0}] -190 101 -634 -90 ~
tp @a[x=-129,y=101,z=398,dx=5,dy=3,scores={TalkTime=0}] -190 101 -634 -90 ~
tp @a[x=-179,y=101,z=398,dx=5,dy=3,scores={TalkTime=0}] -190 101 -634 -90 ~
tp @a[x=-154,y=101,z=398,dx=5,dy=3,scores={TalkTime=0}] -190 101 -634 -90 ~



execute as @a[x=-54,y=101,z=398,dx=5,dy=3,scores={TalkTime=0},tag=Dialogue214] run scoreboard players set @s[tag=!Dialogue215] DialogueTrigger 215
tp @a[x=-54,y=101,z=398,dx=5,dy=3,scores={DialogueTrigger=0}] -190 101 -634 -90 ~



#Lumiose Looker Looker Bureau Empty, pre-chapters
tp @a[x=-191,y=101,z=-637,dy=5,dz=6,tag=!Call13,scores={TalkTime=0}] -226 101 225 180 ~
tp @a[x=-228,y=101,z=226,dx=5,dy=5,tag=!Call13,scores={TalkTime=0}] -190 101 -634 -90 ~

#--------------------------------------------------------------------------------------------------














#Lumiose City Cafe Rouleau
tp @a[x=-375,y=101,z=-351,dx=3,dy=5,dz=3] -66 101 265 180 ~
tp @a[x=-69,y=101,z=266,dx=5,dy=5] -374 101 -348 0 ~

#Lumiose City Cafe Gallant
tp @a[x=-336,y=101,z=-365,dx=4,dy=5,dz=2] -110 101 265 180 ~
tp @a[x=-112,y=101,z=266,dx=5,dy=5] -334 101 -362 0 ~

#Lumiose City Loto-ID Center
tp @a[x=-354,y=101,z=-310,dx=3,dy=5,dz=2] -488 102 225 180 ~
tp @a[x=-490,y=102,z=226,dx=5,dy=5] -353 101 -311 180 ~


#Lumiose City Lumiose Press
execute as @a[x=-323,y=101,z=-320,dx=3,dy=5,dz=2,tag=VolcanionCatch] run tp @e[x=-442,y=100,z=210,dy=3,type=pixelmon:npc_chatting] -504 211 1286
execute as @a[x=-323,y=101,z=-320,dx=3,dy=5,dz=2,tag=VolcanionCatch] run tp @e[x=-504,y=210,z=1288,dy=3,type=pixelmon:npc_chatting] -443 101 210
execute as @a[x=-323,y=101,z=-320,dx=3,dy=5,dz=2,tag=VolcanionCatch] run tp @e[x=-504,y=210,z=1284,dy=3,type=pixelmon:npc_chatting] -444 101 206
tp @a[x=-323,y=101,z=-320,dx=3,dy=5,dz=2] -449 101 225 180 ~


execute as @a[x=-451,y=101,z=226,dx=5,dy=5,tag=VolcanionCatch,scores={TalkTime=0}] run tp @e[x=-443,y=100,z=210,dy=3,type=pixelmon:npc_chatting] -504 211 1288
execute as @a[x=-451,y=101,z=226,dx=5,dy=5,tag=VolcanionCatch,scores={TalkTime=0}] run tp @e[x=-504,y=210,z=1286,dy=3,type=pixelmon:npc_chatting] -442 101 210
execute as @a[x=-451,y=101,z=226,dx=5,dy=5,tag=VolcanionCatch,scores={TalkTime=0}] run tp @e[x=-444,y=100,z=206,dy=3,type=pixelmon:npc_chatting] -504 211 1284
tp @a[x=-451,y=101,z=226,dx=5,dy=5,scores={TalkTime=0}] -322 101 -321 180 ~

#Lumiose City Shutterbug Cafe
tp @a[x=-415,y=101,z=-268,dx=3,dy=5,dz=3] -67 101 224 180 ~
tp @a[x=-70,y=101,z=225,dx=5,dy=5] -415 101 -264 43 ~

#Lumiose City Cafe Solelli
scoreboard players set @a[x=-388,y=101,z=-230,dx=4,dy=5,dz=6,tag=KantoStarters] DialogueTrigger 22
tp @a[x=-388,y=101,z=-230,dx=4,dy=5,dz=6] -491 101 265 180 ~
tp @a[x=-494,y=101,z=266,dx=5,dy=5,scores={TalkTime=0}] -389 101 -225 43 ~

#Lumiose City Coiffure Clips
scoreboard players set @a[x=-365,y=101,z=-199,dx=4,dy=5,dz=4] click 1
tp @a[x=-365,y=101,z=-199,dx=4,dy=5,dz=4] -123 103 185 180 ~

scoreboard players set @a[x=-125,y=103,z=186,dx=5,dy=5] click 1
tp @a[x=-125,y=103,z=186,dx=5,dy=5] -366 101 -195 48 ~

#Lumiose City Cafe Triste
tp @a[x=-397,y=101,z=-544,dx=3,dy=5,dz=6] -109 101 224 180 ~
tp @a[x=-112,y=101,z=225,dx=5,dy=5] -398 101 -544 123 ~




#Lumiose Lydanre's Lab https://cdn.bulbagarden.net/upload/5/54/XY_Lysandre_Labs_B1F.png
#Warp Pad A
tp @a[x=-325,y=141,z=377,dx=2,dy=3,dz=2] -357 141 337 -90 ~
tp @a[x=-361,y=141,z=336,dx=2,dy=3,dz=2] -321 141 378 -90 ~

#Warp Pad B
tp @a[x=-351,y=141,z=324,dx=2,dy=3,dz=2] -285 141 394

#Warp Pad C
tp @a[x=-361,y=141,z=324,dx=2,dy=3,dz=2] -339 141 395 180 ~
tp @a[x=-339,y=141,z=397,dx=2,dy=2,dz=2] -357 141 325 -22 ~

#Warp Pad E
tp @a[x=-308,y=141,z=380,dx=2,dy=2,dz=2] -233 141 338 90 ~
tp @a[x=-231,y=141,z=337,dx=2,dy=2,dz=2] -307 141 378 180 ~

#Warp Pad F
tp @a[x=-243,y=141,z=323,dx=2,dy=2,dz=2] -295 141 330 180 ~
tp @a[x=-296,y=141,z=332,dx=2,dy=2,dz=2] -239 141 324 -90 ~

#Warp Pad G
tp @a[x=-268,y=141,z=374,dx=2,dy=2,dz=2] -332 141 356 0 ~
tp @a[x=-333,y=141,z=353,dx=2,dy=2,dz=2] -264 141 375 -31 ~

#Warp Pad H
tp @a[x=-285,y=141,z=372,dx=2,dy=2,dz=2] -254 141 394 0 ~
tp @a[x=-255,y=141,z=390,dx=2,dy=2,dz=2] -281 141 373 -90 ~



#Lumiose Lydanre's Lab without Flare https://cdn.bulbagarden.net/upload/5/54/XY_Lysandre_Labs_B1F.png
#Warp Pad A
tp @a[x=-325,y=89,z=377,dx=2,dy=3,dz=2] -357 89 337 -90 ~
tp @a[x=-361,y=89,z=336,dx=2,dy=3,dz=2] -321 89 378 -90 ~

#Warp Pad B
tp @a[x=-351,y=89,z=324,dx=2,dy=3,dz=2] -285 89 394

#Warp Pad C
tp @a[x=-361,y=89,z=324,dx=2,dy=3,dz=2] -339 89 395 180 ~
tp @a[x=-339,y=89,z=397,dx=2,dy=2,dz=2] -357 89 325 -22 ~

#Warp Pad E
tp @a[x=-308,y=89,z=380,dx=2,dy=2,dz=2] -233 89 338 90 ~
tp @a[x=-231,y=89,z=337,dx=2,dy=2,dz=2] -307 89 378 180 ~

#Warp Pad F
tp @a[x=-243,y=89,z=323,dx=2,dy=2,dz=2] -295 89 330 180 ~
tp @a[x=-296,y=89,z=332,dx=2,dy=2,dz=2] -239 89 324 -90 ~

#Warp Pad G
tp @a[x=-268,y=89,z=374,dx=2,dy=2,dz=2] -332 89 356 0 ~
tp @a[x=-333,y=89,z=353,dx=2,dy=2,dz=2] -264 89 375 -31 ~

#Warp Pad H
tp @a[x=-285,y=89,z=372,dx=2,dy=2,dz=2] -254 89 394 0 ~
tp @a[x=-255,y=89,z=390,dx=2,dy=2,dz=2] -281 89 373 -90 ~




#Lumiose Lydanre's Lab Looker Chapter https://cdn.bulbagarden.net/upload/5/54/XY_Lysandre_Labs_B1F.png
#Warp Pad A
tp @a[x=-325,y=29,z=377,dx=2,dy=3,dz=2] -357 29 337 -90 ~
tp @a[x=-361,y=29,z=336,dx=2,dy=3,dz=2] -321 29 378 -90 ~

#Warp Pad B
tp @a[x=-351,y=29,z=324,dx=2,dy=3,dz=2] -285 29 394

#Warp Pad C
tp @a[x=-361,y=29,z=324,dx=2,dy=3,dz=2] -339 29 395 180 ~
tp @a[x=-339,y=29,z=397,dx=2,dy=2,dz=2] -357 29 325 -22 ~

#Warp Pad E
tp @a[x=-308,y=29,z=380,dx=2,dy=2,dz=2] -233 29 338 90 ~
tp @a[x=-231,y=29,z=337,dx=2,dy=2,dz=2] -307 29 378 180 ~

#Warp Pad F
tp @a[x=-243,y=29,z=323,dx=2,dy=2,dz=2] -295 29 330 180 ~
tp @a[x=-296,y=29,z=332,dx=2,dy=2,dz=2,scores={TalkTime=0}] -239 29 324 -90 ~

#Warp Pad G
tp @a[x=-268,y=29,z=374,dx=2,dy=2,dz=2] -332 29 356 0 ~
tp @a[x=-333,y=29,z=353,dx=2,dy=2,dz=2] -264 29 375 -31 ~

#Warp Pad H
tp @a[x=-285,y=29,z=372,dx=2,dy=2,dz=2] -254 29 394 0 ~
tp @a[x=-255,y=29,z=390,dx=2,dy=2,dz=2] -281 29 373 -90 ~





#Laverre City Gym https://gamefaqs.gamespot.com/3ds/696960-pokemon-y/map/9693?raw=1
#1
tp @a[x=-1969,y=101,z=-1684,dx=1,dy=3,dz=1] -1955 101 -1705 0 ~
tp @a[x=-1955,y=101,z=-1707,dx=1,dy=3,dz=1] -1968 101 -1682 0 ~

#2
tp @a[x=-1956,y=101,z=-1684,dx=1,dy=3,dz=1] -1991 101 -1671 180 ~
tp @a[x=-1992,y=101,z=-1670,dx=1,dy=3,dz=1] -1956 101 -1682 0 ~

#3
tp @a[x=-1933,y=101,z=-1670,dx=1,dy=3,dz=1] -1968 101 -1692 -90 ~
tp @a[x=-1970,y=101,z=-1692,dx=1,dy=3,dz=1] -1934 101 -1670 90 ~

#4
tp @a[x=-1955,y=101,z=-1692,dx=1,dy=3,dz=1] -1990 101 -1683 -45 ~
tp @a[x=-1992,y=101,z=-1685,dx=1,dy=3,dz=1] -1956 101 -1693 135 ~

#5
tp @a[x=-1977,y=101,z=-1670,dx=1,dy=3,dz=1] -1946 101 -1693 -135 ~
tp @a[x=-1948,y=101,z=-1692,dx=1,dy=3,dz=1] -1978 101 -1671 135 ~

#6
tp @a[x=-1948,y=101,z=-1670,dx=1,dy=3,dz=1] -1990 101 -1705 -45 ~
tp @a[x=-1992,y=101,z=-1707,dx=1,dy=3,dz=1] -1946 101 -1671 -135 ~

#7
tp @a[x=-1933,y=101,z=-1707,dx=1,dy=3,dz=1] -1946 101 -1683 -45 ~
tp @a[x=-1948,y=101,z=-1685,dx=1,dy=3,dz=1] -1934 101 -1705 45 ~

#8
tp @a[x=-1933,y=101,z=-1692,dx=1,dy=3,dz=1] -1990 101 -1715 -135 ~
tp @a[x=-1992,y=101,z=-1714,dx=1,dy=3,dz=1] -1934 101 -1693 135 ~

#9
tp @a[x=-1977,y=101,z=-1729,dx=1,dy=3,dz=1] -1990 101 -1693 -135 ~
tp @a[x=-1992,y=101,z=-1692,dx=1,dy=3,dz=1] -1977 101 -1727 0 ~

#10
tp @a[x=-1977,y=101,z=-1692,dx=1,dy=3,dz=1] -1934 101 -1715 135 ~
tp @a[x=-1933,y=101,z=-1714,dx=1,dy=3,dz=1] -1978 101 -1693 -135 ~

#11
tp @a[x=-1948,y=101,z=-1729,dx=1,dy=3,dz=1] -1956 102 -1715 135 ~
tp @a[x=-1955,y=102,z=-1714,dx=1,dy=3,dz=1] -1947 101 -1727 0 ~

#12
tp @a[x=-1970,y=102,z=-1725,dx=1,dy=3,dz=1] -1962 102 -1678 0 ~










#Geosenge Flare HQ

#Geosenge to Elevator
scoreboard players set @a[x=-1258,y=109,z=1794,dx=4,dy=5,scores={TalkTime=0}] click1
tp @a[x=-1258,y=109,z=1794,dx=4,dy=5,scores={TalkTime=0}] -2336 30 -922

scoreboard players set @a[x=-2338,y=30,z=-921,dx=5,dy=5] click1
tp @a[x=-2338,y=30,z=-921,dx=5,dy=5] -1255 109 1796

#Elevator to HQ
tp @a[x=-2341,y=66,z=-921,dx=10,dy=5] -2336 16 -922 180 ~
tp @a[x=-2338,y=16,z=-921,dx=5,dy=5] -2336 66 -923 180 ~

#Legend Chamber Door
scoreboard players set @a[x=-2432,y=28,z=-955,dx=9,dy=5,scores={TalkTime=0},tag=!Dialogue129] DialogueTrigger 129
#execute as @a[x=-2432,y=28,z=-955,dx=9,dy=5,score_Xerneas_min=1,score_Xerneas=1,c=1,scores={TalkTime=0}] run summon armor_stand -2336 49 -1022 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:47s}],DisabledSlots:2039327}
#execute as @a[x=-2432,y=28,z=-955,dx=9,dy=5,score_Yveltal_min=1,score_Yveltal=1,c=1,scores={TalkTime=0}] run summon armor_stand -2336 50.5 -1022 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:48s}],DisabledSlots:2039327,NoGravity:1b}
tp @a[x=-2432,y=28,z=-955,dx=9,dy=5,scores={TalkTime=0}] -2336 42 -995

#execute as @a[x=-2341,y=42,z=-994,dx=10,dy=5,score_Xerneas_min=1,score_Xerneas=1,c=1] run kill @e[x=-2336,y=49,z=-1022,r=3,type=armor_stand]
#execute as @a[x=-2341,y=42,z=-994,dx=10,dy=5,score_Yveltal_min=1,score_Yveltal=1,c=1] run kill @e[x=-2336,y=49,z=-1022,r=3,type=armor_stand]
tp @a[x=-2341,y=42,z=-994,dx=10,dy=5,scores={TalkTime=0}] -2427 28 -954


#Tower of Mastery
#2f to 3F
tp @a[x=-1683,y=130,z=-1187,dy=3] -1635 154 -1187
tp @a[x=-1637,y=154,z=-1187,dy=3] -1685 130 -1187

#3F to Mega Balcony
scoreboard players set @a[x=-1670,y=154,z=-1187,dy=3,tag=!Dialogue63] DialogueTrigger 63
tp @a[x=-1670,y=154,z=-1187,dy=3] -1647 187 -1200 -41 ~

tp @a[x=-1650,y=187,z=-1201,dx=1,dy=3,dz=1,scores={TalkTime=0}] -1672 154 -1187 90 ~



#Parfum Palace
#Main Entrance
tp @a[x=-1384,y=63,z=-376,dy=5,dz=7,scores={TalkTime=0}] -1385 100 -374
scoreboard players set @a[x=-1386,y=100,z=-378,dy=5,dz=7,tag=!Dialogue29,scores={TalkTime=0}] DialogueTrigger 29
tp @a[x=-1386,y=100,z=-378,dy=5,dz=7] -1385 63 -372

#Garden Door
tp @a[x=-1426,y=63,z=-377,dy=5,dz=10,scores={TalkTime=0}] -1435 100 -374
tp @a[x=-1434,y=100,z=-379,dy=5,dz=10] -1425 63 -372


#Bottom Floor, left to right
#1
tp @a[x=-1419,y=63,z=-317,dy=5,dz=7] -1371 47 -297
tp @a[x=-1370,y=47,z=-301,dy=5,dz=7] -1418 63 -314

#2
tp @a[x=-1419,y=63,z=-336,dy=5,dz=7] -1371 47 -322
tp @a[x=-1370,y=47,z=-326,dy=5,dz=7] -1418 63 -333

#3
tp @a[x=-1419,y=63,z=-415,dy=5,dz=7] -1371 47 -347
tp @a[x=-1370,y=47,z=-351,dy=5,dz=7] -1418 63 -412

#4
tp @a[x=-1419,y=63,z=-434,dy=5,dz=7] -1371 47 -372
tp @a[x=-1370,y=47,z=-376,dy=5,dz=7] -1418 63 -431


#Top Floor
#1
tp @a[x=-1425,y=74,z=-328,dy=5,dz=7] -1371 31 -297
tp @a[x=-1370,y=31,z=-301,dy=5,dz=7] -1424 74 -325

#2
tp @a[x=-1425,y=74,z=-344,dy=5,dz=7] -1371 31 -322
tp @a[x=-1370,y=31,z=-326,dy=5,dz=7] -1424 74 -341

#3
tp @a[x=-1425,y=74,z=-407,dy=5,dz=7] -1371 31 -347
tp @a[x=-1370,y=31,z=-351,dy=5,dz=7] -1424 74 -404

#4
tp @a[x=-1425,y=74,z=-423,dy=5,dz=7] -1371 31 -372
tp @a[x=-1370,y=31,z=-376,dy=5,dz=7] -1424 74 -420


#Balcony South
tp @a[x=-1425,y=74,z=-352,dx=15,dy=5] -1413 111 -345
tp @a[x=-1420,y=111,z=-344,dx=14,dy=5,scores={TalkTime=0}] -1418 74 -351

#Balcony North
tp @a[x=-1425,y=74,z=-392,dx=15,dy=5] -1413 111 -403
tp @a[x=-1420,y=111,z=-404,dx=14,dy=5,scores={TalkTime=0}] -1417 74 -393


#Lumiose City Gym
#Lobby and Floor 2
tellraw @a[x=-1823,y=100,z=-1705,dy=5,tag=Clemont] {"text":"You already defeated Clemont!","italic":true,"color":"gray"}
execute as @a[x=-1823,y=100,z=-1705,dy=5,tag=Clemont] at @s run tp @s ~ ~ ~5

tellraw @a[x=-1823,y=100,z=-1705,dy=5,tag=!Clemont] {"text":"Welcome to the Lumiose City Gym! You will have to answer our questions if you want to get any farther ahead! Just battle the trainer you think is the answer!"}
tp @a[x=-1823,y=100,z=-1705,dy=5,tag=!Clemont] -1823 110 -1706

#Floor 2 to Floor 3
tellraw @a[x=-1811,y=109,z=-1741,dy=3] {"text":"Quiz time!"}
execute as @a[x=-1811,y=109,z=-1741,dy=3] run fill -1810 110 -1738 -1812 112 -1738 minecraft:light_blue_stained_glass
tp @a[x=-1811,y=109,z=-1741,dy=3] -1823 125 -1706

#Floor 3 to 4
tellraw @a[x=-1835,y=125,z=-1741,dy=3] {"text":"Quiz time!"}
execute as @a[x=-1835,y=125,z=-1741,dy=3] run fill -1834 125 -1738 -1836 127 -1738 minecraft:light_blue_stained_glass
tp @a[x=-1835,y=125,z=-1741,dy=3] -1823 140 -1706

#Floor 4 to 5
tellraw @a[x=-1811,y=140,z=-1741,dy=3] {"text":"Quiz time!"}
execute as @a[x=-1811,y=140,z=-1741,dy=3] run fill -1810 140 -1738 -1812 142 -1738 minecraft:light_blue_stained_glass
tp @a[x=-1811,y=140,z=-1741,dy=3] -1823 155 -1706

#Floor 5 to 6 (gym leader)
execute as @a[x=-1823,y=155,z=-1741,dy=3] run fill -1822 155 -1738 -1824 157 -1738 minecraft:light_blue_stained_glass
tp @a[x=-1823,y=155,z=-1741,dy=3] -1823 170 -1706



#Return to gym lobby
execute as @a[x=-1823,y=125,z=-1705,dy=65] run tellraw @s ["",{"text":"Would you like to return to the lobby?\n["},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 3"}},{"text":"]"}]
execute as @a[x=-1823,y=125,z=-1705,dy=65] run scoreboard players enable @s TalkTrigger
execute as @a[x=-1823,y=125,z=-1705,dy=65] at @s run tp @s ~ ~ ~-3

tp @a[x=-1823,y=110,z=-1705,dy=3] -1823 100 -1703 0 ~
tp @a[x=-1832,y=172,z=-1730,dx=2,dy=3,dz=2] -1823 100 -1703 0 ~




#Pokemon League
#Lobby Entrance

tp @a[x=-1910,y=31,z=2242,dx=10,dy=5] -1906 100 2075
tp @a[x=-1915,y=100,z=2073,dx=18,dy=5] -1907 31 2240

#Right Entrance to E4
tag @a[x=-1880,y=31,z=2105,dx=11,dy=5] remove Diantha
tag @a[x=-1880,y=31,z=2105,dx=11,dy=5] remove Malva
tag @a[x=-1880,y=31,z=2105,dx=11,dy=5] remove Drasna
tag @a[x=-1880,y=31,z=2105,dx=11,dy=5] remove Wikstrom
tag @a[x=-1880,y=31,z=2105,dx=11,dy=5] remove Siebold
tag @a[x=-1880,y=31,z=2105,dx=11,dy=5] remove Dialogue151
tag @a[x=-1880,y=31,z=2105,dx=11,dy=5] remove Dialogue153
tag @a[x=-1880,y=31,z=2105,dx=11,dy=5] remove Dialogue154
tp @a[x=-1880,y=31,z=2105,dx=11,dy=5] -1896 32 2108 27 ~

execute as @a[x=-1895,y=32,z=2103,dx=4,dy=5,dz=4,tag=!Diantha,tag=!Malva,tag=!Siebold,tag=!Drasna,tag=!Wikstrom] run tp @s[scores={TalkTime=0}] -1875 31 2107 0 ~

tellraw @a[x=-1895,y=32,z=2103,dx=4,dy=5,dz=4,scores={TalkTime=0}] ["",{"text":"Would you like to leave the Elite Four challenge? Your battle progress will be reset. ","italic":true,"color":"gray"},{"text":"\n"},{"text":"[","color":"white"},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 4"}},{"text":"]","color":"white"}]
scoreboard players enable @a[x=-1895,y=32,z=2103,dx=4,dy=5,dz=4,scores={TalkTime=0}] TalkTrigger
execute as @a[x=-1895,y=32,z=2103,dx=4,dy=5,dz=4,scores={TalkTime=0}] at @s run tp @s ~-4 ~ ~4



#Left Entrance to E4
tag @a[x=-1944,y=31,z=2105,dx=11,dy=5] remove Diantha
tag @a[x=-1944,y=31,z=2105,dx=11,dy=5] remove Malva
tag @a[x=-1944,y=31,z=2105,dx=11,dy=5] remove Drasna
tag @a[x=-1944,y=31,z=2105,dx=11,dy=5] remove Wikstrom
tag @a[x=-1944,y=31,z=2105,dx=11,dy=5] remove Siebold
tag @a[x=-1944,y=31,z=2105,dx=11,dy=5] remove Dialogue151
tag @a[x=-1944,y=31,z=2105,dx=11,dy=5] remove Dialogue153
tag @a[x=-1944,y=31,z=2105,dx=11,dy=5] remove Dialogue154
tp @a[x=-1944,y=31,z=2105,dx=11,dy=5] -1918 32 2108 -27 ~


execute as @a[x=-1923,y=32,z=2103,dx=4,dy=5,dz=4,tag=!Diantha] run execute as @s[tag=!Malva] run execute as @s[tag=!Siebold] run execute as @s[tag=!Drasna] run execute as @s[tag=!Wikstrom] run tp @s[scores={TalkTime=0}] -1939 31 2107 0 ~

tellraw @a[x=-1923,y=32,z=2103,dx=4,dy=5,dz=4,scores={TalkTime=0}] ["",{"text":"Would you like to leave the Elite Four challenge? Your battle progress will be reset. ","italic":true,"color":"gray"},{"text":"\n"},{"text":"[","color":"white"},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 5"}},{"text":"]","color":"white"}]
scoreboard players enable @a[x=-1923,y=32,z=2103,dx=4,dy=5,dz=4,scores={TalkTime=0}] TalkTrigger
execute at @a[x=-1923,y=32,z=2103,dx=4,dy=5,dz=4,scores={TalkTime=0}] as @s run tp @s ~4 ~ ~4


#Blazing Chamber Hallway
title @a[x=-1888,y=32,z=2121,dy=5,dz=6,scores={TalkTime=0}] actionbar {"text":"Blazing Chamber","color":"red"}
tp @a[x=-1888,y=32,z=2121,dy=5,dz=6,scores={TalkTime=0}] -2026 7 2180 180 ~
tp @a[x=-2029,y=7,z=2181,dx=6,dy=5] -1889 32 2125 90 ~

#Flooded Chamber Hallway
title @a[x=-1888,y=32,z=2150,dy=5,dz=6,scores={TalkTime=0}] actionbar {"text":"Flood Chamber","color":"blue"}
tp @a[x=-1888,y=32,z=2150,dy=5,dz=6,scores={TalkTime=0}] -1970 7 2178 180 ~
tp @a[x=-1973,y=7,z=2179,dx=6,dy=5] -1889 32 2153 90 ~

#Ironworks Chamber Hallway
title @a[x=-1926,y=32,z=2121,dy=5,dz=6,scores={TalkTime=0}] actionbar {"text":"Ironworks Chamber","color":"white"}
tp @a[x=-1926,y=32,z=2121,dy=5,dz=6,scores={TalkTime=0}] -1837 7 2179 180 ~
tp @a[x=-1840,y=7,z=2180,dx=6,dy=5] -1925 32 2125 -90 ~


#Dragonmark Chamber Hallway
title @a[x=-1926,y=32,z=2150,dy=5,dz=6,scores={TalkTime=0}] actionbar {"text":"Dragonmark Chamber","color":"light_purple"}
tp @a[x=-1926,y=32,z=2150,dy=5,dz=6,scores={TalkTime=0}] -1784 7 2179 180 ~
tp @a[x=-1787,y=7,z=2180,dx=6,dy=5] -1925 32 2153 -90 ~


#Radiant Chamber
execute as @a[x=-1909,y=33,z=2101,dx=4,dy=5,tag=Malva,tag=Siebold,tag=Drasna,tag=Wikstrom] run scoreboard players set @s[tag=!Dialogue149,scores={PokemonLeague=0}] DialogueTrigger 149
execute as @a[x=-1909,y=33,z=2101,dx=4,dy=5,tag=Malva,tag=Siebold,tag=Drasna,tag=Wikstrom] run scoreboard players set @s[scores={PokemonLeague=1..,TalkTime=0}] DialogueTrigger 151
execute as @a[x=-1909,y=33,z=2101,dx=4,dy=5,tag=Malva,tag=Siebold,tag=Drasna,tag=Wikstrom] run title @s actionbar {"text":"Radiant Chamber"}
execute as @a[x=-1909,y=33,z=2101,dx=4,dy=5,tag=Malva,tag=Siebold,tag=Drasna,tag=Wikstrom] run tp @s[scores={TalkTime=0}] -1906 22 1978

tellraw @a[x=-1909,y=33,z=2101,dx=4,dy=5,scores={TalkTime=0}] {"text":"You still need to beat the following Elite Four members:","italic":true,"color":"gray"}
tellraw @a[x=-1909,y=33,z=2101,dx=4,dy=5,scores={TalkTime=0},tag=!Malva] {"text":"Malva","italic":true,"color":"gray"}
tellraw @a[x=-1909,y=33,z=2101,dx=4,dy=5,scores={TalkTime=0},tag=!Siebold] {"text":"Siebold","italic":true,"color":"gray"}
tellraw @a[x=-1909,y=33,z=2101,dx=4,dy=5,scores={TalkTime=0},tag=!Wikstrom] {"text":"Wikstrom","italic":true,"color":"gray"}
tellraw @a[x=-1909,y=33,z=2101,dx=4,dy=5,scores={TalkTime=0},tag=!Drasna] {"text":"Drasna","italic":true,"color":"gray"}
execute as @a[x=-1909,y=33,z=2101,dx=4,dy=5,scores={TalkTime=0}] run tp @s ~ ~ ~4

#tp out of radiant chamber
tp @a[x=-1915,y=22,z=1979,dx=17,dy=5,scores={TalkTime=0}] -1907 32 2103


#Hall of Fame
tellraw @a[x=-1915,y=22,z=1873,dx=17,dy=5,tag=!Diantha,scores={TalkTime=0}] {"text":"Beat Champion Diantha to proceed!","italic":true,"color":"gray"}
execute as @a[x=-1915,y=22,z=1873,dx=17,dy=5,tag=!Diantha,scores={TalkTime=0}] at @s run tp @s ~ ~ ~4

execute as @a[x=-1915,y=22,z=1873,dx=17,dy=5,tag=Diantha,scores={PokemonLeague=0,TalkTime=0}] run scoreboard players set @s[tag=!Dialogue152] DialogueTrigger 152
execute as @a[x=-1915,y=22,z=1873,dx=17,dy=5,tag=Diantha,scores={PokemonLeague=1..,TalkTime=0}] run scoreboard players set @s DialogueTrigger 153
scoreboard players add @a[x=-1915,y=22,z=1873,dx=17,dy=5,tag=Diantha,scores={TalkTime=0}] Grass 0
scoreboard players add @a[x=-1915,y=22,z=1873,dx=17,dy=5,tag=Diantha,scores={TalkTime=0}] PokemonLeague 1
tp @a[x=-1915,y=22,z=1873,dx=17,dy=5,tag=Diantha,scores={TalkTime=0}] -1998 8 1964


#Return from chamber commands
#Fire
tp @a[x=-2040,y=30,z=2050,dy=5] -1889 32 2125 90 ~

#Water
tp @a[x=-1951,y=30,z=2050,dy=5] -1889 32 2153 90 ~

#Iron
tp @a[x=-1862,y=30,z=2050,dy=5] -1925 32 2125 -90 ~

#Dragon
tp @a[x=-1773,y=30,z=2050,dy=5] -1925 32 2153 -90 ~


#Levitation Sections, commands at spawn
#Blazing Chamber
#effect @a[x=-2028,y=44,z=2112,dx=4,dy=5,dz=4] clear
#tp @a[x=-2028,y=44,z=2112,dx=4,dy=5,dz=4] -2040 30 2048 180 ~
#effect @a[x=-2028,y=6,z=2112,dx=4,dy=50,dz=4] minecraft:levitation 5 5 true

#Water
#effect @a[x=-1972,y=44,z=2110,dx=4,dy=5,dz=4] clear
#tp @a[x=-1972,y=44,z=2110,dx=4,dy=5,dz=4] -1951 30 2048 180 ~
#effect @a[x=-1972,y=6,z=2112,dx=4,dy=50,dz=4] minecraft:levitation 5 5 true

#Iron
#effect @a[x=-1839,y=44,z=2111,dx=4,dy=5,dz=4] clear
#tp @a[x=-1839,y=44,z=2111,dx=4,dy=5,dz=4] -1862 30 2048 180 ~
#effect @a[x=-1839,y=6,z=2111,dx=4,dy=50,dz=4] minecraft:levitation 5 5 true

#Dragon
#effect @a[x=-1786,y=44,z=2111,dx=4,dy=5,dz=4] clear
#tp @a[x=-1786,y=44,z=2111,dx=4,dy=5,dz=4] -1773 30 2048 180 ~
#effect @a[x=-1786,y=6,z=2111,dx=4,dy=50,dz=4] minecraft:levitation 5 5 true
#



#Volcanion Power Plant Chamber
execute as @a[x=-821,y=105,z=-672,dx=1,dy=2,dz=1,scores={Volcanion=0}] run tp @e[x=-501,y=136,z=1238,dy=4,type=pixelmon:statue] -859 61 -690
scoreboard players set @a[x=-821,y=105,z=-672,dx=1,dy=2,dz=1] click1
tp @a[x=-821,y=105,z=-672,dx=1,dy=2,dz=1] -659 51 -703 90 ~

scoreboard players set @a[x=-658,y=51,z=-705,dy=5,dz=5] click1
tp @a[x=-658,y=51,z=-705,dy=5,dz=5] -820 104 -667 0 ~
