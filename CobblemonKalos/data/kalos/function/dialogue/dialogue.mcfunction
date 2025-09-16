#Triggered by DialogueTrigger X score and !DialogueX tag
#/execute as @s[score_DialogueTrigger_min=1] run function dialogues:events

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Scans and removes DialogueTrigger score if player already has specific Dialogue tag

execute as @s[scores={score_DialogueTrigger=1..,TalkTime=0}] run function kalos:dialogue/duplicateend

#Adds timings
scoreboard players add @a[scores={DialogueTrigger=1..}] TalkTime 1

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Lysandre and Az imprisoned
#scoreboard players set @a[x=-395,y=110,z=392,dx=18,dy=10,dz=11,tag=!Dialogue116] DialogueTrigger 116
#execute as @s[x=-376,y=110,z=396,dx=41,dy=10,dz=7,tag=!Dialogue116] run tp @e[x=-504,y=240,z=1274,dy=3,type=pixelmon:npc_chatting] -386 111 390
#execute as @s[x=-376,y=110,z=396,dx=41,dy=10,dz=7,tag=!Dialogue116] run tp @e[x=-504,y=240,z=1276,dy=3,type=pixelmon:npc_chatting] -388 111 394

tellraw @s[scores={DialogueTrigger=116,TalkTime=3}] {"text":"<...> Listen, one who will face Lysandre."}

#switches music
execute as @s[scores={DialogueTrigger=116,TalkTime=10}] run function kalos:triggers/stopsound
execute as @s[scores={DialogueTrigger=116,TalkTime=200}] run function kalos:triggers/stopsound

#gives night vision and takes away
execute as @s[x=-392,y=100,z=353,dx=46,dy=5,dz=36,scores={DialogueTrigger=116,TalkTime=10..199}] run effect give @s minecraft:night_vision 15 1 true
execute as @s[x=-392,y=100,z=353,dx=46,dy=5,dz=36,scores={DialogueTrigger=116,TalkTime=200}] run effect clear @s

#keeps player facing paintings
#execute as @s[x=-392,y=100,z=353,dx=46,dy=5,dz=36,scores={DialogueTrigger=116,TalkTime=10..199}] run tp @s[type=player,ry=135,rym=-135] run 180 ~


#tp player to this story sequence
execute as @s[scores={DialogueTrigger=116,TalkTime=10}] run tp @s -388 101 356 180 -10
execute as @s[scores={DialogueTrigger=116,TalkTime=20}] run tp @s -380 101 357 180 -10
execute as @s[scores={DialogueTrigger=116,TalkTime=30}] run tp @s -373 101 355 180 -22
execute as @s[scores={DialogueTrigger=116,TalkTime=50}] run tp @s -364 101 356 180 -10
execute as @s[scores={DialogueTrigger=116,TalkTime=60}] run tp @s -357 101 356 180 -20
execute as @s[scores={DialogueTrigger=116,TalkTime=70}] run tp @s -350 101 356 180 -10

execute as @s[scores={DialogueTrigger=116,TalkTime=80}] run tp @s -380 101 368 180 -10
execute as @s[scores={DialogueTrigger=116,TalkTime=90}] run tp @s -372 101 368 180 -10
execute as @s[scores={DialogueTrigger=116,TalkTime=100}] run tp @s -366 101 367 -167 -16
execute as @s[scores={DialogueTrigger=116,TalkTime=130}] run tp @s -356 101 368 180 -10
execute as @s[scores={DialogueTrigger=116,TalkTime=140}] run tp @s -349 101 368 -180 -22

execute as @s[scores={DialogueTrigger=116,TalkTime=145}] run tp @s -388 101 380 180 -10
execute as @s[scores={DialogueTrigger=116,TalkTime=150}] run tp @s -380 101 380 180 -10
execute as @s[scores={DialogueTrigger=116,TalkTime=155}] run tp @s -372 101 380 180 -10
execute as @s[scores={DialogueTrigger=116,TalkTime=165}] run tp @s -364 101 380 180 -10
execute as @s[scores={DialogueTrigger=116,TalkTime=185}] run tp @s -356 101 379 180 -20

execute as @s[scores={DialogueTrigger=116,TalkTime=200}] run tp @s -381 111 398 130 10


