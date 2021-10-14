#/tedit add INTERACT /tellraw @pl {"text":"It's a cracked boulder. Would you like to break it?","italic":true,"color":"gray"}
#/tedit add INTERACT /tellraw @pl ["",{"text":"["},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger RockTrigger set 1"}},{"text":"]"}]
#/tedit add INTERACT /scoreboard players enable @pl RockTrigger

#Broken entitydata
#{ForgeData:{trainercommands:{interact:["/tellraw @pl {\"text\":\"It's a crushed rock!\",\"italic\":true,\"color\":\"gray\"}"]}}}

#Full rock entitydata
#{ForgeData:{trainercommands:{interact:["/tellraw @pl {\"text\":\"It's a cracked boulder. Would you like to break it?\",\"italic\":true,\"color\":\"gray\"}","/tellraw @pl [\"\",{\"text\":\"[\"},{\"text\":\"Yes\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger RockTrigger set 1\"}},{\"text\":\"]\"}]","/scoreboard players enable @pl RockTrigger"]}}}

#If player can't use Rock Smash yet
tellraw @a[tag=!RockSmash,score_RockTrigger_min=1] {"text":"You don't know Rock Smash yet!","italic":true,"color":"gray"}
scoreboard players set @a[tag=!RockSmash,score_RockTrigger_min=1] RockTrigger 0

#------------------------------------------------------------------------------------------------------------------

#General Odds
#50% - Pokemon
#31% - Items
#20% - Nothing


#Glittering Cave Odds
#50% - Fossils post-Elite Four
#50% - Nothing



#------------------------------------------------------------------------------------------------------------------



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








#------------------------------------------------------------------------------------------------------------------


#1 (Test block)
tellraw @a[tag=RockSmash,score_RockTrigger_min=1,score_RockTrigger=1] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=1,score_RockTrigger=1] ~ ~ ~ /tp @e[x=-507,y=100,z=1046,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=1,score_RockTrigger=1] ~ ~ ~ entitydata @e[x=-507,y=100,z=1046,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=1,score_RockTrigger=1] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=1,score_RockTrigger=1] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=1,score_RockTrigger=1,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=1,score_RockTrigger=1,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=1,score_RockTrigger=1,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=1,score_RockTrigger=1,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=1,score_RockTrigger=1,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=1,score_RockTrigger=1,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=1,score_RockTrigger=1,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=1,score_RockTrigger=1,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=1,score_RockTrigger=1,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=1,score_RockTrigger=1,score_rng_min=101,score_rng=104] pixelmon:star_piece
playsound pixelmon:pixelmon.block.pokelootobtained ambient @a[tag=RockSmash,score_RockTrigger_min=1,score_RockTrigger=1,score_rng_min=65,score_rng=104] ~ ~ ~ 100 1 1

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=1,score_RockTrigger=1,score_rng_min=0,score_rng=21] Dwebble,lvl:14
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=1,score_RockTrigger=1,score_rng_min=32,score_rng=64] Binacle,lvl:14

execute @a[tag=RockSmash,score_RockTrigger_min=1,score_RockTrigger=1] ~ ~ ~ /execute @e[x=-507,y=100,z=1046,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=1,score_RockTrigger=1] ~ ~ ~ /setblock -500 100 1055 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=1,score_RockTrigger=1] RockTrigger 0



#------------------------------------------------------------------------------------------------------------------
#Playsound
playsound pixelmon:pixelmon.block.pokelootobtained ambient @a[tag=RockSmash,score_RockTrigger_min=2,score_RockTrigger=6,score_rng_min=65,score_rng=104] ~ ~ ~ 100 1 1

#Cyllage City #1
tellraw @a[tag=RockSmash,score_RockTrigger_min=2,score_RockTrigger=2] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=2,score_RockTrigger=2] ~ ~ ~ /tp @e[x=-2168,y=99,z=-193,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=2,score_RockTrigger=2] ~ ~ ~ entitydata @e[x=-2168,y=99,z=-193,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=2,score_RockTrigger=2] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=2,score_RockTrigger=2] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=2,score_RockTrigger=2,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=2,score_RockTrigger=2,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=2,score_RockTrigger=2,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=2,score_RockTrigger=2,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=2,score_RockTrigger=2,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=2,score_RockTrigger=2,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=2,score_RockTrigger=2,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=2,score_RockTrigger=2,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=2,score_RockTrigger=2,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=2,score_RockTrigger=2,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=2,score_RockTrigger=2,score_rng_min=0,score_rng=21] Dwebble,lvl:14
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=2,score_RockTrigger=2,score_rng_min=22,score_rng=44] Binacle,lvl:14
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=2,score_RockTrigger=2,score_rng_min=45,score_rng=64] Onix,lvl:14

execute @a[tag=RockSmash,score_RockTrigger_min=2,score_RockTrigger=2] ~ ~ ~ /execute @e[x=-2168,y=99,z=-193,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=2,score_RockTrigger=2] ~ ~ ~ /setblock -687 100 1290 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=2,score_RockTrigger=2] RockTrigger 0



#Cyllage City #2
tellraw @a[tag=RockSmash,score_RockTrigger_min=3,score_RockTrigger=3] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=3,score_RockTrigger=3] ~ ~ ~ /tp @e[x=-2179,y=99,z=-170,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=3,score_RockTrigger=3] ~ ~ ~ entitydata @e[x=-2179,y=99,z=-170,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=3,score_RockTrigger=3] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=3,score_RockTrigger=3] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=3,score_RockTrigger=3,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=3,score_RockTrigger=3,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=3,score_RockTrigger=3,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=3,score_RockTrigger=3,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=3,score_RockTrigger=3,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=3,score_RockTrigger=3,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=3,score_RockTrigger=3,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=3,score_RockTrigger=3,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=3,score_RockTrigger=3,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=3,score_RockTrigger=3,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=3,score_RockTrigger=3,score_rng_min=0,score_rng=21] Dwebble,lvl:14
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=3,score_RockTrigger=3,score_rng_min=22,score_rng=44] Binacle,lvl:14
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=3,score_RockTrigger=3,score_rng_min=45,score_rng=64] Onix,lvl:14

execute @a[tag=RockSmash,score_RockTrigger_min=3,score_RockTrigger=3] ~ ~ ~ /execute @e[x=-2179,y=99,z=-170,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=3,score_RockTrigger=3] ~ ~ ~ /setblock -687 100 1291 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=3,score_RockTrigger=3] RockTrigger 0



#Cyllage City #3
tellraw @a[tag=RockSmash,score_RockTrigger_min=4,score_RockTrigger=4] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=4,score_RockTrigger=4] ~ ~ ~ /tp @e[x=-2132,y=99,z=-163,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=4,score_RockTrigger=4] ~ ~ ~ entitydata @e[x=-2132,y=99,z=-163,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=4,score_RockTrigger=4] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=4,score_RockTrigger=4] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=4,score_RockTrigger=4,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=4,score_RockTrigger=4,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=4,score_RockTrigger=4,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=4,score_RockTrigger=4,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=4,score_RockTrigger=4,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=4,score_RockTrigger=4,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=4,score_RockTrigger=4,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=4,score_RockTrigger=4,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=4,score_RockTrigger=4,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=4,score_RockTrigger=4,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=4,score_RockTrigger=4,score_rng_min=0,score_rng=21] Dwebble,lvl:14
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=4,score_RockTrigger=4,score_rng_min=22,score_rng=44] Binacle,lvl:14
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=4,score_RockTrigger=4,score_rng_min=45,score_rng=64] Onix,lvl:14

execute @a[tag=RockSmash,score_RockTrigger_min=4,score_RockTrigger=4] ~ ~ ~ /execute @e[x=-2132,y=99,z=-163,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=4,score_RockTrigger=4] ~ ~ ~ /setblock -687 100 1292 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=4,score_RockTrigger=4] RockTrigger 0



#Cyllage City #4
tellraw @a[tag=RockSmash,score_RockTrigger_min=5,score_RockTrigger=5] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=5,score_RockTrigger=5] ~ ~ ~ /tp @e[x=-2109,y=99,z=-101,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=5,score_RockTrigger=5] ~ ~ ~ entitydata @e[x=-2109,y=99,z=-101,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=5,score_RockTrigger=5] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=5,score_RockTrigger=5] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=5,score_RockTrigger=5,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=5,score_RockTrigger=5,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=5,score_RockTrigger=5,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=5,score_RockTrigger=5,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=5,score_RockTrigger=5,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=5,score_RockTrigger=5,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=5,score_RockTrigger=5,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=5,score_RockTrigger=5,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=5,score_RockTrigger=5,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=5,score_RockTrigger=5,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=5,score_RockTrigger=5,score_rng_min=0,score_rng=21] Dwebble,lvl:14
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=5,score_RockTrigger=5,score_rng_min=22,score_rng=44] Binacle,lvl:14
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=5,score_RockTrigger=5,score_rng_min=45,score_rng=64] Onix,lvl:14

execute @a[tag=RockSmash,score_RockTrigger_min=5,score_RockTrigger=5] ~ ~ ~ /execute @e[x=-2109,y=99,z=-101,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=5,score_RockTrigger=5] ~ ~ ~ /setblock -687 100 1293 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=5,score_RockTrigger=5] RockTrigger 0



#Cyllage City #5
tellraw @a[tag=RockSmash,score_RockTrigger_min=6,score_RockTrigger=6] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=6,score_RockTrigger=6] ~ ~ ~ /tp @e[x=-2106,y=99,z=-43,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=6,score_RockTrigger=6] ~ ~ ~ entitydata @e[x=-2106,y=99,z=-43,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=6,score_RockTrigger=6] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=6,score_RockTrigger=6] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=6,score_RockTrigger=6,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=6,score_RockTrigger=6,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=6,score_RockTrigger=6,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=6,score_RockTrigger=6,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=6,score_RockTrigger=6,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=6,score_RockTrigger=6,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=6,score_RockTrigger=6,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=6,score_RockTrigger=6,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=6,score_RockTrigger=6,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=6,score_RockTrigger=6,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=6,score_RockTrigger=6,score_rng_min=0,score_rng=21] Dwebble,lvl:14
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=6,score_RockTrigger=6,score_rng_min=22,score_rng=44] Binacle,lvl:14
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=6,score_RockTrigger=6,score_rng_min=45,score_rng=64] Onix,lvl:14

