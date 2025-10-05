
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

#TPs out gang after you've battled and received a Kanto starter
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

#Frost Cavern Abomasnow and Team Flare 
execute as @s[x=676,y=85,z=-1368,distance=..20,tag=!Dialogue98] unless entity @e[x=722,y=118,z=-666,distance=..5,type=cobblemon:pokemon] run pokespawnat 676 85 -1368 abomasnow no_ai=true level=40
execute positioned 676 85 -1368 as @e[distance=..5,type=cobblemon:pokemon,name=Abomasnow,nbt={PersistenceRequired:0b}] run data merge entity @s {Pokemon:{PokemonData:["uncatchable"]}}
execute positioned 676 85 -1368 as @e[distance=..5,type=cobblemon:pokemon,name=Abomasnow,nbt={PersistenceRequired:0b}] run data modify entity @s Unbattleable set value 1b
execute positioned 676 85 -1368 as @e[distance=..5,type=cobblemon:pokemon,name=Abomasnow,nbt={PersistenceRequired:0b}] run data modify entity @s Invulnerable set value 1b
execute positioned 676 85 -1368 as @e[distance=..5,type=cobblemon:pokemon,name=Abomasnow,nbt={PersistenceRequired:0b}] run data modify entity @s PersistenceRequired set value 1

#Sets up Trevor and grunts
execute as @s[x=676,y=84,z=-1230,distance=..15,tag=!Dialogue96] unless entity @e[x=676,y=85,z=-1297,dy=3,type=cobblemon:npc] run npcspawnat 676 85 -1297 trevor_generic
execute as @s[x=672,y=84,z=-1299,dx=18,dy=6,dz=11,tag=!Dialogue98] unless entity @e[x=676,y=85,z=-1361,dy=3,type=cobblemon:npc] run npcspawnat 676 85 -1361 frostcavern_mable
execute as @s[x=672,y=84,z=-1299,dx=18,dy=6,dz=11,tag=!Dialogue98] unless entity @e[x=673,y=85,z=-1358,dy=3,type=cobblemon:npc] run npcspawnat 673 85 -1358 flare_generic
execute as @s[x=672,y=84,z=-1299,dx=18,dy=6,dz=11,tag=!Dialogue98] unless entity @e[x=679,y=85,z=-1358,dy=3,type=cobblemon:npc] run npcspawnat 679 85 -1358 frostcavern_flaregrunt

#Trevor dialogue before battle
execute as @s[x=672,y=84,z=-1299,dx=18,dy=6,dz=11,tag=!Dialogue96] run opendialogue trevor_dialogue96 @s
execute as @s[x=672,y=84,z=-1299,dx=18,dy=6,dz=11,tag=!Dialogue96] unless entity @e[x=676,y=85,z=-1361,dy=3,type=minecraft:interaction] positioned 676 85 -1361 run function kalos:spawn/npcboxes

#Skipped over Mamoswine riding until 1.7 introduces riding

#Anistar Sina at entrance to city
execute as @s[x=1187,y=107,z=-196,dx=16,dy=5,dz=17,tag=!Dialogue101] unless entity @e[x=1207,y=108,z=-188,dy=3,type=cobblemon:npc] run npcspawnat 1207 108 -188 sina_generic
execute as @s[x=1207,y=108,z=-188,distance=..6,tag=!Dialogue101] run opendialogue sina_dialogue101 @s

#Anistar Serena battle spawn
execute as @s[x=1303,y=107,z=-273,distance=..15,tag=!Dialogue103,scores={StarterPick=1}] unless entity @e[x=1325,y=108,z=-277,dy=3,type=cobblemon:npc] run npcspawnat 1325 108 -277 anistar_serena1
execute as @s[x=1303,y=107,z=-273,distance=..15,tag=!Dialogue103,scores={StarterPick=2}] unless entity @e[x=1325,y=108,z=-277,dy=3,type=cobblemon:npc] run npcspawnat 1325 108 -277 anistar_serena2
execute as @s[x=1303,y=107,z=-273,distance=..15,tag=!Dialogue103,scores={StarterPick=3}] unless entity @e[x=1325,y=108,z=-277,dy=3,type=cobblemon:npc] run npcspawnat 1325 108 -277 anistar_serena3

#Serena and Lysandre's call outside of Anistar Gym
execute as @s[x=1328,y=108,z=-281,distance=..20,tag=Olympia,tag=!Dialogue104] unless entity @e[x=1318,y=108,z=-278,dy=3,type=cobblemon:npc] run npcspawnat 1318 108 -278 serena_generic
execute as @s[x=1318,y=108,z=-278,distance=..6,tag=Olympia,tag=!Dialogue104] run opendialogue serena_dialogue104 @s

