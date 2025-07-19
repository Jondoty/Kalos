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
execute at @s[x=-468,y=99,z=1063,distance=..10] run data merge entity @e[limit=1,distance=..5,type=armor_stand,tag=TrashCan] {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":50},count:1,id:"minecraft:iron_hoe"}]}
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

execute as @s[x=-468,y=99,z=1063,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @s run execute as @e[distance=..5,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s


#Normal Day
execute as @s[x=-468,y=99,z=1063,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=65..70}] run give @s cobblemon:dusk_ball
execute as @s[x=-468,y=99,z=1063,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=71..75}] run function kalos:spawn/escaperope
execute as @s[x=-468,y=99,z=1063,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=76..80}] run give @s cobblemon:super_potion
execute as @s[x=-468,y=99,z=1063,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=81..85}] run give @s cobblemon:calcium
execute as @s[x=-468,y=99,z=1063,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=86..90}] run give @s cobblemon:carbos
execute as @s[x=-468,y=99,z=1063,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=91..95}] run give @s cobblemon:zinc
execute as @s[x=-468,y=99,z=1063,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=96..100}] run give @s cobblemon:max_elixir

execute as @s[x=-468,y=99,z=1063,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=0..51}] run pokespawn trubbish level=35
execute as @s[x=-468,y=99,z=1063,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=52..64}] run pokespawn garbodor level=37

execute as @s[x=-468,y=99,z=1063,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] at @e[distance=..5,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s








#-------------------------------------------------------------------------------Lost Hotel----------------------------------------------------------------------------------------------
#Lost Hotel Trash can No 1
#512 92 -463

execute at @s[x=512,y=92,z=-463,distance=..10] run kill @e[distance=..5,type=minecraft:interaction,tag=TrashCan]
execute at @s[x=512,y=92,z=-463,distance=..10] run data merge entity @e[limit=1,distance=..5,type=armor_stand,tag=TrashCan] {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":50},count:1,id:"minecraft:iron_hoe"}]}
execute as @s[x=512,y=92,z=-463,distance=..10] run playsound minecraft:entity.arrow.shoot ambient @s ~ ~ ~ 1 1 1

#Tuesday Loot
execute as @s[x=512,y=92,z=-463,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=65..70}] run function kalos:spawn/escaperope
execute as @s[x=512,y=92,z=-463,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=71..75}] run give @s cobblemon:hyper_potion
execute as @s[x=512,y=92,z=-463,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=76..80}] run scoreboard players add @s Money 5000
execute as @s[x=512,y=92,z=-463,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=81..85}] run give @s cobblemon:hp_up
execute as @s[x=512,y=92,z=-463,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=86..90}] run give @s cobblemon:iron
execute as @s[x=512,y=92,z=-463,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=91..95}] run give @s cobblemon:protein
execute as @s[x=512,y=92,z=-463,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=96..100}] run scoreboard players add @s Money 10000

execute as @s[x=512,y=92,z=-463,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=0..51}] run pokespawn rotom level=38
execute as @s[x=512,y=92,z=-463,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=52..54}] run pokespawn rotom aspect=frost-appliance level=38
execute as @s[x=512,y=92,z=-463,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=55..56}] run pokespawn rotom aspect=fan-appliance level=38
execute as @s[x=512,y=92,z=-463,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=57..59}] run pokespawn rotom aspect=wash-appliance level=38
execute as @s[x=512,y=92,z=-463,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=60..62}] run pokespawn rotom aspect=mow-appliance level=38
execute as @s[x=512,y=92,z=-463,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=63..64}] run pokespawn rotom aspect=heat-appliance level=38

execute as @s[x=512,y=92,z=-463,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @s run execute as @e[distance=..5,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s


#Normal Day
execute as @s[x=512,y=92,z=-463,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=65..70}] run give @s cobblemon:dusk_ball
execute as @s[x=512,y=92,z=-463,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=71..75}] run function kalos:spawn/escaperope
execute as @s[x=512,y=92,z=-463,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=76..80}] run give @s cobblemon:super_potion
execute as @s[x=512,y=92,z=-463,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=81..85}] run give @s cobblemon:calcium
execute as @s[x=512,y=92,z=-463,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=86..90}] run give @s cobblemon:carbos
execute as @s[x=512,y=92,z=-463,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=91..95}] run give @s cobblemon:zinc
execute as @s[x=512,y=92,z=-463,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=96..100}] run give @s cobblemon:max_elixir