execute @a[tag=RockSmash,score_RockTrigger_min=6,score_RockTrigger=6] ~ ~ ~ /execute @e[x=-2106,y=99,z=-43,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=6,score_RockTrigger=6] ~ ~ ~ /setblock -687 100 1294 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=6,score_RockTrigger=6] RockTrigger 0



#------------------------------------------------------------------------------------------------------------------
#Playsound Item
playsound pixelmon:pixelmon.block.pokelootobtained ambient @a[tag=RockSmash,score_RockTrigger_min=7,score_RockTrigger=9,score_rng_min=65,score_rng=104] ~ ~ ~ 100 1 1


#Route 8 #1
tellraw @a[tag=RockSmash,score_RockTrigger_min=7,score_RockTrigger=7] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=7,score_RockTrigger=7] ~ ~ ~ /tp @e[x=-1983,y=99,z=151,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=7,score_RockTrigger=7] ~ ~ ~ entitydata @e[x=-1983,y=99,z=151,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=7,score_RockTrigger=7] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=7,score_RockTrigger=7] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=7,score_RockTrigger=7,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=7,score_RockTrigger=7,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=7,score_RockTrigger=7,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=7,score_RockTrigger=7,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=7,score_RockTrigger=7,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=7,score_RockTrigger=7,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=7,score_RockTrigger=7,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=7,score_RockTrigger=7,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=7,score_RockTrigger=7,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=7,score_RockTrigger=7,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=7,score_RockTrigger=7,score_rng_min=0,score_rng=31] Dwebble,lvl:14
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=7,score_RockTrigger=7,score_rng_min=32,score_rng=64] Binacle,lvl:14

execute @a[tag=RockSmash,score_RockTrigger_min=7,score_RockTrigger=7] ~ ~ ~ /execute @e[x=-1983,y=99,z=151,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=7,score_RockTrigger=7] ~ ~ ~ /setblock -687 100 1295 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=7,score_RockTrigger=7] RockTrigger 0



#Route 8 #2
tellraw @a[tag=RockSmash,score_RockTrigger_min=8,score_RockTrigger=8] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=8,score_RockTrigger=8] ~ ~ ~ /tp @e[x=-2025,y=99,z=396,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=8,score_RockTrigger=8] ~ ~ ~ entitydata @e[x=-2025,y=99,z=396,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=8,score_RockTrigger=8] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=8,score_RockTrigger=8] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=8,score_RockTrigger=8,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=8,score_RockTrigger=8,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=8,score_RockTrigger=8,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=8,score_RockTrigger=8,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=8,score_RockTrigger=8,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=8,score_RockTrigger=8,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=8,score_RockTrigger=8,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=8,score_RockTrigger=8,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=8,score_RockTrigger=8,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=8,score_RockTrigger=8,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=8,score_RockTrigger=8,score_rng_min=0,score_rng=31] Dwebble,lvl:14
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=8,score_RockTrigger=8,score_rng_min=32,score_rng=64] Binacle,lvl:14

execute @a[tag=RockSmash,score_RockTrigger_min=8,score_RockTrigger=8] ~ ~ ~ /execute @e[x=-2025,y=99,z=396,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=8,score_RockTrigger=8] ~ ~ ~ /setblock -687 100 1296 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=8,score_RockTrigger=8] RockTrigger 0



#Route 8 #3
tellraw @a[tag=RockSmash,score_RockTrigger_min=9,score_RockTrigger=9] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=9,score_RockTrigger=9] ~ ~ ~ /tp @e[x=-1994,y=99,z=427,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=9,score_RockTrigger=9] ~ ~ ~ entitydata @e[x=-1994,y=99,z=427,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=9,score_RockTrigger=9] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=9,score_RockTrigger=9] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=9,score_RockTrigger=9,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=9,score_RockTrigger=9,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=9,score_RockTrigger=9,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=9,score_RockTrigger=9,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=9,score_RockTrigger=9,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=9,score_RockTrigger=9,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=9,score_RockTrigger=9,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=9,score_RockTrigger=9,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=9,score_RockTrigger=9,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=9,score_RockTrigger=9,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=9,score_RockTrigger=9,score_rng_min=0,score_rng=31] Dwebble,lvl:14
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=9,score_RockTrigger=9,score_rng_min=32,score_rng=64] Binacle,lvl:14

execute @a[tag=RockSmash,score_RockTrigger_min=9,score_RockTrigger=9] ~ ~ ~ /execute @e[x=-1994,y=99,z=427,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=9,score_RockTrigger=9] ~ ~ ~ /setblock -687 100 1297 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=9,score_RockTrigger=9] RockTrigger 0



#------------------------------------------------------------------------------------------------------------------
#Playsound Item
playsound pixelmon:pixelmon.block.pokelootobtained ambient @a[tag=RockSmash,score_RockTrigger_min=10,score_RockTrigger=13,score_rng_min=65,score_rng=104] ~ ~ ~ 100 1 1

#Ambrette Town #1
tellraw @a[tag=RockSmash,score_RockTrigger_min=10,score_RockTrigger=10] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=10,score_RockTrigger=10] ~ ~ ~ /tp @e[x=-2040,y=99,z=599,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=10,score_RockTrigger=10] ~ ~ ~ entitydata @e[x=-2040,y=99,z=599,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=10,score_RockTrigger=10] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=10,score_RockTrigger=10] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=10,score_RockTrigger=10,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=10,score_RockTrigger=10,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=10,score_RockTrigger=10,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=10,score_RockTrigger=10,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=10,score_RockTrigger=10,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=10,score_RockTrigger=10,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=10,score_RockTrigger=10,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=10,score_RockTrigger=10,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=10,score_RockTrigger=10,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=10,score_RockTrigger=10,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=10,score_RockTrigger=10,score_rng_min=0,score_rng=31] Dwebble,lvl:14
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=10,score_RockTrigger=10,score_rng_min=32,score_rng=64] Binacle,lvl:14

execute @a[tag=RockSmash,score_RockTrigger_min=10,score_RockTrigger=10] ~ ~ ~ /execute @e[x=-2040,y=99,z=599,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=10,score_RockTrigger=10] ~ ~ ~ /setblock -687 100 1298 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=10,score_RockTrigger=10] RockTrigger 0



#Ambrette Town #2
tellraw @a[tag=RockSmash,score_RockTrigger_min=11,score_RockTrigger=11] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=11,score_RockTrigger=11] ~ ~ ~ /tp @e[x=-2032,y=99,z=620,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=11,score_RockTrigger=11] ~ ~ ~ entitydata @e[x=-2032,y=99,z=620,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=11,score_RockTrigger=11] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=11,score_RockTrigger=11] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=11,score_RockTrigger=11,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=11,score_RockTrigger=11,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=11,score_RockTrigger=11,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=11,score_RockTrigger=11,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=11,score_RockTrigger=11,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=11,score_RockTrigger=11,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=11,score_RockTrigger=11,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=11,score_RockTrigger=11,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=11,score_RockTrigger=11,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=11,score_RockTrigger=11,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=11,score_RockTrigger=11,score_rng_min=0,score_rng=31] Dwebble,lvl:14
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=11,score_RockTrigger=11,score_rng_min=32,score_rng=64] Binacle,lvl:14

execute @a[tag=RockSmash,score_RockTrigger_min=11,score_RockTrigger=11] ~ ~ ~ /execute @e[x=-2032,y=99,z=620,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=11,score_RockTrigger=11] ~ ~ ~ /setblock -687 100 1299 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=11,score_RockTrigger=11] RockTrigger 0



#Ambrette Town #3
tellraw @a[tag=RockSmash,score_RockTrigger_min=12,score_RockTrigger=12] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=12,score_RockTrigger=12] ~ ~ ~ /tp @e[x=-2032,y=99,z=644,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=12,score_RockTrigger=12] ~ ~ ~ entitydata @e[x=-2032,y=99,z=644,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=12,score_RockTrigger=12] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=12,score_RockTrigger=12] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=12,score_RockTrigger=12,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=12,score_RockTrigger=12,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=12,score_RockTrigger=12,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=12,score_RockTrigger=12,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=12,score_RockTrigger=12,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=12,score_RockTrigger=12,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=12,score_RockTrigger=12,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=12,score_RockTrigger=12,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=12,score_RockTrigger=12,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=12,score_RockTrigger=12,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=12,score_RockTrigger=12,score_rng_min=0,score_rng=31] Dwebble,lvl:14
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=12,score_RockTrigger=12,score_rng_min=32,score_rng=64] Binacle,lvl:14

execute @a[tag=RockSmash,score_RockTrigger_min=12,score_RockTrigger=12] ~ ~ ~ /execute @e[x=-2032,y=99,z=644,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=12,score_RockTrigger=12] ~ ~ ~ /setblock -687 100 1300 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=12,score_RockTrigger=12] RockTrigger 0



#Ambrette Town #4
tellraw @a[tag=RockSmash,score_RockTrigger_min=13,score_RockTrigger=13] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=13,score_RockTrigger=13] ~ ~ ~ /tp @e[x=-2015,y=99,z=718,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=13,score_RockTrigger=13] ~ ~ ~ entitydata @e[x=-2015,y=99,z=718,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=13,score_RockTrigger=13] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=13,score_RockTrigger=13] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=13,score_RockTrigger=13,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=13,score_RockTrigger=13,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=13,score_RockTrigger=13,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=13,score_RockTrigger=13,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=13,score_RockTrigger=13,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=13,score_RockTrigger=13,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=13,score_RockTrigger=13,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=13,score_RockTrigger=13,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=13,score_RockTrigger=13,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=13,score_RockTrigger=13,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=13,score_RockTrigger=13,score_rng_min=0,score_rng=31] Dwebble,lvl:14
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=13,score_RockTrigger=13,score_rng_min=32,score_rng=64] Binacle,lvl:14