execute as @s[scores={DialogueTrigger=116},x=-391,y=100,z=354,dx=6,dy=5,dz=7] run title @s actionbar {"text":"A terribly long time ago..."}
execute as @s[scores={DialogueTrigger=116},x=-383,y=100,z=354,dx=6,dy=5,dz=7] run title @s actionbar {"text":"There was a man and a Pokémon. He loved that Pokémon very much."}
execute as @s[scores={DialogueTrigger=116,TalkTime=30..35},x=-375,y=100,z=354,dx=6,dy=5,dz=7] run title @s actionbar {"text":"A war began."}
execute as @s[scores={DialogueTrigger=116,TalkTime=36..43},x=-375,y=100,z=354,dx=6,dy=5,dz=7] run title @s actionbar {"text":"The man's beloved Pokémon took part in the war."}
execute as @s[scores={DialogueTrigger=116,TalkTime=44..50},x=-375,y=100,z=354,dx=6,dy=5,dz=7] run title @s actionbar {"text":"Several years passed."}
execute as @s[scores={DialogueTrigger=116},x=-367,y=100,z=354,dx=6,dy=5,dz=7] run title @s actionbar {"text":"He was given a tiny box."}
execute as @s[scores={DialogueTrigger=116},x=-359,y=100,z=354,dx=4,dy=5,dz=7] run title @s actionbar {"text":"The man wanted to bring the Pokémon back. No matter what it took."}
execute as @s[scores={DialogueTrigger=116},x=-353,y=100,z=354,dx=6,dy=5,dz=7] run title @s actionbar {"text":"The man built a machine to give it life."}

execute as @s[scores={DialogueTrigger=116},tag=!Dialogue116,x=-383,y=100,z=366,dx=6,dy=5,dz=7] run title @s actionbar {"text":"He brought his beloved Pokémon back."}
execute as @s[scores={DialogueTrigger=116,TalkTime=100..110},tag=!Dialogue116,x=-367,y=100,z=366,dx=6,dy=5,dz=7] run title @s actionbar {"text":"The man had suffered too much. His rage still had not subsided."}
execute as @s[scores={DialogueTrigger=116,TalkTime=111..120},tag=!Dialogue116,x=-367,y=100,z=366,dx=6,dy=5,dz=7] run title @s actionbar {"text":"He could not forgive the world that had hurt the Pokémon he loved."}
execute as @s[scores={DialogueTrigger=116,TalkTime=121..130},tag=!Dialogue116,x=-367,y=100,z=366,dx=6,dy=5,dz=7] run title @s actionbar {"text":"He turned the machine into the ultimate weapon."}
execute as @s[scores={DialogueTrigger=116},tag=!Dialogue116,x=-375,y=100,z=378,dx=6,dy=5,dz=7] run title @s actionbar {"text":"The man became a bringer of destruction that ended the war."}
execute as @s[scores={DialogueTrigger=116,TalkTime=165..172},tag=!Dialogue116,x=-367,y=100,z=378,dx=6,dy=5,dz=7] run title @s actionbar {"text":"The Pokémon that was given life must have known..."}
execute as @s[scores={DialogueTrigger=116,TalkTime=173..181},tag=!Dialogue116,x=-367,y=100,z=378,dx=6,dy=5,dz=7] run title @s actionbar {"text":"That the lives of many Pokémon were taken to restore its life."}
execute as @s[scores={DialogueTrigger=116,TalkTime=182..190},tag=!Dialogue116,x=-367,y=100,z=378,dx=6,dy=5,dz=7] run title @s actionbar {"text":"The resurrected Pokémon left the man."}

#Finishes dialogue in text box form
execute as @s[scores={DialogueTrigger=116,TalkTime=200}] run opendialogue az_dialogue116b @s

tag @s[scores={DialogueTrigger=116,TalkTime=200..}] add Dialogue116
scoreboard players set @s[scores={DialogueTrigger=116},tag=Dialogue116] TalkTime 0
scoreboard players set @s[scores={DialogueTrigger=116},tag=Dialogue116] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#dialogue when pushed button

