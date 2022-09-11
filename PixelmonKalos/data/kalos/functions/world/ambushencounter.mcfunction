#Format
#Armor Stand: scoreboard players tag @e[type=armor_stand] add AmbushEncounter
#{Invulnerable:1b,DisabledSlots:2039327,Pose:{},Invisible:1b,Tags:["AmbushEncounter"],ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:51s}],NoBasePlate:1b}

#Reset commands for spawn
#summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,DisabledSlots:2039327,Pose:{},Invisible:1b,Tags:["AmbushEncounter"],ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:51s}],NoBasePlate:1b}

#Bushes
#summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,DisabledSlots:2039327,Pose:{},Invisible:1b,Tags:["AmbushEncounter","Bush"],NoBasePlate:1b}

#Bush Particles
#execute at @e[x=1393,y=109,z=-98,r=2,type=armor_stand] ~ ~ ~ /execute at @e[x=-685,y=100,z=1388,dy=3,tag=Particles,type=armor_stand] 1393 109 -98 execute @a[r=30,c=1] ~ ~ ~ /particle fallingdust 1393 109 -98 2 2 2 1 1 normal @a 18 3




#Rolls rng score
scoreboard players set @e[x=-687,y=100,z=1376,dx=2,dy=4,type=armor_stand] rng 0
scoreboard players add @e[sort=random,limit=1,x=-687,y=100,z=1376,dx=2,dy=4] rng 1
scoreboard players add @e[sort=random,limit=1,x=-687,y=100,z=1376,dx=2,dy=4] rng 2
scoreboard players add @e[sort=random,limit=1,x=-687,y=100,z=1376,dx=2,dy=4] rng 4
scoreboard players add @e[sort=random,limit=1,x=-687,y=100,z=1376,dx=2,dy=4] rng 8
scoreboard players add @e[sort=random,limit=1,x=-687,y=100,z=1376,dx=2,dy=4] rng 16
scoreboard players add @e[sort=random,limit=1,x=-687,y=100,z=1376,dx=2,dy=4] rng 32
scoreboard players add @e[sort=random,limit=1,x=-687,y=100,z=1376,dx=2,dy=4] rng 64

scoreboard players operation @s rng = @e[x=-687,y=100,z=1376,dy=3,type=armor_stand] rng




#Kills all glittering cave ambush tags if needed
#kill @e[x=-1542,y=0,z=249,dx=174,dy=256,dz=310,type=armor_stand,tag=AmbushEncounter]

