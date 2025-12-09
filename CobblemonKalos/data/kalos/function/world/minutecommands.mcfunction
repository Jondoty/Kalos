#Deletes duplicate Pokemon/Trainers if player relogs near where something respawns
execute at @e[nbt={NoAI: 1b},type=cobblemon:pokemon] unless entity @e[type=cobblemon:pokemon,tag=keeper] run tag @e[distance=..0.01,limit=1] add keeper
execute at @e[type=cobblemon:npc] unless entity @e[type=cobblemon:npc,tag=keeper] run tag @e[distance=..0.01,limit=1] add keeper
execute at @e[type=cobblemon:pokemon,tag=keeper] run kill @e[nbt={NoAI: 1b},type=cobblemon:pokemon,distance=..0.01,tag=!keeper]
execute at @e[type=cobblemon:npc,tag=keeper] run tp @e[type=cobblemon:npc,distance=..0.01,tag=!keeper] 10000000 -50000 -10000000
tag @e[tag=keeper] remove keeper


#Battle Chateau Minute Cooldowns
scoreboard players remove @e[x=-687,y=100,z=1384,dy=3,type=armor_stand,scores={ChateauCD=1..}] ChateauCD 1

#If Writ of Invitations active, removes additional
#Writ of Inv
execute if entity @e[x=-685,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] run scoreboard players remove @e[x=-687,y=100,z=1384,dy=3,type=armor_stand,scores={ChateauCD=1..}] ChateauCD 1
#Silver Writ of Inv
execute if entity @e[x=-683,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] run scoreboard players set @e[x=-687,y=100,z=1384,dy=3,type=armor_stand,scores={ChateauCD=1..}] ChateauCD 0



#Runs Battle Chateau trainer changing function if Cooldown=0
execute if entity @p[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] unless entity @e[x=-687,y=100,z=1384,dy=3,type=armor_stand,scores={ChateauCD=1..}] run function kalos:world/battlechateau


#Resets the Friend Safari biome if no player is nearby
execute unless entity @a[x=1307,y=111,z=1496,distance=..75] run fillbiome 1286 109 1466 1328 115 1500 minecraft:jungle


#Regenerates Cut Trees
function kalos:hms/cutregen

#Regenerates Rock Smash rocks
execute as @a[tag=RockSmash] at @s as @e[tag=RockSmash,type=armor_stand,distance=40..150] run function kalos:hms/rocksmashregen


#Respawns starters in the selection orbs
execute as @a[x=-1107,y=99,z=1171,dx=123,dy=30,dz=227] unless entity @e[x=-1082,y=101,z=1196,dy=3,type=cobblemon:pokemon] run pokespawnat -1082 101 1196 chespin no_ai=yes level=5
execute as @a[x=-1107,y=99,z=1171,dx=123,dy=30,dz=227] unless entity @e[x=-1078,y=101,z=1196,dy=3,type=cobblemon:pokemon] run pokespawnat -1078 101 1196 fennekin no_ai=yes level=5
execute as @a[x=-1107,y=99,z=1171,dx=123,dy=30,dz=227] unless entity @e[x=-1074,y=101,z=1196,dy=3,type=cobblemon:pokemon] run pokespawnat -1074 101 1196 froakie no_ai=yes level=5

#Confirmation domes
execute as @a[x=-1107,y=99,z=1171,dx=123,dy=30,dz=227] unless entity @e[x=-1078,y=101,z=1258,dy=3,type=cobblemon:pokemon] run pokespawnat -1078 101 1258 chespin no_ai=yes level=5
execute as @a[x=-1107,y=99,z=1171,dx=123,dy=30,dz=227] unless entity @e[x=-1078,y=101,z=1311,dy=3,type=cobblemon:pokemon] run pokespawnat -1078 101 1311 fennekin no_ai=yes level=5
execute as @a[x=-1107,y=99,z=1171,dx=123,dy=30,dz=227] unless entity @e[x=-1078,y=101,z=1373,dy=3,type=cobblemon:pokemon] run pokespawnat -1078 101 1373 froakie no_ai=yes level=5



#Kanto Starters
execute as @a[x=-1107,y=99,z=1171,dx=123,dy=30,dz=227] unless entity @e[x=-1013,y=101,z=1196,dy=3,type=cobblemon:pokemon] run pokespawnat -1013 101 1196 bulbasaur no_ai=yes level=5
execute as @a[x=-1107,y=99,z=1171,dx=123,dy=30,dz=227] unless entity @e[x=-1009,y=101,z=1196,dy=3,type=cobblemon:pokemon] run pokespawnat -1009 101 1196 charmander no_ai=yes level=5
execute as @a[x=-1107,y=99,z=1171,dx=123,dy=30,dz=227] unless entity @e[x=-1005,y=101,z=1196,dy=3,type=cobblemon:pokemon] run pokespawnat -1005 101 1196 squirtle no_ai=yes level=5

