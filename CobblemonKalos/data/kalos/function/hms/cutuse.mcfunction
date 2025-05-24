#Transforms Cut Trees from not cut and inaccessable to cut down

#Route 29
execute as @s[x=355,y=94,z=559,distance=..20] run fill 355 94 555 355 97 564 air
execute as @s[x=355,y=94,z=559,distance=..20] at @e[x=355,y=94,z=559,distance=..10,type=minecraft:armor_stand,tag=CutTree] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @s[x=355,y=94,z=559,distance=..20] as @e[x=355,y=94,z=559,distance=..10,type=minecraft:armor_stand,tag=CutTree] run data merge entity @s {ArmorItems:[{},{},{},{id:"air",Count:1}]}
execute as @s[x=355,y=94,z=559,distance=..20] run kill @e[x=355,y=94,z=559,distance=..10,tag=CutTree,type=interaction]




#