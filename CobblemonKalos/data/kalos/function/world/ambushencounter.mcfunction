

#Reset commands for spawn
#summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Invulnerable:true,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":51}}],Tags:[AmbushEncounter]}

#Changes to empty armor stand when tripped
#data merge entity @n[type=minecraft:armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

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

#If player is within range of an armor stand with shadow model NBT, runs a spawn on the players within two block radius of the shadow, then turns the data into an invisible but still present 0.
#Shadows get reset daily when the chunks are loaded.

#Glittering Cave
execute at @e[x=-1440,y=148,z=485,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=-1440,y=148,z=485,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=0..106}] run pokespawn woobat level=16
execute at @e[x=-1440,y=148,z=485,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=107..127}] run pokespawn ferroseed level=16
execute at @e[x=-1440,y=148,z=485,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=-1440,y=148,z=485,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=-1440,y=148,z=485,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=-1484,y=148,z=405,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=-1484,y=148,z=405,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=0..106}] run pokespawn woobat level=16
execute at @e[x=-1484,y=148,z=405,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=107..127}] run pokespawn ferroseed level=16
execute at @e[x=-1484,y=148,z=405,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=-1484,y=148,z=405,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=-1484,y=148,z=405,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=-1505,y=148,z=468,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=-1505,y=148,z=468,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=0..106}] run pokespawn woobat level=16
execute at @e[x=-1505,y=148,z=468,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=107..127}] run pokespawn ferroseed level=16
execute at @e[x=-1505,y=148,z=468,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=-1505,y=148,z=468,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=-1505,y=148,z=468,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=-1437,y=148,z=400,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=-1437,y=148,z=400,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=0..106}] run pokespawn woobat level=16
execute at @e[x=-1437,y=148,z=400,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=107..127}] run pokespawn ferroseed level=16
execute at @e[x=-1437,y=148,z=400,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=-1437,y=148,z=400,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=-1437,y=148,z=400,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=-1473,y=148,z=478,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=-1473,y=148,z=478,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=0..106}] run pokespawn woobat level=16
execute at @e[x=-1473,y=148,z=478,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=107..127}] run pokespawn ferroseed level=16
execute at @e[x=-1473,y=148,z=478,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=-1473,y=148,z=478,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=-1473,y=148,z=478,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}





#Reflection Cave
execute at @e[x=-1754,y=69,z=-362,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=-1754,y=69,z=-362,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=0..101}] run pokespawn woobat level=22
execute at @e[x=-1754,y=69,z=-362,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=102..127}] run pokespawn ferroseed level=22
execute at @e[x=-1754,y=69,z=-362,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=-1754,y=69,z=-362,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=-1754,y=69,z=-362,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=-1732,y=64,z=-278,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=-1732,y=64,z=-278,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=0..101}] run pokespawn woobat level=22
execute at @e[x=-1732,y=64,z=-278,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=102..127}] run pokespawn ferroseed level=22
execute at @e[x=-1732,y=64,z=-278,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=-1732,y=64,z=-278,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=-1732,y=64,z=-278,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=-1673,y=74,z=-321,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=-1673,y=74,z=-321,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=0..101}] run pokespawn woobat level=22
execute at @e[x=-1673,y=74,z=-321,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=102..127}] run pokespawn ferroseed level=22
execute at @e[x=-1673,y=74,z=-321,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=-1673,y=74,z=-321,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=-1673,y=74,z=-321,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=-1585,y=35,z=-266,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=-1585,y=35,z=-266,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=0..101}] run pokespawn woobat level=22
execute at @e[x=-1585,y=35,z=-266,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=102..127}] run pokespawn ferroseed level=22
execute at @e[x=-1585,y=35,z=-266,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=-1585,y=35,z=-266,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=-1585,y=35,z=-266,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=-1488,y=35,z=-293,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=-1488,y=35,z=-293,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=0..101}] run pokespawn woobat level=22
execute at @e[x=-1488,y=35,z=-293,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=102..127}] run pokespawn ferroseed level=22
execute at @e[x=-1488,y=35,z=-293,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=-1488,y=35,z=-293,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=-1488,y=35,z=-293,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}




#Terminus Cave

#Kills all glittering cave ambush tags if needed
#kill @e[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,type=armor_stand,tag=AmbushEncounter]