execute @a[tag=RockSmash,score_RockTrigger_min=13,score_RockTrigger=13] ~ ~ ~ /execute @e[x=-2015,y=99,z=718,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=13,score_RockTrigger=13] ~ ~ ~ /setblock -687 100 1301 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=13,score_RockTrigger=13] RockTrigger 0


#------------------------------------------------------------------------------------------------------------------
#Playsound Item
playsound pixelmon:pixelmon.block.pokelootobtained ambient @a[tag=RockSmash,score_RockTrigger_min=14,score_RockTrigger=15,score_rng_min=65,score_rng=104] ~ ~ ~ 100 1 1


#Route 12 #1
tellraw @a[tag=RockSmash,score_RockTrigger_min=14,score_RockTrigger=14] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=14,score_RockTrigger=14] ~ ~ ~ /tp @e[x=-1379,y=75,z=-794,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=14,score_RockTrigger=14] ~ ~ ~ entitydata @e[x=-1379,y=75,z=-794,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=14,score_RockTrigger=14] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=14,score_RockTrigger=14] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=14,score_RockTrigger=14,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=14,score_RockTrigger=14,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=14,score_RockTrigger=14,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=14,score_RockTrigger=14,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=14,score_RockTrigger=14,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=14,score_RockTrigger=14,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=14,score_RockTrigger=14,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=14,score_RockTrigger=14,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=14,score_RockTrigger=14,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=14,score_RockTrigger=14,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=14,score_RockTrigger=14,score_rng_min=0,score_rng=31] Dwebble,lvl:24
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=14,score_RockTrigger=14,score_rng_min=32,score_rng=64] Binacle,lvl:24

execute @a[tag=RockSmash,score_RockTrigger_min=14,score_RockTrigger=14] ~ ~ ~ /execute @e[x=-1379,y=75,z=-794,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=14,score_RockTrigger=14] ~ ~ ~ /setblock -687 100 1302 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=14,score_RockTrigger=14] RockTrigger 0


#Route 12 #2
tellraw @a[tag=RockSmash,score_RockTrigger_min=15,score_RockTrigger=15] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=15,score_RockTrigger=15] ~ ~ ~ /tp @e[x=-1242,y=75,z=-793,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=15,score_RockTrigger=15] ~ ~ ~ entitydata @e[x=-1242,y=75,z=-793,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=15,score_RockTrigger=15] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=15,score_RockTrigger=15] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=15,score_RockTrigger=15,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=15,score_RockTrigger=15,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=15,score_RockTrigger=15,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=15,score_RockTrigger=15,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=15,score_RockTrigger=15,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=15,score_RockTrigger=15,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=15,score_RockTrigger=15,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=15,score_RockTrigger=15,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=15,score_RockTrigger=15,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=15,score_RockTrigger=15,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=15,score_RockTrigger=15,score_rng_min=0,score_rng=31] Dwebble,lvl:24
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=15,score_RockTrigger=15,score_rng_min=32,score_rng=64] Binacle,lvl:24

execute @a[tag=RockSmash,score_RockTrigger_min=15,score_RockTrigger=15] ~ ~ ~ /execute @e[x=-1242,y=75,z=-793,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=15,score_RockTrigger=15] ~ ~ ~ /setblock -687 100 1303 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=15,score_RockTrigger=15] RockTrigger 0



#------------------------------------------------------------------------------------------------------------------
#Playsound Item
playsound pixelmon:pixelmon.block.pokelootobtained ambient @a[tag=RockSmash,score_RockTrigger_min=16,score_RockTrigger=18,score_rng_min=65,score_rng=104] ~ ~ ~ 100 1 1

#Azure Bay #1
tellraw @a[tag=RockSmash,score_RockTrigger_min=16,score_RockTrigger=16] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=16,score_RockTrigger=16] ~ ~ ~ /tp @e[x=-1446,y=75,z=-1142,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=16,score_RockTrigger=16] ~ ~ ~ entitydata @e[x=-1446,y=75,z=-1142,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=16,score_RockTrigger=16] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=16,score_RockTrigger=16] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=16,score_RockTrigger=16,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=16,score_RockTrigger=16,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=16,score_RockTrigger=16,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=16,score_RockTrigger=16,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=16,score_RockTrigger=16,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=16,score_RockTrigger=16,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=16,score_RockTrigger=16,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=16,score_RockTrigger=16,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=16,score_RockTrigger=16,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=16,score_RockTrigger=16,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=16,score_RockTrigger=16,score_rng_min=0,score_rng=31] Dwebble,lvl:24
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=16,score_RockTrigger=16,score_rng_min=32,score_rng=64] Binacle,lvl:24

execute @a[tag=RockSmash,score_RockTrigger_min=16,score_RockTrigger=16] ~ ~ ~ /execute @e[x=-1446,y=75,z=-1142,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=16,score_RockTrigger=16] ~ ~ ~ /setblock -687 100 1304 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=16,score_RockTrigger=16] RockTrigger 0



#Azure Bay #2
tellraw @a[tag=RockSmash,score_RockTrigger_min=17,score_RockTrigger=17] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=17,score_RockTrigger=17] ~ ~ ~ /tp @e[x=-1451,y=75,z=-1155,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=17,score_RockTrigger=17] ~ ~ ~ entitydata @e[x=-1451,y=75,z=-1155,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=17,score_RockTrigger=17] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=17,score_RockTrigger=17] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=17,score_RockTrigger=17,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=17,score_RockTrigger=17,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=17,score_RockTrigger=17,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=17,score_RockTrigger=17,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=17,score_RockTrigger=17,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=17,score_RockTrigger=17,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=17,score_RockTrigger=17,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=17,score_RockTrigger=17,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=17,score_RockTrigger=17,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=17,score_RockTrigger=17,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=17,score_RockTrigger=17,score_rng_min=0,score_rng=31] Dwebble,lvl:24
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=17,score_RockTrigger=17,score_rng_min=32,score_rng=64] Binacle,lvl:24

execute @a[tag=RockSmash,score_RockTrigger_min=17,score_RockTrigger=17] ~ ~ ~ /execute @e[x=-1451,y=75,z=-1155,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=17,score_RockTrigger=17] ~ ~ ~ /setblock -687 100 1305 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=17,score_RockTrigger=17] RockTrigger 0



#Azure Bay #3
tellraw @a[tag=RockSmash,score_RockTrigger_min=18,score_RockTrigger=18] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=18,score_RockTrigger=18] ~ ~ ~ /tp @e[x=-1450,y=75,z=-1231,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=18,score_RockTrigger=18] ~ ~ ~ entitydata @e[x=-1450,y=75,z=-1231,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=18,score_RockTrigger=18] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=18,score_RockTrigger=18] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=18,score_RockTrigger=18,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=18,score_RockTrigger=18,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=18,score_RockTrigger=18,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=18,score_RockTrigger=18,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=18,score_RockTrigger=18,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=18,score_RockTrigger=18,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=18,score_RockTrigger=18,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=18,score_RockTrigger=18,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=18,score_RockTrigger=18,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=18,score_RockTrigger=18,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=18,score_RockTrigger=18,score_rng_min=0,score_rng=31] Dwebble,lvl:24
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=18,score_RockTrigger=18,score_rng_min=32,score_rng=64] Binacle,lvl:24

execute @a[tag=RockSmash,score_RockTrigger_min=18,score_RockTrigger=18] ~ ~ ~ /execute @e[x=-1450,y=75,z=-1231,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=18,score_RockTrigger=18] ~ ~ ~ /setblock -687 100 1306 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=18,score_RockTrigger=18] RockTrigger 0




#------------------------------------------------------------------------------------------------------------------
#Playsound Item
playsound pixelmon:pixelmon.block.pokelootobtained ambient @a[tag=RockSmash,score_RockTrigger_min=19,score_RockTrigger=22,score_rng_min=65,score_rng=104] ~ ~ ~ 100 1 1

#Route 13 #1
tellraw @a[tag=RockSmash,score_RockTrigger_min=19,score_RockTrigger=19] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=19,score_RockTrigger=19] ~ ~ ~ /tp @e[x=-788,y=103,z=-421,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=19,score_RockTrigger=19] ~ ~ ~ entitydata @e[x=-788,y=103,z=-421,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=19,score_RockTrigger=19] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=19,score_RockTrigger=19] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=19,score_RockTrigger=19,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=19,score_RockTrigger=19,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=19,score_RockTrigger=19,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=19,score_RockTrigger=19,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=19,score_RockTrigger=19,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=19,score_RockTrigger=19,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=19,score_RockTrigger=19,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=19,score_RockTrigger=19,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=19,score_RockTrigger=19,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=19,score_RockTrigger=19,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=19,score_RockTrigger=19,score_rng_min=0,score_rng=31] Graveler,lvl:27
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=19,score_RockTrigger=19,score_rng_min=32,score_rng=64] Slugma,lvl:27

execute @a[tag=RockSmash,score_RockTrigger_min=19,score_RockTrigger=19] ~ ~ ~ /execute @e[x=-788,y=103,z=-421,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=19,score_RockTrigger=19] ~ ~ ~ /setblock -687 100 1307 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=19,score_RockTrigger=19] RockTrigger 0



#Route 13 #2
tellraw @a[tag=RockSmash,score_RockTrigger_min=20,score_RockTrigger=20] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=20,score_RockTrigger=20] ~ ~ ~ /tp @e[x=-900,y=103,z=-404,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=20,score_RockTrigger=20] ~ ~ ~ entitydata @e[x=-900,y=103,z=-404,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=20,score_RockTrigger=20] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=20,score_RockTrigger=20] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=20,score_RockTrigger=20,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=20,score_RockTrigger=20,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=20,score_RockTrigger=20,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=20,score_RockTrigger=20,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=20,score_RockTrigger=20,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=20,score_RockTrigger=20,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=20,score_RockTrigger=20,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=20,score_RockTrigger=20,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=20,score_RockTrigger=20,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=20,score_RockTrigger=20,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=20,score_RockTrigger=20,score_rng_min=0,score_rng=31] Graveler,lvl:27
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=20,score_RockTrigger=20,score_rng_min=32,score_rng=64] Slugma,lvl:27