#Replaces the screen entitydata with frames of the weapon going off
execute as @s[scores={DialogueTrigger=120,TalkTime=35}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":101},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=36}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":102},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=37}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":103},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=38}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":104},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=39}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":105},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=40}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":106},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=41}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":107},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=42}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":108},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=43}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":109},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=44}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":110},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=45}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":111},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=46}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":112},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=47}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":113},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=48}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":114},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=49}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":115},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=50}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":116},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=51}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":117},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=52}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":118},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=53}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":119},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=54}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":120},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=55}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":121},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=56}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":122},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=57}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":123},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=58}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":124},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=59}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":125},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=60}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":126},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=61}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":127},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=62}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":128},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=63}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":129},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=64}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":130},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=65}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":131},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=66}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":132},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=67}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":133},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=68}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":134},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=69}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":135},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=70}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":136},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=71}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":137},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=72}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":138},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=73}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":139},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=74}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":140},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=75}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":141},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=76}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":142},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=77}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":143},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=78}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":144},count:1,id:"minecraft:diamond_hoe"}}

execute as @s[scores={DialogueTrigger=120,TalkTime=83}] run opendialogue xerosic_dialogue120b @s
execute as @s[scores={DialogueTrigger=120,TalkTime=83}] run scoreboard players set @s Geosenge 1
execute as @s[scores={DialogueTrigger=120,TalkTime=83}] run advancement grant @s only kalos:flare7

tag @s[scores={DialogueTrigger=120,TalkTime=83..}] add Dialogue120
scoreboard players set @s[scores={DialogueTrigger=120},tag=Dialogue120] TalkTime 0
scoreboard players set @s[scores={DialogueTrigger=120},tag=Dialogue120] DialogueTrigger 0


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Legendary Pokemon spawn
#Dialogue131
#execute as @s[x=-2336,y=42,z=-1017,r=10,score_Yveltal_min=1,score_Yveltal=1,tag=Dialogue130,score_TalkTime=0] run scoreboard players enable @s[tag=!Dialogue131] TalkTrigger
#execute as @s[x=-2336,y=42,z=-1017,r=10,score_Xerneas_min=1,score_Xerneas=1,tag=Dialogue130,score_TalkTime=0] run scoreboard players enable @s[tag=!Dialogue131] TalkTrigger

