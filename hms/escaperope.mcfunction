#If player is currently in a dialogue
title @s[scores={DialogueTrigger=1..,EscapeRopeUse=1..}] actionbar {"text":"You can't use this while in a dialogue!"}
give @s[scores={EscapeRopeUse=1..,DialogueTrigger=1..}] ender_eye{display:{Lore:['[{"text":"A long and durable rope.","italic":false}]','[{"text":"Use it to escape instantly","italic":false}]','[{"text":"from a cave.","italic":false}]']}}
scoreboard players set @s[scores={EscapeRopeUse=1..,DialogueTrigger=1..}] EscapeRopeUse 0

title @s[scores={TalkTime=1..,EscapeRopeUse=1..}] actionbar {"text":"You can't use this while in a dialogue!"}
give @s[scores={EscapeRopeUse=1..,TalkTime=1..}] ender_eye{display:{Lore:['[{"text":"A long and durable rope.","italic":false}]','[{"text":"Use it to escape instantly","italic":false}]','[{"text":"from a cave.","italic":false}]']}}
scoreboard players set @s[scores={EscapeRopeUse=1..,TalkTime=1..}] EscapeRopeUse 0



#Glittering Cave (Single area entrance and exit)
execute as @s[x=-1542,y=0,z=249,dx=174,dy=256,dz=310,scores={EscapeRopeUse=1..}] run kill @e[distance=..10,type=minecraft:eye_of_ender]
effect give @s[x=-1542,y=0,z=249,dx=174,dy=256,dz=310,scores={EscapeRopeUse=1..}] minecraft:blindness 3 1 true
tellraw @s[x=-1542,y=0,z=249,dx=174,dy=256,dz=310,scores={EscapeRopeUse=1..}] {"text":"You used an Escape Rope!","italic":true,"color":"gray"}
tp @s[x=-1542,y=0,z=249,dx=174,dy=256,dz=310,scores={EscapeRopeUse=1..}] -1475 148 564 0 ~
scoreboard players set @s[x=-1475,y=148,z=564,distance=..10,scores={EscapeRopeUse=1..}] click 1
scoreboard players set @s[x=-1475,y=148,z=564,distance=..10,scores={EscapeRopeUse=1..}] EscapeRopeUse 0



#Frost Cavern (Single area entrance and exit)
execute as @s[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,scores={EscapeRopeUse=1..}] run kill @e[distance=..10,type=minecraft:eye_of_ender]
effect give @s[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,scores={EscapeRopeUse=1..}] minecraft:blindness 3 1 true
tellraw @s[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,scores={EscapeRopeUse=1..}] {"text":"You used an Escape Rope!","italic":true,"color":"gray"}
tp @s[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,scores={EscapeRopeUse=1..}] 674 120 -890 0 ~
scoreboard players set @s[x=674,y=120,z=-890,distance=..10,scores={EscapeRopeUse=1..}] click 1
scoreboard players set @s[x=674,y=120,z=-890,distance=..10,scores={EscapeRopeUse=1..}] EscapeRopeUse 0




#Terminus Cave (Single area entrance and exit)
execute as @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={EscapeRopeUse=1..}] run kill @e[distance=..10,type=minecraft:eye_of_ender]
effect give @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={EscapeRopeUse=1..}] minecraft:blindness 3 1 true
tellraw @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={EscapeRopeUse=1..}] {"text":"You used an Escape Rope!","italic":true,"color":"gray"}
tp @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={EscapeRopeUse=1..}] 1501 110 -42 0 ~
scoreboard players set @s[x=1501,y=110,z=-42,distance=..10,scores={EscapeRopeUse=1..}] click 1
scoreboard players set @s[x=1501,y=110,z=-42,distance=..10,scores={EscapeRopeUse=1..}] EscapeRopeUse 0




#Connecting Cave (Four different entrances and exits)
execute as @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={EscapeRopeUse=1..}] run kill @e[distance=..10,type=minecraft:eye_of_ender]
effect give @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={EscapeRopeUse=1..}] minecraft:blindness 3 1 true
tellraw @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={EscapeRopeUse=1..}] {"text":"You used an Escape Rope!","italic":true,"color":"gray"}
scoreboard players set @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={EscapeRopeUse=1..}] click 1