execute @a[tag=RockSmash,score_RockTrigger_min=20,score_RockTrigger=20] ~ ~ ~ /execute @e[x=-900,y=103,z=-404,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=20,score_RockTrigger=20] ~ ~ ~ /setblock -687 100 1308 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=20,score_RockTrigger=20] RockTrigger 0



#Route 13 #3
tellraw @a[tag=RockSmash,score_RockTrigger_min=21,score_RockTrigger=21] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=21,score_RockTrigger=21] ~ ~ ~ /tp @e[x=-682,y=99,z=-544,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=21,score_RockTrigger=21] ~ ~ ~ entitydata @e[x=-682,y=99,z=-544,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=21,score_RockTrigger=21] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=21,score_RockTrigger=21] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=21,score_RockTrigger=21,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=21,score_RockTrigger=21,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=21,score_RockTrigger=21,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=21,score_RockTrigger=21,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=21,score_RockTrigger=21,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=21,score_RockTrigger=21,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=21,score_RockTrigger=21,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=21,score_RockTrigger=21,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=21,score_RockTrigger=21,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=21,score_RockTrigger=21,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=21,score_RockTrigger=21,score_rng_min=0,score_rng=31] Graveler,lvl:27
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=21,score_RockTrigger=21,score_rng_min=32,score_rng=64] Slugma,lvl:27

execute @a[tag=RockSmash,score_RockTrigger_min=21,score_RockTrigger=21] ~ ~ ~ /execute @e[x=-682,y=99,z=-544,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=21,score_RockTrigger=21] ~ ~ ~ /setblock -687 100 1309 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=21,score_RockTrigger=21] RockTrigger 0


#Route 13 #4
tellraw @a[tag=RockSmash,score_RockTrigger_min=22,score_RockTrigger=22] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=22,score_RockTrigger=22] ~ ~ ~ /tp @e[x=-682,y=99,z=-523,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=22,score_RockTrigger=22] ~ ~ ~ entitydata @e[x=-682,y=99,z=-523,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=22,score_RockTrigger=22] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=22,score_RockTrigger=22] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=22,score_RockTrigger=22,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=22,score_RockTrigger=22,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=22,score_RockTrigger=22,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=22,score_RockTrigger=22,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=22,score_RockTrigger=22,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=22,score_RockTrigger=22,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=22,score_RockTrigger=22,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=22,score_RockTrigger=22,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=22,score_RockTrigger=22,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=22,score_RockTrigger=22,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=22,score_RockTrigger=22,score_rng_min=0,score_rng=31] Graveler,lvl:27
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=22,score_RockTrigger=22,score_rng_min=32,score_rng=64] Slugma,lvl:27

execute @a[tag=RockSmash,score_RockTrigger_min=22,score_RockTrigger=22] ~ ~ ~ /execute @e[x=-682,y=99,z=-523,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=22,score_RockTrigger=22] ~ ~ ~ /setblock -687 100 1310 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=22,score_RockTrigger=22] RockTrigger 0


#------------------------------------------------------------------------------------------------------------------
#Playsound Item
playsound pixelmon:pixelmon.block.pokelootobtained ambient @a[tag=RockSmash,score_RockTrigger_min=23,score_RockTrigger=24,score_rng_min=65,score_rng=104] ~ ~ ~ 100 1 1

#Route 18 #1
tellraw @a[tag=RockSmash,score_RockTrigger_min=23,score_RockTrigger=23] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=23,score_RockTrigger=23] ~ ~ ~ /tp @e[x=1472,y=104,z=47,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=23,score_RockTrigger=23] ~ ~ ~ entitydata @e[x=1472,y=104,z=47,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=23,score_RockTrigger=23] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=23,score_RockTrigger=23] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=23,score_RockTrigger=23,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=23,score_RockTrigger=23,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=23,score_RockTrigger=23,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=23,score_RockTrigger=23,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=23,score_RockTrigger=23,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=23,score_RockTrigger=23,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=23,score_RockTrigger=23,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=23,score_RockTrigger=23,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=23,score_RockTrigger=23,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=23,score_RockTrigger=23,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=23,score_RockTrigger=23,score_rng_min=0,score_rng=31] Graveler,lvl:45
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=23,score_RockTrigger=23,score_rng_min=32,score_rng=64] Shuckle,lvl:45

execute @a[tag=RockSmash,score_RockTrigger_min=23,score_RockTrigger=23] ~ ~ ~ /execute @e[x=1472,y=104,z=47,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=23,score_RockTrigger=23] ~ ~ ~ /setblock -687 100 1311 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=23,score_RockTrigger=23] RockTrigger 0



#Route 18 #2
tellraw @a[tag=RockSmash,score_RockTrigger_min=24,score_RockTrigger=24] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=24,score_RockTrigger=24] ~ ~ ~ /tp @e[x=1485,y=104,z=33,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=24,score_RockTrigger=24] ~ ~ ~ entitydata @e[x=1485,y=104,z=33,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=24,score_RockTrigger=24] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=24,score_RockTrigger=24] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=24,score_RockTrigger=24,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=24,score_RockTrigger=24,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=24,score_RockTrigger=24,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=24,score_RockTrigger=24,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=24,score_RockTrigger=24,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=24,score_RockTrigger=24,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=24,score_RockTrigger=24,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=24,score_RockTrigger=24,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=24,score_RockTrigger=24,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=24,score_RockTrigger=24,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=24,score_RockTrigger=24,score_rng_min=0,score_rng=31] Graveler,lvl:45
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=24,score_RockTrigger=24,score_rng_min=32,score_rng=64] Shuckle,lvl:45

execute @a[tag=RockSmash,score_RockTrigger_min=24,score_RockTrigger=24] ~ ~ ~ /execute @e[x=1485,y=104,z=33,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=24,score_RockTrigger=24] ~ ~ ~ /setblock -687 100 1312 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=24,score_RockTrigger=24] RockTrigger 0


#------------------------------------------------------------------------------------------------------------------
#Playsound Item
playsound pixelmon:pixelmon.block.pokelootobtained ambient @a[tag=RockSmash,score_RockTrigger_min=25,score_RockTrigger=44,score_rng_min=65,score_rng=104] ~ ~ ~ 100 1 1

#Terminus Cave #1
tellraw @a[tag=RockSmash,score_RockTrigger_min=25,score_RockTrigger=25] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=25,score_RockTrigger=25] ~ ~ ~ /tp @e[x=1761,y=77,z=-48,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=25,score_RockTrigger=25] ~ ~ ~ entitydata @e[x=1761,y=77,z=-48,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=25,score_RockTrigger=25] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=25,score_RockTrigger=25] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=25,score_RockTrigger=25,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=25,score_RockTrigger=25,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=25,score_RockTrigger=25,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=25,score_RockTrigger=25,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=25,score_RockTrigger=25,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=25,score_RockTrigger=25,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=25,score_RockTrigger=25,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=25,score_RockTrigger=25,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=25,score_RockTrigger=25,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=25,score_RockTrigger=25,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=25,score_RockTrigger=25,score_rng_min=0,score_rng=58] Graveler,lvl:45
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=25,score_RockTrigger=25,score_rng_min=59,score_rng=64] Shuckle,lvl:45

execute @a[tag=RockSmash,score_RockTrigger_min=25,score_RockTrigger=25] ~ ~ ~ /execute @e[x=1761,y=77,z=-48,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=25,score_RockTrigger=25] ~ ~ ~ /setblock -687 100 1313 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=25,score_RockTrigger=25] RockTrigger 0



#Terminus Cave #2
tellraw @a[tag=RockSmash,score_RockTrigger_min=26,score_RockTrigger=26] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=26,score_RockTrigger=26] ~ ~ ~ /tp @e[x=1746,y=77,z=-50,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=26,score_RockTrigger=26] ~ ~ ~ entitydata @e[x=1746,y=77,z=-50,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=26,score_RockTrigger=26] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=26,score_RockTrigger=26] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=26,score_RockTrigger=26,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=26,score_RockTrigger=26,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=26,score_RockTrigger=26,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=26,score_RockTrigger=26,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=26,score_RockTrigger=26,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=26,score_RockTrigger=26,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=26,score_RockTrigger=26,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=26,score_RockTrigger=26,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=26,score_RockTrigger=26,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=26,score_RockTrigger=26,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=26,score_RockTrigger=26,score_rng_min=0,score_rng=58] Graveler,lvl:45
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=26,score_RockTrigger=26,score_rng_min=59,score_rng=64] Shuckle,lvl:45

execute @a[tag=RockSmash,score_RockTrigger_min=26,score_RockTrigger=26] ~ ~ ~ /execute @e[x=1746,y=77,z=-50,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=26,score_RockTrigger=26] ~ ~ ~ /setblock -687 100 1314 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=26,score_RockTrigger=26] RockTrigger 0



#Terminus Cave #3
tellraw @a[tag=RockSmash,score_RockTrigger_min=27,score_RockTrigger=27] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=27,score_RockTrigger=27] ~ ~ ~ /tp @e[x=1740,y=77,z=-66,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=27,score_RockTrigger=27] ~ ~ ~ entitydata @e[x=1740,y=77,z=-66,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=27,score_RockTrigger=27] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=27,score_RockTrigger=27] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=27,score_RockTrigger=27,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=27,score_RockTrigger=27,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=27,score_RockTrigger=27,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=27,score_RockTrigger=27,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=27,score_RockTrigger=27,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=27,score_RockTrigger=27,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=27,score_RockTrigger=27,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=27,score_RockTrigger=27,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=27,score_RockTrigger=27,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=27,score_RockTrigger=27,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=27,score_RockTrigger=27,score_rng_min=0,score_rng=58] Graveler,lvl:45
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=27,score_RockTrigger=27,score_rng_min=59,score_rng=64] Shuckle,lvl:45

execute @a[tag=RockSmash,score_RockTrigger_min=27,score_RockTrigger=27] ~ ~ ~ /execute @e[x=1740,y=77,z=-66,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=27,score_RockTrigger=27] ~ ~ ~ /setblock -687 100 1315 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=27,score_RockTrigger=27] RockTrigger 0



