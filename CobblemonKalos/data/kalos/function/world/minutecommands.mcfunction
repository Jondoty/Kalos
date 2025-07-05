#Deletes duplicate Pokemon/Trainers if player relogs near where something respawns
execute at @e[nbt={NoAI: 1b},type=cobblemon:pokemon] unless entity @e[type=cobblemon:pokemon,tag=keeper] run tag @e[distance=..0.01,limit=1] add keeper
execute at @e[type=cobblemon:npc] unless entity @e[type=cobblemon:npc,tag=keeper] run tag @e[distance=..0.01,limit=1] add keeper
execute at @e[type=cobblemon:pokemon,tag=keeper] run kill @e[nbt={NoAI: 1b},type=cobblemon:pokemon,distance=..0.01,tag=!keeper]
execute at @e[type=cobblemon:npc,tag=keeper] run tp @e[type=cobblemon:npc,distance=..0.01,tag=!keeper] 10000000 -50000 -10000000
tag @e[tag=keeper] remove keeper


#Runs Writ Activate commands if paper found in Battle Chateau
tag @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper"}]}] add WritCheck
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,tag=WritCheck] run function kalos:triggers/writactivate
tag @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] remove WritCheck


#Battle Chateau Minute Cooldowns
scoreboard players remove @e[x=-687,y=100,z=1384,dy=3,type=armor_stand,scores={ChateauCD=1..}] ChateauCD 1

#Runs Battle Chateau trainer changing function if Cooldown=0
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,limit=1] run execute at @e[x=-687,y=100,z=1384,dy=3,type=armor_stand,scores={ChateauCD=0}] run function kalos:triggers/battlechateau



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








#