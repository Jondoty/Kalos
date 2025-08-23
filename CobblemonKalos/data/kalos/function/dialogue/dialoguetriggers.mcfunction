
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


#Route 8 Sina and Dexio
execute as @s[x=-1942,y=150,z=84,dx=13,dy=10,dz=21,tag=!Dialogue37] run opendialogue sinadexio_dialogue37 @s

#Route 8/Ambrette Serena
execute as @s[x=-1930,y=151,z=562,distance=..10,tag=!Dialogue38] run opendialogue serena_dialogue38 @s

#Ambrette Town Serena & Scientist
execute as @s[x=-1949,y=140,z=579,dx=23,dy=10,dz=26,tag=!Dialogue39] run opendialogue serena_dialogue39 @s

#Glittering Cave First Flare Grunt
execute as @s[x=-1437,y=148,z=359,distance=..30,tag=!Dialogue41] unless entity @e[x=-1437,y=148,z=322,dy=3,type=cobblemon:npc] run npcspawnat -1437 148 322 glittering_flaregrunt1

#Flare Grunts Blocking Way
execute as @s[x=-1434,y=148,z=273,distance=..20,tag=!Dialogue43] unless entity @e[x=-1431,y=148,z=271,dy=3,type=cobblemon:npc] run npcspawnat -1431 148 271 serena_generic
execute as @s[x=-1434,y=148,z=273,distance=..20,tag=!Dialogue43] unless entity @e[x=-1437,y=148,z=275,dy=3,type=cobblemon:npc] run npcspawnat -1437 148 275 glittering_flaregrunt3
execute as @s[x=-1434,y=148,z=273,distance=..20,tag=!Dialogue43] unless entity @e[x=-1437,y=148,z=271,dy=3,type=cobblemon:npc] run npcspawnat -1437 148 271 glittering_flaregrunt4

#Pre Battle
execute as @s[x=-1437,y=148,z=275,distance=..10,tag=!Dialogue42] run opendialogue teamflare_dialogue42 @s

#Post Battles
execute as @s[x=-1437,y=148,z=275,distance=..20,tag=GlitteringGrunt1,tag=GlitteringGrunt2,tag=!Dialogue43] run opendialogue teamflare_dialogue43 @s

#Glittering Cave Scientist and Fossil
execute as @s[x=-1485,y=148,z=317,distance=..10,tag=!Dialogue45] unless entity @e[x=-1469,y=148,z=306,dy=3,type=cobblemon:npc] run npcspawnat -1469 148 306 glittering_scientist


#Cyllage City Grant chatting NPC
execute as @s[x=-1937,y=114,z=-22,distance=..10,tag=!Dialogue46] unless entity @e[x=-1922,y=114,z=16,dy=3,type=cobblemon:npc] run npcspawnat -1922 114 16 cyllage_grant

#Route 10 Flare Grunts, clears out after battles
execute as @s[x=-2208,y=104,z=-450,distance=..40,tag=Grant,tag=!Dialogue48] unless entity @e[x=-2208,y=104,z=-450,dy=3,type=cobblemon:npc] run npcspawnat -2208 104 -450 route10_flaregrunt1
execute as @s[x=-2190,y=104,z=-522,distance=..40,tag=Grant,tag=!Dialogue49] unless entity @e[x=-2190,y=104,z=-522,dy=3,type=cobblemon:npc] run npcspawnat -2190 104 -522 route10_flaregrunt2
execute as @s[x=-2227,y=104,z=-558,distance=..40,tag=Grant,tag=!Dialogue50] unless entity @e[x=-2227,y=104,z=-558,dy=3,type=cobblemon:npc] run npcspawnat -2227 104 -558 route10_flaregrunt3

#Geosenge Town Team Flare dialogue
execute as @s[x=-2210,y=104,z=-693,distance=..30,tag=!Dialogue52,tag=Grant] unless entity @e[x=-2210,y=104,z=-693,dy=3,type=cobblemon:npc] run npcspawnat -2210 104 -693 flare_generic
execute as @s[x=-2210,y=104,z=-693,distance=..7,tag=!Dialogue52,tag=Grant] run opendialogue teamflare_dialogue52 @s

#Route 11 Korrina Battle
execute as @s[x=-2109,y=103,z=-703,dx=10,dy=10,dz=26,tag=!Dialogue54] unless entity @e[x=-2105,y=104,z=-691,dy=3,type=cobblemon:npc] run particle cloud -2105 104 -691 2 2 2 1 100
execute as @s[x=-2109,y=103,z=-703,dx=10,dy=10,dz=26,tag=!Dialogue54] unless entity @e[x=-2105,y=104,z=-691,dy=3,type=cobblemon:npc] run npcspawnat -2105 104 -691 route11_korrina

#Shalour City Trevor and Tierno
execute as @s[x=-1628,y=83,z=-785,distance=..10,tag=!Dialogue56] unless entity @e[x=-1654,y=80,z=-824,dy=3,type=cobblemon:npc] run npcspawnat -1654 80 -824 tierno_generic
execute as @s[x=-1628,y=83,z=-785,distance=..10,tag=!Dialogue56] unless entity @e[x=-1658,y=80,z=-824,dy=3,type=cobblemon:npc] run npcspawnat -1658 80 -824 trevor_generic
execute as @s[x=-1656,y=80,z=-824,distance=..7,tag=!Dialogue56] run opendialogue trevortierno_dialogue56 @s