execute as @s[x=512,y=92,z=-463,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=0..51}] run pokespawn trubbish level=35
execute as @s[x=512,y=92,z=-463,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=52..64}] run pokespawn garbodor level=37

execute as @s[x=512,y=92,z=-463,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] at @e[distance=..5,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s




#Lost Hotel Trash can No 2
#446 92 -486

execute at @s[x=446,y=92,z=-486,distance=..10] run kill @e[distance=..5,type=minecraft:interaction,tag=TrashCan]
execute at @s[x=446,y=92,z=-486,distance=..10] run data merge entity @e[limit=1,distance=..5,type=armor_stand,tag=TrashCan] {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":50},count:1,id:"minecraft:iron_hoe"}]}
execute as @s[x=446,y=92,z=-486,distance=..10] run playsound minecraft:entity.arrow.shoot ambient @s ~ ~ ~ 1 1 1

#Tuesday Loot
execute as @s[x=446,y=92,z=-486,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=65..70}] run function kalos:spawn/escaperope
execute as @s[x=446,y=92,z=-486,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=71..75}] run give @s cobblemon:hyper_potion
execute as @s[x=446,y=92,z=-486,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=76..80}] run scoreboard players add @s Money 5000
execute as @s[x=446,y=92,z=-486,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=81..85}] run give @s cobblemon:hp_up
execute as @s[x=446,y=92,z=-486,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=86..90}] run give @s cobblemon:iron
execute as @s[x=446,y=92,z=-486,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=91..95}] run give @s cobblemon:protein
execute as @s[x=446,y=92,z=-486,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=96..100}] run scoreboard players add @s Money 10000

execute as @s[x=446,y=92,z=-486,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=0..51}] run pokespawn rotom level=38
execute as @s[x=446,y=92,z=-486,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=52..54}] run pokespawn rotom aspect=frost-appliance level=38
execute as @s[x=446,y=92,z=-486,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=55..56}] run pokespawn rotom aspect=fan-appliance level=38
execute as @s[x=446,y=92,z=-486,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=57..59}] run pokespawn rotom aspect=wash-appliance level=38
execute as @s[x=446,y=92,z=-486,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=60..62}] run pokespawn rotom aspect=mow-appliance level=38
execute as @s[x=446,y=92,z=-486,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=63..64}] run pokespawn rotom aspect=heat-appliance level=38

execute as @s[x=446,y=92,z=-486,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @s run execute as @e[distance=..5,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s


#Normal Day
execute as @s[x=446,y=92,z=-486,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=65..70}] run give @s cobblemon:dusk_ball
execute as @s[x=446,y=92,z=-486,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=71..75}] run function kalos:spawn/escaperope
execute as @s[x=446,y=92,z=-486,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=76..80}] run give @s cobblemon:super_potion
execute as @s[x=446,y=92,z=-486,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=81..85}] run give @s cobblemon:calcium
execute as @s[x=446,y=92,z=-486,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=86..90}] run give @s cobblemon:carbos
execute as @s[x=446,y=92,z=-486,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=91..95}] run give @s cobblemon:zinc
execute as @s[x=446,y=92,z=-486,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=96..100}] run give @s cobblemon:max_elixir

execute as @s[x=446,y=92,z=-486,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=0..51}] run pokespawn trubbish level=35
execute as @s[x=446,y=92,z=-486,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=52..64}] run pokespawn garbodor level=37

