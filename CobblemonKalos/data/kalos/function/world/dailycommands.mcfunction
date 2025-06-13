#Disables Mega Stone particles
setblock -420 100 1367 minecraft:iron_block


#Resets Berry Trees
tag @s remove OranPickup
tag @s remove PersimPickup
tag @s remove AguavPickup
tag @s remove MagoPickup
tag @s remove IapapaPickup
tag @s remove SitrusPickup
tag @s remove AspearPickup
tag @s remove RoseliPickup
tag @s remove LeppaPickup
tag @s remove LumPickup
tag @s remove WacanPickup
tag @s remove YachePickup
tag @s remove KasibPickup
tag @s remove FigyPickup

#Day of the Week counter
scoreboard players add @e[x=-687,y=100,z=1388,dy=4,type=armor_stand] Weekday 1
scoreboard players set @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=8..}] Weekday 1
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] run title @a actionbar {"text":"Monday","italic":true}
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run title @a actionbar {"text":"Tuesday","italic":true}
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] run title @a actionbar {"text":"Wednesday","italic":true}
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run title @a actionbar {"text":"Thursday","italic":true}
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] run title @a actionbar {"text":"Friday","italic":true}
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] run title @a actionbar {"text":"Saturday","italic":true}
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] run title @a actionbar {"text":"Sunday","italic":true}


#Resets Tierno's daily Heart Scale
#scoreboard players set @a[scores={TrainerLoot76=1..}] TrainerLoot76 0

#Resets Rock Smash rocks, Trash Cans, and Ambush Shadows
fill -672 100 1273 -687 100 1344 minecraft:redstone_block replace minecraft:gold_block

#Resets player's roaming legendary scores
scoreboard players set @a[scores={Grass=1..}] Grass 0
tag @a[tag=Dialogue167] remove Dialogue167


#Removes Hotel Guest cooldown tags
tag @a remove MaidCD
tag @a remove TouristCD
tag @a remove BackpackerCD
tag @a remove HikerCD
tag @a remove WaiterCD
tag @a remove MadameCD



#Removes QuizTM Cooldown
tag @a remove QuizCooldown

#-----------------------------------------

#Removes Chateau Writ scores if present

execute as @e[x=-685,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1}] run tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] {"text":"A Writ of Invitation wore off!","italic":true,"color":"gray"}
execute as @e[x=-683,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1}] run tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] {"text":"A Silver Writ of Invitation wore off!","italic":true,"color":"gray"}
execute as @e[x=-681,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1}] run tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] {"text":"A Gold Writ of Invitation wore off!","italic":true,"color":"gray"}

execute as @e[x=-679,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1}] run tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] {"text":"A Writ of Challenge wore off!","italic":true,"color":"gray"}
execute as @e[x=-677,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1}] run tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] {"text":"A Blue Writ of Challenge wore off!","italic":true,"color":"gray"}
execute as @e[x=-675,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1}] run tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] {"text":"A Red Writ of Challenge wore off!","italic":true,"color":"gray"}
execute as @e[x=-673,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1}] run tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] {"text":"A Black Writ of Challenge wore off!","italic":true,"color":"gray"}

scoreboard players remove @e[x=-687,y=100,z=1384,dx=14,dy=3,scores={WritCD=1..}] WritCD 1

scoreboard players operation Writ_of_Invitation Active_Writs = @e[x=-685,y=100,z=1384,dy=3,type=armor_stand] WritCD
scoreboard players operation Silver_Writ_of_Invitation Active_Writs = @e[x=-683,y=100,z=1384,dy=3,type=armor_stand] WritCD
scoreboard players operation Gold_Writ_of_Invitation Active_Writs = @e[x=-681,y=100,z=1384,dy=3,type=armor_stand] WritCD

scoreboard players operation Writ_of_Challenge Active_Writs = @e[x=-679,y=100,z=1384,dy=3,type=armor_stand] WritCD
scoreboard players operation Blue_Writ_of_Challenge Active_Writs = @e[x=-677,y=100,z=1384,dy=3,type=armor_stand] WritCD
scoreboard players operation Red_Writ_of_Challenge Active_Writs = @e[x=-675,y=100,z=1384,dy=3,type=armor_stand] WritCD
scoreboard players operation Black_Writ_of_Challenge Active_Writs = @e[x=-673,y=100,z=1384,dy=3,type=armor_stand] WritCD

