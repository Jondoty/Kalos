#Add to Trash Can Electrode Statues
#/tedit add INTERACT /scoreboard players set @pl TrashTrigger 1


#execute as @e[x=-468,y=99,z=1063,dy=3,type=pixelmon:statue] run execute as @a[r=20,c=1] run data modify entity @e[limit=1,x=-468,y=99,z=1063,dy=3,type=armor_stand] {Motion:[0.0,0.5,0.0]}

#/scoreboard players set @pl TrashTrigger 1

#/execute as @e[x=-468,y=99,z=1063,distance=..3,type=armor_stand] run summon pixelmon:statue ~ ~ ~ {ndex:101s,Growth:4b,CustomTexture:"invisible",ForgeData:{SpongeData:{},trainercommands:{interact:["/scoreboard players set @pl TrashTrigger 1"]}}}

#data modify entity @e[limit=1,x=-468,y=99,z=1063,distance=..3,type=armor_stand] {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:2039327,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:50s}]}





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
playsound pixelmon:pixelmon.block.pokelootobtained ambient @a[scores={TrashTrigger=1..,rng=65..100}] ~ ~ ~ 100 1 1



#-------------------------------------------------------------------------------Test Trash Can----------------------------------------------------------------------------------------------


execute as @a[scores={TrashTrigger=1}] run tp @e[x=-468,y=99,z=1063,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={TrashTrigger=1}] run data modify entity @e[limit=1,x=-468,y=99,z=1063,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
execute as @a[scores={TrashTrigger=1}] run playsound minecraft:entity.arrow.shoot ambient @a[scores={TrashTrigger=1}] run 100 1 1 1

#Tuesday Loot
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=1,rng=65..70}] minecraft:ender_eye{display:{Lore:["A long and durable rope.","Use it to escape instantly","from a cave."]}}
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=1,rng=71..75}] pixelmon:max_repel
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=1,rng=76..80}] pixelmon:nugget
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=1,rng=81..85}] pixelmon:hp_up
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=1,rng=86..90}] pixelmon:iron
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=1,rng=91..95}] pixelmon:protein
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=1,rng=96..100}] pixelmon:big_nugget

execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=1,rng=0..51}] rotom,f:0,lvl:38
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=1,rng=52..54}] rotom,f:1,lvl:38
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=1,rng=55..56}] rotom,f:2,lvl:38
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=1,rng=57..59}] rotom,f:3,lvl:38
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=1,rng=60..62}] rotom,f:4,lvl:38
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=1,rng=63..64}] rotom,f:5,lvl:38

execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @a[scores={TrashTrigger=1}] run execute as @e[x=-468,y=99,z=1063,distance=..3,type=armor_stand] run particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @a[scores={TrashTrigger=1}] run setblock -479 100 1063 minecraft:gold_block
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run scoreboard players set @a[scores={TrashTrigger=1}] TrashTrigger 0


#Non-special day loot
give @a[scores={TrashTrigger=1,rng=65..70}] pixelmon:dusk_ball
give @a[scores={TrashTrigger=1,rng=71..75}] minecraft:ender_eye{display:{Lore:["A long and durable rope.","Use it to escape instantly","from a cave."]}}
give @a[scores={TrashTrigger=1,rng=76..80}] pixelmon:super_repel
give @a[scores={TrashTrigger=1,rng=81..85}] pixelmon:calcium
give @a[scores={TrashTrigger=1,rng=86..90}] pixelmon:carbos
give @a[scores={TrashTrigger=1,rng=91..95}] pixelmon:zinc
give @a[scores={TrashTrigger=1,rng=96..100}] pixelmon:max_elixir

execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=1,rng=0..51}] Trubbish,lvl:35
execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=1,rng=52..64}] Garbodor,lvl:37

execute as @a[scores={TrashTrigger=1}] run execute as @e[x=-468,y=99,z=1063,distance=..3,type=armor_stand] run particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute as @a[scores={TrashTrigger=1}] run setblock -479 100 1063 minecraft:gold_block
scoreboard players set @a[scores={TrashTrigger=1}] TrashTrigger 0








