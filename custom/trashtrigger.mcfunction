#Add to Trash Can Electrode Statues
#/tedit add INTERACT /scoreboard players set @pl TrashTrigger 1


#execute @e[x=-468,y=99,z=1063,dy=3,type=pixelmon:statue] ~ ~ ~ /execute @a[r=20,c=1] ~ ~ ~ /entitydata @e[x=-468,y=99,z=1063,dy=3,type=armor_stand] {Motion:[0.0,0.5,0.0]}

#/scoreboard players set @pl TrashTrigger 1

#/execute @e[x=-468,y=99,z=1063,r=3,type=armor_stand] ~ ~ ~ /summon pixelmon:statue ~ ~ ~ {ndex:101s,Growth:4b,CustomTexture:"invisible",ForgeData:{SpongeData:{},trainercommands:{interact:["/scoreboard players set @pl TrashTrigger 1"]}}}

#entitydata @e[x=-468,y=99,z=1063,r=3,type=armor_stand] {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:2039327,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:50s}]}





#Rolls rng score
scoreboard players set @e[x=-687,y=100,z=1376,dx=2,dy=4,type=armor_stand] rng 0
scoreboard players add @r[x=-687,y=100,z=1376,dx=2,dy=4,type=armor_stand] rng 1
scoreboard players add @r[x=-687,y=100,z=1376,dx=2,dy=4,type=armor_stand] rng 2
scoreboard players add @r[x=-687,y=100,z=1376,dx=2,dy=4,type=armor_stand] rng 4
scoreboard players add @r[x=-687,y=100,z=1376,dx=2,dy=4,type=armor_stand] rng 8
scoreboard players add @r[x=-687,y=100,z=1376,dx=2,dy=4,type=armor_stand] rng 16
scoreboard players add @r[x=-687,y=100,z=1376,dx=2,dy=4,type=armor_stand] rng 32
scoreboard players add @r[x=-687,y=100,z=1376,dx=2,dy=4,type=armor_stand] rng 64

scoreboard players operation @s rng = @e[x=-687,y=100,z=1376,dy=3,type=armor_stand] rng


#General odds:
#40% - Common Pokemon
#10% - Rare Pokemon
#30% - Items
#20% - Nothing




#Playsound if item found
playsound pixelmon:pixelmon.block.pokelootobtained ambient @a[score_TrashTrigger_min=1,score_rng_min=65,score_rng=100] ~ ~ ~ 100 1 1



#-------------------------------------------------------------------------------Test Trash Can----------------------------------------------------------------------------------------------


execute @a[score_TrashTrigger_min=1,score_TrashTrigger=1] ~ ~ ~ /tp @e[x=-468,y=99,z=1063,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[score_TrashTrigger_min=1,score_TrashTrigger=1] ~ ~ ~ entitydata @e[x=-468,y=99,z=1063,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
execute @a[score_TrashTrigger_min=1,score_TrashTrigger=1] ~ ~ ~ playsound minecraft:entity.arrow.shoot ambient @a[score_TrashTrigger_min=1,score_TrashTrigger=1] ~ ~ ~ 100 1 1 1

#Tuesday Loot
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=1,score_TrashTrigger=1,score_rng_min=65,score_rng=70] ender_eye 1 0 {display:{Lore:["A long and durable rope.","Use it to escape instantly","from a cave."]}}
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=1,score_TrashTrigger=1,score_rng_min=71,score_rng=75] pixelmon:max_repel
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=1,score_TrashTrigger=1,score_rng_min=76,score_rng=80] pixelmon:nugget
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=1,score_TrashTrigger=1,score_rng_min=81,score_rng=85] pixelmon:hp_up
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=1,score_TrashTrigger=1,score_rng_min=86,score_rng=90] pixelmon:iron
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=1,score_TrashTrigger=1,score_rng_min=91,score_rng=95] pixelmon:protein
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=1,score_TrashTrigger=1,score_rng_min=96,score_rng=100] pixelmon:big_nugget

execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=1,score_TrashTrigger=1,score_rng_min=0,score_rng=51] rotom,f:0,lvl:38
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=1,score_TrashTrigger=1,score_rng_min=52,score_rng=54] rotom,f:1,lvl:38
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=1,score_TrashTrigger=1,score_rng_min=55,score_rng=56] rotom,f:2,lvl:38
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=1,score_TrashTrigger=1,score_rng_min=57,score_rng=59] rotom,f:3,lvl:38
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=1,score_TrashTrigger=1,score_rng_min=60,score_rng=62] rotom,f:4,lvl:38
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=1,score_TrashTrigger=1,score_rng_min=63,score_rng=64] rotom,f:5,lvl:38

execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @a[score_TrashTrigger_min=1,score_TrashTrigger=1] ~ ~ ~ /execute @e[x=-468,y=99,z=1063,r=3,type=armor_stand] ~ ~ ~ /particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @a[score_TrashTrigger_min=1,score_TrashTrigger=1] ~ ~ ~ /setblock -479 100 1063 minecraft:gold_block
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ scoreboard players set @a[score_TrashTrigger_min=1,score_TrashTrigger=1] TrashTrigger 0


#Non-special day loot
give @a[score_TrashTrigger_min=1,score_TrashTrigger=1,score_rng_min=65,score_rng=70] pixelmon:dusk_ball
give @a[score_TrashTrigger_min=1,score_TrashTrigger=1,score_rng_min=71,score_rng=75] ender_eye 1 0 {display:{Lore:["A long and durable rope.","Use it to escape instantly","from a cave."]}}
give @a[score_TrashTrigger_min=1,score_TrashTrigger=1,score_rng_min=76,score_rng=80] pixelmon:super_repel
give @a[score_TrashTrigger_min=1,score_TrashTrigger=1,score_rng_min=81,score_rng=85] pixelmon:calcium
give @a[score_TrashTrigger_min=1,score_TrashTrigger=1,score_rng_min=86,score_rng=90] pixelmon:carbos
give @a[score_TrashTrigger_min=1,score_TrashTrigger=1,score_rng_min=91,score_rng=95] pixelmon:zinc
give @a[score_TrashTrigger_min=1,score_TrashTrigger=1,score_rng_min=96,score_rng=100] pixelmon:max_elixir

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=1,score_TrashTrigger=1,score_rng_min=0,score_rng=51] Trubbish,lvl:35
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=1,score_TrashTrigger=1,score_rng_min=52,score_rng=64] Garbodor,lvl:37

