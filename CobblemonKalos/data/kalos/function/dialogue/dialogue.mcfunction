#Triggered by DialogueTrigger X score and !DialogueX tag
#/execute as @s[score_DialogueTrigger_min=1] run function dialogues:events

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Scans and removes DialogueTrigger score if player already has specific Dialogue tag

execute as @s[scores={score_DialogueTrigger=1..,TalkTime=0}] run function kalos:dialogue/duplicateend

#Adds timings
scoreboard players add @a[scores={DialogueTrigger=1..}] TalkTime 1

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Hall of Fame credits (activated by healer)
#scoreboard players set @a[r=20,score_TalkTime=0] DialogueTrigger 154
#REPEATED, Will be reset when player enters the Pokemon League again along with E4 tags

execute as @s[scores={DialogueTrigger=154,TalkTime=1}] run scoreboard players add @s PokemonLeague 1
execute as @s[scores={DialogueTrigger=154,TalkTime=1}] run pokeheal
execute as @s[scores={DialogueTrigger=154,TalkTime=1}] run function kalos:triggers/stopsound
execute as @s[scores={DialogueTrigger=154,TalkTime=1}] run advancement grant @s only kalos:champion
tellraw @s[scores={DialogueTrigger=154,TalkTime=3}] {"text":"Thank you for playing Cobblemon Kalos!","color":"white"}
tellraw @s[scores={DialogueTrigger=154,TalkTime=12}] {"text":"Map Creators:\nJond - Organizer, terrain, redstone, builder.\nPixelmonChampion - Head builder, custom models."}
tellraw @s[scores={DialogueTrigger=154,TalkTime=25}] {"text":"Helpers:\nMystcraftMC | The_GlassPhoenix | callthemuffinman | xuambacraft | Tyranium | Wither999 | Dark_Spartan_"}
tellraw @s[scores={DialogueTrigger=154,TalkTime=35}] {"text":"Check out my other region maps if you liked this one!"}
tellraw @s[scores={DialogueTrigger=154,TalkTime=35}] ["",{"text":"["},{"text":"Pixelmon Hoenn","color":"aqua","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/worlds/pixelmon-hoenn"}},{"text":"] ["},{"text":"Cobblemon Kanto","color":"yellow","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/worlds/cobblemon-kanto"}},{"text":"] ["},{"text":"Cobblemon Johto","color":"red","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/worlds/cobblemon-johto"}},{"text":"]"}]
tellraw @s[scores={DialogueTrigger=154,TalkTime=45}] {"text":"All source material credit to Game Freak, The Pokemon Company, and Nintendo."}
tellraw @s[scores={DialogueTrigger=154,TalkTime=55,PokemonLeague=1}] {"text":"You can now encounter post-game Legendaries and Mythicals.","italic":true,"color":"gray"}
execute as @s[scores={DialogueTrigger=154,TalkTime=55}] run advancement grant @s only kalos:legendroot
execute as @s[scores={DialogueTrigger=154,TalkTime=55}] run advancement grant @s only kalos:mythicalroot

#V1, skip over Sycamore's mega upgrade talk
tellraw @s[scores={DialogueTrigger=154,TalkTime=65,PokemonLeague=1}] {"text":"Your Mega Ring was also upgraded to find more stones in the region!","italic":true,"color":"gray"}
execute as @s[scores={DialogueTrigger=154,TalkTime=65,PokemonLeague=1}] run scoreboard players set @s MegaStones 1
execute as @s[scores={DialogueTrigger=154,TalkTime=65,PokemonLeague=1}] run scoreboard players set @s Abomasite 0
execute as @s[scores={DialogueTrigger=154,TalkTime=65,PokemonLeague=1}] run scoreboard players set @s Aggronite 0
execute as @s[scores={DialogueTrigger=154,TalkTime=65,PokemonLeague=1}] run scoreboard players set @s Alakazite 0
execute as @s[scores={DialogueTrigger=154,TalkTime=65,PokemonLeague=1}] run scoreboard players set @s Banettite 0
execute as @s[scores={DialogueTrigger=154,TalkTime=65,PokemonLeague=1}] run scoreboard players set @s Diancite 0
execute as @s[scores={DialogueTrigger=154,TalkTime=65,PokemonLeague=1}] run scoreboard players set @s Garchompite 0
execute as @s[scores={DialogueTrigger=154,TalkTime=65,PokemonLeague=1}] run scoreboard players set @s Gyaradosite 0
execute as @s[scores={DialogueTrigger=154,TalkTime=65,PokemonLeague=1}] run scoreboard players set @s Heracronite 0
execute as @s[scores={DialogueTrigger=154,TalkTime=65,PokemonLeague=1}] run scoreboard players set @s Houndoominite 0
execute as @s[scores={DialogueTrigger=154,TalkTime=65,PokemonLeague=1}] run scoreboard players set @s Kangaskhanite 0
execute as @s[scores={DialogueTrigger=154,TalkTime=65,PokemonLeague=1}] run scoreboard players set @s Manectite 0
execute as @s[scores={DialogueTrigger=154,TalkTime=65,PokemonLeague=1}] run scoreboard players set @s Mawilite 0
execute as @s[scores={DialogueTrigger=154,TalkTime=65,PokemonLeague=1}] run scoreboard players set @s Medichamite 0
execute as @s[scores={DialogueTrigger=154,TalkTime=65,PokemonLeague=1}] run scoreboard players set @s Mewtwonite_X 0
execute as @s[scores={DialogueTrigger=154,TalkTime=65,PokemonLeague=1}] run scoreboard players set @s Mewtwonite_Y 0
execute as @s[scores={DialogueTrigger=154,TalkTime=65,PokemonLeague=1}] run scoreboard players set @s Scizorite 0
execute as @s[scores={DialogueTrigger=154,TalkTime=65,PokemonLeague=1}] run scoreboard players set @s Tyranitarite 0

execute as @s[scores={DialogueTrigger=154,TalkTime=65}] run effect give @s minecraft:blindness 10 1 true
#Takes player home
execute as @s[scores={DialogueTrigger=154,TalkTime=67}] run tp @s 506 118 1558 180 10

tag @s[scores={DialogueTrigger=154,TalkTime=67..}] add Dialogue154
scoreboard players set @s[tag=Dialogue154] TalkTime 0
scoreboard players set @s[tag=Dialogue154] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------