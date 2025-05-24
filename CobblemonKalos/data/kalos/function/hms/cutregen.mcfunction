#When a player wanders away, regenerates the cut trees

#Route 3
execute as @a[x=355,y=94,z=559,distance=30..150] run fill 355 94 555 355 97 564 barrier
execute as @a[x=355,y=94,z=559,distance=30..150] as @e[x=355,y=94,z=559,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"nether_gold_ore",Count:1}]}
execute as @a[x=355,y=94,z=559,distance=30..150] as @e[x=355,y=94,z=559,distance=..10,type=minecraft:armor_stand,tag=CutTree] at @s run summon minecraft:interaction ~ ~ ~ {width:1.5,height:1.5,response:1,Tags:[CutTree]}
execute as @a[x=355,y=94,z=559,distance=30..150] as @e[x=355,y=94,z=559,distance=..10,type=minecraft:armor_stand,tag=CutTree] at @s run summon minecraft:interaction ~ ~1 ~ {width:1.5,height:1.5,response:1,Tags:[CutTree]}



#