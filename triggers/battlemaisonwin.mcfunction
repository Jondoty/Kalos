#execute @a[x=1225,y=76,z=1545,r=40,tag=MaisonWin] ~ ~ ~ function custom:battlemaisonwin

#Rules

#LevelCap: 50
#RaiseToCap
#NumPokemon: 3
#FullHeal
#Clauses
#bag
#forfeit
#legendary



#Logic:
#Player gets a BattleMaison score depending on which option is selected from the receptionist
#Player steps on the Battle Maison stage, tps in an NPC and rolls its entitydata depending on which
#   If an NPC and player are already on stage, apply a Skip tag
#RNG rolls for trainer's Pokemon based on Regular/Super tags
#entitydata changes the trainer's Pokemon
#RNG rolls for trainer's name and skin based on current streak
#If player wins, apply a MaisonWin tag, add a BattleStreak and BattlePoint score, rolls again for another trainer
#If player loses, apply a MaisonLose tag, ends BattleStreak score from counting
#When no players are found on stage,


#Battle Maison score states
#0 - Not active
#1 - Singles
#2 - SinglesSuper
#3 - Doubles
#4 - DoublesSuper

#--------------------------------------------------------------------------------------------------------------------------------------------------------------------


#Commands NPCs should have
#battle_start
#/tedit add BATTLE_START /tag @pl add BattleMaisonMusic
#/tedit add BATTLE_START /scoreboard players add @pl click 1

#forfit
#/tedit add FORFEIT /tag @pl add MaisonLoss

#win (npc win)
#/tedit add WIN /tag @pl add MaisonLoss

#loss (npc loss)
#/tedit add LOSS /tag @pl add MaisonWin



#Battle Chatelaines should have
#battle_start
#/tedit add BATTLE_START /tag @pl add EliteFourBattleMusic
#/tedit add BATTLE_START /scoreboard players add @pl click 1

#forfit
#/tedit add FORFEIT /tag @pl add MaisonLoss

#win (npc win)
#/tedit add WIN /tag @pl add MaisonLoss

#loss (npc loss)
#/tedit add LOSS /scoreboard players set @pl DialogueTrigger 231 (Nita reg)
#/tedit add LOSS /scoreboard players set @pl DialogueTrigger 233 (Evelyn reg)
#/tedit add LOSS /scoreboard players set @pl DialogueTrigger 235 (Nita super)
#/tedit add LOSS /scoreboard players set @pl DialogueTrigger 237 (Evelyn super)



#execute @a[x=1219,y=70,z=1545,r=50,tag=MaisonLoss] ~ ~ ~ function custom:battlemaisonlose
#execute @a[x=1219,y=70,z=1545,r=50,tag=MaisonWin] ~ ~ ~ function custom:battlemaisonwin

#--------------------------------------------------------------------------------------------------------------------------------------------------------------------


#Resets player's music
tag @s remove BattleMaisonMusic
tag @s remove EliteFourBattleMusic
scoreboard players set @s MusicCooldown 300
stopsound @s record
playsound trainerwin record @s ~ ~ ~ 1000 1 1




#--------------------------------------------------------------------------------------------------------------------------------------------------------------------


#Adds a point to the Player's Battle Streak
scoreboard players add @s BattleStreak 1


#Adds a Battle Point to the player (unsure if this should just be a /give item command)
execute as @s[scores={BattleMaison=1,BattleStreak=1..10}] run scoreboard players add @s BattlePoint 1
execute as @s[scores={BattleMaison=1,BattleStreak=11..19}] run scoreboard players add @s BattlePoint 2
execute as @s[scores={BattleMaison=1,BattleStreak=20}] run scoreboard players add @s BattlePoint 20
execute as @s[scores={BattleMaison=1,BattleStreak=21..}] run scoreboard players add @s BattlePoint 3

