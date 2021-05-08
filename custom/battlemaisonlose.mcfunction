#execute @a[x=1225,y=76,z=1545,r=40,tag=MaisonLoss] ~ ~ ~ function custom:battlemaisonlose


#Resets player's music
scoreboard players tag @s remove BattleMaisonMusic
scoreboard players tag @s remove EliteFourBattleMusic
scoreboard players add @s click 1



particle cloud 1215 75 1545 2 2 2 1 100


#------------------------------------------------------------------------------------------------------

#Tps out the Chatelaines
#Singles
execute @s[score_BattleMaison_min=1,score_BattleMaison=1,score_BattleStreak_min=19,score_BattleStreak=19] ~ ~ ~ tp @e[x=1215,y=74,z=1545,dy=3,type=pixelmon:npc_trainer,name=Nita,tag=!Super] 1227 66 1548
execute @s[score_BattleMaison_min=2,score_BattleMaison=2,score_BattleStreak_min=49,score_BattleStreak=49] ~ ~ ~ tp @e[x=1215,y=74,z=1545,dy=3,type=pixelmon:npc_trainer,name=Nita,tag=Super] 1227 66 1550

#Doubles
execute @s[score_BattleMaison_min=3,score_BattleMaison=3,score_BattleStreak_min=19,score_BattleStreak=19] ~ ~ ~ tp @e[x=1215,y=74,z=1545,dy=3,type=pixelmon:npc_trainer,name=Evelyn,tag=!Super] 1227 66 1543
execute @s[score_BattleMaison_min=4,score_BattleMaison=4,score_BattleStreak_min=49,score_BattleStreak=49] ~ ~ ~ tp @e[x=1215,y=74,z=1545,dy=3,type=pixelmon:npc_trainer,name=Evelyn,tag=Super] 1227 66 1545

#tps back in respective randomized npc
execute @s[score_BattleMaison_min=1,score_BattleMaison=1,score_BattleStreak_min=19,score_BattleStreak=19] ~ ~ ~ tp @e[x=1213,y=65,z=1549,dy=3,type=pixelmon:npc_trainer] 1215 75 1545
execute @s[score_BattleMaison_min=2,score_BattleMaison=2,score_BattleStreak_min=49,score_BattleStreak=49] ~ ~ ~ tp @e[x=1213,y=65,z=1549,dy=3,type=pixelmon:npc_trainer] 1215 75 1545

execute @s[score_BattleMaison_min=3,score_BattleMaison=3,score_BattleStreak_min=19,score_BattleStreak=19] ~ ~ ~ tp @e[x=1213,y=65,z=1544,dy=3,type=pixelmon:npc_trainer] 1215 75 1545
execute @s[score_BattleMaison_min=4,score_BattleMaison=4,score_BattleStreak_min=49,score_BattleStreak=49] ~ ~ ~ tp @e[x=1213,y=65,z=1544,dy=3,type=pixelmon:npc_trainer] 1215 75 1545


#------------------------------------------------------------------------------------------------------



#Rerolls the opponent's skin and name if not a Chatelaine
execute @s[score_BattleMaison_min=1,score_BattleMaison=2,score_BattleStreak_min=1,score_BattleStreak=18] ~ ~ ~ function data:maisonskins
execute @s[score_BattleMaison_min=1,score_BattleMaison=2,score_BattleStreak_min=20] ~ ~ ~ function data:maisonskins

execute @s[score_BattleMaison_min=3,score_BattleMaison=4,score_BattleStreak_min=1,score_BattleStreak=48] ~ ~ ~ function data:maisonskins
execute @s[score_BattleMaison_min=3,score_BattleMaison=4,score_BattleStreak_min=50] ~ ~ ~ function data:maisonskins


#------------------------------------------------------------------------------------------------------


#Rerolls the opponent's Pokemon
execute @s[score_BattleMaison_min=1,score_BattleMaison=2] ~ ~ ~ function data:maisonsingles
execute @s[score_BattleMaison_min=3,score_BattleMaison=4] ~ ~ ~ function data:maisondoubles

execute @s[score_BattleMaison_min=1,score_BattleMaison=2] ~ ~ ~ function data:maisonsingles
execute @s[score_BattleMaison_min=3,score_BattleMaison=4] ~ ~ ~ function data:maisondoubles

execute @s[score_BattleMaison_min=1,score_BattleMaison=2] ~ ~ ~ function data:maisonsingles
execute @s[score_BattleMaison_min=3,score_BattleMaison=4] ~ ~ ~ function data:maisondoubles

execute @s[score_BattleMaison_min=1,score_BattleMaison=2] ~ ~ ~ function data:maisonsingles
execute @s[score_BattleMaison_min=3,score_BattleMaison=4] ~ ~ ~ function data:maisondoubles


#------------------------------------------------------------------------------------------------------


#Resets the player's Battle Streak
scoreboard players set @s BattleStreak 0
tellraw @s {"text":"Your battle streak reset!","italic":true,"color":"gray"}



scoreboard players tag @s remove MaisonLoss



#Rotates the trainer
entitydata @e[x=1215,y=75,z=1545,dy=3,type=pixelmon:npc_trainer] {Rotation:[-90.0f,0.0f]}



#
