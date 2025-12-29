#Assigns a MusicCheck score, and depending on if value is lower or higher run commands for being in a new area

#---------------------------------------------------------------------------------------

#Indoor areas, takes full priority over the general world areas

#Lost Hotel - 31
execute as @s[x=403,y=0,z=-497,dx=144,dy=100,dz=127] unless entity @s[scores={MusicCheck=31}] run title @s actionbar {"text":"Lost Hotel"}
execute as @s[x=403,y=0,z=-497,dx=144,dy=100,dz=127] unless entity @s[scores={MusicCheck=31}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=403,y=0,z=-497,dx=144,dy=100,dz=127] unless entity @s[scores={MusicCheck=31}] run scoreboard players set @s MusicCheck 31
execute as @s[x=403,y=0,z=-497,dx=144,dy=100,dz=127] run tag @s add Indoors


#Kalos Power Plant - 26
execute as @s[x=-1092,y=34,z=-401,dx=296,dy=55,dz=122] unless entity @s[scores={MusicCheck=26}] run title @s actionbar {"text":"Kalos Power Plant"}
execute as @s[x=-1092,y=34,z=-401,dx=296,dy=55,dz=122] unless entity @s[scores={MusicCheck=26}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-1092,y=34,z=-401,dx=296,dy=55,dz=122] unless entity @s[scores={MusicCheck=26}] run scoreboard players set @s MusicCheck 26
execute as @s[x=-1092,y=34,z=-401,dx=296,dy=55,dz=122] run tag @s add Indoors


#Power Plant Room ??? - 26
execute as @s[x=-937,y=36,z=-742,dx=280,dy=40,dz=117] unless entity @s[scores={MusicCheck=26}] run title @s actionbar {"text":"Power Plant Room ???"}
execute as @s[x=-937,y=36,z=-742,dx=280,dy=40,dz=117] unless entity @s[scores={MusicCheck=26}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-937,y=36,z=-742,dx=280,dy=40,dz=117] unless entity @s[scores={MusicCheck=26}] run scoreboard players set @s MusicCheck 26
execute as @s[x=-937,y=36,z=-742,dx=280,dy=40,dz=117] run tag @s add Indoors

#Sycamore's Lab - 63
execute as @s[x=-271,y=99,z=64,dx=36,dy=50,dz=37] unless entity @s[scores={MusicCheck=63}] run title @s actionbar {"text":"Sycamore's Lab"}
execute as @s[x=-271,y=99,z=64,dx=36,dy=50,dz=37] unless entity @s[scores={MusicCheck=63}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-271,y=99,z=64,dx=36,dy=50,dz=37] unless entity @s[scores={MusicCheck=63}] run scoreboard players set @s MusicCheck 63
execute as @s[x=-271,y=99,z=64,dx=36,dy=50,dz=37] run tag @s add Indoors

#Scary House - 61
execute as @s[x=-241,y=70,z=-1253,dx=21,dy=25,dz=28] unless entity @s[scores={MusicCheck=61}] run title @s actionbar {"text":"Scary House"}
execute as @s[x=-241,y=70,z=-1253,dx=21,dy=25,dz=28] unless entity @s[scores={MusicCheck=61}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-241,y=70,z=-1253,dx=21,dy=25,dz=28] unless entity @s[scores={MusicCheck=61}] run scoreboard players set @s MusicCheck 61
execute as @s[x=-241,y=70,z=-1253,dx=21,dy=25,dz=28] run tag @s add Indoors

#Sea Spirit's Den - 28
execute as @s[x=-1363,y=21,z=-1264,dx=65,dy=15,dz=83] unless entity @s[scores={MusicCheck=28}] run title @s actionbar {"text":"Sea Spirit's Den"}
execute as @s[x=-1363,y=21,z=-1264,dx=65,dy=15,dz=83] unless entity @s[scores={MusicCheck=28}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-1363,y=21,z=-1264,dx=65,dy=15,dz=83] unless entity @s[scores={MusicCheck=28}] run scoreboard players set @s MusicCheck 28
execute as @s[x=-1363,y=21,z=-1264,dx=65,dy=15,dz=83] run tag @s add Indoors

#Team Flare Secret HQ - 35
execute as @s[x=-2526,y=0,z=-1074,dx=232,dy=95,dz=167] unless entity @s[scores={MusicCheck=35}] run title @s actionbar {"text":"Team Flare Secret HQ"}
execute as @s[x=-2526,y=0,z=-1074,dx=232,dy=95,dz=167] unless entity @s[scores={MusicCheck=35}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-2526,y=0,z=-1074,dx=232,dy=95,dz=167] unless entity @s[scores={MusicCheck=35}] run scoreboard players set @s MusicCheck 35
execute as @s[x=-2526,y=0,z=-1074,dx=232,dy=95,dz=167] run tag @s add Indoors

#Feriend Safari Grass Area - 66
execute as @s[x=1286,y=110,z=1466,dx=42,dy=20,dz=54] unless entity @s[scores={MusicCheck=66}] run title @s actionbar {"text":"Friend Safari"}
execute as @s[x=1286,y=110,z=1466,dx=42,dy=20,dz=54] unless entity @s[scores={MusicCheck=66}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=1286,y=110,z=1466,dx=42,dy=20,dz=54] unless entity @s[scores={MusicCheck=66}] run scoreboard players set @s MusicCheck 66
execute as @s[x=1286,y=110,z=1466,dx=42,dy=20,dz=54] run tag @s add Indoors