#Terminus Cave #4
tellraw @a[tag=RockSmash,score_RockTrigger_min=28,score_RockTrigger=28] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=28,score_RockTrigger=28] ~ ~ ~ /tp @e[x=1746,y=77,z=-72,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=28,score_RockTrigger=28] ~ ~ ~ entitydata @e[x=1746,y=77,z=-72,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=28,score_RockTrigger=28] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=28,score_RockTrigger=28] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=28,score_RockTrigger=28,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=28,score_RockTrigger=28,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=28,score_RockTrigger=28,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=28,score_RockTrigger=28,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=28,score_RockTrigger=28,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=28,score_RockTrigger=28,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=28,score_RockTrigger=28,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=28,score_RockTrigger=28,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=28,score_RockTrigger=28,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=28,score_RockTrigger=28,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=28,score_RockTrigger=28,score_rng_min=0,score_rng=58] Graveler,lvl:45
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=28,score_RockTrigger=28,score_rng_min=59,score_rng=64] Shuckle,lvl:45

execute @a[tag=RockSmash,score_RockTrigger_min=28,score_RockTrigger=28] ~ ~ ~ /execute @e[x=1746,y=77,z=-72,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=28,score_RockTrigger=28] ~ ~ ~ /setblock -687 100 1316 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=28,score_RockTrigger=28] RockTrigger 0




#Terminus Cave #5
tellraw @a[tag=RockSmash,score_RockTrigger_min=29,score_RockTrigger=29] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=29,score_RockTrigger=29] ~ ~ ~ /tp @e[x=1765,y=77,z=-81,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=29,score_RockTrigger=29] ~ ~ ~ entitydata @e[x=1765,y=77,z=-81,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=29,score_RockTrigger=29] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=29,score_RockTrigger=29] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=29,score_RockTrigger=29,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=29,score_RockTrigger=29,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=29,score_RockTrigger=29,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=29,score_RockTrigger=29,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=29,score_RockTrigger=29,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=29,score_RockTrigger=29,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=29,score_RockTrigger=29,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=29,score_RockTrigger=29,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=29,score_RockTrigger=29,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=29,score_RockTrigger=29,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=29,score_RockTrigger=29,score_rng_min=0,score_rng=58] Graveler,lvl:45
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=29,score_RockTrigger=29,score_rng_min=59,score_rng=64] Shuckle,lvl:45

execute @a[tag=RockSmash,score_RockTrigger_min=29,score_RockTrigger=29] ~ ~ ~ /execute @e[x=1765,y=77,z=-81,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=29,score_RockTrigger=29] ~ ~ ~ /setblock -687 100 1317 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=29,score_RockTrigger=29] RockTrigger 0



#Terminus Cave #6
tellraw @a[tag=RockSmash,score_RockTrigger_min=30,score_RockTrigger=30] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=30,score_RockTrigger=30] ~ ~ ~ /tp @e[x=1779,y=74,z=-94,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=30,score_RockTrigger=30] ~ ~ ~ entitydata @e[x=1779,y=74,z=-94,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=30,score_RockTrigger=30] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=30,score_RockTrigger=30] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=30,score_RockTrigger=30,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=30,score_RockTrigger=30,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=30,score_RockTrigger=30,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=30,score_RockTrigger=30,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=30,score_RockTrigger=30,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=30,score_RockTrigger=30,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=30,score_RockTrigger=30,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=30,score_RockTrigger=30,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=30,score_RockTrigger=30,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=30,score_RockTrigger=30,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=30,score_RockTrigger=30,score_rng_min=0,score_rng=58] Graveler,lvl:45
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=30,score_RockTrigger=30,score_rng_min=59,score_rng=64] Shuckle,lvl:45

execute @a[tag=RockSmash,score_RockTrigger_min=30,score_RockTrigger=30] ~ ~ ~ /execute @e[x=1779,y=74,z=-94,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=30,score_RockTrigger=30] ~ ~ ~ /setblock -687 100 1318 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=30,score_RockTrigger=30] RockTrigger 0



#Terminus Cave #7
tellraw @a[tag=RockSmash,score_RockTrigger_min=31,score_RockTrigger=31] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=31,score_RockTrigger=31] ~ ~ ~ /tp @e[x=1870,y=48,z=-29,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=31,score_RockTrigger=31] ~ ~ ~ entitydata @e[x=1870,y=48,z=-29,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=31,score_RockTrigger=31] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=31,score_RockTrigger=31] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=31,score_RockTrigger=31,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=31,score_RockTrigger=31,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=31,score_RockTrigger=31,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=31,score_RockTrigger=31,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=31,score_RockTrigger=31,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=31,score_RockTrigger=31,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=31,score_RockTrigger=31,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=31,score_RockTrigger=31,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=31,score_RockTrigger=31,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=31,score_RockTrigger=31,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=31,score_RockTrigger=31,score_rng_min=0,score_rng=58] Graveler,lvl:45
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=31,score_RockTrigger=31,score_rng_min=59,score_rng=64] Shuckle,lvl:45

execute @a[tag=RockSmash,score_RockTrigger_min=31,score_RockTrigger=31] ~ ~ ~ /execute @e[x=1870,y=48,z=-29,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=31,score_RockTrigger=31] ~ ~ ~ /setblock -687 100 1319 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=31,score_RockTrigger=31] RockTrigger 0



#Terminus Cave #8
tellraw @a[tag=RockSmash,score_RockTrigger_min=32,score_RockTrigger=32] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=32,score_RockTrigger=32] ~ ~ ~ /tp @e[x=1888,y=37,z=-70,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=32,score_RockTrigger=32] ~ ~ ~ entitydata @e[x=1888,y=37,z=-70,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=32,score_RockTrigger=32] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=32,score_RockTrigger=32] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=32,score_RockTrigger=32,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=32,score_RockTrigger=32,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=32,score_RockTrigger=32,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=32,score_RockTrigger=32,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=32,score_RockTrigger=32,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=32,score_RockTrigger=32,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=32,score_RockTrigger=32,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=32,score_RockTrigger=32,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=32,score_RockTrigger=32,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=32,score_RockTrigger=32,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=32,score_RockTrigger=32,score_rng_min=0,score_rng=58] Graveler,lvl:45
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=32,score_RockTrigger=32,score_rng_min=59,score_rng=64] Shuckle,lvl:45

execute @a[tag=RockSmash,score_RockTrigger_min=32,score_RockTrigger=32] ~ ~ ~ /execute @e[x=1888,y=37,z=-70,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=32,score_RockTrigger=32] ~ ~ ~ /setblock -687 100 1320 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=32,score_RockTrigger=32] RockTrigger 0



#Terminus Cave #9
tellraw @a[tag=RockSmash,score_RockTrigger_min=33,score_RockTrigger=33] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=33,score_RockTrigger=33] ~ ~ ~ /tp @e[x=1798,y=47,z=-33,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=33,score_RockTrigger=33] ~ ~ ~ entitydata @e[x=1798,y=47,z=-33,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=33,score_RockTrigger=33] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=33,score_RockTrigger=33] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=33,score_RockTrigger=33,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=33,score_RockTrigger=33,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=33,score_RockTrigger=33,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=33,score_RockTrigger=33,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=33,score_RockTrigger=33,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=33,score_RockTrigger=33,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=33,score_RockTrigger=33,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=33,score_RockTrigger=33,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=33,score_RockTrigger=33,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=33,score_RockTrigger=33,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=33,score_RockTrigger=33,score_rng_min=0,score_rng=58] Graveler,lvl:45
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=33,score_RockTrigger=33,score_rng_min=59,score_rng=64] Shuckle,lvl:45

execute @a[tag=RockSmash,score_RockTrigger_min=33,score_RockTrigger=33] ~ ~ ~ /execute @e[x=1798,y=47,z=-33,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=33,score_RockTrigger=33] ~ ~ ~ /setblock -687 100 1321 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=33,score_RockTrigger=33] RockTrigger 0




#Terminus Cave #10
tellraw @a[tag=RockSmash,score_RockTrigger_min=34,score_RockTrigger=34] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=34,score_RockTrigger=34] ~ ~ ~ /tp @e[x=1930,y=9,z=-73,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=34,score_RockTrigger=34] ~ ~ ~ entitydata @e[x=1930,y=9,z=-73,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=34,score_RockTrigger=34] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=34,score_RockTrigger=34] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=34,score_RockTrigger=34,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=34,score_RockTrigger=34,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=34,score_RockTrigger=34,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=34,score_RockTrigger=34,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=34,score_RockTrigger=34,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=34,score_RockTrigger=34,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=34,score_RockTrigger=34,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=34,score_RockTrigger=34,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=34,score_RockTrigger=34,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=34,score_RockTrigger=34,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=34,score_RockTrigger=34,score_rng_min=0,score_rng=58] Graveler,lvl:45
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=34,score_RockTrigger=34,score_rng_min=59,score_rng=64] Shuckle,lvl:45

execute @a[tag=RockSmash,score_RockTrigger_min=34,score_RockTrigger=34] ~ ~ ~ /execute @e[x=1930,y=9,z=-73,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=34,score_RockTrigger=34] ~ ~ ~ /setblock -687 100 1322 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=34,score_RockTrigger=34] RockTrigger 0



#Terminus Cave #11
tellraw @a[tag=RockSmash,score_RockTrigger_min=35,score_RockTrigger=35] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=35,score_RockTrigger=35] ~ ~ ~ /tp @e[x=1904,y=9,z=-103,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=35,score_RockTrigger=35] ~ ~ ~ entitydata @e[x=1904,y=9,z=-103,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=35,score_RockTrigger=35] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=35,score_RockTrigger=35] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=35,score_RockTrigger=35,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=35,score_RockTrigger=35,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=35,score_RockTrigger=35,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=35,score_RockTrigger=35,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=35,score_RockTrigger=35,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=35,score_RockTrigger=35,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=35,score_RockTrigger=35,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=35,score_RockTrigger=35,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=35,score_RockTrigger=35,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=35,score_RockTrigger=35,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=35,score_RockTrigger=35,score_rng_min=0,score_rng=58] Graveler,lvl:45
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=35,score_RockTrigger=35,score_rng_min=59,score_rng=64] Shuckle,lvl:45

