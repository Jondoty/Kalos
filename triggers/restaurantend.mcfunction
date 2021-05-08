#Removes the tag that adds time to the player's score, returns to default team
scoreboard players tag @s remove RunTimer
scoreboard teams join Default @s


#Adds the RestaurantTimer score to the total score
scoreboard players operation @s RestaurantTotal += @s RestaurantTimer


#Resets battle-specific timer for next battle
scoreboard players set @s RestaurantTimer 0

execute @s[score_RestaurantBattle_min=1,score_RestaurantBattle=1] ~ ~ ~ scoreboard players reset Le_Nah Battle_Time
execute @s[score_RestaurantBattle_min=2,score_RestaurantBattle=2] ~ ~ ~ scoreboard players reset Le_Yeah Battle_Time
execute @s[score_RestaurantBattle_min=3,score_RestaurantBattle=3] ~ ~ ~ scoreboard players reset Le_Wow Battle_Time
execute @s[score_RestaurantBattle_min=4,score_RestaurantBattle=4] ~ ~ ~ scoreboard players reset High_Roller Battle_Time
