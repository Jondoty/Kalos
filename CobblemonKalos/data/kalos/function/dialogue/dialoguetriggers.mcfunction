
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


#Santalune Alexa after beating Viola
execute as @s[x=165,y=99,z=375,dx=28,dy=10,dz=14,tag=!Dialogue11,tag=Viola] run opendialogue alexa_dialogue11 @s

#Gym Guy post-badge
execute as @s[x=-1921,y=138,z=-1896,distance=..7,tag=!Dialogue13,tag=Viola] run opendialogue gymguy_dialogue13 @s

#Route 4, Sina and Dexio first introduction
execute as @s[x=179,y=100,z=-58,distance=..35,tag=!Dialogue14] unless entity @e[x=177,y=100,z=-58,dy=3,type=cobblemon:npc] run particle cloud 177 100 -58 2 2 2 1 100
execute as @s[x=179,y=100,z=-58,distance=..35,tag=!Dialogue14] unless entity @e[x=180,y=100,z=-58,dy=3,type=cobblemon:npc] run particle cloud 180 100 -58 2 2 2 1 100
execute as @s[x=179,y=100,z=-58,distance=..35,tag=!Dialogue14] unless entity @e[x=177,y=100,z=-58,dy=3,type=cobblemon:npc] run npcspawnat 177 100 -58 sina_generic
execute as @s[x=179,y=100,z=-58,distance=..35,tag=!Dialogue14] unless entity @e[x=180,y=100,z=-58,dy=3,type=cobblemon:npc] run npcspawnat 180 100 -58 dexio_generic
execute as @s[x=179,y=100,z=-58,distance=..10,tag=!Dialogue14] run opendialogue sinadexio_dialogue14 @s

#Dialogue 15 skipped over because it's just for a TM

#Lumiose City Sina and Dexio
execute as @s[x=-15,y=101,z=-135,distance=..35,tag=!Dialogue16] unless entity @e[x=-14,y=101,z=-128,dy=3,type=cobblemon:npc] run particle cloud -14 101 -128 2 2 2 1 100
execute as @s[x=-15,y=101,z=-135,distance=..35,tag=!Dialogue16] unless entity @e[x=-12,y=101,z=-124,dy=3,type=cobblemon:npc] run particle cloud -12 101 -124 2 2 2 1 100
execute as @s[x=-15,y=101,z=-135,distance=..35,tag=!Dialogue16] unless entity @e[x=-14,y=101,z=-128,dy=3,type=cobblemon:npc] run npcspawnat -14 101 -128 dexio_generic
execute as @s[x=-15,y=101,z=-135,distance=..35,tag=!Dialogue16] unless entity @e[x=-12,y=101,z=-124,dy=3,type=cobblemon:npc] run npcspawnat -12 101 -124 sina_generic
execute as @s[x=-13,y=100,z=-126,distance=..10,tag=!Dialogue16] run opendialogue sinadexio_dialogue16 @s

#Sina in Sycamore's Lab
execute as @s[x=-251,y=101,z=91,distance=..10,tag=!Dialogue17] unless entity @e[x=-251,y=101,z=91,dy=3,type=cobblemon:npc] run npcspawnat -251 101 91 sina_generic
execute as @s[x=-251,y=101,z=91,distance=..20,tag=!Dialogue17] run opendialogue sina_dialogue17 @s


#Professor Sycamore's Lab

#Kills interaction entity if present so player can battle Sycamore
execute as @s[x=-270,y=120,z=82,dx=10,dy=10,dz=16,tag=!Dialogue19] run kill @e[x=-270,y=120,z=82,dx=10,dy=10,dz=16,type=interaction]

#Activates dialogue after you've gotten a Kanto Starter
execute as @s[x=-270,y=120,z=82,dx=10,dy=10,dz=16,tag=KantoStarter,tag=!Dialogue20] run opendialogue sycamore_dialogue20 @s

