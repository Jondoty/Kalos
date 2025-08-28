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
scoreboard players set @s[tag=Dialogue116] TalkTime 0
scoreboard players set @s[tag=Dialogue116] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Hall of Fame credits (activated by healer)
#scoreboard players set @a[r=20,score_TalkTime=0] DialogueTrigger 154
#REPEATED, Will be reset when player enters the Pokemon League again along with E4 tags

execute as @s[scores={DialogueTrigger=154,TalkTime=1}] run scoreboard players add @s PokemonLeague 1
execute as @s[scores={DialogueTrigger=154,TalkTime=1}] run pokeheal
execute as @s[scores={DialogueTrigger=154,TalkTime=1}] run function kalos:triggers/stopsound
execute as @s[scores={DialogueTrigger=154,TalkTime=1}] run advancement grant @s only kalos:badges/champion
tellraw @s[scores={DialogueTrigger=154,TalkTime=3}] {"text":"Thank you for playing Cobblemon Kalos!","color":"white"}
tellraw @s[scores={DialogueTrigger=154,TalkTime=12}] {"text":"Map Creators:\nJond - Organizer, terrain, redstone, builder.\nPixelmonChampion - Head builder, custom models."}
tellraw @s[scores={DialogueTrigger=154,TalkTime=25}] {"text":"Helpers:\nMystcraftMC | The_GlassPhoenix | callthemuffinman | xuambacraft | Tyranium | Wither999 | Dark_Spartan_"}
tellraw @s[scores={DialogueTrigger=154,TalkTime=35}] {"text":"Check out my other region maps if you liked this one!"}
tellraw @s[scores={DialogueTrigger=154,TalkTime=35}] ["",{"text":"["},{"text":"Pixelmon Hoenn","color":"aqua","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/worlds/pixelmon-hoenn"}},{"text":"] ["},{"text":"Cobblemon Kanto","color":"yellow","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/worlds/cobblemon-kanto"}},{"text":"] ["},{"text":"Cobblemon Johto","color":"red","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/worlds/cobblemon-johto"}},{"text":"]"}]
tellraw @s[scores={DialogueTrigger=154,TalkTime=45}] {"text":"All source material credit to Game Freak, The Pokemon Company, and Nintendo."}
tellraw @s[scores={DialogueTrigger=154,TalkTime=55,PokemonLeague=1}] {"text":"You can now encounter post-game Legendaries and Mythicals.","italic":true,"color":"gray"}
execute as @s[scores={DialogueTrigger=154,TalkTime=55}] run advancement grant @s only kalos:legendroot
execute as @s[scores={DialogueTrigger=154,TalkTime=55}] run advancement grant @s only kalos:mythicalroot

#Runs legendary reset dialogue
execute as @s[scores={DialogueTrigger=154,TalkTime=65,PokemonLeague=1}] run function kalos:triggers/legendaryreset

execute as @s[scores={DialogueTrigger=154,TalkTime=65}] run effect give @s minecraft:blindness 10 1 true
#Takes player home
execute as @s[scores={DialogueTrigger=154,TalkTime=67}] run tp @s 506 118 1558 180 10

tag @s[scores={DialogueTrigger=154,TalkTime=67..}] add Dialogue154
scoreboard players set @s[tag=Dialogue154] TalkTime 0
scoreboard players set @s[tag=Dialogue154] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------