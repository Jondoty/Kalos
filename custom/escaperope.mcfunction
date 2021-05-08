#If player is currently in a dialogue
title @a[score_DialogueTrigger_min=1,score_EscapeRopeUse_min=1] actionbar {"text":"You can't use this while in a dialogue!"}
give @a[score_EscapeRopeUse_min=1,score_DialogueTrigger_min=1] ender_eye 1 0 {display:{Lore:["A long and durable rope.","Use it to escape instantly","from a cave."]}}
scoreboard players set @a[score_EscapeRopeUse_min=1,score_DialogueTrigger_min=1] EscapeRopeUse 0

title @a[score_TalkTime_min=1,score_EscapeRopeUse_min=1] actionbar {"text":"You can't use this while in a dialogue!"}
give @a[score_EscapeRopeUse_min=1,score_TalkTime_min=1] ender_eye 1 0 {display:{Lore:["A long and durable rope.","Use it to escape instantly","from a cave."]}}
scoreboard players set @a[score_EscapeRopeUse_min=1,score_TalkTime_min=1] EscapeRopeUse 0



#Glittering Cave (Single area entrance and exit)
execute @a[x=-1542,y=0,z=249,dx=174,dy=256,dz=310,score_EscapeRopeUse_min=1] ~ ~ ~ /kill @e[r=10,type=eye_of_ender_signal]
effect @a[x=-1542,y=0,z=249,dx=174,dy=256,dz=310,score_EscapeRopeUse_min=1] minecraft:blindness 3 1 true
tellraw @a[x=-1542,y=0,z=249,dx=174,dy=256,dz=310,score_EscapeRopeUse_min=1] {"text":"You used an Escape Rope!","italic":true,"color":"gray"}
tp @a[x=-1542,y=0,z=249,dx=174,dy=256,dz=310,score_EscapeRopeUse_min=1] -1475 148 564 0 ~
scoreboard players set @a[x=-1475,y=148,z=564,r=10,score_EscapeRopeUse_min=1] click 1
scoreboard players set @a[x=-1475,y=148,z=564,r=10,score_EscapeRopeUse_min=1] EscapeRopeUse 0



#Frost Cavern (Single area entrance and exit)
execute @a[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,score_EscapeRopeUse_min=1] ~ ~ ~ /kill @e[r=10,type=eye_of_ender_signal]
effect @a[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,score_EscapeRopeUse_min=1] minecraft:blindness 3 1 true
tellraw @a[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,score_EscapeRopeUse_min=1] {"text":"You used an Escape Rope!","italic":true,"color":"gray"}
tp @a[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,score_EscapeRopeUse_min=1] 674 120 -890 0 ~
scoreboard players set @a[x=674,y=120,z=-890,r=10,score_EscapeRopeUse_min=1] click 1
scoreboard players set @a[x=674,y=120,z=-890,r=10,score_EscapeRopeUse_min=1] EscapeRopeUse 0




#Terminus Cave (Single area entrance and exit)
execute @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_EscapeRopeUse_min=1] ~ ~ ~ /kill @e[r=10,type=eye_of_ender_signal]
effect @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_EscapeRopeUse_min=1] minecraft:blindness 3 1 true
tellraw @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_EscapeRopeUse_min=1] {"text":"You used an Escape Rope!","italic":true,"color":"gray"}
tp @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_EscapeRopeUse_min=1] 1501 110 -42 0 ~
scoreboard players set @a[x=1501,y=110,z=-42,r=10,score_EscapeRopeUse_min=1] click 1
scoreboard players set @a[x=1501,y=110,z=-42,r=10,score_EscapeRopeUse_min=1] EscapeRopeUse 0




#Connecting Cave (Four different entrances and exits)
execute @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_EscapeRopeUse_min=1] ~ ~ ~ /kill @e[r=10,type=eye_of_ender_signal]
effect @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_EscapeRopeUse_min=1] minecraft:blindness 3 1 true
tellraw @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_EscapeRopeUse_min=1] {"text":"You used an Escape Rope!","italic":true,"color":"gray"}
scoreboard players set @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_EscapeRopeUse_min=1] click 1

