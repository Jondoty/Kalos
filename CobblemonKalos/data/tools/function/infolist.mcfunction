#Current Map Version
tellraw @s {"text":"1) Map version: Cobblemon Kalos 1.0.0"}

#--------------------------------------------

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

#--------------------------------------------
#Attempts to respawn things for verification
function tools:spawnmoddedentities

#Tests for an entity, ensures Cobblemon is installed
execute if entity @e[x=-504,y=101,z=1229,distance=0..3] run tag @a[tag=infoverify] add CobblemonVerify
execute if entity @e[x=-498,y=101,z=1229,distance=..5,nbt={Item:{count:1,id:"mega_showdown:mega_stone"}}] run tag @a[tag=infoverify] add MegaVerify

execute as @s[tag=CobblemonVerify,tag=MegaVerify] run tellraw @s ["",{"text":"3) "},{"text":"Cobblemon & Mega Showdown found.","color":"green"},{"text":" ["},{"text":"Info","hoverEvent":{"action":"show_text","value":"Ensures the Cobblemon mod and required sidemod Mega Showdown is being used with the map."}},{"text":"]"}]
execute as @s unless entity @s[tag=CobblemonVerify,tag=MegaVerify] run tellraw @s ["",{"text":"3) "},{"text":"Cobblemon & Mega Showdown NOT found.","color":"red"},{"text":" ["},{"text":"Info","hoverEvent":{"action":"show_text","value":"This map requires both Cobblemon and the side-mod Mega Showdown for all features. Please ensure these is in your mods folder when you open the world. Running this commadn again will attempt to spawn in modded entities to verify, and if red these entities are still not found."}},{"text":"]"}]

tag @s remove skip
tag @s remove verify2

#--------------------------------------------

#Detects if a player is stuck or currently in a dialogue
tellraw @s[scores={TalkTime=1..}] ["",{"text":"4a) "},{"text":"Score of TalkTime=1.. found.","color":"yellow"},{"text":" ["},{"text":"Info","hoverEvent":{"action":"show_text","value":"TalkTime is a Minecraft scoreboard objective that handles the timing of most of the map's dialogue and events. If stuck on for long and nothing around you or in chat is happening, the map may try to correct for this automatically. You can also do this manually with the command \"/scoreboard players set YourPlayerNameHere TalkTime 0\""}},{"text":"]"}]
tellraw @s[scores={DialogueTrigger=1..}] ["",{"text":"4b) "},{"text":"Score of DialogueTrigger=1.. found.","color":"yellow"},{"text":" ["},{"text":"Info","hoverEvent":{"action":"show_text","value":"DialogueTrigger is a Minecraft scoreboard objective that which dialogue or event the player is currently interacting with."}},{"text":"]"}]
tellraw @s[tag=InDialogue] ["",{"text":"4c) "},{"text":"Player has a dialogue tag, try relogging","color":"yellow"},{"text":" ["},{"text":"Info","hoverEvent":{"action":"show_text","value":"Tags granted by Cobblemon NPCs keep dialogue boxes from popping up over and over. If present, prevents some commands."}},{"text":"]"}]
tellraw @s[scores={TalkTime=0,DialogueTrigger=0},tag=!InDialogue] ["",{"text":"4) "},{"text":"Player confirmed not in dialogue.","color":"green"},{"text":" ["},{"text":"Info","hoverEvent":{"action":"show_text","value":"Ensures the player is not currently in a map event or dialogue that may affect some functions such as portals or fly map functions."}},{"text":"]"}]

tag @s[scores={TalkTime=0,DialogueTrigger=0}] add skip
tag @s[scores={DialogueTrigger=1..}] add skip
tag @s[scores={TalkTime=1..}] add skip
execute as @s[tag=!skip] run tellraw @s[tag=infoverify] ["",{"text":"5) "},{"text":"Player does not have initial scores.","color":"red"},{"text":" ["},{"text":"Info","hoverEvent":{"action":"show_text","value":"When a player first spawns in, many values are applied to your character that make the map function. To fix, try returning to the very start with \"/tp YourPlayerNameHere -780 64 -245\""}},{"text":"]"}]
tag @s remove skip

#--------------------------------------------
#Tests for the player's game version and starter or lack there of any
execute as @s as @e[x=-687,y=100,z=1380,dy=5,type=armor_stand] run data merge entity @s {CustomName:'{"text":"No game version (chosen in story)","color":"gray"}'}
execute as @s[scores={GameVersion=1}] as @e[x=-687,y=100,z=1380,dy=5,type=armor_stand] run data merge entity @s {CustomName:'{"text":"Xerneas Line","color":"aqua"}'}
execute as @s[scores={GameVersion=2}] as @e[x=-687,y=100,z=1380,dy=5,type=armor_stand] run data merge entity @s {CustomName:'{"text":"Yveltal Line","color":"red"}'}
execute as @s as @e[x=-685,y=100,z=1380,dy=5,type=armor_stand] run data merge entity @s {CustomName:'{"text":"No starter","color":"gray"}'}
execute as @s[scores={StarterPick=1}] as @e[x=-685,y=100,z=1380,dy=5,type=armor_stand] run data merge entity @s {CustomName:'{"text":"Chespin starter","color":"green"}'}
execute as @s[scores={StarterPick=2}] as @e[x=-685,y=100,z=1380,dy=5,type=armor_stand] run data merge entity @s {CustomName:'{"text":"Fennekin starter","color":"red"}'}
execute as @s[scores={StarterPick=3}] as @e[x=-685,y=100,z=1380,dy=5,type=armor_stand] run data merge entity @s {CustomName:'{"text":"Froakie starter","color":"aqua"}'}

tellraw @s ["",{"text":"5) ["},{"selector":"@e[x=-685,y=100,z=1380,dy=5,type=armor_stand]"},{"text":"] ["},{"selector":"@e[x=-687,y=100,z=1380,dy=5,type=armor_stand]"},{"text":"] ["},{"text":"Info","hoverEvent":{"action":"show_text","contents":"Lists which starter or game version you picked (or have yet to pick) to help narrow down specifics of a story-driven issue."}},{"text":"]"}]



#--------------------------------------------

#Tests if command blocks are on in the server.properties settings
#tellraw @a[tag=infoverify] ["",{"text":"6) "},{"text":"Command blocks confirmed enabled.","color":"green"}]
setblock -545 100 1238 minecraft:redstone_block

tag @s remove verify
tag @s remove verify2
tag @s remove MegaVerify
tag @s remove CobblemonVerify



#Successful results:
#All 4 corners found of spawn (tests if spawn chunks deloaded or redstone should be active)
#Vanilla villager found (tests for if player has the Pixelmon config files added)
#Pixelmon statue found (ensures Pixelmon itself is installed)
#Player confirmed not in dialogue (helps diagnose if player is stuck with a TalkTime or DialogueTrigger score when one trips to 0 but not the other)
