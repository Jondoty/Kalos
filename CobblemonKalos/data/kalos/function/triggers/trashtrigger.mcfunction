#Add to Trash Can Electrode Statues
#/tedit add INTERACT /scoreboard players set @pl TrashTrigger 1


#execute as @e[x=-468,y=99,z=1063,dy=3,type=pixelmon:statue] run execute as @s[r=20,c=1] run data modify entity @e[limit=1,x=-468,y=99,z=1063,dy=3,type=armor_stand] {Motion:[0.0,0.5,0.0]}

#/scoreboard players set @pl TrashTrigger 1

#/execute as @e[x=-468,y=99,z=1063,distance=..3,type=armor_stand] run summon pixelmon:statue ~ ~ ~ {ndex:101s,Growth:4b,CustomTexture:"invisible",ForgeData:{SpongeData:{},trainercommands:{interact:["/scoreboard players set @pl TrashTrigger 1"]}}}

#data modify entity @e[limit=1,x=-468,y=99,z=1063,distance=..3,type=armor_stand] {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:2039327,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:50s}]}




#Makes trash cans jump
#execute as @e[nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":49},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {Motion:[0.0d,0.4d,0.0d]}



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


#General odds:
#40% - Common Pokemon
#10% - Rare Pokemon
#30% - Items
#20% - Nothing




#Playsound if item found
playsound minecraft:itemget ambient @s[scores={rng=65..100}] ~ ~ ~ 100 1 1



#-------------------------------------------------------------------------------Test Trash Can----------------------------------------------------------------------------------------------


execute at @s[x=-468,y=99,z=1063,distance=..10] run kill @e[distance=..5,type=minecraft:interaction,tag=TrashCan]
execute at @s[x=-468,y=99,z=1063,distance=..10] run data merge entity @e[limit=1,x=-468,y=99,z=1063,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":50},count:1,id:"minecraft:iron_hoe"}]}
execute as @s[x=-468,y=99,z=1063,distance=..10] run playsound minecraft:entity.arrow.shoot ambient @s ~ ~ ~ 1 1 1

#Tuesday Loot
execute as @s[x=-468,y=99,z=1063,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=65..70}] run function kalos:spawn/escaperope
execute as @s[x=-468,y=99,z=1063,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=71..75}] run give @s cobblemon:hyper_potion
execute as @s[x=-468,y=99,z=1063,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=76..80}] run scoreboard players add @s Money 5000
execute as @s[x=-468,y=99,z=1063,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=81..85}] run give @s cobblemon:hp_up
execute as @s[x=-468,y=99,z=1063,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=86..90}] run give @s cobblemon:iron
execute as @s[x=-468,y=99,z=1063,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=91..95}] run give @s cobblemon:protein
execute as @s[x=-468,y=99,z=1063,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=96..100}] run scoreboard players add @s Money 10000

execute as @s[x=-468,y=99,z=1063,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=0..51}] run pokespawn rotom level=38
execute as @s[x=-468,y=99,z=1063,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=52..54}] run pokespawn rotom aspect=frost-appliance level=38
execute as @s[x=-468,y=99,z=1063,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=55..56}] run pokespawn rotom aspect=fan-appliance level=38
execute as @s[x=-468,y=99,z=1063,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=57..59}] run pokespawn rotom aspect=wash-appliance level=38
execute as @s[x=-468,y=99,z=1063,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=60..62}] run pokespawn rotom aspect=mow-appliance level=38
execute as @s[x=-468,y=99,z=1063,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=63..64}] run pokespawn rotom aspect=heat-appliance level=38