#R7 North
tp @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_EscapeRopeUse_min=1,score_EscapeRope_min=1,score_EscapeRope=1] -1642 103 -36 -90 ~
scoreboard players set @a[x=-1642,y=103,z=-36,r=10,score_EscapeRope_min=1] EscapeRope 0
scoreboard players set @a[x=-1642,y=103,z=-36,r=10,score_EscapeRopeUse_min=1] EscapeRopeUse 0

#R7 South
tp @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_EscapeRopeUse_min=1,score_EscapeRope_min=2,score_EscapeRope=2] -1702 109 24 -90 ~
scoreboard players set @a[x=-1702,y=109,z=24,r=10,score_EscapeRope_min=1] EscapeRope 0
scoreboard players set @a[x=-1702,y=109,z=24,r=10,score_EscapeRopeUse_min=1] EscapeRopeUse 0

#R8
tp @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_EscapeRopeUse_min=1,score_EscapeRope_min=3,score_EscapeRope=3] -1881 154 98 90 ~
scoreboard players set @a[x=-1881,y=154,z=98,r=10,score_EscapeRope_min=1] EscapeRope 0
scoreboard players set @a[x=-1881,y=154,z=98,r=10,score_EscapeRopeUse_min=1] EscapeRopeUse 0

#Cyllage
tp @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_EscapeRopeUse_min=1,score_EscapeRope_min=4,score_EscapeRope=4] -1893 134 -129 90 ~
scoreboard players set @a[x=-1893,y=134,z=-129,r=10,score_EscapeRope_min=1] EscapeRope 0
scoreboard players set @a[x=-1893,y=134,z=-129,r=10,score_EscapeRopeUse_min=1] EscapeRopeUse 0





#Lost Hotel (Two different entrances and exits)
execute @a[x=403,y=0,z=-497,dx=144,dy=100,dz=127,score_EscapeRopeUse_min=1] ~ ~ ~ /kill @e[r=10,type=eye_of_ender_signal]
effect @a[x=403,y=0,z=-497,dx=144,dy=100,dz=127,score_EscapeRopeUse_min=1] minecraft:blindness 3 1 true
tellraw @a[x=403,y=0,z=-497,dx=144,dy=100,dz=127,score_EscapeRopeUse_min=1] {"text":"You used an Escape Rope!","italic":true,"color":"gray"}
scoreboard players set @a[x=403,y=0,z=-497,dx=144,dy=100,dz=127,score_EscapeRopeUse_min=1] click 1

#North Entrance
tp @a[x=403,y=0,z=-497,dx=144,dy=100,dz=127,score_EscapeRopeUse_min=1,score_EscapeRope_min=5,score_EscapeRope=5] 551 108 -488 -90 ~
scoreboard players set @a[x=551,y=108,z=-488,r=5,score_EscapeRope_min=1] EscapeRope 0
scoreboard players set @a[x=551,y=108,z=-488,r=10,score_EscapeRopeUse_min=1] EscapeRopeUse 0

#South Entrance
tp @a[x=403,y=0,z=-497,dx=144,dy=100,dz=127,score_EscapeRopeUse_min=1,score_EscapeRope_min=6,score_EscapeRope=6] 548 108 -378 0 ~
scoreboard players set @a[x=548,y=108,z=-378,r=5,score_EscapeRope_min=1] EscapeRope 0
scoreboard players set @a[x=548,y=108,z=-378,r=10,score_EscapeRopeUse_min=1] EscapeRopeUse 0

#Apply score commands hidden under stairs
#North
#scoreboard players set @a[x=534,y=99,z=-493,dx=15,dy=8,dz=10,score_EscapeRope_min=0,score_EscapeRope=4] EscapeRope 5
#scoreboard players set @a[x=534,y=99,z=-493,dx=15,dy=8,dz=10,score_EscapeRope_min=6,score_EscapeRope=100] EscapeRope 5
#scoreboard players set @a[x=534,y=107,z=-493,dx=15,dy=8,dz=10,score_EscapeRope_min=1] EscapeRope 0

