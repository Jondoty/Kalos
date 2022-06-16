#Current Map Version
tellraw @s {"text":"1) Map version: Kalos 3.0.0"}

tag @s add infoverify

#Spawn core commands load test
#execute @e[x=-688,y=250,z=1136,dy=3,type=armor_stand] ~ ~ ~ tellraw @a[tag=verify] {"text":"-Northwest spawn corner confirmed loaded","italic":true,"color":"green"}
#execute @e[x=-417,y=250,z=1136,dy=3,type=armor_stand] ~ ~ ~ tellraw @a[tag=verify] {"text":"-Northeast spawn corner confirmed loaded","italic":true,"color":"green"}
#execute @e[x=-417,y=250,z=1391,dy=3,type=armor_stand] ~ ~ ~ tellraw @a[tag=verify] {"text":"-Southeast spawn corner confirmed loaded","italic":true,"color":"green"}
#execute @e[x=-687,y=100,z=1390,dy=3,type=armor_stand] ~ ~ ~ tellraw @a[tag=verify] {"text":"-Southwest spawn corner confirmed loaded","italic":true,"color":"green"}


execute as @e[x=-688,y=250,z=1136,dy=3,type=armor_stand] run execute as @e[x=-417,y=250,z=1136,dy=3,type=armor_stand] run execute as @e[x=-417,y=250,z=1391,dy=3,type=armor_stand] run execute as @e[x=-687,y=100,z=1390,dy=3,type=armor_stand] run tag @a[tag=infoverify] add skip

execute as @s[tag=skip] run tellraw @s[tag=infoverify] ["",{"text":"2) "},{"text":"All spawn chunk corners confirmed loaded.","color":"green"},{"text":" ["},{"text":"Info","hoverEvent":{"action":"show_text","value":"These 4 corners must be loaded for the map to fully function. These are spawn chunks the world keeps loaded at all times, and runs most functions of the map."}},{"text":"]"}]
execute as @s[tag=!skip] run tellraw @s[tag=infoverify] ["",{"text":"2) "},{"text":"One or more spawn chunks failed to load.","color":"red"},{"text":" ["},{"text":"Info","hoverEvent":{"action":"show_text","value":"These 4 corners must be loaded for the map to fully function. These are spawn chunks the world keeps loaded at all times, and runs most functions of the map. The command \"/setworldspawn -780 64 -245\" may help this issue"}},{"text":"]"}]
execute as @s[tag=!skip] run tag @s[tag=infoverify] add verify2

tag @s remove skip


#Tests for a vanilla villager to ensure proper config files are present
execute as @e[x=-504,y=101,z=1229,distance=..3,type=villager] run tellraw @a[tag=infoverify] {"text":"-Vanilla villager found","italic":true,"color":"green"}
execute as @e[x=-504,y=101,z=1229,distance=..3,type=!villager] run tellraw @a[tag=infoverify] {"text":"-Entity type NOT villager found","italic":true,"color":"red"}





summon minecraft:villager -504 101 1229
execute as @e[x=-504,y=101,z=1229,distance=..2,type=villager] run tellraw @a[tag=infoverify] ["",{"text":"3) "},{"text":"Vanilla villager found.","color":"green"},{"text":" ["},{"text":"Info","hoverEvent":{"action":"show_text","value":"Vanilla Minecraft villagers are used as traders for specific items in parts of the map. By default, Pixelmon turns these entities into other entity types."}},{"text":"]"}]
execute as @e[x=-504,y=101,z=1229,distance=..2,type=!villager] run tellraw @a[tag=infoverify] ["",{"text":"3) "},{"text":"Entity type NOT villager found.","color":"red"},{"text":" ["},{"text":"Info","hoverEvent":{"action":"show_text","value":"Vanilla Minecraft villagers are used as traders for specific items in parts of the map. By default, Pixelmon turns these entities into trainers or chatting npcs. To fix, ensure you are using the custom \"config\" and \"pixelmon\" folders in your server folder or your .minecraft folder."}},{"text":"]"}]

kill @e[x=-504,y=101,z=1229,dy=3,type=villager]
tp @e[x=-504,y=101,z=1229,dy=3,type=!player] ~ ~-500 ~


