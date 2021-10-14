#Disables Mega Stone particles
setblock -420 100 1367 minecraft:iron_block


#Resets Berries
scoreboard players set @a OranPickup 0
scoreboard players set @a PersimPickup 0
scoreboard players set @a AguavPickup 0
scoreboard players set @a MagoPickup 0
scoreboard players set @a IapapaPickup 0
scoreboard players set @a SitrusPickup 0
scoreboard players set @a AspearPickup 0
scoreboard players set @a RoseliPickup 0
scoreboard players set @a LeppaPickup 0
scoreboard players set @a LumPickup 0
scoreboard players set @a WacanPickup 0
scoreboard players set @a YachePickup 0
scoreboard players set @a KasibPickup 0
scoreboard players set @a FigyPickup 0

#Day of the Week counter
scoreboard players add @e[x=-687,y=100,z=1388,dy=4,type=armor_stand] Weekday 1
scoreboard players set @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=8] Weekday 1
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=1,score_Weekday=1] ~ ~ ~ /title @a actionbar {"text":"Monday","italic":true}
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ /title @a actionbar {"text":"Tuesday","italic":true}
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=3,score_Weekday=3] ~ ~ ~ /title @a actionbar {"text":"Wednesday","italic":true}
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ /title @a actionbar {"text":"Thursday","italic":true}
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=5,score_Weekday=5] ~ ~ ~ /title @a actionbar {"text":"Friday","italic":true}
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=6,score_Weekday=6] ~ ~ ~ /title @a actionbar {"text":"Saturday","italic":true}
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=7,score_Weekday=7] ~ ~ ~ /title @a actionbar {"text":"Sunday","italic":true}


#Resets Tierno's daily Heart Scale
scoreboard players set @a[score_TrainerLoot76_min=1] TrainerLoot76 0

#Resets Rock Smash rocks, Trash Cans, and Ambush Shadows
fill -672 100 1273 -687 100 1344 minecraft:redstone_block 0 replace minecraft:gold_block

#Resets player's roaming legendary scores
scoreboard players set @a[score_Grass_min=1] Grass 0
scoreboard players tag @a[tag=Dialogue167] remove Dialogue167


#Removes Hotel Guest cooldown tags
scoreboard players tag @a remove MaidCD
scoreboard players tag @a remove TouristCD
scoreboard players tag @a remove BackpackerCD
scoreboard players tag @a remove HikerCD
scoreboard players tag @a remove WaiterCD
scoreboard players tag @a remove MadameCD



#Removes QuizTM Cooldown
scoreboard players tag @a remove QuizCooldown

#-----------------------------------------

#Removes Chateau Writ scores if present

execute @e[x=-685,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1,score_WritCD=1] ~ ~ ~ tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] {"text":"A Writ of Invitation wore off!","italic":true,"color":"gray"}
execute @e[x=-683,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1,score_WritCD=1] ~ ~ ~ tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] {"text":"A Silver Writ of Invitation wore off!","italic":true,"color":"gray"}
execute @e[x=-681,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1,score_WritCD=1] ~ ~ ~ tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] {"text":"A Gold Writ of Invitation wore off!","italic":true,"color":"gray"}

execute @e[x=-679,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1,score_WritCD=1] ~ ~ ~ tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] {"text":"A Writ of Challenge wore off!","italic":true,"color":"gray"}
execute @e[x=-677,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1,score_WritCD=1] ~ ~ ~ tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] {"text":"A Blue Writ of Challenge wore off!","italic":true,"color":"gray"}
execute @e[x=-675,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1,score_WritCD=1] ~ ~ ~ tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] {"text":"A Red Writ of Challenge wore off!","italic":true,"color":"gray"}
execute @e[x=-673,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1,score_WritCD=1] ~ ~ ~ tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] {"text":"A Black Writ of Challenge wore off!","italic":true,"color":"gray"}

scoreboard players remove @e[x=-687,y=100,z=1384,dx=14,dy=3,score_WritCD_min=1] WritCD 1

scoreboard players operation Writ_of_Invitation Active_Writs = @e[x=-685,y=100,z=1384,dy=3,type=armor_stand] WritCD
scoreboard players operation Silver_Writ_of_Invitation Active_Writs = @e[x=-683,y=100,z=1384,dy=3,type=armor_stand] WritCD
scoreboard players operation Gold_Writ_of_Invitation Active_Writs = @e[x=-681,y=100,z=1384,dy=3,type=armor_stand] WritCD

