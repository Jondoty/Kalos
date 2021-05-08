#MusicCooldown score equal to length of song in seconds x20 (for MC tick speed)
#Scoreboard objective types are dummy. Tags that target player in target selector given by NPC trainers via TrainerCommands.
#Coordinates are based around specific areas within the map. Higher-up commands run before lower commands, allowing priority of music within the same areas.


#----------------------------------------------------------------Battle Music & Tag-based ----------------------------------------------------------------

#Gym Leader Battles
playsound gymleaderbattle record @a[tag=GymLeaderBattleMusic,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[tag=GymLeaderBattleMusic,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 5180

#Trainer Battles
playsound trainerbattle record @a[tag=TrainerBattleMusic,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[tag=TrainerBattleMusic,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 3240

#Trainer Battles Win
#playsound trainerbattle record @a[tag=TrainerWinMusic,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
#scoreboard players set @a[tag=TrainerWinMusic,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 300
#scoreboard players tag @a[tag=TrainerWinMusic] remove TrainerWinMusic

#Elite Four Battles
playsound elitefourbattle record @a[tag=EliteFourBattleMusic,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[tag=EliteFourBattleMusic,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 5520

#Elite Four Champion Battles
playsound elitefourbattlechamp record @a[tag=ChampionBattleMusic,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[tag=ChampionBattleMusic,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 3700

#Team Flare Battles
playsound flarebattle record @a[tag=FlareBattleMusic,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[tag=FlareBattleMusic,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2840

#Lysandre Battles
playsound lysandrebattle record @a[tag=LysandreBattleMusic,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[tag=LysandreBattleMusic,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 3280

#Friend/Rival Battles
playsound friendbattle record @a[tag=FriendBattleMusic,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[tag=FriendBattleMusic,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2360

#Successor Korrina Battle
playsound successorbattle record @a[tag=KorrinaBattleMusic,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[tag=KorrinaBattleMusic,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 4520


#Legendary Battle X Y & Z
execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!LegendaryXY] add LegendaryXY {ndex:716s,OwnerUUID:""}
execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!LegendaryXY] add LegendaryXY {ndex:717s,OwnerUUID:""}

execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[x=-2369,y=40,z=-1051,dx=65,dy=20,dz=65,type=pixelmon:pixelmon,tag=!LegendaryXY] add LegendaryXY {ndex:716s,OwnerUUID:""}
execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[x=-2369,y=40,z=-1051,dx=65,dy=20,dz=65,type=pixelmon:pixelmon,tag=!LegendaryXY] add LegendaryXY {ndex:717s,OwnerUUID:""}

execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!LegendaryXY] add LegendaryXY {ndex:718s,OwnerUUID:""}
execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!LegendaryXY] add LegendaryXY {ndex:719s,OwnerUUID:""}
execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!LegendaryXY] add LegendaryXY {ndex:720s,OwnerUUID:""}
execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!LegendaryXY] add LegendaryXY {ndex:721s,OwnerUUID:""}

execute @e[tag=LegendaryXY,type=pixelmon:pixelmon,c=1] ~ ~ ~ /playsound legendarybattlexy record @a[r=10,score_MusicCooldown=0,score_MusicState_min=1,score_TalkTime=0] ~ ~ ~ 1000 1 1
execute @e[tag=LegendaryXY,type=pixelmon:pixelmon] ~ ~ ~ /scoreboard players set @a[r=10,score_MusicCooldown=0,score_MusicState_min=1,score_TalkTime=0] MusicCooldown 3200

#Flare HQ room-specific music if legend is present
execute @e[x=-2369,y=40,z=-1051,dx=65,dy=20,dz=65,tag=LegendaryXY,type=pixelmon:pixelmon,c=1] ~ ~ ~ /playsound legendarybattlexy record @a[x=-2369,y=40,z=-1051,dx=65,dy=20,dz=65,score_MusicCooldown=0,score_MusicState_min=1,score_TalkTime=0] ~ ~ ~ 1000 1 1
execute @e[x=-2369,y=40,z=-1051,dx=65,dy=20,dz=65,tag=LegendaryXY,type=pixelmon:pixelmon] ~ ~ ~ /scoreboard players set @a[x=-2369,y=40,z=-1051,dx=65,dy=20,dz=65,score_MusicCooldown=0,score_MusicState_min=1,score_TalkTime=0] MusicCooldown 3200


#Legendary Battle Kanto
execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!LegendaryKanto] add LegendaryKanto {ndex:144s,OwnerUUID:""}
execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!LegendaryKanto] add LegendaryKanto {ndex:145s,OwnerUUID:""}
execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!LegendaryKanto] add LegendaryKanto {ndex:146s,OwnerUUID:""}
execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!LegendaryKanto] add LegendaryKanto {ndex:150s,OwnerUUID:""}

execute @e[tag=LegendaryKanto,type=pixelmon:pixelmon,c=1] ~ ~ ~ /playsound mewtwobattle record @a[r=10,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
execute @e[tag=LegendaryKanto,type=pixelmon:pixelmon] ~ ~ ~ /scoreboard players set @a[r=10,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 3700

#Bird Encounters Roaming
playsound birdencounter record @a[score_DialogueTrigger_min=167,score_DialogueTrigger=167,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=167,score_DialogueTrigger=167,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 420


#----------------------------------------------------------------Battle Maison----------------------------------------------------------------

execute @a[tag=BattleMaisonMusic] ~ ~ ~ playsound trainerbattle record @s[tag=Music1,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
execute @a[tag=BattleMaisonMusic] ~ ~ ~ scoreboard players set @s[tag=Music1,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 3240

execute @a[tag=BattleMaisonMusic] ~ ~ ~ playsound wildpokemonbattle record @s[tag=Music2,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
execute @a[tag=BattleMaisonMusic] ~ ~ ~ scoreboard players set @s[tag=Music2,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1760

execute @a[tag=BattleMaisonMusic] ~ ~ ~ playsound friendbattle record @s[tag=Music3,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
execute @a[tag=BattleMaisonMusic] ~ ~ ~ scoreboard players set @s[tag=Music3,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2360

execute @a[tag=BattleMaisonMusic] ~ ~ ~ playsound gymleaderbattle record @s[tag=Music4,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
execute @a[tag=BattleMaisonMusic] ~ ~ ~ scoreboard players set @s[tag=Music4,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 5180

execute @a[tag=BattleMaisonMusic] ~ ~ ~ playsound successorbattle record @s[tag=Music5,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
execute @a[tag=BattleMaisonMusic] ~ ~ ~ scoreboard players set @s[tag=Music5,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 4520

execute @a[tag=BattleMaisonMusic] ~ ~ ~ playsound lysandrebattle record @s[tag=Music6,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
execute @a[tag=BattleMaisonMusic] ~ ~ ~ scoreboard players set @s[tag=Music6,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 3280

execute @a[tag=BattleMaisonMusic] ~ ~ ~ playsound worldchampionships record @s[tag=Music7,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
execute @a[tag=BattleMaisonMusic] ~ ~ ~ scoreboard players set @s[tag=Music7,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 3700




#----------------------------------------------------------------Dialogue Based----------------------------------------------------------------

#Dialogue61, Tower of Mastery post-Serena Battle
playsound friendsforever record @a[score_DialogueTrigger_min=61,score_DialogueTrigger=61,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=61,score_DialogueTrigger=61,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1820

#Dialogue140, Route 19 after battled all friends
playsound friendsforever record @a[score_DialogueTrigger_min=140,score_DialogueTrigger=140,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=140,score_DialogueTrigger=140,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1820

#----------------------------------------------------------------

#Dialogue80&81, Route 14 south Friends battle
playsound friendstheme record @a[score_DialogueTrigger_min=80,score_DialogueTrigger=81,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=80,score_DialogueTrigger=81,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1300

#----------------------------------------------------------------

#Dialogue18-19, Sycamore's Lab Kanto Starters
playsound sycamorestheme record @a[score_DialogueTrigger_min=18,score_DialogueTrigger=19,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=18,score_DialogueTrigger=19,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1400

#Dialogue66, Sycamore's Theme during Courmarine Entrance
playsound sycamorestheme record @a[score_DialogueTrigger_min=66,score_DialogueTrigger=66,score_TalkTime_min=1,score_TalkTime=133,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=66,score_DialogueTrigger=66,score_TalkTime_min=1,score_TalkTime=133,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1400

#Dialogue79, Sycamore's Theme during Lysandre's Cafe Sycamore and Lysandre
playsound sycamorestheme record @a[score_DialogueTrigger_min=79,score_DialogueTrigger=79,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=79,score_DialogueTrigger=79,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1400

#Dialogue94, Dendemille Town Sycamore
playsound sycamorestheme record @a[score_DialogueTrigger_min=94,score_DialogueTrigger=94,score_TalkTime_min=1,score_TalkTime=203,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=94,score_DialogueTrigger=94,score_TalkTime_min=1,score_TalkTime=203,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1400

#Dialogue135&136, Sycamore in Couriway before and after battle
playsound sycamorestheme record @a[score_DialogueTrigger_min=135,score_DialogueTrigger=136,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=135,score_DialogueTrigger=136,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1400

#Dialogue160, Lumiose Station post-Pokemon League
playsound sycamorestheme record @a[score_DialogueTrigger_min=160,score_DialogueTrigger=160,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=160,score_DialogueTrigger=160,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1400

#----------------------------------------------------------------

#Dialogue40
playsound flareappears record @a[score_DialogueTrigger_min=40,score_DialogueTrigger=40,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=40,score_DialogueTrigger=40,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1180

#Dialogue42
playsound flareappears record @a[score_DialogueTrigger_min=42,score_DialogueTrigger=42,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=42,score_DialogueTrigger=42,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1180

#Dialogue47
playsound flareappears record @a[score_DialogueTrigger_min=47,score_DialogueTrigger=47,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=47,score_DialogueTrigger=47,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1180

#Dialogue73&74, Power Plant Flare Admin and Aliana
playsound flareappears record @a[score_DialogueTrigger_min=73,score_DialogueTrigger=74,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=73,score_DialogueTrigger=74,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1180

#Dialogue87&88&89, Poke Ball Factory first guard and Admin talking
playsound flareappears record @a[score_DialogueTrigger_min=87,score_DialogueTrigger=89,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=87,score_DialogueTrigger=89,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1180

#Dialogue96-97, Frost Cavern Team Flare
playsound flareappears record @a[score_DialogueTrigger_min=96,score_DialogueTrigger=97,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=96,score_DialogueTrigger=97,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1180

#Dialogue111-115, Lasandre Labs Flare Scientists
playsound flareappears record @a[score_DialogueTrigger_min=111,score_DialogueTrigger=115,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=111,score_DialogueTrigger=115,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1180

#Dialogue117, Xerosic pre-battle
playsound flareappears record @a[score_DialogueTrigger_min=117,score_DialogueTrigger=117,score_TalkTime_min=59,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=117,score_DialogueTrigger=117,score_TalkTime_min=59,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1180

#Dialogue124&125, Flare HQ double battles 1&2
playsound flareappears record @a[score_DialogueTrigger_min=124,score_DialogueTrigger=125,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=124,score_DialogueTrigger=125,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1180

#Dialogue127, Flare HQ double battles 1&2
playsound flareappears record @a[score_DialogueTrigger_min=127,score_DialogueTrigger=127,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=127,score_DialogueTrigger=127,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1180

#----------------------------------------------------------------

#Dialogue76, Az Route 13 first encounter, silence
scoreboard players set @a[score_DialogueTrigger_min=76,score_DialogueTrigger=76,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 300

#----------------------------------------------------------------

#Dialogue14, Sina and Dexio (Lumiose Gate)
playsound sinaanddexio record @a[score_DialogueTrigger_min=14,score_DialogueTrigger=14,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=14,score_DialogueTrigger=14,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 720

#Dialogue68, Sina and Dexio (Courmarine)
playsound sinaanddexio record @a[score_DialogueTrigger_min=69,score_DialogueTrigger=69,score_TalkTime_min=1,score_TalkTime=133,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=69,score_DialogueTrigger=69,score_TalkTime_min=1,score_TalkTime=133,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 720

#Dialogue159, Sina and Dexio (Lumiose Station)
playsound sinaanddexio record @a[score_DialogueTrigger_min=159,score_DialogueTrigger=159,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=159,score_DialogueTrigger=159,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 720

#----------------------------------------------------------------

#Dialogue22, Lysandre and Diantha
playsound darkskies record @a[score_DialogueTrigger_min=22,score_DialogueTrigger=22,score_TalkTime_min=40,score_TalkTime=174,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=22,score_DialogueTrigger=22,score_TalkTime_min=40,score_TalkTime=174,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1460

#Dialogue104, Lysandre Holo Call ending the world
playsound darkskies record @a[score_DialogueTrigger_min=104,score_DialogueTrigger=104,score_TalkTime_min=40,score_TalkTime=90,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=104,score_DialogueTrigger=104,score_TalkTime_min=40,score_TalkTime=90,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1460

#----------------------------------------------------------------

#Dialogue116, Az's Story
playsound aneternalprison record @a[score_DialogueTrigger_min=116,score_DialogueTrigger=116,score_TalkTime_min=10,score_TalkTime=200,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=116,score_DialogueTrigger=116,score_TalkTime_min=10,score_TalkTime=200,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 3760

#----------------------------------------------------------------

#Dialogue119&120, Ultimate weapon being deployed
playsound ultimateweapondeployed record @a[score_DialogueTrigger_min=119,score_DialogueTrigger=120,score_TalkTime_min=10,score_TalkTime=20,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=119,score_DialogueTrigger=120,score_TalkTime_min=10,score_TalkTime=20,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1280

#----------------------------------------------------------------

#Dialogue131, Legendary Pokemon spawning
playsound legendaryawaken record @a[score_DialogueTrigger_min=131,score_DialogueTrigger=131,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=131,score_DialogueTrigger=131,score_TalkTime_min=1,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1340

#----------------------------------------------------------------

#Dialogue154, Hall of Fame
playsound halloffame record @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1660

#----------------------------------------------------------------

#Dialogue155, Lumiose Parade
playsound kalostheme record @a[score_DialogueTrigger_min=155,score_DialogueTrigger=155,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=155,score_DialogueTrigger=155,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1860


#----------------------------------------------------------------

#Dialogue156, Az and Floette at Lumiose Parade
playsound thesunshinesdown record @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2280

#----------------------------------------------------------------

#Dialogue165, Ghost Girl empty area
scoreboard players set @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 300


#----------------------------------------------------------------

#Dialogue32 Parfum Palace pre-fireworks
playsound togetherwithshauna record @a[score_DialogueTrigger_min=32,score_DialogueTrigger=32,score_TalkTime_min=1,score_TalkTime=34,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=32,score_DialogueTrigger=32,score_TalkTime_min=1,score_TalkTime=34,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2280

#----------------------------------------------------------------

#Dialogue75, Sina and Dexio Heros first appearance in Power Plant
playsound amysteriousfigure record @a[score_DialogueTrigger_min=75,score_DialogueTrigger=75,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=75,score_DialogueTrigger=75,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 840



#----------------------------------------------------------------

#HoloCall13 - Looker first Introduction call
playsound darkskies record @a[score_HoloCall_min=13,score_HoloCall=13,score_TalkTime_min=1,score_TalkTime=40,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_HoloCall_min=13,score_HoloCall=13,score_TalkTime_min=1,score_TalkTime=40,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1460

playsound darkskies record @a[score_TalkTime_min=1,score_TalkTime=65,score_HoloCall_min=17,score_HoloCall=17,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_TalkTime_min=1,score_TalkTime=65,score_HoloCall_min=17,score_HoloCall=17,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1460

playsound darkskies record @a[score_DialogueTrigger_min=188,score_DialogueTrigger=188,score_TalkTime_min=1,score_TalkTime=130,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=188,score_DialogueTrigger=188,score_TalkTime_min=1,score_TalkTime=130,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1460



#Looker Chapter Starts
playsound lookerchapter record @a[score_HoloCall_min=13,score_HoloCall=13,score_TalkTime_min=41,score_TalkTime=45,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_HoloCall_min=13,score_HoloCall=13,score_TalkTime_min=41,score_TalkTime=45,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 130

playsound lookerchapter record @a[score_DialogueTrigger_min=176,score_DialogueTrigger=176,score_TalkTime_min=180,score_TalkTime=183,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=176,score_DialogueTrigger=176,score_TalkTime_min=180,score_TalkTime=183,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 130

playsound lookerchapter record @a[score_DialogueTrigger_min=182,score_DialogueTrigger=182,score_TalkTime_min=1,score_TalkTime=5,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=182,score_DialogueTrigger=182,score_TalkTime_min=1,score_TalkTime=5,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 130

playsound lookerchapter record @a[score_DialogueTrigger_min=185,score_DialogueTrigger=185,score_TalkTime_min=63,score_TalkTime=68,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=185,score_DialogueTrigger=185,score_TalkTime_min=63,score_TalkTime=68,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 130

playsound lookerchapter record @a[score_DialogueTrigger_min=194,score_DialogueTrigger=194,score_TalkTime_min=88,score_TalkTime=95,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=194,score_DialogueTrigger=194,score_TalkTime_min=88,score_TalkTime=95,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 130

playsound lookerchapter record @a[score_TalkTime_min=19,score_HoloCall_min=20,score_HoloCall=20,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_TalkTime_min=19,score_HoloCall_min=20,score_HoloCall=20,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 130




#Dramatic Silence
scoreboard players set @a[score_DialogueTrigger_min=192,score_DialogueTrigger=192,score_TalkTime_min=134,score_TalkTime=199,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 200




#----------------------------------------------------------------

#Looker Themes
playsound lookerstheme record @a[score_DialogueTrigger_min=172,score_DialogueTrigger=172,score_TalkTime_min=50,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=172,score_DialogueTrigger=172,score_TalkTime_min=50,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1300

playsound lookerstheme record @a[score_DialogueTrigger_min=173,score_DialogueTrigger=173,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=173,score_DialogueTrigger=173,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1300

playsound lookerstheme record @a[score_DialogueTrigger_min=175,score_DialogueTrigger=175,score_TalkTime_min=34,score_TalkTime=67,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=175,score_DialogueTrigger=175,score_TalkTime_min=34,score_TalkTime=67,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1300

playsound lookerstheme record @a[score_DialogueTrigger_min=176,score_DialogueTrigger=176,score_TalkTime_min=131,score_TalkTime=179,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=176,score_DialogueTrigger=176,score_TalkTime_min=131,score_TalkTime=179,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1300

playsound lookerstheme record @a[score_DialogueTrigger_min=177,score_DialogueTrigger=177,score_TalkTime_min=487,score_TalkTime=539,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=177,score_DialogueTrigger=177,score_TalkTime_min=487,score_TalkTime=539,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1300

playsound lookerstheme record @a[score_DialogueTrigger_min=182,score_DialogueTrigger=182,score_TalkTime_min=751,score_TalkTime=905,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=182,score_DialogueTrigger=182,score_TalkTime_min=751,score_TalkTime=905,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1300

playsound lookerstheme record @a[score_DialogueTrigger_min=188,score_DialogueTrigger=188,score_TalkTime_min=131,score_TalkTime=239,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=188,score_DialogueTrigger=188,score_TalkTime_min=131,score_TalkTime=239,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1300

playsound lookerstheme record @a[score_DialogueTrigger_min=189,score_DialogueTrigger=189,score_TalkTime_min=32,score_TalkTime=127,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=189,score_DialogueTrigger=189,score_TalkTime_min=32,score_TalkTime=127,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1300

playsound lookerstheme record @a[score_DialogueTrigger_min=190,score_DialogueTrigger=190,score_TalkTime_min=36,score_TalkTime=121,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=190,score_DialogueTrigger=190,score_TalkTime_min=36,score_TalkTime=121,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1300

playsound lookerstheme record @a[score_DialogueTrigger_min=191,score_DialogueTrigger=191,score_TalkTime_min=124,score_TalkTime=149,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=191,score_DialogueTrigger=191,score_TalkTime_min=124,score_TalkTime=149,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1300

playsound lookerstheme record @a[score_DialogueTrigger_min=192,score_DialogueTrigger=192,score_TalkTime_min=29,score_TalkTime=153,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=192,score_DialogueTrigger=192,score_TalkTime_min=29,score_TalkTime=153,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1300

playsound lookerstheme record @a[score_DialogueTrigger_min=212,score_DialogueTrigger=212,score_TalkTime_min=36,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=212,score_DialogueTrigger=212,score_TalkTime_min=36,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1300





#Looker Sorrowful Themes
playsound lookerssorrowfultheme record @a[score_DialogueTrigger_min=175,score_DialogueTrigger=175,score_TalkTime_min=68,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=175,score_DialogueTrigger=175,score_TalkTime_min=68,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1900

playsound lookerssorrowfultheme record @a[score_DialogueTrigger_min=178,score_DialogueTrigger=178,score_TalkTime_min=240,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=178,score_DialogueTrigger=178,score_TalkTime_min=240,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1900

playsound lookerssorrowfultheme record @a[score_DialogueTrigger_min=184,score_DialogueTrigger=184,score_TalkTime_min=215,score_TalkTime=302,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=184,score_DialogueTrigger=184,score_TalkTime_min=145,score_TalkTime=232,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1900

playsound lookerssorrowfultheme record @a[score_DialogueTrigger_min=184,score_DialogueTrigger=184,score_TalkTime_min=660,score_TalkTime=772,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=184,score_DialogueTrigger=184,score_TalkTime_min=661,score_TalkTime=772,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1900

playsound lookerssorrowfultheme record @a[score_DialogueTrigger_min=192,score_DialogueTrigger=192,score_TalkTime_min=200,score_TalkTime=554,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=192,score_DialogueTrigger=192,score_TalkTime_min=200,score_TalkTime=554,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1900

playsound lookerssorrowfultheme record @a[score_DialogueTrigger_min=213,score_DialogueTrigger=213,score_TalkTime_min=374,score_TalkTime=676,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=213,score_DialogueTrigger=213,score_TalkTime_min=374,score_TalkTime=676,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1900

playsound lookerssorrowfultheme record @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,score_TalkTime_min=76,score_TalkTime=259,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,score_TalkTime_min=76,score_TalkTime=259,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1900

playsound lookerssorrowfultheme record @a[score_DialogueTrigger_min=217,score_DialogueTrigger=217,score_TalkTime_min=596,score_TalkTime=725,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=217,score_DialogueTrigger=217,score_TalkTime_min=596,score_TalkTime=725,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1900





#Emma's Themes
playsound emmastheme record @a[score_DialogueTrigger_min=184,score_DialogueTrigger=184,score_TalkTime_min=487,score_TalkTime=659,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=184,score_DialogueTrigger=184,score_TalkTime_min=487,score_TalkTime=659,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1700

playsound emmastheme record @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,score_TalkTime_min=266,score_TalkTime=329,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,score_TalkTime_min=266,score_TalkTime=329,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1700

playsound emmastheme record @a[score_DialogueTrigger_min=217,score_DialogueTrigger=217,score_TalkTime_min=94,score_TalkTime=595,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=217,score_DialogueTrigger=217,score_TalkTime_min=94,score_TalkTime=595,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1700




#Looker's in Trouble music
playsound lookersintrouble record @a[score_DialogueTrigger_min=209,score_DialogueTrigger=209,score_TalkTime_min=82,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=209,score_DialogueTrigger=209,score_TalkTime_min=82,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1100

execute @a[x=-306,y=28,z=280,dx=22,dy=20,dz=47,score_MusicCooldown=0,score_MusicState_min=1,tag=Dialogue209] ~ ~ ~ playsound lookersintrouble record @s[tag=!Dialogue212] ~ ~ ~ 1000 1 1
execute @a[x=-306,y=28,z=280,dx=22,dy=20,dz=47,score_MusicCooldown=0,score_MusicState_min=1,tag=Dialogue209] ~ ~ ~ scoreboard players set @s[tag=!Dialogue212] MusicCooldown 1100


#----------------------------------------------------------------Entity Based----------------------------------------------------------------

#Bikes
execute @e[type=pixelmon:bike] ~ ~ ~ /playsound bicycle record @a[r=1,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
execute @e[type=pixelmon:bike] ~ ~ ~ /scoreboard players set @a[r=1,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1700

#Skiddo
execute @a[score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ scoreboard players tag @e[r=10,type=pixelmon:pixelmon,tag=!Skiddo] add Skiddo {ndex:672s}
execute @e[type=pixelmon:pixelmon,tag=Skiddo] ~ ~1 ~ /playsound ridingskiddo record @a[r=1,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
execute @e[type=pixelmon:pixelmon,tag=Skiddo] ~ ~1 ~ /scoreboard players set @a[r=1,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 680



#----------------------------------------------------------------Pokemon Center Birthday Theme----------------------------------------------------------------

#Santalune Pokemon Center
playsound pokemoncenterbirthday record @a[x=273,y=65,z=448,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1,tag=Birthday] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=273,y=65,z=448,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1,tag=Birthday] MusicCooldown 2500

#Camphrier Pokemon Center
playsound pokemoncenterbirthday record @a[x=-1035,y=79,z=-22,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1,tag=Birthday] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1035,y=79,z=-22,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1,tag=Birthday] MusicCooldown 2500

#Cyllage Pokemon Center
playsound pokemoncenterbirthday record @a[x=-2059,y=76,z=-93,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1,tag=Birthday] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2059,y=76,z=-93,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1,tag=Birthday] MusicCooldown 2500

#Ambrette Pokemon Center
playsound pokemoncenterbirthday record @a[x=-1985,y=101,z=523,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1,tag=Birthday] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1985,y=101,z=523,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1,tag=Birthday] MusicCooldown 2500

#Geosenge Pokemon Center
playsound pokemoncenterbirthday record @a[x=-2265,y=77,z=-657,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1,tag=Birthday] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2265,y=77,z=-657,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1,tag=Birthday] MusicCooldown 2500

#Shalour Pokemon Center
playsound pokemoncenterbirthday record @a[x=-1642,y=55,z=-850,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1,tag=Birthday] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1642,y=55,z=-850,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1,tag=Birthday] MusicCooldown 2500

#Courmarine Pokemon Center
playsound pokemoncenterbirthday record @a[x=-1048,y=87,z=-691,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1,tag=Birthday] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1048,y=87,z=-691,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1,tag=Birthday] MusicCooldown 2500

#Laverre Pokemon Center
playsound pokemoncenterbirthday record @a[x=-92,y=75,z=-1396,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1,tag=Birthday] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-92,y=75,z=-1396,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1,tag=Birthday] MusicCooldown 2500

#Dendemille Pokemon Center
playsound pokemoncenterbirthday record @a[x=599,y=85,z=-407,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1,tag=Birthday] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=599,y=85,z=-407,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1,tag=Birthday] MusicCooldown 2500

#Anistar Pokemon Center
playsound pokemoncenterbirthday record @a[x=1248,y=77,z=-228,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1,tag=Birthday] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=1248,y=77,z=-228,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1,tag=Birthday] MusicCooldown 2500

#Couriway Pokemon Center
playsound pokemoncenterbirthday record @a[x=1454,y=77,z=142,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1,tag=Birthday] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=1454,y=77,z=142,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1,tag=Birthday] MusicCooldown 2500

#Snowbelle Pokemon Center
playsound pokemoncenterbirthday record @a[x=1195,y=74,z=472,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1,tag=Birthday] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=1195,y=74,z=472,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1,tag=Birthday] MusicCooldown 2500

#Kiloude Pokemon Center
playsound pokemoncenterbirthday record @a[x=1159,y=79,z=1628,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1,tag=Birthday] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=1159,y=79,z=1628,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1,tag=Birthday] MusicCooldown 2500

#Lumiose Pokemon Centers
playsound pokemoncenterbirthday record @a[x=-508,y=100,z=426,dx=155,dy=20,dz=36,score_MusicCooldown=0,score_MusicState_min=1,tag=Birthday] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-508,y=100,z=426,dx=155,dy=20,dz=36,score_MusicCooldown=0,score_MusicState_min=1,tag=Birthday] MusicCooldown 2500

#Pokemon League Pokemon Center
playsound pokemoncenterbirthday record @a[x=-1959,y=36,z=2247,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1,tag=Birthday] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1959,y=36,z=2247,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1,tag=Birthday] MusicCooldown 2500




#----------------------------------------------------------------Pokemon Centers----------------------------------------------------------------

#Santalune Pokemon Center
playsound pokemoncenter record @a[x=273,y=65,z=448,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=273,y=65,z=448,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1540

#Camphrier Pokemon Center
playsound pokemoncenter record @a[x=-1035,y=79,z=-22,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1035,y=79,z=-22,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1540

#Cyllage Pokemon Center
playsound pokemoncenter record @a[x=-2059,y=76,z=-93,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2059,y=76,z=-93,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1540

#Ambrette Pokemon Center
playsound pokemoncenter record @a[x=-1985,y=101,z=523,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1985,y=101,z=523,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1540

#Geosenge Pokemon Center
playsound pokemoncenter record @a[x=-2265,y=77,z=-657,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2265,y=77,z=-657,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1540

#Shalour Pokemon Center
playsound pokemoncenter record @a[x=-1642,y=55,z=-850,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1642,y=55,z=-850,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1540

#Courmarine Pokemon Center
playsound pokemoncenter record @a[x=-1048,y=87,z=-691,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1048,y=87,z=-691,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1540

#Laverre Pokemon Center
playsound pokemoncenter record @a[x=-92,y=75,z=-1396,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-92,y=75,z=-1396,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1540

#Dendemille Pokemon Center
playsound pokemoncenter record @a[x=599,y=85,z=-407,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=599,y=85,z=-407,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1540

#Anistar Pokemon Center
playsound pokemoncenter record @a[x=1248,y=77,z=-228,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=1248,y=77,z=-228,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1540

#Couriway Pokemon Center
playsound pokemoncenter record @a[x=1454,y=77,z=142,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=1454,y=77,z=142,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1540

#Snowbelle Pokemon Center
playsound pokemoncenter record @a[x=1195,y=74,z=472,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=1195,y=74,z=472,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1540

#Kiloude Pokemon Center
playsound pokemoncenter record @a[x=1159,y=79,z=1628,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=1159,y=79,z=1628,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1540

#Lumiose Pokemon Centers
playsound pokemoncenter record @a[x=-508,y=100,z=426,dx=155,dy=20,dz=36,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-508,y=100,z=426,dx=155,dy=20,dz=36,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1540

#Pokemon League Pokemon Center
playsound pokemoncenter record @a[x=-1959,y=36,z=2247,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1959,y=36,z=2247,dx=50,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1540

#----------------------------------------------------------------Areas within Areas----------------------------------------------------------------

#Lysandre's Cafe
playsound darkskies record @a[x=-307,y=80,z=425,dx=23,dy=100,dz=28,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-307,y=80,z=425,dx=23,dy=100,dz=28,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1460

#Scary House
playsound scaryhouse record @a[x=-241,y=85,z=-1253,dx=21,dy=10,dz=28,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-241,y=85,z=-1253,dx=21,dy=10,dz=28,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1160

#Frost Cavern Underground 1
playsound caves record @a[x=582,y=0,z=-1444,dx=326,dy=128,dz=550,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=582,y=0,z=-1444,dx=326,dy=128,dz=550,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 940

#Frost Cavern Underground 2
playsound caves record @a[x=444,y=0,z=-1444,dx=137,dy=128,dz=550,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=444,y=0,z=-1444,dx=137,dy=128,dz=550,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 940

#Connecting Cave
playsound glitteringcave record @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2700

#Reflection Cave
playsound caves record @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 940

#Power Plant
playsound powerplant record @a[x=-1092,y=34,z=-401,dx=296,dy=55,dz=122,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1092,y=34,z=-401,dx=296,dy=55,dz=122,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2960

#Power Plant Volcanion
playsound powerplant record @a[x=-937,y=36,z=-742,dx=280,dy=40,dz=117,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-937,y=36,z=-742,dx=280,dy=40,dz=117,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2960

#Battle Chateau
playsound battlemaison record @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1680

#Battle Maison
playsound battlemaison record @a[x=1182,y=63,z=1511,dx=76,dy=31,dz=94,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=1182,y=63,z=1511,dx=76,dy=31,dz=94,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1680



#Lumiose Professor Sycamore Lab
playsound sycamorelab record @a[x=-271,y=99,z=64,dx=36,dy=50,dz=37,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-271,y=99,z=64,dx=36,dy=50,dz=37,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1520

#Lumiose Hotel Richissime
playsound hotelrichissime record @a[x=-508,y=99,z=285,dx=86,dy=60,dz=83,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-508,y=99,z=285,dx=86,dy=60,dz=83,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1620

#Lumiose Museum
playsound hotelrichissime record @a[x=-162,y=0,z=320,dx=162,dy=110,dz=42,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-162,y=0,z=320,dx=162,dy=110,dz=42,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1620

#Lumiose Lysandre Labs
playsound lysandrelabs record @a[x=-402,y=0,z=277,dx=209,dy=256,dz=148,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-402,y=0,z=277,dx=209,dy=256,dz=148,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2640

#Lumiose Coiffure Clips
playsound coiffureclips record @a[x=-131,y=100,z=163,dx=74,dy=12,dz=23,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-131,y=100,z=163,dx=74,dy=12,dz=23,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1480

#Lumiose Friseur Furfrou
playsound coiffureclips record @a[x=-205,y=100,z=203,dx=19,dy=10,dz=25,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-205,y=100,z=203,dx=19,dy=10,dz=25,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1480

#Lumiose PR Studio
playsound prstudio record @a[x=-223,y=100,z=64,dx=115,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-223,y=100,z=64,dx=115,dy=10,dz=50,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1420

#Lumiose Sushi High Roller
playsound sushihighroller record @a[x=-514,y=100,z=116,dx=50,dy=10,dz=72,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-514,y=100,z=116,dx=50,dy=10,dz=72,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1500

#Lumiose Juice Shoppe
playsound shopping record @a[x=-336,y=100,z=203,dx=19,dy=10,dz=25,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-336,y=100,z=203,dx=19,dy=10,dz=25,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2240

#Lumoise Herboriste
playsound shopping record @a[x=-302,y=100,z=203,dx=19,dy=10,dz=25,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-302,y=100,z=203,dx=19,dy=10,dz=25,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2240

#Lumoise Stone Emporium
playsound shopping record @a[x=-423,y=100,z=203,dx=19,dy=10,dz=25,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-423,y=100,z=203,dx=19,dy=10,dz=25,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2240

#Lumiose Poke Ball Boutique
playsound shopping record @a[x=-269,y=100,z=203,dx=19,dy=10,dz=25,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-269,y=100,z=203,dx=19,dy=10,dz=25,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2240

#Lumiose Boutique Couture
playsound boutique record @a[x=-47,y=100,z=65,dx=40,dy=15,dz=30,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-47,y=100,z=65,dx=40,dy=15,dz=30,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1240



#Team Flare Secret HQ
playsound flaresecrethq record @a[x=-2526,y=0,z=-1074,dx=232,dy=95,dz=167,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2526,y=0,z=-1074,dx=232,dy=95,dz=167,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2100

#Lost Hotel
playsound glitteringcave record @a[x=403,y=0,z=-497,dx=144,dy=100,dz=127,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=403,y=0,z=-497,dx=144,dy=100,dz=127,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2700

#Friend Safari
playsound friendsafari record @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1700

#Terminus Cave Dead End Caverns
playsound glitteringcave record @a[x=1524,y=68,z=6,dx=177,dy=19,dz=100,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=1524,y=68,z=6,dx=177,dy=19,dz=100,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2700



#----------------------------------------------------------------Empty Music Areas----------------------------------------------------------------

#Chamber of Emptiness
playsound waterdrops record @a[x=550,y=70,z=394,dx=63,dy=16,dz=87,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=550,y=70,z=394,dx=63,dy=16,dz=87,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 380

#Sea Spirit's Den
playsound waterdrops record @a[x=-1363,y=21,z=-1264,dx=65,dy=15,dz=83,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1363,y=21,z=-1264,dx=65,dy=15,dz=83,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 380

#Unknown Dungeon
playsound waterdrops record @a[x=809,y=74,z=525,dx=66,dy=14,dz=92,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=809,y=74,z=525,dx=66,dy=14,dz=92,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 380

#Flymap
scoreboard players set @a[x=1489,y=204,z=-1346,r=30,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1200


#----------------------------------------------------------------Regular Music----------------------------------------------------------------

#Parade Lumiose
playsound kalostheme record @a[x=1469,y=101,z=-1954,r=150,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=1469,y=101,z=-1954,r=150,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1860

#Starting Lobby
playsound title record @a[x=-792,y=100,z=1196,dx=38,dy=20,dz=47,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-792,y=100,z=1196,dx=38,dy=20,dz=47,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1220

#All Gyms
playsound gym record @a[x=-2027,y=0,z=-2285,dx=1319,dy=256,dz=672,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2027,y=0,z=-2285,dx=1319,dy=256,dz=672,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1720

#Vaniville Town
playsound vanivilletown record @a[x=374,y=0,z=1540,dx=241,dy=256,dz=216,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=374,y=0,z=1540,dx=241,dy=256,dz=216,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2180

#Route 1
playsound route1 record @a[x=445,y=0,z=1442,dx=62,dy=256,dz=87,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=445,y=0,z=1442,dx=62,dy=256,dz=87,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1200

#Aquacorde Town
playsound aquacordetown record @a[x=395,y=0,z=1236,dx=147,dy=256,dz=205,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=395,y=0,z=1236,dx=147,dy=256,dz=205,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1640

#Santalune City
playsound santalunecity record @a[x=93,y=0,z=384,dx=250,dy=256,dz=139,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=93,y=0,z=384,dx=250,dy=256,dz=139,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1660

#Lumiose City
playsound lumiosecity record @a[x=-181,y=101,z=-390,r=395,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-181,y=101,z=-390,r=395,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2140

#Cyllage City
playsound cyllagecity record @a[x=-2223,y=0,z=-217,dx=354,dy=256,dz=275,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2223,y=0,z=-217,dx=354,dy=256,dz=275,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1500

#Ambrette Town
playsound aquacordetown record @a[x=-2115,y=0,z=504,dx=240,dy=256,dz=258,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2115,y=0,z=504,dx=240,dy=256,dz=258,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1640

#Geosenge Town
playsound geosengetown record @a[x=-2386,y=0,z=-984,dx=273,dy=256,dz=386,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2386,y=0,z=-984,dx=273,dy=256,dz=386,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2240

#Geosenge Ultimate Weapon
playsound geosengetown record @a[x=-1306,y=0,z=1736,dx=273,dy=256,dz=386,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1306,y=0,z=1736,dx=273,dy=256,dz=386,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2240

#Geosenge Destroyed
playsound geosengetown record @a[x=-586,y=0,z=1736,dx=273,dy=256,dz=386,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-586,y=0,z=1736,dx=273,dy=256,dz=386,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2240

#Shalour City
playsound shalourcity record @a[x=-1816,y=0,z=-987,dx=332,dy=256,dz=254,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1816,y=0,z=-987,dx=332,dy=256,dz=254,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 3340

#Coumarine City
playsound coumarinecity record @a[x=-1204,y=0,z=-888,dx=230,dy=256,dz=380,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1204,y=0,z=-888,dx=230,dy=256,dz=380,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2420

#Laverre City
playsound laverrecity record @a[x=-342,y=0,z=-1577,dx=432,dy=256,dz=274,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-342,y=0,z=-1577,dx=432,dy=256,dz=274,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2760

#Dendemille Town
playsound dendemilletown record @a[x=582,y=0,z=-573,dx=152,dy=256,dz=313,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=582,y=0,z=-573,dx=152,dy=256,dz=313,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1660

#Anistar City
playsound anistarcity record @a[x=1097,y=0,z=-376,dx=334,dy=256,dz=235,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=1097,y=0,z=-376,dx=334,dy=256,dz=235,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2620

#Couriway Town
playsound camphriertown record @a[x=1326,y=0,z=132,dx=360,dy=256,dz=198,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=1326,y=0,z=132,dx=360,dy=256,dz=198,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1660

#Camphrier Town
playsound camphriertown record @a[x=-1146,y=0,z=-213,dx=182,dy=256,dz=337,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1146,y=0,z=-213,dx=182,dy=256,dz=337,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1660

#Snowbelle City
playsound snowbellecity record @a[x=984,y=0,z=324,dx=341,dy=256,dz=323,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=984,y=0,z=324,dx=341,dy=256,dz=323,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2460

#Kiloude City
playsound kiloudecity record @a[x=1027,y=0,z=1434,dx=331,dy=256,dz=266,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=1027,y=0,z=1434,dx=331,dy=256,dz=266,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2200

#Santalune Forest
playsound santaluneforest record @a[x=331,y=0,z=739,dx=256,dy=256,dz=239,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=331,y=0,z=739,dx=256,dy=256,dz=239,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1480

#Tower of Mastery
playsound towerofmastery record @a[x=-1816,y=0,z=-1284,dx=332,dy=256,dz=296,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1816,y=0,z=-1284,dx=332,dy=256,dz=296,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2340

#Parfum Palace
playsound parfumpalace record @a[x=-1758,y=0,z=-529,dx=409,dy=256,dz=307,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1758,y=0,z=-529,dx=409,dy=256,dz=307,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2120

#Glittering Cave
playsound glitteringcave record @a[x=-1542,y=0,z=249,dx=174,dy=256,dz=310,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1542,y=0,z=249,dx=174,dy=256,dz=310,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2700

#Terminus Cave
playsound glitteringcave record @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2700

#Victory Road 1
playsound victoryroad record @a[x=683,y=0,z=299,dx=21,dy=256,dz=93,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=683,y=0,z=299,dx=21,dy=256,dz=93,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2480

#Victory Road 2
playsound victoryroad record @a[x=543,y=0,z=-37,dx=328,dy=256,dz=272,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=543,y=0,z=-37,dx=328,dy=256,dz=272,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2480

#Victory Road 3
playsound victoryroad record @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2480

#Victory Road 4
playsound victoryroad record @a[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2480

#Route 2
playsound route2 record @a[x=396,y=0,z=979,dx=146,dy=256,dz=256,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=396,y=0,z=979,dx=146,dy=256,dz=256,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2240

#Route 3
playsound route2 record @a[x=251,y=0,z=524,dx=202,dy=256,dz=214,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=251,y=0,z=524,dx=202,dy=256,dz=214,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2240

#Route 4
playsound route4 record @a[x=103,y=0,z=-114,dx=155,dy=256,dz=497,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=103,y=0,z=-114,dx=155,dy=256,dz=497,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2920

#Route 5
playsound route4 record @a[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2920

#Route 6
playsound route4 record @a[x=-1348,y=0,z=-432,dx=201,dy=256,dz=313,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1348,y=0,z=-432,dx=201,dy=256,dz=313,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2920

#Route 7
playsound route4 record @a[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2920

#Route 8
playsound route8 record @a[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2300

#Route 9
playsound route8 record @a[x=-1875,y=0,z=560,dx=507,dy=256,dz=202,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1875,y=0,z=560,dx=507,dy=256,dz=202,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2300

#Route 10
playsound route8 record @a[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2300

#Route 11
playsound route8 record @a[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2300

#Route 12
playsound route8 record @a[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2300

#Route 13
playsound route8 record @a[x=-973,y=0,z=-871,dx=371,dy=256,dz=651,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-973,y=0,z=-871,dx=371,dy=256,dz=651,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2300

#Route 14
playsound glitteringcave record @a[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2700

#Route 15
playsound route15 record @a[x=212,y=95,z=-695,dx=369,dy=156,dz=292,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=212,y=95,z=-695,dx=369,dy=156,dz=292,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2320

#Route 16
playsound route15 record @a[x=212,y=95,z=-402,dx=369,dy=160,dz=273,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=212,y=95,z=-402,dx=369,dy=160,dz=273,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2320

#Route 17
playsound route15 record @a[x=735,y=0,z=-417,dx=361,dy=256,dz=495,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=735,y=0,z=-417,dx=361,dy=256,dz=495,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2320

#Route 18
playsound route18 record @a[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 3540

#Route 19
playsound route18 record @a[x=1326,y=0,z=331,dx=296,dy=256,dz=249,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=1326,y=0,z=331,dx=296,dy=256,dz=249,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 3540

#Route 20
playsound caves record @a[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 940

#Route 21 1
playsound route18 record @a[x=705,y=95,z=299,dx=278,dy=100,dz=263,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=705,y=95,z=299,dx=278,dy=100,dz=263,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 3540

#Route 21 2
playsound route18 record @a[x=683,y=95,z=393,dx=21,dy=100,dz=170,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=683,y=95,z=393,dx=21,dy=100,dz=170,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 3540

#Route 22 1
playsound route4 record @a[x=454,y=87,z=524,dx=228,dy=100,dz=214,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=454,y=87,z=524,dx=228,dy=100,dz=214,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2920

#Route 22 2
playsound route4 record @a[x=344,y=87,z=299,dx=338,dy=100,dz=224,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=344,y=87,z=299,dx=338,dy=100,dz=224,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2920

#Pokemon Village
playsound pokemonvillage record @a[x=703,y=90,z=563,dx=280,dy=100,dz=279,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=703,y=90,z=563,dx=280,dy=100,dz=279,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1240

#Azure Bay
playsound route8 record @a[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2300

#Frost Cavern Exterior 1
playsound route15 record @a[x=582,y=0,z=-1444,dx=326,dy=256,dz=870,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=582,y=0,z=-1444,dx=326,dy=256,dz=870,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2320

#Frost Cavern Exterior 2
playsound route15 record @a[x=444,y=0,z=-1444,dx=137,dy=128,dz=560,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=444,y=0,z=-1444,dx=137,dy=128,dz=560,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2320

#Poke Ball Factory
playsound powerplant record @a[x=-342,y=0,z=-2044,dx=431,dy=256,dz=466,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-342,y=0,z=-2044,dx=431,dy=256,dz=466,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2960

#Kiloude City Station
playsound kiloudecity record @a[x=913,y=98,z=1473,dx=70,dy=100,dz=228,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=913,y=98,z=1473,dx=70,dy=100,dz=228,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2200

#Lumiose City Station
playsound lumiosecity record @a[x=984,y=99,z=1845,dx=267,dy=50,dz=200,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=984,y=99,z=1845,dx=267,dy=50,dz=200,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2140

#Lumiose City Interiors (Newmiose)
playsound lumiosecity record @a[x=-514,y=0,z=64,dx=526,dy=256,dz=436,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-514,y=0,z=64,dx=526,dy=256,dz=436,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2140

#Starter Pick Zone
playsound friendstheme record @a[x=-1107,y=99,z=1171,dx=123,dy=30,dz=227,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1107,y=99,z=1171,dx=123,dy=30,dz=227,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1300

#Pokemon League
playsound pokemonleague record @a[x=-2255,y=0,z=1732,dx=629,dy=256,dz=655,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2255,y=0,z=1732,dx=629,dy=256,dz=655,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1640

#Sycamore Welcome to the World area
playsound kalostheme record @a[x=-1034,y=99,z=1432,dx=50,dy=50,dz=50,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1034,y=99,z=1432,dx=50,dy=50,dz=50,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1860