#---------------------------------------------------------------------------------------

#Vaniville Town - 1
execute as @s[x=374,y=0,z=1540,dx=241,dy=256,dz=216] unless entity @s[scores={MusicCheck=1}] run title @s actionbar {"text":"Vaniville Town"}
execute as @s[x=374,y=0,z=1540,dx=241,dy=256,dz=216] unless entity @s[scores={MusicCheck=1}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=374,y=0,z=1540,dx=241,dy=256,dz=216] unless entity @s[scores={MusicCheck=1}] run scoreboard players set @s MusicCheck 1

#Route 1 - 2
execute as @s[x=445,y=0,z=1442,dx=62,dy=256,dz=87] unless entity @s[scores={MusicCheck=2}] run title @s actionbar {"text":"Route 1 - Vaniville Pathway"}
execute as @s[x=445,y=0,z=1442,dx=62,dy=256,dz=87] unless entity @s[scores={MusicCheck=2}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=445,y=0,z=1442,dx=62,dy=256,dz=87] unless entity @s[scores={MusicCheck=2}] run scoreboard players set @s MusicCheck 2


#Aquacorde Town - 3
execute as @s[x=395,y=0,z=1236,dx=147,dy=256,dz=205] unless entity @s[scores={MusicCheck=3}] run title @s actionbar {"text":"Aquacorde Town"}
execute as @s[x=395,y=0,z=1236,dx=147,dy=256,dz=205] unless entity @s[scores={MusicCheck=3}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=395,y=0,z=1236,dx=147,dy=256,dz=205] unless entity @s[scores={MusicCheck=3}] run scoreboard players set @s MusicCheck 3


#Route 2 - 65
execute as @s[x=396,y=0,z=979,dx=146,dy=256,dz=256] unless entity @s[scores={MusicCheck=65}] run title @s actionbar {"text":"Route 2 - Avance Trail"}
execute as @s[x=396,y=0,z=979,dx=146,dy=256,dz=256] unless entity @s[scores={MusicCheck=65}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=396,y=0,z=979,dx=146,dy=256,dz=256] unless entity @s[scores={MusicCheck=65}] run scoreboard players set @s MusicCheck 65


#Santalune City - 4
execute as @s[x=93,y=0,z=384,dx=250,dy=256,dz=139] unless entity @s[scores={MusicCheck=4}] run title @s actionbar {"text":"Santalune City"}
execute as @s[x=93,y=0,z=384,dx=250,dy=256,dz=139] unless entity @s[scores={MusicCheck=4}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=93,y=0,z=384,dx=250,dy=256,dz=139] unless entity @s[scores={MusicCheck=4}] run scoreboard players set @s MusicCheck 4


#Lumiose City Above Ground - 5
execute as @s[x=-181,y=101,z=-390,distance=..395,tag=!Indoors] unless entity @s[scores={MusicCheck=5}] run title @s actionbar {"text":"Lumiose City"}
execute as @s[x=-181,y=101,z=-390,distance=..395,tag=!Indoors] unless entity @s[scores={MusicCheck=5}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-181,y=101,z=-390,distance=..395,tag=!Indoors] unless entity @s[scores={MusicCheck=5}] run scoreboard players set @s MusicCheck 5


#Lumiose Building Interiors - 5
execute as @s[x=-514,y=0,z=64,dx=516,dy=150,dz=436,tag=!Indoors] unless entity @s[scores={MusicCheck=5}] run title @s actionbar {"text":"Lumiose City"}
execute as @s[x=-514,y=0,z=64,dx=516,dy=150,dz=436,tag=!Indoors] unless entity @s[scores={MusicCheck=5}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-514,y=0,z=64,dx=516,dy=150,dz=436,tag=!Indoors] unless entity @s[scores={MusicCheck=5}] run scoreboard players set @s MusicCheck 5


#Camphrier Town - 6
execute as @s[x=-1146,y=0,z=-213,dx=182,dy=256,dz=337] unless entity @s[scores={MusicCheck=6}] run title @s actionbar {"text":"Camphrier Town"}
execute as @s[x=-1146,y=0,z=-213,dx=182,dy=256,dz=337] unless entity @s[scores={MusicCheck=6}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-1146,y=0,z=-213,dx=182,dy=256,dz=337] unless entity @s[scores={MusicCheck=6}] run scoreboard players set @s MusicCheck 6

#Cyllage City - 7
execute as @s[x=-2223,y=0,z=-217,dx=354,dy=256,dz=275] unless entity @s[scores={MusicCheck=7}] run title @s actionbar {"text":"Cyllage City"}
execute as @s[x=-2223,y=0,z=-217,dx=354,dy=256,dz=275] unless entity @s[scores={MusicCheck=7}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-2223,y=0,z=-217,dx=354,dy=256,dz=275] unless entity @s[scores={MusicCheck=7}] run scoreboard players set @s MusicCheck 7


#Ambrette Town - 8
execute as @s[x=-2115,y=0,z=504,dx=240,dy=256,dz=258] unless entity @s[scores={MusicCheck=8}] run title @s actionbar {"text":"Ambrette Town"}
execute as @s[x=-2115,y=0,z=504,dx=240,dy=256,dz=258] unless entity @s[scores={MusicCheck=8}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-2115,y=0,z=504,dx=240,dy=256,dz=258] unless entity @s[scores={MusicCheck=8}] run scoreboard players set @s MusicCheck 8