#Sets sidebar Writ active scores
execute as @e[x=-685,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run scoreboard players reset Writ_of_Invitation
execute as @e[x=-683,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run scoreboard players reset Silver_Writ_of_Invitation
execute as @e[x=-681,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run scoreboard players reset Gold_Writ_of_Invitation

execute as @e[x=-679,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run scoreboard players reset Writ_of_Challenge
execute as @e[x=-677,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run scoreboard players reset Blue_Writ_of_Challenge
execute as @e[x=-675,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run scoreboard players reset Red_Writ_of_Challenge
execute as @e[x=-673,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run scoreboard players reset Black_Writ_of_Challenge


#-----------------------------------------


#Removes LookerCooldown tag if present
tag @a[tag=LookerCooldown] remove LookerCooldown


#Removes Loto-ID Cooldown if present
tag @a[tag=Dialogue240] remove Dialogue240


#Manages birthday days
tag @a[tag=Birthday] remove Birthday
tag @a[tag=Dialogue265] remove Dialogue265

scoreboard players add @a PlayedDays 1

tag @a[scores={PlayedDays=365}] add Birthday
tag @a[scores={PlayedDays=730}] add Birthday
tag @a[scores={PlayedDays=1095}] add Birthday
tag @a[scores={PlayedDays=1460}] add Birthday
tag @a[scores={PlayedDays=1825}] add Birthday
tag @a[scores={PlayedDays=2190}] add Birthday
tag @a[scores={PlayedDays=2555}] add Birthday
tag @a[scores={PlayedDays=2920}] add Birthday
tag @a[scores={PlayedDays=3285}] add Birthday
tag @a[scores={PlayedDays=3650}] add Birthday
tag @a[scores={PlayedDays=4015}] add Birthday
tag @a[scores={PlayedDays=4380}] add Birthday
tag @a[scores={PlayedDays=4745}] add Birthday
tag @a[scores={PlayedDays=5110}] add Birthday
tag @a[scores={PlayedDays=5475}] add Birthday
tag @a[scores={PlayedDays=5840}] add Birthday
tag @a[scores={PlayedDays=6205}] add Birthday
tag @a[scores={PlayedDays=6570}] add Birthday
tag @a[scores={PlayedDays=6935}] add Birthday
tag @a[scores={PlayedDays=7300}] add Birthday
tag @a[scores={PlayedDays=7665}] add Birthday
tag @a[scores={PlayedDays=8030}] add Birthday
tag @a[scores={PlayedDays=8395}] add Birthday
tag @a[scores={PlayedDays=8760}] add Birthday
tag @a[scores={PlayedDays=9125}] add Birthday
tag @a[scores={PlayedDays=9490}] add Birthday
tag @a[scores={PlayedDays=9855}] add Birthday

advancement grant @a[scores={PlayedDays=365}] only kalos:adventurer4




#Resets daily Ribbon Tourist dialogues
tag @a remove Dialogue269
tag @a remove Dialogue270
tag @a remove Dialogue271
tag @a remove Dialogue272
tag @a remove Dialogue273
tag @a remove Dialogue274
tag @a remove Dialogue275
tag @a remove Dialogue276
tag @a remove Dialogue277
tag @a remove Dialogue278
tag @a remove Dialogue279
tag @a remove Dialogue280
tag @a remove Dialogue281
tag @a remove Dialogue282










#-----------------------------------------


#Fills in stepped-on farmland in Berry Fields
fill -1189 99 15 -1226 99 15 minecraft:farmland replace minecraft:dirt
fill -1189 99 17 -1226 99 17 minecraft:farmland replace minecraft:dirt
fill -1189 99 19 -1226 99 19 minecraft:farmland replace minecraft:dirt

fill -1189 99 26 -1226 99 26 minecraft:farmland replace minecraft:dirt
fill -1189 99 28 -1226 99 28 minecraft:farmland replace minecraft:dirt
fill -1189 99 30 -1226 99 30 minecraft:farmland replace minecraft:dirt

fill -1235 99 4 -1272 99 4 minecraft:farmland replace minecraft:dirt
fill -1235 99 6 -1272 99 6 minecraft:farmland replace minecraft:dirt
fill -1235 99 8 -1272 99 8 minecraft:farmland replace minecraft:dirt

fill -1235 99 15 -1272 99 15 minecraft:farmland replace minecraft:dirt
fill -1235 99 17 -1272 99 17 minecraft:farmland replace minecraft:dirt
fill -1235 99 19 -1272 99 19 minecraft:farmland replace minecraft:dirt

fill -1235 99 26 -1272 99 26 minecraft:farmland replace minecraft:dirt
fill -1235 99 28 -1272 99 28 minecraft:farmland replace minecraft:dirt
fill -1235 99 30 -1272 99 30 minecraft:farmland replace minecraft:dirt

fill -1189 99 15 -1226 99 15 minecraft:farmland replace minecraft:grass_block
fill -1189 99 17 -1226 99 17 minecraft:farmland replace minecraft:grass_block
fill -1189 99 19 -1226 99 19 minecraft:farmland replace minecraft:grass_block

fill -1189 99 26 -1226 99 26 minecraft:farmland replace minecraft:grass_block
fill -1189 99 28 -1226 99 28 minecraft:farmland replace minecraft:grass_block
fill -1189 99 30 -1226 99 30 minecraft:farmland replace minecraft:grass_block

fill -1235 99 4 -1272 99 4 minecraft:farmland replace minecraft:grass_block
fill -1235 99 6 -1272 99 6 minecraft:farmland replace minecraft:grass_block
fill -1235 99 8 -1272 99 8 minecraft:farmland replace minecraft:grass_block

fill -1235 99 15 -1272 99 15 minecraft:farmland replace minecraft:grass_block
fill -1235 99 17 -1272 99 17 minecraft:farmland replace minecraft:grass_block
fill -1235 99 19 -1272 99 19 minecraft:farmland replace minecraft:grass_block

fill -1235 99 26 -1272 99 26 minecraft:farmland replace minecraft:grass_block
fill -1235 99 28 -1272 99 28 minecraft:farmland replace minecraft:grass_block
fill -1235 99 30 -1272 99 30 minecraft:farmland replace minecraft:grass_block