#Confirmation domes
execute as @a[x=-1107,y=99,z=1171,dx=123,dy=30,dz=227] unless entity @e[x=-1009,y=101,z=1258,dy=3,type=cobblemon:pokemon] run pokespawnat -1009 101 1258 bulbasaur no_ai=yes level=5
execute as @a[x=-1107,y=99,z=1171,dx=123,dy=30,dz=227] unless entity @e[x=-1009,y=101,z=1311,dy=3,type=cobblemon:pokemon] run pokespawnat -1009 101 1311 charmander no_ai=yes level=5
execute as @a[x=-1107,y=99,z=1171,dx=123,dy=30,dz=227] unless entity @e[x=-1009,y=101,z=1373,dy=3,type=cobblemon:pokemon] run pokespawnat -1009 101 1373 squirtle no_ai=yes level=5



execute as @a[x=-1107,y=99,z=1171,dx=123,dy=30,dz=227] as @e[x=-1107,y=99,z=1171,dx=123,dy=30,dz=227,type=cobblemon:pokemon,nbt={PersistenceRequired:0b}] run data modify entity @s Invulnerable set value 1b
execute as @a[x=-1107,y=99,z=1171,dx=123,dy=30,dz=227] as @e[x=-1107,y=99,z=1171,dx=123,dy=30,dz=227,type=cobblemon:pokemon,nbt={PersistenceRequired:0b}] run data modify entity @s Unbattleable set value 1b
execute as @a[x=-1107,y=99,z=1171,dx=123,dy=30,dz=227] as @e[x=-1107,y=99,z=1171,dx=123,dy=30,dz=227,type=cobblemon:pokemon,nbt={PersistenceRequired:0b}] run data merge entity @s {Pokemon:{PokemonData:["uncatchable"]}}
execute as @a[x=-1107,y=99,z=1171,dx=123,dy=30,dz=227] as @e[x=-1107,y=99,z=1171,dx=123,dy=30,dz=227,type=cobblemon:pokemon,nbt={PersistenceRequired:0b}] run data merge entity @s {PersistenceRequired:1b}


#Clemont's gym
execute as @a[x=-1823,y=111,z=-1718,distance=..25] unless entity @e[x=-1823,y=111,z=-1718,distance=..2,type=cobblemon:pokemon] run pokespawnat -1823 111.1 -1718 pikachu level=15 nickname="???" aspect=silhouette no_ai=yes uncatchable=yes
execute as @a[x=-1823,y=126,z=-1718,distance=..25] unless entity @e[x=-1823,y=126,z=-1718,distance=..2,type=cobblemon:pokemon] run pokespawnat -1823 126.1 -1718 fletchling level=15 nickname="???" aspect=silhouette no_ai=yes uncatchable=yes
execute as @a[x=-1823,y=141,z=-1718,distance=..25] unless entity @e[x=-1823,y=141,z=-1718,distance=..2,type=cobblemon:pokemon] run pokespawnat -1823 141.1 -1718 panpour level=15 nickname="???" aspect=silhouette no_ai=yes uncatchable=yes
execute as @a[x=-1823,y=156,z=-1718,distance=..25] unless entity @e[x=-1823,y=156,z=-1718,distance=..2,type=cobblemon:pokemon] run pokespawnat -1823 156.1 -1718 vivillon level=15 nickname="???" aspect=silhouette no_ai=yes uncatchable=yes

execute as @e[x=-1823,y=111,z=-1718,distance=..3,type=cobblemon:pokemon,nbt={PersistenceRequired:0b}] run data merge entity @s {Pokemon:{PokemonData:["uncatchable"]}}
execute as @e[x=-1823,y=126,z=-1718,distance=..3,type=cobblemon:pokemon,nbt={PersistenceRequired:0b}] run data modify entity @s Unbattleable set value 1b
execute as @e[x=-1823,y=141,z=-1718,distance=..3,type=cobblemon:pokemon,nbt={PersistenceRequired:0b}] run data modify entity @s Invulnerable set value 1b
execute as @e[x=-1823,y=156,z=-1718,distance=..3,type=cobblemon:pokemon,nbt={PersistenceRequired:0b}] run data modify entity @s PersistenceRequired set value 1


#Regenerates snow in Mamoswine's Route when nobody is in the cleared zone
execute as @e[x=862,y=107,z=-420,dx=140,dy=15,dz=144,type=cobblemon:pokemon] at @s run tp @s ~ 113 ~
execute as @e[x=802,y=107,z=-312,dx=166,dy=15,dz=170,type=cobblemon:pokemon] at @s run tp @s ~ 113 ~
execute unless entity @a[x=802,y=107,z=-312,dx=166,dy=15,dz=170] unless entity @a[x=862,y=107,z=-420,dx=140,dy=15,dz=144] run fill 913 108 -262 968 112 -182 minecraft:snow_block replace minecraft:air
execute unless entity @a[x=802,y=107,z=-312,dx=166,dy=15,dz=170] unless entity @a[x=862,y=107,z=-420,dx=140,dy=15,dz=144] run fill 828 108 -285 912 112 -229 minecraft:snow_block replace minecraft:air
execute unless entity @a[x=802,y=107,z=-312,dx=166,dy=15,dz=170] unless entity @a[x=862,y=107,z=-420,dx=140,dy=15,dz=144] run fill 828 108 -312 890 112 -286 minecraft:snow_block replace minecraft:air




#