#Ambrette Town - 10
execute as @s[x=-1816,y=0,z=-987,dx=332,dy=256,dz=254] unless entity @s[scores={MusicCheck=10}] run title @s actionbar {"text":"Ambrette Town"}
execute as @s[x=-1816,y=0,z=-987,dx=332,dy=256,dz=254] unless entity @s[scores={MusicCheck=10}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-1816,y=0,z=-987,dx=332,dy=256,dz=254] unless entity @s[scores={MusicCheck=10}] run scoreboard players set @s MusicCheck 10


#Coumarine City - 11
execute as @s[x=-1204,y=0,z=-888,dx=230,dy=256,dz=380] unless entity @s[scores={MusicCheck=11}] run title @s actionbar {"text":"Coumarine City"}
execute as @s[x=-1204,y=0,z=-888,dx=230,dy=256,dz=380] unless entity @s[scores={MusicCheck=11}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-1204,y=0,z=-888,dx=230,dy=256,dz=380] unless entity @s[scores={MusicCheck=11}] run scoreboard players set @s MusicCheck 11


#Laverre City - 12
execute as @s[x=-342,y=0,z=-1577,dx=432,dy=256,dz=274] unless entity @s[scores={MusicCheck=12}] run title @s actionbar {"text":"Laverre City"}
execute as @s[x=-342,y=0,z=-1577,dx=432,dy=256,dz=274] unless entity @s[scores={MusicCheck=12}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-342,y=0,z=-1577,dx=432,dy=256,dz=274] unless entity @s[scores={MusicCheck=12}] run scoreboard players set @s MusicCheck 12


#Dendemille Town - 13
execute as @s[x=582,y=0,z=-573,dx=152,dy=256,dz=313] unless entity @s[scores={MusicCheck=13}] run title @s actionbar {"text":"Dendemille Town"}
execute as @s[x=582,y=0,z=-573,dx=152,dy=256,dz=313] unless entity @s[scores={MusicCheck=13}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=582,y=0,z=-573,dx=152,dy=256,dz=313] unless entity @s[scores={MusicCheck=13}] run scoreboard players set @s MusicCheck 13


#Anistar City - 14
execute as @s[x=1097,y=0,z=-376,dx=334,dy=256,dz=235] unless entity @s[scores={MusicCheck=14}] run title @s actionbar {"text":"Anistar City"}
execute as @s[x=1097,y=0,z=-376,dx=334,dy=256,dz=235] unless entity @s[scores={MusicCheck=14}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=1097,y=0,z=-376,dx=334,dy=256,dz=235] unless entity @s[scores={MusicCheck=14}] run scoreboard players set @s MusicCheck 14


#Couriway Town - 15
execute as @s[x=1326,y=0,z=132,dx=360,dy=256,dz=198] unless entity @s[scores={MusicCheck=15}] run title @s actionbar {"text":"Couriway Town"}
execute as @s[x=1326,y=0,z=132,dx=360,dy=256,dz=198] unless entity @s[scores={MusicCheck=15}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=1326,y=0,z=132,dx=360,dy=256,dz=198] unless entity @s[scores={MusicCheck=15}] run scoreboard players set @s MusicCheck 15


#Snowbelle City - 16
execute as @s[x=984,y=0,z=324,dx=341,dy=256,dz=323] unless entity @s[scores={MusicCheck=16}] run title @s actionbar {"text":"Snowbelle City"}
execute as @s[x=984,y=0,z=324,dx=341,dy=256,dz=323] unless entity @s[scores={MusicCheck=16}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=984,y=0,z=324,dx=341,dy=256,dz=323] unless entity @s[scores={MusicCheck=16}] run scoreboard players set @s MusicCheck 16


#Pokémon League - 17
execute as @s[x=-2255,y=0,z=1732,dx=629,dy=256,dz=655] unless entity @s[scores={MusicCheck=17}] run title @s actionbar {"text":"Pokémon League"}
execute as @s[x=-2255,y=0,z=1732,dx=629,dy=256,dz=655] unless entity @s[scores={MusicCheck=17}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-2255,y=0,z=1732,dx=629,dy=256,dz=655] unless entity @s[scores={MusicCheck=17}] run scoreboard players set @s MusicCheck 17


#Kiloude City Proper - 18
execute as @s[x=1027,y=0,z=1434,dx=331,dy=256,dz=266,tag=!Indoors] unless entity @s[scores={MusicCheck=18}] unless entity @s[scores={MusicCheck=9}] run title @s actionbar {"text":"Kiloude City"}
execute as @s[x=1027,y=0,z=1434,dx=331,dy=256,dz=266,tag=!Indoors] unless entity @s[scores={MusicCheck=18}] unless entity @s[scores={MusicCheck=9}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=1027,y=0,z=1434,dx=331,dy=256,dz=266,tag=!Indoors] unless entity @s[scores={MusicCheck=18}] run scoreboard players set @s MusicCheck 18


#Geosenge Town - 9
execute as @s[x=-2386,y=0,z=-984,dx=273,dy=256,dz=386,tag=!Indoors] unless entity @s[scores={MusicCheck=9}] run title @s actionbar {"text":"Geosenge Town"}
execute as @s[x=-2386,y=0,z=-984,dx=273,dy=256,dz=386,tag=!Indoors] unless entity @s[scores={MusicCheck=9}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-2386,y=0,z=-984,dx=273,dy=256,dz=386,tag=!Indoors] unless entity @s[scores={MusicCheck=9}] run scoreboard players set @s MusicCheck 9