execute as @s[scores={DialogueTrigger=131,TalkTime=1,GameVersion=1}] run summon armor_stand -2336 49 -1022 {Invisible:true,Invulnerable:true,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":47}}],NoGravity:1b}
execute as @s[scores={DialogueTrigger=131,TalkTime=1,GameVersion=2}] run summon armor_stand -2336 50.5 -1022 {Invisible:true,Invulnerable:true,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":48}}],NoGravity:1b}

execute as @s[scores={DialogueTrigger=131,TalkTime=1}] run function kalos:triggers/stopsound
execute as @s[scores={DialogueTrigger=131,TalkTime=1}] run playsound legendaryawaken record @s[tag=!RadioOff] ~ ~ ~ 1 1 1
execute as @s[scores={DialogueTrigger=131,TalkTime=1}] run scoreboard players set @s[tag=!RadioOff] MusicCooldown 94

tellraw @s[scores={DialogueTrigger=131,TalkTime=10,GameVersion=1}] ["",{"text":"<"},{"text":"Xerneas","color":"aqua"},{"text":"> "},{"text":"Xsaaaaaah!","bold":true,"italic":true}]
tellraw @s[scores={DialogueTrigger=131,TalkTime=10,GameVersion=2}] ["",{"text":"<"},{"text":"Yveltal","color":"dark_red"},{"text":"> "},{"text":"Yvaaaaaar!","bold":true,"italic":true}]
execute as @s[scores={DialogueTrigger=131,TalkTime=10,GameVersion=1}] run playsound xerneas hostile @s ~ ~ ~ 1 1 1
execute as @s[scores={DialogueTrigger=131,TalkTime=10,GameVersion=2}] run playsound yveltal hostile @s ~ ~ ~ 1 1 1

#Activates Particle 1
#execute as @s[scores={DialogueTrigger=131,TalkTime=20}] run setblock -674 100 1364 minecraft:redstone_block
execute as @s[scores={DialogueTrigger=131,TalkTime=1..}] positioned -2336 50 -1022 run particle minecraft:enchant ~ ~5 ~ 5 5 5 1 10 normal

#Activates Particle 2
#execute as @s[scores={DialogueTrigger=131,TalkTime=35}] run setblock -674 101 1364 minecraft:redstone_block
#execute as @e[x=-2336,y=49,z=-1022,r=3,type=armor_stand] run particle endRod ~ ~ ~ 0 10 0 1 1

#Activates Particle 3
#execute as @s[scores={DialogueTrigger=131,TalkTime=60}] run setblock -674 102 1364 minecraft:redstone_block
#execute as @e[x=-2336,y=49,z=-1022,r=3,type=armor_stand] run particle fireworksSpark ~ ~ ~ 0 1 1 0.5 5

#Activates Particle 4
#execute as @s[scores={DialogueTrigger=131,TalkTime=80}] run setblock -674 103 1364 minecraft:redstone_block
#execute as @e[x=-2336,y=49,z=-1022,r=3,type=armor_stand] run particle blockdust ~ ~ ~ 0 1 0 1 10 normal @a 173

execute as @s[scores={DialogueTrigger=131,TalkTime=45..90}] run execute as @e[x=-2336,y=49,z=-1022,distance=..3,type=armor_stand] run particle crit ~ ~5 ~ 5 5 5 1 50 normal


execute as @s[scores={DialogueTrigger=131,TalkTime=90}] positioned -2336 50 -1022 run particle minecraft:explosion ~ ~ ~ 2 2 2 2 30
execute as @a[scores={DialogueTrigger=131,TalkTime=90,GameVersion=1}] run pokespawnat -2336 50.5 -1022 xerneas level=50 moves=gravity,geomancy,moonblast,megahorn
execute as @a[scores={DialogueTrigger=131,TalkTime=90,GameVersion=2}] run pokespawnat -2336 50.5 -1022 yveltal level=50 moves=snarl,oblivionwing,disable,darkpulse

execute as @s[scores={DialogueTrigger=131,TalkTime=90,GameVersion=1}] run playsound xerneas hostile @s ~ ~ ~ 100 1 1
execute as @s[scores={DialogueTrigger=131,TalkTime=90,GameVersion=2}] run playsound yveltal hostile @s ~ ~ ~ 100 1 1
tellraw @s[scores={DialogueTrigger=131,TalkTime=90,GameVersion=1}] ["",{"text":"<"},{"text":"Xerneas","color":"aqua"},{"text":"> "},{"text":"Xsaaaaaah!","bold":true,"italic":true}]
tellraw @s[scores={DialogueTrigger=131,TalkTime=90,GameVersion=2}] ["",{"text":"<"},{"text":"Yveltal","color":"dark_red"},{"text":"> "},{"text":"Yvaaaaaar!","bold":true,"italic":true}]

execute as @s[scores={DialogueTrigger=131,TalkTime=90}] run kill @e[x=-2336,y=49,z=-1022,distance=..3,type=armor_stand]

execute as @s[scores={DialogueTrigger=131,TalkTime=96}] run function kalos:triggers/stopsound

#Disables particles
#execute as @s[scores={DialogueTrigger=131,TalkTime=95..96}] run fill -674 100 1364 -674 103 1364 minecraft:iron_block

tag @s[scores={DialogueTrigger=131,TalkTime=96..}] add Dialogue131
scoreboard players set @s[scores={DialogueTrigger=131},tag=Dialogue131] TalkTime 0
scoreboard players set @s[scores={DialogueTrigger=131},tag=Dialogue131] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Hall of Fame credits (activated by healer)
#scoreboard players set @a[r=20,score_TalkTime=0] DialogueTrigger 154
#REPEATED, Will be reset when player enters the Pokemon League again along with E4 tags

execute as @s[scores={DialogueTrigger=154,TalkTime=1}] run scoreboard players add @s PokemonLeague 1
execute as @s[scores={DialogueTrigger=154,TalkTime=1}] run pokeheal
execute as @s[scores={DialogueTrigger=154,TalkTime=1}] run function kalos:triggers/stopsound
execute as @s[scores={DialogueTrigger=154,TalkTime=1}] run advancement grant @s only kalos:badges/champion
tellraw @s[scores={DialogueTrigger=154,TalkTime=3}] {"text":"Thank you for playing Cobblemon Kalos!","color":"white"}
tellraw @s[scores={DialogueTrigger=154,TalkTime=12}] {"text":"Map Creators:\nJond - Organizer, terrain, commands, builder, Cobblemon adaptation.\nPixelmonChampion - Head builder, custom models."}
tellraw @s[scores={DialogueTrigger=154,TalkTime=25}] {"text":"Helpers:\nMystcraftMC | The_GlassPhoenix | callthemuffinman | xuambacraft | Tyranium | Wither999 | Dark_Spartan_"}
tellraw @s[scores={DialogueTrigger=154,TalkTime=35}] {"text":"Check out my other region maps if you liked this one!"}
tellraw @s[scores={DialogueTrigger=154,TalkTime=35}] ["",{"text":"["},{"text":"Pixelmon Hoenn","color":"aqua","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/worlds/pixelmon-hoenn"}},{"text":"] ["},{"text":"Cobblemon Kanto","color":"yellow","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/worlds/cobblemon-kanto"}},{"text":"] ["},{"text":"Cobblemon Johto","color":"red","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/worlds/cobblemon-johto"}},{"text":"]"}]
tellraw @s[scores={DialogueTrigger=154,TalkTime=45}] {"text":"All source material credit to Game Freak, The Pokemon Company, and Nintendo."}
tellraw @s[scores={DialogueTrigger=154,TalkTime=55,PokemonLeague=1}] {"text":"You can now encounter post-game Legendaries and Mythicals.","italic":true,"color":"gray"}
execute as @s[scores={DialogueTrigger=154,TalkTime=55}] run advancement grant @s only kalos:legendroot
execute as @s[scores={DialogueTrigger=154,TalkTime=55}] run advancement grant @s only kalos:mythicalroot