execute as @s[x=446,y=92,z=-486,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] at @e[distance=..5,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s


#Lost Hotel Trash can No 3
#413 92 -450

execute at @s[x=413,y=92,z=-450,distance=..10] run kill @e[distance=..5,type=minecraft:interaction,tag=TrashCan]
execute at @s[x=413,y=92,z=-450,distance=..10] run data merge entity @e[limit=1,distance=..5,type=armor_stand,tag=TrashCan] {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":50},count:1,id:"minecraft:iron_hoe"}]}
execute as @s[x=413,y=92,z=-450,distance=..10] run playsound minecraft:entity.arrow.shoot ambient @s ~ ~ ~ 1 1 1

#Tuesday Loot
execute as @s[x=413,y=92,z=-450,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=65..70}] run function kalos:spawn/escaperope
execute as @s[x=413,y=92,z=-450,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=71..75}] run give @s cobblemon:hyper_potion
execute as @s[x=413,y=92,z=-450,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=76..80}] run scoreboard players add @s Money 5000
execute as @s[x=413,y=92,z=-450,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=81..85}] run give @s cobblemon:hp_up
execute as @s[x=413,y=92,z=-450,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=86..90}] run give @s cobblemon:iron
execute as @s[x=413,y=92,z=-450,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=91..95}] run give @s cobblemon:protein
execute as @s[x=413,y=92,z=-450,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=96..100}] run scoreboard players add @s Money 10000

execute as @s[x=413,y=92,z=-450,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=0..51}] run pokespawn rotom level=38
execute as @s[x=413,y=92,z=-450,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=52..54}] run pokespawn rotom aspect=frost-appliance level=38
execute as @s[x=413,y=92,z=-450,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=55..56}] run pokespawn rotom aspect=fan-appliance level=38
execute as @s[x=413,y=92,z=-450,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=57..59}] run pokespawn rotom aspect=wash-appliance level=38
execute as @s[x=413,y=92,z=-450,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=60..62}] run pokespawn rotom aspect=mow-appliance level=38
execute as @s[x=413,y=92,z=-450,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=63..64}] run pokespawn rotom aspect=heat-appliance level=38

execute as @s[x=413,y=92,z=-450,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @s run execute as @e[distance=..5,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s


#Normal Day
execute as @s[x=413,y=92,z=-450,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=65..70}] run give @s cobblemon:dusk_ball
execute as @s[x=413,y=92,z=-450,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=71..75}] run function kalos:spawn/escaperope
execute as @s[x=413,y=92,z=-450,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=76..80}] run give @s cobblemon:super_potion
execute as @s[x=413,y=92,z=-450,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=81..85}] run give @s cobblemon:calcium
execute as @s[x=413,y=92,z=-450,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=86..90}] run give @s cobblemon:carbos
execute as @s[x=413,y=92,z=-450,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=91..95}] run give @s cobblemon:zinc
execute as @s[x=413,y=92,z=-450,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=96..100}] run give @s cobblemon:max_elixir

execute as @s[x=413,y=92,z=-450,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=0..51}] run pokespawn trubbish level=35
execute as @s[x=413,y=92,z=-450,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=52..64}] run pokespawn garbodor level=37

execute as @s[x=413,y=92,z=-450,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] at @e[distance=..5,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s




#Lost Hotel Trash can No 4
#497 92 -413

execute at @s[x=497,y=92,z=-413,distance=..10] run kill @e[distance=..5,type=minecraft:interaction,tag=TrashCan]
execute at @s[x=497,y=92,z=-413,distance=..10] run data merge entity @e[limit=1,distance=..5,type=armor_stand,tag=TrashCan] {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":50},count:1,id:"minecraft:iron_hoe"}]}
execute as @s[x=497,y=92,z=-413,distance=..10] run playsound minecraft:entity.arrow.shoot ambient @s ~ ~ ~ 1 1 1

#Tuesday Loot
execute as @s[x=497,y=92,z=-413,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=65..70}] run function kalos:spawn/escaperope
execute as @s[x=497,y=92,z=-413,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=71..75}] run give @s cobblemon:hyper_potion
execute as @s[x=497,y=92,z=-413,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=76..80}] run scoreboard players add @s Money 5000
execute as @s[x=497,y=92,z=-413,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=81..85}] run give @s cobblemon:hp_up
execute as @s[x=497,y=92,z=-413,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=86..90}] run give @s cobblemon:iron
execute as @s[x=497,y=92,z=-413,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=91..95}] run give @s cobblemon:protein
execute as @s[x=497,y=92,z=-413,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=96..100}] run scoreboard players add @s Money 10000

execute as @s[x=497,y=92,z=-413,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=0..51}] run pokespawn rotom level=38
execute as @s[x=497,y=92,z=-413,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=52..54}] run pokespawn rotom aspect=frost-appliance level=38
execute as @s[x=497,y=92,z=-413,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=55..56}] run pokespawn rotom aspect=fan-appliance level=38
execute as @s[x=497,y=92,z=-413,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=57..59}] run pokespawn rotom aspect=wash-appliance level=38
execute as @s[x=497,y=92,z=-413,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=60..62}] run pokespawn rotom aspect=mow-appliance level=38
execute as @s[x=497,y=92,z=-413,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=63..64}] run pokespawn rotom aspect=heat-appliance level=38