#Geosenge Town - 9
execute as @s[x=-1306,y=0,z=1736,dx=273,dy=256,dz=386,tag=!Indoors] unless entity @s[scores={MusicCheck=9}] run title @s actionbar {"text":"Geosenge Town"}
execute as @s[x=-1306,y=0,z=1736,dx=273,dy=256,dz=386,tag=!Indoors] unless entity @s[scores={MusicCheck=9}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-1306,y=0,z=1736,dx=273,dy=256,dz=386,tag=!Indoors] unless entity @s[scores={MusicCheck=9}] run scoreboard players set @s MusicCheck 9


#Geosenge Town - 9
execute as @s[x=-586,y=0,z=1736,dx=273,dy=256,dz=386,tag=!Indoors] unless entity @s[scores={MusicCheck=9}] run title @s actionbar {"text":"Geosenge Town"}
execute as @s[x=-586,y=0,z=1736,dx=273,dy=256,dz=386,tag=!Indoors] unless entity @s[scores={MusicCheck=9}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-586,y=0,z=1736,dx=273,dy=256,dz=386,tag=!Indoors] unless entity @s[scores={MusicCheck=9}] run scoreboard players set @s MusicCheck 9


#Santalune Forest - 19
execute as @s[x=331,y=0,z=739,dx=256,dy=256,dz=239] unless entity @s[scores={MusicCheck=19}] run title @s actionbar {"text":"Santalune Forest"}
execute as @s[x=331,y=0,z=739,dx=256,dy=256,dz=239] unless entity @s[scores={MusicCheck=19}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=331,y=0,z=739,dx=256,dy=256,dz=239] unless entity @s[scores={MusicCheck=19}] run scoreboard players set @s MusicCheck 19


#Tower of Mastery - 20
execute as @s[x=-1816,y=0,z=-1209,dx=332,dy=256,dz=221] unless entity @s[scores={MusicCheck=20}] run title @s actionbar {"text":"Tower of Mastery"}
execute as @s[x=-1816,y=0,z=-1209,dx=332,dy=256,dz=221] unless entity @s[scores={MusicCheck=20}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-1816,y=0,z=-1209,dx=332,dy=256,dz=221] unless entity @s[scores={MusicCheck=20}] run scoreboard players set @s MusicCheck 20


#Chamber of Emptiness - 21
execute as @s[x=550,y=70,z=394,dx=63,dy=16,dz=87] unless entity @s[scores={MusicCheck=21}] run title @s actionbar {"text":"Chamber of Emptiness"}
execute as @s[x=550,y=70,z=394,dx=63,dy=16,dz=87] unless entity @s[scores={MusicCheck=21}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=550,y=70,z=394,dx=63,dy=16,dz=87] unless entity @s[scores={MusicCheck=21}] run scoreboard players set @s MusicCheck 21


#Parfum Palace - 22
execute as @s[x=-1758,y=95,z=-529,dx=409,dy=161,dz=307] unless entity @s[scores={MusicCheck=22}] run title @s actionbar {"text":"Parfum Palace"}
execute as @s[x=-1758,y=95,z=-529,dx=409,dy=161,dz=307] unless entity @s[scores={MusicCheck=22}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-1758,y=95,z=-529,dx=409,dy=161,dz=307] unless entity @s[scores={MusicCheck=22}] run scoreboard players set @s MusicCheck 22


#Connecting Cave - 23
execute as @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201] unless entity @s[scores={MusicCheck=23}] run title @s actionbar {"text":"Connecting Cave"}
execute as @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201] unless entity @s[scores={MusicCheck=23}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201] unless entity @s[scores={MusicCheck=23}] run scoreboard players set @s MusicCheck 23


#Glittering Cave - 24
execute as @s[x=-1542,y=0,z=249,dx=174,dy=256,dz=310] unless entity @s[scores={MusicCheck=24}] run title @s actionbar {"text":"Glittering Cave"}
execute as @s[x=-1542,y=0,z=249,dx=174,dy=256,dz=310] unless entity @s[scores={MusicCheck=24}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-1542,y=0,z=249,dx=174,dy=256,dz=310] unless entity @s[scores={MusicCheck=24}] run scoreboard players set @s MusicCheck 24


#Reflection Cave - 25
execute as @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507] unless entity @s[scores={MusicCheck=25}] run title @s actionbar {"text":"Reflection Cave"}
execute as @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507] unless entity @s[scores={MusicCheck=25}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507] unless entity @s[scores={MusicCheck=25}] run scoreboard players set @s MusicCheck 25


#Azure Bay - 27
execute as @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,tag=!Indoors] unless entity @s[scores={MusicCheck=27}] run title @s actionbar {"text":"Azure Bay"}
execute as @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,tag=!Indoors] unless entity @s[scores={MusicCheck=27}] unless entity @s[scores={MusicCheck=49}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,tag=!Indoors] unless entity @s[scores={MusicCheck=27}] run scoreboard players set @s MusicCheck 27