#Runs legendary reset dialogue
execute as @s[scores={DialogueTrigger=154,TalkTime=65,PokemonLeague=1}] run function kalos:triggers/legendaryreset

execute as @s[scores={DialogueTrigger=154,TalkTime=65,PokemonLeague=1}] run effect give @s minecraft:blindness 7 1 true
execute as @s[scores={DialogueTrigger=154,TalkTime=65,PokemonLeague=2..}] run effect give @s minecraft:blindness 5 1 true

#Takes the player to the parade on first win
execute as @s[scores={DialogueTrigger=154,TalkTime=67,PokemonLeague=1}] run gamemode spectator @s
execute as @s[scores={DialogueTrigger=154,TalkTime=67,PokemonLeague=1}] run tp @s 1488 137 -1900 155 40

#Takes player home on second+ wins
execute as @s[scores={DialogueTrigger=154,TalkTime=67,PokemonLeague=2..}] run tp @s 506 118 1558 180 10

tag @s[scores={DialogueTrigger=154,TalkTime=67..}] add Dialogue154
scoreboard players set @s[scores={DialogueTrigger=154},tag=Dialogue154] TalkTime 0
scoreboard players set @s[scores={DialogueTrigger=154},tag=Dialogue154] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Parade scene if this is the first time player has beaten the Pokemon League
#Directly from the Hall of Fame to this dialogue if score_PokemonLeague=1
#scoreboard players set @a[x=1467,y=104,z=-1982,r=20,score_TalkTime=0,tag=!Dialogue155] DialogueTrigger 155
#scoreboard players set @a[x=1488,y=137,z=-1900,r=20,score_TalkTime=0,tag=!Dialogue155] DialogueTrigger 155

#Music

#pans player towards the parade in 20tps
#tp @a[scores={DialogueTrigger155,TalkTime=5..20},tag=!Dialogue155] ~ ~ ~-0.10 ~ ~

execute as @s[scores={DialogueTrigger=155,TalkTime=21}] run function kalos:triggers/stopsound
execute as @s[scores={DialogueTrigger=155,TalkTime=21}] run gamemode adventure @s
execute as @s[scores={DialogueTrigger=155,TalkTime=21}] run tp @s 1467 104 -1982 0 ~

