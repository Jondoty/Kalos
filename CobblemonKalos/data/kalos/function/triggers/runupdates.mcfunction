#Runs updates between minor versions, allowing players to only update their datapacks.



#1.0.1 to 1.1
#Adds TM blocks
execute if entity @a[x=-897,y=102,z=-151,distance=..75] if block -897 102 -151 air positioned -897 102 -151 run function kalos:spawn/tmloot
execute if entity @a[x=-1223,y=100,z=-165,distance=..75] if block -1223 100 -165 air positioned -1223 100 -165 run function kalos:spawn/tmloot
execute if entity @a[x=-1827,y=48,z=-21,distance=..75] if block -1827 48 -21 air positioned -1827 48 -21 run function kalos:spawn/tmloot
execute if entity @a[x=-2073,y=104,z=-364,distance=..75] if block -2073 104 -364 air positioned -2073 104 -364 run function kalos:spawn/tmloot
execute if entity @a[x=-2036,y=104,z=-708,distance=..75] if block -2036 104 -708 air positioned -2036 104 -708 run function kalos:spawn/tmloot
execute if entity @a[x=-1706,y=2,z=-366,distance=..75] if block -1706 2 -366 air positioned -1706 2 -366 run function kalos:spawn/tmloot




#New entities
execute if entity @a[x=-353,y=141,z=356,distance=..50] unless entity @e[x=-353,y=141,z=356,dy=4] run npcspawnat -353 141 356 lysandre_cafe_teamflaregruntm
execute if entity @a[x=-114,y=77,z=346,distance=..50] unless entity @e[x=-114,y=77,z=346,dy=4] run npcspawnat -114 77 346 lumiosemuseum_acetrainerm
execute if entity @a[x=-1121,y=84,z=-849,distance=..50] unless entity @e[x=-1121,y=84,z=-849,dy=4] run npcspawnat -1121 84 -849 veteran_generic
execute if entity @a[x=-1121,y=84,z=-849,distance=..50] unless entity @e[x=-1121,y=84,z=-849,distance=..4,type=interaction] positioned -1121 84 -849 run function kalos:spawn/npcboxes













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