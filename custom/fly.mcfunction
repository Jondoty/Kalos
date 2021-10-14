#If in a Dialogue
title @a[score_Fly_min=1,score_TalkTime_min=1] actionbar {"text":"You can't Fly while in a dialogue!"}
scoreboard players set @a[score_Fly_min=1,score_TalkTime_min=1] Fly 0

title @a[score_Fly_min=1,score_DialogueTrigger_min=1] actionbar {"text":"You can't Fly while in a dialogue!"}
scoreboard players set @a[score_Fly_min=1,score_DialogueTrigger_min=1] Fly 0

#----------------------------------------------------------------

#If Indoors (primarily to force the player to dialogue points and portal triggers):

#Gyms
tellraw @a[x=-2027,y=0,z=-2285,dx=1319,dy=256,dz=672,score_Fly_min=1] ["",{"text":"Mom's words echoed... ","italic":true,"color":"gray"},{"selector":"@p[score_Fly_min=1]","italic":true,"color":"gray"},{"text":"! There's a time and place for everything! But not now.","italic":true,"color":"gray"}]
scoreboard players set @a[x=-2027,y=0,z=-2285,dx=1319,dy=256,dz=672,score_Fly_min=1] Fly 0

#Lumiose Interiors
tellraw @a[x=-514,y=0,z=64,dx=516,dy=150,dz=436,score_Fly_min=1] ["",{"text":"Mom's words echoed... ","italic":true,"color":"gray"},{"selector":"@p[score_Fly_min=1]","italic":true,"color":"gray"},{"text":"! There's a time and place for everything! But not now.","italic":true,"color":"gray"}]
scoreboard players set @a[x=-514,y=0,z=64,dx=516,dy=150,dz=436,score_Fly_min=1] Fly 0

#Hall of Fame
tellraw @a[x=-2032,y=5,z=1910,dx=68,dy=50,dz=68,score_Fly_min=1] ["",{"text":"Mom's words echoed... ","italic":true,"color":"gray"},{"selector":"@p[score_Fly_min=1]","italic":true,"color":"gray"},{"text":"! There's a time and place for everything! But not now.","italic":true,"color":"gray"}]
scoreboard players set @a[x=-2032,y=5,z=1910,dx=68,dy=50,dz=68,score_Fly_min=1] Fly 0

#Poke Ball Factory
tellraw @a[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,score_Fly_min=1] ["",{"text":"Mom's words echoed... ","italic":true,"color":"gray"},{"selector":"@p[score_Fly_min=1]","italic":true,"color":"gray"},{"text":"! There's a time and place for everything! But not now.","italic":true,"color":"gray"}]
scoreboard players set @a[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,score_Fly_min=1] Fly 0

#Power Plant
tellraw @a[x=-1092,y=34,z=-401,dx=296,dy=55,dz=122,score_Fly_min=1] ["",{"text":"Mom's words echoed... ","italic":true,"color":"gray"},{"selector":"@p[score_Fly_min=1]","italic":true,"color":"gray"},{"text":"! There's a time and place for everything! But not now.","italic":true,"color":"gray"}]
scoreboard players set @a[x=-1092,y=34,z=-401,dx=296,dy=55,dz=122,score_Fly_min=1] Fly 0

#Flare HQ
tellraw @a[x=-2526,y=0,z=-1074,dx=232,dy=95,dz=167,score_Fly_min=1] ["",{"text":"Mom's words echoed... ","italic":true,"color":"gray"},{"selector":"@p[score_Fly_min=1]","italic":true,"color":"gray"},{"text":"! There's a time and place for everything! But not now.","italic":true,"color":"gray"}]
scoreboard players set @a[x=-2526,y=0,z=-1074,dx=232,dy=95,dz=167,score_Fly_min=1] Fly 0

#Vaniville Home Interior
tellraw @a[x=492,y=108,z=1545,dx=40,dy=20,dz=26,score_Fly_min=1] ["",{"text":"Mom's words echoed... ","italic":true,"color":"gray"},{"selector":"@p[score_Fly_min=1]","italic":true,"color":"gray"},{"text":"! There's a time and place for everything! But not now.","italic":true,"color":"gray"}]
scoreboard players set @a[x=492,y=108,z=1545,dx=40,dy=20,dz=26,score_Fly_min=1] Fly 0

