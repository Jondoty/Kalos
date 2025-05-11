#Removes the tag that adds time to the player's score, returns to default team
tag @s remove RunTimer
team join Default @s


#Adds the RestaurantTimer score to the total score
scoreboard players operation @s RestaurantTotal += @s RestaurantTimer


#Resets battle-specific timer for next battle
scoreboard players set @s RestaurantTimer 0

execute as @s[scores={RestaurantBattle=1}] run scoreboard players reset Le_Nah Battle_Time
execute as @s[scores={RestaurantBattle=2}] run scoreboard players reset Le_Yeah Battle_Time
execute as @s[scores={RestaurantBattle=3}] run scoreboard players reset Le_Wow Battle_Time
execute as @s[scores={RestaurantBattle=4}] run scoreboard players reset High_Roller Battle_Time
