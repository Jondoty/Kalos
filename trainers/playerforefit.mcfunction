#NPC applies a TrainerClass score to player to determine which music they hear per battle

#1 - Normal Trainer
#2 - Friends
#3 - Gym Leader
#4 - Elite Four
#5 - Champion
#6 - Team Flare Grunts/Admins
#7 - Team Flare Lysandre
#8 - Successor Korrina

#---------------------------------------------------------------------------------------------------------








#Removes any existing battle music tags
scoreboard players tag @s remove TrainerBattleMusic
scoreboard players tag @s remove FriendBattleMusic
scoreboard players tag @s remove GymLeaderBattleMusic
scoreboard players tag @s remove EliteFourBattleMusic
scoreboard players tag @s remove ChampionBattleMusic
scoreboard players tag @s remove FlareBattleMusic
scoreboard players tag @s remove LysandreBattleMusic
scoreboard players tag @s remove KorrinaBattleMusic

#Refreshes music
scoreboard players set @s click 1


scoreboard players tag @s remove BattleForefit
scoreboard players set @s TrainerClass 0