execute as @s[scores={BattleMaison=2,BattleStreak=1,score_BattleStreak=10}] run scoreboard players add @s BattlePoint 2
execute as @s[scores={BattleMaison=2,BattleStreak=11,score_BattleStreak=20}] run scoreboard players add @s BattlePoint 3
execute as @s[scores={BattleMaison=2,BattleStreak=21,score_BattleStreak=30}] run scoreboard players add @s BattlePoint 4
execute as @s[scores={BattleMaison=2,BattleStreak=31,score_BattleStreak=40}] run scoreboard players add @s BattlePoint 5
execute as @s[scores={BattleMaison=2,BattleStreak=49,score_BattleStreak=49}] run scoreboard players add @s BattlePoint 6
execute as @s[scores={BattleMaison=2,BattleStreak=50,score_BattleStreak=50}] run scoreboard players add @s BattlePoint 50
execute as @s[scores={BattleMaison=2,BattleStreak=51..}] run scoreboard players add @s BattlePoint 7


execute as @s[scores={BattleMaison=3,BattleStreak=1..10}] run scoreboard players add @s BattlePoint 1
execute as @s[scores={BattleMaison=3,BattleStreak=11..19}] run scoreboard players add @s BattlePoint 2
execute as @s[scores={BattleMaison=3,BattleStreak=20}] run scoreboard players add @s BattlePoint 20
execute as @s[scores={BattleMaison=3,BattleStreak=21..}] run scoreboard players add @s BattlePoint 3

execute as @s[scores={BattleMaison=4,BattleStreak=1..10}] run scoreboard players add @s BattlePoint 2
execute as @s[scores={BattleMaison=4,BattleStreak=11..20}] run scoreboard players add @s BattlePoint 3
execute as @s[scores={BattleMaison=4,BattleStreak=21..30}] run scoreboard players add @s BattlePoint 4
execute as @s[scores={BattleMaison=4,BattleStreak=31..40}] run scoreboard players add @s BattlePoint 5
execute as @s[scores={BattleMaison=4,BattleStreak=49..49}] run scoreboard players add @s BattlePoint 6
execute as @s[scores={BattleMaison=4,BattleStreak=50..50}] run scoreboard players add @s BattlePoint 50
execute as @s[scores={BattleMaison=4,BattleStreak=51..}] run scoreboard players add @s BattlePoint 7



#Tellraws
execute as @s[scores={BattleMaison=1,BattleStreak=1..10}] run tellraw @s {"text":"You recieved 1 battle point!","italic":true,"color":"gray"}
execute as @s[scores={BattleMaison=1,BattleStreak=11..19}] run tellraw @s {"text":"You recieved 2 battle points!","italic":true,"color":"gray"}
execute as @s[scores={BattleMaison=1,BattleStreak=20}] run tellraw @s {"text":"You recieved 20 battle points!","italic":true,"color":"gray"}
execute as @s[scores={BattleMaison=1,BattleStreak=21..}] run tellraw @s {"text":"You recieved 3 battle points!","italic":true,"color":"gray"}

execute as @s[scores={BattleMaison=2,BattleStreak=1..10}] run tellraw @s {"text":"You recieved 2 battle points!","italic":true,"color":"gray"}
execute as @s[scores={BattleMaison=2,BattleStreak=11..20}] run tellraw @s {"text":"You recieved 3 battle points!","italic":true,"color":"gray"}
execute as @s[scores={BattleMaison=2,BattleStreak=21..30}] run tellraw @s {"text":"You recieved 4 battle points!","italic":true,"color":"gray"}
execute as @s[scores={BattleMaison=2,BattleStreak=31..40}] run tellraw @s {"text":"You recieved 5 battle points!","italic":true,"color":"gray"}
execute as @s[scores={BattleMaison=2,BattleStreak=49..49}] run tellraw @s {"text":"You recieved 6 battle points!","italic":true,"color":"gray"}
execute as @s[scores={BattleMaison=2,BattleStreak=50..50}] run tellraw @s {"text":"You recieved 50 battle points!","italic":true,"color":"gray"}
execute as @s[scores={BattleMaison=2,BattleStreak=51}] run tellraw @s {"text":"You recieved 7 battle points!","italic":true,"color":"gray"}


execute as @s[scores={BattleMaison=3,BattleStreak=1..10}] run tellraw @s {"text":"You recieved 1 battle point!","italic":true,"color":"gray"}
execute as @s[scores={BattleMaison=3,BattleStreak=11..19}] run tellraw @s {"text":"You recieved 2 battle points!","italic":true,"color":"gray"}
execute as @s[scores={BattleMaison=3,BattleStreak=20..20}] run tellraw @s {"text":"You recieved 20 battle points!","italic":true,"color":"gray"}
execute as @s[scores={BattleMaison=3,BattleStreak=21..}] run tellraw @s {"text":"You recieved 3 battle points!","italic":true,"color":"gray"}