tellraw @s[scores={DialogueTrigger=155,TalkTime=5}] ["",{"text":"A few days later... Crowds of people gathered in Lumiose City to celebrate the five defenders of the Kalos region and to cheer for its new Champion, "},{"selector":"@p"}]
tellraw @s[scores={DialogueTrigger=155,TalkTime=25}] {"text":"<Sycamore> What an amazing turnout! All of these people are here to celebrate your achievements."}
tellraw @s[scores={DialogueTrigger=155,TalkTime=35}] {"text":"<Sycamore> I'd like to present you with the Honor of Kalos for the bravery you showed battling Team Flare!"}
execute as @s[scores={DialogueTrigger=155,TalkTime=40}] run give @s diamond_horse_armor[custom_name='["",{"text":"Honor of Kalos","italic":false}]',lore=['["",{"text":"A precious symbol that is awarded","italic":false}]','["",{"text":"only to an individual who has done","italic":false}]','["",{"text":"great things for the Kalos region.","italic":false}]']]
execute as @s[scores={DialogueTrigger=155,TalkTime=40}] run playsound minecraft:itemget ambient @s ~ ~ ~ 1 1 1
#tellraw @s[scores={DialogueTrigger=155,TalkTime=45}] {"text":"<Sycamore> I'd also like to give you this Shiny Charm, for all your work on the Pokédex!"}]
#execute as @a[scores={DialogueTrigger=155,TalkTime=50}] run shinycharm @s
tellraw @s[scores={DialogueTrigger=155,TalkTime=45}] {"text":"<Sycamore> I'm so proud of you all!"}
tellraw @s[scores={DialogueTrigger=155,TalkTime=54}] {"text":"<Sycamore> On behalf of the entire Kalos region, I'd like to say..."}
tellraw @s[scores={DialogueTrigger=155,TalkTime=63}] {"text":"<Sycamore> Thank you!"}

execute as @s[scores={DialogueTrigger=155,TalkTime=63}] run summon firework_rocket 1480 115 -1986 {LifeTime:30,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:1,colors:[I;11743532],fade_colors:[I;2437522]}]}}}}
execute as @s[scores={DialogueTrigger=155,TalkTime=63}] run summon firework_rocket 1458 115 -1986 {LifeTime:30,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:1,colors:[I;2437522],fade_colors:[I;11743532]}]}}}}


#Az tps in on the red carpet
execute as @s[scores={DialogueTrigger=155,TalkTime=73}] run particle cloud 1469 101 -1954 2 2 2 1 100
execute as @s[scores={DialogueTrigger=155,TalkTime=73}] unless entity @e[x=1469,y=101,z=-1954,dy=3,type=cobblemon:npc] run npcspawnat 1469 101 -1954 lumiose_az
execute as @s[scores={DialogueTrigger=155,TalkTime=74}] as @e[x=1469,y=101,z=-1954,distance=..5,type=cobblemon:npc] at @s run tp @s ~ ~ ~ 180 ~

tellraw @s[scores={DialogueTrigger=155,TalkTime=80}] {"text":"<Az> Battle with me."}
tellraw @s[scores={DialogueTrigger=155,TalkTime=87}] {"text":"<Az> I want to know what a \u201cTrainer\u201d is."}

tag @s[scores={DialogueTrigger=155,TalkTime=87..}] add Dialogue155
scoreboard players set @s[scores={DialogueTrigger=155},tag=Dialogue155] TalkTime 0
scoreboard players set @s[scores={DialogueTrigger=155},tag=Dialogue155] DialogueTrigger 0


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Az post-battle
#/tedit add LOSS /scoreboard players set @pl DialogueTrigger 156
#/tedit add WIN /scoreboard players set @pl DialogueTrigger 156
#/tedit add LOSS /scoreboard players set @pl TalkTime 0
#/tedit add WIN /scoreboard players set @pl TalkTime 0

#Music is 29. The Sun Shines Down
execute as @s[scores={DialogueTrigger=156,TalkTime=1}] run scoreboard players set @s BattleStart 0
execute as @s[scores={DialogueTrigger=156,TalkTime=1}] run function kalos:triggers/stopsound

tellraw @s[scores={DialogueTrigger=156,TalkTime=10}] {"text":"<Az> Thank you very much for battling with me."}
tellraw @s[scores={DialogueTrigger=156,TalkTime=20}] {"text":"<Az> Now I finally feel free..."}
tellraw @s[scores={DialogueTrigger=156,TalkTime=30}] {"text":"<Az> Free from the part of me mired in sorrow--"}
tellraw @s[scores={DialogueTrigger=156,TalkTime=40}] {"text":"<Az> the part of me that built the ultimate weapon..."}

#Eternal Floette floats down
execute as @s[scores={DialogueTrigger=156,TalkTime=33}] run spawnpokemonat 1469 130 -1957 floette flower=eternal no_ai=yes level=60 uncatchable=yes
execute as @s[scores={DialogueTrigger=156,TalkTime=33}] run particle cloud 1469 130 -1954 2 2 2 1 100