execute @a[score_TrashTrigger_min=1,score_TrashTrigger=1] ~ ~ ~ /execute @e[x=-468,y=99,z=1063,r=3,type=armor_stand] ~ ~ ~ /particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute @a[score_TrashTrigger_min=1,score_TrashTrigger=1] ~ ~ ~ /setblock -479 100 1063 minecraft:gold_block
scoreboard players set @a[score_TrashTrigger_min=1,score_TrashTrigger=1] TrashTrigger 0








#-------------------------------------------------------------------------------Lost Hotel----------------------------------------------------------------------------------------------
#Lost Hotel Trash can No 1
execute @a[score_TrashTrigger_min=7,score_TrashTrigger=7] ~ ~ ~ /tp @e[x=512,y=92,z=-463,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[score_TrashTrigger_min=7,score_TrashTrigger=7] ~ ~ ~ entitydata @e[x=512,y=92,z=-463,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
execute @a[score_TrashTrigger_min=7,score_TrashTrigger=7] ~ ~ ~ playsound minecraft:entity.arrow.shoot ambient @a[score_TrashTrigger_min=7,score_TrashTrigger=7] ~ ~ ~ 100 1 1 1

#Tuesday Loot
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=7,score_TrashTrigger=7,score_rng_min=65,score_rng=70] ender_eye 1 0 {display:{Lore:["A long and durable rope.","Use it to escape instantly","from a cave."]}}
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=7,score_TrashTrigger=7,score_rng_min=71,score_rng=75] pixelmon:max_repel
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=7,score_TrashTrigger=7,score_rng_min=76,score_rng=80] pixelmon:nugget
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=7,score_TrashTrigger=7,score_rng_min=81,score_rng=85] pixelmon:hp_up
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=7,score_TrashTrigger=7,score_rng_min=86,score_rng=90] pixelmon:iron
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=7,score_TrashTrigger=7,score_rng_min=91,score_rng=95] pixelmon:protein
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=7,score_TrashTrigger=7,score_rng_min=96,score_rng=100] pixelmon:big_nugget

execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=7,score_TrashTrigger=7,score_rng_min=0,score_rng=51] rotom,f:0,lvl:38
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=7,score_TrashTrigger=7,score_rng_min=52,score_rng=54] rotom,f:1,lvl:38
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=7,score_TrashTrigger=7,score_rng_min=55,score_rng=56] rotom,f:2,lvl:38
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=7,score_TrashTrigger=7,score_rng_min=57,score_rng=59] rotom,f:3,lvl:38
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=7,score_TrashTrigger=7,score_rng_min=60,score_rng=62] rotom,f:4,lvl:38
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=7,score_TrashTrigger=7,score_rng_min=63,score_rng=64] rotom,f:5,lvl:38

execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @a[score_TrashTrigger_min=7,score_TrashTrigger=7] ~ ~ ~ /execute @e[x=512,y=92,z=-463,r=3,type=armor_stand] ~ ~ ~ /particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @a[score_TrashTrigger_min=7,score_TrashTrigger=7] ~ ~ ~ /setblock -687 100 1278 minecraft:gold_block
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ scoreboard players set @a[score_TrashTrigger_min=7,score_TrashTrigger=7] TrashTrigger 0


#Non-special day loot
give @a[score_TrashTrigger_min=7,score_TrashTrigger=7,score_rng_min=65,score_rng=70] pixelmon:dusk_ball
give @a[score_TrashTrigger_min=7,score_TrashTrigger=7,score_rng_min=71,score_rng=75] ender_eye 1 0 {display:{Lore:["A long and durable rope.","Use it to escape instantly","from a cave."]}}
give @a[score_TrashTrigger_min=7,score_TrashTrigger=7,score_rng_min=76,score_rng=80] pixelmon:super_repel
give @a[score_TrashTrigger_min=7,score_TrashTrigger=7,score_rng_min=81,score_rng=85] pixelmon:calcium
give @a[score_TrashTrigger_min=7,score_TrashTrigger=7,score_rng_min=86,score_rng=90] pixelmon:carbos
give @a[score_TrashTrigger_min=7,score_TrashTrigger=7,score_rng_min=91,score_rng=95] pixelmon:zinc
give @a[score_TrashTrigger_min=7,score_TrashTrigger=7,score_rng_min=96,score_rng=100] pixelmon:max_elixir

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=7,score_TrashTrigger=7,score_rng_min=0,score_rng=51] Trubbish,lvl:35
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=7,score_TrashTrigger=7,score_rng_min=52,score_rng=64] Garbodor,lvl:37

execute @a[score_TrashTrigger_min=7,score_TrashTrigger=7] ~ ~ ~ /execute @e[x=512,y=92,z=-463,r=3,type=armor_stand] ~ ~ ~ /particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute @a[score_TrashTrigger_min=7,score_TrashTrigger=7] ~ ~ ~ /setblock -687 100 1278 minecraft:gold_block
scoreboard players set @a[score_TrashTrigger_min=7,score_TrashTrigger=7] TrashTrigger 0