execute at @e[x=2066,y=38,z=-80,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=2066,y=38,z=-80,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=0..101}] run pokespawn ariados level=45
execute at @e[x=2066,y=38,z=-80,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=102..127}] run pokespawn noibat level=45
execute at @e[x=2066,y=38,z=-80,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=2066,y=38,z=-80,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=2066,y=38,z=-80,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=1971,y=10,z=-37,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1971,y=10,z=-37,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=0..101}] run pokespawn ariados level=45
execute at @e[x=1971,y=10,z=-37,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=102..127}] run pokespawn noibat level=45
execute at @e[x=1971,y=10,z=-37,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=1971,y=10,z=-37,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=1971,y=10,z=-37,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=1993,y=10,z=-72,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1993,y=10,z=-72,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=0..101}] run pokespawn ariados level=45
execute at @e[x=1993,y=10,z=-72,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=102..127}] run pokespawn noibat level=45
execute at @e[x=1993,y=10,z=-72,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=1993,y=10,z=-72,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=1993,y=10,z=-72,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=1987,y=10,z=-128,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1987,y=10,z=-128,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=0..101}] run pokespawn ariados level=45
execute at @e[x=1987,y=10,z=-128,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=102..127}] run pokespawn noibat level=45
execute at @e[x=1987,y=10,z=-128,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=1987,y=10,z=-128,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=1987,y=10,z=-128,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=1933,y=10,z=-101,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1933,y=10,z=-101,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=0..101}] run pokespawn ariados level=45
execute at @e[x=1933,y=10,z=-101,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=102..127}] run pokespawn noibat level=45
execute at @e[x=1933,y=10,z=-101,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=1933,y=10,z=-101,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=1933,y=10,z=-101,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=1871,y=10,z=-131,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1871,y=10,z=-131,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=0..101}] run pokespawn ariados level=45
execute at @e[x=1871,y=10,z=-131,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=102..127}] run pokespawn noibat level=45
execute at @e[x=1871,y=10,z=-131,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=1871,y=10,z=-131,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=1871,y=10,z=-131,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=1894,y=38,z=-55,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1894,y=38,z=-55,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=0..101}] run pokespawn ariados level=45
execute at @e[x=1894,y=38,z=-55,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=102..127}] run pokespawn noibat level=45
execute at @e[x=1894,y=38,z=-55,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=1894,y=38,z=-55,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=1894,y=38,z=-55,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=1880,y=38,z=3,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1880,y=38,z=3,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=0..101}] run pokespawn ariados level=45
execute at @e[x=1880,y=38,z=3,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=102..127}] run pokespawn noibat level=45
execute at @e[x=1880,y=38,z=3,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=1880,y=38,z=3,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=1880,y=38,z=3,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=1874,y=38,z=47,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1874,y=38,z=47,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=0..101}] run pokespawn ariados level=45
execute at @e[x=1874,y=38,z=47,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=102..127}] run pokespawn noibat level=45
execute at @e[x=1874,y=38,z=47,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=1874,y=38,z=47,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=1874,y=38,z=47,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=1806,y=38,z=31,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1806,y=38,z=31,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=0..101}] run pokespawn ariados level=45
execute at @e[x=1806,y=38,z=31,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=102..127}] run pokespawn noibat level=45
execute at @e[x=1806,y=38,z=31,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=1806,y=38,z=31,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=1806,y=38,z=31,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=1843,y=48,z=-9,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1843,y=48,z=-9,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=0..101}] run pokespawn ariados level=45
execute at @e[x=1843,y=48,z=-9,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=102..127}] run pokespawn noibat level=45
execute at @e[x=1843,y=48,z=-9,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=1843,y=48,z=-9,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=1843,y=48,z=-9,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=1847,y=38,z=-86,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1847,y=38,z=-86,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=0..101}] run pokespawn ariados level=45
execute at @e[x=1847,y=38,z=-86,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run execute as @a[distance=..2,scores={rng=102..127}] run pokespawn noibat level=45
execute at @e[x=1847,y=38,z=-86,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=1847,y=38,z=-86,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=1847,y=38,z=-86,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}



#Kills all VR Ambushes
#kill @e[x=1500,y=0,z=1203,dx=982,dy=256,dz=1417,type=armor_stand,tag=AmbushEncounter]
#kill @e[x=1524,y=68,z=6,dx=177,dy=19,dz=100,type=armor_stand,tag=AmbushEncounter]


#Victory Road
execute at @e[x=1984,y=92,z=1477,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1984,y=92,z=1477,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=0..57}] run pokespawn fearow level=58
execute at @e[x=1984,y=92,z=1477,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=58..99}] run pokespawn skarmory level=58
execute at @e[x=1984,y=92,z=1477,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=100..127}] run pokespawn hydreigon level=59
execute at @e[x=1984,y=92,z=1477,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=1984,y=92,z=1477,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=1984,y=92,z=1477,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=1878,y=102,z=1537,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1878,y=102,z=1537,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=0..57}] run pokespawn fearow level=58
execute at @e[x=1878,y=102,z=1537,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=58..99}] run pokespawn skarmory level=58
execute at @e[x=1878,y=102,z=1537,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=100..127}] run pokespawn hydreigon level=59
execute at @e[x=1878,y=102,z=1537,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=1878,y=102,z=1537,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=1878,y=102,z=1537,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=1853,y=92,z=1483,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1853,y=92,z=1483,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=0..57}] run pokespawn fearow level=58
execute at @e[x=1853,y=92,z=1483,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=58..99}] run pokespawn skarmory level=58
execute at @e[x=1853,y=92,z=1483,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=100..127}] run pokespawn hydreigon level=59
execute at @e[x=1853,y=92,z=1483,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=1853,y=92,z=1483,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=1853,y=92,z=1483,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=1826,y=82,z=1424,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1826,y=82,z=1424,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=0..57}] run pokespawn fearow level=58
execute at @e[x=1826,y=82,z=1424,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=58..99}] run pokespawn skarmory level=58
execute at @e[x=1826,y=82,z=1424,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=100..127}] run pokespawn hydreigon level=59
execute at @e[x=1826,y=82,z=1424,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=1826,y=82,z=1424,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=1826,y=82,z=1424,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=1854,y=82,z=1379,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1854,y=82,z=1379,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=0..57}] run pokespawn fearow level=58
execute at @e[x=1854,y=82,z=1379,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=58..99}] run pokespawn skarmory level=58
execute at @e[x=1854,y=82,z=1379,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=100..127}] run pokespawn hydreigon level=59
execute at @e[x=1854,y=82,z=1379,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=1854,y=82,z=1379,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=1854,y=82,z=1379,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=1946,y=92,z=1381,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=1946,y=92,z=1381,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=0..57}] run pokespawn fearow level=58
execute at @e[x=1946,y=92,z=1381,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=58..99}] run pokespawn skarmory level=58
execute at @e[x=1946,y=92,z=1381,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=100..127}] run pokespawn hydreigon level=59
execute at @e[x=1946,y=92,z=1381,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=1946,y=92,z=1381,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=1946,y=92,z=1381,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=2193,y=76,z=1544,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=2193,y=76,z=1544,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=0..57}] run pokespawn fearow level=58
execute at @e[x=2193,y=76,z=1544,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=58..99}] run pokespawn skarmory level=58
execute at @e[x=2193,y=76,z=1544,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=100..127}] run pokespawn hydreigon level=59
execute at @e[x=2193,y=76,z=1544,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=2193,y=76,z=1544,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=2193,y=76,z=1544,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=2305,y=76,z=1508,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=2305,y=76,z=1508,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=0..57}] run pokespawn fearow level=58
execute at @e[x=2305,y=76,z=1508,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=58..99}] run pokespawn skarmory level=58
execute at @e[x=2305,y=76,z=1508,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=100..127}] run pokespawn hydreigon level=59
execute at @e[x=2305,y=76,z=1508,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=2305,y=76,z=1508,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=2305,y=76,z=1508,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=2215,y=76,z=1449,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=2215,y=76,z=1449,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=0..57}] run pokespawn fearow level=58
execute at @e[x=2215,y=76,z=1449,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=58..99}] run pokespawn skarmory level=58
execute at @e[x=2215,y=76,z=1449,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=100..127}] run pokespawn hydreigon level=59
execute at @e[x=2215,y=76,z=1449,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=2215,y=76,z=1449,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=2215,y=76,z=1449,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=2190,y=91,z=1391,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=2190,y=91,z=1391,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=0..57}] run pokespawn fearow level=58
execute at @e[x=2190,y=91,z=1391,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=58..99}] run pokespawn skarmory level=58
execute at @e[x=2190,y=91,z=1391,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=100..127}] run pokespawn hydreigon level=59
execute at @e[x=2190,y=91,z=1391,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=2190,y=91,z=1391,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=2190,y=91,z=1391,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=2274,y=81,z=1402,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=2274,y=81,z=1402,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=0..57}] run pokespawn fearow level=58
execute at @e[x=2274,y=81,z=1402,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=58..99}] run pokespawn skarmory level=58
execute at @e[x=2274,y=81,z=1402,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=100..127}] run pokespawn hydreigon level=59
execute at @e[x=2274,y=81,z=1402,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=2274,y=81,z=1402,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=2274,y=81,z=1402,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=2287,y=106,z=1329,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=2287,y=106,z=1329,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=0..57}] run pokespawn fearow level=58
execute at @e[x=2287,y=106,z=1329,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=58..99}] run pokespawn skarmory level=58
execute at @e[x=2287,y=106,z=1329,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=100..127}] run pokespawn hydreigon level=59
execute at @e[x=2287,y=106,z=1329,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=2287,y=106,z=1329,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=2287,y=106,z=1329,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=2421,y=60,z=1570,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=2421,y=60,z=1570,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=0..57}] run pokespawn fearow level=58
execute at @e[x=2421,y=60,z=1570,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=58..99}] run pokespawn skarmory level=58
execute at @e[x=2421,y=60,z=1570,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=100..127}] run pokespawn hydreigon level=59
execute at @e[x=2421,y=60,z=1570,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=2421,y=60,z=1570,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=2421,y=60,z=1570,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=2376,y=55,z=1606,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=2376,y=55,z=1606,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=0..57}] run pokespawn fearow level=58
execute at @e[x=2376,y=55,z=1606,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=58..99}] run pokespawn skarmory level=58
execute at @e[x=2376,y=55,z=1606,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=100..127}] run pokespawn hydreigon level=59
execute at @e[x=2376,y=55,z=1606,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=2376,y=55,z=1606,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=2376,y=55,z=1606,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}

