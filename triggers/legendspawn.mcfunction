#Add to statues:
#/tedit add INTERACT /tag @pl add LegendActivate

#Pre-Battle tellraws if player clicks again
tellraw @s[scores={Mewtwo=1..},x=809,y=74,z=525,dx=66,dy=14,dz=92] {"text":"You already battled Mewtwo!","italic":true,"color":"gray"}
tellraw @s[scores={Zygarde=1..},x=2015,y=61,z=-176,distance=..50] {"text":"You already battled Zygarde!","italic":true,"color":"gray"}
execute as @e[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,name=Articuno,nbt=!{pixelmon:statue}] run tellraw @a[distance=..6,scores={Articuno=6..,StarterPick=1}] {"text":"You already battled Articuno!","italic":true,"color":"gray"}
execute as @e[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,name=Zapdos,nbt=!{pixelmon:statue}] run tellraw @a[distance=..6,scores={Zapdos_min=6..,StarterPick=2}] {"text":"You already battled Zapdos!","italic":true,"color":"gray"}
execute as @e[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,name=Moltres,nbt=!{pixelmon:statue}] run tellraw @a[distance=..6,scores={Moltres_min=6..,StarterPick=3}] {"text":"You already battled Moltres!","italic":true,"color":"gray"}

execute as @e[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,name=Articuno,nbt=!{pixelmon:statue}] run tellraw @p[distance=..6,scores={Articuno=0,StarterPick=2..}] {"text":"You aren't able to battle this Pokemon!","italic":true,"color":"gray"}
execute as @e[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,name=Zapdos,nbt=!{pixelmon:statue}] run tellraw @a[distance=..6,scores={Zapdos=0,StarterPick=1}] {"text":"You aren't able to battle this Pokemon!!","italic":true,"color":"gray"}
execute as @e[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,name=Zapdos,nbt=!{pixelmon:statue}] run tellraw @a[distance=..6,scores={Zapdos=0,StarterPick=3}] {"text":"You aren't able to battle this Pokemon!!","italic":true,"color":"gray"}
execute as @e[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,name=Moltres,nbt=!{pixelmon:statue}] run tellraw @a[distance=..6,scores={Moltres=0,StarterPick=1..2}] {"text":"You aren't able to battle this Pokemon!","italic":true,"color":"gray"}

tellraw @a[scores={Diancie=1..},x=-1707,y=2,z=-437,distance=..50] {"text":"You already battled Diancie!","italic":true,"color":"gray"}
tellraw @a[scores={Hoopa=1..},x=-243,y=84,z=-1255,dx=25,dy=10,dz=33] {"text":"You already battled Hoopa!","italic":true,"color":"gray"}
tellraw @a[x=-937,y=36,z=-742,dx=280,dy=40,dz=117,scores={Volcanion=1..}] {"text":"You already battled Volcanion!","italic":true,"color":"gray"}


#Mewtwo Activate:
execute as @s[scores={Mewtwo=0},x=845,y=75,z=559,distance=..10] run particle cloud 845 75 559 1 1 1 0.15 1000
###execute as @s[scores={Mewtwo=0},x=845,y=75,z=559,distance=..10] run execute as @e[x=845,y=75,z=559,distance=..5,nbt=!{pixelmon:statue}] run pokespawn Mewtwo lvl:70 gr:7
execute as @s[scores={Mewtwo=0},x=845,y=75,z=559,distance=..10] run tp @e[x=845,y=75,z=559,distance=..5,nbt=!{pixelmon:statue}] -501 101 1238
execute as @s[scores={Mewtwo=0},x=845,y=75,z=559,distance=..10] run playsound pixelmon:pixelmon.mob.mewtwo hostile @s ~ ~ ~ 100 1 1
execute as @s[scores={Mewtwo=0},x=845,y=75,z=559,distance=..10] run advancement grant @s only kalos:legends/mewtwo
execute as @s[scores={Mewtwo=0},x=845,y=75,z=559,distance=..10] run scoreboard players add @s Mewtwo 1
execute as @s[scores={Mewtwo=1..},x=845,y=75,z=559,distance=..10] run tag @s[tag=LegendActivate] remove LegendActivate


#Mewtwo reset
#execute as @e[x=-501,y=101,z=1238,r=2,nbt=!{pixelmon:statue}] run execute as @s[x=809,y=74,z=525,dx=66,dy=14,dz=92,score_Mewtwo=0] run tp @e[x=-501,y=101,z=1238,r=2,nbt=!{pixelmon:statue}] 845 75 559