#Lost Hotel Trash can No 2
execute @a[score_TrashTrigger_min=8,score_TrashTrigger=8] ~ ~ ~ /tp @e[x=446,y=92,z=-486,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[score_TrashTrigger_min=8,score_TrashTrigger=8] ~ ~ ~ entitydata @e[x=446,y=92,z=-486,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
execute @a[score_TrashTrigger_min=8,score_TrashTrigger=8] ~ ~ ~ playsound minecraft:entity.arrow.shoot ambient @a[score_TrashTrigger_min=8,score_TrashTrigger=8] ~ ~ ~ 100 1 1 1

#Tuesday Loot
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=8,score_TrashTrigger=8,score_rng_min=65,score_rng=70] ender_eye 1 0 {display:{Lore:["A long and durable rope.","Use it to escape instantly","from a cave."]}}
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=8,score_TrashTrigger=8,score_rng_min=71,score_rng=75] pixelmon:max_repel
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=8,score_TrashTrigger=8,score_rng_min=76,score_rng=80] pixelmon:nugget
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=8,score_TrashTrigger=8,score_rng_min=81,score_rng=85] pixelmon:hp_up
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=8,score_TrashTrigger=8,score_rng_min=86,score_rng=90] pixelmon:iron
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=8,score_TrashTrigger=8,score_rng_min=91,score_rng=95] pixelmon:protein
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=8,score_TrashTrigger=8,score_rng_min=96,score_rng=100] pixelmon:big_nugget

execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=8,score_TrashTrigger=8,score_rng_min=0,score_rng=51] rotom,f:0,lvl:38
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=8,score_TrashTrigger=8,score_rng_min=52,score_rng=54] rotom,f:1,lvl:38
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=8,score_TrashTrigger=8,score_rng_min=55,score_rng=56] rotom,f:2,lvl:38
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=8,score_TrashTrigger=8,score_rng_min=57,score_rng=59] rotom,f:3,lvl:38
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=8,score_TrashTrigger=8,score_rng_min=60,score_rng=62] rotom,f:4,lvl:38
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=8,score_TrashTrigger=8,score_rng_min=63,score_rng=64] rotom,f:5,lvl:38

execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @a[score_TrashTrigger_min=8,score_TrashTrigger=8] ~ ~ ~ /execute @e[x=446,y=92,z=-486,r=3,type=armor_stand] ~ ~ ~ /particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @a[score_TrashTrigger_min=8,score_TrashTrigger=8] ~ ~ ~ /setblock -687 100 1279 minecraft:gold_block
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ scoreboard players set @a[score_TrashTrigger_min=8,score_TrashTrigger=8] TrashTrigger 0


#Non-special day loot
give @a[score_TrashTrigger_min=8,score_TrashTrigger=8,score_rng_min=65,score_rng=70] pixelmon:dusk_ball
give @a[score_TrashTrigger_min=8,score_TrashTrigger=8,score_rng_min=71,score_rng=75] ender_eye 1 0 {display:{Lore:["A long and durable rope.","Use it to escape instantly","from a cave."]}}
give @a[score_TrashTrigger_min=8,score_TrashTrigger=8,score_rng_min=76,score_rng=80] pixelmon:super_repel
give @a[score_TrashTrigger_min=8,score_TrashTrigger=8,score_rng_min=81,score_rng=85] pixelmon:calcium
give @a[score_TrashTrigger_min=8,score_TrashTrigger=8,score_rng_min=86,score_rng=90] pixelmon:carbos
give @a[score_TrashTrigger_min=8,score_TrashTrigger=8,score_rng_min=91,score_rng=95] pixelmon:zinc
give @a[score_TrashTrigger_min=8,score_TrashTrigger=8,score_rng_min=96,score_rng=100] pixelmon:max_elixir

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=8,score_TrashTrigger=8,score_rng_min=0,score_rng=51] Trubbish,lvl:35
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=8,score_TrashTrigger=8,score_rng_min=52,score_rng=64] Garbodor,lvl:37

execute @a[score_TrashTrigger_min=8,score_TrashTrigger=8] ~ ~ ~ /execute @e[x=446,y=92,z=-486,r=3,type=armor_stand] ~ ~ ~ /particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute @a[score_TrashTrigger_min=8,score_TrashTrigger=8] ~ ~ ~ /setblock -687 100 1279 minecraft:gold_block
scoreboard players set @a[score_TrashTrigger_min=8,score_TrashTrigger=8] TrashTrigger 0






#Lost Hotel Trash can No 4
execute @a[score_TrashTrigger_min=9,score_TrashTrigger=9] ~ ~ ~ /tp @e[x=413,y=92,z=-450,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[score_TrashTrigger_min=9,score_TrashTrigger=9] ~ ~ ~ entitydata @e[x=413,y=92,z=-450,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
execute @a[score_TrashTrigger_min=9,score_TrashTrigger=9] ~ ~ ~ playsound minecraft:entity.arrow.shoot ambient @a[score_TrashTrigger_min=9,score_TrashTrigger=9] ~ ~ ~ 100 1 1 1

#Tuesday Loot
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=9,score_TrashTrigger=9,score_rng_min=65,score_rng=70] ender_eye 1 0 {display:{Lore:["A long and durable rope.","Use it to escape instantly","from a cave."]}}
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=9,score_TrashTrigger=9,score_rng_min=71,score_rng=75] pixelmon:max_repel
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=9,score_TrashTrigger=9,score_rng_min=76,score_rng=80] pixelmon:nugget
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=9,score_TrashTrigger=9,score_rng_min=81,score_rng=85] pixelmon:hp_up
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=9,score_TrashTrigger=9,score_rng_min=86,score_rng=90] pixelmon:iron
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=9,score_TrashTrigger=9,score_rng_min=91,score_rng=95] pixelmon:protein
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=9,score_TrashTrigger=9,score_rng_min=96,score_rng=100] pixelmon:big_nugget

execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=9,score_TrashTrigger=9,score_rng_min=0,score_rng=51] rotom,f:0,lvl:38
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=9,score_TrashTrigger=9,score_rng_min=52,score_rng=54] rotom,f:1,lvl:38
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=9,score_TrashTrigger=9,score_rng_min=55,score_rng=56] rotom,f:2,lvl:38
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=9,score_TrashTrigger=9,score_rng_min=57,score_rng=59] rotom,f:3,lvl:38
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=9,score_TrashTrigger=9,score_rng_min=60,score_rng=62] rotom,f:4,lvl:38
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=9,score_TrashTrigger=9,score_rng_min=63,score_rng=64] rotom,f:5,lvl:38

execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @a[score_TrashTrigger_min=9,score_TrashTrigger=9] ~ ~ ~ /execute @e[x=413,y=92,z=-450,r=3,type=armor_stand] ~ ~ ~ /particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @a[score_TrashTrigger_min=9,score_TrashTrigger=9] ~ ~ ~ /setblock -687 100 1280 minecraft:gold_block
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ scoreboard players set @a[score_TrashTrigger_min=9,score_TrashTrigger=9] TrashTrigger 0


#Non-special day loot
give @a[score_TrashTrigger_min=9,score_TrashTrigger=9,score_rng_min=65,score_rng=70] pixelmon:dusk_ball
give @a[score_TrashTrigger_min=9,score_TrashTrigger=9,score_rng_min=71,score_rng=75] ender_eye 1 0 {display:{Lore:["A long and durable rope.","Use it to escape instantly","from a cave."]}}
give @a[score_TrashTrigger_min=9,score_TrashTrigger=9,score_rng_min=76,score_rng=80] pixelmon:super_repel
give @a[score_TrashTrigger_min=9,score_TrashTrigger=9,score_rng_min=81,score_rng=85] pixelmon:calcium
give @a[score_TrashTrigger_min=9,score_TrashTrigger=9,score_rng_min=86,score_rng=90] pixelmon:carbos
give @a[score_TrashTrigger_min=9,score_TrashTrigger=9,score_rng_min=91,score_rng=95] pixelmon:zinc
give @a[score_TrashTrigger_min=9,score_TrashTrigger=9,score_rng_min=96,score_rng=100] pixelmon:max_elixir

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=9,score_TrashTrigger=9,score_rng_min=0,score_rng=51] Trubbish,lvl:35
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=9,score_TrashTrigger=9,score_rng_min=52,score_rng=64] Garbodor,lvl:37

execute @a[score_TrashTrigger_min=9,score_TrashTrigger=9] ~ ~ ~ /execute @e[x=413,y=92,z=-450,r=3,type=armor_stand] ~ ~ ~ /particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute @a[score_TrashTrigger_min=9,score_TrashTrigger=9] ~ ~ ~ /setblock -687 100 1280 minecraft:gold_block
scoreboard players set @a[score_TrashTrigger_min=9,score_TrashTrigger=9] TrashTrigger 0






#Lost Hotel Trash can No 4
execute @a[score_TrashTrigger_min=10,score_TrashTrigger=10] ~ ~ ~ /tp @e[x=497,y=92,z=-413,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[score_TrashTrigger_min=10,score_TrashTrigger=10] ~ ~ ~ entitydata @e[x=497,y=92,z=-413,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
execute @a[score_TrashTrigger_min=10,score_TrashTrigger=10] ~ ~ ~ playsound minecraft:entity.arrow.shoot ambient @a[score_TrashTrigger_min=10,score_TrashTrigger=10] ~ ~ ~ 100 1 1 1

#Tuesday Loot
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=10,score_TrashTrigger=10,score_rng_min=65,score_rng=70] ender_eye 1 0 {display:{Lore:["A long and durable rope.","Use it to escape instantly","from a cave."]}}
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=10,score_TrashTrigger=10,score_rng_min=71,score_rng=75] pixelmon:max_repel
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=10,score_TrashTrigger=10,score_rng_min=76,score_rng=80] pixelmon:nugget
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=10,score_TrashTrigger=10,score_rng_min=81,score_rng=85] pixelmon:hp_up
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=10,score_TrashTrigger=10,score_rng_min=86,score_rng=90] pixelmon:iron
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=10,score_TrashTrigger=10,score_rng_min=91,score_rng=95] pixelmon:protein
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=10,score_TrashTrigger=10,score_rng_min=96,score_rng=100] pixelmon:big_nugget

execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=10,score_TrashTrigger=10,score_rng_min=0,score_rng=51] rotom,f:0,lvl:38
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=10,score_TrashTrigger=10,score_rng_min=52,score_rng=54] rotom,f:1,lvl:38
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=10,score_TrashTrigger=10,score_rng_min=55,score_rng=56] rotom,f:2,lvl:38
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=10,score_TrashTrigger=10,score_rng_min=57,score_rng=59] rotom,f:3,lvl:38
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=10,score_TrashTrigger=10,score_rng_min=60,score_rng=62] rotom,f:4,lvl:38
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=10,score_TrashTrigger=10,score_rng_min=63,score_rng=64] rotom,f:5,lvl:38

execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @a[score_TrashTrigger_min=10,score_TrashTrigger=10] ~ ~ ~ /execute @e[x=497,y=92,z=-413,r=3,type=armor_stand] ~ ~ ~ /particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @a[score_TrashTrigger_min=10,score_TrashTrigger=10] ~ ~ ~ /setblock -687 100 1281 minecraft:gold_block
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ scoreboard players set @a[score_TrashTrigger_min=10,score_TrashTrigger=10] TrashTrigger 0


#Non-special day loot
give @a[score_TrashTrigger_min=10,score_TrashTrigger=10,score_rng_min=65,score_rng=70] pixelmon:dusk_ball
give @a[score_TrashTrigger_min=10,score_TrashTrigger=10,score_rng_min=71,score_rng=75] ender_eye 1 0 {display:{Lore:["A long and durable rope.","Use it to escape instantly","from a cave."]}}
give @a[score_TrashTrigger_min=10,score_TrashTrigger=10,score_rng_min=76,score_rng=80] pixelmon:super_repel
give @a[score_TrashTrigger_min=10,score_TrashTrigger=10,score_rng_min=81,score_rng=85] pixelmon:calcium
give @a[score_TrashTrigger_min=10,score_TrashTrigger=10,score_rng_min=86,score_rng=90] pixelmon:carbos
give @a[score_TrashTrigger_min=10,score_TrashTrigger=10,score_rng_min=91,score_rng=95] pixelmon:zinc
give @a[score_TrashTrigger_min=10,score_TrashTrigger=10,score_rng_min=96,score_rng=100] pixelmon:max_elixir

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=10,score_TrashTrigger=10,score_rng_min=0,score_rng=51] Trubbish,lvl:35
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=10,score_TrashTrigger=10,score_rng_min=52,score_rng=64] Garbodor,lvl:37

