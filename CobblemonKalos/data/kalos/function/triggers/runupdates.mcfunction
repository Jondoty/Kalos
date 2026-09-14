#Runs updates between minor versions, allowing players to only update their datapacks.



#1.0.1 to 1.1
#Adds TM blocks
execute if entity @a[x=-897,y=102,z=-151,distance=..75] if block -897 102 -151 air positioned -897 102 -151 run function kalos:spawn/tmloot
execute if entity @a[x=-1223,y=100,z=-165,distance=..75] if block -1223 100 -165 air positioned -1223 100 -165 run function kalos:spawn/tmloot
execute if entity @a[x=-1827,y=48,z=-21,distance=..75] if block -1827 48 -21 air positioned -1827 48 -21 run function kalos:spawn/tmloot
execute if entity @a[x=-2073,y=104,z=-364,distance=..75] if block -2073 104 -364 air positioned -2073 104 -364 run function kalos:spawn/tmloot
execute if entity @a[x=-2036,y=104,z=-708,distance=..75] if block -2036 104 -708 air positioned -2036 104 -708 run function kalos:spawn/tmloot
execute if entity @a[x=-1706,y=2,z=-366,distance=..75] if block -1706 2 -366 air positioned -1706 2 -366 run function kalos:spawn/tmloot
execute if entity @a[x=-79,y=100,z=-1154,distance=..75] if block -79 100 -1154 air positioned -79 100 -1154 run function kalos:spawn/tmloot
execute if entity @a[x=455,y=108,z=-431,distance=..75] if block 455 108 -431 air positioned 455 108 -431 run function kalos:spawn/tmloot
execute if entity @a[x=489,y=92,z=-486,distance=..75] if block 489 92 -486 air positioned 489 92 -486 run function kalos:spawn/tmloot
execute if entity @a[x=856,y=109,z=-619,distance=..75] if block 856 109 -619 air positioned 856 109 -619 run function kalos:spawn/tmloot
execute if entity @a[x=822,y=85,z=-1028,distance=..75] if block 822 85 -1028 air positioned 822 85 -1028 run function kalos:spawn/tmloot
execute if entity @a[x=1623,y=70,z=42,distance=..75] if block 1623 70 42 air positioned 1623 70 42 run function kalos:spawn/tmloot
execute if entity @a[x=1619,y=125,z=298,distance=..75] if block 1619 125 298 air positioned 1619 125 298 run function kalos:spawn/tmloot
execute if entity @a[x=1480,y=100,z=408,distance=..75] if block 1480 100 408 air positioned 1480 100 408 run function kalos:spawn/tmloot
execute if entity @a[x=1417,y=100,z=992,distance=..75] if block 1417 100 992 air positioned 1417 100 992 run function kalos:spawn/tmloot
execute if entity @a[x=721,y=100,z=612,distance=..75] if block 721 100 612 air positioned 721 100 612 run function kalos:spawn/tmloot
execute if entity @a[x=822,y=100,z=499,distance=..75] if block 822 100 499 air positioned 822 100 499 run function kalos:spawn/tmloot
execute if entity @a[x=596,y=91,z=542,distance=..75] if block 596 91 542 air positioned 596 91 542 run function kalos:spawn/tmloot
execute if entity @a[x=2040,y=175,z=2377,distance=..75] if block 2040 175 2377 air positioned 2040 175 2377 run function kalos:spawn/tmloot
execute if entity @a[x=1758,y=190,z=2172,distance=..75] if block 1758 190 2172 air positioned 1758 190 2172 run function kalos:spawn/tmloot




#New entities
execute if entity @a[x=-353,y=141,z=356,distance=..50] unless entity @e[x=-353,y=141,z=356,dy=4] run npcspawnat -353 141 356 lysandre_cafe_teamflaregruntm
execute if entity @a[x=-114,y=77,z=346,distance=..50] unless entity @e[x=-114,y=77,z=346,dy=4] run npcspawnat -114 77 346 lumiosemuseum_acetrainerm
execute if entity @a[x=-1121,y=84,z=-849,distance=..50] unless entity @e[x=-1121,y=84,z=-849,dy=4] run npcspawnat -1121 84 -849 veteran_generic
execute if entity @a[x=-1121,y=84,z=-849,distance=..50] unless entity @e[x=-1121,y=84,z=-849,distance=..4,type=interaction] positioned -1121 84 -849 run function kalos:spawn/npcboxes
execute if entity @a[x=-161,y=99,z=-1220,distance=..50] unless entity @e[x=-161,y=99,z=-1220,dy=4] run npcspawnat -161 99 -1220 route14_hexmaniac
execute if entity @a[x=1196,y=50,z=432,distance=..50] unless entity @e[x=1196,y=50,z=432,dy=4] run npcspawnat 1196 50 432 snowbelle_battlegirl
execute if entity @a[x=1246,y=80,z=1648,distance=..50] unless entity @e[x=1246,y=80,z=1648,dy=4] run npcspawnat 1196 50 432 kiloude_scientist
execute if entity @a[x=1136,y=91,z=1526,distance=..50] unless entity @e[x=1136,y=91,z=1526,dy=4] run npcspawnat 1136 91 1526 kiloude_littlegirl













#1.0.0 to 1.0.1
execute if entity @p[x=-246,y=111,z=93,distance=..50] if block -246 111 93 air run setblock -244 111 93 mega_showdown:rotom_fridge[facing=south]
execute if entity @p[x=-246,y=111,z=93,distance=..50] if block -246 111 93 air run setblock -243 111 93 mega_showdown:rotom_fan[facing=west]
execute if entity @p[x=-246,y=111,z=93,distance=..50] if block -246 111 93 air run setblock -242 111 93 mega_showdown:rotom_oven[facing=south]
execute if entity @p[x=-246,y=111,z=93,distance=..50] if block -246 111 93 air run setblock -240 111 93 mega_showdown:rotom_washing_machine[facing=south]
execute if entity @p[x=-246,y=111,z=93,distance=..50] if block -246 111 93 air run execute positioned -245 111 93 run function kalos:spawn/itemloot
execute if entity @p[x=-246,y=111,z=93,distance=..50] if block -246 111 93 air run setblock -246 111 93 mega_showdown:rotom_mow[facing=south]


#Route 22 Tanga Berry
execute if entity @a[x=625,y=91,z=571,distance=..50] unless entity @e[x=625,y=91,z=571,distance=..3,type=interaction] positioned 625 91 571 run function kalos:spawn/berrytree




#