#Zygarde Activate:
execute as @s[scores={Zygarde=0},x=2015,y=61,z=-176,distance=..10] run particle cloud 2015 61 -176 1 1 1 0.15 1000
###execute as @s[scores={Zygarde=0},x=2015,y=61,z=-176,distance=..10] run execute as @e[x=2015,y=61,z=-176,distance=..5,nbt=!{pixelmon:statue}] run pokespawn Zygarde lvl:70 gr:7 f:3
execute as @s[scores={Zygarde=0},x=2015,y=61,z=-176,distance=..10] run tp @e[x=2015,y=61,z=-176,distance=..5,nbt=!{pixelmon:statue}] -501 109 1238
execute as @s[scores={Zygarde=0},x=2015,y=61,z=-176,distance=..10] run playsound pixelmon:pixelmon.mob.zygarde hostile @s ~ ~ ~ 100 1 1
execute as @s[scores={Zygarde=0},x=2015,y=61,z=-176,distance=..10] run advancement grant @s only kalos:legends/zygarde
execute as @s[scores={Zygarde=0},x=2015,y=61,z=-176,distance=..10] run scoreboard players add @s Zygarde 1
execute as @s[scores={Zygarde=1..},x=2015,y=61,z=-176,distance=..10] run tag @s[tag=LegendActivate] remove LegendActivate


#Zygarde reset
#execute as @e[x=-501,y=110,z=1238,r=2,nbt=!{pixelmon:statue}] run execute as @s[x=2015,y=61,z=-176,distance=..50,score_Zygarde=0] run tp @e[x=-501,y=110,z=1238,r=2,nbt=!{pixelmon:statue}] 2015 61 -174




#Diancie Activate:
execute as @s[scores={Diancie=0},x=-1707,y=2,z=-437,distance=..10] run particle cloud -1707 2 -437 1 1 1 0.15 1000
###execute as @s[scores={Diancie=0},x=-1707,y=2,z=-437,distance=..10] run execute as @e[x=-1707,y=2,z=-437,distance=..5,nbt=!{pixelmon:statue}] run pokespawn Diancie lvl:50 gr:7
execute as @s[scores={Diancie=0},x=-1707,y=2,z=-437,distance=..10] run tp @e[x=-1707,y=2,z=-437,distance=..5,nbt=!{pixelmon:statue}] -501 128 1238
execute as @s[scores={Diancie=0},x=-1707,y=2,z=-437,distance=..10] run playsound pixelmon:pixelmon.mob.diancie hostile @s ~ ~ ~ 100 1 1
execute as @s[scores={Diancie=0},x=-1707,y=2,z=-437,distance=..10] run advancement grant @s only kalos:mythicals/diancie
execute as @s[scores={Diancie=0},x=-1707,y=2,z=-437,distance=..10] run scoreboard players add @s Diancie 1
execute as @s[scores={Diancie=1..},x=-1707,y=2,z=-437,distance=..10] run tag @s[tag=LegendActivate] remove LegendActivate


#Diancie reset
#execute as @e[x=-501,y=128,z=1238,r=2,nbt=!{pixelmon:statue}] run execute as @s[x=-1707,y=2,z=-437,distance=..50,score_Diancie=0] run tp @e[x=-501,y=128,z=1238,r=2,nbt=!{pixelmon:statue}] -1707 2 -437




#Hoopa
execute as @s[scores={Hoopa=0},x=-243,y=84,z=-1255,dx=25,dy=10,dz=33] run particle cloud -230 89 -1242 1 1 1 0.15 1000
###execute as @s[scores={Hoopa=0},x=-243,y=84,z=-1255,dx=25,dy=10,dz=33] run execute as @e[x=-230,y=88,z=-1242,dy=3,nbt=!{pixelmon:statue}] run pokespawn Hoopa lvl:50 gr:7
execute as @s[scores={Hoopa=0},x=-243,y=84,z=-1255,dx=25,dy=10,dz=33] run tp @e[x=-230,y=88,z=-1242,dy=3,nbt=!{pixelmon:statue}] -501 119 1238
execute as @s[scores={Hoopa=0},x=-243,y=84,z=-1255,dx=25,dy=10,dz=33] run playsound pixelmon:pixelmon.mob.hoopa hostile @s ~ ~ ~ 100 1 1
execute as @s[scores={Hoopa=0},x=-243,y=84,z=-1255,dx=25,dy=10,dz=33] run scoreboard players add @s click 1
execute as @s[scores={Hoopa=0},x=-243,y=84,z=-1255,dx=25,dy=10,dz=33] run advancement grant @s only kalos:mythicals/hoopa
execute as @s[scores={Hoopa=0},x=-243,y=84,z=-1255,dx=25,dy=10,dz=33] run scoreboard players add @s Hoopa 1
execute as @s[scores={Hoopa=1..},x=-243,y=84,z=-1255,dx=25,dy=10,dz=33] run tag @s[tag=LegendActivate] remove LegendActivate



