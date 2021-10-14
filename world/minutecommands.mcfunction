#Detects and fixes player's TalkTime and Dialogue/HoloCall values being desynced and causing soft locks
execute @a[score_DialogueTrigger=0,score_HoloCall=0,tag=!RandomizerTemp] ~ ~ ~ tellraw @s[score_TalkTime_min=1] {"text":"Dialogue desync detected, resyncing...","italic":true,"color":"gray"}
execute @a[score_DialogueTrigger=0,score_HoloCall=0,tag=!RandomizerTemp] ~ ~ ~ scoreboard players set @s[score_TalkTime_min=1] TalkTime 0


#Runs Writ Activate commands if paper found in Battle Chateau
scoreboard players tag @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] add WritCheck {Inventory:[{id:"minecraft:paper"}]}
function custom:writactivate if @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,tag=WritCheck]
scoreboard players tag @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] remove WritCheck


#Battle Chateau Minute Cooldowns
scoreboard players remove @e[x=-687,y=100,z=1384,dy=3,type=armor_stand,score_ChateauCD_min=1] ChateauCD 1

#Runs Battle Chateau trainer changing function if Cooldown=0
execute @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,c=1] ~ ~ ~ function custom:battlechateau if @e[x=-687,y=100,z=1384,dy=3,type=armor_stand,score_ChateauCD=0]
