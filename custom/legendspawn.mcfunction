#Add to statues:
#/tedit add INTERACT /scoreboard players tag @pl add LegendActivate

#Pre-Battle tellraws if player clicks again
tellraw @a[score_Mewtwo_min=1,tag=LegendActivate,x=809,y=74,z=525,dx=66,dy=14,dz=92] {"text":"You already battled Mewtwo!","italic":true,"color":"gray"}
tellraw @a[score_Zygarde_min=1,tag=LegendActivate,x=2015,y=61,z=-176,r=50] {"text":"You already battled Zygarde!","italic":true,"color":"gray"}
execute @e[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,name=Articuno,type=pixelmon:statue] ~ ~ ~ /tellraw @a[r=6,score_Articuno_min=6,tag=LegendActivate,score_StarterPick_min=1,score_StarterPick=1] {"text":"You already battled Articuno!","italic":true,"color":"gray"}
execute @e[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,name=Zapdos,type=pixelmon:statue] ~ ~ ~ /tellraw @a[r=6,score_Zapdos_min=6,tag=LegendActivate,score_StarterPick_min=2,score_StarterPick=2] {"text":"You already battled Zapdos!","italic":true,"color":"gray"}
execute @e[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,name=Moltres,type=pixelmon:statue] ~ ~ ~ /tellraw @a[r=6,score_Moltres_min=6,tag=LegendActivate,score_StarterPick_min=3,score_StarterPick=3] {"text":"You already battled Moltres!","italic":true,"color":"gray"}

execute @e[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,name=Articuno,type=pixelmon:statue] ~ ~ ~ /tellraw @p[r=6,score_Articuno=0,tag=LegendActivate,score_StarterPick_min=2] {"text":"You aren't able to battle this Pokemon!","italic":true,"color":"gray"}
execute @e[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,name=Zapdos,type=pixelmon:statue] ~ ~ ~ /tellraw @a[r=6,score_Zapdos=0,tag=LegendActivate,score_StarterPick_min=1,score_StarterPick=1] {"text":"You aren't able to battle this Pokemon!!","italic":true,"color":"gray"}
execute @e[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,name=Zapdos,type=pixelmon:statue] ~ ~ ~ /tellraw @a[r=6,score_Zapdos=0,tag=LegendActivate,score_StarterPick_min=3,score_StarterPick=3] {"text":"You aren't able to battle this Pokemon!!","italic":true,"color":"gray"}
execute @e[x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,name=Moltres,type=pixelmon:statue] ~ ~ ~ /tellraw @a[r=6,score_Moltres=0,tag=LegendActivate,score_StarterPick_min=1,score_StarterPick=2] {"text":"You aren't able to battle this Pokemon!","italic":true,"color":"gray"}

tellraw @a[score_Diancie_min=1,tag=LegendActivate,x=-1707,y=2,z=-437,r=50] {"text":"You already battled Diancie!","italic":true,"color":"gray"}
tellraw @a[score_Hoopa_min=1,tag=LegendActivate,x=-243,y=84,z=-1255,dx=25,dy=10,dz=33] {"text":"You already battled Hoopa!","italic":true,"color":"gray"}
tellraw @a[x=-937,y=36,z=-742,dx=280,dy=40,dz=117,score_Volcanion_min=1,tag=LegendActivate] {"text":"You already battled Volcanion!","italic":true,"color":"gray"}


