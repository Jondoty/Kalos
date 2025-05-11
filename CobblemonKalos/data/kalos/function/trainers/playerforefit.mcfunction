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
tag @s remove TrainerBattleMusic
tag @s remove FriendBattleMusic
tag @s remove GymLeaderBattleMusic
tag @s remove EliteFourBattleMusic
tag @s remove ChampionBattleMusic
tag @s remove FlareBattleMusic
tag @s remove LysandreBattleMusic
tag @s remove KorrinaBattleMusic

#Refreshes music
scoreboard players set @s click 1


tag @s remove BattleForefit
scoreboard players set @s TrainerClass 0
