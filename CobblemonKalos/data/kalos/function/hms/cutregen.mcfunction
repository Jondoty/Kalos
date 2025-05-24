#When a player wanders away, regenerates the cut trees

#Route 3
execute as @a[x=355,y=94,z=559,distance=30..150] run fill 355 94 555 355 97 564 barrier
execute as @a[x=355,y=94,z=559,distance=30..150] as @e[x=355,y=94,z=559,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"nether_gold_ore",Count:1}]}
execute as @a[x=355,y=94,z=559,distance=30..150] as @e[x=355,y=94,z=559,distance=..10,type=minecraft:armor_stand,tag=CutTree] at @s run summon minecraft:interaction ~ ~ ~ {width:1.5,height:1.5,response:1,Tags:[CutTree]}
execute as @a[x=355,y=94,z=559,distance=30..150] as @e[x=355,y=94,z=559,distance=..10,type=minecraft:armor_stand,tag=CutTree] at @s run summon minecraft:interaction ~ ~1 ~ {width:1.5,height:1.5,response:1,Tags:[CutTree]}

#Route 5
execute as @a[x=-894,y=100,z=-44,distance=30..150] run fill -894 100 -45 -894 103 -43 barrier
execute as @a[x=-894,y=100,z=-44,distance=30..150] as @e[x=-894,y=100,z=-44,distance=..3,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"nether_gold_ore",Count:1}]}
execute as @a[x=-894,y=100,z=-44,distance=30..150] as @e[x=-894,y=100,z=-44,distance=..3,type=minecraft:armor_stand,tag=CutTree] at @s run summon minecraft:interaction ~ ~ ~ {width:1.5,height:1.5,response:1,Tags:[CutTree]}
execute as @a[x=-894,y=100,z=-44,distance=30..150] as @e[x=-894,y=100,z=-44,distance=..3,type=minecraft:armor_stand,tag=CutTree] at @s run summon minecraft:interaction ~ ~1 ~ {width:1.5,height:1.5,response:1,Tags:[CutTree]}

#Route 5
execute as @a[x=-894,y=100,z=-62,distance=30..150] run fill -894 100 -63 -894 103 -61 barrier
execute as @a[x=-894,y=100,z=-62,distance=30..150] as @e[x=-894,y=100,z=-62,distance=..3,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"nether_gold_ore",Count:1}]}
execute as @a[x=-894,y=100,z=-62,distance=30..150] as @e[x=-894,y=100,z=-62,distance=..3,type=minecraft:armor_stand,tag=CutTree] at @s run summon minecraft:interaction ~ ~ ~ {width:1.5,height:1.5,response:1,Tags:[CutTree]}
execute as @a[x=-894,y=100,z=-62,distance=30..150] as @e[x=-894,y=100,z=-62,distance=..3,type=minecraft:armor_stand,tag=CutTree] at @s run summon minecraft:interaction ~ ~1 ~ {width:1.5,height:1.5,response:1,Tags:[CutTree]}

#Route 7
execute as @a[x=-1671,y=109,z=3,distance=30..150] run fill -1673 109 3 -1669 112 3 barrier
execute as @a[x=-1671,y=109,z=3,distance=30..150] as @e[x=-1671,y=109,z=3,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"nether_gold_ore",Count:1}]}
execute as @a[x=-1671,y=109,z=3,distance=30..150] as @e[x=-1671,y=109,z=3,distance=..10,type=minecraft:armor_stand,tag=CutTree] at @s run summon minecraft:interaction ~ ~ ~ {width:1.5,height:1.5,response:1,Tags:[CutTree]}
execute as @a[x=-1671,y=109,z=3,distance=30..150] as @e[x=-1671,y=109,z=3,distance=..3,type=minecraft:armor_stand,tag=CutTree] at @s run summon minecraft:interaction ~ ~1 ~ {width:1.5,height:1.5,response:1,Tags:[CutTree]}

#Route 11
execute as @a[x=-1988,y=113,z=-668,distance=30..150] run fill -1988 113 -664 -1988 115 -671 barrier
execute as @a[x=-1988,y=113,z=-668,distance=30..150] as @e[x=-1988,y=113,z=-668,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"nether_gold_ore",Count:1}]}
execute as @a[x=-1988,y=113,z=-668,distance=30..150] as @e[x=-1988,y=113,z=-668,distance=..10,type=minecraft:armor_stand,tag=CutTree] at @s run summon minecraft:interaction ~ ~ ~ {width:1.5,height:1.5,response:1,Tags:[CutTree]}
execute as @a[x=-1988,y=113,z=-668,distance=30..150] as @e[x=-1988,y=113,z=-668,distance=..10,type=minecraft:armor_stand,tag=CutTree] at @s run summon minecraft:interaction ~ ~1 ~ {width:1.5,height:1.5,response:1,Tags:[CutTree]}

