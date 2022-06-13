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

stopsound @s record


#Plays specific win sounds depending on TrainerClass
playsound trainerwin record @s[scores={TrainerClass=1..2}] ~ ~ ~ 1000 1 1
scoreboard players set @s[scores={TrainerClass=1..2}] MusicCooldown 21

#Gym Leaders & Elite Four
playsound gymleadervictory record @s[scores={TrainerClass=3..4}] ~ ~ ~ 1000 1 1
scoreboard players set @s[scores={TrainerClass=3..4}] MusicCooldown 114

#Champion Diantha
playsound victorychampion record @s[scores={TrainerClass=5}] ~ ~ ~ 1000 1 1
scoreboard players set @s[scores={TrainerClass=5}] MusicCooldown 73

#Team Flare
playsound flarewin record @s[scores={TrainerClass=6..7}] ~ ~ ~ 1000 1 1
scoreboard players set @s[scores={TrainerClass=6..7}] MusicCooldown 21

#Successor Korrina
playsound gymleadervictory record @s[scores={TrainerClass=8}] ~ ~ ~ 1000 1 1
scoreboard players set @s[scores={TrainerClass=8}] MusicCooldown 114


#Removes any existing battle music tags
tag @s remove TrainerBattleMusic
tag @s remove FriendBattleMusic
tag @s remove GymLeaderBattleMusic
tag @s remove EliteFourBattleMusic
tag @s remove ChampionBattleMusic
tag @s remove FlareBattleMusic
tag @s remove LysandreBattleMusic
tag @s remove KorrinaBattleMusic



#--------------------------------------------------------------------------------------------------------
#Dialogue-based events

#Dialogue 62 - Korrina Gym Leader
scoreboard players set @s[x=-1473,y=0,z=-1984,dx=183,dy=256,dz=191,scores={TrainerClass=3},tag=!Dialogue62] DialogueTrigger 62

#Grant giving Strength
tag @s[x=-1821,y=0,z=-2071,dx=273,dy=256,dz=285,scores={TrainerClass=3}] add Strength
tellraw @s[x=-1821,y=0,z=-2071,dx=273,dy=256,dz=285,scores={TrainerClass=3}] {"text":"You can now use Strength outside of battle!","italic":true,"color":"gray"}















#Gym Leader Tags
tag @s[x=-2027,y=0,z=-1934,dx=205,dy=256,dz=147,scores={TrainerClass=3}] add Viola
tag @s[x=-1821,y=0,z=-2071,dx=273,dy=256,dz=285,scores={TrainerClass=3}] add Grant
tag @s[x=-1473,y=0,z=-1984,dx=183,dy=256,dz=191,scores={TrainerClass=3}] add Korrina
tag @s[x=-2027,y=0,z=-2285,dx=205,dy=256,dz=212,scores={TrainerClass=3}] add Ramos
tag @s[x=-1877,y=0,z=-1775,dx=110,dy=256,dz=130,scores={TrainerClass=3}] add Clemont
tag @s[x=-2018,y=0,z=-1757,dx=115,dy=256,dz=113,scores={TrainerClass=3}] add Valerie
tag @s[x=-1227,y=0,z=-2125,dx=301,dy=256,dz=438,scores={TrainerClass=3}] add Olympia
tag @s[x=-871,y=0,z=-2110,dx=143,dy=256,dz=321,scores={TrainerClass=3}] add Wulfric


#Elite Four member tags
tag @s[x=-2040,y=30,z=2007,distance=..50,scores={TrainerClass=4}] add Malva
tag @s[x=-1951,y=30,z=2007,distance=..50,scores={TrainerClass=4}] add Siebold
tag @s[x=-1862,y=30,z=2007,distance=..50,scores={TrainerClass=4}] add Wikstrom
tag @s[x=-1773,y=30,z=2007,distance=..50,scores={TrainerClass=4}] add Drasna

#Champion Diantha
tag @s[x=-1960,y=15,z=1871,dx=110,dy=40,dz=110,scores={TrainerClass=5}] add Diantha
scoreboard players set @s[x=-1960,y=15,z=1871,dx=110,dy=40,dz=110,scores={TrainerClass=5}] DialogueTrigger 150


#--------------------------------------------------------------------------------------------------------



tag @s remove BattleWin
scoreboard players set @s TrainerClass 0






#