#Motion data
#execute if entity @a[scores={DialogueTrigger=156}] as @e[x=1469,y=102,z=-1957,dy=40,type=cobblemon:pokemon] at @s run tp @s ~ ~-0.08 ~

tellraw @s[scores={DialogueTrigger=156,TalkTime=60}] {"text":"<Az> Floette..."}
tellraw @s[scores={DialogueTrigger=156,TalkTime=70}] {"text":"<Az> It's been 3,000 years..."}
tellraw @s[scores={DialogueTrigger=156,TalkTime=90}] {"text":"<Sycamore> His Pokémon was waiting all this time..."}
tellraw @s[scores={DialogueTrigger=156,TalkTime=100}] {"text":"<Sycamore> Waiting for him to return to the man he was."}
tellraw @s[scores={DialogueTrigger=156,TalkTime=110}] {"text":"<Sycamore> The man who loved Pokémon with all his heart."}

#lets the music play for a bit

execute as @s[scores={DialogueTrigger=156,TalkTime=130}] run title @s times 200 100 100
execute as @s[scores={DialogueTrigger=156,TalkTime=130}] run title @s title {"text":"The End."}

#blinds player
execute as @s[scores={DialogueTrigger=156,TalkTime=150}] run effect give @s minecraft:blindness 10 1 true