#-------------------------------------------------------------------------------Lost Hotel----------------------------------------------------------------------------------------------
#Lost Hotel Trash can No 1
execute as @a[scores={TrashTrigger=7}] run tp @e[x=512,y=92,z=-463,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={TrashTrigger=7}] run data modify entity @e[limit=1,x=512,y=92,z=-463,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
execute as @a[scores={TrashTrigger=7}] run playsound minecraft:entity.arrow.shoot ambient @a[scores={TrashTrigger=7}] run 100 1 1 1

#Tuesday Loot
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=7,rng=65..70}] minecraft:ender_eye{display:{Lore:["A long and durable rope.","Use it to escape instantly","from a cave."]}}
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=7,rng=71..75}] pixelmon:max_repel
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=7,rng=76..80}] pixelmon:nugget
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=7,rng=81..85}] pixelmon:hp_up
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=7,rng=86..90}] pixelmon:iron
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=7,rng=91..95}] pixelmon:protein
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=7,rng=96..100}] pixelmon:big_nugget

execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=7,rng=0..51}] rotom,f:0,lvl:38
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=7,rng=52..54}] rotom,f:1,lvl:38
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=7,rng=55..56}] rotom,f:2,lvl:38
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=7,rng=57..59}] rotom,f:3,lvl:38
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=7,rng=60..62}] rotom,f:4,lvl:38
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=7,rng=63..64}] rotom,f:5,lvl:38

execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @a[scores={TrashTrigger=7}] run execute as @e[x=512,y=92,z=-463,distance=..3,type=armor_stand] run particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @a[scores={TrashTrigger=7}] run setblock -687 100 1278 minecraft:gold_block
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run scoreboard players set @a[scores={TrashTrigger=7}] TrashTrigger 0


#Non-special day loot
give @a[scores={TrashTrigger=7,rng=65..70}] pixelmon:dusk_ball
give @a[scores={TrashTrigger=7,rng=71..75}] minecraft:ender_eye{display:{Lore:["A long and durable rope.","Use it to escape instantly","from a cave."]}}
give @a[scores={TrashTrigger=7,rng=76..80}] pixelmon:super_repel
give @a[scores={TrashTrigger=7,rng=81..85}] pixelmon:calcium
give @a[scores={TrashTrigger=7,rng=86..90}] pixelmon:carbos
give @a[scores={TrashTrigger=7,rng=91..95}] pixelmon:zinc
give @a[scores={TrashTrigger=7,rng=96..100}] pixelmon:max_elixir

execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=7,rng=0..51}] Trubbish,lvl:35
execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=7,rng=52..64}] Garbodor,lvl:37

execute as @a[scores={TrashTrigger=7}] run execute as @e[x=512,y=92,z=-463,distance=..3,type=armor_stand] run particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute as @a[scores={TrashTrigger=7}] run setblock -687 100 1278 minecraft:gold_block
scoreboard players set @a[scores={TrashTrigger=7}] TrashTrigger 0





#Lost Hotel Trash can No 2
execute as @a[scores={TrashTrigger=8}] run tp @e[x=446,y=92,z=-486,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={TrashTrigger=8}] run data modify entity @e[limit=1,x=446,y=92,z=-486,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
execute as @a[scores={TrashTrigger=8}] run playsound minecraft:entity.arrow.shoot ambient @a[scores={TrashTrigger=8}] run 100 1 1 1

#Tuesday Loot
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=8,rng=65..70}] minecraft:ender_eye{display:{Lore:["A long and durable rope.","Use it to escape instantly","from a cave."]}}
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=8,rng=71..75}] pixelmon:max_repel
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=8,rng=76..80}] pixelmon:nugget
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=8,rng=81..85}] pixelmon:hp_up
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=8,rng=86..90}] pixelmon:iron
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=8,rng=91..95}] pixelmon:protein
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=8,rng=96..100}] pixelmon:big_nugget

execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=8,rng=0..51}] rotom,f:0,lvl:38
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=8,rng=52..54}] rotom,f:1,lvl:38
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=8,rng=55..56}] rotom,f:2,lvl:38
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=8,rng=57..59}] rotom,f:3,lvl:38
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=8,rng=60..62}] rotom,f:4,lvl:38
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=8,rng=63..64}] rotom,f:5,lvl:38

execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @a[scores={TrashTrigger=8}] run execute as @e[x=446,y=92,z=-486,distance=..3,type=armor_stand] run particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @a[scores={TrashTrigger=8}] run setblock -687 100 1279 minecraft:gold_block
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run scoreboard players set @a[scores={TrashTrigger=8}] TrashTrigger 0


#Non-special day loot
give @a[scores={TrashTrigger=8,rng=65..70}] pixelmon:dusk_ball
give @a[scores={TrashTrigger=8,rng=71..75}] minecraft:ender_eye{display:{Lore:["A long and durable rope.","Use it to escape instantly","from a cave."]}}
give @a[scores={TrashTrigger=8,rng=76..80}] pixelmon:super_repel
give @a[scores={TrashTrigger=8,rng=81..85}] pixelmon:calcium
give @a[scores={TrashTrigger=8,rng=86..90}] pixelmon:carbos
give @a[scores={TrashTrigger=8,rng=91..95}] pixelmon:zinc
give @a[scores={TrashTrigger=8,rng=96..100}] pixelmon:max_elixir

execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=8,rng=0..51}] Trubbish,lvl:35
execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=8,rng=52..64}] Garbodor,lvl:37

execute as @a[scores={TrashTrigger=8}] run execute as @e[x=446,y=92,z=-486,distance=..3,type=armor_stand] run particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute as @a[scores={TrashTrigger=8}] run setblock -687 100 1279 minecraft:gold_block
scoreboard players set @a[scores={TrashTrigger=8}] TrashTrigger 0






#Lost Hotel Trash can No 4
execute as @a[scores={TrashTrigger=9}] run tp @e[x=413,y=92,z=-450,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={TrashTrigger=9}] run data modify entity @e[limit=1,x=413,y=92,z=-450,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
execute as @a[scores={TrashTrigger=9}] run playsound minecraft:entity.arrow.shoot ambient @a[scores={TrashTrigger=9}] run 100 1 1 1

#Tuesday Loot
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=9,rng=65..70}] minecraft:ender_eye{display:{Lore:["A long and durable rope.","Use it to escape instantly","from a cave."]}}
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=9,rng=71..75}] pixelmon:max_repel
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=9,rng=76..80}] pixelmon:nugget
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=9,rng=81..85}] pixelmon:hp_up
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=9,rng=86..90}] pixelmon:iron
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=9,rng=91..95}] pixelmon:protein
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=9,rng=96..100}] pixelmon:big_nugget

execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=9,rng=0..51}] rotom,f:0,lvl:38
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=9,rng=52..54}] rotom,f:1,lvl:38
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=9,rng=55..56}] rotom,f:2,lvl:38
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=9,rng=57..59}] rotom,f:3,lvl:38
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=9,rng=60..62}] rotom,f:4,lvl:38
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=9,rng=63..64}] rotom,f:5,lvl:38

execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @a[scores={TrashTrigger=9}] run execute as @e[x=413,y=92,z=-450,distance=..3,type=armor_stand] run particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @a[scores={TrashTrigger=9}] run setblock -687 100 1280 minecraft:gold_block
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run scoreboard players set @a[scores={TrashTrigger=9}] TrashTrigger 0


