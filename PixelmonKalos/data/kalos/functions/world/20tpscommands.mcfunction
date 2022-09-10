
#Portals
execute at @a run execute if block ~ ~ ~ pixelmon:warp_plate run function kalos:world/portals


#Tagging berries when the player uses an Axe (HM Cut)
execute as @a[scores={CutUse=1..}] run function kalos:triggers/berrytags

#Runs shiny particles if player has turned that option on
execute @e[x=-685,y=100,z=1388,dy=3,tag=Particles,type=armor_stand] ~ ~ ~ execute @e[tag=Shiny,type=pixelmon:pixelmon] ~ ~ ~ /particle reddust ~ ~ ~ 0 10 0 1 10 force @a[r=50]


#Runs the restaurant timer
execute @a[x=-514,y=0,z=64,dx=526,dy=256,dz=436,tag=RunTimer,score_RestaurantBattle_min=1] ~ ~ ~ function custom:restauranttimer


#Mamoswine Route removing snow
execute as @e[x=828,y=108,z=-318,dx=150,dy=10,dz=150,tag=Dialogue100] at @e[type=pixelmon:pixelmon,name=Mamoswine,distance=..3] run fill ~-3 108 ~-3 ~2 112 ~3 air 0 replace minecraft:snow



#Mega Stone Particles
execute as @a[scores={MegaStones=1..}] run function kalos:world/megastonesactive
execute if entity @e[x=-685,y=100,z=1388,dy=3,tag=Particles,type=armor_stand] as @a[x=1205,y=111,z=-276,distance=..50,limit=1] run particle reddust 1205 111 -276 10 5 10 1 50 force @a[distance=..50]




#Road Blocks
#Route 7 Sleeping Snorlax
tellraw @a[x=-1305,y=100,z=-39,dx=6,dy=10,dz=6,tag=!Dialogue32] {"text":"There is a large Pokémon sleeping peacefully. It looks so content!","italic":true,"color":"gray"}
execute at @a[x=-1305,y=100,z=-39,dx=6,dy=10,dz=6,tag=!Dialogue32] run tp @s[x=-1305,y=100,z=-39,dx=6,dy=10,dz=6,tag=!Dialogue32] ~10 ~ ~