execute as @s[x=497,y=92,z=-413,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @s run execute as @e[distance=..5,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s


#Normal Day
execute as @s[x=497,y=92,z=-413,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=65..70}] run give @s cobblemon:dusk_ball
execute as @s[x=497,y=92,z=-413,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=71..75}] run function kalos:spawn/escaperope
execute as @s[x=497,y=92,z=-413,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=76..80}] run give @s cobblemon:super_potion
execute as @s[x=497,y=92,z=-413,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=81..85}] run give @s cobblemon:calcium
execute as @s[x=497,y=92,z=-413,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=86..90}] run give @s cobblemon:carbos
execute as @s[x=497,y=92,z=-413,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=91..95}] run give @s cobblemon:zinc
execute as @s[x=497,y=92,z=-413,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=96..100}] run give @s cobblemon:max_elixir

execute as @s[x=497,y=92,z=-413,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=0..51}] run pokespawn trubbish level=35
execute as @s[x=497,y=92,z=-413,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=52..64}] run pokespawn garbodor level=37

execute as @s[x=497,y=92,z=-413,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] at @e[distance=..5,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s




#Lost Hotel Trash can No 5
#416 92 -377

execute at @s[x=416,y=92,z=-377,distance=..10] run kill @e[distance=..5,type=minecraft:interaction,tag=TrashCan]
execute at @s[x=416,y=92,z=-377,distance=..10] run data merge entity @e[limit=1,distance=..5,type=armor_stand,tag=TrashCan] {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":50},count:1,id:"minecraft:iron_hoe"}]}
execute as @s[x=416,y=92,z=-377,distance=..10] run playsound minecraft:entity.arrow.shoot ambient @s ~ ~ ~ 1 1 1

#Tuesday Loot
execute as @s[x=416,y=92,z=-377,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=65..70}] run function kalos:spawn/escaperope
execute as @s[x=416,y=92,z=-377,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=71..75}] run give @s cobblemon:hyper_potion
execute as @s[x=416,y=92,z=-377,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=76..80}] run scoreboard players add @s Money 5000
execute as @s[x=416,y=92,z=-377,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=81..85}] run give @s cobblemon:hp_up
execute as @s[x=416,y=92,z=-377,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=86..90}] run give @s cobblemon:iron
execute as @s[x=416,y=92,z=-377,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=91..95}] run give @s cobblemon:protein
execute as @s[x=416,y=92,z=-377,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=96..100}] run scoreboard players add @s Money 10000

execute as @s[x=416,y=92,z=-377,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=0..51}] run pokespawn rotom level=38
execute as @s[x=416,y=92,z=-377,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=52..54}] run pokespawn rotom aspect=frost-appliance level=38
execute as @s[x=416,y=92,z=-377,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=55..56}] run pokespawn rotom aspect=fan-appliance level=38
execute as @s[x=416,y=92,z=-377,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=57..59}] run pokespawn rotom aspect=wash-appliance level=38
execute as @s[x=416,y=92,z=-377,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=60..62}] run pokespawn rotom aspect=mow-appliance level=38
execute as @s[x=416,y=92,z=-377,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=63..64}] run pokespawn rotom aspect=heat-appliance level=38

execute as @s[x=416,y=92,z=-377,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @s run execute as @e[distance=..5,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s


#Normal Day
execute as @s[x=416,y=92,z=-377,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=65..70}] run give @s cobblemon:dusk_ball
execute as @s[x=416,y=92,z=-377,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=71..75}] run function kalos:spawn/escaperope
execute as @s[x=416,y=92,z=-377,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=76..80}] run give @s cobblemon:super_potion
execute as @s[x=416,y=92,z=-377,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=81..85}] run give @s cobblemon:calcium
execute as @s[x=416,y=92,z=-377,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=86..90}] run give @s cobblemon:carbos
execute as @s[x=416,y=92,z=-377,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=91..95}] run give @s cobblemon:zinc
execute as @s[x=416,y=92,z=-377,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=96..100}] run give @s cobblemon:max_elixir

