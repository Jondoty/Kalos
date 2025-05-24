#Transforms Cut Trees from not cut and inaccessable to cut down

#Route 3
execute as @s[x=355,y=94,z=559,distance=..20] run fill 355 94 555 355 97 564 air
execute as @s[x=355,y=94,z=559,distance=..20] at @e[x=355,y=94,z=559,distance=..10,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=355,y=94,z=559,distance=..20] as @e[x=355,y=94,z=559,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=355,y=94,z=559,distance=..20] run kill @e[x=355,y=94,z=559,distance=..10,tag=CutTree,type=interaction]

#Route 5
execute as @s[x=-894,y=100,z=-44,distance=..20] run fill -894 100 -45 -894 103 -43 air
execute as @s[x=-894,y=100,z=-44,distance=..20] at @e[x=-894,y=100,z=-44,distance=..3,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=-894,y=100,z=-44,distance=..20] as @e[x=-894,y=100,z=-44,distance=..3,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=-894,y=100,z=-44,distance=..20] run kill @e[x=-894,y=100,z=-44,distance=..3,tag=CutTree,type=interaction]

#Route 5
execute as @s[x=-894,y=100,z=-62,distance=..20] run fill -894 100 -63 -894 103 -61 air
execute as @s[x=-894,y=100,z=-62,distance=..20] at @e[x=-894,y=100,z=-62,distance=..3,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=-894,y=100,z=-62,distance=..20] as @e[x=-894,y=100,z=-62,distance=..3,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=-894,y=100,z=-62,distance=..20] run kill @e[x=-894,y=100,z=-62,distance=..3,tag=CutTree,type=interaction]

#Route 7
execute as @s[x=-1671,y=109,z=3,distance=..20] run fill -1673 109 3 -1669 112 3 air
execute as @s[x=-1671,y=109,z=3,distance=..20] at @e[x=-1671,y=109,z=3,distance=..10,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=-1671,y=109,z=3,distance=..20] as @e[x=-1671,y=109,z=3,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=-1671,y=109,z=3,distance=..20] run kill @e[x=-1671,y=109,z=3,distance=..10,tag=CutTree,type=interaction]

#Route 11
execute as @s[x=-1988,y=113,z=-668,distance=..20] run fill -1988 113 -664 -1988 115 -671 air
execute as @s[x=-1988,y=113,z=-668,distance=..20] at @e[x=-1988,y=113,z=-668,distance=..10,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=-1988,y=113,z=-668,distance=..20] as @e[x=-1988,y=113,z=-668,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=-1988,y=113,z=-668,distance=..20] run kill @e[x=-1988,y=113,z=-668,distance=..10,tag=CutTree,type=interaction]

#Route 12
execute as @s[x=-1453,y=80,z=-790,distance=..20] run fill -1453 80 -788 -1453 83 -791 air
execute as @s[x=-1453,y=80,z=-790,distance=..20] at @e[x=-1453,y=80,z=-790,distance=..10,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=-1453,y=80,z=-790,distance=..20] as @e[x=-1453,y=80,z=-790,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=-1453,y=80,z=-790,distance=..20] run kill @e[x=-1453,y=80,z=-790,distance=..10,tag=CutTree,type=interaction]

#Route 12
execute as @s[x=-1366,y=80,z=-754,distance=..20] run fill -1366 80 -755 -1366 83 -751 air
execute as @s[x=-1366,y=80,z=-754,distance=..20] at @e[x=-1366,y=80,z=-754,distance=..10,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=-1366,y=80,z=-754,distance=..20] as @e[x=-1366,y=80,z=-754,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=-1366,y=80,z=-754,distance=..20] run kill @e[x=-1366,y=80,z=-754,distance=..10,tag=CutTree,type=interaction]

#Route 16
execute as @s[x=383,y=104,z=-328,distance=..20] run fill 383 104 -330 383 107 -325 air
execute as @s[x=383,y=104,z=-328,distance=..20] at @e[x=383,y=104,z=-328,distance=..10,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=383,y=104,z=-328,distance=..20] as @e[x=383,y=104,z=-328,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=383,y=104,z=-328,distance=..20] run kill @e[x=383,y=104,z=-328,distance=..10,tag=CutTree,type=interaction]

#Route 18
execute as @s[x=1408,y=108,z=-56,distance=..20] run fill 1405 108 -56 1411 110 -56 air
execute as @s[x=1408,y=108,z=-56,distance=..20] at @e[x=1408,y=108,z=-56,distance=..10,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=1408,y=108,z=-56,distance=..20] as @e[x=1408,y=108,z=-56,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=1408,y=108,z=-56,distance=..20] run kill @e[x=1408,y=108,z=-56,distance=..10,tag=CutTree,type=interaction]

#Route 22
execute as @s[x=389,y=100,z=328,distance=..20] run fill 389 100 323 389 102 331 air
execute as @s[x=389,y=100,z=328,distance=..20] at @e[x=389,y=100,z=328,distance=..10,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=389,y=100,z=328,distance=..20] as @e[x=389,y=100,z=328,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=389,y=100,z=328,distance=..20] run kill @e[x=389,y=100,z=328,distance=..10,tag=CutTree,type=interaction]



#