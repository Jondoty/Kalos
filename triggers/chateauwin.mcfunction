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
scoreboard players add @a[scores={ChateauWin=1}] ChateauRank 1
scoreboard players add @a[scores={ChateauWin=2}] ChateauRank 2
scoreboard players add @a[scores={ChateauWin=3}] ChateauRank 3
scoreboard players add @a[scores={ChateauWin=4}] ChateauRank 4
scoreboard players add @a[scores={ChateauWin=5}] ChateauRank 5


#Adds Battled tag so NPC will return to underground
execute as @a[scores={ChateauWin=1..}] run tag @e[limit=1,nbt=!{pixelmon:npc_trainer}] add Battled















































#Removes tag
scoreboard players set @a[scores={ChateauWin=1..}] ChateauWin 0