#Poké Ball Factory - 29
execute as @s[x=-342,y=0,z=-2044,dx=431,dy=256,dz=466] unless entity @s[scores={MusicCheck=29..30}] run title @s actionbar {"text":"Poké Ball Factory"}
execute as @s[x=-342,y=0,z=-2044,dx=431,dy=256,dz=466] unless entity @s[scores={MusicCheck=29..30}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-342,y=0,z=-2044,dx=431,dy=256,dz=466] unless entity @s[scores={MusicCheck=29..30}] run scoreboard players set @s MusicCheck 29


#Poké Ball Factory - 30
execute as @s[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188] unless entity @s[scores={MusicCheck=29..30}] run title @s actionbar {"text":"Poké Ball Factory"}
execute as @s[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188] unless entity @s[scores={MusicCheck=29..30}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188] unless entity @s[scores={MusicCheck=29..30}] run scoreboard players set @s MusicCheck 30


#Frost Cavern Exterior 1 - 32
execute as @s[x=582,y=100,z=-1444,dx=326,dy=256,dz=870] unless entity @s[scores={MusicCheck=32}] run title @s actionbar {"text":"Frost Cavern"}
execute as @s[x=582,y=100,z=-1444,dx=326,dy=256,dz=870] unless entity @s[scores={MusicCheck=32}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=582,y=100,z=-1444,dx=326,dy=256,dz=870] unless entity @s[scores={MusicCheck=32}] run scoreboard players set @s MusicCheck 32


#Frost Cavern Exterior 2 - 32
execute as @s[x=444,y=100,z=-1444,dx=137,dy=128,dz=560] unless entity @s[scores={MusicCheck=32}] run title @s actionbar {"text":"Frost Cavern"}
execute as @s[x=444,y=100,z=-1444,dx=137,dy=128,dz=560] unless entity @s[scores={MusicCheck=32}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=444,y=100,z=-1444,dx=137,dy=128,dz=560] unless entity @s[scores={MusicCheck=32}] run scoreboard players set @s MusicCheck 32


#Frost Cavern Interior - 34
execute as @s[x=444,y=0,z=-1444,dx=465,dy=126,dz=550] unless entity @s[scores={MusicCheck=34}] run title @s actionbar {"text":"Frost Cavern"}
execute as @s[x=444,y=0,z=-1444,dx=465,dy=126,dz=550] unless entity @s[scores={MusicCheck=34}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=444,y=0,z=-1444,dx=465,dy=126,dz=550] unless entity @s[scores={MusicCheck=34}] run scoreboard players set @s MusicCheck 34


#Terminus Cave - 36
execute as @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324] unless entity @s[scores={MusicCheck=36}] run title @s actionbar {"text":"Terminus Cave"}
execute as @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324] unless entity @s[scores={MusicCheck=36}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324] unless entity @s[scores={MusicCheck=36}] run scoreboard players set @s MusicCheck 36


#Terminus Cave - 36
execute as @s[x=1524,y=68,z=6,dx=177,dy=19,dz=100] unless entity @s[scores={MusicCheck=36}] run title @s actionbar {"text":"Terminus Cave"}
execute as @s[x=1524,y=68,z=6,dx=177,dy=19,dz=100] unless entity @s[scores={MusicCheck=36}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=1524,y=68,z=6,dx=177,dy=19,dz=100] unless entity @s[scores={MusicCheck=36}] run scoreboard players set @s MusicCheck 36


#Pokémon Village - 37
execute as @s[x=703,y=90,z=563,dx=280,dy=100,dz=279] unless entity @s[scores={MusicCheck=37}] run title @s actionbar {"text":"Pokémon Village"}
execute as @s[x=703,y=90,z=563,dx=280,dy=100,dz=279] unless entity @s[scores={MusicCheck=37}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=703,y=90,z=563,dx=280,dy=100,dz=279] unless entity @s[scores={MusicCheck=37}] run scoreboard players set @s MusicCheck 37


#Unknown Dungeon - 38
execute as @s[x=809,y=74,z=525,dx=66,dy=14,dz=92] unless entity @s[scores={MusicCheck=38}] run title @s actionbar {"text":"Unknown Dungeon"}
execute as @s[x=809,y=74,z=525,dx=66,dy=14,dz=92] unless entity @s[scores={MusicCheck=38}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=809,y=74,z=525,dx=66,dy=14,dz=92] unless entity @s[scores={MusicCheck=38}] run scoreboard players set @s MusicCheck 38


#Victory Road - 39
execute as @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=1417] unless entity @s[scores={MusicCheck=39}] run title @s actionbar {"text":"Victory Road"}
execute as @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=1417] unless entity @s[scores={MusicCheck=39}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=1417] unless entity @s[scores={MusicCheck=39}] run scoreboard players set @s MusicCheck 39


#Battle Chateau - 62
execute as @s[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] unless entity @s[scores={MusicCheck=62}] run title @s actionbar {"text":"Battle Chateau"}
execute as @s[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] unless entity @s[scores={MusicCheck=62}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] unless entity @s[scores={MusicCheck=62}] run scoreboard players set @s MusicCheck 62

#Kiloude City Train Station - 9
execute as @s[x=913,y=98,z=1473,dx=70,dy=100,dz=228] unless entity @s[scores={MusicCheck=9}] unless entity @s[scores={MusicCheck=18}] run title @s actionbar {"text":"Kiloude City"}
execute as @s[x=913,y=98,z=1473,dx=70,dy=100,dz=228] unless entity @s[scores={MusicCheck=9}] unless entity @s[scores={MusicCheck=18}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=913,y=98,z=1473,dx=70,dy=100,dz=228] unless entity @s[scores={MusicCheck=9}] run scoreboard players set @s MusicCheck 9