#Shalour Tierno giving Intriguing Stone
execute as @s[x=-1656,y=76,z=-917,distance=..30,tag=!Dialogue58] unless entity @e[x=-1656,y=76,z=-917,dy=3,type=cobblemon:npc] run npcspawnat -1656 76 -917 tierno_generic
execute as @s[x=-1694,y=76,z=-925,dx=75,dy=10,dz=20,tag=!Dialogue58] run opendialogue tierno_dialogue58 @s

#Tower of Mastery Interior Room Conversation
execute as @s[x=-1659,y=92,z=-1160,distance=..10,tag=!Dialogue59] unless entity @e[x=-1658,y=77,z=-1189,dy=3,type=cobblemon:npc] run npcspawnat -1658 77 -1189 korrina_generic
execute as @s[x=-1659,y=92,z=-1160,distance=..10,tag=!Dialogue59] unless entity @e[x=-1654,y=77,z=-1189,dy=3,type=cobblemon:npc] run npcspawnat -1654 77 -1189 megaguru_generic
execute as @s[x=-1658,y=77,z=-1191,distance=..7,tag=!Dialogue59] run opendialogue megaguru_dialogue59 @s

#Tower of Mastery Everyone Conversation and Serena Battle
execute as @s[x=-1659,y=92,z=-1156,distance=..10,tag=Dialogue59,tag=!Dialogue61] unless entity @e[x=-1654,y=92,z=-1149,dy=3,type=cobblemon:npc] run npcspawnat -1654 92 -1149 korrina_generic
execute as @s[x=-1659,y=92,z=-1156,distance=..10,tag=Dialogue59,tag=!Dialogue61] unless entity @e[x=-1653,y=92,z=-1153,dy=3,type=cobblemon:npc] run npcspawnat -1653 92 -1153 megaguru_generic
execute as @s[x=-1659,y=92,z=-1156,distance=..10,tag=Dialogue59,tag=!Dialogue61,scores={StarterPick=1}] unless entity @e[x=-1662,y=92,z=-1146,dy=3,type=cobblemon:npc] run npcspawnat -1662 92 -1146 towerofmastery_serena1
execute as @s[x=-1659,y=92,z=-1156,distance=..10,tag=Dialogue59,tag=!Dialogue61,scores={StarterPick=2}] unless entity @e[x=-1662,y=92,z=-1146,dy=3,type=cobblemon:npc] run npcspawnat -1662 92 -1146 towerofmastery_serena2
execute as @s[x=-1659,y=92,z=-1156,distance=..10,tag=Dialogue59,tag=!Dialogue61,scores={StarterPick=3}] unless entity @e[x=-1662,y=92,z=-1146,dy=3,type=cobblemon:npc] run npcspawnat -1662 92 -1146 towerofmastery_serena3
execute as @s[x=-1659,y=92,z=-1156,distance=..10,tag=Dialogue59,tag=!Dialogue61] unless entity @e[x=-1664,y=92,z=-1149,dy=3,type=cobblemon:npc] run npcspawnat -1664 92 -1149 shauna_generic
execute as @s[x=-1659,y=92,z=-1156,distance=..10,tag=Dialogue59,tag=!Dialogue61] unless entity @e[x=-1665,y=92,z=-1152,dy=3,type=cobblemon:npc] run npcspawnat -1665 92 -1152 trevor_generic
execute as @s[x=-1659,y=92,z=-1156,distance=..10,tag=Dialogue59,tag=!Dialogue61] unless entity @e[x=-1664,y=92,z=-1155,dy=3,type=cobblemon:npc] run npcspawnat -1664 92 -1155 tierno_generic
execute as @s[x=-1659,y=92,z=-1156,distance=..10,tag=Dialogue59,tag=!Dialogue60] run opendialogue megaguru_dialogue60 @s

#Tower of Mastery Korrina Mega Battle
execute as @s[x=-1635,y=188,z=-1180,distance=..25,tag=!Dialogue64] unless entity @e[x=-1635,y=188,z=-1180,dy=3,type=cobblemon:npc] run npcspawnat -1635 188 -1180 towerofmastery_korrina
execute as @s[x=-1635,y=188,z=-1180,distance=..5,tag=!Dialogue63] run opendialogue korrina_dialogue63 @s

#Shalour Serena giving Surf after the Tower of Mastery battle
execute as @s[x=-1540,y=83,z=-810,distance=..15,tag=Dialogue64,tag=!Dialogue65] unless entity @e[x=-1517,y=80,z=-808,dy=3,type=cobblemon:npc] run npcspawnat -1517 80 -808 serena_generic
execute as @s[x=-1517,y=79,z=-808,distance=..5,tag=Dialogue64,tag=!Dialogue65] run opendialogue serena_dialogue65 @s

