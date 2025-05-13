#Activated by when a player defeats an NPC.
#Scores highly depend on which NPC to activate to continue story beats

scoreboard players set @s BattleStart 0

#1 - Team Flare Win
execute as @s[tag=!RadioOff,scores={BattleEnd=1}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleEnd=1}] run playsound flarewin record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleEnd=1}] run scoreboard players set @s MusicCooldown 23

#2 - Gym Leader battle Win
execute as @s[tag=!RadioOff,scores={BattleEnd=2}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleEnd=2}] run playsound gymvictory record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleEnd=2}] run scoreboard players set @s MusicCooldown 114

#3 - Trainer Win
execute as @s[tag=!RadioOff,scores={BattleEnd=3}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleEnd=3}] run playsound trainerwin record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleEnd=3}] run scoreboard players set @s MusicCooldown 15

#4 - Wild Pokemon Win
execute as @s[tag=!RadioOff,scores={BattleEnd=4}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleEnd=4}] run playsound wildpokemonwin record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleEnd=4}] run scoreboard players set @s MusicCooldown 15

#5 - Diantha Win
execute as @s[tag=!RadioOff,scores={BattleEnd=5}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleEnd=5}] run playsound victorychampion record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleEnd=5}] run scoreboard players set @s MusicCooldown 73



scoreboard players set @s BattleEnd 0

#