execute as @s[scores={BattleMaison=4,BattleStreak=1..10}] run tellraw @s {"text":"You recieved 2 battle points!","italic":true,"color":"gray"}
execute as @s[scores={BattleMaison=4,BattleStreak=11..20}] run tellraw @s {"text":"You recieved 3 battle points!","italic":true,"color":"gray"}
execute as @s[scores={BattleMaison=4,BattleStreak=21..30}] run tellraw @s {"text":"You recieved 4 battle points!","italic":true,"color":"gray"}
execute as @s[scores={BattleMaison=4,BattleStreak=31..40}] run tellraw @s {"text":"You recieved 5 battle points!","italic":true,"color":"gray"}
execute as @s[scores={BattleMaison=4,BattleStreak=49..49}] run tellraw @s {"text":"You recieved 6 battle points!","italic":true,"color":"gray"}
execute as @s[scores={BattleMaison=4,BattleStreak=50..50}] run tellraw @s {"text":"You recieved 50 battle points!","italic":true,"color":"gray"}
execute as @s[scores={BattleMaison=4,BattleStreak=51..}] run tellraw @s {"text":"You recieved 7 battle points!","italic":true,"color":"gray"}








#Visual switching particles
particle cloud 1215 75 1545 2 2 2 1 100














#--------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Tps out the Chatelaines
#Singles
execute as @s[scores={BattleMaison=1,BattleStreak=20}] run tp @e[x=1215,y=74,z=1545,dy=3,nbt=!{pixelmon:npc_trainer},name=Nita,tag=!Super] 1227 66 1548
execute as @s[scores={BattleMaison=2,BattleStreak=50}] run tp @e[x=1215,y=74,z=1545,dy=3,nbt=!{pixelmon:npc_trainer},name=Nita,tag=Super] 1227 66 1550

#Doubles
execute as @s[scores={BattleMaison=3,BattleStreak=20}] run tp @e[x=1215,y=74,z=1545,dy=3,nbt=!{pixelmon:npc_trainer},name=Evelyn,tag=!Super] 1227 66 1543
execute as @s[scores={BattleMaison=4,BattleStreak=50}] run tp @e[x=1215,y=74,z=1545,dy=3,nbt=!{pixelmon:npc_trainer},name=Evelyn,tag=Super] 1227 66 1545

#tps back in respective randomized npc
execute as @s[scores={BattleMaison=1,BattleStreak=20}] run tp @e[x=1213,y=65,z=1549,dy=3,nbt=!{pixelmon:npc_trainer}] 1215 75 1545
execute as @s[scores={BattleMaison=2,BattleStreak=50}] run tp @e[x=1213,y=65,z=1549,dy=3,nbt=!{pixelmon:npc_trainer}] 1215 75 1545

execute as @s[scores={BattleMaison=3,BattleStreak=20}] run tp @e[x=1213,y=65,z=1544,dy=3,nbt=!{pixelmon:npc_trainer}] 1215 75 1545
execute as @s[scores={BattleMaison=4,BattleStreak=50}] run tp @e[x=1213,y=65,z=1544,dy=3,nbt=!{pixelmon:npc_trainer}] 1215 75 1545



#--------------------------------------------------------------------------------------------------------------------------------------------------------------------

#tp returns the trainer if it is a Chatelaine
execute as @s[scores={BattleMaison=1..2,BattleStreak=19}] run tp @e[x=1215,y=74,z=1545,dy=3,nbt=!{pixelmon:npc_trainer},tag=Single] 1213 66 1549
execute as @s[scores={BattleMaison=2,BattleStreak=49}] run tp @e[x=1215,y=74,z=1545,dy=3,nbt=!{pixelmon:npc_trainer},tag=Single] 1213 66 1549

execute as @s[scores={BattleMaison=3,BattleStreak=19}] run tp @e[x=1215,y=74,z=1545,dy=3,nbt=!{pixelmon:npc_trainer},tag=Double] 1213 66 1544
execute as @s[scores={BattleMaison=4,BattleStreak=49}] run tp @e[x=1215,y=74,z=1545,dy=3,nbt=!{pixelmon:npc_trainer},tag=Double] 1213 66 1544


