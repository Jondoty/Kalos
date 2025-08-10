#execute as @a[tag=RockSmashUse] run function hoenn:world/rocksmash
#tedit add interact /tag @pl add RockSmashUse
#tedit add interact /tag @s add Break

#Idea for new version of Rock Smash
#TrainerCommands applies a tag Break to a rock that the player right clicks on
#Rock also applies the tag RockSmashUse to player. When RockSmashUse tag is found, run this function.
#If player does not have the rock smash HM unlocked, remove tag from all Break tags around them.
#If player has the HM, kill the rock smash rock with the tag break within their radius.
#Roll for an item or a spawn or nothing.
#Depending on the area, give the player a fossil, an item, a Pokemon encounter, or just nothing.

#------------------------------------------------------------------------------------------------

#Tags rocks within the player's grasp as Broken to clear a path quickly
execute at @s run tag @e[distance=..5,type=minecraft:interaction,tag=RockSmash] add Break

#Sets the armor stand model to broken
execute at @s as @e[distance=..15,tag=Break] at @s positioned ~ ~-2 ~ as @e[dy=4,type=armor_stand] run data merge entity @s {Invisible:true,Invulnerable:true,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"deepslate_copper_ore",Count:1}],Tags:["RockSmash"]}
execute as @e[distance=..15,tag=Break] at @s run particle block{block_state:{Name:terracotta}} ~ ~0.5 ~ 1 2 1 1 500

execute at @s as @e[distance=..15,tag=Break] at @s positioned ~ ~-2 ~ run fill ~ ~ ~ ~ ~5 ~ air replace barrier

#Breaks Rock Smash Rock surrounding player
execute as @s at @s run kill @e[distance=..5,type=minecraft:interaction,tag=RockSmash]
tellraw @s {"text":"You used Rock Smash!","italic":true,"color":"gray"}
playsound minecraft:item.shield.block ambient @s ~ ~ ~ 10 1 1

#------------------------------------------------------------------------------------------------
#Sets the player's score to specific areas for loot pools

scoreboard players set @s Temp 0

#Glittering Cave
scoreboard players set @s[x=-1542,y=0,z=249,dx=174,dy=256,dz=310] Temp 1

#(Default pool, will execute if score is 0)



#------------------------------------------------------------------------------------------------
#Gives the player loot depending on locations
#https://www.serebii.net/heartgoldsoulsilver/rocksmash.shtml

scoreboard players set @e[x=-687,y=100,z=1376,dx=2,dy=4] rng 0
scoreboard players add @e[x=-687,y=100,z=1376,dx=2,dy=4,sort=random,limit=1] rng 1
scoreboard players add @e[x=-687,y=100,z=1376,dx=2,dy=4,sort=random,limit=1] rng 2
scoreboard players add @e[x=-687,y=100,z=1376,dx=2,dy=4,sort=random,limit=1] rng 4
scoreboard players add @e[x=-687,y=100,z=1376,dx=2,dy=4,sort=random,limit=1] rng 8
scoreboard players add @e[x=-687,y=100,z=1376,dx=2,dy=4,sort=random,limit=1] rng 16
scoreboard players operation @s rng = @e[x=-687,y=100,z=1376,dy=2,type=armor_stand] rng


#Everywhere item drops
#0-9, nothing
#10-20, Pokemon Battle
#21-31, loots
#Pool with all available items
#give @s[scores={Temp=0,rng=21}] Big Pearl
#give @s[scores={Temp=0,rng=22}] Ether
#give @s[scores={Temp=0,rng=23..24}] Hard Stone
#give @s[scores={Temp=0,rng=25..26}] Heart Scale
#give @s[scores={Temp=0,rng=27}] Max Ether
#give @s[scores={Temp=0,rng=28}] Max Revive
#give @s[scores={Temp=0,rng=29..30}] Revive
#give @s[scores={Temp=0,rng=31}] Soft Sand
#give @s[scores={Temp=0,rng=31}] Star Piece

#Smaller current-cobblemon item pool
give @s[scores={Temp=0,rng=21}] cobblemon:soft_sand
give @s[scores={Temp=0,rng=22}] cobblemon:max_revive
give @s[scores={Temp=0,rng=23..24}] cobblemon:ether
give @s[scores={Temp=0,rng=25..26}] cobblemon:revive
give @s[scores={Temp=0,rng=27}] cobblemon:hard_stone
give @s[scores={Temp=0,rng=28}] cobblemon:max_ether
execute as @s[scores={Temp=0,rng=29}] run scoreboard players add @s Money 6000
execute as @s[scores={Temp=0,rng=30..31}] run scoreboard players add @s Money 4000



