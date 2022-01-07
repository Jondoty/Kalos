#execute @a[x=1225,y=76,z=1545,r=40,tag=MaisonLoss] ~ ~ ~ function custom:battlemaisonlose


#Resets player's music
tag @s remove BattleMaisonMusic
tag @s remove EliteFourBattleMusic
scoreboard players add @s click 1



particle cloud 1215 75 1545 2 2 2 1 100


#------------------------------------------------------------------------------------------------------

#Tps out the Chatelaines
#Singles
execute as @s[scores={BattleMaison=1,BattleStreak=19}] run tp @e[x=1215,y=74,z=1545,dy=3,nbt=!{pixelmon:npc_trainer},name=Nita,tag=!Super] 1227 66 1548
execute as @s[scores={BattleMaison=2,BattleStreak=49}] run tp @e[x=1215,y=74,z=1545,dy=3,nbt=!{pixelmon:npc_trainer},name=Nita,tag=Super] 1227 66 1550

#Doubles
execute as @s[scores={BattleMaison=3,BattleStreak=19}] run tp @e[x=1215,y=74,z=1545,dy=3,nbt=!{pixelmon:npc_trainer},name=Evelyn,tag=!Super] 1227 66 1543
execute as @s[scores={BattleMaison=4,BattleStreak=49}] run tp @e[x=1215,y=74,z=1545,dy=3,nbt=!{pixelmon:npc_trainer},name=Evelyn,tag=Super] 1227 66 1545

#tps back in respective randomized npc
execute as @s[scores={BattleMaison=1,BattleStreak=19}] run tp @e[x=1213,y=65,z=1549,dy=3,nbt=!{pixelmon:npc_trainer}] 1215 75 1545
execute as @s[scores={BattleMaison=2,BattleStreak=49}] run tp @e[x=1213,y=65,z=1549,dy=3,nbt=!{pixelmon:npc_trainer}] 1215 75 1545

execute as @s[scores={BattleMaison=3,BattleStreak=19}] run tp @e[x=1213,y=65,z=1544,dy=3,nbt=!{pixelmon:npc_trainer}] 1215 75 1545
execute as @s[scores={BattleMaison=4,BattleStreak=49}] run tp @e[x=1213,y=65,z=1544,dy=3,nbt=!{pixelmon:npc_trainer}] 1215 75 1545


#------------------------------------------------------------------------------------------------------



#Rerolls the opponent's skin and name if not a Chatelaine
execute as @s[scores={BattleMaison=1..2,BattleStreak=1..18}] run function kalos:data/maisonskins
execute as @s[scores={BattleMaison=1..2,BattleStreak=20..}] run function kalos:data/maisonskins

execute as @s[scores={BattleMaison=3..4,BattleStreak=1..48}] run function kalos:data/maisonskins
execute as @s[scores={BattleMaison=3..4,BattleStreak=50..}] run function kalos:data/maisonskins


#------------------------------------------------------------------------------------------------------


#Rerolls the opponent's Pokemon
execute as @s[scores={BattleMaison=1..2}] run function kalos:data/maisonsingles
execute as @s[scores={BattleMaison=3..4}] run function kalos:data/maisondoubles

execute as @s[scores={BattleMaison=1..2}] run function kalos:data/maisonsingles
execute as @s[scores={BattleMaison=3..4}] run function kalos:data/maisondoubles

execute as @s[scores={BattleMaison=1..2}] run function kalos:data/maisonsingles
execute as @s[scores={BattleMaison=3..4}] run function kalos:data/maisondoubles

execute as @s[scores={BattleMaison=1..2}] run function kalos:data/maisonsingles
execute as @s[scores={BattleMaison=3..4}] run function kalos:data/maisondoubles


#------------------------------------------------------------------------------------------------------


#Resets the player's Battle Streak
scoreboard players set @s BattleStreak 0
tellraw @s {"text":"Your battle streak reset!","italic":true,"color":"gray"}



tag @s remove MaisonLoss



#Rotates the trainer
data modify entity @e[limit=1,x=1215,y=75,z=1545,dy=3,nbt=!{pixelmon:npc_trainer}] {Rotation:[-90.0f,0.0f]}



#