#tps in the Chatelaine boss
#Single (Nita)
execute as @s[scores={BattleMaison=1,BattleStreak=19}] run tp @e[x=1227,y=65,z=1548,dy=3,nbt=!{pixelmon:npc_trainer}] 1215 75 1545
execute as @s[scores={BattleMaison=1,BattleStreak=19}] run tag @s remove Dialogue230
execute as @s[scores={BattleMaison=1,BattleStreak=19}] run tag @s remove Dialogue231
execute as @s[scores={BattleMaison=1,BattleStreak=19}] run scoreboard players set @s DialogueTrigger 230

#Single Super (Nita)
execute as @s[scores={BattleMaison=2,BattleStreak=49}] run tp @e[x=1227,y=65,z=1550,dy=3,nbt=!{pixelmon:npc_trainer}] 1215 75 1545
execute as @s[scores={BattleMaison=2,BattleStreak=49}] run tag @s remove Dialogue234
execute as @s[scores={BattleMaison=2,BattleStreak=49}] run tag @s remove Dialogue235
execute as @s[scores={BattleMaison=2,BattleStreak=49}] run scoreboard players set @s DialogueTrigger 234

#Double (Evelyn)
execute as @s[scores={BattleMaison=3,BattleStreak=19}] run tp @e[x=1227,y=65,z=1543,dy=3,nbt=!{pixelmon:npc_trainer}] 1215 75 1545
execute as @s[scores={BattleMaison=3,BattleStreak=19}] run tag @s remove Dialogue232
execute as @s[scores={BattleMaison=3,BattleStreak=19}] run tag @s remove Dialogue233
execute as @s[scores={BattleMaison=3,BattleStreak=19}] run scoreboard players set @s DialogueTrigger 232

#Double Super (Evelyn)
execute as @s[scores={BattleMaison=4,BattleStreak=49}] run tp @e[x=1227,y=65,z=1545,dy=3,nbt=!{pixelmon:npc_trainer}] 1215 75 1545
execute as @s[scores={BattleMaison=4,BattleStreak=49}] run tag @s remove Dialogue236
execute as @s[scores={BattleMaison=4,BattleStreak=49}] run tag @s remove Dialogue237
execute as @s[scores={BattleMaison=4,BattleStreak=49}] run scoreboard players set @s DialogueTrigger 236






#-------------------------------------------------------------------------------Rerolls Pokemon and Skins-------------------------------------------------------------------------------------

#Rerolls the opponent's skin and name if not a Chatelaine
execute as @s[scores={BattleMaison=1..2,BattleStreak=1..18}] run function kalos:data/maisonskins
execute as @s[scores={BattleMaison=1..2,BattleStreak=20..}] run function data:maisonskins

execute as @s[scores={BattleMaison=3..4,BattleStreak=1..48}] run function kalos:data/maisonskins
execute as @s[scores={BattleMaison=3..4,BattleStreak=50..}] run function data:maisonskins



#Rerolls the opponent's Pokemon
execute as @s[scores={BattleMaison=1..2}] run function kalos:data/maisonsingles
execute as @s[scores={BattleMaison=3..4}] run function kalos:data/maisondoubles

execute as @s[scores={BattleMaison=1..2}] run function kalos:data/maisonsingles
execute as @s[scores={BattleMaison=3..4}] run function kalos:data/maisondoubles

execute as @s[scores={BattleMaison=1..2}] run function kalos:data/maisonsingles
execute as @s[scores={BattleMaison=3..4}] run function kalos:data/maisondoubles

execute as @s[scores={BattleMaison=1..2}] run function kalos:data/maisonsingles
execute as @s[scores={BattleMaison=3..4}] run function kalos:data/maisondoubles





#Tells player their Battle Streak
execute as @s run function kalos:data/maisonstreak
playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 100 1 1




#Rotates the trainer
data modify entity @e[limit=1,x=1215,y=75,z=1545,dy=3,nbt=!{pixelmon:npc_trainer}] {Rotation:[-90.0f,0.0f]}

tag @s remove MaisonWin


#