execute at @e[x=2337,y=60,z=1666,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run tellraw @a[distance=..2] {"text":"A Pokemon flew down from the ceiling!","italic":true,"color":"gray"}
execute at @e[x=2337,y=60,z=1666,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=0..57}] run pokespawn fearow level=58
execute at @e[x=2337,y=60,z=1666,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=58..99}] run pokespawn skarmory level=58
execute at @e[x=2337,y=60,z=1666,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2,scores={rng=100..127}] run pokespawn hydreigon level=59
execute at @e[x=2337,y=60,z=1666,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=2337,y=60,z=1666,distance=..3,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":51},count:1,id:"minecraft:iron_hoe"}]}] as @a[distance=..2] run data merge entity @n[x=2337,y=60,z=1666,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":0}}]}






#Route 6 Bush Encounters
execute at @e[x=-1259,y=101,z=-281,distance=..3,type=armor_stand,tag=Active] as @a[distance=..6,limit=1] run tellraw @a[distance=..6] {"text":"A Pokemon jumped out from the bush!","italic":true,"color":"gray"}
execute at @e[x=-1259,y=101,z=-281,distance=..3,type=armor_stand,tag=Active] as @a[distance=..6,limit=1,scores={rng=0..101}] at @s run pokespawn venipede level=11
execute at @e[x=-1259,y=101,z=-281,distance=..3,type=armor_stand,tag=Active] as @a[distance=..6,limit=1,scores={rng=102..127}] at @s run pokespawn audino level=11
execute at @e[x=-1259,y=101,z=-281,distance=..3,type=armor_stand,tag=Active] as @a[distance=..6,limit=1] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=-1259,y=101,z=-281,distance=..3,type=armor_stand,tag=Active] as @a[distance=..6,limit=1] run tag @n[x=-1259,y=101,z=-281,distance=..3,type=armor_stand] remove Active

