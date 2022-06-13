#NPC applies a TrainerClass score to player to determine which music they hear per battle

#1 - Normal Trainer
#2 - Friends
#3 - Gym Leader
#4 - Elite Four
#5 - Champion
#6 - Team Flare Grunts/Admins
#7 - Team Flare Lysandre
#8 - Successor Korrina

#--------------------------------------------------------------------------------------------------------

#Adds tags based on TrainerClass score # applied by NPC with tag
tag @s[scores={TrainerClassTrainerClass=1}] add TrainerBattleMusic
tag @s[scores={TrainerClassTrainerClass=2}] add FriendBattleMusic
tag @s[scores={TrainerClassTrainerClass=3}] add GymLeaderBattleMusic
tag @s[scores={TrainerClassTrainerClass=4}] add EliteFourBattleMusic
tag @s[scores={TrainerClassTrainerClass=5}] add ChampionBattleMusic
tag @s[scores={TrainerClassTrainerClass=6}] add FlareBattleMusic
tag @s[scores={TrainerClassTrainerClass=7}] add LysandreBattleMusic
tag @s[scores={TrainerClassTrainerClass=8}] add KorrinaBattleMusic


scoreboard players set @s click 1




tag @s remove BattleStart

#
