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
scoreboard players tag @s[score_TrainerClass_min=1,score_TrainerClass=1] add TrainerBattleMusic
scoreboard players tag @s[score_TrainerClass_min=2,score_TrainerClass=2] add FriendBattleMusic
scoreboard players tag @s[score_TrainerClass_min=3,score_TrainerClass=3] add GymLeaderBattleMusic
scoreboard players tag @s[score_TrainerClass_min=4,score_TrainerClass=4] add EliteFourBattleMusic
scoreboard players tag @s[score_TrainerClass_min=5,score_TrainerClass=5] add ChampionBattleMusic
scoreboard players tag @s[score_TrainerClass_min=6,score_TrainerClass=6] add FlareBattleMusic
scoreboard players tag @s[score_TrainerClass_min=7,score_TrainerClass=7] add LysandreBattleMusic
scoreboard players tag @s[score_TrainerClass_min=8,score_TrainerClass=8] add KorrinaBattleMusic


scoreboard players set @s click 1




scoreboard players tag @s remove BattleStart

#