#R7 North
tp @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={EscapeRopeUse=1..,EscapeRope=1}] -1642 103 -36 -90 ~
scoreboard players set @s[x=-1642,y=103,z=-36,distance=..10,scores={EscapeRope=1..}] EscapeRope 0
scoreboard players set @s[x=-1642,y=103,z=-36,distance=..10,scores={EscapeRopeUse=1..}] EscapeRopeUse 0

#R7 South
tp @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={EscapeRopeUse=1..,EscapeRope=2}] -1702 109 24 -90 ~
scoreboard players set @s[x=-1702,y=109,z=24,distance=..10,scores={EscapeRope=1..}] EscapeRope 0
scoreboard players set @s[x=-1702,y=109,z=24,distance=..10,scores={EscapeRopeUse=1..}] EscapeRopeUse 0

#R8
tp @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={EscapeRopeUse=1..,EscapeRope=3}] -1881 154 98 90 ~
scoreboard players set @s[x=-1881,y=154,z=98,distance=..10,scores={EscapeRope=1..}] EscapeRope 0
scoreboard players set @s[x=-1881,y=154,z=98,distance=..10,scores={EscapeRopeUse=1..}] EscapeRopeUse 0

#Cyllage
tp @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={EscapeRopeUse=1..,EscapeRope=4}] -1893 134 -129 90 ~
scoreboard players set @s[x=-1893,y=134,z=-129,distance=..10,scores={EscapeRope=1..}] EscapeRope 0
scoreboard players set @s[x=-1893,y=134,z=-129,distance=..10,scores={EscapeRopeUse=1..}] EscapeRopeUse 0





#Lost Hotel (Two different entrances and exits)
execute as @s[x=403,y=0,z=-497,dx=144,dy=100,dz=127,scores={EscapeRopeUse=1..}] run kill @e[distance=..10,type=minecraft:eye_of_ender]
effect give @s[x=403,y=0,z=-497,dx=144,dy=100,dz=127,scores={EscapeRopeUse=1..}] minecraft:blindness 3 1 true
tellraw @s[x=403,y=0,z=-497,dx=144,dy=100,dz=127,scores={EscapeRopeUse=1..}] {"text":"You used an Escape Rope!","italic":true,"color":"gray"}
scoreboard players set @s[x=403,y=0,z=-497,dx=144,dy=100,dz=127,scores={EscapeRopeUse=1..}] click 1

#North Entrance
tp @s[x=403,y=0,z=-497,dx=144,dy=100,dz=127,scores={EscapeRopeUse=1..,EscapeRope=5}] 551 108 -488 -90 ~
scoreboard players set @s[x=551,y=108,z=-488,distance=..5,scores={EscapeRope=1..}] EscapeRope 0
scoreboard players set @s[x=551,y=108,z=-488,distance=..10,scores={EscapeRopeUse=1..}] EscapeRopeUse 0

#South Entrance
tp @s[x=403,y=0,z=-497,dx=144,dy=100,dz=127,scores={EscapeRopeUse=1..,EscapeRope=6}] 548 108 -378 0 ~
scoreboard players set @s[x=548,y=108,z=-378,distance=..5,scores={EscapeRope=1..}] EscapeRope 0
scoreboard players set @s[x=548,y=108,z=-378,distance=..10,scores={EscapeRopeUse=1..}] EscapeRopeUse 0

#Apply score commands hidden under stairs
#North
#scoreboard players set @s[x=534,y=99,z=-493,dx=15,dy=8,dz=10,score_EscapeRope_min=0,score_EscapeRope=4] EscapeRope 5
#scoreboard players set @s[x=534,y=99,z=-493,dx=15,dy=8,dz=10,score_EscapeRope_min=6,score_EscapeRope=100] EscapeRope 5
#scoreboard players set @s[x=534,y=107,z=-493,dx=15,dy=8,dz=10,scores={EscapeRope=1..}] EscapeRope 0