#South
#scoreboard players set @a[x=538,y=99,z=-393,dx=14,dy=7,dz=16,score_EscapeRope_min=0,score_EscapeRope=5] EscapeRope 6
#scoreboard players set @a[x=538,y=99,z=-393,dx=14,dy=7,dz=16,score_EscapeRope_min=7,score_EscapeRope=100] EscapeRope 6
#scoreboard players set @a[x=538,y=107,z=-393,dx=14,dy=8,dz=25,score_EscapeRope_min=1] EscapeRope 0





#Reflection Cave (Two different entrances and exits)
execute @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_EscapeRopeUse_min=1] ~ ~ ~ /kill @e[r=10,type=eye_of_ender_signal]
effect @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_EscapeRopeUse_min=1] minecraft:blindness 3 1 true
tellraw @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_EscapeRopeUse_min=1] {"text":"You used an Escape Rope!","italic":true,"color":"gray"}
scoreboard players set @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_EscapeRopeUse_min=1] click 1

#Shalour Side
tp @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_EscapeRopeUse_min=1,score_EscapeRope_min=9,score_EscapeRope=9] -1618 84 -746 180 ~
scoreboard players set @a[x=-1618,y=84,z=-746,r=10,score_EscapeRope_min=1] EscapeRope 0
scoreboard players set @a[x=-1618,y=84,z=-746,r=10,score_EscapeRopeUse_min=1] EscapeRopeUse 0

#Route 11 Side
tp @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_EscapeRopeUse_min=1,score_EscapeRope_min=10,score_EscapeRope=10] -1972 118 -718 0 ~
scoreboard players set @a[x=-1972,y=118,z=-718,r=10,score_EscapeRope_min=1] EscapeRope 0
scoreboard players set @a[x=-1972,y=118,z=-718,r=10,score_EscapeRopeUse_min=1] EscapeRopeUse 0





#Victory Road
execute @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=1417,score_EscapeRopeUse_min=1] ~ ~ ~ /kill @e[r=10,type=eye_of_ender_signal]
effect @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=1417,score_EscapeRopeUse_min=1] minecraft:blindness 3 1 true
tellraw @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=1417,score_EscapeRopeUse_min=1] {"text":"You used an Escape Rope!","italic":true,"color":"gray"}
scoreboard players set @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=1417,score_EscapeRopeUse_min=1] click 1


#Victory Road Pokemon League
tp @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=1417,score_EscapeRopeUse_min=1,score_EscapeRope_min=11,score_EscapeRope=11] -1906 88 2301 180 ~
scoreboard players set @a[x=-1906,y=88,z=2301,r=10,score_EscapeRope_min=1] EscapeRope 0
scoreboard players set @a[x=-1906,y=88,z=2301,r=10,score_EscapeRopeUse_min=1] EscapeRopeUse 0

#Victory Road Route Entrance
tp @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=1417,score_EscapeRopeUse_min=1,score_EscapeRope_min=7,score_EscapeRope=7] 693 116 314 0 35
scoreboard players set @a[x=693,y=116,z=314,r=10,score_EscapeRope_min=1] EscapeRope 0
scoreboard players set @a[x=693,y=116,z=314,r=10,score_EscapeRopeUse_min=1] EscapeRopeUse 0












#Not in area where Escape Rope works
execute @a[score_EscapeRopeUse_min=1] ~ ~ ~ /kill @e[r=10,type=eye_of_ender_signal]
tellraw @a[score_EscapeRopeUse_min=1] ["",{"text":"Mom's words echoed... ","italic":true,"color":"gray"},{"selector":"@p[score_EscapeRopeUse_min=1]","italic":true,"color":"gray"},{"text":"! There's a time and place for everything! But not now.","italic":true,"color":"gray"}]
give @a[score_EscapeRopeUse_min=1] ender_eye 1 0 {display:{Lore:["A long and durable rope.","Use it to escape instantly","from a cave."]}}
scoreboard players set @a[score_EscapeRopeUse_min=1] EscapeRopeUse 0