#Glittering Cave
execute at @e[x=-1440,y=148,z=485,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=-1440,y=148,z=485,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..106}] run pokebattle @s[distance=..2] Woobat,lvl:16
execute at @e[x=-1440,y=148,z=485,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=107..127}] run pokebattle @s[distance=..2] Ferroseed,lvl:16
execute at @e[x=-1440,y=148,z=485,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=-1440,y=148,z=485,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1273 minecraft:gold_block
execute at @e[x=-1440,y=148,z=485,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=-1440,y=148,z=485,distance=..3,type=armor_stand]

execute at @e[x=-1484,y=148,z=405,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=-1484,y=148,z=405,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..106}] run pokebattle @s[distance=..2] Woobat,lvl:16
execute at @e[x=-1484,y=148,z=405,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=107..127}] run pokebattle @s[distance=..2] Ferroseed,lvl:16
execute at @e[x=-1484,y=148,z=405,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=-1484,y=148,z=405,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1274 minecraft:gold_block
execute at @e[x=-1484,y=148,z=405,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=-1484,y=148,z=405,distance=..3,type=armor_stand]

execute at @e[x=-1505,y=148,z=468,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=-1505,y=148,z=468,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..106}] run pokebattle @s[distance=..2] Woobat,lvl:16
execute at @e[x=-1505,y=148,z=468,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=107..127}] run pokebattle @s[distance=..2] Ferroseed,lvl:16
execute at @e[x=-1505,y=148,z=468,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=-1505,y=148,z=468,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1275 minecraft:gold_block
execute at @e[x=-1505,y=148,z=468,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=-1505,y=148,z=468,distance=..3,type=armor_stand]

execute at @e[x=-1437,y=148,z=400,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=-1437,y=148,z=400,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..106}] run pokebattle @s[distance=..2] Woobat,lvl:16
execute at @e[x=-1437,y=148,z=400,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=107..127}] run pokebattle @s[distance=..2] Ferroseed,lvl:16
execute at @e[x=-1437,y=148,z=400,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=-1437,y=148,z=400,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1276 minecraft:gold_block
execute at @e[x=-1437,y=148,z=400,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=-1437,y=148,z=400,distance=..3,type=armor_stand]

execute at @e[x=-1473,y=148,z=478,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=-1473,y=148,z=478,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..106}] run pokebattle @s[distance=..2] Woobat,lvl:16
execute at @e[x=-1473,y=148,z=478,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=107..127}] run pokebattle @s[distance=..2] Ferroseed,lvl:16
execute at @e[x=-1473,y=148,z=478,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=-1473,y=148,z=478,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1277 minecraft:gold_block
execute at @e[x=-1473,y=148,z=478,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=-1473,y=148,z=478,distance=..3,type=armor_stand]





#Reflection Cave
execute at @e[x=-1754,y=69,z=-362,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=-1754,y=69,z=-362,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..101}] run pokebattle @s[distance=..2] Woobat,lvl:22
execute at @e[x=-1754,y=69,z=-362,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=102..127}] run pokebattle @s[distance=..2] Ferroseed,lvl:22
execute at @e[x=-1754,y=69,z=-362,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=-1754,y=69,z=-362,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1279 minecraft:gold_block
execute at @e[x=-1754,y=69,z=-362,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=-1754,y=69,z=-362,distance=..3,type=armor_stand]

execute at @e[x=-1732,y=64,z=-278,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=-1732,y=64,z=-278,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..101}] run pokebattle @s[distance=..2] Woobat,lvl:22
execute at @e[x=-1732,y=64,z=-278,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=102..127}] run pokebattle @s[distance=..2] Ferroseed,lvl:22
execute at @e[x=-1732,y=64,z=-278,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=-1732,y=64,z=-278,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1280 minecraft:gold_block
execute at @e[x=-1732,y=64,z=-278,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=-1732,y=64,z=-278,distance=..3,type=armor_stand]

execute at @e[x=-1673,y=74,z=-321,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=-1673,y=74,z=-321,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..101}] run pokebattle @s[distance=..2] Woobat,lvl:22
execute at @e[x=-1673,y=74,z=-321,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=102..127}] run pokebattle @s[distance=..2] Ferroseed,lvl:22
execute at @e[x=-1673,y=74,z=-321,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=-1673,y=74,z=-321,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1281 minecraft:gold_block
execute at @e[x=-1673,y=74,z=-321,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=-1673,y=74,z=-321,distance=..3,type=armor_stand]

execute at @e[x=-1585,y=35,z=-266,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=-1585,y=35,z=-266,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..101}] run pokebattle @s[distance=..2] Woobat,lvl:22
execute at @e[x=-1585,y=35,z=-266,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=102..127}] run pokebattle @s[distance=..2] Ferroseed,lvl:22
execute at @e[x=-1585,y=35,z=-266,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=-1585,y=35,z=-266,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1282 minecraft:gold_block
execute at @e[x=-1585,y=35,z=-266,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=-1585,y=35,z=-266,distance=..3,type=armor_stand]

execute at @e[x=-1488,y=35,z=-293,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=-1488,y=35,z=-293,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..101}] run pokebattle @s[distance=..2] Woobat,lvl:22
execute at @e[x=-1488,y=35,z=-293,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=102..127}] run pokebattle @s[distance=..2] Ferroseed,lvl:22
execute at @e[x=-1488,y=35,z=-293,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=-1488,y=35,z=-293,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1283 minecraft:gold_block
execute at @e[x=-1488,y=35,z=-293,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=-1488,y=35,z=-293,distance=..3,type=armor_stand]




#Terminus Cave

#Kills all glittering cave ambush tags if needed
#kill @e[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,type=armor_stand,tag=AmbushEncounter]

execute at @e[x=2066,y=38,z=-80,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=2066,y=38,z=-80,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..101}] run pokebattle @s[distance=..2] Ariados,lvl:45
execute at @e[x=2066,y=38,z=-80,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=102..127}] run pokebattle @s[distance=..2] Noibat,lvl:45
execute at @e[x=2066,y=38,z=-80,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=2066,y=38,z=-80,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1285 minecraft:gold_block
execute at @e[x=2066,y=38,z=-80,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=2066,y=38,z=-80,distance=..3,type=armor_stand]

execute at @e[x=1971,y=10,z=-37,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1971,y=10,z=-37,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..101}] run pokebattle @s[distance=..2] Ariados,lvl:45
execute at @e[x=1971,y=10,z=-37,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=102..127}] run pokebattle @s[distance=..2] Noibat,lvl:45
execute at @e[x=1971,y=10,z=-37,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=1971,y=10,z=-37,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1286 minecraft:gold_block
execute at @e[x=1971,y=10,z=-37,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=1971,y=10,z=-37,distance=..3,type=armor_stand]

execute at @e[x=1993,y=10,z=-72,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1993,y=10,z=-72,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..101}] run pokebattle @s[distance=..2] Ariados,lvl:45
execute at @e[x=1993,y=10,z=-72,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=102..127}] run pokebattle @s[distance=..2] Noibat,lvl:45
execute at @e[x=1993,y=10,z=-72,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=1993,y=10,z=-72,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1287 minecraft:gold_block
execute at @e[x=1993,y=10,z=-72,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=1993,y=10,z=-72,distance=..3,type=armor_stand]

execute at @e[x=1987,y=10,z=-128,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1987,y=10,z=-128,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..101}] run pokebattle @s[distance=..2] Ariados,lvl:45
execute at @e[x=1987,y=10,z=-128,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=102..127}] run pokebattle @s[distance=..2] Noibat,lvl:45
execute at @e[x=1987,y=10,z=-128,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=1987,y=10,z=-128,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1288 minecraft:gold_block
execute at @e[x=1987,y=10,z=-128,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=1987,y=10,z=-128,distance=..3,type=armor_stand]

execute at @e[x=1933,y=10,z=-101,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1933,y=10,z=-101,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..101}] run pokebattle @s[distance=..2] Ariados,lvl:45
execute at @e[x=1933,y=10,z=-101,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=102..127}] run pokebattle @s[distance=..2] Noibat,lvl:45
execute at @e[x=1933,y=10,z=-101,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=1933,y=10,z=-101,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1289 minecraft:gold_block
execute at @e[x=1933,y=10,z=-101,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=1933,y=10,z=-101,distance=..3,type=armor_stand]

execute at @e[x=1871,y=10,z=-131,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1871,y=10,z=-131,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..101}] run pokebattle @s[distance=..2] Ariados,lvl:45
execute at @e[x=1871,y=10,z=-131,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=102..127}] run pokebattle @s[distance=..2] Noibat,lvl:45
execute at @e[x=1871,y=10,z=-131,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=1871,y=10,z=-131,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1290 minecraft:gold_block
execute at @e[x=1871,y=10,z=-131,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=1871,y=10,z=-131,distance=..3,type=armor_stand]

execute at @e[x=1894,y=38,z=-55,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1894,y=38,z=-55,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..101}] run pokebattle @s[distance=..2] Ariados,lvl:45
execute at @e[x=1894,y=38,z=-55,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=102..127}] run pokebattle @s[distance=..2] Noibat,lvl:45
execute at @e[x=1894,y=38,z=-55,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=1894,y=38,z=-55,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1291 minecraft:gold_block
execute at @e[x=1894,y=38,z=-55,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=1894,y=38,z=-55,distance=..3,type=armor_stand]

execute at @e[x=1880,y=38,z=3,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1880,y=38,z=3,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..101}] run pokebattle @s[distance=..2] Ariados,lvl:45
execute at @e[x=1880,y=38,z=3,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=102..127}] run pokebattle @s[distance=..2] Noibat,lvl:45
execute at @e[x=1880,y=38,z=3,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=1880,y=38,z=3,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1292 minecraft:gold_block
execute at @e[x=1880,y=38,z=3,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=1880,y=38,z=3,distance=..3,type=armor_stand]

execute at @e[x=1874,y=38,z=47,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1874,y=38,z=47,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..101}] run pokebattle @s[distance=..2] Ariados,lvl:45
execute at @e[x=1874,y=38,z=47,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=102..127}] run pokebattle @s[distance=..2] Noibat,lvl:45
execute at @e[x=1874,y=38,z=47,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=1874,y=38,z=47,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1293 minecraft:gold_block
execute at @e[x=1874,y=38,z=47,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=1874,y=38,z=47,distance=..3,type=armor_stand]

execute at @e[x=1806,y=38,z=31,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1806,y=38,z=31,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..101}] run pokebattle @s[distance=..2] Ariados,lvl:45
execute at @e[x=1806,y=38,z=31,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=102..127}] run pokebattle @s[distance=..2] Noibat,lvl:45
execute at @e[x=1806,y=38,z=31,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=1806,y=38,z=31,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1294 minecraft:gold_block
execute at @e[x=1806,y=38,z=31,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=1806,y=38,z=31,distance=..3,type=armor_stand]

execute at @e[x=1843,y=48,z=-9,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1843,y=48,z=-9,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..101}] run pokebattle @s[distance=..2] Ariados,lvl:45
execute at @e[x=1843,y=48,z=-9,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=102..127}] run pokebattle @s[distance=..2] Noibat,lvl:45
execute at @e[x=1843,y=48,z=-9,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=1843,y=48,z=-9,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1295 minecraft:gold_block
execute at @e[x=1843,y=48,z=-9,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=1843,y=48,z=-9,distance=..3,type=armor_stand]

execute at @e[x=1847,y=38,z=-86,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1847,y=38,z=-86,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..101}] run pokebattle @s[distance=..2] Ariados,lvl:45
execute at @e[x=1847,y=38,z=-86,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=102..127}] run pokebattle @s[distance=..2] Noibat,lvl:45
execute at @e[x=1847,y=38,z=-86,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=1847,y=38,z=-86,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1296 minecraft:gold_block
execute at @e[x=1847,y=38,z=-86,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=1847,y=38,z=-86,distance=..3,type=armor_stand]



#Kills all VR Ambushes
#kill @e[x=1500,y=0,z=1203,dx=982,dy=256,dz=1417,type=armor_stand,tag=AmbushEncounter]
#kill @e[x=1524,y=68,z=6,dx=177,dy=19,dz=100,type=armor_stand,tag=AmbushEncounter]


#Victory Road
execute at @e[x=1984,y=92,z=1477,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1984,y=92,z=1477,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..57}] run pokebattle @s[distance=..2] Fearow,lvl:58
execute at @e[x=1984,y=92,z=1477,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=58..99}] run pokebattle @s[distance=..2] Skarmory,lvl:58
execute at @e[x=1984,y=92,z=1477,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=100..127}] run pokebattle @s[distance=..2] Hydreigon,lvl:59
execute at @e[x=1984,y=92,z=1477,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=1984,y=92,z=1477,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1298 minecraft:gold_block
execute at @e[x=1984,y=92,z=1477,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=1984,y=92,z=1477,distance=..3,type=armor_stand]

execute at @e[x=1878,y=102,z=1537,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1878,y=102,z=1537,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..57}] run pokebattle @s[distance=..2] Fearow,lvl:58
execute at @e[x=1878,y=102,z=1537,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=58..99}] run pokebattle @s[distance=..2] Skarmory,lvl:58
execute at @e[x=1878,y=102,z=1537,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=100..127}] run pokebattle @s[distance=..2] Hydreigon,lvl:59
execute at @e[x=1878,y=102,z=1537,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=1878,y=102,z=1537,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1299 minecraft:gold_block
execute at @e[x=1878,y=102,z=1537,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=1878,y=102,z=1537,distance=..3,type=armor_stand]

execute at @e[x=1853,y=92,z=1483,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1853,y=92,z=1483,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..57}] run pokebattle @s[distance=..2] Fearow,lvl:58
execute at @e[x=1853,y=92,z=1483,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=58..99}] run pokebattle @s[distance=..2] Skarmory,lvl:58
execute at @e[x=1853,y=92,z=1483,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=100..127}] run pokebattle @s[distance=..2] Hydreigon,lvl:59
execute at @e[x=1853,y=92,z=1483,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=1853,y=92,z=1483,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1300 minecraft:gold_block
execute at @e[x=1853,y=92,z=1483,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=1853,y=92,z=1483,distance=..3,type=armor_stand]

execute at @e[x=1826,y=82,z=1424,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1826,y=82,z=1424,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..57}] run pokebattle @s[distance=..2] Fearow,lvl:58
execute at @e[x=1826,y=82,z=1424,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=58..99}] run pokebattle @s[distance=..2] Skarmory,lvl:58
execute at @e[x=1826,y=82,z=1424,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=100..127}] run pokebattle @s[distance=..2] Hydreigon,lvl:59
execute at @e[x=1826,y=82,z=1424,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=1826,y=82,z=1424,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1301 minecraft:gold_block
execute at @e[x=1826,y=82,z=1424,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=1826,y=82,z=1424,distance=..3,type=armor_stand]

execute at @e[x=1854,y=82,z=1379,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1854,y=82,z=1379,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..57}] run pokebattle @s[distance=..2] Fearow,lvl:58
execute at @e[x=1854,y=82,z=1379,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=58..99}] run pokebattle @s[distance=..2] Skarmory,lvl:58
execute at @e[x=1854,y=82,z=1379,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=100..127}] run pokebattle @s[distance=..2] Hydreigon,lvl:59
execute at @e[x=1854,y=82,z=1379,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=1854,y=82,z=1379,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1302 minecraft:gold_block
execute at @e[x=1854,y=82,z=1379,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=1854,y=82,z=1379,distance=..3,type=armor_stand]

execute at @e[x=1946,y=92,z=1381,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1946,y=92,z=1381,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..57}] run pokebattle @s[distance=..2] Fearow,lvl:58
execute at @e[x=1946,y=92,z=1381,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=58..99}] run pokebattle @s[distance=..2] Skarmory,lvl:58
execute at @e[x=1946,y=92,z=1381,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=100..127}] run pokebattle @s[distance=..2] Hydreigon,lvl:59
execute at @e[x=1946,y=92,z=1381,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=1946,y=92,z=1381,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1303 minecraft:gold_block
execute at @e[x=1946,y=92,z=1381,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=1946,y=92,z=1381,distance=..3,type=armor_stand]

execute at @e[x=2193,y=76,z=1544,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=2193,y=76,z=1544,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..57}] run pokebattle @s[distance=..2] Fearow,lvl:58
execute at @e[x=2193,y=76,z=1544,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=58..99}] run pokebattle @s[distance=..2] Skarmory,lvl:58
execute at @e[x=2193,y=76,z=1544,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=100..127}] run pokebattle @s[distance=..2] Hydreigon,lvl:59
execute at @e[x=2193,y=76,z=1544,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=2193,y=76,z=1544,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1304 minecraft:gold_block
execute at @e[x=2193,y=76,z=1544,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=2193,y=76,z=1544,distance=..3,type=armor_stand]

execute at @e[x=2305,y=76,z=1508,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=2305,y=76,z=1508,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..57}] run pokebattle @s[distance=..2] Fearow,lvl:58
execute at @e[x=2305,y=76,z=1508,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=58..99}] run pokebattle @s[distance=..2] Skarmory,lvl:58
execute at @e[x=2305,y=76,z=1508,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=100..127}] run pokebattle @s[distance=..2] Hydreigon,lvl:59
execute at @e[x=2305,y=76,z=1508,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=2305,y=76,z=1508,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1305 minecraft:gold_block
execute at @e[x=2305,y=76,z=1508,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=2305,y=76,z=1508,distance=..3,type=armor_stand]

execute at @e[x=2215,y=76,z=1449,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=2215,y=76,z=1449,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..57}] run pokebattle @s[distance=..2] Fearow,lvl:58
execute at @e[x=2215,y=76,z=1449,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=58..99}] run pokebattle @s[distance=..2] Skarmory,lvl:58
execute at @e[x=2215,y=76,z=1449,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=100..127}] run pokebattle @s[distance=..2] Hydreigon,lvl:59
execute at @e[x=2215,y=76,z=1449,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=2215,y=76,z=1449,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1306 minecraft:gold_block
execute at @e[x=2215,y=76,z=1449,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=2215,y=76,z=1449,distance=..3,type=armor_stand]

execute at @e[x=2190,y=91,z=1391,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=2190,y=91,z=1391,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..57}] run pokebattle @s[distance=..2] Fearow,lvl:58
execute at @e[x=2190,y=91,z=1391,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=58..99}] run pokebattle @s[distance=..2] Skarmory,lvl:58
execute at @e[x=2190,y=91,z=1391,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=100..127}] run pokebattle @s[distance=..2] Hydreigon,lvl:59
execute at @e[x=2190,y=91,z=1391,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=2190,y=91,z=1391,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1307 minecraft:gold_block
execute at @e[x=2190,y=91,z=1391,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=2190,y=91,z=1391,distance=..3,type=armor_stand]

execute at @e[x=2274,y=81,z=1402,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=2274,y=81,z=1402,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..57}] run pokebattle @s[distance=..2] Fearow,lvl:58
execute at @e[x=2274,y=81,z=1402,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=58..99}] run pokebattle @s[distance=..2] Skarmory,lvl:58
execute at @e[x=2274,y=81,z=1402,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=100..127}] run pokebattle @s[distance=..2] Hydreigon,lvl:59
execute at @e[x=2274,y=81,z=1402,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=2274,y=81,z=1402,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1308 minecraft:gold_block
execute at @e[x=2274,y=81,z=1402,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=2274,y=81,z=1402,distance=..3,type=armor_stand]

execute at @e[x=2287,y=106,z=1329,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=2287,y=106,z=1329,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..57}] run pokebattle @s[distance=..2] Fearow,lvl:58
execute at @e[x=2287,y=106,z=1329,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=58..99}] run pokebattle @s[distance=..2] Skarmory,lvl:58
execute at @e[x=2287,y=106,z=1329,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=100..127}] run pokebattle @s[distance=..2] Hydreigon,lvl:59
execute at @e[x=2287,y=106,z=1329,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=2287,y=106,z=1329,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1309 minecraft:gold_block
execute at @e[x=2287,y=106,z=1329,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=2287,y=106,z=1329,distance=..3,type=armor_stand]

execute at @e[x=2421,y=60,z=1570,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=2421,y=60,z=1570,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..57}] run pokebattle @s[distance=..2] Fearow,lvl:58
execute at @e[x=2421,y=60,z=1570,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=58..99}] run pokebattle @s[distance=..2] Skarmory,lvl:58
execute at @e[x=2421,y=60,z=1570,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=100..127}] run pokebattle @s[distance=..2] Hydreigon,lvl:59
execute at @e[x=2421,y=60,z=1570,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=2421,y=60,z=1570,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1310 minecraft:gold_block
execute at @e[x=2421,y=60,z=1570,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=2421,y=60,z=1570,distance=..3,type=armor_stand]

execute at @e[x=2376,y=55,z=1606,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=2376,y=55,z=1606,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..57}] run pokebattle @s[distance=..2] Fearow,lvl:58
execute at @e[x=2376,y=55,z=1606,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=58..99}] run pokebattle @s[distance=..2] Skarmory,lvl:58
execute at @e[x=2376,y=55,z=1606,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=100..127}] run pokebattle @s[distance=..2] Hydreigon,lvl:59
execute at @e[x=2376,y=55,z=1606,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=2376,y=55,z=1606,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1311 minecraft:gold_block
execute at @e[x=2376,y=55,z=1606,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=2376,y=55,z=1606,distance=..3,type=armor_stand]

execute at @e[x=2337,y=60,z=1666,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=2337,y=60,z=1666,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=0..57}] run pokebattle @s[distance=..2] Fearow,lvl:58
execute at @e[x=2337,y=60,z=1666,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=58..99}] run pokebattle @s[distance=..2] Skarmory,lvl:58
execute at @e[x=2337,y=60,z=1666,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1,scores={rng=100..127}] run pokebattle @s[distance=..2] Hydreigon,lvl:59
execute at @e[x=2337,y=60,z=1666,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=2337,y=60,z=1666,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run setblock -672 100 1312 minecraft:gold_block
execute at @e[x=2337,y=60,z=1666,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..2,limit=1] run kill @e[x=2337,y=60,z=1666,distance=..3,type=armor_stand]






#Route 6 Bush Encounters
execute at @e[x=-1259,y=101,z=-281,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1] run tellraw @a[distance=..6] {"text":"A Pokemon jumped out from the bush!","italic":true,"color":"gray"}
execute at @e[x=-1259,y=101,z=-281,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1,scores={rng=0..101}] run pokebattle @s[distance=..2] Venipede,lvl:11
execute at @e[x=-1259,y=101,z=-281,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1,scores={rng=102..127}] run pokebattle @s[distance=..2] Audino,lvl:11
execute at @e[x=-1259,y=101,z=-281,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=-1259,y=101,z=-281,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1] run setblock -672 100 1314 minecraft:gold_block
execute at @e[x=-1259,y=101,z=-281,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1] run kill @e[x=-1259,y=101,z=-281,distance=..3,type=armor_stand]

execute at @e[x=-1235,y=101,z=-222,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1] run tellraw @a[distance=..6] {"text":"A Pokemon jumped out from the bush!","italic":true,"color":"gray"}
execute at @e[x=-1235,y=101,z=-222,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1,scores={rng=0..101}] run pokebattle @s[distance=..2] Venipede,lvl:11
execute at @e[x=-1235,y=101,z=-222,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1,scores={rng=102..127}] run pokebattle @s[distance=..2] Audino,lvl:11
execute at @e[x=-1235,y=101,z=-222,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=-1235,y=101,z=-222,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1] run setblock -672 100 1315 minecraft:gold_block
execute at @e[x=-1235,y=101,z=-222,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1] run kill @e[x=-1235,y=101,z=-222,distance=..3,type=armor_stand]

execute at @e[x=-1258,y=101,z=-173,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1] run tellraw @a[distance=..6] {"text":"A Pokemon jumped out from the bush!","italic":true,"color":"gray"}
execute at @e[x=-1258,y=101,z=-173,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1,scores={rng=0..101}] run pokebattle @s[distance=..2] Venipede,lvl:11
execute at @e[x=-1258,y=101,z=-173,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1,scores={rng=102..127}] run pokebattle @s[distance=..2] Audino,lvl:11
execute at @e[x=-1258,y=101,z=-173,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=-1258,y=101,z=-173,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1] run setblock -672 100 1316 minecraft:gold_block
execute at @e[x=-1258,y=101,z=-173,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1] run kill @e[x=-1258,y=101,z=-173,distance=..3,type=armor_stand]






#Route 18 Bush Encounters
execute at @e[x=1337,y=109,z=-50,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1] run tellraw @a[distance=..6] {"text":"A Pokemon jumped out from the bush!","italic":true,"color":"gray"}
execute at @e[x=1337,y=109,z=-50,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1,scores={rng=0..101}] run pokebattle @s[distance=..2] Durant,lvl:45
execute at @e[x=1337,y=109,z=-50,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1,scores={rng=102..127}] run pokebattle @s[distance=..2] Heatmor,lvl:45
execute at @e[x=1337,y=109,z=-50,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=1337,y=109,z=-50,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1] run setblock -672 100 1318 minecraft:gold_block
execute at @e[x=1337,y=109,z=-50,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1] run kill @e[x=1337,y=109,z=-50,distance=..3,type=armor_stand]

execute at @e[x=1388,y=110,z=-51,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1] run tellraw @a[distance=..6] {"text":"A Pokemon jumped out from the bush!","italic":true,"color":"gray"}
execute at @e[x=1388,y=110,z=-51,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1,scores={rng=0..101}] run pokebattle @s[distance=..2] Durant,lvl:45
execute at @e[x=1388,y=110,z=-51,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1,scores={rng=102..127}] run pokebattle @s[distance=..2] Heatmor,lvl:45
execute at @e[x=1388,y=110,z=-51,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=1388,y=110,z=-51,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1] run setblock -672 100 1319 minecraft:gold_block
execute at @e[x=1388,y=110,z=-51,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1] run kill @e[x=1388,y=110,z=-51,distance=..3,type=armor_stand]

execute at @e[x=1393,y=109,z=-98,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1] run tellraw @a[distance=..6] {"text":"A Pokemon jumped out from the bush!","italic":true,"color":"gray"}
execute at @e[x=1393,y=109,z=-98,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1,scores={rng=0..101}] run pokebattle @s[distance=..2] Durant,lvl:45
execute at @e[x=1393,y=109,z=-98,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1,scores={rng=102..127}] run pokebattle @s[distance=..2] Heatmor,lvl:45
execute at @e[x=1393,y=109,z=-98,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1] run playsound entity.arrow.shoot ambient @a[distance=..2] ~ ~ ~ 10 1 1
execute at @e[x=1393,y=109,z=-98,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1] run setblock -672 100 1320 minecraft:gold_block
execute at @e[x=1393,y=109,z=-98,distance=..3,type=armor_stand,limit=1] run execute as @a[distance=..6,limit=1] run kill @e[x=1393,y=109,z=-98,distance=..3,type=armor_stand]