execute as @s[x=416,y=92,z=-377,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=0..51}] run pokespawn trubbish level=35
execute as @s[x=416,y=92,z=-377,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=52..64}] run pokespawn garbodor level=37

execute as @s[x=416,y=92,z=-377,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] at @e[distance=..5,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s





#-------------------------------------------------------------------------------Pokemon Village----------------------------------------------------------------------------------------------
#Pokemon Village Trash Can No 1
#794 93 641
execute at @s[x=794,y=93,z=641,distance=..10] run kill @e[distance=..5,type=minecraft:interaction,tag=TrashCan]
execute at @s[x=794,y=93,z=641,distance=..10] run data merge entity @e[limit=1,distance=..5,type=armor_stand,tag=TrashCan] {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":50},count:1,id:"minecraft:iron_hoe"}]}
execute as @s[x=794,y=93,z=641,distance=..10] run playsound minecraft:entity.arrow.shoot ambient @s ~ ~ ~ 1 1 1

#Tuesday Loot
execute as @s[x=794,y=93,z=641,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=65..70}] run scoreboard players add @s Money 2500
execute as @s[x=794,y=93,z=641,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=71..75}] run function kalos:spawn/honey
execute as @s[x=794,y=93,z=641,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=76..80}] run give @s cobblemon:prism_scale
execute as @s[x=794,y=93,z=641,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=81..85}] run scoreboard players add @s Money 6250
execute as @s[x=794,y=93,z=641,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=86..90}] run give @s cobblemon:heal_powder
execute as @s[x=794,y=93,z=641,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=91..95}] run give @s cobblemon:revival_herb
execute as @s[x=794,y=93,z=641,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=96..100}] run give @s cobblemon:eviolite

execute as @s[x=794,y=93,z=641,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=0..64}] run pokespawn banette level=50

execute as @s[x=794,y=93,z=641,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @s run execute as @e[distance=..5,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s


#Normal Day
execute as @s[x=794,y=93,z=641,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=65..70}] run function kalos:spawn/honey
execute as @s[x=794,y=93,z=641,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=71..75}] run scoreboard players add @s Money 100
execute as @s[x=794,y=93,z=641,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=76..80}] run scoreboard players add @s Money 250
execute as @s[x=794,y=93,z=641,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=81..85}] run scoreboard players add @s Money 2500
execute as @s[x=794,y=93,z=641,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=86..90}] run give @s cobblemon:max_revive
execute as @s[x=794,y=93,z=641,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=91..95}] run give @s cobblemon:revival_herb
execute as @s[x=794,y=93,z=641,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=96..100}] run give @s cobblemon:mental_herb

execute as @s[x=794,y=93,z=641,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=0..64}] run pokespawn garbodor level=50

execute as @s[x=794,y=93,z=641,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] at @e[distance=..5,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s


#Pokemon Village Trash Can No 2
#824 93 697
execute at @s[x=824,y=93,z=697,distance=..10] run kill @e[distance=..5,type=minecraft:interaction,tag=TrashCan]
execute at @s[x=824,y=93,z=697,distance=..10] run data merge entity @e[limit=1,distance=..5,type=armor_stand,tag=TrashCan] {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":50},count:1,id:"minecraft:iron_hoe"}]}
execute as @s[x=824,y=93,z=697,distance=..10] run playsound minecraft:entity.arrow.shoot ambient @s ~ ~ ~ 1 1 1

#Tuesday Loot
execute as @s[x=824,y=93,z=697,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=65..70}] run scoreboard players add @s Money 2500
execute as @s[x=824,y=93,z=697,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=71..75}] run function kalos:spawn/honey
execute as @s[x=824,y=93,z=697,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=76..80}] run give @s cobblemon:prism_scale
execute as @s[x=824,y=93,z=697,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=81..85}] run scoreboard players add @s Money 6250
execute as @s[x=824,y=93,z=697,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=86..90}] run give @s cobblemon:heal_powder
execute as @s[x=824,y=93,z=697,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=91..95}] run give @s cobblemon:revival_herb
execute as @s[x=824,y=93,z=697,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=96..100}] run give @s cobblemon:eviolite