#Non-special day loot
give @a[scores={TrashTrigger=9,rng=65..70}] pixelmon:dusk_ball
give @a[scores={TrashTrigger=9,rng=71..75}] minecraft:ender_eye{display:{Lore:["A long and durable rope.","Use it to escape instantly","from a cave."]}}
give @a[scores={TrashTrigger=9,rng=76..80}] pixelmon:super_repel
give @a[scores={TrashTrigger=9,rng=81..85}] pixelmon:calcium
give @a[scores={TrashTrigger=9,rng=86..90}] pixelmon:carbos
give @a[scores={TrashTrigger=9,rng=91..95}] pixelmon:zinc
give @a[scores={TrashTrigger=9,rng=96..100}] pixelmon:max_elixir

execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=9,rng=0..51}] Trubbish,lvl:35
execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=9,rng=52..64}] Garbodor,lvl:37

execute as @a[scores={TrashTrigger=9}] run execute as @e[x=413,y=92,z=-450,distance=..3,type=armor_stand] run particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute as @a[scores={TrashTrigger=9}] run setblock -687 100 1280 minecraft:gold_block
scoreboard players set @a[scores={TrashTrigger=9}] TrashTrigger 0






#Lost Hotel Trash can No 4
execute as @a[scores={TrashTrigger=10}] run tp @e[x=497,y=92,z=-413,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={TrashTrigger=10}] run data modify entity @e[limit=1,x=497,y=92,z=-413,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
execute as @a[scores={TrashTrigger=10}] run playsound minecraft:entity.arrow.shoot ambient @a[scores={TrashTrigger=10}] run 100 1 1 1

#Tuesday Loot
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=10,rng=65..70}] minecraft:ender_eye{display:{Lore:["A long and durable rope.","Use it to escape instantly","from a cave."]}}
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=10,rng=71..75}] pixelmon:max_repel
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=10,rng=76..80}] pixelmon:nugget
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=10,rng=81..85}] pixelmon:hp_up
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=10,rng=86..90}] pixelmon:iron
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=10,rng=91..95}] pixelmon:protein
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=10,rng=96..100}] pixelmon:big_nugget

execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=10,rng=0..51}] rotom,f:0,lvl:38
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=10,rng=52..54}] rotom,f:1,lvl:38
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=10,rng=55..56}] rotom,f:2,lvl:38
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=10,rng=57..59}] rotom,f:3,lvl:38
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=10,rng=60..62}] rotom,f:4,lvl:38
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=10,rng=63..64}] rotom,f:5,lvl:38

execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @a[scores={TrashTrigger=10}] run execute as @e[x=497,y=92,z=-413,distance=..3,type=armor_stand] run particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @a[scores={TrashTrigger=10}] run setblock -687 100 1281 minecraft:gold_block
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run scoreboard players set @a[scores={TrashTrigger=10}] TrashTrigger 0


#Non-special day loot
give @a[scores={TrashTrigger=10,rng=65..70}] pixelmon:dusk_ball
give @a[scores={TrashTrigger=10,rng=71..75}] minecraft:ender_eye{display:{Lore:["A long and durable rope.","Use it to escape instantly","from a cave."]}}
give @a[scores={TrashTrigger=10,rng=76..80}] pixelmon:super_repel
give @a[scores={TrashTrigger=10,rng=81..85}] pixelmon:calcium
give @a[scores={TrashTrigger=10,rng=86..90}] pixelmon:carbos
give @a[scores={TrashTrigger=10,rng=91..95}] pixelmon:zinc
give @a[scores={TrashTrigger=10,rng=96..100}] pixelmon:max_elixir

execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=10,rng=0..51}] Trubbish,lvl:35
execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=10,rng=52..64}] Garbodor,lvl:37

execute as @a[scores={TrashTrigger=10}] run execute as @e[x=497,y=92,z=-413,distance=..3,type=armor_stand] run particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute as @a[scores={TrashTrigger=10}] run setblock -687 100 1281 minecraft:gold_block
scoreboard players set @a[scores={TrashTrigger=10}] TrashTrigger 0






