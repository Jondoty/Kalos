#Detects and fixes player's TalkTime and Dialogue/HoloCall values being desynced and causing soft locks
execute as @a[scores={DialogueTrigger=0,HoloCall=0},tag=!RandomizerTemp] run tellraw @s[scores={TalkTime=1..}] {"text":"Dialogue desync detected, resyncing...","italic":true,"color":"gray"}
execute as @a[scores={DialogueTrigger=0,HoloCall=0},tag=!RandomizerTemp] run scoreboard players set @s[scores={TalkTime=1..}] TalkTime 0


#Runs Writ Activate commands if paper found in Battle Chateau
tag @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper"}]}] add WritCheck
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,tag=WritCheck] run function kalos:triggers/writactivate
tag @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] remove WritCheck


#Battle Chateau Minute Cooldowns
scoreboard players remove @e[x=-687,y=100,z=1384,dy=3,type=armor_stand,scores={ChateauCD=1..}] ChateauCD 1

#Runs Battle Chateau trainer changing function if Cooldown=0
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,limit=1] run execute at @e[x=-687,y=100,z=1384,dy=3,type=armor_stand,scores={ChateauCD=0}] run function kalos:triggers/battlechateau
