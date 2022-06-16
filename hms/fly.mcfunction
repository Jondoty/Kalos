#If in a Dialogue
title @s[scores={Fly=1..,TalkTime=1..}] actionbar {"text":"You can't Fly while in a dialogue!"}
scoreboard players set @s[scores={Fly=1..,TalkTime=1..}] Fly 0

title @s[scores={Fly=1..,DialogueTrigger=1..}] actionbar {"text":"You can't Fly while in a dialogue!"}
scoreboard players set @s[scores={Fly=1..,DialogueTrigger=1..}] Fly 0

#----------------------------------------------------------------

#If Indoors (primarily to force the player to dialogue points and portal triggers):

#Gyms
tellraw @s[x=-2027,y=0,z=-2285,dx=1319,dy=256,dz=672,scores={Fly=1..}] ["",{"text":"Mom's words echoed... ","italic":true,"color":"gray"},{"selector":"@s","italic":true,"color":"gray"},{"text":"! There's a time and place for everything! But not now.","italic":true,"color":"gray"}]
scoreboard players set @s[x=-2027,y=0,z=-2285,dx=1319,dy=256,dz=672,scores={Fly=1..}] Fly 0

#Lumiose Interiors
tellraw @s[x=-514,y=0,z=64,dx=516,dy=150,dz=436,scores={Fly=1..}] ["",{"text":"Mom's words echoed... ","italic":true,"color":"gray"},{"selector":"@s","italic":true,"color":"gray"},{"text":"! There's a time and place for everything! But not now.","italic":true,"color":"gray"}]
scoreboard players set @s[x=-514,y=0,z=64,dx=516,dy=150,dz=436,scores={Fly=1..}] Fly 0

#Hall of Fame
tellraw @s[x=-2032,y=5,z=1910,dx=68,dy=50,dz=68,scores={Fly=1..}] ["",{"text":"Mom's words echoed... ","italic":true,"color":"gray"},{"selector":"@s","italic":true,"color":"gray"},{"text":"! There's a time and place for everything! But not now.","italic":true,"color":"gray"}]
scoreboard players set @s[x=-2032,y=5,z=1910,dx=68,dy=50,dz=68,scores={Fly=1..}] Fly 0

#Poke Ball Factory
tellraw @s[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,scores={Fly=1..}] ["",{"text":"Mom's words echoed... ","italic":true,"color":"gray"},{"selector":"@s","italic":true,"color":"gray"},{"text":"! There's a time and place for everything! But not now.","italic":true,"color":"gray"}]
scoreboard players set @s[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,scores={Fly=1..}] Fly 0

#Power Plant
tellraw @s[x=-1092,y=34,z=-401,dx=296,dy=55,dz=122,scores={Fly=1..}] ["",{"text":"Mom's words echoed... ","italic":true,"color":"gray"},{"selector":"@s","italic":true,"color":"gray"},{"text":"! There's a time and place for everything! But not now.","italic":true,"color":"gray"}]
scoreboard players set @s[x=-1092,y=34,z=-401,dx=296,dy=55,dz=122,scores={Fly=1..}] Fly 0

#Flare HQ
tellraw @s[x=-2526,y=0,z=-1074,dx=232,dy=95,dz=167,scores={Fly=1..}] ["",{"text":"Mom's words echoed... ","italic":true,"color":"gray"},{"selector":"@s","italic":true,"color":"gray"},{"text":"! There's a time and place for everything! But not now.","italic":true,"color":"gray"}]
scoreboard players set @s[x=-2526,y=0,z=-1074,dx=232,dy=95,dz=167,scores={Fly=1..}] Fly 0

#Vaniville Home Interior
tellraw @s[x=492,y=108,z=1545,dx=40,dy=20,dz=26,scores={Fly=1..}] ["",{"text":"Mom's words echoed... ","italic":true,"color":"gray"},{"selector":"@s","italic":true,"color":"gray"},{"text":"! There's a time and place for everything! But not now.","italic":true,"color":"gray"}]
scoreboard players set @s[x=492,y=108,z=1545,dx=40,dy=20,dz=26,scores={Fly=1..}] Fly 0

#Tower of Mastery Guru room
tellraw @s[x=-1670,y=76,z=-1198,dx=23,dy=10,dz=25,scores={Fly=1..}] ["",{"text":"Mom's words echoed... ","italic":true,"color":"gray"},{"selector":"@s","italic":true,"color":"gray"},{"text":"! There's a time and place for everything! But not now.","italic":true,"color":"gray"}]
scoreboard players set @s[x=-1670,y=76,z=-1198,dx=23,dy=10,dz=25,scores={Fly=1..}] Fly 0