#Lumiose City - 5
execute as @s[x=984,y=99,z=1845,dx=267,dy=50,dz=100,tag=!Indoors] unless entity @s[scores={MusicCheck=5}] run title @s actionbar {"text":"Lumiose City"}
execute as @s[x=984,y=99,z=1845,dx=267,dy=50,dz=100,tag=!Indoors] unless entity @s[scores={MusicCheck=5}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=984,y=99,z=1845,dx=267,dy=50,dz=100,tag=!Indoors] unless entity @s[scores={MusicCheck=5}] run scoreboard players set @s MusicCheck 5


#Lobby - 64
execute as @s[x=-792,y=100,z=1196,dx=38,dy=20,dz=47] unless entity @s[scores={MusicCheck=64}] run title @s actionbar {"text":"Lobby"}
execute as @s[x=-792,y=100,z=1196,dx=38,dy=20,dz=47] unless entity @s[scores={MusicCheck=64}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-792,y=100,z=1196,dx=38,dy=20,dz=47] unless entity @s[scores={MusicCheck=64}] run scoreboard players set @s MusicCheck 64


#Route 3 - 40
execute as @s[x=251,y=0,z=524,dx=202,dy=256,dz=214] unless entity @s[scores={MusicCheck=40}] run title @s actionbar {"text":"Route 3"}
execute as @s[x=251,y=0,z=524,dx=202,dy=256,dz=214] unless entity @s[scores={MusicCheck=40}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=251,y=0,z=524,dx=202,dy=256,dz=214] unless entity @s[scores={MusicCheck=40}] run scoreboard players set @s MusicCheck 40


#Route 4 - 41
execute as @s[x=103,y=0,z=-114,dx=155,dy=256,dz=497] unless entity @s[scores={MusicCheck=41}] run title @s actionbar {"text":"Route 4"}
execute as @s[x=103,y=0,z=-114,dx=155,dy=256,dz=497] unless entity @s[scores={MusicCheck=41}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=103,y=0,z=-114,dx=155,dy=256,dz=497] unless entity @s[scores={MusicCheck=41}] run scoreboard players set @s MusicCheck 41


#Route 5 - 42
execute as @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230] unless entity @s[scores={MusicCheck=42}] run title @s actionbar {"text":"Route 5"}
execute as @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230] unless entity @s[scores={MusicCheck=42}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230] unless entity @s[scores={MusicCheck=42}] run scoreboard players set @s MusicCheck 42


#Route 6 - 43
execute as @s[x=-1348,y=0,z=-432,dx=201,dy=256,dz=313] unless entity @s[scores={MusicCheck=43}] run title @s actionbar {"text":"Route 6"}
execute as @s[x=-1348,y=0,z=-432,dx=201,dy=256,dz=313] unless entity @s[scores={MusicCheck=43..44}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-1348,y=0,z=-432,dx=201,dy=256,dz=313] unless entity @s[scores={MusicCheck=43}] run scoreboard players set @s MusicCheck 43


#Route 7 - 44
execute as @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199] unless entity @s[scores={MusicCheck=44}] run title @s actionbar {"text":"Route 7"}
execute as @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199] unless entity @s[scores={MusicCheck=43..44}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199] unless entity @s[scores={MusicCheck=44}] run scoreboard players set @s MusicCheck 44


#Route 8 - 45
execute as @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444] unless entity @s[scores={MusicCheck=45}] run title @s actionbar {"text":"Route 8"}
execute as @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444] unless entity @s[scores={MusicCheck=45}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444] unless entity @s[scores={MusicCheck=45}] run scoreboard players set @s MusicCheck 45


#Route 9 - 46
execute as @s[x=-1875,y=0,z=560,dx=507,dy=256,dz=202] unless entity @s[scores={MusicCheck=46}] run title @s actionbar {"text":"Route 9"}
execute as @s[x=-1875,y=0,z=560,dx=507,dy=256,dz=202] unless entity @s[scores={MusicCheck=46}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-1875,y=0,z=560,dx=507,dy=256,dz=202] unless entity @s[scores={MusicCheck=46}] run scoreboard players set @s MusicCheck 46


#Route 10 - 47
execute as @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379] unless entity @s[scores={MusicCheck=47}] run title @s actionbar {"text":"Route 10"}
execute as @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379] unless entity @s[scores={MusicCheck=47}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379] unless entity @s[scores={MusicCheck=47}] run scoreboard players set @s MusicCheck 47


#Route 11 - 48
execute as @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159] unless entity @s[scores={MusicCheck=48}] run title @s actionbar {"text":"Route 11"}
execute as @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159] unless entity @s[scores={MusicCheck=48}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159] unless entity @s[scores={MusicCheck=48}] run scoreboard players set @s MusicCheck 48


#Route 12 - 49
execute as @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154] unless entity @s[scores={MusicCheck=49}] run title @s actionbar {"text":"Route 12"}
execute as @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154] unless entity @s[scores={MusicCheck=49}] unless entity @s[scores={MusicCheck=27}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154] unless entity @s[scores={MusicCheck=49}] run scoreboard players set @s MusicCheck 49