#South
#scoreboard players set @s[x=538,y=99,z=-393,dx=14,dy=7,dz=16,score_EscapeRope_min=0,score_EscapeRope=5] EscapeRope 6
#scoreboard players set @s[x=538,y=99,z=-393,dx=14,dy=7,dz=16,score_EscapeRope_min=7,score_EscapeRope=100] EscapeRope 6
#scoreboard players set @s[x=538,y=107,z=-393,dx=14,dy=8,dz=25,scores={EscapeRope=1..}] EscapeRope 0





#Reflection Cave (Two different entrances and exits)
execute as @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={EscapeRopeUse=1..}] run kill @e[distance=..10,type=minecraft:eye_of_ender]
effect give @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={EscapeRopeUse=1..}] minecraft:blindness 3 1 true
tellraw @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={EscapeRopeUse=1..}] {"text":"You used an Escape Rope!","italic":true,"color":"gray"}
scoreboard players set @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={EscapeRopeUse=1..}] click 1

#Shalour Side
tp @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={EscapeRopeUse=1..,EscapeRope=9}] -1618 84 -746 180 ~
scoreboard players set @s[x=-1618,y=84,z=-746,distance=..10,scores={EscapeRope=1..}] EscapeRope 0
scoreboard players set @s[x=-1618,y=84,z=-746,distance=..10,scores={EscapeRopeUse=1..}] EscapeRopeUse 0

#Route 11 Side
tp @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={EscapeRopeUse=1..,EscapeRope=10}] -1972 118 -718 0 ~
scoreboard players set @s[x=-1972,y=118,z=-718,distance=..10,scores={EscapeRope=1..}] EscapeRope 0
scoreboard players set @s[x=-1972,y=118,z=-718,distance=..10,scores={EscapeRopeUse=1..}] EscapeRopeUse 0





#Victory Road
execute as @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=1417,scores={EscapeRopeUse=1..}] run kill @e[distance=..10,type=minecraft:eye_of_ender]
effect give @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=1417,scores={EscapeRopeUse=1..}] minecraft:blindness 3 1 true
tellraw @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=1417,scores={EscapeRopeUse=1..}] {"text":"You used an Escape Rope!","italic":true,"color":"gray"}
scoreboard players set @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=1417,scores={EscapeRopeUse=1..}] click 1


#Victory Road Pokemon League
tp @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=1417,scores={EscapeRopeUse=1..,EscapeRope=11}] -1906 88 2301 180 ~
scoreboard players set @s[x=-1906,y=88,z=2301,distance=..10,scores={EscapeRope=1..}] EscapeRope 0
scoreboard players set @s[x=-1906,y=88,z=2301,distance=..10,scores={EscapeRopeUse=1..}] EscapeRopeUse 0

#Victory Road Route Entrance
tp @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=1417,scores={EscapeRopeUse=1..,EscapeRope=7}] 693 116 314 0 35
scoreboard players set @s[x=693,y=116,z=314,distance=..10,scores={EscapeRope=1..}] EscapeRope 0
scoreboard players set @s[x=693,y=116,z=314,distance=..10,scores={EscapeRopeUse=1..}] EscapeRopeUse 0












#Not in area where Escape Rope works
execute as @s[scores={EscapeRopeUse=1..}] run kill @e[distance=..10,type=minecraft:eye_of_ender]
tellraw @s[scores={EscapeRopeUse=1..}] ["",{"text":"Mom's words echoed... ","italic":true,"color":"gray"},{"selector":"@s","italic":true,"color":"gray"},{"text":"! There's a time and place for everything! But not now.","italic":true,"color":"gray"}]
give @s[scores={EscapeRopeUse=1..}] ender_eye{display:{Lore:['[{"text":"A long and durable rope.","italic":false}]','[{"text":"Use it to escape instantly","italic":false}]','[{"text":"from a cave.","italic":false}]']}}
scoreboard players set @s[scores={EscapeRopeUse=1..}] EscapeRopeUse 0