execute @a[tag=RockSmash,score_RockTrigger_min=35,score_RockTrigger=35] ~ ~ ~ /execute @e[x=1904,y=9,z=-103,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=35,score_RockTrigger=35] ~ ~ ~ /setblock -687 100 1323 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=35,score_RockTrigger=35] RockTrigger 0



#Terminus Cave #12
tellraw @a[tag=RockSmash,score_RockTrigger_min=36,score_RockTrigger=36] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=36,score_RockTrigger=36] ~ ~ ~ /tp @e[x=1943,y=9,z=-107,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=36,score_RockTrigger=36] ~ ~ ~ entitydata @e[x=1943,y=9,z=-107,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=36,score_RockTrigger=36] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=36,score_RockTrigger=36] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=36,score_RockTrigger=36,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=36,score_RockTrigger=36,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=36,score_RockTrigger=36,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=36,score_RockTrigger=36,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=36,score_RockTrigger=36,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=36,score_RockTrigger=36,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=36,score_RockTrigger=36,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=36,score_RockTrigger=36,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=36,score_RockTrigger=36,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=36,score_RockTrigger=36,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=36,score_RockTrigger=36,score_rng_min=0,score_rng=58] Graveler,lvl:45
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=36,score_RockTrigger=36,score_rng_min=59,score_rng=64] Shuckle,lvl:45

execute @a[tag=RockSmash,score_RockTrigger_min=36,score_RockTrigger=36] ~ ~ ~ /execute @e[x=1943,y=9,z=-107,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=36,score_RockTrigger=36] ~ ~ ~ /setblock -687 100 1324 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=36,score_RockTrigger=36] RockTrigger 0



#Terminus Cave #13
tellraw @a[tag=RockSmash,score_RockTrigger_min=37,score_RockTrigger=37] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=37,score_RockTrigger=37] ~ ~ ~ /tp @e[x=1963,y=14,z=-144,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=37,score_RockTrigger=37] ~ ~ ~ entitydata @e[x=1963,y=14,z=-144,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=37,score_RockTrigger=37] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=37,score_RockTrigger=37] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=37,score_RockTrigger=37,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=37,score_RockTrigger=37,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=37,score_RockTrigger=37,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=37,score_RockTrigger=37,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=37,score_RockTrigger=37,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=37,score_RockTrigger=37,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=37,score_RockTrigger=37,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=37,score_RockTrigger=37,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=37,score_RockTrigger=37,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=37,score_RockTrigger=37,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=37,score_RockTrigger=37,score_rng_min=0,score_rng=58] Graveler,lvl:45
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=37,score_RockTrigger=37,score_rng_min=59,score_rng=64] Shuckle,lvl:45

execute @a[tag=RockSmash,score_RockTrigger_min=37,score_RockTrigger=37] ~ ~ ~ /execute @e[x=1963,y=14,z=-144,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=37,score_RockTrigger=37] ~ ~ ~ /setblock -687 100 1325 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=37,score_RockTrigger=37] RockTrigger 0


#Terminus Cave #14
tellraw @a[tag=RockSmash,score_RockTrigger_min=38,score_RockTrigger=38] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=38,score_RockTrigger=38] ~ ~ ~ /tp @e[x=1986,y=14,z=-143,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=38,score_RockTrigger=38] ~ ~ ~ entitydata @e[x=1986,y=14,z=-143,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=38,score_RockTrigger=38] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=38,score_RockTrigger=38] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=38,score_RockTrigger=38,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=38,score_RockTrigger=38,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=38,score_RockTrigger=38,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=38,score_RockTrigger=38,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=38,score_RockTrigger=38,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=38,score_RockTrigger=38,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=38,score_RockTrigger=38,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=38,score_RockTrigger=38,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=38,score_RockTrigger=38,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=38,score_RockTrigger=38,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=38,score_RockTrigger=38,score_rng_min=0,score_rng=58] Graveler,lvl:45
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=38,score_RockTrigger=38,score_rng_min=59,score_rng=64] Shuckle,lvl:45

execute @a[tag=RockSmash,score_RockTrigger_min=38,score_RockTrigger=38] ~ ~ ~ /execute @e[x=1986,y=14,z=-143,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=38,score_RockTrigger=38] ~ ~ ~ /setblock -687 100 1326 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=38,score_RockTrigger=38] RockTrigger 0



#Terminus Cave #15
tellraw @a[tag=RockSmash,score_RockTrigger_min=39,score_RockTrigger=39] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=39,score_RockTrigger=39] ~ ~ ~ /tp @e[x=1993,y=9,z=-135,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=39,score_RockTrigger=39] ~ ~ ~ entitydata @e[x=1993,y=9,z=-135,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=39,score_RockTrigger=39] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=39,score_RockTrigger=39] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=39,score_RockTrigger=39,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=39,score_RockTrigger=39,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=39,score_RockTrigger=39,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=39,score_RockTrigger=39,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=39,score_RockTrigger=39,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=39,score_RockTrigger=39,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=39,score_RockTrigger=39,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=39,score_RockTrigger=39,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=39,score_RockTrigger=39,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=39,score_RockTrigger=39,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=39,score_RockTrigger=39,score_rng_min=0,score_rng=58] Graveler,lvl:45
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=39,score_RockTrigger=39,score_rng_min=59,score_rng=64] Shuckle,lvl:45

execute @a[tag=RockSmash,score_RockTrigger_min=39,score_RockTrigger=39] ~ ~ ~ /execute @e[x=1993,y=9,z=-135,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=39,score_RockTrigger=39] ~ ~ ~ /setblock -687 100 1327 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=39,score_RockTrigger=39] RockTrigger 0



#Terminus Cave #16
tellraw @a[tag=RockSmash,score_RockTrigger_min=40,score_RockTrigger=40] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=40,score_RockTrigger=40] ~ ~ ~ /tp @e[x=1972,y=5,z=-119,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=40,score_RockTrigger=40] ~ ~ ~ entitydata @e[x=1972,y=5,z=-119,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=40,score_RockTrigger=40] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=40,score_RockTrigger=40] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=40,score_RockTrigger=40,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=40,score_RockTrigger=40,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=40,score_RockTrigger=40,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=40,score_RockTrigger=40,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=40,score_RockTrigger=40,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=40,score_RockTrigger=40,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=40,score_RockTrigger=40,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=40,score_RockTrigger=40,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=40,score_RockTrigger=40,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=40,score_RockTrigger=40,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=40,score_RockTrigger=40,score_rng_min=0,score_rng=58] Graveler,lvl:45
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=40,score_RockTrigger=40,score_rng_min=59,score_rng=64] Shuckle,lvl:45

execute @a[tag=RockSmash,score_RockTrigger_min=40,score_RockTrigger=40] ~ ~ ~ /execute @e[x=1972,y=5,z=-119,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=40,score_RockTrigger=40] ~ ~ ~ /setblock -687 100 1328 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=40,score_RockTrigger=40] RockTrigger 0



#Terminus Cave #17
tellraw @a[tag=RockSmash,score_RockTrigger_min=41,score_RockTrigger=41] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=41,score_RockTrigger=41] ~ ~ ~ /tp @e[x=2078,y=30,z=-36,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=41,score_RockTrigger=41] ~ ~ ~ entitydata @e[x=2078,y=30,z=-36,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=41,score_RockTrigger=41] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=41,score_RockTrigger=41] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=41,score_RockTrigger=41,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=41,score_RockTrigger=41,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=41,score_RockTrigger=41,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=41,score_RockTrigger=41,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=41,score_RockTrigger=41,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=41,score_RockTrigger=41,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=41,score_RockTrigger=41,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=41,score_RockTrigger=41,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=41,score_RockTrigger=41,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=41,score_RockTrigger=41,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=41,score_RockTrigger=41,score_rng_min=0,score_rng=58] Graveler,lvl:45
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=41,score_RockTrigger=41,score_rng_min=59,score_rng=64] Shuckle,lvl:45

execute @a[tag=RockSmash,score_RockTrigger_min=41,score_RockTrigger=41] ~ ~ ~ /execute @e[x=2078,y=30,z=-36,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=41,score_RockTrigger=41] ~ ~ ~ /setblock -687 100 1329 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=41,score_RockTrigger=41] RockTrigger 0



#Terminus Cave #18
tellraw @a[tag=RockSmash,score_RockTrigger_min=42,score_RockTrigger=42] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=42,score_RockTrigger=42] ~ ~ ~ /tp @e[x=2075,y=30,z=-34,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=42,score_RockTrigger=42] ~ ~ ~ entitydata @e[x=2075,y=30,z=-34,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=42,score_RockTrigger=42] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=42,score_RockTrigger=42] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=42,score_RockTrigger=42,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=42,score_RockTrigger=42,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=42,score_RockTrigger=42,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=42,score_RockTrigger=42,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=42,score_RockTrigger=42,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=42,score_RockTrigger=42,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=42,score_RockTrigger=42,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=42,score_RockTrigger=42,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=42,score_RockTrigger=42,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=42,score_RockTrigger=42,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=42,score_RockTrigger=42,score_rng_min=0,score_rng=58] Graveler,lvl:45
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=42,score_RockTrigger=42,score_rng_min=59,score_rng=64] Shuckle,lvl:45

execute @a[tag=RockSmash,score_RockTrigger_min=42,score_RockTrigger=42] ~ ~ ~ /execute @e[x=2075,y=30,z=-34,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=42,score_RockTrigger=42] ~ ~ ~ /setblock -687 100 1330 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=42,score_RockTrigger=42] RockTrigger 0



#Terminus Cave #19
tellraw @a[tag=RockSmash,score_RockTrigger_min=43,score_RockTrigger=43] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=43,score_RockTrigger=43] ~ ~ ~ /tp @e[x=2075,y=32,z=-52,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=43,score_RockTrigger=43] ~ ~ ~ entitydata @e[x=2075,y=32,z=-52,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=43,score_RockTrigger=43] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=43,score_RockTrigger=43] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=43,score_RockTrigger=43,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=43,score_RockTrigger=43,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=43,score_RockTrigger=43,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=43,score_RockTrigger=43,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=43,score_RockTrigger=43,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=43,score_RockTrigger=43,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=43,score_RockTrigger=43,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=43,score_RockTrigger=43,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=43,score_RockTrigger=43,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=43,score_RockTrigger=43,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=43,score_RockTrigger=43,score_rng_min=0,score_rng=58] Graveler,lvl:45
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=43,score_RockTrigger=43,score_rng_min=59,score_rng=64] Shuckle,lvl:45

