#Somewhat infrequent commands that need to happen more than once a minute.

#---------------------------------------------------------------------------------------
#Misc Things

#Trash Cans
execute at @s as @e[distance=..75,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":49},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {Motion:[0.0d,0.4d,0.0d]}

#Power Plant Pass hint
execute as @a[x=-779,y=104,z=-347,distance=..45,tag=Dialogue70,tag=!PowerPlantPass] run particle minecraft:firework -779 104 -347 0 2 0 0.1 0 normal @s

#Runs infolist command for non-ops
scoreboard players enable @a Info
scoreboard players enable @a info

#---------------------------------------------------------------------------------------
#Micro-manages advancements for Vivillion's patterns

#tags if player has a Spewpa in party
execute as @s run scoreboard players set @s Temp 0
execute as @s run execute store result score @s Temp run teststore @s all spewpa
execute as @s[scores={Temp=1..}] run tag @s add SpewpaHave

#Clears out all previous locations
advancement revoke @s[tag=SpewpaHave] only kalos:locations/archipelago
advancement revoke @s[tag=SpewpaHave] only kalos:locations/continental
advancement revoke @s[tag=SpewpaHave] only kalos:locations/elegant
advancement revoke @s[tag=SpewpaHave] only kalos:locations/garden
advancement revoke @s[tag=SpewpaHave] only kalos:locations/highplains
advancement revoke @s[tag=SpewpaHave] only kalos:locations/icysnow
advancement revoke @s[tag=SpewpaHave] only kalos:locations/jungle
advancement revoke @s[tag=SpewpaHave] only kalos:locations/marine
advancement revoke @s[tag=SpewpaHave] only kalos:locations/meadow
advancement revoke @s[tag=SpewpaHave] only kalos:locations/modern
advancement revoke @s[tag=SpewpaHave] only kalos:locations/monsoon
advancement revoke @s[tag=SpewpaHave] only kalos:locations/ocean
advancement revoke @s[tag=SpewpaHave] only kalos:locations/polar
advancement revoke @s[tag=SpewpaHave] only kalos:locations/river
advancement revoke @s[tag=SpewpaHave] only kalos:locations/sandstorm
advancement revoke @s[tag=SpewpaHave] only kalos:locations/savanna
advancement revoke @s[tag=SpewpaHave] only kalos:locations/sun
advancement revoke @s[tag=SpewpaHave] only kalos:locations/tundra
advancement revoke @s[tag=SpewpaHave] only kalos:locations/pokeball


#Archipelago (Azure Bay, Coumarine City)
execute as @s[tag=SpewpaHave] if entity @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451] run advancement grant @s only kalos:locations/archipelago
execute as @s[tag=SpewpaHave] if entity @s[x=-1204,y=0,z=-888,dx=230,dy=256,dz=380] run advancement grant @s only kalos:locations/archipelago

#Continental (Route 2/3/4/10)
execute as @s[tag=SpewpaHave] if entity @s[x=396,y=0,z=979,dx=146,dy=256,dz=256] run advancement grant @s only kalos:locations/continental
execute as @s[tag=SpewpaHave] if entity @s[x=251,y=0,z=524,dx=202,dy=256,dz=214] run advancement grant @s only kalos:locations/continental
execute as @s[tag=SpewpaHave] if entity @s[x=103,y=0,z=-114,dx=155,dy=256,dz=497] run advancement grant @s only kalos:locations/continental
execute as @s[tag=SpewpaHave] if entity @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379] run advancement grant @s only kalos:locations/continental

#Elegant (Parfum Palace, Route 6)
execute as @s[tag=SpewpaHave] if entity @s[x=-1758,y=95,z=-529,dx=409,dy=161,dz=307] run advancement grant @s only kalos:locations/elegant
execute as @s[tag=SpewpaHave] if entity @s[x=-1348,y=0,z=-432,dx=201,dy=256,dz=313] run advancement grant @s only kalos:locations/elegant

#Garden (Route 5/7)
execute as @s[tag=SpewpaHave] if entity @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230] run advancement grant @s only kalos:locations/garden
execute as @s[tag=SpewpaHave] if entity @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199] run advancement grant @s only kalos:locations/garden

#High Plains (Route 8 Upper, 9, 11, Victory Road)
execute as @s[tag=SpewpaHave] if entity @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444] run advancement grant @s only kalos:locations/highplains
execute as @s[tag=SpewpaHave] if entity @s[x=-1875,y=0,z=560,dx=507,dy=256,dz=202] run advancement grant @s only kalos:locations/highplains
execute as @s[tag=SpewpaHave] if entity @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159] run advancement grant @s only kalos:locations/highplains
execute as @s[tag=SpewpaHave] if entity @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=1417] run advancement grant @s only kalos:locations/highplains

#Icy Snow (Frost Cavern Int, Snowbelle)
execute as @s[tag=SpewpaHave] if entity @s[x=582,y=0,z=-1444,dx=326,dy=256,dz=870] run advancement grant @s only kalos:locations/icysnow
execute as @s[tag=SpewpaHave] if entity @s[x=444,y=0,z=-1444,dx=137,dy=128,dz=560] run advancement grant @s only kalos:locations/icysnow
execute as @s[tag=SpewpaHave] if entity @s[x=984,y=0,z=324,dx=341,dy=256,dz=323] run advancement grant @s only kalos:locations/icysnow

#Jungle (Santalune Forest, Route 20 forest)
execute as @s[tag=SpewpaHave] if entity @s[x=331,y=0,z=739,dx=256,dy=256,dz=239] run advancement grant @s only kalos:locations/jungle
execute as @s[tag=SpewpaHave] if entity @s[x=984,y=95,z=707,dx=621,dy=50,dz=451] run advancement grant @s only kalos:locations/jungle