#Route 12
execute as @a[x=-1453,y=80,z=-790,distance=30..150] run fill -1453 80 -788 -1453 83 -791 barrier
execute as @a[x=-1453,y=80,z=-790,distance=30..150] as @e[x=-1453,y=80,z=-790,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"nether_gold_ore",Count:1}]}
execute as @a[x=-1453,y=80,z=-790,distance=30..150] as @e[x=-1453,y=80,z=-790,distance=..10,type=minecraft:armor_stand,tag=CutTree] at @s run summon minecraft:interaction ~ ~ ~ {width:1.5,height:1.5,response:1,Tags:[CutTree]}
execute as @a[x=-1453,y=80,z=-790,distance=30..150] as @e[x=-1453,y=80,z=-790,distance=..10,type=minecraft:armor_stand,tag=CutTree] at @s run summon minecraft:interaction ~ ~1 ~ {width:1.5,height:1.5,response:1,Tags:[CutTree]}

#Route 12
execute as @a[x=-1366,y=80,z=-754,distance=30..150] run fill -1366 80 -755 -1366 83 -751 barrier
execute as @a[x=-1366,y=80,z=-754,distance=30..150] as @e[x=-1366,y=80,z=-754,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"nether_gold_ore",Count:1}]}
execute as @a[x=-1366,y=80,z=-754,distance=30..150] as @e[x=-1366,y=80,z=-754,distance=..10,type=minecraft:armor_stand,tag=CutTree] at @s run summon minecraft:interaction ~ ~ ~ {width:1.5,height:1.5,response:1,Tags:[CutTree]}
execute as @a[x=-1366,y=80,z=-754,distance=30..150] as @e[x=-1366,y=80,z=-754,distance=..10,type=minecraft:armor_stand,tag=CutTree] at @s run summon minecraft:interaction ~ ~1 ~ {width:1.5,height:1.5,response:1,Tags:[CutTree]}

#Route 16
execute as @a[x=383,y=104,z=-328,distance=30..150] run fill 383 104 -330 383 107 -325 barrier
execute as @a[x=383,y=104,z=-328,distance=30..150] as @e[x=383,y=104,z=-328,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"nether_gold_ore",Count:1}]}
execute as @a[x=383,y=104,z=-328,distance=30..150] as @e[x=383,y=104,z=-328,distance=..10,type=minecraft:armor_stand,tag=CutTree] at @s run summon minecraft:interaction ~ ~ ~ {width:1.5,height:1.5,response:1,Tags:[CutTree]}
execute as @a[x=383,y=104,z=-328,distance=30..150] as @e[x=383,y=104,z=-328,distance=..10,type=minecraft:armor_stand,tag=CutTree] at @s run summon minecraft:interaction ~ ~1 ~ {width:1.5,height:1.5,response:1,Tags:[CutTree]}

#Route 18
execute as @a[x=1408,y=108,z=-56,distance=30..150] run fill 1405 108 -56 1411 110 -56 barrier
execute as @a[x=1408,y=108,z=-56,distance=30..150] as @e[x=1408,y=108,z=-56,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"nether_gold_ore",Count:1}]}
execute as @a[x=1408,y=108,z=-56,distance=30..150] as @e[x=1408,y=108,z=-56,distance=..10,type=minecraft:armor_stand,tag=CutTree] at @s run summon minecraft:interaction ~ ~ ~ {width:1.5,height:1.5,response:1,Tags:[CutTree]}
execute as @a[x=1408,y=108,z=-56,distance=30..150] as @e[x=1408,y=108,z=-56,distance=..10,type=minecraft:armor_stand,tag=CutTree] at @s run summon minecraft:interaction ~ ~1 ~ {width:1.5,height:1.5,response:1,Tags:[CutTree]}

#Route 22
execute as @a[x=389,y=100,z=328,distance=30..150] run fill 389 100 323 389 102 331 barrier
execute as @a[x=389,y=100,z=328,distance=30..150] as @e[x=389,y=100,z=328,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"nether_gold_ore",Count:1}]}
execute as @a[x=389,y=100,z=328,distance=30..150] as @e[x=389,y=100,z=328,distance=..10,type=minecraft:armor_stand,tag=CutTree] at @s run summon minecraft:interaction ~ ~ ~ {width:1.5,height:1.5,response:1,Tags:[CutTree]}
execute as @a[x=389,y=100,z=328,distance=30..150] as @e[x=389,y=100,z=328,distance=..10,type=minecraft:armor_stand,tag=CutTree] at @s run summon minecraft:interaction ~ ~1 ~ {width:1.5,height:1.5,response:1,Tags:[CutTree]}






#