#Moltres
execute as @s[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,scores={Moltres=5,StarterPick=3}] run particle cloud -1313 22 -1232 1 1 1 0.15 1000
###execute as @s[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,scores={Moltres=5,StarterPick=3}] run execute as @e[x=-1313,y=21,z=-1232,dy=3,nbt=!{pixelmon:statue}] run pokespawn Moltres lvl:70 gr:7
execute as @s[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,scores={Moltres=5,StarterPick=3}] run tp @e[x=-1313,y=21,z=-1232,dy=3,nbt=!{pixelmon:statue}] -501 155 1238
execute as @s[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,scores={Moltres=5,StarterPick=3}] run playsound moltres hostile @s ~ ~ ~ 100 1 1
execute as @s[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,scores={Moltres=5,StarterPick=3}] run scoreboard players add @s click 1
execute as @s[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,scores={Moltres=5,StarterPick=3}] run advancement grant @s only kalos:legends/moltres
execute as @s[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,scores={Moltres=5,StarterPick=3}] run scoreboard players add @s Moltres 1
execute as @s[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,scores={Moltres=6..,StarterPick=3}] run tag @s[tag=LegendActivate] remove LegendActivate



#Zapdos
execute as @s[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,scores={Zapdos=5,StarterPick=2}] run particle cloud -1349 22 -1232 1 1 1 0.15 1000
###execute as @s[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,scores={Zapdos=5,StarterPick=2}] run execute as @e[x=-1349,y=21,z=-1232,dy=3,nbt=!{pixelmon:statue}] run pokespawn Zapdos lvl:70 gr:7
execute as @s[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,scores={Zapdos=5,StarterPick=2}] run tp @e[x=-1349,y=21,z=-1232,dy=3,nbt=!{pixelmon:statue}] -501 173 1238
execute as @s[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,scores={Zapdos=5,StarterPick=2}] run playsound zapdos hostile @s ~ ~ ~ 100 1 1
execute as @s[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,scores={Zapdos=5,StarterPick=2}] run scoreboard players add @s click 1
execute as @s[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,scores={Zapdos=5,StarterPick=2}] run advancement grant @s only kalos:legends/zapdos
execute as @s[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,scores={Zapdos=5,StarterPick=2}] run scoreboard players add @s Zapdos 1
execute as @s[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,scores={Zapdos=6..,StarterPick=2}] run tag @s[tag=LegendActivate] remove LegendActivate



#Articuno
execute as @s[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,scores={Zapdos=5,StarterPick=1}] run particle cloud -1335 22 -1252 1 1 1 0.15 1000
###execute as @s[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,scores={Zapdos=5,StarterPick=1}] run execute as @e[x=-1335,y=21,z=-1252,dy=3,nbt=!{pixelmon:statue}] run pokespawn Articuno lvl:70 gr:7
execute as @s[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,scores={Zapdos=5,StarterPick=1}] run tp @e[x=-1335,y=21,z=-1252,dy=3,nbt=!{pixelmon:statue}] -501 164 1238
execute as @s[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,scores={Zapdos=5,StarterPick=1}] run playsound articuno hostile @s ~ ~ ~ 100 1 1
execute as @s[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,scores={Zapdos=5,StarterPick=1}] run scoreboard players add @s click 1
execute as @s[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,scores={Zapdos=5,StarterPick=1}] run advancement grant @s only kalos:legends/articuno
execute as @s[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,scores={Zapdos=5,StarterPick=1}] run scoreboard players add @s Articuno 1
execute as @s[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,scores={Articuno=6..,StarterPick=1}] run tag @s[tag=LegendActivate] remove LegendActivate



#Volcanion
execute as @s[scores={Volcanion=0},x=-937,y=36,z=-742,dx=280,dy=40,dz=117] run particle cloud -859 61 -690 1 1 1 0.15 1000
###execute as @s[scores={Volcanion=0},x=-937,y=36,z=-742,dx=280,dy=40,dz=117] run execute as @e[x=-859,y=60,z=-690,dy=3,nbt=!{pixelmon:statue}] run pokespawn Volcanion lvl:50 gr:7
execute as @s[scores={Volcanion=0},x=-937,y=36,z=-742,dx=280,dy=40,dz=117] run tp @e[x=-859,y=60,z=-690,dy=3,nbt=!{pixelmon:statue}] -501 137 1238
execute as @s[scores={Volcanion=0},x=-937,y=36,z=-742,dx=280,dy=40,dz=117] run playsound pixelmon:pixelmon.mob.volcanion hostile @s ~ ~ ~ 100 1 1
execute as @s[scores={Volcanion=0},x=-937,y=36,z=-742,dx=280,dy=40,dz=117] run scoreboard players add @s click 1
execute as @s[scores={Volcanion=0},x=-937,y=36,z=-742,dx=280,dy=40,dz=117] run advancement grant @s only kalos:mythicals/volcanion
execute as @s[scores={Volcanion=0},x=-937,y=36,z=-742,dx=280,dy=40,dz=117] run scoreboard players add @s Volcanion 1
execute as @s[scores={Volcanion=1..},x=-937,y=36,z=-742,dx=280,dy=40,dz=117] run tag @s[tag=LegendActivate] remove LegendActivate







#Trigger battle music
scoreboard players add @a[tag=LegendActivate] click 1

tag @a[tag=LegendActivate] remove LegendActivate