scoreboard players operation Writ_of_Challenge Active_Writs = @e[x=-679,y=100,z=1384,dy=3,type=armor_stand] WritCD
scoreboard players operation Blue_Writ_of_Challenge Active_Writs = @e[x=-677,y=100,z=1384,dy=3,type=armor_stand] WritCD
scoreboard players operation Red_Writ_of_Challenge Active_Writs = @e[x=-675,y=100,z=1384,dy=3,type=armor_stand] WritCD
scoreboard players operation Black_Writ_of_Challenge Active_Writs = @e[x=-673,y=100,z=1384,dy=3,type=armor_stand] WritCD

#Sets sidebar Writ active scores
execute @e[x=-685,y=100,z=1384,dy=3,type=armor_stand,score_WritCD=0] ~ ~ ~ scoreboard players reset Writ_of_Invitation
execute @e[x=-683,y=100,z=1384,dy=3,type=armor_stand,score_WritCD=0] ~ ~ ~ scoreboard players reset Silver_Writ_of_Invitation
execute @e[x=-681,y=100,z=1384,dy=3,type=armor_stand,score_WritCD=0] ~ ~ ~ scoreboard players reset Gold_Writ_of_Invitation

execute @e[x=-679,y=100,z=1384,dy=3,type=armor_stand,score_WritCD=0] ~ ~ ~ scoreboard players reset Writ_of_Challenge
execute @e[x=-677,y=100,z=1384,dy=3,type=armor_stand,score_WritCD=0] ~ ~ ~ scoreboard players reset Blue_Writ_of_Challenge
execute @e[x=-675,y=100,z=1384,dy=3,type=armor_stand,score_WritCD=0] ~ ~ ~ scoreboard players reset Red_Writ_of_Challenge
execute @e[x=-673,y=100,z=1384,dy=3,type=armor_stand,score_WritCD=0] ~ ~ ~ scoreboard players reset Black_Writ_of_Challenge


#-----------------------------------------


#Removes LookerCooldown tag if present
scoreboard players tag @a[tag=LookerCooldown] remove LookerCooldown


#Removes Loto-ID Cooldown if present
scoreboard players tag @a[tag=Dialogue240] remove Dialogue240


#Manages birthday days
scoreboard players tag @a[tag=Birthday] remove Birthday
scoreboard players tag @a[tag=Dialogue265] remove Dialogue265

scoreboard players add @a PlayedDays 1

scoreboard players tag @a[score_PlayedDays_min=365,score_PlayedDays=365] add Birthday
scoreboard players tag @a[score_PlayedDays_min=730,score_PlayedDays=730] add Birthday
scoreboard players tag @a[score_PlayedDays_min=1095,score_PlayedDays=1095] add Birthday
scoreboard players tag @a[score_PlayedDays_min=1460,score_PlayedDays=1460] add Birthday
scoreboard players tag @a[score_PlayedDays_min=1825,score_PlayedDays=1825] add Birthday
scoreboard players tag @a[score_PlayedDays_min=2190,score_PlayedDays=2190] add Birthday
scoreboard players tag @a[score_PlayedDays_min=2555,score_PlayedDays=2555] add Birthday
scoreboard players tag @a[score_PlayedDays_min=2920,score_PlayedDays=2920] add Birthday
scoreboard players tag @a[score_PlayedDays_min=3285,score_PlayedDays=3285] add Birthday
scoreboard players tag @a[score_PlayedDays_min=3650,score_PlayedDays=3650] add Birthday
scoreboard players tag @a[score_PlayedDays_min=4015,score_PlayedDays=4015] add Birthday
scoreboard players tag @a[score_PlayedDays_min=4380,score_PlayedDays=4380] add Birthday
scoreboard players tag @a[score_PlayedDays_min=4745,score_PlayedDays=4745] add Birthday
scoreboard players tag @a[score_PlayedDays_min=5110,score_PlayedDays=5110] add Birthday
scoreboard players tag @a[score_PlayedDays_min=5475,score_PlayedDays=5475] add Birthday
scoreboard players tag @a[score_PlayedDays_min=5840,score_PlayedDays=5840] add Birthday
scoreboard players tag @a[score_PlayedDays_min=6205,score_PlayedDays=6205] add Birthday
scoreboard players tag @a[score_PlayedDays_min=6570,score_PlayedDays=6570] add Birthday
scoreboard players tag @a[score_PlayedDays_min=6935,score_PlayedDays=6935] add Birthday
scoreboard players tag @a[score_PlayedDays_min=7300,score_PlayedDays=7300] add Birthday
scoreboard players tag @a[score_PlayedDays_min=7665,score_PlayedDays=7665] add Birthday
scoreboard players tag @a[score_PlayedDays_min=8030,score_PlayedDays=8030] add Birthday
scoreboard players tag @a[score_PlayedDays_min=8395,score_PlayedDays=8395] add Birthday
scoreboard players tag @a[score_PlayedDays_min=8760,score_PlayedDays=8760] add Birthday
scoreboard players tag @a[score_PlayedDays_min=9125,score_PlayedDays=9125] add Birthday
scoreboard players tag @a[score_PlayedDays_min=9490,score_PlayedDays=9490] add Birthday
scoreboard players tag @a[score_PlayedDays_min=9855,score_PlayedDays=9855] add Birthday