#Route 13 - 50
execute as @s[x=-973,y=0,z=-871,dx=371,dy=256,dz=651,tag=!Indoors] unless entity @s[scores={MusicCheck=50}] run title @s actionbar {"text":"Route 13"}
execute as @s[x=-973,y=0,z=-871,dx=371,dy=256,dz=651,tag=!Indoors] unless entity @s[scores={MusicCheck=50}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-973,y=0,z=-871,dx=371,dy=256,dz=651,tag=!Indoors] unless entity @s[scores={MusicCheck=50}] run scoreboard players set @s MusicCheck 50


#Route 14 - 51
execute as @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,tag=!Indoors] unless entity @s[scores={MusicCheck=51}] run title @s actionbar {"text":"Route 14"}
execute as @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,tag=!Indoors] unless entity @s[scores={MusicCheck=51}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,tag=!Indoors] unless entity @s[scores={MusicCheck=51}] run scoreboard players set @s MusicCheck 51


#Route 15 - 52
execute as @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292,tag=!Indoors] unless entity @s[scores={MusicCheck=52}] run title @s actionbar {"text":"Route 15"}
execute as @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292,tag=!Indoors] unless entity @s[scores={MusicCheck=52..53}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292,tag=!Indoors] unless entity @s[scores={MusicCheck=52}] run scoreboard players set @s MusicCheck 52


#Route 16 - 53
execute as @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273,tag=!Indoors] unless entity @s[scores={MusicCheck=53}] run title @s actionbar {"text":"Route 16"}
execute as @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273,tag=!Indoors] unless entity @s[scores={MusicCheck=52..53}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273,tag=!Indoors] unless entity @s[scores={MusicCheck=52}] run scoreboard players set @s MusicCheck 53


#Route 17 - 54
execute as @s[x=735,y=0,z=-417,dx=361,dy=256,dz=495] unless entity @s[scores={MusicCheck=54}] run title @s actionbar {"text":"Route 17"}
execute as @s[x=735,y=0,z=-417,dx=361,dy=256,dz=495] unless entity @s[scores={MusicCheck=54}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=735,y=0,z=-417,dx=361,dy=256,dz=495] unless entity @s[scores={MusicCheck=54}] run scoreboard players set @s MusicCheck 54


#Route 18 - 55
execute as @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271] unless entity @s[scores={MusicCheck=55}] run title @s actionbar {"text":"Route 18"}
execute as @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271] unless entity @s[scores={MusicCheck=55}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271] unless entity @s[scores={MusicCheck=55}] run scoreboard players set @s MusicCheck 55


#Route 19 - 56
execute as @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249] unless entity @s[scores={MusicCheck=56}] run title @s actionbar {"text":"Route 19"}
execute as @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249] unless entity @s[scores={MusicCheck=56}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249] unless entity @s[scores={MusicCheck=56}] run scoreboard players set @s MusicCheck 56


#Route 20 - 57
execute as @s[x=984,y=95,z=707,dx=621,dy=50,dz=451] unless entity @s[scores={MusicCheck=57}] run title @s actionbar {"text":"Route 20"}
execute as @s[x=984,y=95,z=707,dx=621,dy=50,dz=451] unless entity @s[scores={MusicCheck=57}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=984,y=95,z=707,dx=621,dy=50,dz=451] unless entity @s[scores={MusicCheck=57}] run scoreboard players set @s MusicCheck 57


#Route 21 - 58
execute as @s[x=705,y=95,z=299,dx=278,dy=100,dz=263] unless entity @s[scores={MusicCheck=58}] run title @s actionbar {"text":"Route 21"}
execute as @s[x=705,y=95,z=299,dx=278,dy=100,dz=263] unless entity @s[scores={MusicCheck=58}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=705,y=95,z=299,dx=278,dy=100,dz=263] unless entity @s[scores={MusicCheck=58}] run scoreboard players set @s MusicCheck 58


#Route 21 - 58
execute as @s[x=683,y=95,z=393,dx=21,dy=100,dz=170] unless entity @s[scores={MusicCheck=58}] run title @s actionbar {"text":"Route 21"}
execute as @s[x=683,y=95,z=393,dx=21,dy=100,dz=170] unless entity @s[scores={MusicCheck=58}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=683,y=95,z=393,dx=21,dy=100,dz=170] unless entity @s[scores={MusicCheck=58}] run scoreboard players set @s MusicCheck 58


#Route 22 - 59
execute as @s[x=454,y=87,z=524,dx=228,dy=100,dz=214] unless entity @s[scores={MusicCheck=59}] run title @s actionbar {"text":"Route 22"}
execute as @s[x=454,y=87,z=524,dx=228,dy=100,dz=214] unless entity @s[scores={MusicCheck=59}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=454,y=87,z=524,dx=228,dy=100,dz=214] unless entity @s[scores={MusicCheck=59}] run scoreboard players set @s MusicCheck 59


#Route 22 - 59
execute as @s[x=344,y=87,z=299,dx=338,dy=100,dz=224] unless entity @s[scores={MusicCheck=59}] run title @s actionbar {"text":"Route 22"}
execute as @s[x=344,y=87,z=299,dx=338,dy=100,dz=224] unless entity @s[scores={MusicCheck=59}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=344,y=87,z=299,dx=338,dy=100,dz=224] unless entity @s[scores={MusicCheck=59}] run scoreboard players set @s MusicCheck 59


