
#Portals
execute as @a at @s if block ~ ~ ~ minecraft:magenta_carpet run function kalos:world/portals

#Runs movement panels in Lysandre Labs
execute as @a[x=-402,y=0,z=277,dx=209,dy=256,dz=148] run function kalos:world/movementpanels

#Tagging berries in the berry farms area
execute as @e[x=-1273,y=100,z=2,dx=85,dy=4,dz=30,type=item] run function kalos:data/berrytags

#Runs shiny particles if player has turned that option on
#execute as @e[x=-685,y=100,z=1388,dy=3,tag=Particles,type=armor_stand] at @e[tag=Shiny,type=pixelmon:pixelmon] run particle reddust ~ ~ ~ 0 10 0 1 10 force @a[distance=..50]


#Runs the restaurant timer
execute as @a[x=-514,y=0,z=64,dx=526,dy=256,dz=436,tag=RunTimer,scores={RestaurantBattle=1..}] run function kalos:triggers/restauranttimer


#Mamoswine Route removing snow
execute as @a[x=828,y=108,z=-318,dx=150,dy=10,dz=150,tag=Dialogue100] at @s positioned ~ ~-3 ~ if entity @e[type=cobblemon:pokemon,distance=..3,nbt={Pokemon:{Species:"cobblemon:mamoswine"}}] run fill ~-3 108 ~-3 ~2 112 ~3 minecraft:air replace minecraft:snow_block



#Mega Stone Particles
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={DayTime=10000..18000}] as @a[scores={MegaStones=1..}] run function kalos:world/megastonesactive
#execute if entity @e[x=-685,y=100,z=1388,dy=3,tag=Particles,type=armor_stand] as @a[x=1205,y=111,z=-276,distance=..50,limit=1] run particle minecraft:dust 1 1 1 1 ~ ~1 ~ 0 10 0 0.5 50 force @a[distance=..50]

#Anistar Sundial particles
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={DayTime=10000..18000}] positioned 1205 111 -276 run particle dust_color_transition{from_color:[0.0,0.33,1.000],scale:1,to_color:[1.000,0.000,0.000]} ~ ~ ~ 4 4 4 50 20 force @a[distance=..300]
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={DayTime=10000..18000}] positioned 1205 111 -276 run particle dust_color_transition{from_color:[0.334,0.666,1.000],scale:1,to_color:[1.000,0.000,0.000]} ~ ~ ~ 6 6 6 100 20 force @a[distance=..300]
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={DayTime=10000..18000}] positioned 1205 111 -276 run particle dust_color_transition{from_color:[0.667,1.0,1.000],scale:1,to_color:[1.000,0.000,0.000]} ~ ~ ~ 8 8 8 200 20 force @a[distance=..300]


#Runs the Poke Ball Factory floors
execute if entity @a[x=-242,y=91,z=-2026,dx=180,dy=3,dz=188,limit=1] run function kalos:data/factorymotion


#Sycamore's cutscene timings
execute if entity @a[x=-1034,y=99,z=1432,dx=50,dy=50,dz=50,scores={DialogueTrigger=266}] run function kalos:cutscenes/welcomeintro


#Road Blocks
#Route 7 Sleeping Snorlax
tellraw @a[x=-1305,y=100,z=-39,dx=6,dy=10,dz=6,tag=!Dialogue32] {"text":"There is a large Pokémon sleeping peacefully. It looks so content!","italic":true,"color":"gray"}
execute as @a[x=-1305,y=100,z=-39,dx=6,dy=10,dz=6,tag=!Dialogue32] at @s run tp @s ~10 ~ ~


#AZ Cutscene Camera Movements
execute as @a[x=-383,y=100,z=366,dx=6,dy=5,dz=7] at @s run tp @s ~ ~ ~-0.005
execute as @a[x=-375,y=100,z=366,dx=6,dy=5,dz=7] at @s run tp @s ~ ~ ~-0.005
execute as @a[x=-367,y=100,z=366,dx=6,dy=5,dz=7] at @s run tp @s ~0.005 ~ ~
execute as @a[x=-359,y=100,z=366,dx=6,dy=5,dz=7] at @s run tp @s ~ ~ ~0.005
execute as @a[x=-351,y=100,z=366,dx=4,dy=5,dz=7] at @s run tp @s ~ ~ ~ ~ ~-0.05
execute as @a[x=-353,y=100,z=354,dx=6,dy=5,dz=7] at @s run tp @s ~ ~ ~-0.005
execute as @a[x=-359,y=100,z=354,dx=4,dy=5,dz=7] at @s run tp @s ~ ~ ~ ~ ~-0.05
execute as @a[x=-367,y=100,z=354,dx=6,dy=5,dz=7] at @s run tp @s ~ ~ ~0.005
execute as @a[x=-375,y=100,z=354,dx=6,dy=5,dz=7] at @s run tp @s ~0.005 ~ ~
execute as @a[x=-383,y=100,z=355,dx=6,dy=5,dz=7] at @s run tp @s ~ ~ ~-0.005
execute as @a[x=-391,y=100,z=354,dx=6,dy=6,dz=3] at @s run tp @s ~0.005 ~ ~
execute as @a[x=-359,y=100,z=378,dx=6,dy=5,dz=7] at @s run tp @s ~ ~ ~0.005
execute as @a[x=-367,y=100,z=378,dx=6,dy=5,dz=7] at @s run tp @s ~ ~ ~0.005
execute as @a[x=-375,y=100,z=378,dx=6,dy=5,dz=7] at @s run tp @s ~ ~ ~-0.005
execute as @a[x=-383,y=100,z=378,dx=6,dy=5,dz=7] at @s run tp @s ~ ~ ~-0.005
execute as @a[x=-391,y=100,z=378,dx=6,dy=5,dz=7] at @s run tp @s ~ ~ ~0.005



#Legendary Spawn Particles
#Particles 1
execute if entity @a[scores={DialogueTrigger=131,TalkTime=20..96}] positioned -2336 50 -1022 run particle minecraft:enchant ~ ~5 ~ 5 5 5 1 10 normal

#Particles 2
execute if entity @a[scores={DialogueTrigger=131,TalkTime=35..96}] positioned -2336 50 -1022 run particle minecraft:end_rod ~ ~ ~ 0 10 0 1 1

#Particles 3
execute if entity @a[scores={DialogueTrigger=131,TalkTime=60..96}] positioned -2336 50 -1022 run particle minecraft:electric_spark ~ ~ ~ 0 1 1 0.5 5

#Particles 4
execute if entity @a[scores={DialogueTrigger=131,TalkTime=80..96}] positioned -2336 50 -1022 run particle minecraft:dust{color:[0.0,0.0,0.0],scale:1} ~ ~ ~ 0 1 0 1 10



#Parade Camera Motion
execute as @a[scores={DialogueTrigger=155,TalkTime=5..20}] at @s run tp @s ~ ~ ~-0.10 ~ ~

#AZ's floette floating down
execute if entity @a[scores={DialogueTrigger=156}] as @e[x=1469,y=102,z=-1957,dy=40,type=cobblemon:pokemon] at @s run tp @s ~ ~-0.08 ~





#