execute @a[tag=RockSmash,score_RockTrigger_min=43,score_RockTrigger=43] ~ ~ ~ /execute @e[x=2075,y=32,z=-52,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=43,score_RockTrigger=43] ~ ~ ~ /setblock -687 100 1331 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=43,score_RockTrigger=43] RockTrigger 0



#Terminus Cave #20
tellraw @a[tag=RockSmash,score_RockTrigger_min=44,score_RockTrigger=44] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=44,score_RockTrigger=44] ~ ~ ~ /tp @e[x=2041,y=40,z=-106,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=44,score_RockTrigger=44] ~ ~ ~ entitydata @e[x=2041,y=40,z=-106,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=44,score_RockTrigger=44] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=44,score_RockTrigger=44] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=44,score_RockTrigger=44,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=44,score_RockTrigger=44,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=44,score_RockTrigger=44,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=44,score_RockTrigger=44,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=44,score_RockTrigger=44,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=44,score_RockTrigger=44,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=44,score_RockTrigger=44,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=44,score_RockTrigger=44,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=44,score_RockTrigger=44,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=44,score_RockTrigger=44,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=44,score_RockTrigger=44,score_rng_min=0,score_rng=58] Graveler,lvl:45
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=44,score_RockTrigger=44,score_rng_min=59,score_rng=64] Shuckle,lvl:45

execute @a[tag=RockSmash,score_RockTrigger_min=44,score_RockTrigger=44] ~ ~ ~ /execute @e[x=2041,y=40,z=-106,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=44,score_RockTrigger=44] ~ ~ ~ /setblock -687 100 1332 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=44,score_RockTrigger=44] RockTrigger 0

#------------------------------------------------------------------------------------------------------------------
#Playsound Item


playsound pixelmon:pixelmon.block.pokelootobtained ambient @a[tag=RockSmash,score_RockTrigger_min=45,score_RockTrigger=52,score_rng_min=65,score_rng=104] ~ ~ ~ 100 1 1
give @a[tag=RockSmash,score_RockTrigger_min=45,score_RockTrigger=52,score_rng_min=65,score_rng=86,score_PokemonLeague=0] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=45,score_RockTrigger=52,score_rng_min=87,score_rng=98,score_PokemonLeague=0] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=45,score_RockTrigger=52,score_rng_min=99,score_rng=104,score_PokemonLeague=0] pixelmon:old_amber

give @a[tag=RockSmash,score_RockTrigger_min=45,score_RockTrigger=52,score_rng_min=65,score_rng=68,score_PokemonLeague_min=1] pixelmon:armor_fossil
give @a[tag=RockSmash,score_RockTrigger_min=45,score_RockTrigger=52,score_rng_min=69,score_rng=72,score_PokemonLeague_min=1] pixelmon:claw_fossil
give @a[tag=RockSmash,score_RockTrigger_min=45,score_RockTrigger=52,score_rng_min=73,score_rng=76,score_PokemonLeague_min=1] pixelmon:cover_fossil
give @a[tag=RockSmash,score_RockTrigger_min=45,score_RockTrigger=52,score_rng_min=77,score_rng=80,score_PokemonLeague_min=1] pixelmon:dome_fossil
give @a[tag=RockSmash,score_RockTrigger_min=45,score_RockTrigger=52,score_rng_min=81,score_rng=84,score_PokemonLeague_min=1] pixelmon:helix_fossil
give @a[tag=RockSmash,score_RockTrigger_min=45,score_RockTrigger=52,score_rng_min=85,score_rng=88,score_PokemonLeague_min=1] pixelmon:old_amber
give @a[tag=RockSmash,score_RockTrigger_min=45,score_RockTrigger=52,score_rng_min=89,score_rng=92,score_PokemonLeague_min=1] pixelmon:plume_fossil
give @a[tag=RockSmash,score_RockTrigger_min=45,score_RockTrigger=52,score_rng_min=93,score_rng=96,score_PokemonLeague_min=1] pixelmon:root_fossil
give @a[tag=RockSmash,score_RockTrigger_min=45,score_RockTrigger=52,score_rng_min=97,score_rng=100,score_PokemonLeague_min=1] pixelmon:skull_fossil
give @a[tag=RockSmash,score_RockTrigger_min=44,score_RockTrigger=52,score_rng_min=101,score_rng=104,score_PokemonLeague_min=1] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}


#Glittering Cave #1
tellraw @a[tag=RockSmash,score_RockTrigger_min=45,score_RockTrigger=45] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=45,score_RockTrigger=45] ~ ~ ~ /tp @e[x=-1444,y=147,z=319,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=45,score_RockTrigger=45] ~ ~ ~ entitydata @e[x=-1444,y=147,z=319,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=45,score_RockTrigger=45] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=45,score_RockTrigger=45] ~ ~ ~ 100 1 1 1

execute @a[tag=RockSmash,score_RockTrigger_min=45,score_RockTrigger=45] ~ ~ ~ /execute @e[x=-1444,y=147,z=319,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=45,score_RockTrigger=45] ~ ~ ~ /setblock -687 100 1333 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=45,score_RockTrigger=45] RockTrigger 0



#Glittering Cave #2
tellraw @a[tag=RockSmash,score_RockTrigger_min=46,score_RockTrigger=46] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=46,score_RockTrigger=46] ~ ~ ~ /tp @e[x=-1429,y=147,z=306,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=46,score_RockTrigger=46] ~ ~ ~ entitydata @e[x=-1429,y=147,z=306,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=46,score_RockTrigger=46] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=46,score_RockTrigger=46] ~ ~ ~ 100 1 1 1


execute @a[tag=RockSmash,score_RockTrigger_min=46,score_RockTrigger=46] ~ ~ ~ /execute @e[x=-1429,y=147,z=306,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=46,score_RockTrigger=46] ~ ~ ~ /setblock -687 100 1334 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=46,score_RockTrigger=46] RockTrigger 0




#Glittering Cave #3
tellraw @a[tag=RockSmash,score_RockTrigger_min=47,score_RockTrigger=47] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=47,score_RockTrigger=47] ~ ~ ~ /tp @e[x=-1389,y=147,z=320,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=47,score_RockTrigger=47] ~ ~ ~ entitydata @e[x=-1389,y=147,z=320,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=47,score_RockTrigger=47] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=47,score_RockTrigger=47] ~ ~ ~ 100 1 1 1


execute @a[tag=RockSmash,score_RockTrigger_min=47,score_RockTrigger=47] ~ ~ ~ /execute @e[x=-1389,y=147,z=320,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=47,score_RockTrigger=47] ~ ~ ~ /setblock -687 100 1335 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=47,score_RockTrigger=47] RockTrigger 0


#Glittering Cave #4
tellraw @a[tag=RockSmash,score_RockTrigger_min=48,score_RockTrigger=48] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=48,score_RockTrigger=48] ~ ~ ~ /tp @e[x=-1388,y=147,z=272,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=48,score_RockTrigger=48] ~ ~ ~ entitydata @e[x=-1388,y=147,z=272,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=48,score_RockTrigger=48] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=48,score_RockTrigger=48] ~ ~ ~ 100 1 1 1


execute @a[tag=RockSmash,score_RockTrigger_min=48,score_RockTrigger=48] ~ ~ ~ /execute @e[x=-1388,y=147,z=272,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=48,score_RockTrigger=48] ~ ~ ~ /setblock -687 100 1336 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=48,score_RockTrigger=48] RockTrigger 0


#Glittering Cave #5
tellraw @a[tag=RockSmash,score_RockTrigger_min=49,score_RockTrigger=49] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=49,score_RockTrigger=49] ~ ~ ~ /tp @e[x=-1444,y=147,z=270,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=49,score_RockTrigger=49] ~ ~ ~ entitydata @e[x=-1444,y=147,z=270,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=49,score_RockTrigger=49] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=49,score_RockTrigger=49] ~ ~ ~ 100 1 1 1


execute @a[tag=RockSmash,score_RockTrigger_min=49,score_RockTrigger=49] ~ ~ ~ /execute @e[x=-1444,y=147,z=270,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=49,score_RockTrigger=49] ~ ~ ~ /setblock -687 100 1337 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=49,score_RockTrigger=49] RockTrigger 0



#Glittering Cave #6
tellraw @a[tag=RockSmash,score_RockTrigger_min=50,score_RockTrigger=50] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=50,score_RockTrigger=50] ~ ~ ~ /tp @e[x=-1489,y=147,z=285,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=50,score_RockTrigger=50] ~ ~ ~ entitydata @e[x=-1489,y=147,z=285,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=50,score_RockTrigger=50] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=50,score_RockTrigger=50] ~ ~ ~ 100 1 1 1


execute @a[tag=RockSmash,score_RockTrigger_min=50,score_RockTrigger=50] ~ ~ ~ /execute @e[x=-1489,y=147,z=285,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=50,score_RockTrigger=50] ~ ~ ~ /setblock -687 100 1338 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=50,score_RockTrigger=50] RockTrigger 0



#Glittering Cave #7
tellraw @a[tag=RockSmash,score_RockTrigger_min=51,score_RockTrigger=51] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=51,score_RockTrigger=51] ~ ~ ~ /tp @e[x=-1486,y=147,z=320,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=51,score_RockTrigger=51] ~ ~ ~ entitydata @e[x=-1486,y=147,z=320,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=51,score_RockTrigger=51] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=51,score_RockTrigger=51] ~ ~ ~ 100 1 1 1


execute @a[tag=RockSmash,score_RockTrigger_min=51,score_RockTrigger=51] ~ ~ ~ /execute @e[x=-1486,y=147,z=320,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=51,score_RockTrigger=51] ~ ~ ~ /setblock -687 100 1339 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=51,score_RockTrigger=51] RockTrigger 0