execute at @e[x=-1235,y=101,z=-222,distance=..3,type=armor_stand,tag=Active] as @a[distance=..6,limit=1] run tellraw @a[distance=..6] {"text":"A Pokemon jumped out from the bush!","italic":true,"color":"gray"}
execute at @e[x=-1235,y=101,z=-222,distance=..3,type=armor_stand,tag=Active] as @a[distance=..6,limit=1,scores={rng=0..101}] at @s run pokespawn venipede level=11
execute at @e[x=-1235,y=101,z=-222,distance=..3,type=armor_stand,tag=Active] as @a[distance=..6,limit=1,scores={rng=102..127}] at @s run pokespawn audino level=11
execute at @e[x=-1235,y=101,z=-222,distance=..3,type=armor_stand,tag=Active] as @a[distance=..6,limit=1] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=-1235,y=101,z=-222,distance=..3,type=armor_stand,tag=Active] as @a[distance=..6,limit=1] run tag @n[x=-1235,y=101,z=-222,distance=..3,type=armor_stand] remove Active

execute at @e[x=-1258,y=101,z=-173,distance=..3,type=armor_stand,tag=Active] as @a[distance=..6,limit=1] run tellraw @a[distance=..6] {"text":"A Pokemon jumped out from the bush!","italic":true,"color":"gray"}
execute at @e[x=-1258,y=101,z=-173,distance=..3,type=armor_stand,tag=Active] as @a[distance=..6,limit=1,scores={rng=0..101}] at @s run pokespawn venipede level=11
execute at @e[x=-1258,y=101,z=-173,distance=..3,type=armor_stand,tag=Active] as @a[distance=..6,limit=1,scores={rng=102..127}] at @s run pokespawn audino level=11
execute at @e[x=-1258,y=101,z=-173,distance=..3,type=armor_stand,tag=Active] as @a[distance=..6,limit=1] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=-1258,y=101,z=-173,distance=..3,type=armor_stand,tag=Active] as @a[distance=..6,limit=1] run tag @n[x=-1258,y=101,z=-173,distance=..3,type=armor_stand] remove Active