execute as @s[x=-468,y=99,z=1063,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @s run execute as @e[x=-468,y=99,z=1063,distance=..3,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s
execute as @s[x=-468,y=99,z=1063,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @s run setblock -479 100 1063 minecraft:gold_block


#Non-special day loot
execute as @s[x=-468,y=99,z=1063,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=65..70}] run give @s cobblemon:dusk_ball
execute as @s[x=-468,y=99,z=1063,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=71..75}] run function kalos:spawn/escaperope
execute as @s[x=-468,y=99,z=1063,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=76..80}] run give @s cobblemon:super_potion
execute as @s[x=-468,y=99,z=1063,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=81..85}] run give @s cobblemon:calcium
execute as @s[x=-468,y=99,z=1063,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=86..90}] run give @s cobblemon:carbos
execute as @s[x=-468,y=99,z=1063,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=91..95}] run give @s cobblemon:zinc
execute as @s[x=-468,y=99,z=1063,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=96..100}] run give @s cobblemon:max_elixir

execute as @s[x=-468,y=99,z=1063,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=0..51}] run pokespawn trubbish level=35
execute as @s[x=-468,y=99,z=1063,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=52..64}] run pokespawn garbodor level=37

execute as @s[x=-468,y=99,z=1063,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] at @e[x=-468,y=99,z=1063,distance=..3,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s








#-------------------------------------------------------------------------------Lost Hotel----------------------------------------------------------------------------------------------
##Lost Hotel Trash can No 1
#execute as @s[scores={TrashTrigger=7}] run tp @e[x=512,y=92,z=-463,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
#execute as @s[scores={TrashTrigger=7}] run data modify entity @e[limit=1,x=512,y=92,z=-463,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
#execute as @s[scores={TrashTrigger=7}] run playsound minecraft:entity.arrow.shoot ambient @s[scores={TrashTrigger=7}] ~ ~ ~ 1 1 1
#
##Tuesday Loot
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[scores={rng=65..70}] run function kalos:spawn/escaperope
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @s[scores={rng=71..75}] cobblemon:hyper_potion
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run scoreboard players add @s[scores={rng=76..80}] Money 5000
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @s[scores={rng=81..85}] cobblemon:hp_up
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @s[scores={rng=86..90}] cobblemon:iron
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @s[scores={rng=91..95}] cobblemon:protein
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run scoreboard players add @s[scores={rng=96..100}] Money 10000
#
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={rng=0..51}] rotom,f:0,lvl:38
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={rng=52..54}] rotom,f:1,lvl:38
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={rng=55..56}] rotom,f:2,lvl:38
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={rng=57..59}] rotom,f:3,lvl:38
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={rng=60..62}] rotom,f:4,lvl:38
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={rng=63..64}] rotom,f:5,lvl:38
#
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @s[scores={TrashTrigger=7}] run execute as @e[x=512,y=92,z=-463,distance=..3,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @s[scores={TrashTrigger=7}] run setblock -687 100 1278 minecraft:gold_block
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run scoreboard players set @s[scores={TrashTrigger=7}] TrashTrigger 0
#
#
##Non-special day loot
#give @s[scores={rng=65..70}] cobblemon:dusk_ball
#execute as @s[scores={rng=71..75}] run function kalos:spawn/escaperope
#give @s[scores={rng=76..80}] cobblemon:super_potion
#give @s[scores={rng=81..85}] cobblemon:calcium
#give @s[scores={rng=86..90}] cobblemon:carbos
#give @s[scores={rng=91..95}] cobblemon:zinc
#give @s[scores={rng=96..100}] cobblemon:max_elixir
#
#execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={rng=0..51}] trubbish level=35
#execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={rng=52..64}] garbodor level=37
#
#execute as @s[scores={TrashTrigger=7}] run execute as @e[x=512,y=92,z=-463,distance=..3,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s
#execute as @s[scores={TrashTrigger=7}] run setblock -687 100 1278 minecraft:gold_block
#scoreboard players set @s[scores={TrashTrigger=7}] TrashTrigger 0
#
#
#
#
#
##Lost Hotel Trash can No 2
#execute as @s run tp @e[x=446,y=92,z=-486,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
#execute as @s run data modify entity @e[limit=1,x=446,y=92,z=-486,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
#execute as @s run playsound minecraft:entity.arrow.shoot ambient @s ~ ~ ~ 1 1 1
#
##Tuesday Loot
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[scores={,rng=65..70}] run function kalos:spawn/escaperope
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @s[scores={,rng=71..75}] cobblemon:hyper_potion
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @s[scores={,rng=76..80}] pixelmon:nugget
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @s[scores={,rng=81..85}] cobblemon:hp_up
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @s[scores={,rng=86..90}] cobblemon:iron
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @s[scores={,rng=91..95}] cobblemon:protein
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @s[scores={,rng=96..100}] pixelmon:big_nugget
#
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=0..51}] rotom,f:0,lvl:38
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=52..54}] rotom,f:1,lvl:38
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=55..56}] rotom,f:2,lvl:38
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=57..59}] rotom,f:3,lvl:38
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=60..62}] rotom,f:4,lvl:38
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=63..64}] rotom,f:5,lvl:38
#
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @s run execute as @e[x=446,y=92,z=-486,distance=..3,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @s run setblock -687 100 1279 minecraft:gold_block
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run scoreboard players set @s TrashTrigger 0
#
#
##Non-special day loot
#give @s[scores={,rng=65..70}] cobblemon:dusk_ball
#give @s[scores={,rng=71..75}] run function kalos:spawn/escaperope
#give @s[scores={,rng=76..80}] cobblemon:super_potion
#give @s[scores={,rng=81..85}] cobblemon:calcium
#give @s[scores={,rng=86..90}] cobblemon:carbos
#give @s[scores={,rng=91..95}] cobblemon:zinc
#give @s[scores={,rng=96..100}] cobblemon:max_elixir
#
#execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=0..51}] trubbish level=35
#execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=52..64}] garbodor level=37
#
#execute as @s run execute as @e[x=446,y=92,z=-486,distance=..3,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s
#execute as @s run setblock -687 100 1279 minecraft:gold_block
#scoreboard players set @s TrashTrigger 0
#
#
#
#
#
#
##Lost Hotel Trash can No 4
#execute as @s run tp @e[x=413,y=92,z=-450,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
#execute as @s run data modify entity @e[limit=1,x=413,y=92,z=-450,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
#execute as @s run playsound minecraft:entity.arrow.shoot ambient @s ~ ~ ~ 1 1 1
#
##Tuesday Loot
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[scores={,rng=65..70}] run function kalos:spawn/escaperope
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @s[scores={,rng=71..75}] cobblemon:hyper_potion
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @s[scores={,rng=76..80}] pixelmon:nugget
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @s[scores={,rng=81..85}] cobblemon:hp_up
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @s[scores={,rng=86..90}] cobblemon:iron
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @s[scores={,rng=91..95}] cobblemon:protein
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @s[scores={,rng=96..100}] pixelmon:big_nugget
#
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=0..51}] rotom,f:0,lvl:38
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=52..54}] rotom,f:1,lvl:38
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=55..56}] rotom,f:2,lvl:38
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=57..59}] rotom,f:3,lvl:38
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=60..62}] rotom,f:4,lvl:38
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=63..64}] rotom,f:5,lvl:38
#
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @s run execute as @e[x=413,y=92,z=-450,distance=..3,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @s run setblock -687 100 1280 minecraft:gold_block
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run scoreboard players set @s TrashTrigger 0
#
#
##Non-special day loot
#give @s[scores={,rng=65..70}] cobblemon:dusk_ball
#give @s[scores={,rng=71..75}] run function kalos:spawn/escaperope
#give @s[scores={,rng=76..80}] cobblemon:super_potion
#give @s[scores={,rng=81..85}] cobblemon:calcium
#give @s[scores={,rng=86..90}] cobblemon:carbos
#give @s[scores={,rng=91..95}] cobblemon:zinc
#give @s[scores={,rng=96..100}] cobblemon:max_elixir
#
#execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=0..51}] trubbish level=35
#execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=52..64}] garbodor level=37
#
#execute as @s run execute as @e[x=413,y=92,z=-450,distance=..3,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s
#execute as @s run setblock -687 100 1280 minecraft:gold_block
#scoreboard players set @s TrashTrigger 0
#
#
#
#
#
#
##Lost Hotel Trash can No 4
#execute as @s run tp @e[x=497,y=92,z=-413,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
#execute as @s run data modify entity @e[limit=1,x=497,y=92,z=-413,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
#execute as @s run playsound minecraft:entity.arrow.shoot ambient @s ~ ~ ~ 1 1 1
#
##Tuesday Loot
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[scores={,rng=65..70}] run function kalos:spawn/escaperope
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @s[scores={,rng=71..75}] cobblemon:hyper_potion
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @s[scores={,rng=76..80}] pixelmon:nugget
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @s[scores={,rng=81..85}] cobblemon:hp_up
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @s[scores={,rng=86..90}] cobblemon:iron
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @s[scores={,rng=91..95}] cobblemon:protein
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @s[scores={,rng=96..100}] pixelmon:big_nugget
#
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=0..51}] rotom,f:0,lvl:38
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=52..54}] rotom,f:1,lvl:38
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=55..56}] rotom,f:2,lvl:38
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=57..59}] rotom,f:3,lvl:38
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=60..62}] rotom,f:4,lvl:38
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=63..64}] rotom,f:5,lvl:38
#
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @s run execute as @e[x=497,y=92,z=-413,distance=..3,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @s run setblock -687 100 1281 minecraft:gold_block
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run scoreboard players set @s TrashTrigger 0
#
#
##Non-special day loot
#give @s[scores={,rng=65..70}] cobblemon:dusk_ball
#give @s[scores={,rng=71..75}] run function kalos:spawn/escaperope
#give @s[scores={,rng=76..80}] cobblemon:super_potion
#give @s[scores={,rng=81..85}] cobblemon:calcium
#give @s[scores={,rng=86..90}] cobblemon:carbos
#give @s[scores={,rng=91..95}] cobblemon:zinc
#give @s[scores={,rng=96..100}] cobblemon:max_elixir
#
#execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=0..51}] trubbish level=35
#execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=52..64}] garbodor level=37
#
#execute as @s run execute as @e[x=497,y=92,z=-413,distance=..3,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s
#execute as @s run setblock -687 100 1281 minecraft:gold_block
#scoreboard players set @s TrashTrigger 0
#
#
#
#
#
#
##Lost Hotel Trash can No 5
#execute as @s run tp @e[x=416,y=92,z=-377,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
#execute as @s run data modify entity @e[limit=1,x=416,y=92,z=-377,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
#execute as @s run playsound minecraft:entity.arrow.shoot ambient @s ~ ~ ~ 1 1 1
#
##Tuesday Loot
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[scores={,rng=65..70}] run function kalos:spawn/escaperope
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @s[scores={,rng=71..75}] cobblemon:hyper_potion
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @s[scores={,rng=76..80}] pixelmon:nugget
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @s[scores={,rng=81..85}] cobblemon:hp_up
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @s[scores={,rng=86..90}] cobblemon:iron
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @s[scores={,rng=91..95}] cobblemon:protein
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @s[scores={,rng=96..100}] pixelmon:big_nugget
#
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=0..51}] rotom,f:0,lvl:38
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=52..54}] rotom,f:1,lvl:38
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=55..56}] rotom,f:2,lvl:38
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=57..59}] rotom,f:3,lvl:38
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=60..62}] rotom,f:4,lvl:38
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=63..64}] rotom,f:5,lvl:38
#
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @s run execute as @e[x=416,y=92,z=-377,distance=..3,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @s run setblock -687 100 1282 minecraft:gold_block
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run scoreboard players set @s TrashTrigger 0
#
#
##Non-special day loot
#give @s[scores={,rng=65..70}] cobblemon:dusk_ball
#give @s[scores={,rng=71..75}] run function kalos:spawn/escaperope
#give @s[scores={,rng=76..80}] cobblemon:super_potion
#give @s[scores={,rng=81..85}] cobblemon:calcium
#give @s[scores={,rng=86..90}] cobblemon:carbos
#give @s[scores={,rng=91..95}] cobblemon:zinc
#give @s[scores={,rng=96..100}] cobblemon:max_elixir
#
#execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=0..51}] trubbish level=35
#execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={,rng=52..64}] garbodor level=37
#
#execute as @s run execute as @e[x=416,y=92,z=-377,distance=..3,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s
#execute as @s run setblock -687 100 1282 minecraft:gold_block
#scoreboard players set @s TrashTrigger 0
#
#
#
#
#
#
#
##-------------------------------------------------------------------------------Pokemon Village----------------------------------------------------------------------------------------------
##Pokemon Village Trash Can No 1
#execute as @s[scores={TrashTrigger=2}] run tp @e[x=794,y=93,z=641,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
#execute as @s[scores={TrashTrigger=2}] run data modify entity @e[limit=1,x=794,y=93,z=641,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
#execute as @s[scores={TrashTrigger=2}] run playsound minecraft:entity.arrow.shoot ambient @s[scores={TrashTrigger=2}] ~ ~ ~ 1 1 1
#
##Tuesday Loot
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @s[scores={rng=65..70}] pixelmon:big_mushroom
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[scores={rng=71..75}] run function kalos:spawn/honey
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @s[scores={rng=76..80}] pixelmon:prism_scale
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @s[scores={rng=81..85}] pixelmon:balm_mushroom
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @s[scores={rng=86..90}] pixelmon:heal_powder
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @s[scores={rng=91..95}] pixelmon:revival_herb
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @s[scores={rng=96..100}] pixelmon:eviolite
#
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={rng=0..64}] banette,lvl:50
#
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @s[scores={TrashTrigger=2}] run execute as @e[x=794,y=93,z=641,distance=..3,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @s[scores={TrashTrigger=2}] run setblock -687 100 1273 minecraft:gold_block
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run scoreboard players set @s[scores={TrashTrigger=2}] TrashTrigger 0
#
#
##Non-special day loot
#give @s[scores={rng=65..70}] minecraft:lingering_potion{display:{Lore:["A tool used to attract","hoards of Pokemon."]},HideFlags:32}
#give @s[scores={rng=71..75}] pixelmon:pretty_wing
#give @s[scores={rng=76..80}] pixelmon:tiny_mushroom
#give @s[scores={rng=81..85}] pixelmon:big_mushroom
#give @s[scores={rng=86..90}] pixelmon:max_revive
#give @s[scores={rng=91..95}] pixelmon:revival_herb
#give @s[scores={rng=96..100}] pixelmon:mental_herb
#
#execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={rng=0..64}] garbodor level=50
#
#execute as @s[scores={TrashTrigger=2}] run execute as @e[x=794,y=93,z=641,distance=..3,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s
#execute as @s[scores={TrashTrigger=2}] run setblock -687 100 1273 minecraft:gold_block
#scoreboard players set @s[scores={TrashTrigger=2}] TrashTrigger 0
#
#
#
#
##Pokemon Village Trash Can No 2
#execute as @s[scores={TrashTrigger=3}] run tp @e[x=824,y=93,z=697,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
#execute as @s[scores={TrashTrigger=3}] run data modify entity @e[limit=1,x=824,y=93,z=697,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
#execute as @s[scores={TrashTrigger=3}] run playsound minecraft:entity.arrow.shoot ambient @s[scores={TrashTrigger=3}] ~ ~ ~ 1 1 1
#
##Tuesday Loot
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @s[scores={rng=65..70}] pixelmon:big_mushroom
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[scores={rng=71..75}] run function kalos:spawn/honey
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @s[scores={rng=76..80}] pixelmon:prism_scale
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @s[scores={rng=81..85}] pixelmon:balm_mushroom
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @s[scores={rng=86..90}] pixelmon:heal_powder
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @s[scores={rng=91..95}] pixelmon:revival_herb
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @s[scores={rng=96..100}] pixelmon:eviolite
#
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={rng=0..64}] banette,lvl:50
#
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @s[scores={TrashTrigger=3}] run execute as @e[x=824,y=93,z=697,distance=..3,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @s[scores={TrashTrigger=3}] run setblock -687 100 1274 minecraft:gold_block
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run scoreboard players set @s[scores={TrashTrigger=3}] TrashTrigger 0
#
#
##Non-special day loot
#give @s[scores={rng=65..70}] minecraft:lingering_potion{display:{Lore:["A tool used to attract","hoards of Pokemon."]},HideFlags:32}
#give @s[scores={rng=71..75}] pixelmon:pretty_wing
#give @s[scores={rng=76..80}] pixelmon:tiny_mushroom
#give @s[scores={rng=81..85}] pixelmon:big_mushroom
#give @s[scores={rng=86..90}] pixelmon:max_revive
#give @s[scores={rng=91..95}] pixelmon:revival_herb
#give @s[scores={rng=96..100}] pixelmon:mental_herb
#
#execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={rng=0..64}] garbodor level=50
#
#execute as @s[scores={TrashTrigger=3}] run execute as @e[x=824,y=93,z=697,distance=..3,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s
#execute as @s[scores={TrashTrigger=3}] run setblock -687 100 1274 minecraft:gold_block
#scoreboard players set @s[scores={TrashTrigger=3}] TrashTrigger 0
#
#
#
#
##Pokemon Village Trash Can No 3
#execute as @s[scores={TrashTrigger=4}] run tp @e[x=800,y=93,z=737,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
#execute as @s[scores={TrashTrigger=4}] run data modify entity @e[limit=1,x=800,y=93,z=737,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
#execute as @s[scores={TrashTrigger=4}] run playsound minecraft:entity.arrow.shoot ambient @s[scores={TrashTrigger=4}] ~ ~ ~ 1 1 1
#
##Tuesday Loot
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @s[scores={rng=65..70}] pixelmon:big_mushroom
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[scores={rng=71..75}] run function kalos:spawn/honey
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @s[scores={rng=76..80}] pixelmon:prism_scale
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @s[scores={rng=81..85}] pixelmon:balm_mushroom
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @s[scores={rng=86..90}] pixelmon:heal_powder
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @s[scores={rng=91..95}] pixelmon:revival_herb
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @s[scores={rng=96..100}] pixelmon:eviolite
#
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={rng=0..64}] banette,lvl:50
#
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @s[scores={TrashTrigger=4}] run execute as @e[x=800,y=93,z=737,distance=..3,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @s[scores={TrashTrigger=4}] run setblock -687 100 1275 minecraft:gold_block
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run scoreboard players set @s[scores={TrashTrigger=4}] TrashTrigger 0
#
#
##Non-special day loot
#give @s[scores={rng=65..70}] minecraft:lingering_potion{display:{Lore:["A tool used to attract","hoards of Pokemon."]},HideFlags:32}
#give @s[scores={rng=71..75}] pixelmon:pretty_wing
#give @s[scores={rng=76..80}] pixelmon:tiny_mushroom
#give @s[scores={rng=81..85}] pixelmon:big_mushroom
#give @s[scores={rng=86..90}] pixelmon:max_revive
#give @s[scores={rng=91..95}] pixelmon:revival_herb
#give @s[scores={rng=96..100}] pixelmon:mental_herb
#
#execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={rng=0..64}] garbodor level=50
#
#execute as @s[scores={TrashTrigger=4}] run execute as @e[x=800,y=93,z=737,distance=..3,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s
#execute as @s[scores={TrashTrigger=4}] run setblock -687 100 1275 minecraft:gold_block
#scoreboard players set @s[scores={TrashTrigger=4}] TrashTrigger 0
#
#
#
#
#
##Pokemon Village Trash Can No 4
#execute as @s[scores={TrashTrigger=5}] run tp @e[x=830,y=93,z=744,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
#execute as @s[scores={TrashTrigger=5}] run data modify entity @e[limit=1,x=830,y=93,z=744,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
#execute as @s[scores={TrashTrigger=5}] run playsound minecraft:entity.arrow.shoot ambient @s[scores={TrashTrigger=5}] ~ ~ ~ 1 1 1
#
##Tuesday Loot
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @s[scores={rng=65..70}] pixelmon:big_mushroom
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[scores={rng=71..75}] run function kalos:spawn/honey
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @s[scores={rng=76..80}] pixelmon:prism_scale
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @s[scores={rng=81..85}] pixelmon:balm_mushroom
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @s[scores={rng=86..90}] pixelmon:heal_powder
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @s[scores={rng=91..95}] pixelmon:revival_herb
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @s[scores={rng=96..100}] pixelmon:eviolite
#
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={rng=0..64}] banette,lvl:50
#
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @s[scores={TrashTrigger=5}] run execute as @e[x=830,y=93,z=744,distance=..3,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @s[scores={TrashTrigger=5}] run setblock -687 100 1276 minecraft:gold_block
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run scoreboard players set @s[scores={TrashTrigger=5}] TrashTrigger 0
#
#
##Non-special day loot
#execute as @s[scores={rng=65..70}] run function kalos:spawn/honey
#give @s[scores={rng=71..75}] pixelmon:pretty_wing
#give @s[scores={rng=76..80}] pixelmon:tiny_mushroom
#give @s[scores={rng=81..85}] pixelmon:big_mushroom
#give @s[scores={rng=86..90}] pixelmon:max_revive
#give @s[scores={rng=91..95}] pixelmon:revival_herb
#give @s[scores={rng=96..100}] pixelmon:mental_herb
#
#execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={rng=0..64}] garbodor level=50
#
#execute as @s[scores={TrashTrigger=5}] run execute as @e[x=830,y=93,z=744,distance=..3,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s
#execute as @s[scores={TrashTrigger=5}] run setblock -687 100 1276 minecraft:gold_block
#scoreboard players set @s[scores={TrashTrigger=5}] TrashTrigger 0
#
#
#
#
#
#
#
##Pokemon Village Trash Can No 5
#execute as @s[scores={TrashTrigger=6}] run tp @e[x=849,y=93,z=741,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
#execute as @s[scores={TrashTrigger=6}] run data modify entity @e[limit=1,x=849,y=93,z=741,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
#execute as @s[scores={TrashTrigger=6}] run playsound minecraft:entity.arrow.shoot ambient @s[scores={TrashTrigger=6}] ~ ~ ~ 1 1 1
#
##Tuesday Loot
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @s[scores={rng=65..70}] pixelmon:big_mushroom
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[scores={rng=71..75}] run function kalos:spawn/honey
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @s[scores={rng=76..80}] pixelmon:prism_scale
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @s[scores={rng=81..85}] pixelmon:balm_mushroom
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @s[scores={rng=86..90}] pixelmon:heal_powder
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @s[scores={rng=91..95}] pixelmon:revival_herb
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @s[scores={rng=96..100}] pixelmon:eviolite
#
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={rng=0..64}] banette,lvl:50
#
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @s[scores={TrashTrigger=6}] run execute as @e[x=849,y=93,z=741,distance=..3,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @s[scores={TrashTrigger=6}] run setblock -687 100 1277 minecraft:gold_block
#execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run scoreboard players set @s[scores={TrashTrigger=6}] TrashTrigger 0
#
#
##Non-special day loot
#execute @s[scores={rng=65..70}] run function kalos:spawn/honey
#give @s[scores={rng=71..75}] pixelmon:pretty_wing
#give @s[scores={rng=76..80}] pixelmon:tiny_mushroom
#give @s[scores={rng=81..85}] pixelmon:big_mushroom
#give @s[scores={rng=86..90}] pixelmon:max_revive
#give @s[scores={rng=91..95}] pixelmon:revival_herb
#give @s[scores={rng=96..100}] pixelmon:mental_herb
#
#execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokespawn @s[scores={rng=0..64}] garbodor level=50
#
#execute as @s[scores={TrashTrigger=6}] run execute as @e[x=849,y=93,z=741,distance=..3,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s
#execute as @s[scores={TrashTrigger=6}] run setblock -687 100 1277 minecraft:gold_block
#scoreboard players set @s[scores={TrashTrigger=6}] TrashTrigger 0
#




advancement revoke @s only kalos:click/trashcans