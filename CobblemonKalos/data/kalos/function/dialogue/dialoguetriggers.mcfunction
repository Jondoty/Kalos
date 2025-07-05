
#Conditions that open a dialogue box for story.

#Vaniville Mom on first spawn
execute as @s[x=493,y=107,z=1549,dx=18,dy=5,dz=19,tag=!Dialogue1] run opendialogue mom_dialogue1 @s

#Vaniville Serena and Shauna Introduction
execute as @s[x=503,y=108,z=1576,dx=12,dy=5,dz=7,tag=!Dialogue2] run opendialogue serena_shauna_dialogue2 @s

#Spawns in generic NPCs if missing
execute as @s[x=466,y=107,z=1397,distance=..15,tag=!Dialogue4] unless entity @e[x=437,y=107,z=1373,dy=3,type=cobblemon:npc] run npcspawnat 437 108 1373 trevor_generic
execute as @s[x=466,y=107,z=1397,distance=..15,tag=!Dialogue4] unless entity @e[x=437,y=107,z=1371,dy=3,type=cobblemon:npc] run npcspawnat 437 108 1371 tierno_generic
execute as @s[x=466,y=107,z=1397,distance=..15,tag=!Dialogue4] unless entity @e[x=441,y=107,z=1369,dy=3,type=cobblemon:npc] run npcspawnat 441 108 1369 shauna_generic
execute as @s[x=466,y=107,z=1397,distance=..15,tag=!Dialogue4] unless entity @e[x=439,y=107,z=1369,dy=3,type=cobblemon:npc] run npcspawnat 439 108 1369 serena_generic

#Aquacorde Friends introduction and Starter
execute as @s[x=440,y=108,z=1372,distance=..10,tag=!Dialogue3] run opendialogue starters_dialogue3 @s

#After getting starters
execute as @s[x=440,y=108,z=1372,distance=..10,tag=!Dialogue4,scores={StarterPick=1}] run opendialogue poststarters1_dialogue4 @s
execute as @s[x=440,y=108,z=1372,distance=..10,tag=!Dialogue4,scores={StarterPick=2}] run opendialogue poststarters2_dialogue4 @s
execute as @s[x=440,y=108,z=1372,distance=..10,tag=!Dialogue4,scores={StarterPick=3}] run opendialogue poststarters3_dialogue4 @s

#Shauna's First Battle
execute as @s[x=456,y=107,z=1408,dx=28,dy=5,dz=10,tag=Dialogue4,tag=!Dialogue5] run opendialogue shauna_prebattle_dialogue5 @s

#Mom after you've obtained a Starter
execute as @s[x=493,y=107,z=1549,dx=18,dy=5,dz=19,scores={StarterPick=1..},tag=Dialogue1,tag=!Dialogue7] run opendialogue mom_dialogue7 @s

#Route 3 gang dialogue
execute as @s[x=392,y=99,z=661,distance=..10,scores={StarterPick=1},tag=!Dialogue8] run opendialogue friends1_dialogue8 @s
execute as @s[x=392,y=99,z=661,distance=..10,scores={StarterPick=2},tag=!Dialogue8] run opendialogue friends2_dialogue8 @s
execute as @s[x=392,y=99,z=661,distance=..10,scores={StarterPick=3},tag=!Dialogue8] run opendialogue friends3_dialogue8 @s

execute as @s[x=389,y=100,z=719,distance=..15,tag=!Dialogue8] unless entity @e[x=395,y=99,z=663,dy=3,type=cobblemon:npc] run npcspawnat 395 100 663 trevor_generic
execute as @s[x=389,y=100,z=719,distance=..15,tag=!Dialogue8] unless entity @e[x=395,y=99,z=659,dy=3,type=cobblemon:npc] run npcspawnat 395 100 659 tierno_generic
execute as @s[x=389,y=100,z=719,distance=..15,tag=!Dialogue8] unless entity @e[x=389,y=99,z=663,dy=3,type=cobblemon:npc] run npcspawnat 389 100 663 shauna_generic
execute as @s[x=389,y=100,z=719,distance=..15,tag=!Dialogue8] unless entity @e[x=389,y=99,z=659,dy=3,type=cobblemon:npc] run npcspawnat 389 100 659 serena_generic














































#