#execute @a[score_relog_min=1] ~ ~ ~ function custom:relog


#Sets player's Click score to restart music
scoreboard players set @s[score_MusicCooldown_min=1] click 1




#Removes Music tags if present
scoreboard players tag @s[score_MusicCooldown_min=1] remove GymLeaderBattleMusic
scoreboard players tag @s[score_MusicCooldown_min=1] remove TrainerBattleMusic
scoreboard players tag @s[score_MusicCooldown_min=1] remove EliteFourBattleMusic
scoreboard players tag @s[score_MusicCooldown_min=1] remove ChampionBattleMusic
scoreboard players tag @s[score_MusicCooldown_min=1] remove FlareBattleMusic
scoreboard players tag @s[score_MusicCooldown_min=1] remove LysandreBattleMusic
scoreboard players tag @s[score_MusicCooldown_min=1] remove FriendBattleMusic
scoreboard players tag @s[score_MusicCooldown_min=1] remove BattleMaisonMusic


#Tells player day of week
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=1,score_Weekday=1] ~ ~ ~ title @a[score_relog_min=1] actionbar {"text":"Monday","italic":true}
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ title @a[score_relog_min=1] actionbar {"text":"Tuesday","italic":true}
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=3,score_Weekday=3] ~ ~ ~ title @a[score_relog_min=1] actionbar {"text":"Wednesday","italic":true}
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ title @a[score_relog_min=1] actionbar {"text":"Thursday","italic":true}
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=5,score_Weekday=5] ~ ~ ~ title @a[score_relog_min=1] actionbar {"text":"Friday","italic":true}
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=6,score_Weekday=6] ~ ~ ~ title @a[score_relog_min=1] actionbar {"text":"Saturday","italic":true}
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=7,score_Weekday=7] ~ ~ ~ title @a[score_relog_min=1] actionbar {"text":"Sunday","italic":true}




#Removes specific dialogue tags

#Shalour Hiker intriguing stone
scoreboard players tag @s remove Dialogue264



#Resets Relog score
scoreboard players set @s relog 0




#