#Courmarine Town Sycamore and Diantha, getting Fly
execute as @s[x=-1052,y=80,z=-778,distance=..15,tag=!Dialogue66] unless entity @e[x=-1055,y=80,z=-794,dy=3,type=cobblemon:npc] run npcspawnat -1055 80 -794 sycamore_generic
execute as @s[x=-1052,y=80,z=-778,distance=..15,tag=!Dialogue66] unless entity @e[x=-1052,y=80,z=-794,dy=3,type=cobblemon:npc] run npcspawnat -1052 80 -794 diantha_generic
execute as @s[x=-1053,y=80,z=-794,distance=..5,tag=!Dialogue66] run opendialogue sycamore_dialogue66 @s

#Courmarine Serena Battle setup
execute as @s[x=-1078,y=119,z=-697,distance=..15,tag=!Dialogue68] unless entity @e[x=-1078,y=121,z=-709,dy=3,type=cobblemon:npc] run particle cloud -1078 121 -709 2 2 2 1 100
execute as @s[x=-1078,y=119,z=-697,distance=..15,tag=!Dialogue68,scores={StarterPick=1}] unless entity @e[x=-1078,y=121,z=-709,dy=3,type=cobblemon:npc] run npcspawnat -1078 121 -709 courmarine_serena1
execute as @s[x=-1078,y=119,z=-697,distance=..15,tag=!Dialogue68,scores={StarterPick=2}] unless entity @e[x=-1078,y=121,z=-709,dy=3,type=cobblemon:npc] run npcspawnat -1078 121 -709 courmarine_serena2
execute as @s[x=-1078,y=119,z=-697,distance=..15,tag=!Dialogue68,scores={StarterPick=3}] unless entity @e[x=-1078,y=121,z=-709,dy=3,type=cobblemon:npc] run npcspawnat -1078 121 -709 courmarine_serena3

#Courmarine Sina and Dexio
execute as @s[x=-1073,y=115,z=-568,distance=..7,tag=!Dialogue69] run opendialogue sinadexio_dialogue69 @s

#Route 13 Respawns Team Flare Grunt
execute as @s[x=-765,y=104,z=-363,distance=..30,tag=Ramos,tag=!Dialogue70] unless entity @e[x=-772,y=104,z=-330,dy=3,type=cobblemon:npc] run npcspawnat -772 104 -330 route13_flaregrunt

#Particles for power plant pass
#execute as @a[x=-779,y=104,z=-347,distance=..45,tag=Dialogue70,tag=!PowerPlantPass] run particle minecraft:firework -779 104 -347 0 2 0 0.1 0 normal @s

#Sets up Team Flare Grunts
#First grunt
execute as @a[x=-954,y=47,z=-361,dx=22,dy=10,dz=16,tag=!Dialogue73] unless entity @e[x=-949,y=48,z=-350,dy=3,type=cobblemon:npc] run npcspawnat -949 48 -350 powerplant_flaregrunt1
execute as @a[x=-954,y=47,z=-361,dx=22,dy=10,dz=16,tag=!Dialogue73] unless entity @e[x=-962,y=54,z=-336,dy=3,type=cobblemon:npc] run npcspawnat -962 54 -336 powerplant_flaregrunt2

execute as @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=!Dialogue73] unless entity @e[x=-982,y=54,z=-346,dy=3,type=cobblemon:npc] run npcspawnat -982 54 -346 powerplant_flaregrunt3
execute as @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=!Dialogue73] unless entity @e[x=-992,y=54,z=-310,dy=3,type=cobblemon:npc] run npcspawnat -992 54 -310 powerplant_flaregrunt4
execute as @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=!Dialogue73] unless entity @e[x=-1029,y=54,z=-293,dy=3,type=cobblemon:npc] run npcspawnat -1029 54 -293 powerplant_flaregrunt5
execute as @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=!Dialogue73] unless entity @e[x=-1076,y=54,z=-336,dy=3,type=cobblemon:npc] run npcspawnat -1076 54 -336 powerplant_flaregrunt6
execute as @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=!Dialogue73] unless entity @e[x=-1069,y=54,z=-363,dy=3,type=cobblemon:npc] run npcspawnat -1069 54 -363 powerplant_flaregrunt7
execute as @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=!Dialogue73] unless entity @e[x=-1029,y=54,z=-380,dy=3,type=cobblemon:npc] run npcspawnat -1029 54 -380 powerplant_flaregrunt8
#Admin
execute as @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=!Dialogue75] unless entity @e[x=-1013,y=58,z=-335,dy=3,type=cobblemon:npc] run npcspawnat -1013 58 -335 powerplant_flareadmin
#Aliana
execute as @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=!Dialogue75] unless entity @e[x=-1013,y=58,z=-339,dy=3,type=cobblemon:npc] run npcspawnat -1013 58 -339 powerplant_aliana

#Power Plant Admin and Aliana pre-battle
execute as @a[x=-1007,y=57,z=-340,dx=14,dy=5,dz=6,tag=!Dialogue73] run opendialogue teamflare_dialogue73 @s