#Lost Hotel Trash can No 5
execute as @a[scores={TrashTrigger=11}] run tp @e[x=416,y=92,z=-377,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={TrashTrigger=11}] run data modify entity @e[limit=1,x=416,y=92,z=-377,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
execute as @a[scores={TrashTrigger=11}] run playsound minecraft:entity.arrow.shoot ambient @a[scores={TrashTrigger=11}] run 100 1 1 1

#Tuesday Loot
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=11,rng=65..70}] minecraft:ender_eye{display:{Lore:["A long and durable rope.","Use it to escape instantly","from a cave."]}}
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=11,rng=71..75}] pixelmon:max_repel
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=11,rng=76..80}] pixelmon:nugget
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=11,rng=81..85}] pixelmon:hp_up
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=11,rng=86..90}] pixelmon:iron
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=11,rng=91..95}] pixelmon:protein
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run give @a[scores={TrashTrigger=11,rng=96..100}] pixelmon:big_nugget

execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=11,rng=0..51}] rotom,f:0,lvl:38
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=11,rng=52..54}] rotom,f:1,lvl:38
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=11,rng=55..56}] rotom,f:2,lvl:38
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=11,rng=57..59}] rotom,f:3,lvl:38
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=11,rng=60..62}] rotom,f:4,lvl:38
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=11,rng=63..64}] rotom,f:5,lvl:38

execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @a[scores={TrashTrigger=11}] run execute as @e[x=416,y=92,z=-377,distance=..3,type=armor_stand] run particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @a[scores={TrashTrigger=11}] run setblock -687 100 1282 minecraft:gold_block
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run scoreboard players set @a[scores={TrashTrigger=11}] TrashTrigger 0


#Non-special day loot
give @a[scores={TrashTrigger=11,rng=65..70}] pixelmon:dusk_ball
give @a[scores={TrashTrigger=11,rng=71..75}] minecraft:ender_eye{display:{Lore:["A long and durable rope.","Use it to escape instantly","from a cave."]}}
give @a[scores={TrashTrigger=11,rng=76..80}] pixelmon:super_repel
give @a[scores={TrashTrigger=11,rng=81..85}] pixelmon:calcium
give @a[scores={TrashTrigger=11,rng=86..90}] pixelmon:carbos
give @a[scores={TrashTrigger=11,rng=91..95}] pixelmon:zinc
give @a[scores={TrashTrigger=11,rng=96..100}] pixelmon:max_elixir

execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=11,rng=0..51}] Trubbish,lvl:35
execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=11,rng=52..64}] Garbodor,lvl:37

execute as @a[scores={TrashTrigger=11}] run execute as @e[x=416,y=92,z=-377,distance=..3,type=armor_stand] run particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute as @a[scores={TrashTrigger=11}] run setblock -687 100 1282 minecraft:gold_block
scoreboard players set @a[scores={TrashTrigger=11}] TrashTrigger 0







#-------------------------------------------------------------------------------Pokemon Village----------------------------------------------------------------------------------------------
#Pokemon Village Trash Can No 1
execute as @a[scores={TrashTrigger=2}] run tp @e[x=794,y=93,z=641,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={TrashTrigger=2}] run data modify entity @e[limit=1,x=794,y=93,z=641,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
execute as @a[scores={TrashTrigger=2}] run playsound minecraft:entity.arrow.shoot ambient @a[scores={TrashTrigger=2}] run 100 1 1 1

#Tuesday Loot
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=2,rng=65..70}] pixelmon:big_mushroom
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=2,rng=71..75}] minecraft:lingering_potion{display:{Lore:["A tool used to attract","hoards of Pokemon."]},HideFlags:32}
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=2,rng=76..80}] pixelmon:prism_scale
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=2,rng=81..85}] pixelmon:balm_mushroom
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=2,rng=86..90}] pixelmon:heal_powder
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=2,rng=91..95}] pixelmon:revival_herb
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=2,rng=96..100}] pixelmon:eviolite

execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=2,rng=0..64}] banette,lvl:50

execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @a[scores={TrashTrigger=2}] run execute as @e[x=794,y=93,z=641,distance=..3,type=armor_stand] run particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @a[scores={TrashTrigger=2}] run setblock -687 100 1273 minecraft:gold_block
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run scoreboard players set @a[scores={TrashTrigger=2}] TrashTrigger 0


#Non-special day loot
give @a[scores={TrashTrigger=2,rng=65..70}] minecraft:lingering_potion{display:{Lore:["A tool used to attract","hoards of Pokemon."]},HideFlags:32}
give @a[scores={TrashTrigger=2,rng=71..75}] pixelmon:pretty_wing
give @a[scores={TrashTrigger=2,rng=76..80}] pixelmon:tiny_mushroom
give @a[scores={TrashTrigger=2,rng=81..85}] pixelmon:big_mushroom
give @a[scores={TrashTrigger=2,rng=86..90}] pixelmon:max_revive
give @a[scores={TrashTrigger=2,rng=91..95}] pixelmon:revival_herb
give @a[scores={TrashTrigger=2,rng=96..100}] pixelmon:mental_herb

execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=2,rng=0..64}] garbodor,lvl:50

execute as @a[scores={TrashTrigger=2}] run execute as @e[x=794,y=93,z=641,distance=..3,type=armor_stand] run particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute as @a[scores={TrashTrigger=2}] run setblock -687 100 1273 minecraft:gold_block
scoreboard players set @a[scores={TrashTrigger=2}] TrashTrigger 0




#Pokemon Village Trash Can No 2
execute as @a[scores={TrashTrigger=3}] run tp @e[x=824,y=93,z=697,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={TrashTrigger=3}] run data modify entity @e[limit=1,x=824,y=93,z=697,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
execute as @a[scores={TrashTrigger=3}] run playsound minecraft:entity.arrow.shoot ambient @a[scores={TrashTrigger=3}] run 100 1 1 1

#Tuesday Loot
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=3,rng=65..70}] pixelmon:big_mushroom
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=3,rng=71..75}] minecraft:lingering_potion{display:{Lore:["A tool used to attract","hoards of Pokemon."]},HideFlags:32}
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=3,rng=76..80}] pixelmon:prism_scale
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=3,rng=81..85}] pixelmon:balm_mushroom
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=3,rng=86..90}] pixelmon:heal_powder
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=3,rng=91..95}] pixelmon:revival_herb
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=3,rng=96..100}] pixelmon:eviolite

execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=3,rng=0..64}] banette,lvl:50

execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @a[scores={TrashTrigger=3}] run execute as @e[x=824,y=93,z=697,distance=..3,type=armor_stand] run particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @a[scores={TrashTrigger=3}] run setblock -687 100 1274 minecraft:gold_block
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run scoreboard players set @a[scores={TrashTrigger=3}] TrashTrigger 0


#Non-special day loot
give @a[scores={TrashTrigger=3,rng=65..70}] minecraft:lingering_potion{display:{Lore:["A tool used to attract","hoards of Pokemon."]},HideFlags:32}
give @a[scores={TrashTrigger=3,rng=71..75}] pixelmon:pretty_wing
give @a[scores={TrashTrigger=3,rng=76..80}] pixelmon:tiny_mushroom
give @a[scores={TrashTrigger=3,rng=81..85}] pixelmon:big_mushroom
give @a[scores={TrashTrigger=3,rng=86..90}] pixelmon:max_revive
give @a[scores={TrashTrigger=3,rng=91..95}] pixelmon:revival_herb
give @a[scores={TrashTrigger=3,rng=96..100}] pixelmon:mental_herb

execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=3,rng=0..64}] garbodor,lvl:50

execute as @a[scores={TrashTrigger=3}] run execute as @e[x=824,y=93,z=697,distance=..3,type=armor_stand] run particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute as @a[scores={TrashTrigger=3}] run setblock -687 100 1274 minecraft:gold_block
scoreboard players set @a[scores={TrashTrigger=3}] TrashTrigger 0




