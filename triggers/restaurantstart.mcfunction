#if player isn't presently in a restaurant battle
execute @s[score_RestaurantBattle=0] ~ ~ ~ tellraw @s {"text":"You aren't the one dining at this restaurant!","italic":true,"color":"gray"}
execute @s[score_RestaurantBattle=0] ~ ~ ~ scoreboard players tag @s remove Dialogue999
execute @s[score_RestaurantBattle=0] ~ ~ ~ scoreboard players set @s DialogueTrigger 999
execute @s[score_RestaurantBattle=0] ~ ~ ~ scoreboard players tag @s add Skip

scoreboard players tag @s[tag=!Skip] add RunTimer
scoreboard teams join Restaurant @s[tag=!Skip]


#Removes Skip tag if present
scoreboard players tag @s remove Skip
