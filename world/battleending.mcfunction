#function world:battleending if @a[score_BattleEnding_min=1]

#NPC commands for loss would then be
#/tedit add LOSS scoreboard players set @pl BattleEnding 1
#/tedit add LOSS function world:battleending


#1 - Standard Trainer
scoreboard players tag @a[score_BattleEnding_min=1,score_BattleEnding=1] remove TrainerBattleMusic
stopsound @a[score_BattleEnding_min=1,score_BattleEnding=1] record -p
scoreboard players set @a[score_BattleEnding_min=1,score_BattleEnding=1] MusicCooldown 0
playsound trainerwin record @a[score_BattleEnding_min=1,score_BattleEnding=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_BattleEnding_min=1,score_BattleEnding=1] MusicCooldown 300

#2 - Gym Leader



#3 - Team Flare




#4 - Champion




scoreboard players set @a[score_BattleEnding_min=1] BattleEnding 0