execute @a[score_TrashTrigger_min=10,score_TrashTrigger=10] ~ ~ ~ /execute @e[x=497,y=92,z=-413,r=3,type=armor_stand] ~ ~ ~ /particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute @a[score_TrashTrigger_min=10,score_TrashTrigger=10] ~ ~ ~ /setblock -687 100 1281 minecraft:gold_block
scoreboard players set @a[score_TrashTrigger_min=10,score_TrashTrigger=10] TrashTrigger 0






#Lost Hotel Trash can No 5
execute @a[score_TrashTrigger_min=11,score_TrashTrigger=11] ~ ~ ~ /tp @e[x=416,y=92,z=-377,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[score_TrashTrigger_min=11,score_TrashTrigger=11] ~ ~ ~ entitydata @e[x=416,y=92,z=-377,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
execute @a[score_TrashTrigger_min=11,score_TrashTrigger=11] ~ ~ ~ playsound minecraft:entity.arrow.shoot ambient @a[score_TrashTrigger_min=11,score_TrashTrigger=11] ~ ~ ~ 100 1 1 1

#Tuesday Loot
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=11,score_TrashTrigger=11,score_rng_min=65,score_rng=70] ender_eye 1 0 {display:{Lore:["A long and durable rope.","Use it to escape instantly","from a cave."]}}
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=11,score_TrashTrigger=11,score_rng_min=71,score_rng=75] pixelmon:max_repel
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=11,score_TrashTrigger=11,score_rng_min=76,score_rng=80] pixelmon:nugget
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=11,score_TrashTrigger=11,score_rng_min=81,score_rng=85] pixelmon:hp_up
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=11,score_TrashTrigger=11,score_rng_min=86,score_rng=90] pixelmon:iron
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=11,score_TrashTrigger=11,score_rng_min=91,score_rng=95] pixelmon:protein
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ give @a[score_TrashTrigger_min=11,score_TrashTrigger=11,score_rng_min=96,score_rng=100] pixelmon:big_nugget

execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=11,score_TrashTrigger=11,score_rng_min=0,score_rng=51] rotom,f:0,lvl:38
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=11,score_TrashTrigger=11,score_rng_min=52,score_rng=54] rotom,f:1,lvl:38
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=11,score_TrashTrigger=11,score_rng_min=55,score_rng=56] rotom,f:2,lvl:38
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=11,score_TrashTrigger=11,score_rng_min=57,score_rng=59] rotom,f:3,lvl:38
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=11,score_TrashTrigger=11,score_rng_min=60,score_rng=62] rotom,f:4,lvl:38
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=11,score_TrashTrigger=11,score_rng_min=63,score_rng=64] rotom,f:5,lvl:38

execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @a[score_TrashTrigger_min=11,score_TrashTrigger=11] ~ ~ ~ /execute @e[x=416,y=92,z=-377,r=3,type=armor_stand] ~ ~ ~ /particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @a[score_TrashTrigger_min=11,score_TrashTrigger=11] ~ ~ ~ /setblock -687 100 1282 minecraft:gold_block
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ scoreboard players set @a[score_TrashTrigger_min=11,score_TrashTrigger=11] TrashTrigger 0


#Non-special day loot
give @a[score_TrashTrigger_min=11,score_TrashTrigger=11,score_rng_min=65,score_rng=70] pixelmon:dusk_ball
give @a[score_TrashTrigger_min=11,score_TrashTrigger=11,score_rng_min=71,score_rng=75] ender_eye 1 0 {display:{Lore:["A long and durable rope.","Use it to escape instantly","from a cave."]}}
give @a[score_TrashTrigger_min=11,score_TrashTrigger=11,score_rng_min=76,score_rng=80] pixelmon:super_repel
give @a[score_TrashTrigger_min=11,score_TrashTrigger=11,score_rng_min=81,score_rng=85] pixelmon:calcium
give @a[score_TrashTrigger_min=11,score_TrashTrigger=11,score_rng_min=86,score_rng=90] pixelmon:carbos
give @a[score_TrashTrigger_min=11,score_TrashTrigger=11,score_rng_min=91,score_rng=95] pixelmon:zinc
give @a[score_TrashTrigger_min=11,score_TrashTrigger=11,score_rng_min=96,score_rng=100] pixelmon:max_elixir

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=11,score_TrashTrigger=11,score_rng_min=0,score_rng=51] Trubbish,lvl:35
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=11,score_TrashTrigger=11,score_rng_min=52,score_rng=64] Garbodor,lvl:37

execute @a[score_TrashTrigger_min=11,score_TrashTrigger=11] ~ ~ ~ /execute @e[x=416,y=92,z=-377,r=3,type=armor_stand] ~ ~ ~ /particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute @a[score_TrashTrigger_min=11,score_TrashTrigger=11] ~ ~ ~ /setblock -687 100 1282 minecraft:gold_block
scoreboard players set @a[score_TrashTrigger_min=11,score_TrashTrigger=11] TrashTrigger 0







#-------------------------------------------------------------------------------Pokemon Village----------------------------------------------------------------------------------------------
#Pokemon Village Trash Can No 1
execute @a[score_TrashTrigger_min=2,score_TrashTrigger=2] ~ ~ ~ /tp @e[x=794,y=93,z=641,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[score_TrashTrigger_min=2,score_TrashTrigger=2] ~ ~ ~ entitydata @e[x=794,y=93,z=641,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
execute @a[score_TrashTrigger_min=2,score_TrashTrigger=2] ~ ~ ~ playsound minecraft:entity.arrow.shoot ambient @a[score_TrashTrigger_min=2,score_TrashTrigger=2] ~ ~ ~ 100 1 1 1

#Tuesday Loot
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=2,score_TrashTrigger=2,score_rng_min=65,score_rng=70] pixelmon:big_mushroom
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=2,score_TrashTrigger=2,score_rng_min=71,score_rng=75] minecraft:lingering_potion 1 0 {display:{Lore:["A tool used to attract","hoards of Pokemon."]},HideFlags:32}
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=2,score_TrashTrigger=2,score_rng_min=76,score_rng=80] pixelmon:prism_scale
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=2,score_TrashTrigger=2,score_rng_min=81,score_rng=85] pixelmon:balm_mushroom
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=2,score_TrashTrigger=2,score_rng_min=86,score_rng=90] pixelmon:heal_powder
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=2,score_TrashTrigger=2,score_rng_min=91,score_rng=95] pixelmon:revival_herb
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=2,score_TrashTrigger=2,score_rng_min=96,score_rng=100] pixelmon:eviolite

execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=2,score_TrashTrigger=2,score_rng_min=0,score_rng=64] banette,lvl:50

execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ execute @a[score_TrashTrigger_min=2,score_TrashTrigger=2] ~ ~ ~ /execute @e[x=794,y=93,z=641,r=3,type=armor_stand] ~ ~ ~ /particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ execute @a[score_TrashTrigger_min=2,score_TrashTrigger=2] ~ ~ ~ /setblock -687 100 1273 minecraft:gold_block
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ scoreboard players set @a[score_TrashTrigger_min=2,score_TrashTrigger=2] TrashTrigger 0


#Non-special day loot
give @a[score_TrashTrigger_min=2,score_TrashTrigger=2,score_rng_min=65,score_rng=70] minecraft:lingering_potion 1 0 {display:{Lore:["A tool used to attract","hoards of Pokemon."]},HideFlags:32}
give @a[score_TrashTrigger_min=2,score_TrashTrigger=2,score_rng_min=71,score_rng=75] pixelmon:pretty_wing
give @a[score_TrashTrigger_min=2,score_TrashTrigger=2,score_rng_min=76,score_rng=80] pixelmon:tiny_mushroom
give @a[score_TrashTrigger_min=2,score_TrashTrigger=2,score_rng_min=81,score_rng=85] pixelmon:big_mushroom
give @a[score_TrashTrigger_min=2,score_TrashTrigger=2,score_rng_min=86,score_rng=90] pixelmon:max_revive
give @a[score_TrashTrigger_min=2,score_TrashTrigger=2,score_rng_min=91,score_rng=95] pixelmon:revival_herb
give @a[score_TrashTrigger_min=2,score_TrashTrigger=2,score_rng_min=96,score_rng=100] pixelmon:mental_herb

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=2,score_TrashTrigger=2,score_rng_min=0,score_rng=64] garbodor,lvl:50

execute @a[score_TrashTrigger_min=2,score_TrashTrigger=2] ~ ~ ~ /execute @e[x=794,y=93,z=641,r=3,type=armor_stand] ~ ~ ~ /particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute @a[score_TrashTrigger_min=2,score_TrashTrigger=2] ~ ~ ~ /setblock -687 100 1273 minecraft:gold_block
scoreboard players set @a[score_TrashTrigger_min=2,score_TrashTrigger=2] TrashTrigger 0




#Pokemon Village Trash Can No 2
execute @a[score_TrashTrigger_min=3,score_TrashTrigger=3] ~ ~ ~ /tp @e[x=824,y=93,z=697,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[score_TrashTrigger_min=3,score_TrashTrigger=3] ~ ~ ~ entitydata @e[x=824,y=93,z=697,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
execute @a[score_TrashTrigger_min=3,score_TrashTrigger=3] ~ ~ ~ playsound minecraft:entity.arrow.shoot ambient @a[score_TrashTrigger_min=3,score_TrashTrigger=3] ~ ~ ~ 100 1 1 1

#Tuesday Loot
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=3,score_TrashTrigger=3,score_rng_min=65,score_rng=70] pixelmon:big_mushroom
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=3,score_TrashTrigger=3,score_rng_min=71,score_rng=75] minecraft:lingering_potion 1 0 {display:{Lore:["A tool used to attract","hoards of Pokemon."]},HideFlags:32}
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=3,score_TrashTrigger=3,score_rng_min=76,score_rng=80] pixelmon:prism_scale
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=3,score_TrashTrigger=3,score_rng_min=81,score_rng=85] pixelmon:balm_mushroom
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=3,score_TrashTrigger=3,score_rng_min=86,score_rng=90] pixelmon:heal_powder
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=3,score_TrashTrigger=3,score_rng_min=91,score_rng=95] pixelmon:revival_herb
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=3,score_TrashTrigger=3,score_rng_min=96,score_rng=100] pixelmon:eviolite

execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=3,score_TrashTrigger=3,score_rng_min=0,score_rng=64] banette,lvl:50

execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ execute @a[score_TrashTrigger_min=3,score_TrashTrigger=3] ~ ~ ~ /execute @e[x=824,y=93,z=697,r=3,type=armor_stand] ~ ~ ~ /particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ execute @a[score_TrashTrigger_min=3,score_TrashTrigger=3] ~ ~ ~ /setblock -687 100 1274 minecraft:gold_block
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ scoreboard players set @a[score_TrashTrigger_min=3,score_TrashTrigger=3] TrashTrigger 0


#Non-special day loot
give @a[score_TrashTrigger_min=3,score_TrashTrigger=3,score_rng_min=65,score_rng=70] minecraft:lingering_potion 1 0 {display:{Lore:["A tool used to attract","hoards of Pokemon."]},HideFlags:32}
give @a[score_TrashTrigger_min=3,score_TrashTrigger=3,score_rng_min=71,score_rng=75] pixelmon:pretty_wing
give @a[score_TrashTrigger_min=3,score_TrashTrigger=3,score_rng_min=76,score_rng=80] pixelmon:tiny_mushroom
give @a[score_TrashTrigger_min=3,score_TrashTrigger=3,score_rng_min=81,score_rng=85] pixelmon:big_mushroom
give @a[score_TrashTrigger_min=3,score_TrashTrigger=3,score_rng_min=86,score_rng=90] pixelmon:max_revive
give @a[score_TrashTrigger_min=3,score_TrashTrigger=3,score_rng_min=91,score_rng=95] pixelmon:revival_herb
give @a[score_TrashTrigger_min=3,score_TrashTrigger=3,score_rng_min=96,score_rng=100] pixelmon:mental_herb

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=3,score_TrashTrigger=3,score_rng_min=0,score_rng=64] garbodor,lvl:50