#Lobby
tellraw @s[x=-792,y=100,z=1196,dx=38,dy=20,dz=47,scores={Fly=1..}] ["",{"text":"Mom's words echoed... ","italic":true,"color":"gray"},{"selector":"@s","italic":true,"color":"gray"},{"text":"! There's a time and place for everything! But not now.","italic":true,"color":"gray"}]
scoreboard players set @s[x=-792,y=100,z=1196,dx=38,dy=20,dz=47,scores={Fly=1..}] Fly 0


#Lumiose City Parade area
tellraw @a[x=1469,y=101,z=-1954,distance=..150,scores={Fly=1..}] ["",{"text":"Mom's words echoed... ","italic":true,"color":"gray"},{"selector":"@p[score_Fly_min=1]","italic":true,"color":"gray"},{"text":"! There's a time and place for everything! But not now.","italic":true,"color":"gray"}]
scoreboard players set @a[x=1469,y=101,z=-1954,distance=..150,scores={Fly=1..}] Fly 0










#----------------------------------------------------------------

#If ActiveQuest tag
tellraw @s[scores={Fly=1..},tag=ActiveQuest] {"text":"You can't fly right now!","italic":true,"color":"gray"}
scoreboard players set @s[scores={Fly=1..},tag=ActiveQuest] Fly 0

#----------------------------------------------------------------

#In-Cave Messages

#Connecting Cave
tellraw @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={Fly=1..}] {"text":"You can't fly from a cave!","italic":true,"color":"gray"}
scoreboard players set @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={Fly=1..}] Fly 0


#Reflection Cave
tellraw @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={Fly=1..}] {"text":"You can't fly from a cave!","italic":true,"color":"gray"}
scoreboard players set @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={Fly=1..}] Fly 0


#Terminus Cave
tellraw @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={Fly=1..}] {"text":"You can't fly from a cave!","italic":true,"color":"gray"}
scoreboard players set @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={Fly=1..}] Fly 0

tellraw @s[x=1524,y=68,z=6,dx=177,dy=19,dz=100,scores={Fly=1..}] {"text":"You can't fly from a cave!","italic":true,"color":"gray"}
scoreboard players set @s[x=1524,y=68,z=6,dx=177,dy=19,dz=100,scores={Fly=1..}] Fly 0


#Glittering Cave
tellraw @s[x=-1542,y=0,z=249,dx=174,dy=256,dz=310,scores={Fly=1..}] {"text":"You can't fly from a cave!","italic":true,"color":"gray"}
scoreboard players set @s[x=-1542,y=0,z=249,dx=174,dy=256,dz=310,scores={Fly=1..}] Fly 0


#Lost Hotel
tellraw @s[x=403,y=0,z=-497,dx=144,dy=100,dz=127,scores={Fly=1..}] {"text":"You can't fly from this location!","italic":true,"color":"gray"}
scoreboard players set @s[x=403,y=0,z=-497,dx=144,dy=100,dz=127,scores={Fly=1..}] Fly 0

#Frost Cavern
tellraw @s[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,scores={Fly=1..}] {"text":"You can't fly from a cave!","italic":true,"color":"gray"}
scoreboard players set @s[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,scores={Fly=1..}] Fly 0


#Victory Road
tellraw @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,scores={Fly=1..}] {"text":"You can't fly from a cave!","italic":true,"color":"gray"}
scoreboard players set @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,scores={Fly=1..}] Fly 0

#----------------------------------------------------------------

#Standard TP commands
team join Default @s[scores={Fly=1..},tag=!ActiveQuest]

effect give @s[scores={Fly=1..},tag=!ActiveQuest] minecraft:resistance 3 5 true
tp @s[scores={Fly=1..},tag=!ActiveQuest] 1489.5 211 -1333.5 180 51
tellraw @s[x=1489,y=204,z=-1346,distance=..30,scores={Fly=1..}] {"text":"You used fly!","italic":true,"color":"gray"}
playsound entity.arrow.shoot ambient @s[scores={Fly=1..}] ~ ~ ~ 10 1 1

#Resets TP
scoreboard players set @s[x=1489,y=204,z=-1346,distance=..30,scores={Fly=1..}] Fly 0