#Marine (Route 8 coastal, Cyllage)
execute as @s[tag=SpewpaHave] if entity @s[x=-2231,y=0,z=59,dx=362,dy=82,dz=444] run advancement grant @s only kalos:locations/marine
execute as @s[tag=SpewpaHave] if entity @s[x=-2223,y=0,z=-217,dx=354,dy=256,dz=275] run advancement grant @s only kalos:locations/marine

#Meadow (Pokémon Village)
execute as @s[tag=SpewpaHave] if entity @s[x=703,y=90,z=563,dx=280,dy=100,dz=279] run advancement grant @s only kalos:locations/meadow

#Modern (Lumiose City)
execute as @s[tag=SpewpaHave] if entity @s[x=-181,y=101,z=-390,distance=..395] run advancement grant @s only kalos:locations/modern
execute as @s[tag=SpewpaHave] if entity @s[x=-514,y=0,z=64,dx=516,dy=150,dz=436] run advancement grant @s only kalos:locations/modern

#Poke-Ball Pattern (Poke Ball Factory)
execute as @s[tag=SpewpaHave] if entity @s[x=-342,y=0,z=-2044,dx=431,dy=256,dz=466] run advancement grant @s only kalos:locations/pokeball
execute as @s[tag=SpewpaHave] if entity @s[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188] run advancement grant @s only kalos:locations/pokeball

#Monsoon (Route 14/19)
execute as @s[tag=SpewpaHave] if entity @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508] run advancement grant @s only kalos:locations/monsoon
execute as @s[tag=SpewpaHave] if entity @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249] run advancement grant @s only kalos:locations/monsoon

#Ocean (Tower of Mastery, Shalour, Route 12)
execute as @s[tag=SpewpaHave] if entity @s[x=-1816,y=0,z=-1209,dx=332,dy=256,dz=221] run advancement grant @s only kalos:locations/ocean
execute as @s[tag=SpewpaHave] if entity @s[x=-1816,y=0,z=-987,dx=332,dy=256,dz=254] run advancement grant @s only kalos:locations/ocean
execute as @s[tag=SpewpaHave] if entity @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154] run advancement grant @s only kalos:locations/ocean

#Polar (Frost Cavern Ext, Dendemille)
execute as @s[tag=SpewpaHave] if entity @s[x=582,y=0,z=-1444,dx=326,dy=256,dz=870] run advancement grant @s only kalos:locations/polar
execute as @s[tag=SpewpaHave] if entity @s[x=444,y=0,z=-1444,dx=137,dy=128,dz=560] run advancement grant @s only kalos:locations/polar
execute as @s[tag=SpewpaHave] if entity @s[x=582,y=0,z=-573,dx=152,dy=256,dz=313] run advancement grant @s only kalos:locations/polar

#River (Route 21/22, Couriway)
execute as @s[tag=SpewpaHave] if entity @s[x=705,y=95,z=299,dx=278,dy=100,dz=263] run advancement grant @s only kalos:locations/river
execute as @s[tag=SpewpaHave] if entity @s[x=683,y=95,z=393,dx=21,dy=100,dz=170] run advancement grant @s only kalos:locations/river
execute as @s[tag=SpewpaHave] if entity @s[x=454,y=87,z=524,dx=228,dy=100,dz=214] run advancement grant @s only kalos:locations/river
execute as @s[tag=SpewpaHave] if entity @s[x=344,y=87,z=299,dx=338,dy=100,dz=224] run advancement grant @s only kalos:locations/river
execute as @s[tag=SpewpaHave] if entity @s[x=1326,y=0,z=132,dx=360,dy=256,dz=198] run advancement grant @s only kalos:locations/river

#Sandstorm (Route 13)
execute as @s[tag=SpewpaHave] if entity @s[x=-973,y=0,z=-871,dx=371,dy=256,dz=651] run advancement grant @s only kalos:locations/sandstorm

#Savanna (Route 15/16)
execute as @s[tag=SpewpaHave] if entity @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292] run advancement grant @s only kalos:locations/savannah
execute as @s[tag=SpewpaHave] if entity @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273] run advancement grant @s only kalos:locations/savannah

#Sun (Anistar City, Route 18)
execute as @s[tag=SpewpaHave] if entity @s[x=1097,y=0,z=-376,dx=334,dy=256,dz=235] run advancement grant @s only kalos:locations/sun
execute as @s[tag=SpewpaHave] if entity @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271] run advancement grant @s only kalos:locations/sun

#Tundra (Route 17)
execute as @s[tag=SpewpaHave] if entity @s[x=735,y=0,z=-417,dx=361,dy=256,dz=495] run advancement grant @s only kalos:locations/tundra

tag @s[tag=SpewpaHave] remove SpewpaHave

#---------------------------------------------------------------------------------------
#Hotel Guest Refreshes

execute if entity @a[x=-1121,y=70,z=-24,dx=60,dy=20,dz=46] run function kalos:world/hotelguests
execute if entity @a[x=-2001,y=99,z=622,dx=60,dy=20,dz=46] run function kalos:world/hotelguests
execute if entity @a[x=-2059,y=55,z=-178,dx=60,dy=20,dz=46] run function kalos:world/hotelguests
execute if entity @a[x=-2201,y=77,z=-661,dx=60,dy=20,dz=46] run function kalos:world/hotelguests
execute if entity @a[x=-1066,y=46,z=-835,dx=60,dy=20,dz=46] run function kalos:world/hotelguests
execute if entity @a[x=1548,y=64,z=242,dx=60,dy=20,dz=46] run function kalos:world/hotelguests











#