execute @a[score_TrashTrigger_min=3,score_TrashTrigger=3] ~ ~ ~ /execute @e[x=824,y=93,z=697,r=3,type=armor_stand] ~ ~ ~ /particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute @a[score_TrashTrigger_min=3,score_TrashTrigger=3] ~ ~ ~ /setblock -687 100 1274 minecraft:gold_block
scoreboard players set @a[score_TrashTrigger_min=3,score_TrashTrigger=3] TrashTrigger 0




#Pokemon Village Trash Can No 3
execute @a[score_TrashTrigger_min=4,score_TrashTrigger=4] ~ ~ ~ /tp @e[x=800,y=93,z=737,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[score_TrashTrigger_min=4,score_TrashTrigger=4] ~ ~ ~ entitydata @e[x=800,y=93,z=737,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
execute @a[score_TrashTrigger_min=4,score_TrashTrigger=4] ~ ~ ~ playsound minecraft:entity.arrow.shoot ambient @a[score_TrashTrigger_min=4,score_TrashTrigger=4] ~ ~ ~ 100 1 1 1

#Tuesday Loot
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=4,score_TrashTrigger=4,score_rng_min=65,score_rng=70] pixelmon:big_mushroom
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=4,score_TrashTrigger=4,score_rng_min=71,score_rng=75] minecraft:lingering_potion 1 0 {display:{Lore:["A tool used to attract","hoards of Pokemon."]},HideFlags:32}
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=4,score_TrashTrigger=4,score_rng_min=76,score_rng=80] pixelmon:prism_scale
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=4,score_TrashTrigger=4,score_rng_min=81,score_rng=85] pixelmon:balm_mushroom
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=4,score_TrashTrigger=4,score_rng_min=86,score_rng=90] pixelmon:heal_powder
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=4,score_TrashTrigger=4,score_rng_min=91,score_rng=95] pixelmon:revival_herb
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=4,score_TrashTrigger=4,score_rng_min=96,score_rng=100] pixelmon:eviolite

execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=4,score_TrashTrigger=4,score_rng_min=0,score_rng=64] banette,lvl:50

execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ execute @a[score_TrashTrigger_min=4,score_TrashTrigger=4] ~ ~ ~ /execute @e[x=800,y=93,z=737,r=3,type=armor_stand] ~ ~ ~ /particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ execute @a[score_TrashTrigger_min=4,score_TrashTrigger=4] ~ ~ ~ /setblock -687 100 1275 minecraft:gold_block
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ scoreboard players set @a[score_TrashTrigger_min=4,score_TrashTrigger=4] TrashTrigger 0


#Non-special day loot
give @a[score_TrashTrigger_min=4,score_TrashTrigger=4,score_rng_min=65,score_rng=70] minecraft:lingering_potion 1 0 {display:{Lore:["A tool used to attract","hoards of Pokemon."]},HideFlags:32}
give @a[score_TrashTrigger_min=4,score_TrashTrigger=4,score_rng_min=71,score_rng=75] pixelmon:pretty_wing
give @a[score_TrashTrigger_min=4,score_TrashTrigger=4,score_rng_min=76,score_rng=80] pixelmon:tiny_mushroom
give @a[score_TrashTrigger_min=4,score_TrashTrigger=4,score_rng_min=81,score_rng=85] pixelmon:big_mushroom
give @a[score_TrashTrigger_min=4,score_TrashTrigger=4,score_rng_min=86,score_rng=90] pixelmon:max_revive
give @a[score_TrashTrigger_min=4,score_TrashTrigger=4,score_rng_min=91,score_rng=95] pixelmon:revival_herb
give @a[score_TrashTrigger_min=4,score_TrashTrigger=4,score_rng_min=96,score_rng=100] pixelmon:mental_herb

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=4,score_TrashTrigger=4,score_rng_min=0,score_rng=64] garbodor,lvl:50

execute @a[score_TrashTrigger_min=4,score_TrashTrigger=4] ~ ~ ~ /execute @e[x=800,y=93,z=737,r=3,type=armor_stand] ~ ~ ~ /particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute @a[score_TrashTrigger_min=4,score_TrashTrigger=4] ~ ~ ~ /setblock -687 100 1275 minecraft:gold_block
scoreboard players set @a[score_TrashTrigger_min=4,score_TrashTrigger=4] TrashTrigger 0





#Pokemon Village Trash Can No 4
execute @a[score_TrashTrigger_min=5,score_TrashTrigger=5] ~ ~ ~ /tp @e[x=830,y=93,z=744,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[score_TrashTrigger_min=5,score_TrashTrigger=5] ~ ~ ~ entitydata @e[x=830,y=93,z=744,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
execute @a[score_TrashTrigger_min=5,score_TrashTrigger=5] ~ ~ ~ playsound minecraft:entity.arrow.shoot ambient @a[score_TrashTrigger_min=5,score_TrashTrigger=5] ~ ~ ~ 100 1 1 1

#Tuesday Loot
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=5,score_TrashTrigger=5,score_rng_min=65,score_rng=70] pixelmon:big_mushroom
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=5,score_TrashTrigger=5,score_rng_min=71,score_rng=75] minecraft:lingering_potion 1 0 {display:{Lore:["A tool used to attract","hoards of Pokemon."]},HideFlags:32}
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=5,score_TrashTrigger=5,score_rng_min=76,score_rng=80] pixelmon:prism_scale
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=5,score_TrashTrigger=5,score_rng_min=81,score_rng=85] pixelmon:balm_mushroom
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=5,score_TrashTrigger=5,score_rng_min=86,score_rng=90] pixelmon:heal_powder
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=5,score_TrashTrigger=5,score_rng_min=91,score_rng=95] pixelmon:revival_herb
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=5,score_TrashTrigger=5,score_rng_min=96,score_rng=100] pixelmon:eviolite

execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=5,score_TrashTrigger=5,score_rng_min=0,score_rng=64] banette,lvl:50

execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ execute @a[score_TrashTrigger_min=5,score_TrashTrigger=5] ~ ~ ~ /execute @e[x=830,y=93,z=744,r=3,type=armor_stand] ~ ~ ~ /particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ execute @a[score_TrashTrigger_min=5,score_TrashTrigger=5] ~ ~ ~ /setblock -687 100 1276 minecraft:gold_block
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ scoreboard players set @a[score_TrashTrigger_min=5,score_TrashTrigger=5] TrashTrigger 0


#Non-special day loot
give @a[score_TrashTrigger_min=5,score_TrashTrigger=5,score_rng_min=65,score_rng=70] minecraft:lingering_potion 1 0 {display:{Lore:["A tool used to attract","hoards of Pokemon."]},HideFlags:32}
give @a[score_TrashTrigger_min=5,score_TrashTrigger=5,score_rng_min=71,score_rng=75] pixelmon:pretty_wing
give @a[score_TrashTrigger_min=5,score_TrashTrigger=5,score_rng_min=76,score_rng=80] pixelmon:tiny_mushroom
give @a[score_TrashTrigger_min=5,score_TrashTrigger=5,score_rng_min=81,score_rng=85] pixelmon:big_mushroom
give @a[score_TrashTrigger_min=5,score_TrashTrigger=5,score_rng_min=86,score_rng=90] pixelmon:max_revive
give @a[score_TrashTrigger_min=5,score_TrashTrigger=5,score_rng_min=91,score_rng=95] pixelmon:revival_herb
give @a[score_TrashTrigger_min=5,score_TrashTrigger=5,score_rng_min=96,score_rng=100] pixelmon:mental_herb

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=5,score_TrashTrigger=5,score_rng_min=0,score_rng=64] garbodor,lvl:50

execute @a[score_TrashTrigger_min=5,score_TrashTrigger=5] ~ ~ ~ /execute @e[x=830,y=93,z=744,r=3,type=armor_stand] ~ ~ ~ /particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute @a[score_TrashTrigger_min=5,score_TrashTrigger=5] ~ ~ ~ /setblock -687 100 1276 minecraft:gold_block
scoreboard players set @a[score_TrashTrigger_min=5,score_TrashTrigger=5] TrashTrigger 0







#Pokemon Village Trash Can No 5
execute @a[score_TrashTrigger_min=6,score_TrashTrigger=6] ~ ~ ~ /tp @e[x=849,y=93,z=741,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[score_TrashTrigger_min=6,score_TrashTrigger=6] ~ ~ ~ entitydata @e[x=849,y=93,z=741,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:49s}]}
execute @a[score_TrashTrigger_min=6,score_TrashTrigger=6] ~ ~ ~ playsound minecraft:entity.arrow.shoot ambient @a[score_TrashTrigger_min=6,score_TrashTrigger=6] ~ ~ ~ 100 1 1 1

#Tuesday Loot
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=6,score_TrashTrigger=6,score_rng_min=65,score_rng=70] pixelmon:big_mushroom
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=6,score_TrashTrigger=6,score_rng_min=71,score_rng=75] minecraft:lingering_potion 1 0 {display:{Lore:["A tool used to attract","hoards of Pokemon."]},HideFlags:32}
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=6,score_TrashTrigger=6,score_rng_min=76,score_rng=80] pixelmon:prism_scale
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=6,score_TrashTrigger=6,score_rng_min=81,score_rng=85] pixelmon:balm_mushroom
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=6,score_TrashTrigger=6,score_rng_min=86,score_rng=90] pixelmon:heal_powder
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=6,score_TrashTrigger=6,score_rng_min=91,score_rng=95] pixelmon:revival_herb
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ give @a[score_TrashTrigger_min=6,score_TrashTrigger=6,score_rng_min=96,score_rng=100] pixelmon:eviolite

execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=6,score_TrashTrigger=6,score_rng_min=0,score_rng=64] banette,lvl:50

execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ execute @a[score_TrashTrigger_min=6,score_TrashTrigger=6] ~ ~ ~ /execute @e[x=849,y=93,z=741,r=3,type=armor_stand] ~ ~ ~ /particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ execute @a[score_TrashTrigger_min=6,score_TrashTrigger=6] ~ ~ ~ /setblock -687 100 1277 minecraft:gold_block
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ scoreboard players set @a[score_TrashTrigger_min=6,score_TrashTrigger=6] TrashTrigger 0


#Non-special day loot
give @a[score_TrashTrigger_min=6,score_TrashTrigger=6,score_rng_min=65,score_rng=70] minecraft:lingering_potion 1 0 {display:{Lore:["A tool used to attract","hoards of Pokemon."]},HideFlags:32}
give @a[score_TrashTrigger_min=6,score_TrashTrigger=6,score_rng_min=71,score_rng=75] pixelmon:pretty_wing
give @a[score_TrashTrigger_min=6,score_TrashTrigger=6,score_rng_min=76,score_rng=80] pixelmon:tiny_mushroom
give @a[score_TrashTrigger_min=6,score_TrashTrigger=6,score_rng_min=81,score_rng=85] pixelmon:big_mushroom
give @a[score_TrashTrigger_min=6,score_TrashTrigger=6,score_rng_min=86,score_rng=90] pixelmon:max_revive
give @a[score_TrashTrigger_min=6,score_TrashTrigger=6,score_rng_min=91,score_rng=95] pixelmon:revival_herb
give @a[score_TrashTrigger_min=6,score_TrashTrigger=6,score_rng_min=96,score_rng=100] pixelmon:mental_herb

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[score_TrashTrigger_min=6,score_TrashTrigger=6,score_rng_min=0,score_rng=64] garbodor,lvl:50

execute @a[score_TrashTrigger_min=6,score_TrashTrigger=6] ~ ~ ~ /execute @e[x=849,y=93,z=741,r=3,type=armor_stand] ~ ~ ~ /particle largeexplode ~ ~1 ~ 0 2 1 1 10
execute @a[score_TrashTrigger_min=6,score_TrashTrigger=6] ~ ~ ~ /setblock -687 100 1277 minecraft:gold_block
scoreboard players set @a[score_TrashTrigger_min=6,score_TrashTrigger=6] TrashTrigger 0