#Gets rid of all Flare grunts after defeating Aliana
execute as @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=Dialogue75] run tp @e[x=-949,y=48,z=-350,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=Dialogue75] run tp @e[x=-962,y=54,z=-336,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=Dialogue75] run tp @e[x=-982,y=54,z=-346,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=Dialogue75] run tp @e[x=-992,y=54,z=-310,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=Dialogue75] run tp @e[x=-1029,y=54,z=-293,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=Dialogue75] run tp @e[x=-1076,y=54,z=-336,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=Dialogue75] run tp @e[x=-1069,y=54,z=-363,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=Dialogue75] run tp @e[x=-1029,y=54,z=-380,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000

#Route 13 AZ
execute as @s[x=-709,y=100,z=-468,distance=..30,tag=Dialogue75,tag=!Dialogue76] unless entity @e[x=-709,y=100,z=-468,dy=3,type=cobblemon:npc] run npcspawnat -709 100 -468 az_generic
execute as @s[x=-719,y=99,z=-474,dx=7,dy=10,dz=12,tag=Dialogue75,tag=!Dialogue76] run opendialogue az_dialogue76 @s

#Lumiose City Shauna from Route 13 gate
execute as @a[x=-509,y=101,z=-497,distance=..20,tag=!Dialogue77] run opendialogue shauna_dialogue77 @s

#Lumiose City Clemong, Bonnie and Shauna working on tower
execute if entity @s[x=-254,y=101,z=-413,distance=..15,tag=!Dialogue78] run setblock -181 172 -390 iron_block 
execute if entity @s[x=-254,y=101,z=-413,distance=..15,tag=!Dialogue78] as @e[x=-181,y=114,z=-390,distance=..30,type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":34},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":52},count:1,id:"minecraft:iron_hoe"}]}
execute as @s[x=-254,y=101,z=-413,distance=..15,tag=!Dialogue78] unless entity @e[x=-226,y=102,z=-395,dy=3,type=cobblemon:npc] run npcspawnat -226 102 -395 shauna_generic
execute as @s[x=-254,y=101,z=-413,distance=..15,tag=!Dialogue78] unless entity @e[x=-214,y=102,z=-392,dy=3,type=cobblemon:npc] run npcspawnat -214 102 -392 clemont_generic
execute as @s[x=-254,y=101,z=-413,distance=..15,tag=!Dialogue78] unless entity @e[x=-214,y=102,z=-388,dy=3,type=cobblemon:npc] run npcspawnat -214 102 -388 bonnie_generic
execute as @s[x=-226,y=102,z=-395,distance=..10,tag=!Dialogue78] run opendialogue lumiosetower_dialogue78 @s

#Lumiose Lysandre Labs after beating Clemont
execute as @s[x=-295,y=120,z=451,distance=..6,tag=Clemont,tag=!Dialogue79] unless entity @e[x=-296,y=121,z=433,dy=3,type=cobblemon:npc] run npcspawnat -296 121 433 sycamore_generic
execute as @s[x=-295,y=120,z=451,distance=..6,tag=Clemont,tag=!Dialogue79] unless entity @e[x=-293,y=121,z=433,dy=3,type=cobblemon:npc] run npcspawnat -293 121 433 lysandre_generic
execute as @s[x=-295,y=121,z=433,distance=..7,tag=Clemont,tag=!Dialogue79] run opendialogue sycamorelydandre_dialogue79 @s

#Route 14 Friends Pre-Battle
execute as @s[x=-194,y=99,z=-899,dx=30,dy=5,dz=53,tag=!Dialogue81] unless entity @e[x=-171,y=100,z=-885,dy=3,type=cobblemon:npc] run npcspawnat -171 100 -885 trevor_generic
execute as @s[x=-194,y=99,z=-899,dx=30,dy=5,dz=53,scores={StarterPick=1},tag=!Dialogue81] unless entity @e[x=-174,y=100,z=-887,dy=3,type=cobblemon:npc] run npcspawnat -174 100 -887 route14_serena1
execute as @s[x=-194,y=99,z=-899,dx=30,dy=5,dz=53,scores={StarterPick=2},tag=!Dialogue81] unless entity @e[x=-174,y=100,z=-887,dy=3,type=cobblemon:npc] run npcspawnat -174 100 -887 route14_serena2
execute as @s[x=-194,y=99,z=-899,dx=30,dy=5,dz=53,scores={StarterPick=3},tag=!Dialogue81] unless entity @e[x=-174,y=100,z=-887,dy=3,type=cobblemon:npc] run npcspawnat -174 100 -887 route14_serena3

#Route 14 Friends outside Scary House
execute as @s[x=-204,y=100,z=-1207,distance=..10,tag=!Dialogue82] unless entity @e[x=-231,y=100,z=-1220,dy=3,type=cobblemon:npc] run npcspawnat -231 100 -1220 shauna_generic
execute as @s[x=-204,y=100,z=-1207,distance=..10,tag=!Dialogue82] unless entity @e[x=-229,y=100,z=-1214,dy=3,type=cobblemon:npc] run npcspawnat -229 100 -1214 trevor_generic
execute as @s[x=-204,y=100,z=-1207,distance=..10,tag=!Dialogue82] unless entity @e[x=-234,y=100,z=-1214,dy=3,type=cobblemon:npc] run npcspawnat -234 100 -1214 tierno_generic
execute as @s[x=-231,y=100,z=-1217,distance=..8,tag=!Dialogue82] run opendialogue scaryhouse_dialogue82 @s