#Route 18 Bush Encounters
execute at @e[x=1337,y=109,z=-50,distance=..3,type=armor_stand,tag=Active] as @a[distance=..6,limit=1] run tellraw @a[distance=..6] {"text":"A Pokemon jumped out from the bush!","italic":true,"color":"gray"}
execute at @e[x=1337,y=109,z=-50,distance=..3,type=armor_stand,tag=Active] as @a[distance=..6,limit=1,scores={rng=0..101}] at @s run pokespawn durant level=45
execute at @e[x=1337,y=109,z=-50,distance=..3,type=armor_stand,tag=Active] as @a[distance=..6,limit=1,scores={rng=102..127}] at @s run pokespawn heatmor level=45
execute at @e[x=1337,y=109,z=-50,distance=..3,type=armor_stand,tag=Active] as @a[distance=..6,limit=1] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=1337,y=109,z=-50,distance=..3,type=armor_stand,tag=Active] as @a[distance=..6,limit=1] run tag @n[x=1337,y=109,z=-50,distance=..3,type=armor_stand] remove Active

execute at @e[x=1388,y=110,z=-51,distance=..3,type=armor_stand,tag=Active] as @a[distance=..6,limit=1] run tellraw @a[distance=..6] {"text":"A Pokemon jumped out from the bush!","italic":true,"color":"gray"}
execute at @e[x=1388,y=110,z=-51,distance=..3,type=armor_stand,tag=Active] as @a[distance=..6,limit=1,scores={rng=0..101}] at @s run pokespawn durant level=45
execute at @e[x=1388,y=110,z=-51,distance=..3,type=armor_stand,tag=Active] as @a[distance=..6,limit=1,scores={rng=102..127}] at @s run pokespawn heatmor level=45
execute at @e[x=1388,y=110,z=-51,distance=..3,type=armor_stand,tag=Active] as @a[distance=..6,limit=1] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=1388,y=110,z=-51,distance=..3,type=armor_stand,tag=Active] as @a[distance=..6,limit=1] run tag @n[x=1388,y=110,z=-51,distance=..3,type=armor_stand] remove Active

execute at @e[x=1393,y=109,z=-98,distance=..3,type=armor_stand,tag=Active] as @a[distance=..6,limit=1] run tellraw @a[distance=..6] {"text":"A Pokemon jumped out from the bush!","italic":true,"color":"gray"}
execute at @e[x=1393,y=109,z=-98,distance=..3,type=armor_stand,tag=Active] as @a[distance=..6,limit=1,scores={rng=0..101}] at @s run pokespawn durant level=45
execute at @e[x=1393,y=109,z=-98,distance=..3,type=armor_stand,tag=Active] as @a[distance=..6,limit=1,scores={rng=102..127}] at @s run pokespawn heatmor level=45
execute at @e[x=1393,y=109,z=-98,distance=..3,type=armor_stand,tag=Active] as @a[distance=..6,limit=1] run playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
execute at @e[x=1393,y=109,z=-98,distance=..3,type=armor_stand,tag=Active] as @a[distance=..6,limit=1] run tag @n[x=1393,y=109,z=-98,distance=..3,type=armor_stand] remove Active