#Anistar spawns in two Team Flare grunts for hint
execute as @s[x=1328,y=108,z=-281,distance=..20,tag=Olympia,tag=!Dialogue133] unless entity @e[x=1353,y=108,z=-283,dy=3,type=cobblemon:npc] run npcspawnat 1353 108 -283 anistar_flaregrunt
execute as @s[x=1328,y=108,z=-281,distance=..20,tag=Olympia,tag=!Dialogue133] unless entity @e[x=1357,y=108,z=-283,dy=3,type=cobblemon:npc] run npcspawnat 1357 108 -283 anistar_flaregrunt2
execute as @s[x=1328,y=108,z=-281,distance=..20,tag=Dialogue133] run tp @e[x=1353,y=108,z=-283,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @s[x=1328,y=108,z=-281,distance=..20,tag=Dialogue133] run tp @e[x=1357,y=108,z=-283,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000

#Lumiose Lysandre Labs Hidden bookcase
execute as @s[x=-296,y=133,z=429,distance=..5,tag=Dialogue105,tag=Dialogue106] unless block -296 133 429 air run opendialogue lysandrelabs_dialogue107 @s

#Resets the bookcase if grunts are not beaten
execute as @s[x=-296,y=133,z=429,distance=..20,tag=!Dialogue107] if block -296 133 429 air run fill -292 133 429 -289 137 429 air
execute as @s[x=-296,y=133,z=429,distance=..20,tag=!Dialogue107] if block -296 133 429 air run fill -297 137 429 -294 137 429 minecraft:flower_pot
execute as @s[x=-296,y=133,z=429,distance=..20,tag=!Dialogue107] if block -296 133 429 air run fill -294 133 429 -297 136 429 minecraft:spruce_stairs[facing=north,half=top,shape=straight]


#Lysandre Labs sets up trainers
#Lysandre
execute as @a[x=-296,y=140,z=402,distance=..10,tag=!Dialogue109] unless entity @e[x=-296,y=141,z=393,dy=3,type=cobblemon:npc] run npcspawnat -296 141 393 lysandrelabs_lysandre


#Grunts
execute as @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=!ElevatorKey] unless entity @e[x=-321,y=141,z=382,dy=3,type=cobblemon:npc] run npcspawnat -321 141 382 lysandrelabs_grunt1
execute as @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=!ElevatorKey] unless entity @e[x=-333,y=141,z=336,dy=3,type=cobblemon:npc] run npcspawnat -333 141 336 lysandrelabs_grunt2
execute as @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=!ElevatorKey] unless entity @e[x=-318,y=141,z=356,dy=3,type=cobblemon:npc] run npcspawnat -318 141 356 lysandrelabs_grunt3
execute as @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=!ElevatorKey] unless entity @e[x=-301,y=141,z=346,dy=3,type=cobblemon:npc] run npcspawnat -301 141 346 lysandrelabs_grunt4
execute as @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=!ElevatorKey] unless entity @e[x=-254,y=141,z=340,dy=3,type=cobblemon:npc] run npcspawnat -254 141 340 lysandrelabs_grunt5
execute as @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=!ElevatorKey] unless entity @e[x=-256,y=141,z=397,dy=3,type=cobblemon:npc] run npcspawnat -256 141 397 lysandrelabs_grunt6
execute as @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=!ElevatorKey] unless entity @e[x=-275,y=141,z=364,dy=3,type=cobblemon:npc] run npcspawnat -275 141 364 lysandrelabs_grunt7
execute as @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=!ElevatorKey] unless entity @e[x=-233,y=141,z=325,dy=3,type=cobblemon:npc] run npcspawnat -233 141 325 lysandrelabs_grunt8
execute as @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=!ElevatorKey] unless entity @e[x=-355,y=141,z=330,dy=3,type=cobblemon:npc] run npcspawnat -355 141 330 lysandrelabs_aliana

#Scientists Celosia, Bryony, Mable
execute as @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=!Dialogue113] unless entity @e[x=-264,y=141,z=311,dy=3,type=cobblemon:npc] run npcspawnat -264 141 311 lysandrelabs_celosia
execute as @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=!Dialogue113] unless entity @e[x=-260,y=141,z=311,dy=3,type=cobblemon:npc] run npcspawnat -260 141 311 lysandrelabs_bryony
execute as @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=!Dialogue114] unless entity @e[x=-216,y=141,z=347,dy=3,type=cobblemon:npc] run npcspawnat -216 141 347 lysandrelabs_mable

#Celosia, Bryony post-battle dialogue
execute as @s[x=-262,y=141,z=311,distance=..15,tag=LabsCelosia,tag=LabsBryony,tag=!Dialogue113] run opendialogue celosiabryony_dialogue113 @s

#Sina and Dexio
execute as @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=!Dialogue110] unless entity @e[x=-327,y=141,z=302,dy=3,type=cobblemon:npc] run npcspawnat -327 141 302 hero_sina_generic
execute as @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=!Dialogue110] unless entity @e[x=-331,y=141,z=302,dy=3,type=cobblemon:npc] run npcspawnat -331 141 302 hero_dexio_generic
execute as @s[x=-329,y=141,z=302,distance=..7,tag=!Dialogue110] run opendialogue sinadexio_dialogue110 @s

#Az imprisoned starting dialogue
execute as @a[x=-376,y=110,z=396,dx=41,dy=10,dz=7,scores={DialogueTrigger=0},tag=!Dialogue116] unless entity @e[x=-386,y=111,z=390,dy=3,type=cobblemon:npc] run npcspawnat -386 111 390 az_generic
execute as @a[x=-376,y=110,z=396,dx=41,dy=10,dz=7,scores={DialogueTrigger=0},tag=!Dialogue116] unless entity @e[x=-388,y=111,z=394,dy=3,type=cobblemon:npc] run npcspawnat -388 111 394 lysandre_generic
execute as @s[x=-395,y=110,z=392,dx=18,dy=10,dz=11,scores={DialogueTrigger=0},tag=!Dialogue116] run opendialogue az_dialogue116a @s

#Lysandre and Xerosic in button room pre-battle
execute as @s[x=-311,y=110,z=390,distance=..20,tag=!Dialogue117] unless entity @e[x=-312,y=107,z=326,dy=3,type=cobblemon:npc] run npcspawnat -312 107 326 lysandre_generic
execute as @s[x=-311,y=110,z=390,distance=..20,tag=!Dialogue120] unless entity @e[x=-308,y=107,z=326,dy=3,type=cobblemon:npc] run npcspawnat -308 107 326 lysandrelabs_xerosic
execute as @s[x=-311,y=110,z=390,distance=..20,tag=!Dialogue117] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":101},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[x=-310,y=107,z=326,distance=..7,tag=!Dialogue117] run opendialogue lysandre_dialogue117 @s

#Ultimate Weapon Geosenge Serena pre-HQ 
execute as @s[x=-1255,y=109,z=1807,distance=..10,tag=!Dialogue121] run opendialogue serena_dialogue121 @s

#Lysandre and Serena in HQ lobby
execute as @s[x=-2336,y=66,z=-940,distance=..10,tag=!Dialogue123] unless entity @e[x=-2331,y=70,z=-980,dy=3,type=cobblemon:npc] run npcspawnat -2331 70 -980 serena_generic
execute as @s[x=-2336,y=66,z=-940,distance=..10,tag=!Dialogue123] unless entity @e[x=-2336,y=70,z=-990,dy=3,type=cobblemon:npc] run npcspawnat -2336 70 -990 flarehq_lysandre