execute as @s[x=824,y=93,z=697,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=0..64}] run pokespawn banette level=50

execute as @s[x=824,y=93,z=697,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @s run execute as @e[distance=..5,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s


#Normal Day
execute as @s[x=824,y=93,z=697,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=65..70}] run function kalos:spawn/honey
execute as @s[x=824,y=93,z=697,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=71..75}] run scoreboard players add @s Money 100
execute as @s[x=824,y=93,z=697,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=76..80}] run scoreboard players add @s Money 250
execute as @s[x=824,y=93,z=697,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=81..85}] run scoreboard players add @s Money 2500
execute as @s[x=824,y=93,z=697,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=86..90}] run give @s cobblemon:max_revive
execute as @s[x=824,y=93,z=697,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=91..95}] run give @s cobblemon:revival_herb
execute as @s[x=824,y=93,z=697,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=96..100}] run give @s cobblemon:mental_herb

execute as @s[x=824,y=93,z=697,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=0..64}] run pokespawn garbodor level=50

execute as @s[x=824,y=93,z=697,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] at @e[distance=..5,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s


#Pokemon Village Trash Can No 3
#800 93 737
execute at @s[x=800,y=93,z=737,distance=..10] run kill @e[distance=..5,type=minecraft:interaction,tag=TrashCan]
execute at @s[x=800,y=93,z=737,distance=..10] run data merge entity @e[limit=1,distance=..5,type=armor_stand,tag=TrashCan] {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":50},count:1,id:"minecraft:iron_hoe"}]}
execute as @s[x=800,y=93,z=737,distance=..10] run playsound minecraft:entity.arrow.shoot ambient @s ~ ~ ~ 1 1 1

#Tuesday Loot
execute as @s[x=800,y=93,z=737,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=65..70}] run scoreboard players add @s Money 2500
execute as @s[x=800,y=93,z=737,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=71..75}] run function kalos:spawn/honey
execute as @s[x=800,y=93,z=737,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=76..80}] run give @s cobblemon:prism_scale
execute as @s[x=800,y=93,z=737,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=81..85}] run scoreboard players add @s Money 6250
execute as @s[x=800,y=93,z=737,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=86..90}] run give @s cobblemon:heal_powder
execute as @s[x=800,y=93,z=737,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=91..95}] run give @s cobblemon:revival_herb
execute as @s[x=800,y=93,z=737,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=96..100}] run give @s cobblemon:eviolite

execute as @s[x=800,y=93,z=737,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=0..64}] run pokespawn banette level=50

execute as @s[x=800,y=93,z=737,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @s run execute as @e[distance=..5,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s


#Normal Day
execute as @s[x=800,y=93,z=737,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=65..70}] run function kalos:spawn/honey
execute as @s[x=800,y=93,z=737,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=71..75}] run scoreboard players add @s Money 100
execute as @s[x=800,y=93,z=737,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=76..80}] run scoreboard players add @s Money 250
execute as @s[x=800,y=93,z=737,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=81..85}] run scoreboard players add @s Money 2500
execute as @s[x=800,y=93,z=737,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=86..90}] run give @s cobblemon:max_revive
execute as @s[x=800,y=93,z=737,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=91..95}] run give @s cobblemon:revival_herb
execute as @s[x=800,y=93,z=737,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=96..100}] run give @s cobblemon:mental_herb

execute as @s[x=800,y=93,z=737,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=0..64}] run pokespawn garbodor level=50

execute as @s[x=800,y=93,z=737,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] at @e[distance=..5,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s



#Pokemon Village Trash Can No 4
#830 93 744
execute at @s[x=830,y=93,z=744,distance=..10] run kill @e[distance=..5,type=minecraft:interaction,tag=TrashCan]
execute at @s[x=830,y=93,z=744,distance=..10] run data merge entity @e[limit=1,distance=..5,type=armor_stand,tag=TrashCan] {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":50},count:1,id:"minecraft:iron_hoe"}]}
execute as @s[x=830,y=93,z=744,distance=..10] run playsound minecraft:entity.arrow.shoot ambient @s ~ ~ ~ 1 1 1

#Tuesday Loot
execute as @s[x=830,y=93,z=744,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=65..70}] run scoreboard players add @s Money 2500
execute as @s[x=830,y=93,z=744,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=71..75}] run function kalos:spawn/honey
execute as @s[x=830,y=93,z=744,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=76..80}] run give @s cobblemon:prism_scale
execute as @s[x=830,y=93,z=744,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=81..85}] run scoreboard players add @s Money 6250
execute as @s[x=830,y=93,z=744,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=86..90}] run give @s cobblemon:heal_powder
execute as @s[x=830,y=93,z=744,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=91..95}] run give @s cobblemon:revival_herb
execute as @s[x=830,y=93,z=744,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=96..100}] run give @s cobblemon:eviolite