#If the player is within Glittering Cave
#No Poke Spawns, do all loot 10-31
give @s[scores={Temp=1,rng=10..11}] cobblemon:armor_fossil
give @s[scores={Temp=1,rng=12..13}] cobblemon:claw_fossil
give @s[scores={Temp=1,rng=14..15}] cobblemon:cover_fossil
give @s[scores={Temp=1,rng=16..17}] cobblemon:dome_fossil
give @s[scores={Temp=1,rng=18..19}] cobblemon:helix_fossil
give @s[scores={Temp=1,rng=20..21}] cobblemon:plume_fossil
give @s[scores={Temp=1,rng=22..23}] cobblemon:root_fossil
give @s[scores={Temp=1,rng=24..25}] cobblemon:skull_fossil
give @s[scores={Temp=1,rng=26..27}] cobblemon:old_amber_fossil
give @s[scores={Temp=1,rng=28..29}] cobblemon:jaw_fossil
give @s[scores={Temp=1,rng=30..31}] cobblemon:sail_fossil

playsound minecraft:entity.experience_orb.pickup ambient @s[scores={Temp=0,rng=21..31}] ~ ~ ~ 1 1 1
tellraw @s[scores={Temp=0,rng=21..28}] {"text":"An item was in the rubble!","italic":true,"color":"gray"}
tellraw @s[scores={Temp=0,rng=29..31}] {"text":"Some money was in the rubble!","italic":true,"color":"gray"}


playsound minecraft:entity.experience_orb.pickup ambient @s[scores={Temp=0,rng=21..31}] ~ ~ ~ 1 1 1
tellraw @s[scores={Temp=1,rng=10..31}] {"text":"A fossil was in the rubble!","italic":true,"color":"gray"}


#--------------------------------------
#Pokemon Encounters!

#Cyllage City
#50% Dwebble
#30% Onix
#20% Binacle
execute as @s[x=-2223,y=0,z=-217,dx=354,dy=256,dz=275,scores={rng=10..14}] at @s run pokespawn dwebble level=14
execute as @s[x=-2223,y=0,z=-217,dx=354,dy=256,dz=275,scores={rng=15..17}] at @s run pokespawn onix level=14
execute as @s[x=-2223,y=0,z=-217,dx=354,dy=256,dz=275,scores={rng=18..20}] at @s run pokespawn binacle level=14

tellraw @s[x=-2223,y=0,z=-217,dx=354,dy=256,dz=275,scores={rng=10..14}] {"text":"A Dwebble was in the rubble!","italic":true,"color":"gray"}
tellraw @s[x=-2223,y=0,z=-217,dx=354,dy=256,dz=275,scores={rng=15..17}] {"text":"A Onix was in the rubble!","italic":true,"color":"gray"}
tellraw @s[x=-2223,y=0,z=-217,dx=354,dy=256,dz=275,scores={rng=18..20}] {"text":"A Binacle was in the rubble!","italic":true,"color":"gray"}

execute as @s[x=-2223,y=0,z=-217,dx=354,dy=256,dz=275,scores={rng=10..14}] run playsound cobblemon:pokemon.dwebble.cry ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2223,y=0,z=-217,dx=354,dy=256,dz=275,scores={rng=15..17}] run playsound cobblemon:pokemon.onix.cry ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2223,y=0,z=-217,dx=354,dy=256,dz=275,scores={rng=18..20}] run playsound cobblemon:pokemon.binacle.cry ambient @s ~ ~ ~ 1 1 1

#--------------------------------------
#Route 8
#60% Dwebble
#40% Binacle
execute as @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={rng=10..15}] at @s run pokespawn dwebble level=14
execute as @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={rng=16..20}] at @s run pokespawn binacle level=14

tellraw @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={rng=10..15}] {"text":"A Dwebble was in the rubble!","italic":true,"color":"gray"}
tellraw @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={rng=16..20}] {"text":"A Binacle was in the rubble!","italic":true,"color":"gray"}

execute as @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={rng=10..15}] run playsound cobblemon:pokemon.dwebble.cry ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={rng=16..20}] run playsound cobblemon:pokemon.binacle.cry ambient @s ~ ~ ~ 1 1 1

#--------------------------------------
#Ambrette Town
#60% Dwebble
#40% Binacle
execute as @s[x=-2115,y=0,z=504,dx=240,dy=256,dz=258,scores={rng=10..15}] at @s run pokespawn dwebble level=14
execute as @s[x=-2115,y=0,z=504,dx=240,dy=256,dz=258,scores={rng=16..20}] at @s run pokespawn binacle level=14

tellraw @s[x=-2115,y=0,z=504,dx=240,dy=256,dz=258,scores={rng=10..15}] {"text":"A Dwebble was in the rubble!","italic":true,"color":"gray"}
tellraw @s[x=-2115,y=0,z=504,dx=240,dy=256,dz=258,scores={rng=16..20}] {"text":"A Binacle was in the rubble!","italic":true,"color":"gray"}

execute as @s[x=-2115,y=0,z=504,dx=240,dy=256,dz=258,scores={rng=10..15}] run playsound cobblemon:pokemon.dwebble.cry ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2115,y=0,z=504,dx=240,dy=256,dz=258,scores={rng=16..20}] run playsound cobblemon:pokemon.binacle.cry ambient @s ~ ~ ~ 1 1 1