#Inside Scary House
execute as @s[x=-233,y=100,z=-1225,distance=..10,tag=!Dialogue83] unless entity @e[x=-229,y=88,z=-1238,dy=3,type=cobblemon:npc] run npcspawnat -229 88 -1238 shauna_generic
execute as @s[x=-233,y=100,z=-1225,distance=..10,tag=!Dialogue83] unless entity @e[x=-232,y=88,z=-1238,dy=3,type=cobblemon:npc] run npcspawnat -232 88 -1238 trevor_generic
execute as @s[x=-233,y=100,z=-1225,distance=..10,tag=!Dialogue83] unless entity @e[x=-233,y=88,z=-1236,dy=3,type=cobblemon:npc] run npcspawnat -233 88 -1236 tierno_generic
execute as @s[x=-230,y=88,z=-1242,distance=..9,tag=!Dialogue83] run opendialogue scaryhouse_dialogue83 @s

#Scary House Followup outside
execute as @s[x=-231,y=87,z=-1225,distance=..10,tag=Dialogue83,tag=!Dialogue84] unless entity @e[x=-231,y=100,z=-1220,dy=3,type=cobblemon:npc] run npcspawnat -231 100 -1220 shauna_generic
execute as @s[x=-231,y=87,z=-1225,distance=..10,tag=Dialogue83,tag=!Dialogue84] unless entity @e[x=-229,y=100,z=-1214,dy=3,type=cobblemon:npc] run npcspawnat -229 100 -1214 trevor_generic
execute as @s[x=-231,y=87,z=-1225,distance=..10,tag=Dialogue83,tag=!Dialogue84] unless entity @e[x=-234,y=100,z=-1214,dy=3,type=cobblemon:npc] run npcspawnat -234 100 -1214 tierno_generic
execute as @s[x=-231,y=100,z=-1218,distance=..6,tag=Dialogue83,tag=!Dialogue84] run opendialogue scaryhouse_dialogue84 @s

#Laverre Town Friends after badge
execute as @s[x=-93,y=100,z=-1458,distance=..10,tag=Valerie,tag=!Dialogue85] unless entity @e[x=-95,y=100,z=-1454,dy=3,type=cobblemon:npc] run particle cloud -95 100 -1454 2 2 2 1 100
execute as @s[x=-93,y=100,z=-1458,distance=..10,tag=Valerie,tag=!Dialogue85] unless entity @e[x=-91,y=100,z=-1454,dy=3,type=cobblemon:npc] run particle cloud -91 100 -1454 2 2 2 1 100
execute as @s[x=-93,y=100,z=-1458,distance=..10,tag=Valerie,tag=!Dialogue85] unless entity @e[x=-95,y=100,z=-1454,dy=3,type=cobblemon:npc] run npcspawnat -95 100 -1454 shauna_generic
execute as @s[x=-93,y=100,z=-1458,distance=..10,tag=Valerie,tag=!Dialogue85] unless entity @e[x=-91,y=100,z=-1454,dy=3,type=cobblemon:npc] run npcspawnat -91 100 -1454 trevor_generic
execute as @s[x=-93,y=100,z=-1458,distance=..10,tag=Valerie,tag=!Dialogue85] run opendialogue shaunatrevor_dialogue85 @s

#Friends on stairs chasing away Team Flare
execute as @s[x=-172,y=117,z=-1643,distance=..7,tag=Valerie,tag=!Dialogue86] run opendialogue friendsflare_dialogue86 @s
execute as @s[x=-172,y=117,z=-1600,distance=..30,tag=Valerie,tag=!Dialogue86] unless entity @e[x=-172,y=117,z=-1642,dy=3,type=cobblemon:npc] run npcspawnat -172 117 -1642 shauna_generic
execute as @s[x=-172,y=117,z=-1600,distance=..30,tag=Valerie,tag=!Dialogue86] unless entity @e[x=-172,y=117,z=-1645,dy=3,type=cobblemon:npc] run npcspawnat -172 117 -1645 trevor_generic

#Poke Ball Factory Team Flare
execute as @s[x=-154,y=89,z=-1859,distance=..8,tag=Dialogue86,tag=!Dialogue87] run opendialogue teamflare_dialogue87 @s

#Sets up Power Plant Flare Grunts
execute as @s[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,tag=!Dialogue90] unless entity @e[x=-134,y=95,z=-1919,dy=3,type=cobblemon:npc] run npcspawnat -134 95 -1919 pokeballfactory_flaregrunt1
execute as @s[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,tag=!Dialogue90] unless entity @e[x=-209,y=89,z=-1938,dy=3,type=cobblemon:npc] run npcspawnat -209 89 -1938 pokeballfactory_flaregrunt2
execute as @s[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,tag=!Dialogue90] unless entity @e[x=-148,y=89,z=-1965,dy=3,type=cobblemon:npc] run npcspawnat -148 89 -1965 pokeballfactory_flaregrunt3
execute as @s[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,tag=!Dialogue90] unless entity @e[x=-135,y=104,z=-1996,dy=3,type=cobblemon:npc] run npcspawnat -135 104 -1996 pokeballfactory_flaregrunt4