#Pokemon Village Trash Can No 3
execute as @a[scores={TrashTrigger=4}] run tp @e[x=800,y=93,z=737,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={TrashTrigger=4}] run data modify entity @e[limit=1,x=800,y=93,z=737,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
execute as @a[scores={TrashTrigger=4}] run playsound minecraft:entity.arrow.shoot ambient @a[scores={TrashTrigger=4}] run 100 1 1 1

#Tuesday Loot
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=4,rng=65..70}] pixelmon:big_mushroom
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=4,rng=71..75}] minecraft:lingering_potion{display:{Lore:["A tool used to attract","hoards of Pokemon."]},HideFlags:32}
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=4,rng=76..80}] pixelmon:prism_scale
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=4,rng=81..85}] pixelmon:balm_mushroom
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=4,rng=86..90}] pixelmon:heal_powder
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=4,rng=91..95}] pixelmon:revival_herb
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=4,rng=96..100}] pixelmon:eviolite

execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=4,rng=0..64}] banette,lvl:50

execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @a[scores={TrashTrigger=4}] run execute as @e[x=800,y=93,z=737,distance=..3,type=armor_stand] run particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @a[scores={TrashTrigger=4}] run setblock -687 100 1275 minecraft:gold_block
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run scoreboard players set @a[scores={TrashTrigger=4}] TrashTrigger 0


#Non-special day loot
give @a[scores={TrashTrigger=4,rng=65..70}] minecraft:lingering_potion{display:{Lore:["A tool used to attract","hoards of Pokemon."]},HideFlags:32}
give @a[scores={TrashTrigger=4,rng=71..75}] pixelmon:pretty_wing
give @a[scores={TrashTrigger=4,rng=76..80}] pixelmon:tiny_mushroom
give @a[scores={TrashTrigger=4,rng=81..85}] pixelmon:big_mushroom
give @a[scores={TrashTrigger=4,rng=86..90}] pixelmon:max_revive
give @a[scores={TrashTrigger=4,rng=91..95}] pixelmon:revival_herb
give @a[scores={TrashTrigger=4,rng=96..100}] pixelmon:mental_herb

execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=4,rng=0..64}] garbodor,lvl:50

execute as @a[scores={TrashTrigger=4}] run execute as @e[x=800,y=93,z=737,distance=..3,type=armor_stand] run particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute as @a[scores={TrashTrigger=4}] run setblock -687 100 1275 minecraft:gold_block
scoreboard players set @a[scores={TrashTrigger=4}] TrashTrigger 0





#Pokemon Village Trash Can No 4
execute as @a[scores={TrashTrigger=5}] run tp @e[x=830,y=93,z=744,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={TrashTrigger=5}] run data modify entity @e[limit=1,x=830,y=93,z=744,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
execute as @a[scores={TrashTrigger=5}] run playsound minecraft:entity.arrow.shoot ambient @a[scores={TrashTrigger=5}] run 100 1 1 1

#Tuesday Loot
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=5,rng=65..70}] pixelmon:big_mushroom
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=5,rng=71..75}] minecraft:lingering_potion{display:{Lore:["A tool used to attract","hoards of Pokemon."]},HideFlags:32}
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=5,rng=76..80}] pixelmon:prism_scale
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=5,rng=81..85}] pixelmon:balm_mushroom
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=5,rng=86..90}] pixelmon:heal_powder
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=5,rng=91..95}] pixelmon:revival_herb
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=5,rng=96..100}] pixelmon:eviolite

execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=5,rng=0..64}] banette,lvl:50

execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @a[scores={TrashTrigger=5}] run execute as @e[x=830,y=93,z=744,distance=..3,type=armor_stand] run particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @a[scores={TrashTrigger=5}] run setblock -687 100 1276 minecraft:gold_block
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run scoreboard players set @a[scores={TrashTrigger=5}] TrashTrigger 0


