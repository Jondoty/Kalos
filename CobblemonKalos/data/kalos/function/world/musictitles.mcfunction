#Assigns a MusicCheck score, and depending on if value is lower or higher run commands for being in a new area


#Vaniville Town - 1
title @s[x=374,y=0,z=1540,dx=241,dy=256,dz=216,scores={MusicCheck=2..}] actionbar {"text":"Vaniville Town"}
execute as @s[x=374,y=0,z=1540,dx=241,dy=256,dz=216,scores={MusicCheck=2..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=374,y=0,z=1540,dx=241,dy=256,dz=216] MusicCheck 1

#Route 1 - 2
title @s[x=445,y=0,z=1442,dx=62,dy=256,dz=87,scores={MusicCheck=1}] actionbar {"text":"Route 1 - Vaniville Pathway"}
title @s[x=445,y=0,z=1442,dx=62,dy=256,dz=87,scores={MusicCheck=3..,MusicCooldown=1..}] actionbar {"text":"Route 1 - Vaniville Pathway"}
execute as @s[x=445,y=0,z=1442,dx=62,dy=256,dz=87,scores={MusicCheck=1,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=445,y=0,z=1442,dx=62,dy=256,dz=87,scores={MusicCheck=3..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=445,y=0,z=1442,dx=62,dy=256,dz=87] MusicCheck 2

#Aquacorde Town - 3
title @s[x=395,y=0,z=1236,dx=147,dy=256,dz=205,scores={MusicCheck=1..2}] actionbar {"text":"Aquacorde Town"}
title @s[x=395,y=0,z=1236,dx=147,dy=256,dz=205,scores={MusicCheck=4..}] actionbar {"text":"Aquacorde Town"}
execute as @s[x=395,y=0,z=1236,dx=147,dy=256,dz=205,scores={MusicCheck=1..2,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=395,y=0,z=1236,dx=147,dy=256,dz=205,scores={MusicCheck=4..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=395,y=0,z=1236,dx=147,dy=256,dz=205] MusicCheck 3

#Route 2 - 65
title @s[x=396,y=0,z=979,dx=146,dy=256,dz=256,scores={MusicCheck=1..64}] actionbar {"text":"Route 2 - Avance Trail"}
title @s[x=396,y=0,z=979,dx=146,dy=256,dz=256,scores={MusicCheck=66..}] actionbar {"text":"Route 2 - Avance Trail"}
execute as @s[x=396,y=0,z=979,dx=146,dy=256,dz=256,scores={MusicCheck=1..64,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=396,y=0,z=979,dx=146,dy=256,dz=256,scores={MusicCheck=66..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=396,y=0,z=979,dx=146,dy=256,dz=256] MusicCheck 65



#Santalune City - 4
title @s[x=93,y=0,z=384,dx=250,dy=256,dz=139,scores={MusicCheck=1..3}] actionbar {"text":"Santalune City"}
title @s[x=93,y=0,z=384,dx=250,dy=256,dz=139,scores={MusicCheck=5..}] actionbar {"text":"Santalune City"}
execute as @s[x=93,y=0,z=384,dx=250,dy=256,dz=139,scores={MusicCheck=1..3,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=93,y=0,z=384,dx=250,dy=256,dz=139,scores={MusicCheck=5..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=93,y=0,z=384,dx=250,dy=256,dz=139] MusicCheck 4


#Lumiose City Above Ground - 5
title @s[x=-181,y=101,z=-390,distance=..395,scores={MusicCheck=1..4}] actionbar {"text":"Lumiose City"}
title @s[x=-181,y=101,z=-390,distance=..395,scores={MusicCheck=6..}] actionbar {"text":"Lumiose City"}
execute as @s[x=-181,y=101,z=-390,distance=..395,scores={MusicCheck=1..4,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-181,y=101,z=-390,distance=..395,scores={MusicCheck=6..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-181,y=101,z=-390,distance=..395] MusicCheck 5

#Lumiose Building Interiors - 5
title @s[x=-514,y=0,z=64,dx=516,dy=150,dz=436,scores={MusicCheck=1..4}] actionbar {"text":"Lumiose City"}
title @s[x=-514,y=0,z=64,dx=516,dy=150,dz=436,scores={MusicCheck=6..}] actionbar {"text":"Lumiose City"}
execute as @s[x=-514,y=0,z=64,dx=516,dy=150,dz=436,scores={MusicCheck=1..4,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-514,y=0,z=64,dx=516,dy=150,dz=436,scores={MusicCheck=6..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-514,y=0,z=64,dx=516,dy=150,dz=436] MusicCheck 5


#Camphrier Town - 6
title @s[x=-1146,y=0,z=-213,dx=182,dy=256,dz=337,scores={MusicCheck=1..5}] actionbar {"text":"Camphrier Town"}
title @s[x=-1146,y=0,z=-213,dx=182,dy=256,dz=337,scores={MusicCheck=7..}] actionbar {"text":"Camphrier Town"}
execute as @s[x=-1146,y=0,z=-213,dx=182,dy=256,dz=337,scores={MusicCheck=1..5,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-1146,y=0,z=-213,dx=182,dy=256,dz=337,scores={MusicCheck=7..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-1146,y=0,z=-213,dx=182,dy=256,dz=337] MusicCheck 6

#Cyllage City - 7
title @s[x=-2223,y=0,z=-217,dx=354,dy=256,dz=275,scores={MusicCheck=1..6}] actionbar {"text":"Cyllage City"}
title @s[x=-2223,y=0,z=-217,dx=354,dy=256,dz=275,scores={MusicCheck=8..}] actionbar {"text":"Cyllage City"}
execute as @s[x=-2223,y=0,z=-217,dx=354,dy=256,dz=275,scores={MusicCheck=1..6,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-2223,y=0,z=-217,dx=354,dy=256,dz=275,scores={MusicCheck=8..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-2223,y=0,z=-217,dx=354,dy=256,dz=275] MusicCheck 7


#Ambrette Town - 8
title @s[x=-2115,y=0,z=504,dx=240,dy=256,dz=258,scores={MusicCheck=1..7}] actionbar {"text":"Ambrette Town"}
title @s[x=-2115,y=0,z=504,dx=240,dy=256,dz=258,scores={MusicCheck=9..}] actionbar {"text":"Ambrette Town"}
execute as @s[x=-2115,y=0,z=504,dx=240,dy=256,dz=258,scores={MusicCheck=1..7,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-2115,y=0,z=504,dx=240,dy=256,dz=258,scores={MusicCheck=9..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-2115,y=0,z=504,dx=240,dy=256,dz=258] MusicCheck 8





#Ambrette Town - 10
title @s[x=-1816,y=0,z=-987,dx=332,dy=256,dz=254,scores={MusicCheck=1..9}] actionbar {"text":"Ambrette Town"}
title @s[x=-1816,y=0,z=-987,dx=332,dy=256,dz=254,scores={MusicCheck=11..}] actionbar {"text":"Ambrette Town"}
execute as @s[x=-1816,y=0,z=-987,dx=332,dy=256,dz=254,scores={MusicCheck=1..9,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-1816,y=0,z=-987,dx=332,dy=256,dz=254,scores={MusicCheck=11..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-1816,y=0,z=-987,dx=332,dy=256,dz=254] MusicCheck 10

#Coumarine City - 11
title @s[x=-1204,y=0,z=-888,dx=230,dy=256,dz=380,scores={MusicCheck=1..10}] actionbar {"text":"Coumarine City"}
title @s[x=-1204,y=0,z=-888,dx=230,dy=256,dz=380,scores={MusicCheck=12..}] actionbar {"text":"Coumarine City"}
execute as @s[x=-1204,y=0,z=-888,dx=230,dy=256,dz=380,scores={MusicCheck=1..10,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-1204,y=0,z=-888,dx=230,dy=256,dz=380,scores={MusicCheck=12..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-1204,y=0,z=-888,dx=230,dy=256,dz=380] MusicCheck 11


#Laverre City - 12
title @s[x=-342,y=0,z=-1577,dx=432,dy=256,dz=274,scores={MusicCheck=1..11}] actionbar {"text":"Laverre City"}
title @s[x=-342,y=0,z=-1577,dx=432,dy=256,dz=274,scores={MusicCheck=13..}] actionbar {"text":"Laverre City"}
execute as @s[x=-342,y=0,z=-1577,dx=432,dy=256,dz=274,scores={MusicCheck=1..11,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-342,y=0,z=-1577,dx=432,dy=256,dz=274,scores={MusicCheck=13..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-342,y=0,z=-1577,dx=432,dy=256,dz=274] MusicCheck 12


#Dendemille Town - 13
title @s[x=582,y=0,z=-573,dx=152,dy=256,dz=313,scores={MusicCheck=1..12}] actionbar {"text":"Dendemille Town"}
title @s[x=582,y=0,z=-573,dx=152,dy=256,dz=313,scores={MusicCheck=14..}] actionbar {"text":"Dendemille Town"}
execute as @s[x=582,y=0,z=-573,dx=152,dy=256,dz=313,scores={MusicCheck=1..12,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=582,y=0,z=-573,dx=152,dy=256,dz=313,scores={MusicCheck=14..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=582,y=0,z=-573,dx=152,dy=256,dz=313] MusicCheck 13


#Anistar City - 14
title @s[x=1097,y=0,z=-376,dx=334,dy=256,dz=235,scores={MusicCheck=1..13}] actionbar {"text":"Anistar City"}
title @s[x=1097,y=0,z=-376,dx=334,dy=256,dz=235,scores={MusicCheck=15..}] actionbar {"text":"Anistar City"}
execute as @s[x=1097,y=0,z=-376,dx=334,dy=256,dz=235,scores={MusicCheck=1..13,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=1097,y=0,z=-376,dx=334,dy=256,dz=235,scores={MusicCheck=15..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=1097,y=0,z=-376,dx=334,dy=256,dz=235] MusicCheck 14


#Couriway Town - 15
title @s[x=1326,y=0,z=132,dx=360,dy=256,dz=198,scores={MusicCheck=1..14}] actionbar {"text":"Couriway Town"}
title @s[x=1326,y=0,z=132,dx=360,dy=256,dz=198,scores={MusicCheck=16..}] actionbar {"text":"Couriway Town"}
execute as @s[x=1326,y=0,z=132,dx=360,dy=256,dz=198,scores={MusicCheck=1..14,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=1326,y=0,z=132,dx=360,dy=256,dz=198,scores={MusicCheck=16..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=1326,y=0,z=132,dx=360,dy=256,dz=198] MusicCheck 15


#Snowbelle City - 16
title @s[x=984,y=0,z=324,dx=341,dy=256,dz=323,scores={MusicCheck=1..15}] actionbar {"text":"Snowbelle City"}
title @s[x=984,y=0,z=324,dx=341,dy=256,dz=323,scores={MusicCheck=17..}] actionbar {"text":"Snowbelle City"}
execute as @s[x=984,y=0,z=324,dx=341,dy=256,dz=323,scores={MusicCheck=1..15,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=984,y=0,z=324,dx=341,dy=256,dz=323,scores={MusicCheck=17..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=984,y=0,z=324,dx=341,dy=256,dz=323] MusicCheck 16


#Pokémon League - 17
title @s[x=-2255,y=0,z=1732,dx=629,dy=256,dz=655,scores={MusicCheck=1..16}] actionbar {"text":"Pokémon League"}
title @s[x=-2255,y=0,z=1732,dx=629,dy=256,dz=655,scores={MusicCheck=18..}] actionbar {"text":"Pokémon League"}
execute as @s[x=-2255,y=0,z=1732,dx=629,dy=256,dz=655,scores={MusicCheck=1..16,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-2255,y=0,z=1732,dx=629,dy=256,dz=655,scores={MusicCheck=18..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-2255,y=0,z=1732,dx=629,dy=256,dz=655] MusicCheck 17


#Kiloude City - 18
title @s[x=1027,y=0,z=1434,dx=331,dy=256,dz=266,scores={MusicCheck=1..17}] actionbar {"text":"Kiloude City"}
title @s[x=1027,y=0,z=1434,dx=331,dy=256,dz=266,scores={MusicCheck=19..}] actionbar {"text":"Kiloude City"}
execute as @s[x=1027,y=0,z=1434,dx=331,dy=256,dz=266,scores={MusicCheck=1..17,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=1027,y=0,z=1434,dx=331,dy=256,dz=266,scores={MusicCheck=19..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=1027,y=0,z=1434,dx=331,dy=256,dz=266] MusicCheck 18


#Geosenge Town - 9
title @s[x=-2386,y=0,z=-984,dx=273,dy=256,dz=386,scores={MusicCheck=1..8}] actionbar {"text":"Geosenge Town"}
title @s[x=-2386,y=0,z=-984,dx=273,dy=256,dz=386,scores={MusicCheck=10..}] actionbar {"text":"Geosenge Town"}
execute as @s[x=-2386,y=0,z=-984,dx=273,dy=256,dz=386,scores={MusicCheck=1..8,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-2386,y=0,z=-984,dx=273,dy=256,dz=386,scores={MusicCheck=10..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-2386,y=0,z=-984,dx=273,dy=256,dz=386] MusicCheck 9


#Geosenge Town - 9
title @s[x=-1306,y=0,z=1736,dx=273,dy=256,dz=386,scores={MusicCheck=1..8}] actionbar {"text":"Geosenge Town"}
title @s[x=-1306,y=0,z=1736,dx=273,dy=256,dz=386,scores={MusicCheck=10..}] actionbar {"text":"Geosenge Town"}
execute as @s[x=-1306,y=0,z=1736,dx=273,dy=256,dz=386,scores={MusicCheck=1..8,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-1306,y=0,z=1736,dx=273,dy=256,dz=386,scores={MusicCheck=10..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-1306,y=0,z=1736,dx=273,dy=256,dz=386] MusicCheck 9


#Geosenge Town - 9
title @s[x=-586,y=0,z=1736,dx=273,dy=256,dz=386,scores={MusicCheck=1..8}] actionbar {"text":"Geosenge Town"}
title @s[x=-586,y=0,z=1736,dx=273,dy=256,dz=386,scores={MusicCheck=10..}] actionbar {"text":"Geosenge Town"}
execute as @s[x=-586,y=0,z=1736,dx=273,dy=256,dz=386,scores={MusicCheck=1..8,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-586,y=0,z=1736,dx=273,dy=256,dz=386,scores={MusicCheck=10..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-586,y=0,z=1736,dx=273,dy=256,dz=386] MusicCheck 9


#Santalune Forest - 19
title @s[x=331,y=0,z=739,dx=256,dy=256,dz=239,scores={MusicCheck=1..18}] actionbar {"text":"Santalune Forest"}
title @s[x=331,y=0,z=739,dx=256,dy=256,dz=239,scores={MusicCheck=20..}] actionbar {"text":"Santalune Forest"}
execute as @s[x=331,y=0,z=739,dx=256,dy=256,dz=239,scores={MusicCheck=1..18,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=331,y=0,z=739,dx=256,dy=256,dz=239,scores={MusicCheck=20..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=331,y=0,z=739,dx=256,dy=256,dz=239] MusicCheck 19


#Tower of Mastery - 20
title @s[x=-1816,y=0,z=-1209,dx=332,dy=256,dz=221,scores={MusicCheck=1..19}] actionbar {"text":"Tower of Mastery"}
title @s[x=-1816,y=0,z=-1209,dx=332,dy=256,dz=221,scores={MusicCheck=21..}] actionbar {"text":"Tower of Mastery"}
execute as @s[x=-1816,y=0,z=-1209,dx=332,dy=256,dz=221,scores={MusicCheck=1..19,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-1816,y=0,z=-1209,dx=332,dy=256,dz=221,scores={MusicCheck=21..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-1816,y=0,z=-1209,dx=332,dy=256,dz=221] MusicCheck 20


#Chamber of Emptiness - 21
title @s[x=550,y=70,z=394,dx=63,dy=16,dz=87,scores={MusicCheck=1..20}] actionbar {"text":"Chamber of Emptiness"}
title @s[x=550,y=70,z=394,dx=63,dy=16,dz=87,scores={MusicCheck=22..}] actionbar {"text":"Chamber of Emptiness"}
execute as @s[x=550,y=70,z=394,dx=63,dy=16,dz=87,scores={MusicCheck=1..20,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=550,y=70,z=394,dx=63,dy=16,dz=87,scores={MusicCheck=22..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=550,y=70,z=394,dx=63,dy=16,dz=87] MusicCheck 21


#Parfum Palace - 22
title @s[x=-1758,y=95,z=-529,dx=409,dy=161,dz=307,scores={MusicCheck=1..21}] actionbar {"text":"Parfum Palace"}
title @s[x=-1758,y=95,z=-529,dx=409,dy=161,dz=307,scores={MusicCheck=23..}] actionbar {"text":"Parfum Palace"}
execute as @s[x=-1758,y=95,z=-529,dx=409,dy=161,dz=307,scores={MusicCheck=1..21,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-1758,y=95,z=-529,dx=409,dy=161,dz=307,scores={MusicCheck=23..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-1758,y=95,z=-529,dx=409,dy=161,dz=307] MusicCheck 22


#Connecting Cave - 23
title @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={MusicCheck=1..22}] actionbar {"text":"Connecting Cave"}
title @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={MusicCheck=24..}] actionbar {"text":"Connecting Cave"}
execute as @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={MusicCheck=1..22,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={MusicCheck=24..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201] MusicCheck 23


#Glittering Cave - 24
title @s[x=-1542,y=0,z=249,dx=174,dy=256,dz=310,scores={MusicCheck=1..23}] actionbar {"text":"Glittering Cave"}
title @s[x=-1542,y=0,z=249,dx=174,dy=256,dz=310,scores={MusicCheck=25..}] actionbar {"text":"Glittering Cave"}
execute as @s[x=-1542,y=0,z=249,dx=174,dy=256,dz=310,scores={MusicCheck=1..23,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-1542,y=0,z=249,dx=174,dy=256,dz=310,scores={MusicCheck=25..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-1542,y=0,z=249,dx=174,dy=256,dz=310] MusicCheck 24


#Reflection Cave - 25
title @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={MusicCheck=1..24}] actionbar {"text":"Reflection Cave"}
title @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={MusicCheck=26..}] actionbar {"text":"Reflection Cave"}
execute as @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={MusicCheck=1..24,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={MusicCheck=26..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507] MusicCheck 25


#Kalos Power Plant - 26
title @s[x=-1092,y=34,z=-401,dx=296,dy=55,dz=122,scores={MusicCheck=1..25}] actionbar {"text":"Kalos Power Plant"}
title @s[x=-1092,y=34,z=-401,dx=296,dy=55,dz=122,scores={MusicCheck=27..}] actionbar {"text":"Kalos Power Plant"}
execute as @s[x=-1092,y=34,z=-401,dx=296,dy=55,dz=122,scores={MusicCheck=1..25,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-1092,y=34,z=-401,dx=296,dy=55,dz=122,scores={MusicCheck=27..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-1092,y=34,z=-401,dx=296,dy=55,dz=122] MusicCheck 26


#Power Plant Room ??? - 26
title @s[x=-937,y=36,z=-742,dx=280,dy=40,dz=117,scores={MusicCheck=1..25}] actionbar {"text":"Power Plant Room ???"}
title @s[x=-937,y=36,z=-742,dx=280,dy=40,dz=117,scores={MusicCheck=27..}] actionbar {"text":"Power Plant Room ???"}
execute as @s[x=-937,y=36,z=-742,dx=280,dy=40,dz=117,scores={MusicCheck=1..25,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-937,y=36,z=-742,dx=280,dy=40,dz=117,scores={MusicCheck=27..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-937,y=36,z=-742,dx=280,dy=40,dz=117] MusicCheck 26


#Azure Bay - 27
title @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={MusicCheck=1..26}] actionbar {"text":"Azure Bay"}
title @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={MusicCheck=28..}] actionbar {"text":"Azure Bay"}
execute as @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={MusicCheck=1..26,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={MusicCheck=28..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451] MusicCheck 27


#Sea Spirit's Den - 28
title @s[x=-1363,y=21,z=-1264,dx=65,dy=15,dz=83,scores={MusicCheck=1..27}] actionbar {"text":"Sea Spirit's Den"}
title @s[x=-1363,y=21,z=-1264,dx=65,dy=15,dz=83,scores={MusicCheck=29..}] actionbar {"text":"Sea Spirit's Den"}
execute as @s[x=-1363,y=21,z=-1264,dx=65,dy=15,dz=83,scores={MusicCheck=1..27,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-1363,y=21,z=-1264,dx=65,dy=15,dz=83,scores={MusicCheck=29..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-1363,y=21,z=-1264,dx=65,dy=15,dz=83] MusicCheck 28


#Scary House - 61
title @s[x=-241,y=85,z=-1253,dx=21,dy=10,dz=28,scores={MusicCheck=1..60}] actionbar {"text":"Scary House"}
title @s[x=-241,y=85,z=-1253,dx=21,dy=10,dz=28,scores={MusicCheck=62..}] actionbar {"text":"Scary House"}
execute as @s[x=-241,y=85,z=-1253,dx=21,dy=10,dz=28,scores={MusicCheck=1..60,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-241,y=85,z=-1253,dx=21,dy=10,dz=28,scores={MusicCheck=62..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-241,y=85,z=-1253,dx=21,dy=10,dz=28] MusicCheck 61


#Poké Ball Factory - 29
title @s[x=-342,y=0,z=-2044,dx=431,dy=256,dz=466,scores={MusicCheck=1..28}] actionbar {"text":"Poké Ball Factory"}
title @s[x=-342,y=0,z=-2044,dx=431,dy=256,dz=466,scores={MusicCheck=30..}] actionbar {"text":"Poké Ball Factory"}
execute as @s[x=-342,y=0,z=-2044,dx=431,dy=256,dz=466,scores={MusicCheck=1..28,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-342,y=0,z=-2044,dx=431,dy=256,dz=466,scores={MusicCheck=30..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-342,y=0,z=-2044,dx=431,dy=256,dz=466] MusicCheck 29


#Poké Ball Factory - 30
title @s[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,scores={MusicCheck=1..29}] actionbar {"text":"Poké Ball Factory"}
title @s[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,scores={MusicCheck=31..}] actionbar {"text":"Poké Ball Factory"}
execute as @s[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,scores={MusicCheck=1..29,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,scores={MusicCheck=31..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188] MusicCheck 30


#Lost Hotel - 31
title @s[x=403,y=0,z=-497,dx=144,dy=100,dz=127,scores={MusicCheck=1..30}] actionbar {"text":"Lost Hotel"}
title @s[x=403,y=0,z=-497,dx=144,dy=100,dz=127,scores={MusicCheck=32..}] actionbar {"text":"Lost Hotel"}
execute as @s[x=403,y=0,z=-497,dx=144,dy=100,dz=127,scores={MusicCheck=1..30,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=403,y=0,z=-497,dx=144,dy=100,dz=127,scores={MusicCheck=32..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=403,y=0,z=-497,dx=144,dy=100,dz=127] MusicCheck 31


#Frost Cavern - 32
title @s[x=582,y=0,z=-1444,dx=326,dy=256,dz=870,scores={MusicCheck=1..31}] actionbar {"text":"Frost Cavern"}
title @s[x=582,y=0,z=-1444,dx=326,dy=256,dz=870,scores={MusicCheck=33..}] actionbar {"text":"Frost Cavern"}
execute as @s[x=582,y=0,z=-1444,dx=326,dy=256,dz=870,scores={MusicCheck=1..31,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=582,y=0,z=-1444,dx=326,dy=256,dz=870,scores={MusicCheck=33..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=582,y=0,z=-1444,dx=326,dy=256,dz=870] MusicCheck 32


#Frost Cavern - 32
title @s[x=444,y=0,z=-1444,dx=137,dy=128,dz=560,scores={MusicCheck=1..31}] actionbar {"text":"Frost Cavern"}
title @s[x=444,y=0,z=-1444,dx=137,dy=128,dz=560,scores={MusicCheck=33..}] actionbar {"text":"Frost Cavern"}
execute as @s[x=444,y=0,z=-1444,dx=137,dy=128,dz=560,scores={MusicCheck=1..31,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=444,y=0,z=-1444,dx=137,dy=128,dz=560,scores={MusicCheck=33..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=444,y=0,z=-1444,dx=137,dy=128,dz=560] MusicCheck 32


#Frost Cavern - 34
title @s[x=582,y=0,z=-1444,dx=326,dy=128,dz=550,scores={MusicCheck=1..33}] actionbar {"text":"Frost Cavern"}
title @s[x=582,y=0,z=-1444,dx=326,dy=128,dz=550,scores={MusicCheck=35..}] actionbar {"text":"Frost Cavern"}
execute as @s[x=582,y=0,z=-1444,dx=326,dy=128,dz=550,scores={MusicCheck=1..33,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=582,y=0,z=-1444,dx=326,dy=128,dz=550,scores={MusicCheck=35..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=582,y=0,z=-1444,dx=326,dy=128,dz=550] MusicCheck 34


#Frost Cavern - 34
title @s[x=444,y=0,z=-1444,dx=137,dy=128,dz=550,scores={MusicCheck=1..33}] actionbar {"text":"Frost Cavern"}
title @s[x=444,y=0,z=-1444,dx=137,dy=128,dz=550,scores={MusicCheck=35..}] actionbar {"text":"Frost Cavern"}
execute as @s[x=444,y=0,z=-1444,dx=137,dy=128,dz=550,scores={MusicCheck=1..33,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=444,y=0,z=-1444,dx=137,dy=128,dz=550,scores={MusicCheck=35..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=444,y=0,z=-1444,dx=137,dy=128,dz=550] MusicCheck 34


#Team Flare Secret HQ - 35
title @s[x=-2526,y=0,z=-1074,dx=232,dy=95,dz=167,scores={MusicCheck=1..34}] actionbar {"text":"Team Flare Secret HQ"}
title @s[x=-2526,y=0,z=-1074,dx=232,dy=95,dz=167,scores={MusicCheck=36..}] actionbar {"text":"Team Flare Secret HQ"}
execute as @s[x=-2526,y=0,z=-1074,dx=232,dy=95,dz=167,scores={MusicCheck=1..34,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-2526,y=0,z=-1074,dx=232,dy=95,dz=167,scores={MusicCheck=36..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-2526,y=0,z=-1074,dx=232,dy=95,dz=167] MusicCheck 35


#Terminus Cave - 36
title @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={MusicCheck=1..35}] actionbar {"text":"Terminus Cave"}
title @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={MusicCheck=37..}] actionbar {"text":"Terminus Cave"}
execute as @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={MusicCheck=1..35,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={MusicCheck=37..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324] MusicCheck 36


#Terminus Cave - 36
title @s[x=1524,y=68,z=6,dx=177,dy=19,dz=100,scores={MusicCheck=1..35}] actionbar {"text":"Terminus Cave"}
title @s[x=1524,y=68,z=6,dx=177,dy=19,dz=100,scores={MusicCheck=37..}] actionbar {"text":"Terminus Cave"}
execute as @s[x=1524,y=68,z=6,dx=177,dy=19,dz=100,scores={MusicCheck=1..35,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=1524,y=68,z=6,dx=177,dy=19,dz=100,scores={MusicCheck=37..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=1524,y=68,z=6,dx=177,dy=19,dz=100] MusicCheck 36


#Pokémon Village - 37
title @s[x=703,y=90,z=563,dx=280,dy=100,dz=279,scores={MusicCheck=1..36}] actionbar {"text":"Pokémon Village"}
title @s[x=703,y=90,z=563,dx=280,dy=100,dz=279,scores={MusicCheck=38..}] actionbar {"text":"Pokémon Village"}
execute as @s[x=703,y=90,z=563,dx=280,dy=100,dz=279,scores={MusicCheck=1..36,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=703,y=90,z=563,dx=280,dy=100,dz=279,scores={MusicCheck=38..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=703,y=90,z=563,dx=280,dy=100,dz=279] MusicCheck 37


#Unknown Dungeon - 38
title @s[x=809,y=74,z=525,dx=66,dy=14,dz=92,scores={MusicCheck=1..37}] actionbar {"text":"Unknown Dungeon"}
title @s[x=809,y=74,z=525,dx=66,dy=14,dz=92,scores={MusicCheck=39..}] actionbar {"text":"Unknown Dungeon"}
execute as @s[x=809,y=74,z=525,dx=66,dy=14,dz=92,scores={MusicCheck=1..37,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=809,y=74,z=525,dx=66,dy=14,dz=92,scores={MusicCheck=39..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=809,y=74,z=525,dx=66,dy=14,dz=92] MusicCheck 38


#Victory Road - 39
title @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=1417,scores={MusicCheck=1..38}] actionbar {"text":"Victory Road"}
title @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=1417,scores={MusicCheck=40..}] actionbar {"text":"Victory Road"}
execute as @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=1417,scores={MusicCheck=1..38,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=1417,scores={MusicCheck=40..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=1417] MusicCheck 39


#Battle Chateau - 62
title @s[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={MusicCheck=1..61}] actionbar {"text":"Battle Chateau"}
title @s[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={MusicCheck=63..}] actionbar {"text":"Battle Chateau"}
execute as @s[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={MusicCheck=1..61,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={MusicCheck=63..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] MusicCheck 62


#Sycamore's Lab - 63
title @s[x=-271,y=99,z=64,dx=36,dy=50,dz=37,scores={MusicCheck=1..62}] actionbar {"text":"Sycamore's Lab"}
title @s[x=-271,y=99,z=64,dx=36,dy=50,dz=37,scores={MusicCheck=64..}] actionbar {"text":"Sycamore's Lab"}
execute as @s[x=-271,y=99,z=64,dx=36,dy=50,dz=37,scores={MusicCheck=1..62,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-271,y=99,z=64,dx=36,dy=50,dz=37,scores={MusicCheck=64..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-271,y=99,z=64,dx=36,dy=50,dz=37] MusicCheck 63


#Kiloude City - 9
title @s[x=913,y=98,z=1473,dx=70,dy=100,dz=228,scores={MusicCheck=1..8}] actionbar {"text":"Kiloude City"}
title @s[x=913,y=98,z=1473,dx=70,dy=100,dz=228,scores={MusicCheck=10..}] actionbar {"text":"Kiloude City"}
execute as @s[x=913,y=98,z=1473,dx=70,dy=100,dz=228,scores={MusicCheck=1..8,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=913,y=98,z=1473,dx=70,dy=100,dz=228,scores={MusicCheck=10..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=913,y=98,z=1473,dx=70,dy=100,dz=228] MusicCheck 9


#Lumiose City - 5
title @s[x=984,y=99,z=1845,dx=267,dy=50,dz=100,scores={MusicCheck=1..4}] actionbar {"text":"Lumiose City"}
title @s[x=984,y=99,z=1845,dx=267,dy=50,dz=100,scores={MusicCheck=6..}] actionbar {"text":"Lumiose City"}
execute as @s[x=984,y=99,z=1845,dx=267,dy=50,dz=100,scores={MusicCheck=1..4,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=984,y=99,z=1845,dx=267,dy=50,dz=100,scores={MusicCheck=6..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=984,y=99,z=1845,dx=267,dy=50,dz=100] MusicCheck 5


#Lobby - 64
title @s[x=-792,y=100,z=1196,dx=38,dy=20,dz=47,scores={MusicCheck=1..63}] actionbar {"text":"Lobby"}
title @s[x=-792,y=100,z=1196,dx=38,dy=20,dz=47,scores={MusicCheck=65..}] actionbar {"text":"Lobby"}
execute as @s[x=-792,y=100,z=1196,dx=38,dy=20,dz=47,scores={MusicCheck=1..63,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-792,y=100,z=1196,dx=38,dy=20,dz=47,scores={MusicCheck=65..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-792,y=100,z=1196,dx=38,dy=20,dz=47] MusicCheck 64


#Route 3 - 40
title @s[x=251,y=0,z=524,dx=202,dy=256,dz=214,scores={MusicCheck=1..39}] actionbar {"text":"Route 3"}
title @s[x=251,y=0,z=524,dx=202,dy=256,dz=214,scores={MusicCheck=41..}] actionbar {"text":"Route 3"}
execute as @s[x=251,y=0,z=524,dx=202,dy=256,dz=214,scores={MusicCheck=1..39,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=251,y=0,z=524,dx=202,dy=256,dz=214,scores={MusicCheck=41..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=251,y=0,z=524,dx=202,dy=256,dz=214] MusicCheck 40


#Route 4 - 41
title @s[x=103,y=0,z=-114,dx=155,dy=256,dz=497,scores={MusicCheck=1..40}] actionbar {"text":"Route 4"}
title @s[x=103,y=0,z=-114,dx=155,dy=256,dz=497,scores={MusicCheck=42..}] actionbar {"text":"Route 4"}
execute as @s[x=103,y=0,z=-114,dx=155,dy=256,dz=497,scores={MusicCheck=1..40,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=103,y=0,z=-114,dx=155,dy=256,dz=497,scores={MusicCheck=42..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=103,y=0,z=-114,dx=155,dy=256,dz=497] MusicCheck 41


#Route 5 - 42
title @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={MusicCheck=1..41}] actionbar {"text":"Route 5"}
title @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={MusicCheck=43..}] actionbar {"text":"Route 5"}
execute as @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={MusicCheck=1..41,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={MusicCheck=43..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230] MusicCheck 42


#Route 6 - 43
title @s[x=-1348,y=0,z=-432,dx=201,dy=256,dz=313,scores={MusicCheck=1..42}] actionbar {"text":"Route 6"}
title @s[x=-1348,y=0,z=-432,dx=201,dy=256,dz=313,scores={MusicCheck=44..}] actionbar {"text":"Route 6"}
execute as @s[x=-1348,y=0,z=-432,dx=201,dy=256,dz=313,scores={MusicCheck=1..42,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-1348,y=0,z=-432,dx=201,dy=256,dz=313,scores={MusicCheck=44..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-1348,y=0,z=-432,dx=201,dy=256,dz=313] MusicCheck 43


#Route 7 - 44
title @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,scores={MusicCheck=1..43}] actionbar {"text":"Route 7"}
title @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,scores={MusicCheck=45..}] actionbar {"text":"Route 7"}
execute as @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,scores={MusicCheck=1..43,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,scores={MusicCheck=45..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199] MusicCheck 44


#Route 8 - 45
title @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={MusicCheck=1..44}] actionbar {"text":"Route 8"}
title @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={MusicCheck=46..}] actionbar {"text":"Route 8"}
execute as @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={MusicCheck=1..44,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={MusicCheck=46..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444] MusicCheck 45


#Route 9 - 46
title @s[x=-1875,y=0,z=560,dx=507,dy=256,dz=202,scores={MusicCheck=1..45}] actionbar {"text":"Route 9"}
title @s[x=-1875,y=0,z=560,dx=507,dy=256,dz=202,scores={MusicCheck=47..}] actionbar {"text":"Route 9"}
execute as @s[x=-1875,y=0,z=560,dx=507,dy=256,dz=202,scores={MusicCheck=1..45,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-1875,y=0,z=560,dx=507,dy=256,dz=202,scores={MusicCheck=47..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-1875,y=0,z=560,dx=507,dy=256,dz=202] MusicCheck 46


#Route 10 - 47
title @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={MusicCheck=1..46}] actionbar {"text":"Route 10"}
title @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={MusicCheck=48..}] actionbar {"text":"Route 10"}
execute as @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={MusicCheck=1..46,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={MusicCheck=48..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379] MusicCheck 47


#Route 11 - 48
title @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={MusicCheck=1..47}] actionbar {"text":"Route 11"}
title @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={MusicCheck=49..}] actionbar {"text":"Route 11"}
execute as @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={MusicCheck=1..47,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={MusicCheck=49..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159] MusicCheck 48


#Route 12 - 49
title @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={MusicCheck=1..48}] actionbar {"text":"Route 12"}
title @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={MusicCheck=50..}] actionbar {"text":"Route 12"}
execute as @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={MusicCheck=1..48,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={MusicCheck=50..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154] MusicCheck 49


#Route 13 - 50
title @s[x=-973,y=0,z=-871,dx=371,dy=256,dz=651,scores={MusicCheck=1..49}] actionbar {"text":"Route 13"}
title @s[x=-973,y=0,z=-871,dx=371,dy=256,dz=651,scores={MusicCheck=51..}] actionbar {"text":"Route 13"}
execute as @s[x=-973,y=0,z=-871,dx=371,dy=256,dz=651,scores={MusicCheck=1..49,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-973,y=0,z=-871,dx=371,dy=256,dz=651,scores={MusicCheck=51..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-973,y=0,z=-871,dx=371,dy=256,dz=651] MusicCheck 50


#Route 14 - 51
title @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,scores={MusicCheck=1..50}] actionbar {"text":"Route 14"}
title @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,scores={MusicCheck=52..}] actionbar {"text":"Route 14"}
execute as @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,scores={MusicCheck=1..50,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,scores={MusicCheck=52..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508] MusicCheck 51


#Route 15 - 52
title @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292,scores={MusicCheck=1..51}] actionbar {"text":"Route 15"}
title @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292,scores={MusicCheck=53..}] actionbar {"text":"Route 15"}
execute as @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292,scores={MusicCheck=1..51,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292,scores={MusicCheck=54..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292] MusicCheck 52


#Route 16 - 53
title @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273,scores={MusicCheck=1..52}] actionbar {"text":"Route 16"}
title @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273,scores={MusicCheck=54..}] actionbar {"text":"Route 16"}
execute as @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273,scores={MusicCheck=1..51,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273,scores={MusicCheck=54..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273] MusicCheck 53


#Route 17 - 54
title @s[x=735,y=0,z=-417,dx=361,dy=256,dz=495,scores={MusicCheck=1..53}] actionbar {"text":"Route 17"}
title @s[x=735,y=0,z=-417,dx=361,dy=256,dz=495,scores={MusicCheck=55..}] actionbar {"text":"Route 17"}
execute as @s[x=735,y=0,z=-417,dx=361,dy=256,dz=495,scores={MusicCheck=1..53,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=735,y=0,z=-417,dx=361,dy=256,dz=495,scores={MusicCheck=55..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=735,y=0,z=-417,dx=361,dy=256,dz=495] MusicCheck 54


#Route 18 - 55
title @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={MusicCheck=1..54}] actionbar {"text":"Route 18"}
title @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={MusicCheck=56..}] actionbar {"text":"Route 18"}
execute as @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={MusicCheck=1..54,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={MusicCheck=56..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271] MusicCheck 55


#Route 19 - 56
title @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249,scores={MusicCheck=1..55}] actionbar {"text":"Route 19"}
title @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249,scores={MusicCheck=57..}] actionbar {"text":"Route 19"}
execute as @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249,scores={MusicCheck=1..55,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249,scores={MusicCheck=57..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249] MusicCheck 56


#Route 20 - 57
title @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={MusicCheck=1..56}] actionbar {"text":"Route 20"}
title @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={MusicCheck=58..}] actionbar {"text":"Route 20"}
execute as @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={MusicCheck=1..56,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={MusicCheck=58..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=984,y=95,z=707,dx=621,dy=50,dz=451] MusicCheck 57


#Route 21 - 58
title @s[x=705,y=95,z=299,dx=278,dy=100,dz=263,scores={MusicCheck=1..57}] actionbar {"text":"Route 21"}
title @s[x=705,y=95,z=299,dx=278,dy=100,dz=263,scores={MusicCheck=59..}] actionbar {"text":"Route 21"}
execute as @s[x=705,y=95,z=299,dx=278,dy=100,dz=263,scores={MusicCheck=1..57,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=705,y=95,z=299,dx=278,dy=100,dz=263,scores={MusicCheck=59..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=705,y=95,z=299,dx=278,dy=100,dz=263] MusicCheck 58


#Route 21 - 58
title @s[x=683,y=95,z=393,dx=21,dy=100,dz=170,scores={MusicCheck=1..57}] actionbar {"text":"Route 21"}
title @s[x=683,y=95,z=393,dx=21,dy=100,dz=170,scores={MusicCheck=59..}] actionbar {"text":"Route 21"}
execute as @s[x=683,y=95,z=393,dx=21,dy=100,dz=170,scores={MusicCheck=1..57,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=683,y=95,z=393,dx=21,dy=100,dz=170,scores={MusicCheck=59..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=683,y=95,z=393,dx=21,dy=100,dz=170] MusicCheck 58


#Route 22 - 59
title @s[x=454,y=87,z=524,dx=228,dy=100,dz=214,scores={MusicCheck=1..58}] actionbar {"text":"Route 22"}
title @s[x=454,y=87,z=524,dx=228,dy=100,dz=214,scores={MusicCheck=60..}] actionbar {"text":"Route 22"}
execute as @s[x=454,y=87,z=524,dx=228,dy=100,dz=214,scores={MusicCheck=1..58,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=454,y=87,z=524,dx=228,dy=100,dz=214,scores={MusicCheck=60..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=454,y=87,z=524,dx=228,dy=100,dz=214] MusicCheck 59


#Route 22 - 59
title @s[x=344,y=87,z=299,dx=338,dy=100,dz=224,scores={MusicCheck=1..58}] actionbar {"text":"Route 22"}
title @s[x=344,y=87,z=299,dx=338,dy=100,dz=224,scores={MusicCheck=60..}] actionbar {"text":"Route 22"}
execute as @s[x=344,y=87,z=299,dx=338,dy=100,dz=224,scores={MusicCheck=1..58,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=344,y=87,z=299,dx=338,dy=100,dz=224,scores={MusicCheck=60..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=344,y=87,z=299,dx=338,dy=100,dz=224] MusicCheck 59


#Santalune Gym - 60
title @s[x=-2027,y=0,z=-1934,dx=205,dy=256,dz=147,scores={MusicCheck=1..59}] actionbar {"text":"Santalune Gym"}
title @s[x=-2027,y=0,z=-1934,dx=205,dy=256,dz=147,scores={MusicCheck=61..}] actionbar {"text":"Santalune Gym"}
execute as @s[x=-2027,y=0,z=-1934,dx=205,dy=256,dz=147,scores={MusicCheck=1..59,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-2027,y=0,z=-1934,dx=205,dy=256,dz=147,scores={MusicCheck=61..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-2027,y=0,z=-1934,dx=205,dy=256,dz=147] MusicCheck 60


#Cyllage Gym - 60
title @s[x=-1821,y=0,z=-2071,dx=273,dy=256,dz=285,scores={MusicCheck=1..59}] actionbar {"text":"Cyllage Gym"}
title @s[x=-1821,y=0,z=-2071,dx=273,dy=256,dz=285,scores={MusicCheck=61..}] actionbar {"text":"Cyllage Gym"}
execute as @s[x=-1821,y=0,z=-2071,dx=273,dy=256,dz=285,scores={MusicCheck=1..59,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-1821,y=0,z=-2071,dx=273,dy=256,dz=285,scores={MusicCheck=61..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-1821,y=0,z=-2071,dx=273,dy=256,dz=285] MusicCheck 60


#Shalour Gym - 60
title @s[x=-1473,y=0,z=-1984,dx=183,dy=256,dz=191,scores={MusicCheck=1..59}] actionbar {"text":"Shalour Gym"}
title @s[x=-1473,y=0,z=-1984,dx=183,dy=256,dz=191,scores={MusicCheck=61..}] actionbar {"text":"Shalour Gym"}
execute as @s[x=-1473,y=0,z=-1984,dx=183,dy=256,dz=191,scores={MusicCheck=1..59,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-1473,y=0,z=-1984,dx=183,dy=256,dz=191,scores={MusicCheck=61..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-1473,y=0,z=-1984,dx=183,dy=256,dz=191] MusicCheck 60


#Coumarine Gym - 60
title @s[x=-2027,y=0,z=-2285,dx=205,dy=256,dz=212,scores={MusicCheck=1..59}] actionbar {"text":"Coumarine Gym"}
title @s[x=-2027,y=0,z=-2285,dx=205,dy=256,dz=212,scores={MusicCheck=61..}] actionbar {"text":"Coumarine Gym"}
execute as @s[x=-2027,y=0,z=-2285,dx=205,dy=256,dz=212,scores={MusicCheck=1..59,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-2027,y=0,z=-2285,dx=205,dy=256,dz=212,scores={MusicCheck=61..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-2027,y=0,z=-2285,dx=205,dy=256,dz=212] MusicCheck 60


#Lumiose Gym - 60
title @s[x=-1877,y=0,z=-1775,dx=110,dy=256,dz=130,scores={MusicCheck=1..59}] actionbar {"text":"Lumiose Gym"}
title @s[x=-1877,y=0,z=-1775,dx=110,dy=256,dz=130,scores={MusicCheck=61..}] actionbar {"text":"Lumiose Gym"}
execute as @s[x=-1877,y=0,z=-1775,dx=110,dy=256,dz=130,scores={MusicCheck=1..59,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-1877,y=0,z=-1775,dx=110,dy=256,dz=130,scores={MusicCheck=61..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-1877,y=0,z=-1775,dx=110,dy=256,dz=130] MusicCheck 60


#Laverre Gym - 60
title @s[x=-2018,y=0,z=-1757,dx=115,dy=256,dz=113,scores={MusicCheck=1..59}] actionbar {"text":"Laverre Gym"}
title @s[x=-2018,y=0,z=-1757,dx=115,dy=256,dz=113,scores={MusicCheck=61..}] actionbar {"text":"Laverre Gym"}
execute as @s[x=-2018,y=0,z=-1757,dx=115,dy=256,dz=113,scores={MusicCheck=1..59,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-2018,y=0,z=-1757,dx=115,dy=256,dz=113,scores={MusicCheck=61..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-2018,y=0,z=-1757,dx=115,dy=256,dz=113] MusicCheck 60


#Anistar Gym - 60
title @s[x=-1227,y=0,z=-2125,dx=301,dy=256,dz=438,scores={MusicCheck=1..59}] actionbar {"text":"Anistar Gym"}
title @s[x=-1227,y=0,z=-2125,dx=301,dy=256,dz=438,scores={MusicCheck=61..}] actionbar {"text":"Anistar Gym"}
execute as @s[x=-1227,y=0,z=-2125,dx=301,dy=256,dz=438,scores={MusicCheck=1..59,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-1227,y=0,z=-2125,dx=301,dy=256,dz=438,scores={MusicCheck=61..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-1227,y=0,z=-2125,dx=301,dy=256,dz=438] MusicCheck 60


#Snowbelle Gym - 60
title @s[x=-871,y=0,z=-2110,dx=143,dy=256,dz=321,scores={MusicCheck=1..59}] actionbar {"text":"Snowbelle Gym"}
title @s[x=-871,y=0,z=-2110,dx=143,dy=256,dz=321,scores={MusicCheck=61..}] actionbar {"text":"Snowbelle Gym"}
execute as @s[x=-871,y=0,z=-2110,dx=143,dy=256,dz=321,scores={MusicCheck=1..59,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=-871,y=0,z=-2110,dx=143,dy=256,dz=321,scores={MusicCheck=61..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=-871,y=0,z=-2110,dx=143,dy=256,dz=321] MusicCheck 60


#Victory Road - 39
title @s[x=683,y=0,z=299,dx=21,dy=256,dz=93,scores={MusicCheck=1..38}] actionbar {"text":"Victory Road"}
title @s[x=683,y=0,z=299,dx=21,dy=256,dz=93,scores={MusicCheck=40..}] actionbar {"text":"Victory Road"}
execute as @s[x=683,y=0,z=299,dx=21,dy=256,dz=93,scores={MusicCheck=1..38,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=683,y=0,z=299,dx=21,dy=256,dz=93,scores={MusicCheck=40..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=683,y=0,z=299,dx=21,dy=256,dz=93] MusicCheck 39


#Victory Road - 39
title @s[x=543,y=0,z=-37,dx=328,dy=256,dz=272,scores={MusicCheck=1..38}] actionbar {"text":"Victory Road"}
title @s[x=543,y=0,z=-37,dx=328,dy=256,dz=272,scores={MusicCheck=40..}] actionbar {"text":"Victory Road"}
execute as @s[x=543,y=0,z=-37,dx=328,dy=256,dz=272,scores={MusicCheck=1..38,MusicCooldown=1..}] run function kalos:triggers/stopsound
execute as @s[x=543,y=0,z=-37,dx=328,dy=256,dz=272,scores={MusicCheck=40..,MusicCooldown=1..}] run function kalos:triggers/stopsound
scoreboard players set @s[x=543,y=0,z=-37,dx=328,dy=256,dz=272] MusicCheck 39



#Resets after all routes
#scoreboard players set @s[score_MusicSteps_min=3000] MusicSteps 0
#scoreboard players set @s[score_MusicSprint_min=3000] MusicSprint 0