#Glittering Cave #8
tellraw @a[tag=RockSmash,score_RockTrigger_min=52,score_RockTrigger=52] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=52,score_RockTrigger=52] ~ ~ ~ /tp @e[x=-1466,y=147,z=309,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=52,score_RockTrigger=52] ~ ~ ~ entitydata @e[x=-1466,y=147,z=309,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=52,score_RockTrigger=52] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=52,score_RockTrigger=52] ~ ~ ~ 100 1 1 1


execute @a[tag=RockSmash,score_RockTrigger_min=52,score_RockTrigger=52] ~ ~ ~ /execute @e[x=-1466,y=147,z=309,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=52,score_RockTrigger=52] ~ ~ ~ /setblock -687 100 1340 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=52,score_RockTrigger=52] RockTrigger 0




#------------------------------------------------------------------------------------------------------------------

#Playsound Item
playsound pixelmon:pixelmon.block.pokelootobtained ambient @a[tag=RockSmash,score_RockTrigger_min=53,score_RockTrigger=56,score_rng_min=65,score_rng=104] ~ ~ ~ 100 1 1

#Victory Road #1
tellraw @a[tag=RockSmash,score_RockTrigger_min=53,score_RockTrigger=53] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=53,score_RockTrigger=53] ~ ~ ~ /tp @e[x=2381,y=54,z=1605,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=53,score_RockTrigger=53] ~ ~ ~ entitydata @e[x=2381,y=54,z=1605,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=53,score_RockTrigger=53] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=53,score_RockTrigger=53] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=53,score_RockTrigger=53,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=53,score_RockTrigger=53,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=53,score_RockTrigger=53,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=53,score_RockTrigger=53,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=53,score_RockTrigger=53,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=53,score_RockTrigger=53,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=53,score_RockTrigger=53,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=53,score_RockTrigger=53,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=53,score_RockTrigger=53,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=53,score_RockTrigger=53,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=53,score_RockTrigger=53,score_rng_min=0,score_rng=58] Graveler,lvl:58
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=53,score_RockTrigger=53,score_rng_min=59,score_rng=64] Shuckle,lvl:58

execute @a[tag=RockSmash,score_RockTrigger_min=53,score_RockTrigger=53] ~ ~ ~ /execute @e[x=2381,y=54,z=1605,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=53,score_RockTrigger=53] ~ ~ ~ /setblock -687 100 1341 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=53,score_RockTrigger=53] RockTrigger 0



#Victory Road #2
tellraw @a[tag=RockSmash,score_RockTrigger_min=54,score_RockTrigger=54] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=54,score_RockTrigger=54] ~ ~ ~ /tp @e[x=2225,y=75,z=1469,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=54,score_RockTrigger=54] ~ ~ ~ entitydata @e[x=2225,y=75,z=1469,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=54,score_RockTrigger=54] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=54,score_RockTrigger=54] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=54,score_RockTrigger=54,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=54,score_RockTrigger=54,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=54,score_RockTrigger=54,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=54,score_RockTrigger=54,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=54,score_RockTrigger=54,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=54,score_RockTrigger=54,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=54,score_RockTrigger=54,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=54,score_RockTrigger=54,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=54,score_RockTrigger=54,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=54,score_RockTrigger=54,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=54,score_RockTrigger=54,score_rng_min=0,score_rng=58] Graveler,lvl:58
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=54,score_RockTrigger=54,score_rng_min=59,score_rng=64] Shuckle,lvl:58

execute @a[tag=RockSmash,score_RockTrigger_min=54,score_RockTrigger=54] ~ ~ ~ /execute @e[x=2225,y=75,z=1469,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=54,score_RockTrigger=54] ~ ~ ~ /setblock -687 100 1342 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=54,score_RockTrigger=54] RockTrigger 0




#Victory Road #3
tellraw @a[tag=RockSmash,score_RockTrigger_min=55,score_RockTrigger=55] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=55,score_RockTrigger=55] ~ ~ ~ /tp @e[x=2274,y=75,z=1521,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=55,score_RockTrigger=55] ~ ~ ~ entitydata @e[x=2274,y=75,z=1521,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=55,score_RockTrigger=55] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=55,score_RockTrigger=55] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=55,score_RockTrigger=55,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=55,score_RockTrigger=55,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=55,score_RockTrigger=55,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=55,score_RockTrigger=55,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=55,score_RockTrigger=55,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=55,score_RockTrigger=55,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=55,score_RockTrigger=55,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=55,score_RockTrigger=55,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=55,score_RockTrigger=55,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=55,score_RockTrigger=55,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=55,score_RockTrigger=55,score_rng_min=0,score_rng=58] Graveler,lvl:58
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=55,score_RockTrigger=55,score_rng_min=59,score_rng=64] Shuckle,lvl:58

execute @a[tag=RockSmash,score_RockTrigger_min=55,score_RockTrigger=55] ~ ~ ~ /execute @e[x=2274,y=75,z=1521,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=55,score_RockTrigger=55] ~ ~ ~ /setblock -687 100 1343 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=55,score_RockTrigger=55] RockTrigger 0



#Victory Road #4
tellraw @a[tag=RockSmash,score_RockTrigger_min=56,score_RockTrigger=56] {"text":"You used Rock Smash!","italic":true,"color":"gray"}
execute @a[tag=RockSmash,score_RockTrigger_min=56,score_RockTrigger=56] ~ ~ ~ /tp @e[x=2139,y=90,z=1391,r=3,type=pixelmon:statue] ~ ~-1000 ~
execute @a[tag=RockSmash,score_RockTrigger_min=56,score_RockTrigger=56] ~ ~ ~ entitydata @e[x=2139,y=90,z=1391,r=3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:46s}]}
execute @a[tag=RockSmash,score_RockTrigger_min=56,score_RockTrigger=56] ~ ~ ~ playsound minecraft:item.shield.block ambient @a[tag=RockSmash,score_RockTrigger_min=56,score_RockTrigger=56] ~ ~ ~ 100 1 1 1

give @a[tag=RockSmash,score_RockTrigger_min=56,score_RockTrigger=56,score_rng_min=65,score_rng=68] pixelmon:big_pearl
give @a[tag=RockSmash,score_RockTrigger_min=56,score_RockTrigger=56,score_rng_min=69,score_rng=72] pixelmon:ether
give @a[tag=RockSmash,score_RockTrigger_min=56,score_RockTrigger=56,score_rng_min=73,score_rng=76] pixelmon:hard_stone
give @a[tag=RockSmash,score_RockTrigger_min=56,score_RockTrigger=56,score_rng_min=77,score_rng=80] minecraft:emerald 1 0 {display:{Lore:["A pretty, heart-shaped scale","that is extremely rare.","It glows faintly with all of","the colors of the rainbow."]}}
give @a[tag=RockSmash,score_RockTrigger_min=56,score_RockTrigger=56,score_rng_min=81,score_rng=84] pixelmon:max_ether
give @a[tag=RockSmash,score_RockTrigger_min=56,score_RockTrigger=56,score_rng_min=85,score_rng=88] pixelmon:max_revive
give @a[tag=RockSmash,score_RockTrigger_min=56,score_RockTrigger=56,score_rng_min=89,score_rng=92] pixelmon:pearl
give @a[tag=RockSmash,score_RockTrigger_min=56,score_RockTrigger=56,score_rng_min=93,score_rng=96] pixelmon:revive
give @a[tag=RockSmash,score_RockTrigger_min=56,score_RockTrigger=56,score_rng_min=97,score_rng=100] pixelmon:soft_sand
give @a[tag=RockSmash,score_RockTrigger_min=56,score_RockTrigger=56,score_rng_min=101,score_rng=104] pixelmon:star_piece

execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=56,score_RockTrigger=56,score_rng_min=0,score_rng=58] Graveler,lvl:58
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokebattle @a[tag=RockSmash,score_RockTrigger_min=56,score_RockTrigger=56,score_rng_min=59,score_rng=64] Shuckle,lvl:58

execute @a[tag=RockSmash,score_RockTrigger_min=56,score_RockTrigger=56] ~ ~ ~ /execute @e[x=2139,y=90,z=1391,r=3,type=armor_stand] ~ ~ ~ /particle blockdust ~ ~1 ~ 0 2 1 1 100 normal @a[r=30] 172
execute @a[tag=RockSmash,score_RockTrigger_min=56,score_RockTrigger=56] ~ ~ ~ /setblock -687 100 1344 minecraft:gold_block
scoreboard players set @a[tag=RockSmash,score_RockTrigger_min=56,score_RockTrigger=56] RockTrigger 0





















#Resets
#/execute @e[,r=3,type=armor_stand] ~ ~ ~ /summon pixelmon:statue ~ ~ ~ {ndex:101s,Growth:4b,CustomTexture:"invisible",ForgeData:{trainercommands:{interact:["/tellraw @pl {\"text\":\"It's a cracked boulder. Would you like to break it?\",\"italic\":true,\"color\":\"gray\"}","/tellraw @pl [\"\",{\"text\":\"[\"},{\"text\":\"Yes\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger RockTrigger set 1\"}},{\"text\":\"]\"}]","/scoreboard players enable @pl RockTrigger"]}}}

#entitydata @e[,r=3,type=armor_stand] {NoGravity:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:2039327,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:45s}]}

#setblock -500 100 1055 minecraft:iron_block






#----------------------------------------Rock Walls---------------------------------------------------------------------------------
#/summon pixelmon:statue 2153.0 175 2221 {NoGravity:1b,Growth:7b,BoundingBoxMode:2b,Invulnerable:0b,statueTexture:0b,CustomTexture:"invisible",ndex:101s,StartingYaw:180.0f,statueModelType:1b}

#/tedit add INTERACT /tellraw @pl {"text":"It's a wall that can be broken. Would you like to break it?","italic":true,"color":"gray"}
#/tedit add INTERACT /tellraw @pl ["",{"text":"["},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger RockTrigger set 100"}},{"text":"]"}]
#/tedit add INTERACT /scoreboard players enable @pl RockTrigger

#Victory Road, NS

#tell @a[tag=RockSmash,score_RockTrigger_min=100,score_RockTrigger=100] success!
#scoreboard players set @a[score_RockTrigger_min=100,score_RockTrigger=100] RockTrigger 0