#Mewtwo Activate:
execute @a[c=1,score_Mewtwo=0,x=845,y=75,z=559,r=10,tag=LegendActivate] ~ ~ ~ /particle cloud 845 75 559 1 1 1 0.15 1000
execute @a[c=1,score_Mewtwo=0,x=845,y=75,z=559,r=10,tag=LegendActivate] ~ ~ ~ /execute @e[x=845,y=75,z=559,r=5,type=pixelmon:statue] ~ ~ ~ /pokespawn Mewtwo lvl:70 gr:7
execute @a[c=1,score_Mewtwo=0,x=845,y=75,z=559,r=10,tag=LegendActivate] ~ ~ ~ /tp @e[x=845,y=75,z=559,r=5,type=pixelmon:statue] -501 101 1238
execute @a[c=1,score_Mewtwo=0,x=845,y=75,z=559,r=10,tag=LegendActivate] ~ ~ ~ /playsound pixelmon:pixelmon.mob.mewtwo hostile @s ~ ~ ~ 100 1 1
execute @a[c=1,score_Mewtwo=0,x=845,y=75,z=559,r=10,tag=LegendActivate] ~ ~ ~ /advancement grant @s only kalos:legends/mewtwo
execute @a[c=1,score_Mewtwo=0,x=845,y=75,z=559,r=10,tag=LegendActivate] ~ ~ ~ /scoreboard players add @s Mewtwo 1
execute @a[c=1,score_Mewtwo_min=1,x=845,y=75,z=559,r=10,tag=LegendActivate] ~ ~ ~ /scoreboard players tag @s[tag=LegendActivate] remove LegendActivate


#Mewtwo reset
#execute @e[x=-501,y=101,z=1238,r=2,type=pixelmon:statue] ~ ~ ~ /execute @a[x=809,y=74,z=525,dx=66,dy=14,dz=92,score_Mewtwo=0] ~ ~ ~ /tp @e[x=-501,y=101,z=1238,r=2,type=pixelmon:statue] 845 75 559



#Zygarde Activate:
execute @a[c=1,score_Zygarde=0,x=2015,y=61,z=-176,r=10,tag=LegendActivate] ~ ~ ~ /particle cloud 2015 61 -176 1 1 1 0.15 1000
execute @a[c=1,score_Zygarde=0,x=2015,y=61,z=-176,r=10,tag=LegendActivate] ~ ~ ~ /execute @e[x=2015,y=61,z=-176,r=5,type=pixelmon:statue] ~ ~ ~ /pokespawn Zygarde lvl:70 gr:7 f:3
execute @a[c=1,score_Zygarde=0,x=2015,y=61,z=-176,r=10,tag=LegendActivate] ~ ~ ~ /tp @e[x=2015,y=61,z=-176,r=5,type=pixelmon:statue] -501 109 1238
execute @a[c=1,score_Zygarde=0,x=2015,y=61,z=-176,r=10,tag=LegendActivate] ~ ~ ~ /playsound pixelmon:pixelmon.mob.zygarde hostile @s ~ ~ ~ 100 1 1
execute @a[c=1,score_Zygarde=0,x=2015,y=61,z=-176,r=10,tag=LegendActivate] ~ ~ ~ /advancement grant @s only kalos:legends/zygarde
execute @a[c=1,score_Zygarde=0,x=2015,y=61,z=-176,r=10,tag=LegendActivate] ~ ~ ~ /scoreboard players add @s Zygarde 1
execute @a[c=1,score_Zygarde_min=1,x=2015,y=61,z=-176,r=10,tag=LegendActivate] ~ ~ ~ /scoreboard players tag @s[tag=LegendActivate] remove LegendActivate


#Zygarde reset
#execute @e[x=-501,y=110,z=1238,r=2,type=pixelmon:statue] ~ ~ ~ /execute @a[x=2015,y=61,z=-176,r=50,score_Zygarde=0] ~ ~ ~ /tp @e[x=-501,y=110,z=1238,r=2,type=pixelmon:statue] 2015 61 -174