#Tower of Mastery Guru room
tellraw @a[x=-1670,y=76,z=-1198,dx=23,dy=10,dz=25,score_Fly_min=1] ["",{"text":"Mom's words echoed... ","italic":true,"color":"gray"},{"selector":"@p[score_Fly_min=1]","italic":true,"color":"gray"},{"text":"! There's a time and place for everything! But not now.","italic":true,"color":"gray"}]
scoreboard players set @a[x=-1670,y=76,z=-1198,dx=23,dy=10,dz=25,score_Fly_min=1] Fly 0


#Lobby
tellraw @a[x=-792,y=100,z=1196,dx=38,dy=20,dz=47,score_Fly_min=1] ["",{"text":"Mom's words echoed... ","italic":true,"color":"gray"},{"selector":"@p[score_Fly_min=1]","italic":true,"color":"gray"},{"text":"! There's a time and place for everything! But not now.","italic":true,"color":"gray"}]
scoreboard players set @a[x=-792,y=100,z=1196,dx=38,dy=20,dz=47,score_Fly_min=1] Fly 0










#----------------------------------------------------------------

#If ActiveQuest tag
tellraw @a[score_Fly_min=1,tag=ActiveQuest] {"text":"You can't fly right now!","italic":true,"color":"gray"}
scoreboard players set @a[score_Fly_min=1,tag=ActiveQuest] Fly 0

#----------------------------------------------------------------

#In-Cave Messages

#Connecting Cave
tellraw @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_Fly_min=1] {"text":"You can't fly from a cave!","italic":true,"color":"gray"}
scoreboard players set @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_Fly_min=1] Fly 0


#Reflection Cave
tellraw @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_Fly_min=1] {"text":"You can't fly from a cave!","italic":true,"color":"gray"}
scoreboard players set @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_Fly_min=1] Fly 0


#Terminus Cave
tellraw @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_Fly_min=1] {"text":"You can't fly from a cave!","italic":true,"color":"gray"}
scoreboard players set @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_Fly_min=1] Fly 0

tellraw @a[x=1524,y=68,z=6,dx=177,dy=19,dz=100,score_Fly_min=1] {"text":"You can't fly from a cave!","italic":true,"color":"gray"}
scoreboard players set @a[x=1524,y=68,z=6,dx=177,dy=19,dz=100,score_Fly_min=1] Fly 0


#Glittering Cave
tellraw @a[x=-1542,y=0,z=249,dx=174,dy=256,dz=310,score_Fly_min=1] {"text":"You can't fly from a cave!","italic":true,"color":"gray"}
scoreboard players set @a[x=-1542,y=0,z=249,dx=174,dy=256,dz=310,score_Fly_min=1] Fly 0


#Lost Hotel
tellraw @a[x=403,y=0,z=-497,dx=144,dy=100,dz=127,score_Fly_min=1] {"text":"You can't fly from this location!","italic":true,"color":"gray"}
scoreboard players set @a[x=403,y=0,z=-497,dx=144,dy=100,dz=127,score_Fly_min=1] Fly 0

#Frost Cavern
tellraw @a[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,score_Fly_min=1] {"text":"You can't fly from a cave!","italic":true,"color":"gray"}
scoreboard players set @a[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,score_Fly_min=1] Fly 0


#Victory Road
tellraw @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_Fly_min=1] {"text":"You can't fly from a cave!","italic":true,"color":"gray"}
scoreboard players set @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_Fly_min=1] Fly 0

#----------------------------------------------------------------

#Standard TP commands
scoreboard teams join Default @a[score_Fly_min=1,tag=!ActiveQuest]

effect @a[score_Fly_min=1,tag=!ActiveQuest] minecraft:resistance 3 5 true
tp @a[score_Fly_min=1,tag=!ActiveQuest] 1489.5 211 -1333.5 180 51
tellraw @a[x=1489,y=204,z=-1346,r=30,score_Fly_min=1] {"text":"You used fly!","italic":true,"color":"gray"}
playsound entity.arrow.shoot ambient @a[score_Fly_min=1] ~ ~ ~ 10 1 1

#Resets TP
scoreboard players set @a[x=1489,y=204,z=-1346,r=30,score_Fly_min=1] Fly 0
