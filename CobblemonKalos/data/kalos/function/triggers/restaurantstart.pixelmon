#if player isn't presently in a restaurant battle
execute as @s[scores={RestaurantBattle=0}] run tellraw @s {"text":"You aren't the one dining at this restaurant!","italic":true,"color":"gray"}
execute as @s[scores={RestaurantBattle=0}] run tag @s remove Dialogue999
execute as @s[scores={RestaurantBattle=0}] run scoreboard players set @s DialogueTrigger 999
execute as @s[scores={RestaurantBattle=0}] run tag @s add Skip

tag @s[tag=!Skip] add RunTimer
team join Restaurant @s[tag=!Skip]


#Removes Skip tag if present
 tag @s remove Skip