#TPs out gang after you've battled and recieved a Kanto starter
execute as @s[x=-253,y=121,z=71,distance=..4,tag=Dialogue20] run tp @e[x=-268,y=120,z=97,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @s[x=-253,y=121,z=71,distance=..4,tag=Dialogue20] run tp @e[x=-266,y=120,z=97,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @s[x=-253,y=121,z=71,distance=..4,tag=Dialogue20] run tp @e[x=-263,y=120,z=97,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @s[x=-253,y=121,z=71,distance=..4,tag=Dialogue20] run tp @e[x=-261,y=120,z=97,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000

#Sets up interaction entity if needed after Sycamore battle to use as a chatting npc
execute as @s[x=-270,y=120,z=82,dx=10,dy=10,dz=16,tag=Dialogue19] unless entity @e[x=-270,y=120,z=82,dx=10,dy=10,dz=16,type=interaction] positioned -265 122 90 run function kalos:spawn/npcboxes


#Sycamore's Lab Lysandre first introduction
execute as @s[x=-253,y=121,z=71,distance=..4,tag=Dialogue20,tag=!Dialogue21] unless entity @e[x=-257,y=101,z=93,dy=3,type=cobblemon:npc] run npcspawnat -257 101 93 lysandre_generic
execute as @s[x=-271,y=99,z=84,dx=36,dy=7,dz=37,tag=Dialogue20,tag=!Dialogue21] run opendialogue lysandre_dialogue21 @s


#Cafe Soleil Lysandre and Diantha
execute as @s[x=-492,y=101,z=261,distance=..10,tag=!Dialogue22] unless entity @e[x=-490,y=100,z=258,dy=3,type=cobblemon:npc] run npcspawnat -490 101 258 serena_generic
execute as @s[x=-492,y=101,z=261,distance=..10,tag=!Dialogue22] unless entity @e[x=-492,y=100,z=245,dy=3,type=cobblemon:npc] run npcspawnat -492 101 245 diantha_generic
execute as @s[x=-492,y=101,z=261,distance=..10,tag=!Dialogue22] unless entity @e[x=-490,y=100,z=245,dy=3,type=cobblemon:npc] run npcspawnat -490 101 245 lysandre_generic
execute as @s[x=-491,y=101,z=252,distance=..10,tag=!Dialogue22] run opendialogue serena_dialogue22 @s

#Route 5 Lucario and Korrina
execute as @s[x=-627,y=90,z=-172,dx=8,dy=10,dz=25,tag=!Dialogue23] run opendialogue korrina_dialogue23 @s

execute as @a[x=-627,y=92,z=-159,distance=..30,tag=!Dialogue23] unless entity @e[x=-627,y=92,z=-159,distance=..5,type=cobblemon:pokemon] run pokespawnat -627 92 -159 lucario no_ai=true level=25
execute positioned -627 92 -159 as @e[distance=..5,type=cobblemon:pokemon,name=Lucario,nbt={PersistenceRequired:0b}] at @s run tp @s ~ ~ ~ -90 ~
execute positioned -627 92 -159 as @e[distance=..5,type=cobblemon:pokemon,name=Lucario,nbt={PersistenceRequired:0b}] run data merge entity @s {Pokemon:{PokemonData:["uncatchable"]}}
execute positioned -627 92 -159 as @e[distance=..5,type=cobblemon:pokemon,name=Lucario,nbt={PersistenceRequired:0b}] run data modify entity @s Unbattleable set value 1b
execute positioned -627 92 -159 as @e[distance=..5,type=cobblemon:pokemon,name=Lucario,nbt={PersistenceRequired:0b}] run data modify entity @s Invulnerable set value 1b
execute positioned -627 92 -159 as @e[distance=..5,type=cobblemon:pokemon,name=Lucario,nbt={PersistenceRequired:0b}] run data modify entity @s PersistenceRequired set value 1

#Route 5 Tierno Trainer and Trevor
execute as @s[x=-757,y=99,z=-134,distance=..30,tag=!Dialogue25] unless entity @e[x=-766,y=100,z=-134,dy=3,type=cobblemon:npc] run npcspawnat -766 100 -134 route5_tierno
execute as @s[x=-757,y=99,z=-134,distance=..30,tag=!Dialogue25] unless entity @e[x=-769,y=100,z=-136,dy=3,type=cobblemon:npc] run npcspawnat -769 100 -136 trevor_generic

#Camphrier Town Shauna and Guide
execute as @s[x=-1055,y=56,z=-105,distance=..10,tag=!Dialogue27] unless entity @e[x=-1052,y=56,z=-107,dy=3,type=cobblemon:npc] run npcspawnat -1052 56 -107 shauna_generic
execute as @s[x=-1055,y=56,z=-105,distance=..10,tag=!Dialogue27] unless entity @e[x=-1055,y=56,z=-109,dy=3,type=cobblemon:npc] run npcspawnat -1055 56 -109 camphrier_guide
execute as @s[x=-1055,y=56,z=-105,distance=..10,tag=!Dialogue27] run opendialogue shauna_dialogue27 @s

#Sets up Sleeping Snorlax
execute as @a[x=-1301,y=101,z=-36,distance=..30,tag=!Dialogue33] unless entity @e[x=-1301,y=101,z=-36,distance=..5,type=cobblemon:pokemon] run pokespawnat -1301 101 -36 snorlax no_ai=true level=15 status=sleep held_item=cobblemon:sitrus_berry
execute positioned -1301 101 -36 as @e[distance=..5,type=cobblemon:pokemon,name=Snorlax,nbt={PersistenceRequired:0b}] run data merge entity @s {Pokemon:{PokemonData:["uncatchable"]}}
execute positioned -1301 101 -36 as @e[distance=..5,type=cobblemon:pokemon,name=Snorlax,nbt={PersistenceRequired:0b}] run data modify entity @s Unbattleable set value 1b
execute positioned -1301 101 -36 as @e[distance=..5,type=cobblemon:pokemon,name=Snorlax,nbt={PersistenceRequired:0b}] run data modify entity @s Invulnerable set value 1b
execute positioned -1301 101 -36 as @e[distance=..5,type=cobblemon:pokemon,name=Snorlax,nbt={PersistenceRequired:0b}] run data modify entity @s PersistenceRequired set value 1

execute as @s[x=-1293,y=100,z=-36,distance=..20,tag=!Dialogue33] unless entity @e[x=-1289,y=100,z=-39,dy=3,type=cobblemon:npc] run npcspawnat -1289 100 -39 shauna_generic
execute as @s[x=-1293,y=100,z=-36,distance=..20,tag=!Dialogue33] unless entity @e[x=-1296,y=101,z=-37,dy=3,type=cobblemon:npc] run npcspawnat -1298 101 -34 camphrier_guide
execute as @s[x=-1293,y=100,z=-36,distance=..20,tag=!Dialogue33] unless entity @e[x=-1298,y=101,z=-34,dy=3,type=cobblemon:npc] run npcspawnat -1296 101 -37 camphrier_worker

execute as @s[x=-1301,y=101,z=-36,distance=..15,tag=!Dialogue28] run opendialogue snorlax_dialogue28 @s

#Parfum Palace owner first dialogue
execute as @s[x=-1391,y=63,z=-372,distance=..10,tag=!Dialogue29] unless entity @e[x=-1397,y=63,z=-372,dy=3,type=cobblemon:npc] run npcspawnat -1397 63 -372 parfum_owner
execute as @s[x=-1391,y=63,z=-372,distance=..10,tag=!Dialogue29] unless entity @e[x=-1390,y=63,z=-375,dy=3,type=cobblemon:npc] run npcspawnat -1390 63 -375 shauna_generic
execute as @s[x=-1391,y=63,z=-372,distance=..10,tag=!Dialogue29] run opendialogue palaceowner_dialogue29 @s

#Shauna pointing out Furfrou
execute as @s[x=-1623,y=100,z=-319,distance=..30,tag=!Dialogue30] unless entity @e[x=-1623,y=100,z=-319,dy=3,type=cobblemon:npc] run npcspawnat -1623 100 -319 shauna_generic
execute as @s[x=-1623,y=100,z=-319,distance=..10,tag=!Dialogue30] run opendialogue shauna_dialogue30 @s




#Route 7 Snorlax waking up
execute as @s[x=-1293,y=100,z=-36,distance=..20,tag=Dialogue32,tag=!Dialogue33] unless entity @e[x=-1289,y=100,z=-39,dy=3,type=cobblemon:npc] run npcspawnat -1289 100 -39 shauna_generic
execute as @s[x=-1293,y=100,z=-36,distance=..20,tag=Dialogue32,tag=!Dialogue33] unless entity @e[x=-1296,y=101,z=-37,dy=3,type=cobblemon:npc] run npcspawnat -1298 101 -34 camphrier_guide
execute as @s[x=-1293,y=100,z=-36,distance=..20,tag=Dialogue32,tag=!Dialogue33] unless entity @e[x=-1298,y=101,z=-34,dy=3,type=cobblemon:npc] run npcspawnat -1296 101 -37 camphrier_worker

execute as @s[x=-1301,y=101,z=-36,distance=..15,tag=Dialogue32,tag=!Dialogue33] run opendialogue snorlax_dialogue33 @s
















#