# Santalune Gym
execute as @s[x=-2027,y=0,z=-1934,dx=205,dy=256,dz=147] unless entity @s[scores={MusicCheck=60}] run title @s actionbar {"text":"Santalune Gym"}
execute as @s[x=-2027,y=0,z=-1934,dx=205,dy=256,dz=147] unless entity @s[scores={MusicCheck=60}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-2027,y=0,z=-1934,dx=205,dy=256,dz=147] unless entity @s[scores={MusicCheck=60}] run scoreboard players set @s MusicCheck 60

# Cyllage Gym
execute as @s[x=-1821,y=0,z=-2071,dx=273,dy=256,dz=285] unless entity @s[scores={MusicCheck=60}] run title @s actionbar {"text":"Cyllage Gym"}
execute as @s[x=-1821,y=0,z=-2071,dx=273,dy=256,dz=285] unless entity @s[scores={MusicCheck=60}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-1821,y=0,z=-2071,dx=273,dy=256,dz=285] unless entity @s[scores={MusicCheck=60}] run scoreboard players set @s MusicCheck 60

# Shalour Gym
execute as @s[x=-1473,y=0,z=-1984,dx=183,dy=256,dz=191] unless entity @s[scores={MusicCheck=60}] run title @s actionbar {"text":"Shalour Gym"}
execute as @s[x=-1473,y=0,z=-1984,dx=183,dy=256,dz=191] unless entity @s[scores={MusicCheck=60}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-1473,y=0,z=-1984,dx=183,dy=256,dz=191] unless entity @s[scores={MusicCheck=60}] run scoreboard players set @s MusicCheck 60

# Coumarine Gym
execute as @s[x=-2027,y=0,z=-2285,dx=205,dy=256,dz=212] unless entity @s[scores={MusicCheck=60}] run title @s actionbar {"text":"Coumarine Gym"}
execute as @s[x=-2027,y=0,z=-2285,dx=205,dy=256,dz=212] unless entity @s[scores={MusicCheck=60}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-2027,y=0,z=-2285,dx=205,dy=256,dz=212] unless entity @s[scores={MusicCheck=60}] run scoreboard players set @s MusicCheck 60

# Lumiose Gym
execute as @s[x=-1877,y=0,z=-1775,dx=110,dy=256,dz=130] unless entity @s[scores={MusicCheck=60}] run title @s actionbar {"text":"Lumiose Gym"}
execute as @s[x=-1877,y=0,z=-1775,dx=110,dy=256,dz=130] unless entity @s[scores={MusicCheck=60}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-1877,y=0,z=-1775,dx=110,dy=256,dz=130] unless entity @s[scores={MusicCheck=60}] run scoreboard players set @s MusicCheck 60

# Laverre Gym
execute as @s[x=-2018,y=0,z=-1757,dx=115,dy=256,dz=113] unless entity @s[scores={MusicCheck=60}] run title @s actionbar {"text":"Laverre Gym"}
execute as @s[x=-2018,y=0,z=-1757,dx=115,dy=256,dz=113] unless entity @s[scores={MusicCheck=60}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-2018,y=0,z=-1757,dx=115,dy=256,dz=113] unless entity @s[scores={MusicCheck=60}] run scoreboard players set @s MusicCheck 60

# Anistar Gym
execute as @s[x=-1227,y=0,z=-2125,dx=301,dy=256,dz=438] unless entity @s[scores={MusicCheck=60}] run title @s actionbar {"text":"Anistar Gym"}
execute as @s[x=-1227,y=0,z=-2125,dx=301,dy=256,dz=438] unless entity @s[scores={MusicCheck=60}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-1227,y=0,z=-2125,dx=301,dy=256,dz=438] unless entity @s[scores={MusicCheck=60}] run scoreboard players set @s MusicCheck 60

# Snowbelle Gym
execute as @s[x=-871,y=0,z=-2110,dx=143,dy=256,dz=321] unless entity @s[scores={MusicCheck=60}] run title @s actionbar {"text":"Snowbelle Gym"}
execute as @s[x=-871,y=0,z=-2110,dx=143,dy=256,dz=321] unless entity @s[scores={MusicCheck=60}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=-871,y=0,z=-2110,dx=143,dy=256,dz=321] unless entity @s[scores={MusicCheck=60}] run scoreboard players set @s MusicCheck 60



# Victory Road zone 1
execute as @s[x=683,y=0,z=299,dx=21,dy=256,dz=93] unless entity @s[scores={MusicCheck=39}] run title @s actionbar {"text":"Victory Road"}
execute as @s[x=683,y=0,z=299,dx=21,dy=256,dz=93] unless entity @s[scores={MusicCheck=39}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=683,y=0,z=299,dx=21,dy=256,dz=93] unless entity @s[scores={MusicCheck=39}] run scoreboard players set @s MusicCheck 39

# Victory Road zone 2
execute as @s[x=543,y=0,z=-37,dx=328,dy=256,dz=272] unless entity @s[scores={MusicCheck=39}] run title @s actionbar {"text":"Victory Road"}
execute as @s[x=543,y=0,z=-37,dx=328,dy=256,dz=272] unless entity @s[scores={MusicCheck=39}] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @s[x=543,y=0,z=-37,dx=328,dy=256,dz=272] unless entity @s[scores={MusicCheck=39}] run scoreboard players set @s MusicCheck 39



tag @s remove Indoors