execute as @s[x=830,y=93,z=744,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=0..64}] run pokespawn banette level=50

execute as @s[x=830,y=93,z=744,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @s run execute as @e[distance=..5,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s


#Normal Day
execute as @s[x=830,y=93,z=744,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=65..70}] run function kalos:spawn/honey
execute as @s[x=830,y=93,z=744,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=71..75}] run scoreboard players add @s Money 100
execute as @s[x=830,y=93,z=744,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=76..80}] run scoreboard players add @s Money 250
execute as @s[x=830,y=93,z=744,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=81..85}] run scoreboard players add @s Money 2500
execute as @s[x=830,y=93,z=744,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=86..90}] run give @s cobblemon:max_revive
execute as @s[x=830,y=93,z=744,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=91..95}] run give @s cobblemon:revival_herb
execute as @s[x=830,y=93,z=744,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=96..100}] run give @s cobblemon:mental_herb

execute as @s[x=830,y=93,z=744,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=0..64}] run pokespawn garbodor level=50

execute as @s[x=830,y=93,z=744,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] at @e[distance=..5,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s




#Pokemon Village Trash Can No 5
#849 93 741
execute at @s[x=849,y=93,z=741,distance=..10] run kill @e[distance=..5,type=minecraft:interaction,tag=TrashCan]
execute at @s[x=849,y=93,z=741,distance=..10] run data merge entity @e[limit=1,distance=..5,type=armor_stand,tag=TrashCan] {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":50},count:1,id:"minecraft:iron_hoe"}]}
execute as @s[x=849,y=93,z=741,distance=..10] run playsound minecraft:entity.arrow.shoot ambient @s ~ ~ ~ 1 1 1

#Tuesday Loot
execute as @s[x=849,y=93,z=741,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=65..70}] run scoreboard players add @s Money 2500
execute as @s[x=849,y=93,z=741,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=71..75}] run function kalos:spawn/honey
execute as @s[x=849,y=93,z=741,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=76..80}] run give @s cobblemon:prism_scale
execute as @s[x=849,y=93,z=741,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=81..85}] run scoreboard players add @s Money 6250
execute as @s[x=849,y=93,z=741,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=86..90}] run give @s cobblemon:heal_powder
execute as @s[x=849,y=93,z=741,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=91..95}] run give @s cobblemon:revival_herb
execute as @s[x=849,y=93,z=741,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=96..100}] run give @s cobblemon:eviolite

execute as @s[x=849,y=93,z=741,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=0..64}] run pokespawn banette level=50

execute as @s[x=849,y=93,z=741,distance=..10] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @s run execute as @e[distance=..5,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s


#Normal Day
execute as @s[x=849,y=93,z=741,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=65..70}] run function kalos:spawn/honey
execute as @s[x=849,y=93,z=741,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=71..75}] run scoreboard players add @s Money 100
execute as @s[x=849,y=93,z=741,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=76..80}] run scoreboard players add @s Money 250
execute as @s[x=849,y=93,z=741,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=81..85}] run scoreboard players add @s Money 2500
execute as @s[x=849,y=93,z=741,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=86..90}] run give @s cobblemon:max_revive
execute as @s[x=849,y=93,z=741,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=91..95}] run give @s cobblemon:revival_herb
execute as @s[x=849,y=93,z=741,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=96..100}] run give @s cobblemon:mental_herb

execute as @s[x=849,y=93,z=741,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] if entity @s[scores={rng=0..64}] run pokespawn garbodor level=50

execute as @s[x=849,y=93,z=741,distance=..10] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] at @e[distance=..5,type=armor_stand] run particle minecraft:explosion ~ ~1 ~ 0 2 1 1 10 normal @s




advancement revoke @s only kalos:click/trashcans