#Non-special day loot
give @a[scores={TrashTrigger=5,rng=65..70}] minecraft:lingering_potion{display:{Lore:["A tool used to attract","hoards of Pokemon."]},HideFlags:32}
give @a[scores={TrashTrigger=5,rng=71..75}] pixelmon:pretty_wing
give @a[scores={TrashTrigger=5,rng=76..80}] pixelmon:tiny_mushroom
give @a[scores={TrashTrigger=5,rng=81..85}] pixelmon:big_mushroom
give @a[scores={TrashTrigger=5,rng=86..90}] pixelmon:max_revive
give @a[scores={TrashTrigger=5,rng=91..95}] pixelmon:revival_herb
give @a[scores={TrashTrigger=5,rng=96..100}] pixelmon:mental_herb

execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=5,rng=0..64}] garbodor,lvl:50

execute as @a[scores={TrashTrigger=5}] run execute as @e[x=830,y=93,z=744,distance=..3,type=armor_stand] run particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute as @a[scores={TrashTrigger=5}] run setblock -687 100 1276 minecraft:gold_block
scoreboard players set @a[scores={TrashTrigger=5}] TrashTrigger 0







#Pokemon Village Trash Can No 5
execute as @a[scores={TrashTrigger=6}] run tp @e[x=849,y=93,z=741,distance=..3,type=pixelmon:statue] ~ ~-1000 ~
execute as @a[scores={TrashTrigger=6}] run data modify entity @e[limit=1,x=849,y=93,z=741,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
execute as @a[scores={TrashTrigger=6}] run playsound minecraft:entity.arrow.shoot ambient @a[scores={TrashTrigger=6}] run 100 1 1 1

#Tuesday Loot
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=6,rng=65..70}] pixelmon:big_mushroom
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=6,rng=71..75}] minecraft:lingering_potion{display:{Lore:["A tool used to attract","hoards of Pokemon."]},HideFlags:32}
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=6,rng=76..80}] pixelmon:prism_scale
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=6,rng=81..85}] pixelmon:balm_mushroom
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=6,rng=86..90}] pixelmon:heal_powder
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=6,rng=91..95}] pixelmon:revival_herb
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run give @a[scores={TrashTrigger=6,rng=96..100}] pixelmon:eviolite

execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=6,rng=0..64}] banette,lvl:50

execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @a[scores={TrashTrigger=6}] run execute as @e[x=849,y=93,z=741,distance=..3,type=armor_stand] run particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @a[scores={TrashTrigger=6}] run setblock -687 100 1277 minecraft:gold_block
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run scoreboard players set @a[scores={TrashTrigger=6}] TrashTrigger 0


#Non-special day loot
give @a[scores={TrashTrigger=6,rng=65..70}] minecraft:lingering_potion{display:{Lore:["A tool used to attract","hoards of Pokemon."]},HideFlags:32}
give @a[scores={TrashTrigger=6,rng=71..75}] pixelmon:pretty_wing
give @a[scores={TrashTrigger=6,rng=76..80}] pixelmon:tiny_mushroom
give @a[scores={TrashTrigger=6,rng=81..85}] pixelmon:big_mushroom
give @a[scores={TrashTrigger=6,rng=86..90}] pixelmon:max_revive
give @a[scores={TrashTrigger=6,rng=91..95}] pixelmon:revival_herb
give @a[scores={TrashTrigger=6,rng=96..100}] pixelmon:mental_herb

execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokebattle @a[scores={TrashTrigger=6,rng=0..64}] garbodor,lvl:50

execute as @a[scores={TrashTrigger=6}] run execute as @e[x=849,y=93,z=741,distance=..3,type=armor_stand] run particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute as @a[scores={TrashTrigger=6}] run setblock -687 100 1277 minecraft:gold_block
scoreboard players set @a[scores={TrashTrigger=6}] TrashTrigger 0