#Tests for a Pixelmon statue, ensures Pixelmon is installed
execute as @e[x=-498,y=101,z=1229,distance=..3,type=pixelmon:statue] run tag @a[tag=infoverify] add skip

execute as @s[tag=skip] run tellraw @s[tag=infoverify] ["",{"text":"4) "},{"text":"Pixelmon statue found.","color":"green"},{"text":" ["},{"text":"Info","hoverEvent":{"action":"show_text","value":"Ensures the Pixelmon mod is being used with the map."}},{"text":"]"}]
execute as @s[tag=!skip] run tellraw @s[tag=!verify2] ["",{"text":"4) "},{"text":"Pixelmon statue NOT found.","color":"red"},{"text":" ["},{"text":"Info","hoverEvent":{"action":"show_text","value":"This map requires Pixelmon Reforged, from https://reforged.gg. Please ensure this is in your mods folder when you open the world. If condition #2 is green, this save must be DELETED if loaded without the mod even once. It may be possible to port player data to another save."}},{"text":"]"}]
execute as @s[tag=!skip] run tellraw @s[tag=verify2] ["",{"text":"4) "},{"text":"Pixelmon statue NOT found.","color":"yellow"},{"text":" ["},{"text":"Info","hoverEvent":{"action":"show_text","value":"This map requires Pixelmon Reforged, from https://reforged.gg. Please ensure this is in your mods folder when you open the world. If condition #2 is red, this may be the result of not being able to find the test entity within spawn. See #2 info."}},{"text":"]"}]

tag @s remove skip
tag @s remove verify2


#Detects if a player is stuck or currently in a dialogue
tellraw @s[scores={TalkTime=1..}] ["",{"text":"5a) "},{"text":"Score of TalkTime=1.. found.","color":"yellow"},{"text":" ["},{"text":"Info","hoverEvent":{"action":"show_text","value":"TalkTime is a Minecraft scoreboard objective that handles the timing of most of the map's dialogue and events. If stuck on for long and nothing around you or in chat is happening, the map may try to correct for this automatically. You can also do this manually with the command \"/scoreboard players set YourPlayerNameHere TalkTime 0\""}},{"text":"]"}]
tellraw @s[scores={DialogueTrigger=1..}] ["",{"text":"5b) "},{"text":"Score of DialogueTrigger=1.. found.","color":"yellow"},{"text":" ["},{"text":"Info","hoverEvent":{"action":"show_text","value":"DialogueTrigger is a Minecraft scoreboard objective that which dialogue or event the player is currently interacting with."}},{"text":"]"}]
tellraw @s[scores={DialogueTrigger=0}] ["",{"text":"5) "},{"text":"Player confirmed not in dialogue.","color":"green"},{"text":" ["},{"text":"Info","hoverEvent":{"action":"show_text","value":"Ensures the player is not currently in a map event or dialogue that may affect some functions such as portals or fly map functions."}},{"text":"]"}]

tag @s[scores={DialogueTrigger=0}] add skip
tag @s[scores={DialogueTrigger=1..}] add skip
tag @s[scores={TalkTime=1..}] add skip
execute as @s[tag=!skip] run tellraw @s[tag=infoverify] ["",{"text":"5) "},{"text":"Player does not have initial scores.","color":"red"},{"text":" ["},{"text":"Info","hoverEvent":{"action":"show_text","value":"When a player first spawns in, many values are applied to your character that make the map function. To fix, try returning to the very start with \"/tp YourPlayerNameHere -780 64 -245\""}},{"text":"]"}]
tag @s remove skip



#Tests if command blocks are on in the server.properties settings
#tellraw @a[tag=infoverify] ["",{"text":"6) "},{"text":"Command blocks confirmed enabled.","color":"green"}]
setblock -545 100 1238 minecraft:redstone_block

tag @s remove verify
tag @s remove verify2




#Successful results:
#All 4 corners found of spawn (tests if spawn chunks deloaded or redstone should be active)
#Vanilla villager found (tests for if player has the Pixelmon config files added)
#Pixelmon statue found (ensures Pixelmon itself is installed)
#Player confirmed not in dialogue (helps diagnose if player is stuck with a TalkTime or DialogueTrigger score when one trips to 0 but not the other)
