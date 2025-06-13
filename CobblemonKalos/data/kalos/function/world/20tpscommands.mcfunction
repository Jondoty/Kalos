
#Portals
execute as @a at @s if block ~ ~ ~ minecraft:magenta_carpet run function kalos:world/portals


#Tagging berries in the berry farms area
execute as @e[x=-1273,y=100,z=2,dx=85,dy=4,dz=30,type=item] run function kalos:data/berrytags

#Runs shiny particles if player has turned that option on
#execute as @e[x=-685,y=100,z=1388,dy=3,tag=Particles,type=armor_stand] at @e[tag=Shiny,type=pixelmon:pixelmon] run particle reddust ~ ~ ~ 0 10 0 1 10 force @a[distance=..50]


#Runs the restaurant timer
execute as @a[x=-514,y=0,z=64,dx=526,dy=256,dz=436,tag=RunTimer,scores={RestaurantBattle=1..}] run function kalos:triggers/restauranttimer


#Mamoswine Route removing snow
#execute as @e[x=828,y=108,z=-318,dx=150,dy=10,dz=150,tag=Dialogue100] at @e[type=pixelmon:pixelmon,name=Mamoswine,distance=..3] run fill ~-3 108 ~-3 ~2 112 ~3 minecraft:air replace minecraft:snow_block



#Mega Stone Particles
execute as @a[scores={MegaStones=1..}] run function kalos:world/megastonesactive
#execute if entity @e[x=-685,y=100,z=1388,dy=3,tag=Particles,type=armor_stand] as @a[x=1205,y=111,z=-276,distance=..50,limit=1] run particle minecraft:dust 1 1 1 1 ~ ~1 ~ 0 10 0 0.5 50 force @a[distance=..50]


#Runs the Poke Ball Factory floors
execute if entity @a[x=-242,y=91,z=-2026,dx=180,dy=3,dz=188,limit=1] run function kalos:data/factorymotion


#Sycamore's cutscene timings
execute if entity @a[x=-1034,y=99,z=1432,dx=50,dy=50,dz=50,scores={DialogueTrigger=266}] run function kalos:cutscenes/welcomeintro


#Road Blocks
#Route 7 Sleeping Snorlax
tellraw @a[x=-1305,y=100,z=-39,dx=6,dy=10,dz=6,tag=!Dialogue32] {"text":"There is a large Pokémon sleeping peacefully. It looks so content!","italic":true,"color":"gray"}
execute at @a[x=-1305,y=100,z=-39,dx=6,dy=10,dz=6,tag=!Dialogue32] run tp @s[x=-1305,y=100,z=-39,dx=6,dy=10,dz=6,tag=!Dialogue32] ~10 ~ ~
