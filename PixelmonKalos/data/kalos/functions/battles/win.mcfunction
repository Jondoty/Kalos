#Score of BattleWin # given to activate a specific dialogue or event in the story.
#Default score of 1 just given by any regular NPC without any followup or custom music/dialogue.

#/tedit add LOSS scoreboard players set @pl BattleWin 1



#General win music
execute as @s[scores=BattleWin=1,tag=!RadioOff] run scoreboard players tag @s remove TrainerBattleMusic -p
execute as @s[scores=BattleWin=1,tag=!RadioOff] run stopsound @s record
execute as @s[scores=BattleWin=1,tag=!RadioOff] run scoreboard players set @s MusicCooldown 0
execute as @s[scores=BattleWin=1,tag=!RadioOff] run playsound trainerwin record @s ~ ~ ~ 1 1 1
execute as @s[scores=BattleWin=1,tag=!RadioOff] run scoreboard players set @s MusicCooldown 22




#Story-dependent triggers






















#Gym Leaders













#Friend Safari Tags



















scoreboard players set @s BattleWin 0

#