#Diancie Activate:
execute @a[c=1,score_Diancie=0,x=-1707,y=2,z=-437,r=10,tag=LegendActivate] ~ ~ ~ /particle cloud -1707 2 -437 1 1 1 0.15 1000
execute @a[c=1,score_Diancie=0,x=-1707,y=2,z=-437,r=10,tag=LegendActivate] ~ ~ ~ /execute @e[x=-1707,y=2,z=-437,r=5,type=pixelmon:statue] ~ ~ ~ /pokespawn Diancie lvl:50 gr:7
execute @a[c=1,score_Diancie=0,x=-1707,y=2,z=-437,r=10,tag=LegendActivate] ~ ~ ~ /tp @e[x=-1707,y=2,z=-437,r=5,type=pixelmon:statue] -501 128 1238
execute @a[c=1,score_Diancie=0,x=-1707,y=2,z=-437,r=10,tag=LegendActivate] ~ ~ ~ /playsound pixelmon:pixelmon.mob.diancie hostile @s ~ ~ ~ 100 1 1
execute @a[c=1,score_Diancie=0,x=-1707,y=2,z=-437,r=10,tag=LegendActivate] ~ ~ ~ /advancement grant @s only kalos:mythicals/diancie
execute @a[c=1,score_Diancie=0,x=-1707,y=2,z=-437,r=10,tag=LegendActivate] ~ ~ ~ /scoreboard players add @s Diancie 1
execute @a[c=1,score_Diancie_min=1,x=-1707,y=2,z=-437,r=10,tag=LegendActivate] ~ ~ ~ /scoreboard players tag @s[tag=LegendActivate] remove LegendActivate


#Diancie reset
#execute @e[x=-501,y=128,z=1238,r=2,type=pixelmon:statue] ~ ~ ~ /execute @a[x=-1707,y=2,z=-437,r=50,score_Diancie=0] ~ ~ ~ /tp @e[x=-501,y=128,z=1238,r=2,type=pixelmon:statue] -1707 2 -437




#Hoopa
execute @a[c=1,score_Hoopa=0,x=-243,y=84,z=-1255,dx=25,dy=10,dz=33,tag=LegendActivate] ~ ~ ~ /particle cloud -230 89 -1242 1 1 1 0.15 1000
execute @a[c=1,score_Hoopa=0,x=-243,y=84,z=-1255,dx=25,dy=10,dz=33,tag=LegendActivate] ~ ~ ~ /execute @e[x=-230,y=88,z=-1242,dy=3,type=pixelmon:statue] ~ ~ ~ /pokespawn Hoopa lvl:50 gr:7
execute @a[c=1,score_Hoopa=0,x=-243,y=84,z=-1255,dx=25,dy=10,dz=33,tag=LegendActivate] ~ ~ ~ /tp @e[x=-230,y=88,z=-1242,dy=3,type=pixelmon:statue] -501 119 1238
execute @a[c=1,score_Hoopa=0,x=-243,y=84,z=-1255,dx=25,dy=10,dz=33,tag=LegendActivate] ~ ~ ~ /playsound pixelmon:pixelmon.mob.hoopa hostile @s ~ ~ ~ 100 1 1
execute @a[c=1,score_Hoopa=0,x=-243,y=84,z=-1255,dx=25,dy=10,dz=33,tag=LegendActivate] ~ ~ ~ /scoreboard players add @s click 1
execute @a[c=1,score_Hoopa=0,x=-243,y=84,z=-1255,dx=25,dy=10,dz=33,tag=LegendActivate] ~ ~ ~ /advancement grant @s only kalos:mythicals/hoopa
execute @a[c=1,score_Hoopa=0,x=-243,y=84,z=-1255,dx=25,dy=10,dz=33,tag=LegendActivate] ~ ~ ~ /scoreboard players add @s Hoopa 1
execute @a[c=1,score_Hoopa_min=1,x=-243,y=84,z=-1255,dx=25,dy=10,dz=33,tag=LegendActivate] ~ ~ ~ /scoreboard players tag @s[tag=LegendActivate] remove LegendActivate



