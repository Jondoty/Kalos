#execute @a[score_relog_min=1] ~ ~ ~ function custom:relog


#Sets player's Click score to restart music
scoreboard players set @s[scores={MusicCooldown=1..}] click 1




#Removes Music tags if present
tag @s[scores={MusicCooldown=1..}] remove GymLeaderBattleMusic
tag @s[scores={MusicCooldown=1..}] remove TrainerBattleMusic
tag @s[scores={MusicCooldown=1..}] remove EliteFourBattleMusic
tag @s[scores={MusicCooldown=1..}] remove ChampionBattleMusic
tag @s[scores={MusicCooldown=1..}] remove FlareBattleMusic
tag @s[scores={MusicCooldown=1..}] remove LysandreBattleMusic
tag @s[scores={MusicCooldown=1..}] remove FriendBattleMusic
tag @s[scores={MusicCooldown=1..}] remove BattleMaisonMusic
scoreboard players set @s TrainerClass 0


#Tells player day of week
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] run title @a[scores={relog=1..}] actionbar {"text":"Monday","italic":true}
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run title @a[scores={relog=1..}] actionbar {"text":"Tuesday","italic":true}
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] run title @a[scores={relog=1..}] actionbar {"text":"Wednesday","italic":true}
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run title @a[scores={relog=1..}] actionbar {"text":"Thursday","italic":true}
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] run title @a[scores={relog=1..}] actionbar {"text":"Friday","italic":true}
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] run title @a[scores={relog=1..}] actionbar {"text":"Saturday","italic":true}
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] run title @a[scores={relog=1..}] actionbar {"text":"Sunday","italic":true}




#Removes specific dialogue tags

#Shalour Hiker intriguing stone
tag @s remove Dialogue264



#Resets Relog score
scoreboard players set @s relog 0




#