advancement grant @a[score_PlayedDays_min=365,score_PlayedDays=365] only kalos:adventurer4




#Resets daily Ribbon Tourist dialogues
scoreboard players tag @a remove Dialogue269
scoreboard players tag @a remove Dialogue270
scoreboard players tag @a remove Dialogue271
scoreboard players tag @a remove Dialogue272
scoreboard players tag @a remove Dialogue273
scoreboard players tag @a remove Dialogue274
scoreboard players tag @a remove Dialogue275
scoreboard players tag @a remove Dialogue276
scoreboard players tag @a remove Dialogue277
scoreboard players tag @a remove Dialogue278
scoreboard players tag @a remove Dialogue279
scoreboard players tag @a remove Dialogue280
scoreboard players tag @a remove Dialogue281
scoreboard players tag @a remove Dialogue282










#-----------------------------------------


#Fills in stepped-on farmland in Berry Fields
fill -1189 99 15 -1226 99 15 minecraft:farmland 0 replace minecraft:dirt
fill -1189 99 17 -1226 99 17 minecraft:farmland 0 replace minecraft:dirt
fill -1189 99 19 -1226 99 19 minecraft:farmland 0 replace minecraft:dirt

fill -1189 99 26 -1226 99 26 minecraft:farmland 0 replace minecraft:dirt
fill -1189 99 28 -1226 99 28 minecraft:farmland 0 replace minecraft:dirt
fill -1189 99 30 -1226 99 30 minecraft:farmland 0 replace minecraft:dirt

fill -1235 99 4 -1272 99 4 minecraft:farmland 0 replace minecraft:dirt
fill -1235 99 6 -1272 99 6 minecraft:farmland 0 replace minecraft:dirt
fill -1235 99 8 -1272 99 8 minecraft:farmland 0 replace minecraft:dirt

fill -1235 99 15 -1272 99 15 minecraft:farmland 0 replace minecraft:dirt
fill -1235 99 17 -1272 99 17 minecraft:farmland 0 replace minecraft:dirt
fill -1235 99 19 -1272 99 19 minecraft:farmland 0 replace minecraft:dirt

fill -1235 99 26 -1272 99 26 minecraft:farmland 0 replace minecraft:dirt
fill -1235 99 28 -1272 99 28 minecraft:farmland 0 replace minecraft:dirt
fill -1235 99 30 -1272 99 30 minecraft:farmland 0 replace minecraft:dirt

fill -1189 99 15 -1226 99 15 minecraft:farmland 0 replace minecraft:grass
fill -1189 99 17 -1226 99 17 minecraft:farmland 0 replace minecraft:grass
fill -1189 99 19 -1226 99 19 minecraft:farmland 0 replace minecraft:grass

fill -1189 99 26 -1226 99 26 minecraft:farmland 0 replace minecraft:grass
fill -1189 99 28 -1226 99 28 minecraft:farmland 0 replace minecraft:grass
fill -1189 99 30 -1226 99 30 minecraft:farmland 0 replace minecraft:grass

fill -1235 99 4 -1272 99 4 minecraft:farmland 0 replace minecraft:grass
fill -1235 99 6 -1272 99 6 minecraft:farmland 0 replace minecraft:grass
fill -1235 99 8 -1272 99 8 minecraft:farmland 0 replace minecraft:grass

fill -1235 99 15 -1272 99 15 minecraft:farmland 0 replace minecraft:grass
fill -1235 99 17 -1272 99 17 minecraft:farmland 0 replace minecraft:grass
fill -1235 99 19 -1272 99 19 minecraft:farmland 0 replace minecraft:grass

fill -1235 99 26 -1272 99 26 minecraft:farmland 0 replace minecraft:grass
fill -1235 99 28 -1272 99 28 minecraft:farmland 0 replace minecraft:grass
fill -1235 99 30 -1272 99 30 minecraft:farmland 0 replace minecraft:grass