#Moltres
execute @a[c=1,x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,tag=LegendActivate,score_Moltres_min=5,score_Moltres=5,score_StarterPick_min=3,score_StarterPick=3] ~ ~ ~ /particle cloud -1313 22 -1232 1 1 1 0.15 1000
execute @a[c=1,x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,tag=LegendActivate,score_Moltres_min=5,score_Moltres=5,score_StarterPick_min=3,score_StarterPick=3] ~ ~ ~ /execute @e[x=-1313,y=21,z=-1232,dy=3,type=pixelmon:statue] ~ ~ ~ /pokespawn Moltres lvl:70 gr:7
execute @a[c=1,x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,tag=LegendActivate,score_Moltres_min=5,score_Moltres=5,score_StarterPick_min=3,score_StarterPick=3] ~ ~ ~ /tp @e[x=-1313,y=21,z=-1232,dy=3,type=pixelmon:statue] -501 155 1238
execute @a[c=1,x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,tag=LegendActivate,score_Moltres_min=5,score_Moltres=5,score_StarterPick_min=3,score_StarterPick=3] ~ ~ ~ /playsound moltres hostile @s ~ ~ ~ 100 1 1
execute @a[c=1,x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,tag=LegendActivate,score_Moltres_min=5,score_Moltres=5,score_StarterPick_min=3,score_StarterPick=3] ~ ~ ~ /scoreboard players add @s click 1
execute @a[c=1,x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,tag=LegendActivate,score_Moltres_min=5,score_Moltres=5,score_StarterPick_min=3,score_StarterPick=3] ~ ~ ~ /advancement grant @s only kalos:legends/moltres
execute @a[c=1,x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,tag=LegendActivate,score_Moltres_min=5,score_Moltres=5,score_StarterPick_min=3,score_StarterPick=3] ~ ~ ~ /scoreboard players add @s Moltres 1
execute @a[c=1,x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,tag=LegendActivate,score_Moltres_min=6,score_StarterPick_min=3,score_StarterPick=3] ~ ~ ~ /scoreboard players tag @s[tag=LegendActivate] remove LegendActivate



#Zapdos
execute @a[c=1,x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,tag=LegendActivate,score_Zapdos_min=5,score_Zapdos=5,score_StarterPick_min=2,score_StarterPick=2] ~ ~ ~ /particle cloud -1349 22 -1232 1 1 1 0.15 1000
execute @a[c=1,x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,tag=LegendActivate,score_Zapdos_min=5,score_Zapdos=5,score_StarterPick_min=2,score_StarterPick=2] ~ ~ ~ /execute @e[x=-1349,y=21,z=-1232,dy=3,type=pixelmon:statue] ~ ~ ~ /pokespawn Zapdos lvl:70 gr:7
execute @a[c=1,x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,tag=LegendActivate,score_Zapdos_min=5,score_Zapdos=5,score_StarterPick_min=2,score_StarterPick=2] ~ ~ ~ /tp @e[x=-1349,y=21,z=-1232,dy=3,type=pixelmon:statue] -501 173 1238
execute @a[c=1,x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,tag=LegendActivate,score_Zapdos_min=5,score_Zapdos=5,score_StarterPick_min=2,score_StarterPick=2] ~ ~ ~ /playsound zapdos hostile @s ~ ~ ~ 100 1 1
execute @a[c=1,x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,tag=LegendActivate,score_Zapdos_min=5,score_Zapdos=5,score_StarterPick_min=2,score_StarterPick=2] ~ ~ ~ /scoreboard players add @s click 1
execute @a[c=1,x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,tag=LegendActivate,score_Zapdos_min=5,score_Zapdos=5,score_StarterPick_min=2,score_StarterPick=2] ~ ~ ~ /advancement grant @s only kalos:legends/zapdos
execute @a[c=1,x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,tag=LegendActivate,score_Zapdos_min=5,score_Zapdos=5,score_StarterPick_min=2,score_StarterPick=2] ~ ~ ~ /scoreboard players add @s Zapdos 1
execute @a[c=1,x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,tag=LegendActivate,score_Zapdos_min=6,score_StarterPick_min=2,score_StarterPick=2] ~ ~ ~ /scoreboard players tag @s[tag=LegendActivate] remove LegendActivate