#FlareHQ Serena and Shauna
execute as @s[x=-2471,y=78,z=-998,distance=..20,tag=!Dialogue126] unless entity @e[x=-2471,y=78,z=-998,dy=3,type=cobblemon:npc] run npcspawnat -2471 78 -998 serena_generic
execute as @a[x=-2478,y=76,z=-1005,dx=13,dy=5,dz=13,tag=!Dialogue126] run opendialogue serenashauna_dialogue126 @s

#Flare HQ Friends at the door
execute as @s[x=-2431,y=28,z=-944,distance=..20,tag=!Dialogue128] unless entity @e[x=-2431,y=28,z=-944,dy=3,type=cobblemon:npc] run npcspawnat -2431 28 -944 serena_generic
execute as @s[x=-2431,y=28,z=-944,distance=..20,tag=!Dialogue128] unless entity @e[x=-2434,y=28,z=-953,dy=3,type=cobblemon:npc] run npcspawnat -2434 28 -953 shauna_generic
execute as @a[x=-2436,y=27,z=-955,dx=17,dy=6,dz=17,tag=!Dialogue128] run opendialogue serenashauna_dialogue128 @s

#Sets up dormant legendary models
#47 xer
#48 yvel
#From upper level
execute as @s[x=2336,y=70,z=-978,distance=..10,scores={GameVersion=1},tag=!Dialogue131] unless entity @e[x=-2336,y=49,z=-1022,distance=..6,type=armor_stand] run summon minecraft:armor_stand -2336 49 -1022 {Invisible:true,Invulnerable:true,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":47}}],NoGravity:1b}
execute as @s[x=2336,y=70,z=-978,distance=..10,scores={GameVersion=2},tag=!Dialogue131] unless entity @e[x=-2336,y=49,z=-1022,distance=..6,type=armor_stand] run summon minecraft:armor_stand -2336 50.5 -1022 {Invisible:true,Invulnerable:true,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":48}}],NoGravity:1b}

#From lower level
execute as @s[x=-2336,y=42,z=-995,distance=..10,scores={GameVersion=1,DialogueTrigger=0},tag=!Dialogue131] unless entity @e[x=-2336,y=49,z=-1022,distance=..6,type=armor_stand] run summon minecraft:armor_stand -2336 49 -1022 {Invisible:true,Invulnerable:true,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":47}}],NoGravity:1b}
execute as @s[x=-2336,y=42,z=-995,distance=..10,scores={GameVersion=2,DialogueTrigger=0},tag=!Dialogue131] unless entity @e[x=-2336,y=49,z=-1022,distance=..6,type=armor_stand] run summon minecraft:armor_stand -2336 50.5 -1022 {Invisible:true,Invulnerable:true,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":48}}],NoGravity:1b}

#Flare HQ Chamber, sets up admins to battle
execute as @s[x=-2336,y=42,z=-995,distance=..10,tag=!Dialogue129] unless entity @e[x=-2333,y=42,z=-998,dy=3,type=cobblemon:npc] run npcspawnat -2333 42 -998 serena_generic
execute as @s[x=-2336,y=42,z=-995,distance=..10,tag=!Dialogue129] unless entity @e[x=-2339,y=42,z=-998,dy=3,type=cobblemon:npc] run npcspawnat -2339 42 -998 shauna_generic
execute as @a[x=-2336,y=41,z=-1011,distance=..14,scores={GameVersion=1},tag=!Dialogue129] run opendialogue flareadmins_x_dialogue129 @s
execute as @a[x=-2336,y=41,z=-1011,distance=..14,scores={GameVersion=2},tag=!Dialogue129] run opendialogue flareadmins_y_dialogue129 @s

#Flare HQ Chamber with all admins beaten
execute as @a[x=-2336,y=41,z=-1011,distance=..20,tag=Admin1,tag=Admin2,tag=Admin3,tag=Admin4,tag=!Dialogue130] run opendialogue flareadmins_dialogue130 @s

#Respawns admins needed if missing
execute as @s[x=-2336,y=41,z=-1011,distance=..20,tag=Dialogue129,tag=!Dialogue130] unless entity @e[x=-2342,y=42,z=-1007,dy=3,type=cobblemon:npc] run npcspawnat -2342 42 -1007 flarehq_admin4
execute as @s[x=-2336,y=41,z=-1011,distance=..20,tag=Dialogue129,tag=!Dialogue130] unless entity @e[x=-2336,y=42,z=-1012,dy=3,type=cobblemon:npc] run npcspawnat -2336 42 -1012 flarehq_admin5
execute as @s[x=-2336,y=41,z=-1011,distance=..20,tag=Dialogue129,tag=!Dialogue130] unless entity @e[x=-2336,y=42,z=-1007,dy=3,type=cobblemon:npc] run npcspawnat -2336 42 -1007 flarehq_admin6
execute as @s[x=-2336,y=41,z=-1011,distance=..20,tag=Dialogue129,tag=!Dialogue130] unless entity @e[x=-2330,y=42,z=-1007,dy=3,type=cobblemon:npc] run npcspawnat -2330 42 -1007 flarehq_admin7

#Prompts the player to activate the legendary Pokemon
execute as @a[x=-2336,y=42,z=-1016,distance=..4,tag=Dialogue130,tag=!Dialogue131,scores={DialogueTrigger=0}] run opendialogue legendary_activate_prompt @s

#Upon catching the legendary Pokemon activates Lysandre's last dialogue before battle
execute as @s[x=-2336,y=41,z=-1011,distance=..20,tag=Dialogue131,tag=!Dialogue132] run scoreboard players set @s Temp 0
execute as @s[x=-2336,y=41,z=-1011,distance=..20,tag=Dialogue131,tag=!Dialogue132,scores={GameVersion=1}] store success score @s Temp run teststore @s all xerneas
execute as @s[x=-2336,y=41,z=-1011,distance=..20,tag=Dialogue131,tag=!Dialogue132,scores={GameVersion=2}] store success score @s Temp run teststore @s all yveltal
execute as @s[x=-2336,y=41,z=-1011,distance=..20,tag=Dialogue131,tag=!Dialogue132,scores={Temp=1..}] run opendialogue lysandre_dialogue132 @s


#If player defeats the legendary Pokemon, leaving resets it.
execute as @s[x=-2436,y=27,z=-955,dx=17,dy=6,dz=17,tag=Dialogue131,tag=!Dialogue132] run scoreboard players set @s Temp 0
execute as @s[x=-2436,y=27,z=-955,dx=17,dy=6,dz=17,tag=Dialogue131,tag=!Dialogue132,scores={GameVersion=1}] store success score @s Temp run teststore @s all xerneas
execute as @s[x=-2436,y=27,z=-955,dx=17,dy=6,dz=17,tag=Dialogue131,tag=!Dialogue132,scores={GameVersion=2}] store success score @s Temp run teststore @s all yveltal
execute as @s[x=-2436,y=27,z=-955,dx=17,dy=6,dz=17,tag=Dialogue131,tag=!Dialogue132,scores={Temp=0}] unless entity @e[x=-2369,y=40,z=-1051,dx=65,dy=20,dz=65,type=cobblemon:pokemon] run tellraw @s {"text":"Legendary Pokemon has been reset! Catch it to continue the story!","italic":true,"color":"gray"}
execute as @s[x=-2436,y=27,z=-955,dx=17,dy=6,dz=17,tag=Dialogue131,tag=!Dialogue132,scores={Temp=0}] unless entity @e[x=-2369,y=40,z=-1051,dx=65,dy=20,dz=65,type=cobblemon:pokemon] run tag @s remove Dialogue131

#Lysandre final battle ending
execute as @s[x=-2336,y=42,z=-997,distance=..20,tag=LysandreDefeat,tag=!Dialogue133] run opendialogue lysandre_x_dialogue133 @s
execute as @s[x=-2336,y=42,z=-997,distance=..20,tag=LysandreDefeat,tag=!Dialogue133] run opendialogue lysandre_y_dialogue133 @s

#Destroyed Geosenge everybody
execute as @s[x=-410,y=109,z=2014,distance=..20,tag=!Dialogue134] unless entity @e[x=-415,y=109,z=2012,dy=3,type=cobblemon:npc] run npcspawnat -415 109 2012 hero_sina_generic
execute as @s[x=-410,y=109,z=2014,distance=..20,tag=!Dialogue134] unless entity @e[x=-417,y=109,z=2015,dy=3,type=cobblemon:npc] run npcspawnat -417 109 2015 hero_dexio_generic
execute as @s[x=-410,y=109,z=2014,distance=..20,tag=!Dialogue134] unless entity @e[x=-404,y=109,z=2018,dy=3,type=cobblemon:npc] run npcspawnat -404 109 2018 tierno_generic
execute as @s[x=-410,y=109,z=2014,distance=..20,tag=!Dialogue134] unless entity @e[x=-404,y=109,z=2015,dy=3,type=cobblemon:npc] run npcspawnat -404 109 2015 trevor_generic
execute as @s[x=-410,y=109,z=2014,distance=..20,tag=!Dialogue134] unless entity @e[x=-407,y=109,z=2019,dy=3,type=cobblemon:npc] run npcspawnat -407 109 2019 shauna_generic
execute as @s[x=-410,y=109,z=2014,distance=..20,tag=!Dialogue134] unless entity @e[x=-413,y=109,z=2020,dy=3,type=cobblemon:npc] run npcspawnat -413 109 2020 serena_generic
execute as @s[x=-410,y=109,z=2014,distance=..20,tag=!Dialogue134] run opendialogue friends_dialogue134 @s


#Couriway Sycamore Trainer Spawn
execute as @s[x=1501,y=101,z=271,distance=..10,tag=!Dialogue135] run opendialogue sycamore_dialogue135 @s
execute as @s[x=1501,y=101,z=271,distance=..10,tag=Dialogue135,tag=!Dialogue136] unless entity @e[x=1501,y=101,z=271,dy=3,type=cobblemon:npc] run npcspawnat 1501 101 271 couriway_sycamore

#Particles for Sycamore's Note
execute as @a[x=1568,y=119,z=163,distance=..45,tag=Dialogue136,tag=!SycamoresNote] run particle minecraft:firework 1568 119 163 0 2 0 0.1 0 normal @s

#Route 19 Shauna, Tierno and Trevor spawning on bridge
execute as @s[x=1488,y=99,z=492,distance=..10,tag=!Dialogue138,scores={StarterPick=1}] unless entity @e[x=1448,y=98,z=492,dy=3,type=cobblemon:npc] run npcspawnat 1448 98 492 route19_shauna1
execute as @s[x=1488,y=99,z=492,distance=..10,tag=!Dialogue138,scores={StarterPick=2}] unless entity @e[x=1448,y=98,z=492,dy=3,type=cobblemon:npc] run npcspawnat 1448 98 492 route19_shauna2
execute as @s[x=1488,y=99,z=492,distance=..10,tag=!Dialogue138,scores={StarterPick=3}] unless entity @e[x=1448,y=98,z=492,dy=3,type=cobblemon:npc] run npcspawnat 1448 98 492 route19_shauna3
execute as @s[x=1448,y=98,z=492,distance=..30,tag=Dialogue138,tag=!Dialogue140] unless entity @e[x=1451,y=98,z=494,dy=3,type=cobblemon:npc] run npcspawnat 1451 98 494 route19_tierno
execute as @s[x=1448,y=98,z=492,distance=..30,tag=Dialogue138,tag=!Dialogue140] unless entity @e[x=1451,y=98,z=490,dy=3,type=cobblemon:npc] run npcspawnat 1451 98 490 route19_trevor

#Pokemon Village Wulfric
execute as @s[x=951,y=93,z=664,distance=..20,tag=!Wulfric,tag=!Dialogue141] unless entity @e[x=951,y=93,z=664,dy=3,type=cobblemon:npc] run npcspawnat 951 93 664 wulfric_generic
execute as @s[x=951,y=93,z=664,distance=..7,tag=!Wulfric,tag=!Dialogue141] run opendialogue wulfric_dialogue141 @s

#Snowbelle Gym Guy after last badge
execute as @s[x=1144,y=95,z=497,distance=..7,tag=Wulfric,tag=!Dialogue143] run opendialogue gymguywulfric_dialogue143 @s

#Victory Road Gate Ace Trainer block
#Deletes or sets up if the player is ready to battle them with an npcbox
execute as @p[x=694,y=106,z=396,distance=..10,tag=Viola,tag=Grant,tag=Korrina,tag=Ramos,tag=Clemont,tag=Valerie,tag=Olympia,tag=Wulfric] run kill @e[x=694,y=106,z=396,dy=4,type=interaction]
execute as @p[x=694,y=106,z=396,distance=..10] unless entity @s[tag=Viola,tag=Grant,tag=Korrina,tag=Ramos,tag=Clemont,tag=Valerie,tag=Olympia,tag=Wulfric] positioned 694 106 396 run function kalos:spawn/npcboxes 

#Serena Victory Road spawn
execute as @s[x=2274,y=174,z=2175,dx=20,dy=10,dz=17,tag=!Dialogue147,scores={StarterPick=1}] unless entity @e[x=2294,y=175,z=2184,dy=3,type=cobblemon:npc] run npcspawnat 2294 175 2184 victoryroad_serena1
execute as @s[x=2274,y=174,z=2175,dx=20,dy=10,dz=17,tag=!Dialogue147,scores={StarterPick=2}] unless entity @e[x=2294,y=175,z=2184,dy=3,type=cobblemon:npc] run npcspawnat 2294 175 2184 victoryroad_serena2
execute as @s[x=2274,y=174,z=2175,dx=20,dy=10,dz=17,tag=!Dialogue147,scores={StarterPick=3}] unless entity @e[x=2294,y=175,z=2184,dy=3,type=cobblemon:npc] run npcspawnat 2294 175 2184 victoryroad_serena3

#Malva priopr to Elite Four
execute as @s[x=-1907,y=32,z=2117,distance=..20,tag=!Dialogue148] unless entity @e[x=-1907,y=33,z=2117,dy=3,type=cobblemon:npc] run npcspawnat -1907 33 2117 malva_generic
execute as @s[x=-1907,y=32,z=2117,distance=..7,tag=!Dialogue148] run opendialogue malva_dialogue148 @s

#Diantha Hall of Fame talk
execute as @s[x=-1998,y=8,z=1943,distance=..7,tag=!Dialogue152] run opendialogue diantha_dialogue152 @s

#Starts the parade dialogue opening
scoreboard players set @a[x=1467,y=104,z=-1982,distance=..20,scores={DialogueTrigger=0},tag=!Dialogue155] DialogueTrigger 155
scoreboard players set @a[x=1488,y=137,z=-1900,distance=..20,scores={DialogueTrigger=0},tag=!Dialogue155] DialogueTrigger 155

#Respawns AZ if missing 
execute as @s[x=1469,y=101,z=-1954,distance=..15,tag=Dialogue155,tag=!Dialogue156,scores={DialogueTrigger=0}] unless entity @e[x=1469,y=101,z=-1954,dy=3,type=cobblemon:npc] run npcspawnat 1469 101 -1954 lumiose_az

#Mom post-Pokemon League
execute as @s[x=493,y=107,z=1549,dx=18,dy=5,dz=19,tag=Dialogue1,tag=!Dialogue157,scores={PokemonLeague=1..}] run opendialogue mom_dialogue157 @s

#Shauna outside giving second starter
execute as @s[x=509,y=108,z=1586,distance=..15,tag=!Dialogue158,scores={PokemonLeague=1..}] unless entity @e[x=509,y=108,z=1586,dy=3,type=cobblemon:npc] run npcspawnat 509 108 1586 shauna_generic
execute as @s[x=509,y=108,z=1586,distance=..7,tag=!Dialogue158,scores={PokemonLeague=1..,StarterPick=1}] run opendialogue shauna_dialogue158a @s
execute as @s[x=509,y=108,z=1586,distance=..7,tag=!Dialogue158,scores={PokemonLeague=1..,StarterPick=2}] run opendialogue shauna_dialogue158b @s
execute as @s[x=509,y=108,z=1586,distance=..7,tag=!Dialogue158,scores={PokemonLeague=1..,StarterPick=3}] run opendialogue shauna_dialogue158c @s

#Lumiose Sina and Dexio post-game
execute as @s[x=1017,y=105,z=1908,distance=..7,tag=!Dialogue159] run opendialogue sinadexio_dialogue159 @s

#Sycamore at the train station
execute as @s[x=1017,y=105,z=1908,distance=..20,tag=!Dialogue160,scores={PokemonLeague=1..}] unless entity @e[x=1029,y=105,z=1893,dy=3,type=cobblemon:npc] run npcspawnat 1029 105 1893 sycamore_generic
execute as @s[x=1029,y=105,z=1893,distance=..6,tag=!Dialogue160] run opendialogue sycamore_dialogue160 @s

#Kiloude City spawns Serena
execute as @s[x=1221,y=119,z=1497,distance=..20,tag=!Dialogue161,scores={StarterPick=1}] unless entity @e[x=1229,y=119,z=1461,dy=3,type=cobblemon:npc] run npcspawnat 1229 119 1461 kiloude_serena1
execute as @s[x=1221,y=119,z=1497,distance=..20,tag=!Dialogue161,scores={StarterPick=2}] unless entity @e[x=1229,y=119,z=1461,dy=3,type=cobblemon:npc] run npcspawnat 1229 119 1461 kiloude_serena2
execute as @s[x=1221,y=119,z=1497,distance=..20,tag=!Dialogue161,scores={StarterPick=3}] unless entity @e[x=1229,y=119,z=1461,dy=3,type=cobblemon:npc] run npcspawnat 1229 119 1461 kiloude_serena3

#Sets up Sycamore NPC in Anistar
execute as @s[x=1254,y=107,z=-244,distance=..20,tag=Dialogue162,tag=!Dialogue163] unless entity @e[x=1179,y=110,z=-276,dy=3,type=cobblemon:npc] run npcspawnat 1179 110 -276 anistar_sycamore
execute as @s[x=1254,y=107,z=-307,distance=..20,tag=Dialogue162,tag=!Dialogue163] unless entity @e[x=1179,y=110,z=-276,dy=3,type=cobblemon:npc] run npcspawnat 1179 110 -276 anistar_sycamore

#Diantha giving Ralts post-game
execute as @s[x=-492,y=101,z=261,distance=..10,scores={PokemonLeague=1..},tag=!Dialogue164] unless entity @e[x=-495,y=101,z=256,dy=3,type=cobblemon:npc] run npcspawnat -495 101 256 lumiose_diantha





#Battle Chateau Introduction
execute as @s[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,tag=!Dialogue166,scores={Gender=1..}] unless entity @e[x=-1534,y=65,z=-65,dy=3,type=cobblemon:npc] run npcspawnat -1534 65 -65 viola_generic
execute as @s[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,tag=!Dialogue166,scores={Gender=1..}] unless entity @e[x=-1531,y=65,z=-65,dy=3,type=cobblemon:npc] run npcspawnat -1531 65 -65 butler_generic
execute as @s[x=-1532,y=65,z=-65,distance=..5,tag=!Dialogue166,scores={Gender=1}] run opendialogue chateau_intro1 @s
execute as @s[x=-1532,y=65,z=-65,distance=..5,tag=!Dialogue166,scores={Gender=2}] run opendialogue chateau_intro2 @s





#Swaps out Looker Bureau sign outside
execute if entity @p[x=-188,y=101,z=-639,distance=..50,tag=Call13] run data merge entity @e[x=-188,y=101,z=-639,distance=..3,type=armor_stand,limit=1] {CustomName:'"Looker Bureau"'}
execute if entity @p[x=-188,y=101,z=-639,distance=..50,tag=!Call13] run data merge entity @e[x=-188,y=101,z=-639,distance=..3,type=armor_stand,limit=1] {CustomName:'"Vacant"'}

#Looker First Dialogue after answering call
execute as @s[x=-176,y=101,z=387,distance=..15,tag=Call13,tag=!Dialogue175] unless entity @e[x=-176,y=101,z=387,dy=3,type=cobblemon:npc] run npcspawnat -176 101 387 looker_dialogue173
execute as @s[x=-176,y=101,z=387,distance=..15,tag=Dialogue175] run tp @e[x=-176,y=101,z=387,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000


#Looker Ticket Particles
execute as @s[x=-25,y=77,z=348,distance=..30,tag=Dialogue173,tag=!TicketMuseum] run particle minecraft:firework -25 77 348 1 2 1 0.1 2 normal @a[tag=!TicketMuseum]
execute as @s[x=-433,y=101,z=335,distance=..30,tag=Dialogue173,tag=!TicketHotel] run particle minecraft:firework -433 101 335 1 2 1 0.1 2 normal @a[tag=!TicketHotel]
execute as @s[x=-286,y=101,z=217,distance=..30,tag=Dialogue173,tag=!TicketHerb] run particle minecraft:firework -286 101 217 1 2 1 0.1 2 normal @a[tag=!TicketHerb]
execute as @s[x=-1833,y=100,z=-1694,distance=..30,tag=Dialogue173,tag=!TicketGym] run particle minecraft:firework -1833 100 -1694 1 2 1 0.1 2 normal @a[tag=!TicketGym]
execute as @s[x=-439,y=101,z=439,distance=..30,tag=Dialogue173,tag=!TicketCenter] run particle minecraft:firework -439 101 439 1 2 1 0.1 2 normal @a[tag=!TicketCenter]

#Looker after finding all tickets
execute as @s[x=-176,y=101,z=387,distance=..6,scores={LookerTickets=5..},tag=!Dialogue175] run opendialogue looker_dialogue175 @s

#Looker discovering Emma


#TPs in Alley Trainers
execute as @s[x=-378,y=101,z=-275,distance=..6,tag=Dialogue176,tag=!Dialogue177] run opendialogue emma_dialogue176 @s

execute as @s[x=-373,y=101,z=-307,distance=..40,tag=Dialogue176,tag=!Dialogue177] unless entity @e[x=-375,y=101,z=-299,dy=3,type=cobblemon:npc] run npcspawnat -375 101 -299 alleys_natalie
execute as @s[x=-373,y=101,z=-307,distance=..40,tag=Dialogue176,tag=!Dialogue177] unless entity @e[x=-369,y=101,z=-297,dy=3,type=cobblemon:npc] run npcspawnat -369 101 -297 alleys_lily
execute as @s[x=-373,y=101,z=-307,distance=..40,tag=Dialogue176,tag=!Dialogue177] unless entity @e[x=-372,y=101,z=-291,dy=3,type=cobblemon:npc] run npcspawnat -372 101 -291 alleys_callie
execute as @s[x=-373,y=101,z=-307,distance=..40,tag=Dialogue176,tag=!Dialogue177] unless entity @e[x=-366,y=101,z=-288,dy=3,type=cobblemon:npc] run npcspawnat -366 101 -288 alleys_macon

#Finding Mimi in the alleyway
execute as @s[x=-405,y=101,z=-370,distance=..20,tag=Dialogue177,tag=!Dialogue178] unless entity @e[x=-428,y=101,z=-363,dy=3,type=cobblemon:pokemon] run pokespawnat -428 101 -363 espurr level=30 uncatchable=yes no_ai=yes
execute as @s[x=-428,y=101,z=-363,distance=..6,tag=Dialogue177,tag=!Dialogue178] run opendialogue mimi_dialogue178 @s


#Looker pre-chapter 3, asking about Emma
execute as @s[x=-151,y=101,z=382,distance=..15,tag=Call15,tag=!Dialogue181] unless entity @e[x=-151,y=101,z=382,dy=3,type=cobblemon:npc] run npcspawnat -151 101 382 looker_generic
execute as @s[x=-151,y=101,z=382,distance=..6,tag=Call15,tag=!Dialogue181] run opendialogue looker_dialogue181 @s

#Chapter 3 beginning, following question
execute as @s[x=-161,y=100,z=375,dx=19,dy=15,dz=23,scores={Cooldown=2000..},tag=Dialogue181,tag=!Dialogue182] run opendialogue tourist_dialogue182 @s

#Lumiose Station Punk Trainers
execute as @s[x=1103,y=105,z=2007,distance=..50,tag=!Dialogue183] unless entity @e[x=1119,y=105,z=2007,dy=3,type=cobblemon:npc] run npcspawnat 1119 105 2007 looker_generic
execute as @s[x=1103,y=105,z=2007,distance=..50,tag=!Dialogue183] unless entity @e[x=1124,y=105,z=2003,dy=3,type=cobblemon:npc] run npcspawnat 1124 105 2003 station_eris
execute as @s[x=1103,y=105,z=2007,distance=..50,tag=!Dialogue183] unless entity @e[x=1130,y=105,z=2009,dy=3,type=cobblemon:npc] run npcspawnat 1130 105 2009 station_nix
execute as @s[x=1103,y=105,z=2007,distance=..50,tag=!Dialogue183] unless entity @e[x=1131,y=105,z=2005,dy=3,type=cobblemon:npc] run npcspawnat 1131 105 2005 station_sedna
execute as @s[x=1119,y=105,z=2007,distance=..10,tag=!Dialogue183] run opendialogue punks_dialogue183 @s

#Post-battle of all three trainers
execute as @s[x=1130,y=105,z=2009,distance=..50,tag=StationPunks1,tag=StationPunks2,tag=StationPunks3] run opendialogue emma_dialogue184 @s




#-----------------------------------------------------------
#Sets up legendary Pokemon

#Activates roaming bird encounters once daily (resets at midnight) until player can find them in the den
execute as @s[scores={StarterPick=1,PokemonLeague=1..,Articuno=..4},tag=!Dialogue167] at @s if block ~ ~ ~ minecraft:short_grass run scoreboard players set @s DialogueTrigger 167
execute as @s[scores={StarterPick=2,PokemonLeague=1..,Zapdos=..4},tag=!Dialogue167] at @s if block ~ ~ ~ minecraft:short_grass run scoreboard players set @s DialogueTrigger 167
execute as @s[scores={StarterPick=3,PokemonLeague=1..,Moltres=..4},tag=!Dialogue167] at @s if block ~ ~ ~ minecraft:short_grass run scoreboard players set @s DialogueTrigger 167


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





#Holo Calls

#Call 2 - Tierno Holo Call leaving city
#Runs ringer sound effect and message
execute as @s[x=-372,y=101,z=-124,distance=..20,tag=Dialogue22,tag=!Call2] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run playsound minecraft:block.note_block.chime ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-372,y=101,z=-124,distance=..20,tag=Dialogue22,tag=!Call2] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run title @s actionbar {"text":"Incoming call... Select Holo Caster to answer!"}

#Opens dialogue when player selects the Caster
execute as @s[x=-372,y=101,z=-124,distance=..20,tag=Dialogue22,tag=!Call2,nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run opendialogue tierno_call2 @s


#Call 3 - Sycamore approaching Shalour
execute as @s[x=-1972,y=113,z=-666,distance=..15,tag=Dialogue22,tag=!Call3] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run playsound minecraft:block.note_block.chime ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1972,y=113,z=-666,distance=..15,tag=Dialogue22,tag=!Call3] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run title @s actionbar {"text":"Incoming call... Select Holo Caster to answer!"}

execute as @s[x=-1972,y=113,z=-666,distance=..15,tag=Dialogue22,tag=!Call3,nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run opendialogue sycamore_call3 @s


#Call 4 - Serena Courmarine battle prep
execute as @s[x=-1189,y=79,z=-812,dx=13,dy=10,dz=18,tag=!Call4] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run playsound minecraft:block.note_block.chime ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1189,y=79,z=-812,dx=13,dy=10,dz=18,tag=!Call4] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run title @s actionbar {"text":"Incoming call... Select Holo Caster to answer!"}

execute as @s[x=-1189,y=79,z=-812,dx=13,dy=10,dz=18,tag=!Call4,nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run opendialogue serena_call4 @s


#Call 5 - Lysandre after gym battle
execute as @s[x=-1077,y=115,z=-615,distance=..20,tag=Ramos,tag=!Call5] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run playsound minecraft:block.note_block.chime ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1077,y=115,z=-615,distance=..20,tag=Ramos,tag=!Call5] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run title @s actionbar {"text":"Incoming call... Select Holo Caster to answer!"}

execute as @s[x=-1077,y=115,z=-615,distance=..20,tag=Ramos,tag=!Call5,nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run opendialogue lysandre_call5 @s


#Call 6 - Sycamore post-Clemont battle
execute as @s[x=-181,y=101,z=-390,distance=..51,tag=Clemont,tag=!Call6] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run playsound minecraft:block.note_block.chime ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-181,y=101,z=-390,distance=..51,tag=Clemont,tag=!Call6] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run title @s actionbar {"text":"Incoming call... Select Holo Caster to answer!"}

execute as @s[x=-181,y=101,z=-390,distance=..51,tag=Clemont,tag=!Call6,nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run opendialogue sycamore_call6 @s


#Call 7 - Trevor post-Lysandre talk
execute as @s[x=-296,y=101,z=-478,distance=..20,tag=Dialogue79,tag=!Call7] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run playsound minecraft:block.note_block.chime ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-296,y=101,z=-478,distance=..20,tag=Dialogue79,tag=!Call7] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run title @s actionbar {"text":"Incoming call... Select Holo Caster to answer!"}

execute as @s[x=-296,y=101,z=-478,distance=..20,tag=Dialogue79,tag=!Call7,nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run opendialogue trevor_call7 @s


#Call 8 - Malva Newscast after Poke Ball Factory
execute as @s[x=-154,y=125,z=-1763,distance=..20,tag=Dialogue90,tag=!Call8] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run playsound minecraft:block.note_block.chime ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-154,y=125,z=-1763,distance=..20,tag=Dialogue90,tag=!Call8] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run title @s actionbar {"text":"Incoming call... Select Holo Caster to answer!"}

execute as @s[x=-154,y=125,z=-1763,distance=..20,tag=Dialogue90,tag=!Call8,nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run opendialogue malva_call8 @s


#Call 9 - Lysandre second call
execute as @s[x=522,y=108,z=-475,distance=..20,tag=!Call9] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run playsound minecraft:block.note_block.chime ambient @s ~ ~ ~ 1 1 1
execute as @s[x=522,y=108,z=-475,distance=..20,tag=!Call9] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run title @s actionbar {"text":"Incoming call... Select Holo Caster to answer!"}

execute as @s[x=522,y=108,z=-475,distance=..20,tag=!Call9,nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run opendialogue lysandre_call9 @s


#Call 10 - Serena Anistar battle prep
execute as @s[x=1056,y=108,z=-191,distance=..20,tag=!Call10] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run playsound minecraft:block.note_block.chime ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1056,y=108,z=-191,distance=..20,tag=!Call10] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run title @s actionbar {"text":"Incoming call... Select Holo Caster to answer!"}

execute as @s[x=1056,y=108,z=-191,distance=..20,tag=!Call10,nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run opendialogue serena_call10 @s


#Call 12 - Sycamore post-Clemont battle
execute as @s[x=1349,y=108,z=-173,distance=..20,tag=Dialogue134,tag=!Call12] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run playsound minecraft:block.note_block.chime ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1349,y=108,z=-173,distance=..20,tag=Dialogue134,tag=!Call12] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run title @s actionbar {"text":"Incoming call... Select Holo Caster to answer!"}

execute as @s[x=1349,y=108,z=-173,distance=..20,tag=Dialogue134,tag=!Call12,nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run opendialogue sycamore_call12 @s


#Call 13 - Looker post-game
execute as @s[x=-181,y=101,z=-390,distance=..395,tag=!Call13,scores={PokemonLeague=1..}] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run playsound minecraft:block.note_block.chime ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-181,y=101,z=-390,distance=..395,tag=!Call13,scores={PokemonLeague=1..}] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run title @s actionbar {"text":"Incoming call... Select Holo Caster to answer!"}

execute as @s[x=-181,y=101,z=-390,distance=..395,tag=!Call13,scores={PokemonLeague=1..},nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run opendialogue looker_call13 @s


#Call 14 - Looker the following day of Chapter 1
execute as @s[x=-181,y=101,z=-390,distance=..395,tag=!Call14,tag=!LookerCooldown,tag=Dialogue175] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run playsound minecraft:block.note_block.chime ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-181,y=101,z=-390,distance=..395,tag=!Call14,tag=!LookerCooldown,tag=Dialogue175] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run title @s actionbar {"text":"Incoming call... Select Holo Caster to answer!"}

execute as @s[x=-181,y=101,z=-390,distance=..395,tag=!Call14,tag=!LookerCooldown,tag=Dialogue175,nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run opendialogue looker_call14 @s


#Call 15 - Looker prior to Chapter 3
execute as @s[x=-181,y=101,z=-390,distance=..395,tag=!Call15,tag=!LookerCooldown,tag=Dialogue178] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run playsound minecraft:block.note_block.chime ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-181,y=101,z=-390,distance=..395,tag=!Call15,tag=!LookerCooldown,tag=Dialogue178] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run title @s actionbar {"text":"Incoming call... Select Holo Caster to answer!"}

execute as @s[x=-181,y=101,z=-390,distance=..395,tag=!Call15,tag=!LookerCooldown,tag=Dialogue178,nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}}] run opendialogue looker_call15 @s





#Battle Maison Traienr Respawns
execute as @a[x=1220,y=75,z=1545,distance=..7,scores={BattleMaison=1}] unless entity @e[x=1217,y=75,z=1545,dy=3,type=cobblemon:npc] run npcspawnat 1217 75 1545 battlemaison_single
execute as @a[x=1220,y=75,z=1545,distance=..7,scores={BattleMaison=2,BattleStreak=..10}] unless entity @e[x=1217,y=75,z=1545,dy=3,type=cobblemon:npc] run npcspawnat 1217 75 1545 battlemaison_single_super1
execute as @a[x=1220,y=75,z=1545,distance=..7,scores={BattleMaison=2,BattleStreak=11..19}] unless entity @e[x=1217,y=75,z=1545,dy=3,type=cobblemon:npc] run npcspawnat 1217 75 1545 battlemaison_single_super2
execute as @a[x=1220,y=75,z=1545,distance=..7,scores={BattleMaison=2,BattleStreak=20..}] unless entity @e[x=1217,y=75,z=1545,dy=3,type=cobblemon:npc] run npcspawnat 1217 75 1545 battlemaison_single_super3
#execute as @a[x=1220,y=75,z=1545,distance=..7,scores={BattleMaison=1}] unless entity @e[x=1217,y=75,z=1545,dy=3,type=cobblemon:npc] run npcspawnat 1217 75 1545 battlemaison_single
#execute as @a[x=1220,y=75,z=1545,distance=..7,scores={BattleMaison=1}] unless entity @e[x=1217,y=75,z=1545,dy=3,type=cobblemon:npc] run npcspawnat 1217 75 1545 battlemaison_single








#