#Gets rid of grunts
execute as @s[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,tag=Dialogue90] run tp @e[x=-134,y=95,z=-1919,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @s[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,tag=Dialogue90] run tp @e[x=-209,y=89,z=-1938,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @s[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,tag=Dialogue90] run tp @e[x=-148,y=89,z=-1965,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @s[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,tag=Dialogue90] run tp @e[x=-135,y=104,z=-1996,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000

#grunt and serena from dialogue 87
execute as @s[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,tag=Dialogue90] run tp @e[x=-154,y=89,z=-1859,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @s[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,tag=Dialogue90] run tp @e[x=-154,y=88,z=-1849,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000

#Poke Ball Factory spawns admin and scientists
execute as @s[x=-99,y=104,z=-1993,distance=..8,tag=!Dialogue90] unless entity @e[x=-77,y=104,z=-2010,dy=3,type=cobblemon:npc] run npcspawnat -77 104 -2010 pokeballfactory_celosia
execute as @s[x=-99,y=104,z=-1993,distance=..8,tag=!Dialogue90] unless entity @e[x=-80,y=104,z=-2012,dy=3,type=cobblemon:npc] run npcspawnat -80 104 -2012 pokeballfactory_flareadmin
execute as @s[x=-99,y=104,z=-1993,distance=..8,tag=!Dialogue90] unless entity @e[x=-83,y=104,z=-2010,dy=3,type=cobblemon:npc] run npcspawnat -83 104 -2010 pokeballfactory_bryony
execute as @s[x=-99,y=104,z=-1993,distance=..8,tag=!Dialogue89] unless entity @e[x=-83,y=103,z=-2010,dy=3,type=minecraft:interaction] positioned -83 104 -2010 run function kalos:spawn/npcboxes
execute as @s[x=-99,y=104,z=-1993,distance=..8,tag=!Dialogue89] unless entity @e[x=-77,y=103,z=-2010,dy=3,type=minecraft:interaction] positioned -77 104 -2010 run function kalos:spawn/npcboxes

#Friends post-Team Flare Grunts
execute as @s[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,tag=Dialogue90,tag=!Dialogue93] unless entity @e[x=-157,y=89,z=-1853,dy=3,type=cobblemon:npc] run npcspawnat -157 89 -1853 shauna_generic
execute as @s[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,tag=Dialogue90,tag=!Dialogue93] unless entity @e[x=-151,y=89,z=-1853,dy=3,type=cobblemon:npc] run npcspawnat -151 89 -1853 trevor_generic
execute as @s[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,tag=Dialogue90,tag=!Dialogue93] unless entity @e[x=-154,y=89,z=-1852,dy=3,type=cobblemon:npc] run npcspawnat -154 89 -1852 tierno_generic
execute as @s[x=-154,y=89,z=-1852,distance=..10,tag=Dialogue90,tag=!Dialogue93] run opendialogue friends_dialogue93 @s


#Dendemille Town Sycamore and Dexio
execute as @s[x=591,y=108,z=-422,distance=..10,tag=!Dialogue94] unless entity @e[x=645,y=108,z=-420,dy=3,type=cobblemon:npc] run npcspawnat 645 108 -420 sycamore_generic
execute as @s[x=591,y=108,z=-422,distance=..10,tag=!Dialogue94] unless entity @e[x=645,y=108,z=-424,dy=3,type=cobblemon:npc] run npcspawnat 645 108 -424 dexio_generic
execute as @s[x=645,y=108,z=-422,distance=..7,tag=!Dialogue94] run opendialogue sycamore_dialogue94 @s

#Frost Cavern Ext Mamoswine and Ace Trainer
execute as @s[x=733,y=119,z=-646,distance=..20,tag=!Dialogue95] unless entity @e[x=722,y=118,z=-666,distance=..5,type=cobblemon:pokemon] run pokespawnat 722 118 -666 mamoswine no_ai=true level=40
execute positioned 722 118 -666 as @e[distance=..5,type=cobblemon:pokemon,name=Mamoswine,nbt={PersistenceRequired:0b}] at @s run tp @s ~ ~ ~ -180 ~
execute positioned 722 118 -666 as @e[distance=..5,type=cobblemon:pokemon,name=Mamoswine,nbt={PersistenceRequired:0b}] run data merge entity @s {Pokemon:{PokemonData:["uncatchable"]}}
execute positioned 722 118 -666 as @e[distance=..5,type=cobblemon:pokemon,name=Mamoswine,nbt={PersistenceRequired:0b}] run data modify entity @s Unbattleable set value 1b
execute positioned 722 118 -666 as @e[distance=..5,type=cobblemon:pokemon,name=Mamoswine,nbt={PersistenceRequired:0b}] run data modify entity @s Invulnerable set value 1b
execute positioned 722 118 -666 as @e[distance=..5,type=cobblemon:pokemon,name=Mamoswine,nbt={PersistenceRequired:0b}] run data modify entity @s PersistenceRequired set value 1

execute as @s[x=733,y=119,z=-646,distance=..20,tag=!Dialogue95] unless entity @e[x=725,y=118,z=-665,dy=3,type=cobblemon:npc] run npcspawnat 725 118 -665 frostcavern_acetrainerm
execute as @s[x=717,y=117,z=-682,dx=24,dy=10,dz=20,tag=!Dialogue95] run opendialogue trevor_dialogue95 @s








#-----------------------------------------------------------
#Sets up legendary Pokemon

#Mewtwo
execute as @s[x=845,y=75,z=605,distance=..6,scores={Mewtwo=0}] unless entity @e[x=845,y=75,z=559,distance=..5,type=cobblemon:pokemon] run summon minecraft:interaction 845 75 559 {width:2,height:3,response:1,Tags:[NPCs]}
execute as @s[x=845,y=75,z=605,distance=..6,scores={Mewtwo=0}] unless entity @e[x=845,y=75,z=559,distance=..5,type=cobblemon:pokemon] run pokespawnat 845 75 559 mewtwo no_ai=true level=70 moves=recover,psychic,barrier,aurasphere
execute positioned 845 75 559 as @e[distance=..5,type=cobblemon:pokemon,name=Mewtwo,nbt={PersistenceRequired:0b}] run data merge entity @s {Pokemon:{PokemonData:["uncatchable"]}}
execute positioned 845 75 559 as @e[distance=..5,type=cobblemon:pokemon,name=Mewtwo,nbt={PersistenceRequired:0b}] run data modify entity @s Unbattleable set value 1b
execute positioned 845 75 559 as @e[distance=..5,type=cobblemon:pokemon,name=Mewtwo,nbt={PersistenceRequired:0b}] run data modify entity @s Invulnerable set value 1b
execute positioned 845 75 559 as @e[distance=..5,type=cobblemon:pokemon,name=Mewtwo,nbt={PersistenceRequired:0b}] run data modify entity @s PersistenceRequired set value 1


#Zygarde
execute as @s[x=2020,y=56,z=-98,distance=..6,scores={Zygarde=0}] unless entity @e[x=2015,y=61,z=-174,distance=..5,type=cobblemon:pokemon,name=Zygarde] run summon minecraft:interaction 2015 61 -174 {width:4,height:4,response:1,Tags:[NPCs]}
execute as @s[x=2020,y=56,z=-98,distance=..6,scores={Zygarde=0}] unless entity @e[x=2015,y=61,z=-174,distance=..5,type=cobblemon:pokemon,name=Zygarde] run pokespawnat 2015 61 -174 zygarde no_ai=true level=70 moves=crunch,earthquake,camouflage,dragonpulse
execute positioned 2015 61 -174 as @e[distance=..5,type=cobblemon:pokemon,name=Zygarde,nbt={PersistenceRequired:0b}] run data merge entity @s {Pokemon:{PokemonData:["uncatchable"]}}
execute positioned 2015 61 -174 as @e[distance=..5,type=cobblemon:pokemon,name=Zygarde,nbt={PersistenceRequired:0b}] run data modify entity @s Unbattleable set value 1b
execute positioned 2015 61 -174 as @e[distance=..5,type=cobblemon:pokemon,name=Zygarde,nbt={PersistenceRequired:0b}] run data modify entity @s Invulnerable set value 1b
execute positioned 2015 61 -174 as @e[distance=..5,type=cobblemon:pokemon,name=Zygarde,nbt={PersistenceRequired:0b}] run data modify entity @s PersistenceRequired set value 1


#Diancie
execute as @s[x=-1692,y=2,z=-439,distance=..20,scores={Diancie=0}] unless entity @e[x=-1707,y=2,z=-437,distance=..5,type=cobblemon:pokemon,name=Diancie] run summon minecraft:interaction -1707 2 -437 {width:2,height:2,response:1,Tags:[NPCs]}
execute as @s[x=-1692,y=2,z=-439,distance=..20,scores={Diancie=0}] unless entity @e[x=-1707,y=2,z=-437,distance=..5,type=cobblemon:pokemon,name=Diancie] run pokespawnat -1707 2 -437 diancie no_ai=true level=50 moves=diamondstorm,moonblast,dazzlinggleam,protect
execute positioned -1707 2 -437 as @e[distance=..5,type=cobblemon:pokemon,name=Diancie,nbt={PersistenceRequired:0b}] run data merge entity @s {Pokemon:{PokemonData:["uncatchable"]}}
execute positioned -1707 2 -437 as @e[distance=..5,type=cobblemon:pokemon,name=Diancie,nbt={PersistenceRequired:0b}] at @s run tp @s ~ ~ ~ -90 ~
execute positioned -1707 2 -437 as @e[distance=..5,type=cobblemon:pokemon,name=Diancie,nbt={PersistenceRequired:0b}] run data modify entity @s Unbattleable set value 1b
execute positioned -1707 2 -437 as @e[distance=..5,type=cobblemon:pokemon,name=Diancie,nbt={PersistenceRequired:0b}] run data modify entity @s Invulnerable set value 1b
execute positioned -1707 2 -437 as @e[distance=..5,type=cobblemon:pokemon,name=Diancie,nbt={PersistenceRequired:0b}] run data modify entity @s PersistenceRequired set value 1


#Articuno
execute as @s[x=-1331,y=22,z=-1193,distance=..10,scores={Articuno=5,StarterPick=1}] unless entity @e[x=-1335,y=22,z=-1252,distance=..5,type=cobblemon:pokemon,name=Articuno] run summon minecraft:interaction -1335 22 -1252 {width:2,height:3,response:1,Tags:[NPCs]}
execute as @s[x=-1331,y=22,z=-1193,distance=..10,scores={Articuno=5,StarterPick=1}] unless entity @e[x=-1335,y=22,z=-1252,distance=..5,type=cobblemon:pokemon,name=Articuno] run pokespawnat -1335 22 -1252 articuno no_ai=true level=70 moves=icebeam,reflect,hail,tailwind
execute positioned -1335 22 -1252 as @e[distance=..5,type=cobblemon:pokemon,name=Articuno,nbt={PersistenceRequired:0b}] run data merge entity @s {Pokemon:{PokemonData:["uncatchable"]}}
execute positioned -1335 22 -1252 as @e[distance=..5,type=cobblemon:pokemon,name=Articuno,nbt={PersistenceRequired:0b}] run data modify entity @s Unbattleable set value 1b
execute positioned -1335 22 -1252 as @e[distance=..5,type=cobblemon:pokemon,name=Articuno,nbt={PersistenceRequired:0b}] run data modify entity @s Invulnerable set value 1b
execute positioned -1335 22 -1252 as @e[distance=..5,type=cobblemon:pokemon,name=Articuno,nbt={PersistenceRequired:0b}] run data modify entity @s PersistenceRequired set value 1

#Zapdos
execute as @s[x=-1331,y=22,z=-1193,distance=..10,scores={Zapdos=5,StarterPick=2}] unless entity @e[x=-1349,y=22,z=-1232,distance=..5,type=cobblemon:pokemon,name=Zapdos] run summon minecraft:interaction -1349 22 -1232 {width:2,height:3,response:1,Tags:[NPCs]}
execute as @s[x=-1331,y=22,z=-1193,distance=..10,scores={Zapdos=5,StarterPick=2}] unless entity @e[x=-1349,y=22,z=-1232,distance=..5,type=cobblemon:pokemon,name=Zapdos] run pokespawnat -1349 22 -1232 zapdos no_ai=true level=70 moves=agility,discharge,raindance,lightscreen
execute positioned -1349 22 -1232 as @e[distance=..5,type=cobblemon:pokemon,name=Zapdos,nbt={PersistenceRequired:0b}] at @s run tp @s ~ ~ ~ -90 ~
execute positioned -1349 22 -1232 as @e[distance=..5,type=cobblemon:pokemon,name=Zapdos,nbt={PersistenceRequired:0b}] run data merge entity @s {Pokemon:{PokemonData:["uncatchable"]}}
execute positioned -1349 22 -1232 as @e[distance=..5,type=cobblemon:pokemon,name=Zapdos,nbt={PersistenceRequired:0b}] run data modify entity @s Unbattleable set value 1b
execute positioned -1349 22 -1232 as @e[distance=..5,type=cobblemon:pokemon,name=Zapdos,nbt={PersistenceRequired:0b}] run data modify entity @s Invulnerable set value 1b
execute positioned -1349 22 -1232 as @e[distance=..5,type=cobblemon:pokemon,name=Zapdos,nbt={PersistenceRequired:0b}] run data modify entity @s PersistenceRequired set value 1

#Moltres
execute as @s[x=-1331,y=22,z=-1193,distance=..10,scores={Moltres=5,StarterPick=3}] unless entity @e[x=-1313,y=22,z=-1232,distance=..5,type=cobblemon:pokemon,name=Moltres] run summon minecraft:interaction -1313 22 -1232 {width:2,height:3,response:1,Tags:[NPCs]}
execute as @s[x=-1331,y=22,z=-1193,distance=..10,scores={Moltres=5,StarterPick=3}] unless entity @e[x=-1313,y=22,z=-1232,distance=..5,type=cobblemon:pokemon,name=Moltres] run pokespawnat -1313 22 -1232 moltres no_ai=true level=70 moves=safeguard,airslash,sunnyday,heatwave
execute positioned -1313 22 -1232 as @e[distance=..5,type=cobblemon:pokemon,name=Moltres,nbt={PersistenceRequired:0b}] at @s run tp @s ~ ~ ~ 90 ~
execute positioned -1313 22 -1232 as @e[distance=..5,type=cobblemon:pokemon,name=Moltres,nbt={PersistenceRequired:0b}] run data merge entity @s {Pokemon:{PokemonData:["uncatchable"]}}
execute positioned -1313 22 -1232 as @e[distance=..5,type=cobblemon:pokemon,name=Moltres,nbt={PersistenceRequired:0b}] run data modify entity @s Unbattleable set value 1b
execute positioned -1313 22 -1232 as @e[distance=..5,type=cobblemon:pokemon,name=Moltres,nbt={PersistenceRequired:0b}] run data modify entity @s Invulnerable set value 1b
execute positioned -1313 22 -1232 as @e[distance=..5,type=cobblemon:pokemon,name=Moltres,nbt={PersistenceRequired:0b}] run data modify entity @s PersistenceRequired set value 1














#