#Articuno
execute @a[c=1,x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,tag=LegendActivate,score_Zapdos_min=5,score_Zapdos=5,score_StarterPick_min=1,score_StarterPick=1] ~ ~ ~ /particle cloud -1335 22 -1252 1 1 1 0.15 1000
execute @a[c=1,x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,tag=LegendActivate,score_Zapdos_min=5,score_Zapdos=5,score_StarterPick_min=1,score_StarterPick=1] ~ ~ ~ /execute @e[x=-1335,y=21,z=-1252,dy=3,type=pixelmon:statue] ~ ~ ~ /pokespawn Articuno lvl:70 gr:7
execute @a[c=1,x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,tag=LegendActivate,score_Zapdos_min=5,score_Zapdos=5,score_StarterPick_min=1,score_StarterPick=1] ~ ~ ~ /tp @e[x=-1335,y=21,z=-1252,dy=3,type=pixelmon:statue] -501 164 1238
execute @a[c=1,x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,tag=LegendActivate,score_Zapdos_min=5,score_Zapdos=5,score_StarterPick_min=1,score_StarterPick=1] ~ ~ ~ /playsound articuno hostile @s ~ ~ ~ 100 1 1
execute @a[c=1,x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,tag=LegendActivate,score_Zapdos_min=5,score_Zapdos=5,score_StarterPick_min=1,score_StarterPick=1] ~ ~ ~ /scoreboard players add @s click 1
execute @a[c=1,x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,tag=LegendActivate,score_Zapdos_min=5,score_Zapdos=5,score_StarterPick_min=1,score_StarterPick=1] ~ ~ ~ /advancement grant @s only kalos:legends/articuno
execute @a[c=1,x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,tag=LegendActivate,score_Zapdos_min=5,score_Zapdos=5,score_StarterPick_min=1,score_StarterPick=1] ~ ~ ~ /scoreboard players add @s Articuno 1
execute @a[c=1,x=-1371,y=20,z=-1267,dx=76,dy=30,dz=107,tag=LegendActivate,score_Articuno_min=6,score_StarterPick_min=1,score_StarterPick=1] ~ ~ ~ /scoreboard players tag @s[tag=LegendActivate] remove LegendActivate



#Volcanion
execute @a[c=1,score_Volcanion=0,x=-937,y=36,z=-742,dx=280,dy=40,dz=117,tag=LegendActivate] ~ ~ ~ /particle cloud -859 61 -690 1 1 1 0.15 1000
execute @a[c=1,score_Volcanion=0,x=-937,y=36,z=-742,dx=280,dy=40,dz=117,tag=LegendActivate] ~ ~ ~ /execute @e[x=-859,y=60,z=-690,dy=3,type=pixelmon:statue] ~ ~ ~ /pokespawn Volcanion lvl:50 gr:7
execute @a[c=1,score_Volcanion=0,x=-937,y=36,z=-742,dx=280,dy=40,dz=117,tag=LegendActivate] ~ ~ ~ /tp @e[x=-859,y=60,z=-690,dy=3,type=pixelmon:statue] -501 137 1238
execute @a[c=1,score_Volcanion=0,x=-937,y=36,z=-742,dx=280,dy=40,dz=117,tag=LegendActivate] ~ ~ ~ /playsound pixelmon:pixelmon.mob.volcanion hostile @s ~ ~ ~ 100 1 1
execute @a[c=1,score_Volcanion=0,x=-937,y=36,z=-742,dx=280,dy=40,dz=117,tag=LegendActivate] ~ ~ ~ /scoreboard players add @s click 1
execute @a[c=1,score_Volcanion=0,x=-937,y=36,z=-742,dx=280,dy=40,dz=117,tag=LegendActivate] ~ ~ ~ /advancement grant @s only kalos:mythicals/volcanion
execute @a[c=1,score_Volcanion=0,x=-937,y=36,z=-742,dx=280,dy=40,dz=117,tag=LegendActivate] ~ ~ ~ /scoreboard players add @s Volcanion 1
execute @a[c=1,score_Volcanion_min=1,x=-937,y=36,z=-742,dx=280,dy=40,dz=117,tag=LegendActivate] ~ ~ ~ /scoreboard players tag @s[tag=LegendActivate] remove LegendActivate







#Trigger battle music
scoreboard players add @a[tag=LegendActivate] click 1

scoreboard players tag @a[tag=LegendActivate] remove LegendActivate