#tp Floette and Az out
execute as @s[scores={DialogueTrigger=156,TalkTime=155}] run tp @e[x=1469,y=100,z=-1957,dy=40,type=cobblemon:pokemon] 10000000 -50000 -10000000
execute as @s[scores={DialogueTrigger=156,TalkTime=155}] run tp @e[x=1469,y=100,z=-1954,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000

#tp player to Vaniville Home
execute as @s[scores={DialogueTrigger=156,TalkTime=155}] run tp @s 506 118 1558 180 10

tag @s[scores={DialogueTrigger=156,TalkTime=155..}] add Dialogue156
scoreboard players set @s[scores={DialogueTrigger=156},tag=Dialogue156] TalkTime 0
scoreboard players set @s[scores={DialogueTrigger=156},tag=Dialogue156] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Legendary bird encoutners
#execute as @s[scores={PokemonLeague=1..,Articuno=..4},tag=!Dialogue167] if block ~ ~ ~ minecraft:short_grass run scoreboard players set @s DialogueTrigger 167
#execute as @s[scores={PokemonLeague=1..,Zapdos=..4},tag=!Dialogue167] if block ~ ~ ~ minecraft:short_grass run scoreboard players set @s DialogueTrigger 167
#execute as @s[scores={PokemonLeague=1..,Moltres=..4},tag=!Dialogue167] if block ~ ~ ~ minecraft:short_grass run scoreboard players set @s DialogueTrigger 167

#tps statue above player
execute as @s[scores={DialogueTrigger=167,TalkTime=3,StarterPick=1}] at @s run pokespawnat ~ ~5 ~ articuno level=70 uncatchable=yes pokeball=ancient_azure_ball
execute as @s[scores={DialogueTrigger=167,TalkTime=3,StarterPick=2}] at @s run pokespawnat ~ ~5 ~ zapdos level=70 uncatchable=yes pokeball=ancient_azure_ball
execute as @s[scores={DialogueTrigger=167,TalkTime=3,StarterPick=3}] at @s run pokespawnat ~ ~5 ~ moltres level=70 uncatchable=yes pokeball=ancient_azure_ball
execute if entity @s[scores={DialogueTrigger=167,TalkTime=3}] as @e[distance=..20,type=cobblemon:pokemon,nbt={Pokemon:{CaughtBall:"cobblemon:ancient_azure_ball"}}] at @s run particle cloud ~ ~ ~ 2 2 2 1 100
execute if entity @s[scores={DialogueTrigger=167,TalkTime=3..4}] as @e[distance=..20,type=cobblemon:pokemon,nbt={Pokemon:{CaughtBall:"cobblemon:ancient_azure_ball"}}] run data modify entity @s Unbattleable set value 1b

#Switches music to legendary encounter music
execute as @s[scores={DialogueTrigger=167,TalkTime=3}] run function kalos:triggers/stopsound

#Pokemon cry
execute as @s[scores={DialogueTrigger=167,TalkTime=6,StarterPick=1}] run playsound articuno hostile @s ~ ~ ~ 100 1 1
execute as @s[scores={DialogueTrigger=167,TalkTime=6,StarterPick=2}] run playsound zapdos hostile @s ~ ~ ~ 100 1 1
execute as @s[scores={DialogueTrigger=167,TalkTime=6,StarterPick=3}] run playsound moltres hostile @s ~ ~ ~ 100 1 1

#Delay of 10 seconds or so (14 ticks)

#Pokemon cry
execute as @s[scores={DialogueTrigger=167,TalkTime=20,StarterPick=1}] run playsound articuno hostile @s ~ ~ ~ 100 1 1
execute as @s[scores={DialogueTrigger=167,TalkTime=20,StarterPick=2}] run playsound zapdos hostile @s ~ ~ ~ 100 1 1
execute as @s[scores={DialogueTrigger=167,TalkTime=20,StarterPick=3}] run playsound moltres hostile @s ~ ~ ~ 100 1 1

#tps statue back to spawn
execute as @s[scores={DialogueTrigger=167,TalkTime=25}] as @e[type=cobblemon:pokemon,nbt={Pokemon:{CaughtBall:"cobblemon:ancient_azure_ball"}}] at @s run particle cloud ~ ~ ~ 2 2 2 1 100
execute as @s[scores={DialogueTrigger=167,TalkTime=25,StarterPick=1}] run tp @e[type=cobblemon:pokemon,nbt={Pokemon:{CaughtBall:"cobblemon:ancient_azure_ball"}}] 10000000 -50000 -10000000
execute as @s[scores={DialogueTrigger=167,TalkTime=25,StarterPick=2}] run tp @e[type=cobblemon:pokemon,nbt={Pokemon:{CaughtBall:"cobblemon:ancient_azure_ball"}}] 10000000 -50000 -10000000
execute as @s[scores={DialogueTrigger=167,TalkTime=25,StarterPick=3}] run tp @e[type=cobblemon:pokemon,nbt={Pokemon:{CaughtBall:"cobblemon:ancient_azure_ball"}}] 10000000 -50000 -10000000

#tellraw
tellraw @s[scores={DialogueTrigger=167,TalkTime=27,StarterPick=1,Articuno=0..3}] {"text":"Articuno fled!","italic":true,"color":"gray"}
tellraw @s[scores={DialogueTrigger=167,TalkTime=27,StarterPick=2,Zapdos=0..3}] {"text":"Zapdos fled!","italic":true,"color":"gray"}
tellraw @s[scores={DialogueTrigger=167,TalkTime=27,StarterPick=3,Moltres=0..3}] {"text":"Moltres fled!","italic":true,"color":"gray"}

tellraw @s[scores={DialogueTrigger=167,TalkTime=27,StarterPick=1,Articuno=4..}] {"text":"Articuno fled to the Sea Spirit's Den!","italic":true,"color":"gray"}
tellraw @s[scores={DialogueTrigger=167,TalkTime=27,StarterPick=2,Zapdos=4..}] {"text":"Zapdos fled to the Sea Spirit's Den!","italic":true,"color":"gray"}
tellraw @s[scores={DialogueTrigger=167,TalkTime=27,StarterPick=3,Moltres=4..}] {"text":"Moltres fled to the Sea Spirit's Den!","italic":true,"color":"gray"}

#Adds score to player for number of encounters
execute as @s[scores={DialogueTrigger=167,TalkTime=30,StarterPick=1}] run scoreboard players add @s Articuno 1
execute as @s[scores={DialogueTrigger=167,TalkTime=30,StarterPick=2}] run scoreboard players add @s Zapdos 1
execute as @s[scores={DialogueTrigger=167,TalkTime=30,StarterPick=3}] run scoreboard players add @s Moltres 1

#execute as @s[scores={DialogueTrigger=167,TalkTime=30}] run function kalos:triggers/stopsound

tag @s[scores={DialogueTrigger=167,TalkTime=30..}] add Dialogue167
scoreboard players set @s[scores={DialogueTrigger=167},tag=Dialogue167] TalkTime 0
scoreboard players set @s[scores={DialogueTrigger=167},tag=Dialogue167] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------








#