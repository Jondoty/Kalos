#
#Recieve ChateauWin score from NPCs
#Adds a score depending on player's rank of nobility
#Tellraw announcing current points?
#



#Tiers of ChateauWin (who you defeat):
#1 - Baron/Baroness
#2 - Viscount/Viscountess
#3 - Earl/Countess
#4 - Marquis/Marchioness
#5 - Marquis/Marchioness (Gym Leaders)
#6 - Duke/Duchess
#7 - Grand Duchess

#Adds points for Baron/Baroness
scoreboard players add @a[score_ChateauWin_min=1,score_ChateauWin=1] ChateauRank 1
scoreboard players add @a[score_ChateauWin_min=2,score_ChateauWin=2] ChateauRank 2
scoreboard players add @a[score_ChateauWin_min=3,score_ChateauWin=3] ChateauRank 3
scoreboard players add @a[score_ChateauWin_min=4,score_ChateauWin=4] ChateauRank 4
scoreboard players add @a[score_ChateauWin_min=5,score_ChateauWin=5] ChateauRank 5


#Adds Battled tag so NPC will return to underground
execute @a[score_ChateauWin_min=1] ~ ~ ~ /scoreboard players tag @e[c=1,type=pixelmon:npc_trainer] add Battled















































#Removes tag
scoreboard players set @a[score_ChateauWin_min=1] ChateauWin 0
