#runs if the player leaves the world, upon joining back runs these commands

#Sets player's Click score to restart music
function kalos:triggers/stopsound

#Clears out advancements for signs or npcs if stuck in
advancement revoke @s only kalos:click/cuttrees
advancement revoke @s only kalos:click/itemclick
advancement revoke @s only kalos:click/npcs
advancement revoke @s only kalos:click/rocksmash
advancement revoke @s only kalos:click/signs


#Removes Music tags if present
scoreboard players set @s BattleStart 0
scoreboard players set @s BattleEnd 0


#Tells player day of week
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] run title @s actionbar {"text":"Monday","italic":true}
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run title @s actionbar {"text":"Tuesday","italic":true}
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] run title @s actionbar {"text":"Wednesday","italic":true}
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run title @s actionbar {"text":"Thursday","italic":true}
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] run title @s actionbar {"text":"Friday","italic":true}
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] run title @s actionbar {"text":"Saturday","italic":true}
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] run title @s actionbar {"text":"Sunday","italic":true}




#Removes specific dialogue tags

#Shalour Hiker intriguing stone
tag @s remove Dialogue264



#Resets Relog score
scoreboard players set @s relog 0




#