#--------------------------------------
#Route 12
#60% Dwebble
#40% Binacle
execute as @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={rng=10..15}] at @s run pokespawn dwebble level=24
execute as @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={rng=16..20}] at @s run pokespawn binacle level=24

tellraw @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={rng=10..15}] {"text":"A Dwebble was in the rubble!","italic":true,"color":"gray"}
tellraw @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={rng=16..20}] {"text":"A Binacle was in the rubble!","italic":true,"color":"gray"}

execute as @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={rng=10..15}] run playsound cobblemon:pokemon.dwebble.cry ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={rng=16..20}] run playsound cobblemon:pokemon.binacle.cry ambient @s ~ ~ ~ 1 1 1

#--------------------------------------
#Azure Bay
#60% Dwebble
#40% Binacle
execute as @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={rng=10..15}] at @s run pokespawn dwebble level=24
execute as @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={rng=16..20}] at @s run pokespawn binacle level=24

tellraw @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={rng=10..15}] {"text":"A Dwebble was in the rubble!","italic":true,"color":"gray"}
tellraw @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={rng=16..20}] {"text":"A Binacle was in the rubble!","italic":true,"color":"gray"}

execute as @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={rng=10..15}] run playsound cobblemon:pokemon.dwebble.cry ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={rng=16..20}] run playsound cobblemon:pokemon.binacle.cry ambient @s ~ ~ ~ 1 1 1

#--------------------------------------
#Route 13
#60% Graveler
#40% Binacle
execute as @s[x=-973,y=0,z=-871,dx=371,dy=256,dz=651,scores={rng=10..15}] at @s run pokespawn graveler level=27
execute as @s[x=-973,y=0,z=-871,dx=371,dy=256,dz=651,scores={rng=16..20}] at @s run pokespawn slugma level=27

tellraw @s[x=-973,y=0,z=-871,dx=371,dy=256,dz=651,scores={rng=10..15}] {"text":"A Graveler was in the rubble!","italic":true,"color":"gray"}
tellraw @s[x=-973,y=0,z=-871,dx=371,dy=256,dz=651,scores={rng=16..20}] {"text":"A Slugma was in the rubble!","italic":true,"color":"gray"}

execute as @s[x=-973,y=0,z=-871,dx=371,dy=256,dz=651,scores={rng=10..15}] run playsound cobblemon:pokemon.graveler.cry ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-973,y=0,z=-871,dx=371,dy=256,dz=651,scores={rng=16..20}] run playsound cobblemon:pokemon.slugma.cry ambient @s ~ ~ ~ 1 1 1

#--------------------------------------
#Route 18
#90% Graveler
#10% Shuckle
execute as @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={rng=10..18}] at @s run pokespawn graveler level=45
execute as @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={rng=19..20}] at @s run pokespawn shuckle level=45

tellraw @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={rng=10..18}] {"text":"A Graveler was in the rubble!","italic":true,"color":"gray"}
tellraw @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={rng=19..20}] {"text":"A Shuckle was in the rubble!","italic":true,"color":"gray"}

execute as @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={rng=10..18}] run playsound cobblemon:pokemon.graveler.cry ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={rng=19..20}] run playsound cobblemon:pokemon.shuckle.cry ambient @s ~ ~ ~ 1 1 1

#--------------------------------------
#Terminus Cave
#90% Graveler
#10% Shuckle
execute as @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={rng=10..18}] at @s run pokespawn graveler level=45
execute as @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={rng=19..20}] at @s run pokespawn shuckle level=45

tellraw @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={rng=10..18}] {"text":"A Graveler was in the rubble!","italic":true,"color":"gray"}
tellraw @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={rng=19..20}] {"text":"A Shuckle was in the rubble!","italic":true,"color":"gray"}

execute as @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={rng=10..18}] run playsound cobblemon:pokemon.graveler.cry ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={rng=19..20}] run playsound cobblemon:pokemon.shuckle.cry ambient @s ~ ~ ~ 1 1 1

#--------------------------------------
#Victory Road
#90% Graveler
#10% Shuckle
execute as @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=1417,scores={rng=10..18}] at @s run pokespawn graveler level=58
execute as @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=1417,scores={rng=19..20}] at @s run pokespawn shuckle level=58

tellraw @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=1417,scores={rng=10..18}] {"text":"A Graveler was in the rubble!","italic":true,"color":"gray"}
tellraw @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=1417,scores={rng=19..20}] {"text":"A Shuckle was in the rubble!","italic":true,"color":"gray"}

execute as @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=1417,scores={rng=10..18}] run playsound cobblemon:pokemon.graveler.cry ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=1417,scores={rng=19..20}] run playsound cobblemon:pokemon.shuckle.cry ambient @s ~ ~ ~ 1 1 1















tag @s remove RockSmashUse

#
