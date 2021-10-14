#MusicCooldown score equal to length of song in seconds x20 (for MC tick speed)
#Scoreboard objective types are dummy. Tags that target player in target selector given by NPC trainers via TrainerCommands.
#Coordinates are based around specific areas within the map. Higher-up commands run before lower commands, allowing priority of music within the same areas.


#First play information
tellraw @s[tag=!FirstSong] ["",{"text":"Tip","bold":true},{"text":": Your Holo Caster is playing music from your hotbar! Move it to your inventory or double click the Holo Caster to turn off the music! Single-clicking resets the song for if glitched."}]
scoreboard players tag @s[tag=!FirstSong] add FirstSong



#----------------------------------------------------------------Battle Music & Tag-based ----------------------------------------------------------------

#Gym Leader Battles
playsound gymleaderbattle record @s[tag=GymLeaderBattleMusic,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
#scoreboard players tag @s[tag=GymLeaderBattleMusic,score_MusicCooldown=0] add OldTimingsLonger
scoreboard players set @s[tag=GymLeaderBattleMusic,score_MusicCooldown=0] MusicCooldown 364

#Trainer Battles
playsound trainerbattle record @s[tag=TrainerBattleMusic,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players tag @s[tag=TrainerBattleMusic,score_MusicCooldown=0] add OldTimings
scoreboard players set @s[tag=TrainerBattleMusic,score_MusicCooldown=0] MusicCooldown 227

#Trainer Battles Win
#playsound trainerbattle record @s[tag=TrainerWinMusic,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
#scoreboard players set @s[tag=TrainerWinMusic,score_MusicCooldown=0] MusicCooldown 21
#scoreboard players tag @s[tag=TrainerWinMusic] remove TrainerWinMusic

#Elite Four Battles
playsound elitefourbattle record @s[tag=EliteFourBattleMusic,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[tag=EliteFourBattleMusic,score_MusicCooldown=0] MusicCooldown 387

#Elite Four Champion Battles
playsound elitefourbattlechamp record @s[tag=ChampionBattleMusic,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[tag=ChampionBattleMusic,score_MusicCooldown=0] MusicCooldown 259

#Team Flare Battles
playsound flarebattle record @s[tag=FlareBattleMusic,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players tag @s[tag=FlareBattleMusic,score_MusicCooldown=0] add OldTimings
scoreboard players set @s[tag=FlareBattleMusic,score_MusicCooldown=0] MusicCooldown 199

#Lysandre Battles
playsound lysandrebattle record @s[tag=LysandreBattleMusic,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players tag @s[tag=LysandreBattleMusic,score_MusicCooldown=0] add OldTimings
scoreboard players set @s[tag=LysandreBattleMusic,score_MusicCooldown=0] MusicCooldown 230

#Friend/Rival Battles
playsound friendbattle record @s[tag=FriendBattleMusic,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players tag @s[tag=FriendBattleMusic,score_MusicCooldown=0] add OldTimings
scoreboard players set @s[tag=FriendBattleMusic,score_MusicCooldown=0] MusicCooldown 166

#Successor Korrina Battle
playsound successorbattle record @s[tag=KorrinaBattleMusic,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[tag=KorrinaBattleMusic,score_MusicCooldown=0] MusicCooldown 317


#Legendary Battle X Y & Z
execute @s[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!LegendaryXY] add LegendaryXY {ndex:716s,OwnerUUID:""}
execute @s[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!LegendaryXY] add LegendaryXY {ndex:717s,OwnerUUID:""}

execute @s[type=player] ~ ~ ~ /scoreboard players tag @e[x=-2369,y=40,z=-1051,dx=65,dy=20,dz=65,type=pixelmon:pixelmon,tag=!LegendaryXY] add LegendaryXY {ndex:716s,OwnerUUID:""}
execute @s[type=player] ~ ~ ~ /scoreboard players tag @e[x=-2369,y=40,z=-1051,dx=65,dy=20,dz=65,type=pixelmon:pixelmon,tag=!LegendaryXY] add LegendaryXY {ndex:717s,OwnerUUID:""}

execute @s[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!LegendaryXY] add LegendaryXY {ndex:718s,OwnerUUID:""}
execute @s[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!LegendaryXY] add LegendaryXY {ndex:719s,OwnerUUID:""}
execute @s[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!LegendaryXY] add LegendaryXY {ndex:720s,OwnerUUID:""}
execute @s[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!LegendaryXY] add LegendaryXY {ndex:721s,OwnerUUID:""}

execute @e[tag=LegendaryXY,type=pixelmon:pixelmon,c=1] ~ ~ ~ /playsound legendarybattlexy record @a[r=10,score_MusicCooldown=0,score_TalkTime=0] ~ ~ ~ 1000 1 1
execute @e[tag=LegendaryXY,type=pixelmon:pixelmon] ~ ~ ~ /scoreboard players set @a[r=10,score_MusicCooldown=0,score_TalkTime=0] MusicCooldown 224

#Flare HQ room-specific music if legend is present
execute @e[x=-2369,y=40,z=-1051,dx=65,dy=20,dz=65,tag=LegendaryXY,type=pixelmon:pixelmon,c=1] ~ ~ ~ /playsound legendarybattlexy record @a[x=-2369,y=40,z=-1051,dx=65,dy=20,dz=65,score_MusicCooldown=0,score_TalkTime=0] ~ ~ ~ 1000 1 1
execute @e[x=-2369,y=40,z=-1051,dx=65,dy=20,dz=65,tag=LegendaryXY,type=pixelmon:pixelmon] ~ ~ ~ /scoreboard players set @a[x=-2369,y=40,z=-1051,dx=65,dy=20,dz=65,score_MusicCooldown=0,score_TalkTime=0] MusicCooldown 224


#Legendary Battle Kanto
execute @s[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!LegendaryKanto] add LegendaryKanto {ndex:144s,OwnerUUID:""}
execute @s[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!LegendaryKanto] add LegendaryKanto {ndex:145s,OwnerUUID:""}
execute @s[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!LegendaryKanto] add LegendaryKanto {ndex:146s,OwnerUUID:""}
execute @s[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!LegendaryKanto] add LegendaryKanto {ndex:150s,OwnerUUID:""}

execute @e[tag=LegendaryKanto,type=pixelmon:pixelmon,c=1] ~ ~ ~ /playsound mewtwobattle record @s[r=10,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
execute @e[tag=LegendaryKanto,type=pixelmon:pixelmon] ~ ~ ~ /scoreboard players set @s[r=10,score_MusicCooldown=0] MusicCooldown 259

#Bird Encounters Roaming
playsound birdencounter record @s[score_DialogueTrigger_min=167,score_DialogueTrigger=167,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=167,score_DialogueTrigger=167,score_MusicCooldown=0] MusicCooldown 30


#----------------------------------------------------------------Battle Maison----------------------------------------------------------------

execute @s[tag=BattleMaisonMusic] ~ ~ ~ playsound trainerbattle record @s[tag=Music1,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
execute @s[tag=BattleMaisonMusic] ~ ~ ~ tag @s[tag=Music1,score_MusicCooldown=0] add OldTimings
execute @s[tag=BattleMaisonMusic] ~ ~ ~ scoreboard players set @s[tag=Music1,score_MusicCooldown=0] MusicCooldown 227

execute @s[tag=BattleMaisonMusic] ~ ~ ~ playsound wildpokemonbattle record @s[tag=Music2,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
execute @s[tag=BattleMaisonMusic] ~ ~ ~ tag @s[tag=Music2,score_MusicCooldown=0] add OldTimings
execute @s[tag=BattleMaisonMusic] ~ ~ ~ scoreboard players set @s[tag=Music2,score_MusicCooldown=0] MusicCooldown 124

execute @s[tag=BattleMaisonMusic] ~ ~ ~ playsound friendbattle record @s[tag=Music3,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
execute @s[tag=BattleMaisonMusic] ~ ~ ~ tag @s[tag=Music3,score_MusicCooldown=0] add OldTimings
execute @s[tag=BattleMaisonMusic] ~ ~ ~ scoreboard players set @s[tag=Music3,score_MusicCooldown=0] MusicCooldown 166

execute @s[tag=BattleMaisonMusic] ~ ~ ~ playsound gymleaderbattle record @s[tag=Music4,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
execute @s[tag=BattleMaisonMusic] ~ ~ ~ tag @s[tag=Music4,score_MusicCooldown=0] add OldTimings
execute @s[tag=BattleMaisonMusic] ~ ~ ~ scoreboard players set @s[tag=Music4,score_MusicCooldown=0] MusicCooldown 363

execute @s[tag=BattleMaisonMusic] ~ ~ ~ playsound successorbattle record @s[tag=Music5,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
execute @s[tag=BattleMaisonMusic] ~ ~ ~ tag @s[tag=Music5,score_MusicCooldown=0] add OldTimings
execute @s[tag=BattleMaisonMusic] ~ ~ ~ scoreboard players set @s[tag=Music5,score_MusicCooldown=0] MusicCooldown 317

execute @s[tag=BattleMaisonMusic] ~ ~ ~ playsound lysandrebattle record @s[tag=Music6,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
execute @s[tag=BattleMaisonMusic] ~ ~ ~ tag @s[tag=Music6,score_MusicCooldown=0] add OldTimings
execute @s[tag=BattleMaisonMusic] ~ ~ ~ scoreboard players set @s[tag=Music6,score_MusicCooldown=0] MusicCooldown 230

execute @s[tag=BattleMaisonMusic] ~ ~ ~ playsound worldchampionships record @s[tag=Music7,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
execute @s[tag=BattleMaisonMusic] ~ ~ ~ tag @s[tag=Music7,score_MusicCooldown=0] add OldTimings
execute @s[tag=BattleMaisonMusic] ~ ~ ~ scoreboard players set @s[tag=Music7,score_MusicCooldown=0] MusicCooldown 259




#----------------------------------------------------------------Dialogue Based----------------------------------------------------------------

#Dialogue61, Tower of Mastery post-Serena Battle
playsound friendsforever record @s[score_DialogueTrigger_min=61,score_DialogueTrigger=61,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=61,score_DialogueTrigger=61,score_MusicCooldown=0] MusicCooldown 128

#Dialogue140, Route 19 after battled all friends
playsound friendsforever record @s[score_DialogueTrigger_min=140,score_DialogueTrigger=140,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=140,score_DialogueTrigger=140,score_MusicCooldown=0] MusicCooldown 128

#----------------------------------------------------------------

#Dialogue80&81, Route 14 south Friends battle
playsound friendstheme record @s[score_DialogueTrigger_min=80,score_DialogueTrigger=81,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=80,score_DialogueTrigger=81,score_MusicCooldown=0] MusicCooldown 91

#----------------------------------------------------------------

#Dialogue18-19, Sycamore's Lab Kanto Starters
playsound sycamorestheme record @s[score_DialogueTrigger_min=18,score_DialogueTrigger=19,score_TalkTime_min=1,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=18,score_DialogueTrigger=19,score_TalkTime_min=1,score_MusicCooldown=0] MusicCooldown 98

#Dialogue66, Sycamore's Theme during Courmarine Entrance
playsound sycamorestheme record @s[score_DialogueTrigger_min=66,score_DialogueTrigger=66,score_TalkTime_min=1,score_TalkTime=133,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=66,score_DialogueTrigger=66,score_TalkTime_min=1,score_TalkTime=133,score_MusicCooldown=0] MusicCooldown 98

#Dialogue79, Sycamore's Theme during Lysandre's Cafe Sycamore and Lysandre
playsound sycamorestheme record @s[score_DialogueTrigger_min=79,score_DialogueTrigger=79,score_TalkTime_min=1,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=79,score_DialogueTrigger=79,score_TalkTime_min=1,score_MusicCooldown=0] MusicCooldown 98

#Dialogue94, Dendemille Town Sycamore
playsound sycamorestheme record @s[score_DialogueTrigger_min=94,score_DialogueTrigger=94,score_TalkTime_min=1,score_TalkTime=203,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=94,score_DialogueTrigger=94,score_TalkTime_min=1,score_TalkTime=203,score_MusicCooldown=0] MusicCooldown 98

#Dialogue135&136, Sycamore in Couriway before and after battle
playsound sycamorestheme record @s[score_DialogueTrigger_min=135,score_DialogueTrigger=136,score_TalkTime_min=1,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=135,score_DialogueTrigger=136,score_TalkTime_min=1,score_MusicCooldown=0] MusicCooldown 98

#Dialogue160, Lumiose Station post-Pokemon League
playsound sycamorestheme record @s[score_DialogueTrigger_min=160,score_DialogueTrigger=160,score_TalkTime_min=1,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=160,score_DialogueTrigger=160,score_TalkTime_min=1,score_MusicCooldown=0] MusicCooldown 98

#----------------------------------------------------------------

#Dialogue40
playsound flareappears record @s[score_DialogueTrigger_min=40,score_DialogueTrigger=40,score_TalkTime_min=1,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=40,score_DialogueTrigger=40,score_TalkTime_min=1,score_MusicCooldown=0] MusicCooldown 83

#Dialogue42
playsound flareappears record @s[score_DialogueTrigger_min=42,score_DialogueTrigger=42,score_TalkTime_min=1,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=42,score_DialogueTrigger=42,score_TalkTime_min=1,score_MusicCooldown=0] MusicCooldown 83

#Dialogue47
playsound flareappears record @s[score_DialogueTrigger_min=47,score_DialogueTrigger=47,score_TalkTime_min=1,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=47,score_DialogueTrigger=47,score_TalkTime_min=1,score_MusicCooldown=0] MusicCooldown 83

#Dialogue73&74, Power Plant Flare Admin and Aliana
playsound flareappears record @s[score_DialogueTrigger_min=73,score_DialogueTrigger=74,score_TalkTime_min=1,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=73,score_DialogueTrigger=74,score_TalkTime_min=1,score_MusicCooldown=0] MusicCooldown 83

#Dialogue87&88&89, Poke Ball Factory first guard and Admin talking
playsound flareappears record @s[score_DialogueTrigger_min=87,score_DialogueTrigger=89,score_TalkTime_min=1,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=87,score_DialogueTrigger=89,score_TalkTime_min=1,score_MusicCooldown=0] MusicCooldown 83

#Dialogue96-97, Frost Cavern Team Flare
playsound flareappears record @s[score_DialogueTrigger_min=96,score_DialogueTrigger=97,score_TalkTime_min=1,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=96,score_DialogueTrigger=97,score_TalkTime_min=1,score_MusicCooldown=0] MusicCooldown 83

#Dialogue111-115, Lasandre Labs Flare Scientists
playsound flareappears record @s[score_DialogueTrigger_min=111,score_DialogueTrigger=115,score_TalkTime_min=1,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=111,score_DialogueTrigger=115,score_TalkTime_min=1,score_MusicCooldown=0] MusicCooldown 83

#Dialogue117, Xerosic pre-battle
playsound flareappears record @s[score_DialogueTrigger_min=117,score_DialogueTrigger=117,score_TalkTime_min=59,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=117,score_DialogueTrigger=117,score_TalkTime_min=59,score_MusicCooldown=0] MusicCooldown 83

#Dialogue124&125, Flare HQ double battles 1&2
playsound flareappears record @s[score_DialogueTrigger_min=124,score_DialogueTrigger=125,score_TalkTime_min=1,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=124,score_DialogueTrigger=125,score_TalkTime_min=1,score_MusicCooldown=0] MusicCooldown 83

#Dialogue127, Flare HQ double battles 1&2
playsound flareappears record @s[score_DialogueTrigger_min=127,score_DialogueTrigger=127,score_TalkTime_min=1,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=127,score_DialogueTrigger=127,score_TalkTime_min=1,score_MusicCooldown=0] MusicCooldown 83

#----------------------------------------------------------------

#Dialogue76, Az Route 13 first encounter, silence
scoreboard players set @s[score_DialogueTrigger_min=76,score_DialogueTrigger=76,score_TalkTime_min=1,score_MusicCooldown=0] MusicCooldown 21

#----------------------------------------------------------------

#Dialogue14, Sina and Dexio (Lumiose Gate)
playsound sinaanddexio record @s[score_DialogueTrigger_min=14,score_DialogueTrigger=14,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=14,score_DialogueTrigger=14,score_MusicCooldown=0] MusicCooldown 51

#Dialogue68, Sina and Dexio (Courmarine)
playsound sinaanddexio record @s[score_DialogueTrigger_min=69,score_DialogueTrigger=69,score_TalkTime_min=1,score_TalkTime=133,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=69,score_DialogueTrigger=69,score_TalkTime_min=1,score_TalkTime=133,score_MusicCooldown=0] MusicCooldown 51

#Dialogue159, Sina and Dexio (Lumiose Station)
playsound sinaanddexio record @s[score_DialogueTrigger_min=159,score_DialogueTrigger=159,score_TalkTime_min=1,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=159,score_DialogueTrigger=159,score_TalkTime_min=1,score_MusicCooldown=0] MusicCooldown 51

#----------------------------------------------------------------

#Dialogue22, Lysandre and Diantha
playsound darkskies record @s[score_DialogueTrigger_min=22,score_DialogueTrigger=22,score_TalkTime_min=40,score_TalkTime=174,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=22,score_DialogueTrigger=22,score_TalkTime_min=40,score_TalkTime=174,score_MusicCooldown=0] MusicCooldown 103

#Dialogue104, Lysandre Holo Call ending the world
playsound darkskies record @s[score_DialogueTrigger_min=104,score_DialogueTrigger=104,score_TalkTime_min=40,score_TalkTime=90,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=104,score_DialogueTrigger=104,score_TalkTime_min=40,score_TalkTime=90,score_MusicCooldown=0] MusicCooldown 103

#----------------------------------------------------------------

#Dialogue116, Az's Story
playsound aneternalprison record @s[score_DialogueTrigger_min=116,score_DialogueTrigger=116,score_TalkTime_min=10,score_TalkTime=200,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=116,score_DialogueTrigger=116,score_TalkTime_min=10,score_TalkTime=200,score_MusicCooldown=0] MusicCooldown 264

#----------------------------------------------------------------

#Dialogue119&120, Ultimate weapon being deployed
playsound ultimateweapondeployed record @s[score_DialogueTrigger_min=119,score_DialogueTrigger=120,score_TalkTime_min=10,score_TalkTime=20,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=119,score_DialogueTrigger=120,score_TalkTime_min=10,score_TalkTime=20,score_MusicCooldown=0] MusicCooldown 90

#----------------------------------------------------------------

#Dialogue131, Legendary Pokemon spawning
playsound legendaryawaken record @s[score_DialogueTrigger_min=131,score_DialogueTrigger=131,score_TalkTime_min=1,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=131,score_DialogueTrigger=131,score_TalkTime_min=1,score_MusicCooldown=0] MusicCooldown 94

#----------------------------------------------------------------

#Dialogue154, Hall of Fame
playsound halloffame record @s[score_DialogueTrigger_min=154,score_DialogueTrigger=154,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=154,score_DialogueTrigger=154,score_MusicCooldown=0] MusicCooldown 117

#----------------------------------------------------------------

#Dialogue155, Lumiose Parade
playsound kalostheme record @s[score_DialogueTrigger_min=155,score_DialogueTrigger=155,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=155,score_DialogueTrigger=155,score_MusicCooldown=0] MusicCooldown 131


#----------------------------------------------------------------

#Dialogue156, Az and Floette at Lumiose Parade
playsound thesunshinesdown record @s[score_DialogueTrigger_min=156,score_DialogueTrigger=156,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=156,score_DialogueTrigger=156,score_MusicCooldown=0] MusicCooldown 160

#----------------------------------------------------------------

#Dialogue165, Ghost Girl empty area
scoreboard players set @s[score_DialogueTrigger_min=165,score_DialogueTrigger=165,score_MusicCooldown=0] MusicCooldown 21


#----------------------------------------------------------------

#Dialogue32 Parfum Palace pre-fireworks
playsound togetherwithshauna record @s[score_DialogueTrigger_min=32,score_DialogueTrigger=32,score_TalkTime_min=1,score_TalkTime=34,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=32,score_DialogueTrigger=32,score_TalkTime_min=1,score_TalkTime=34,score_MusicCooldown=0] MusicCooldown 160

#----------------------------------------------------------------

#Dialogue75, Sina and Dexio Heros first appearance in Power Plant
playsound amysteriousfigure record @s[score_DialogueTrigger_min=75,score_DialogueTrigger=75,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=75,score_DialogueTrigger=75,score_MusicCooldown=0] MusicCooldown 59



#----------------------------------------------------------------

#HoloCall13 - Looker first Introduction call
playsound darkskies record @s[score_HoloCall_min=13,score_HoloCall=13,score_TalkTime_min=1,score_TalkTime=40,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_HoloCall_min=13,score_HoloCall=13,score_TalkTime_min=1,score_TalkTime=40,score_MusicCooldown=0] MusicCooldown 103

playsound darkskies record @s[score_TalkTime_min=1,score_TalkTime=65,score_HoloCall_min=17,score_HoloCall=17,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_TalkTime_min=1,score_TalkTime=65,score_HoloCall_min=17,score_HoloCall=17,score_MusicCooldown=0] MusicCooldown 103

playsound darkskies record @s[score_DialogueTrigger_min=188,score_DialogueTrigger=188,score_TalkTime_min=1,score_TalkTime=130,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=188,score_DialogueTrigger=188,score_TalkTime_min=1,score_TalkTime=130,score_MusicCooldown=0] MusicCooldown 103



#Looker Chapter Starts
playsound lookerchapter record @s[score_HoloCall_min=13,score_HoloCall=13,score_TalkTime_min=41,score_TalkTime=45,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_HoloCall_min=13,score_HoloCall=13,score_TalkTime_min=41,score_TalkTime=45,score_MusicCooldown=0] MusicCooldown 10

playsound lookerchapter record @s[score_DialogueTrigger_min=176,score_DialogueTrigger=176,score_TalkTime_min=180,score_TalkTime=183,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=176,score_DialogueTrigger=176,score_TalkTime_min=180,score_TalkTime=183,score_MusicCooldown=0] MusicCooldown 10

playsound lookerchapter record @s[score_DialogueTrigger_min=182,score_DialogueTrigger=182,score_TalkTime_min=1,score_TalkTime=5,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=182,score_DialogueTrigger=182,score_TalkTime_min=1,score_TalkTime=5,score_MusicCooldown=0] MusicCooldown 10

playsound lookerchapter record @s[score_DialogueTrigger_min=185,score_DialogueTrigger=185,score_TalkTime_min=63,score_TalkTime=68,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=185,score_DialogueTrigger=185,score_TalkTime_min=63,score_TalkTime=68,score_MusicCooldown=0] MusicCooldown 10

playsound lookerchapter record @s[score_DialogueTrigger_min=194,score_DialogueTrigger=194,score_TalkTime_min=88,score_TalkTime=95,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=194,score_DialogueTrigger=194,score_TalkTime_min=88,score_TalkTime=95,score_MusicCooldown=0] MusicCooldown 10

playsound lookerchapter record @s[score_TalkTime_min=19,score_HoloCall_min=20,score_HoloCall=20,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_TalkTime_min=19,score_HoloCall_min=20,score_HoloCall=20,score_MusicCooldown=0] MusicCooldown 10




#Dramatic Silence
scoreboard players set @s[score_DialogueTrigger_min=192,score_DialogueTrigger=192,score_TalkTime_min=134,score_TalkTime=199,score_MusicCooldown=0] MusicCooldown 14




#----------------------------------------------------------------

#Looker Themes
playsound lookerstheme record @s[score_DialogueTrigger_min=172,score_DialogueTrigger=172,score_TalkTime_min=50,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=172,score_DialogueTrigger=172,score_TalkTime_min=50,score_MusicCooldown=0] MusicCooldown 91

playsound lookerstheme record @s[score_DialogueTrigger_min=173,score_DialogueTrigger=173,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=173,score_DialogueTrigger=173,score_MusicCooldown=0] MusicCooldown 91

playsound lookerstheme record @s[score_DialogueTrigger_min=175,score_DialogueTrigger=175,score_TalkTime_min=34,score_TalkTime=67,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=175,score_DialogueTrigger=175,score_TalkTime_min=34,score_TalkTime=67,score_MusicCooldown=0] MusicCooldown 91

playsound lookerstheme record @s[score_DialogueTrigger_min=176,score_DialogueTrigger=176,score_TalkTime_min=131,score_TalkTime=179,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=176,score_DialogueTrigger=176,score_TalkTime_min=131,score_TalkTime=179,score_MusicCooldown=0] MusicCooldown 91

playsound lookerstheme record @s[score_DialogueTrigger_min=177,score_DialogueTrigger=177,score_TalkTime_min=487,score_TalkTime=539,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=177,score_DialogueTrigger=177,score_TalkTime_min=487,score_TalkTime=539,score_MusicCooldown=0] MusicCooldown 91

playsound lookerstheme record @s[score_DialogueTrigger_min=182,score_DialogueTrigger=182,score_TalkTime_min=751,score_TalkTime=905,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=182,score_DialogueTrigger=182,score_TalkTime_min=751,score_TalkTime=905,score_MusicCooldown=0] MusicCooldown 91

playsound lookerstheme record @s[score_DialogueTrigger_min=188,score_DialogueTrigger=188,score_TalkTime_min=131,score_TalkTime=239,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=188,score_DialogueTrigger=188,score_TalkTime_min=131,score_TalkTime=239,score_MusicCooldown=0] MusicCooldown 91

playsound lookerstheme record @s[score_DialogueTrigger_min=189,score_DialogueTrigger=189,score_TalkTime_min=32,score_TalkTime=127,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=189,score_DialogueTrigger=189,score_TalkTime_min=32,score_TalkTime=127,score_MusicCooldown=0] MusicCooldown 91

playsound lookerstheme record @s[score_DialogueTrigger_min=190,score_DialogueTrigger=190,score_TalkTime_min=36,score_TalkTime=121,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=190,score_DialogueTrigger=190,score_TalkTime_min=36,score_TalkTime=121,score_MusicCooldown=0] MusicCooldown 91

playsound lookerstheme record @s[score_DialogueTrigger_min=191,score_DialogueTrigger=191,score_TalkTime_min=124,score_TalkTime=149,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=191,score_DialogueTrigger=191,score_TalkTime_min=124,score_TalkTime=149,score_MusicCooldown=0] MusicCooldown 91

playsound lookerstheme record @s[score_DialogueTrigger_min=192,score_DialogueTrigger=192,score_TalkTime_min=29,score_TalkTime=153,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=192,score_DialogueTrigger=192,score_TalkTime_min=29,score_TalkTime=153,score_MusicCooldown=0] MusicCooldown 91

playsound lookerstheme record @s[score_DialogueTrigger_min=212,score_DialogueTrigger=212,score_TalkTime_min=36,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=212,score_DialogueTrigger=212,score_TalkTime_min=36,score_MusicCooldown=0] MusicCooldown 91





#Looker Sorrowful Themes
playsound lookerssorrowfultheme record @s[score_DialogueTrigger_min=175,score_DialogueTrigger=175,score_TalkTime_min=68,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=175,score_DialogueTrigger=175,score_TalkTime_min=68,score_MusicCooldown=0] MusicCooldown 133

playsound lookerssorrowfultheme record @s[score_DialogueTrigger_min=178,score_DialogueTrigger=178,score_TalkTime_min=240,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=178,score_DialogueTrigger=178,score_TalkTime_min=240,score_MusicCooldown=0] MusicCooldown 133

playsound lookerssorrowfultheme record @s[score_DialogueTrigger_min=184,score_DialogueTrigger=184,score_TalkTime_min=215,score_TalkTime=302,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=184,score_DialogueTrigger=184,score_TalkTime_min=145,score_TalkTime=232,score_MusicCooldown=0] MusicCooldown 133

playsound lookerssorrowfultheme record @s[score_DialogueTrigger_min=184,score_DialogueTrigger=184,score_TalkTime_min=660,score_TalkTime=772,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=184,score_DialogueTrigger=184,score_TalkTime_min=661,score_TalkTime=772,score_MusicCooldown=0] MusicCooldown 133

playsound lookerssorrowfultheme record @s[score_DialogueTrigger_min=192,score_DialogueTrigger=192,score_TalkTime_min=200,score_TalkTime=554,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=192,score_DialogueTrigger=192,score_TalkTime_min=200,score_TalkTime=554,score_MusicCooldown=0] MusicCooldown 133

playsound lookerssorrowfultheme record @s[score_DialogueTrigger_min=213,score_DialogueTrigger=213,score_TalkTime_min=374,score_TalkTime=676,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=213,score_DialogueTrigger=213,score_TalkTime_min=374,score_TalkTime=676,score_MusicCooldown=0] MusicCooldown 133

playsound lookerssorrowfultheme record @s[score_DialogueTrigger_min=214,score_DialogueTrigger=214,score_TalkTime_min=76,score_TalkTime=259,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=214,score_DialogueTrigger=214,score_TalkTime_min=76,score_TalkTime=259,score_MusicCooldown=0] MusicCooldown 133

playsound lookerssorrowfultheme record @s[score_DialogueTrigger_min=217,score_DialogueTrigger=217,score_TalkTime_min=596,score_TalkTime=725,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=217,score_DialogueTrigger=217,score_TalkTime_min=596,score_TalkTime=725,score_MusicCooldown=0] MusicCooldown 133





#Emma's Themes
playsound emmastheme record @s[score_DialogueTrigger_min=184,score_DialogueTrigger=184,score_TalkTime_min=487,score_TalkTime=659,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=184,score_DialogueTrigger=184,score_TalkTime_min=487,score_TalkTime=659,score_MusicCooldown=0] MusicCooldown 119

playsound emmastheme record @s[score_DialogueTrigger_min=214,score_DialogueTrigger=214,score_TalkTime_min=266,score_TalkTime=329,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=214,score_DialogueTrigger=214,score_TalkTime_min=266,score_TalkTime=329,score_MusicCooldown=0] MusicCooldown 119

playsound emmastheme record @s[score_DialogueTrigger_min=217,score_DialogueTrigger=217,score_TalkTime_min=94,score_TalkTime=595,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=217,score_DialogueTrigger=217,score_TalkTime_min=94,score_TalkTime=595,score_MusicCooldown=0] MusicCooldown 119




#Looker's in Trouble music
playsound lookersintrouble record @s[score_DialogueTrigger_min=209,score_DialogueTrigger=209,score_TalkTime_min=82,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[score_DialogueTrigger_min=209,score_DialogueTrigger=209,score_TalkTime_min=82,score_MusicCooldown=0] MusicCooldown 77

execute @s[x=-306,y=28,z=280,dx=22,dy=20,dz=47,score_MusicCooldown=0,tag=Dialogue209] ~ ~ ~ playsound lookersintrouble record @s[tag=!Dialogue212] ~ ~ ~ 1000 1 1
execute @s[x=-306,y=28,z=280,dx=22,dy=20,dz=47,score_MusicCooldown=0,tag=Dialogue209] ~ ~ ~ scoreboard players set @s[tag=!Dialogue212] MusicCooldown 77


#----------------------------------------------------------------Entity Based----------------------------------------------------------------

#Bikes
execute @e[type=pixelmon:bike] ~ ~ ~ /playsound bicycle record @s[r=1,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
execute @e[type=pixelmon:bike] ~ ~ ~ /scoreboard players set @s[r=1,score_MusicCooldown=0] MusicCooldown 119

#Skiddo
execute @s[score_MusicCooldown=0] ~ ~ ~ scoreboard players tag @e[r=10,type=pixelmon:pixelmon,tag=!Skiddo] add Skiddo {ndex:672s}
execute @e[type=pixelmon:pixelmon,tag=Skiddo] ~ ~1 ~ /playsound ridingskiddo record @s[r=1,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
execute @e[type=pixelmon:pixelmon,tag=Skiddo] ~ ~1 ~ /scoreboard players set @s[r=1,score_MusicCooldown=0] MusicCooldown 48



#----------------------------------------------------------------Pokemon Center Birthday Theme----------------------------------------------------------------

#Santalune Pokemon Center
playsound pokemoncenterbirthday record @s[x=273,y=65,z=448,dx=50,dy=10,dz=50,score_MusicCooldown=0,tag=Birthday] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=273,y=65,z=448,dx=50,dy=10,dz=50,score_MusicCooldown=0,tag=Birthday] MusicCooldown 175

#Camphrier Pokemon Center
playsound pokemoncenterbirthday record @s[x=-1035,y=79,z=-22,dx=50,dy=10,dz=50,score_MusicCooldown=0,tag=Birthday] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-1035,y=79,z=-22,dx=50,dy=10,dz=50,score_MusicCooldown=0,tag=Birthday] MusicCooldown 175

#Cyllage Pokemon Center
playsound pokemoncenterbirthday record @s[x=-2059,y=76,z=-93,dx=50,dy=10,dz=50,score_MusicCooldown=0,tag=Birthday] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-2059,y=76,z=-93,dx=50,dy=10,dz=50,score_MusicCooldown=0,tag=Birthday] MusicCooldown 175

#Ambrette Pokemon Center
playsound pokemoncenterbirthday record @s[x=-1985,y=101,z=523,dx=50,dy=10,dz=50,score_MusicCooldown=0,tag=Birthday] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-1985,y=101,z=523,dx=50,dy=10,dz=50,score_MusicCooldown=0,tag=Birthday] MusicCooldown 175

#Geosenge Pokemon Center
playsound pokemoncenterbirthday record @s[x=-2265,y=77,z=-657,dx=50,dy=10,dz=50,score_MusicCooldown=0,tag=Birthday] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-2265,y=77,z=-657,dx=50,dy=10,dz=50,score_MusicCooldown=0,tag=Birthday] MusicCooldown 175

#Shalour Pokemon Center
playsound pokemoncenterbirthday record @s[x=-1642,y=55,z=-850,dx=50,dy=10,dz=50,score_MusicCooldown=0,tag=Birthday] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-1642,y=55,z=-850,dx=50,dy=10,dz=50,score_MusicCooldown=0,tag=Birthday] MusicCooldown 175

#Courmarine Pokemon Center
playsound pokemoncenterbirthday record @s[x=-1048,y=87,z=-691,dx=50,dy=10,dz=50,score_MusicCooldown=0,tag=Birthday] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-1048,y=87,z=-691,dx=50,dy=10,dz=50,score_MusicCooldown=0,tag=Birthday] MusicCooldown 175

#Laverre Pokemon Center
playsound pokemoncenterbirthday record @s[x=-92,y=75,z=-1396,dx=50,dy=10,dz=50,score_MusicCooldown=0,tag=Birthday] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-92,y=75,z=-1396,dx=50,dy=10,dz=50,score_MusicCooldown=0,tag=Birthday] MusicCooldown 175

#Dendemille Pokemon Center
playsound pokemoncenterbirthday record @s[x=599,y=85,z=-407,dx=50,dy=10,dz=50,score_MusicCooldown=0,tag=Birthday] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=599,y=85,z=-407,dx=50,dy=10,dz=50,score_MusicCooldown=0,tag=Birthday] MusicCooldown 175

#Anistar Pokemon Center
playsound pokemoncenterbirthday record @s[x=1248,y=77,z=-228,dx=50,dy=10,dz=50,score_MusicCooldown=0,tag=Birthday] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=1248,y=77,z=-228,dx=50,dy=10,dz=50,score_MusicCooldown=0,tag=Birthday] MusicCooldown 175

#Couriway Pokemon Center
playsound pokemoncenterbirthday record @s[x=1454,y=77,z=142,dx=50,dy=10,dz=50,score_MusicCooldown=0,tag=Birthday] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=1454,y=77,z=142,dx=50,dy=10,dz=50,score_MusicCooldown=0,tag=Birthday] MusicCooldown 175

#Snowbelle Pokemon Center
playsound pokemoncenterbirthday record @s[x=1195,y=74,z=472,dx=50,dy=10,dz=50,score_MusicCooldown=0,tag=Birthday] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=1195,y=74,z=472,dx=50,dy=10,dz=50,score_MusicCooldown=0,tag=Birthday] MusicCooldown 175

#Kiloude Pokemon Center
playsound pokemoncenterbirthday record @s[x=1159,y=79,z=1628,dx=50,dy=10,dz=50,score_MusicCooldown=0,tag=Birthday] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=1159,y=79,z=1628,dx=50,dy=10,dz=50,score_MusicCooldown=0,tag=Birthday] MusicCooldown 175

#Lumiose Pokemon Centers
playsound pokemoncenterbirthday record @s[x=-508,y=100,z=426,dx=155,dy=20,dz=36,score_MusicCooldown=0,tag=Birthday] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-508,y=100,z=426,dx=155,dy=20,dz=36,score_MusicCooldown=0,tag=Birthday] MusicCooldown 175

#Pokemon League Pokemon Center
playsound pokemoncenterbirthday record @s[x=-1959,y=36,z=2247,dx=50,dy=10,dz=50,score_MusicCooldown=0,tag=Birthday] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-1959,y=36,z=2247,dx=50,dy=10,dz=50,score_MusicCooldown=0,tag=Birthday] MusicCooldown 175




#----------------------------------------------------------------Pokemon Centers----------------------------------------------------------------

#Santalune Pokemon Center
playsound pokemoncenter record @s[x=273,y=65,z=448,dx=50,dy=10,dz=50,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=273,y=65,z=448,dx=50,dy=10,dz=50,score_MusicCooldown=0] MusicCooldown 108

#Camphrier Pokemon Center
playsound pokemoncenter record @s[x=-1035,y=79,z=-22,dx=50,dy=10,dz=50,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-1035,y=79,z=-22,dx=50,dy=10,dz=50,score_MusicCooldown=0] MusicCooldown 108

#Cyllage Pokemon Center
playsound pokemoncenter record @s[x=-2059,y=76,z=-93,dx=50,dy=10,dz=50,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-2059,y=76,z=-93,dx=50,dy=10,dz=50,score_MusicCooldown=0] MusicCooldown 108

#Ambrette Pokemon Center
playsound pokemoncenter record @s[x=-1985,y=101,z=523,dx=50,dy=10,dz=50,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-1985,y=101,z=523,dx=50,dy=10,dz=50,score_MusicCooldown=0] MusicCooldown 108

#Geosenge Pokemon Center
playsound pokemoncenter record @s[x=-2265,y=77,z=-657,dx=50,dy=10,dz=50,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-2265,y=77,z=-657,dx=50,dy=10,dz=50,score_MusicCooldown=0] MusicCooldown 108

#Shalour Pokemon Center
playsound pokemoncenter record @s[x=-1642,y=55,z=-850,dx=50,dy=10,dz=50,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-1642,y=55,z=-850,dx=50,dy=10,dz=50,score_MusicCooldown=0] MusicCooldown 108

#Courmarine Pokemon Center
playsound pokemoncenter record @s[x=-1048,y=87,z=-691,dx=50,dy=10,dz=50,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-1048,y=87,z=-691,dx=50,dy=10,dz=50,score_MusicCooldown=0] MusicCooldown 108

#Laverre Pokemon Center
playsound pokemoncenter record @s[x=-92,y=75,z=-1396,dx=50,dy=10,dz=50,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-92,y=75,z=-1396,dx=50,dy=10,dz=50,score_MusicCooldown=0] MusicCooldown 108

#Dendemille Pokemon Center
playsound pokemoncenter record @s[x=599,y=85,z=-407,dx=50,dy=10,dz=50,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=599,y=85,z=-407,dx=50,dy=10,dz=50,score_MusicCooldown=0] MusicCooldown 108

#Anistar Pokemon Center
playsound pokemoncenter record @s[x=1248,y=77,z=-228,dx=50,dy=10,dz=50,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=1248,y=77,z=-228,dx=50,dy=10,dz=50,score_MusicCooldown=0] MusicCooldown 108

#Couriway Pokemon Center
playsound pokemoncenter record @s[x=1454,y=77,z=142,dx=50,dy=10,dz=50,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=1454,y=77,z=142,dx=50,dy=10,dz=50,score_MusicCooldown=0] MusicCooldown 108

#Snowbelle Pokemon Center
playsound pokemoncenter record @s[x=1195,y=74,z=472,dx=50,dy=10,dz=50,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=1195,y=74,z=472,dx=50,dy=10,dz=50,score_MusicCooldown=0] MusicCooldown 108

#Kiloude Pokemon Center
playsound pokemoncenter record @s[x=1159,y=79,z=1628,dx=50,dy=10,dz=50,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=1159,y=79,z=1628,dx=50,dy=10,dz=50,score_MusicCooldown=0] MusicCooldown 108

#Lumiose Pokemon Centers
playsound pokemoncenter record @s[x=-508,y=100,z=426,dx=155,dy=20,dz=36,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-508,y=100,z=426,dx=155,dy=20,dz=36,score_MusicCooldown=0] MusicCooldown 108

#Pokemon League Pokemon Center
playsound pokemoncenter record @s[x=-1959,y=36,z=2247,dx=50,dy=10,dz=50,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-1959,y=36,z=2247,dx=50,dy=10,dz=50,score_MusicCooldown=0] MusicCooldown 108

#----------------------------------------------------------------Areas within Areas----------------------------------------------------------------

#Lysandre's Cafe
playsound darkskies record @s[x=-307,y=80,z=425,dx=23,dy=100,dz=28,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-307,y=80,z=425,dx=23,dy=100,dz=28,score_MusicCooldown=0] MusicCooldown 103

#Scary House
playsound scaryhouse record @s[x=-241,y=85,z=-1253,dx=21,dy=10,dz=28,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-241,y=85,z=-1253,dx=21,dy=10,dz=28,score_MusicCooldown=0] MusicCooldown 82

#Frost Cavern Underground 1
playsound caves record @s[x=582,y=0,z=-1444,dx=326,dy=128,dz=550,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=582,y=0,z=-1444,dx=326,dy=128,dz=550,score_MusicCooldown=0] MusicCooldown 66

#Frost Cavern Underground 2
playsound caves record @s[x=444,y=0,z=-1444,dx=137,dy=128,dz=550,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=444,y=0,z=-1444,dx=137,dy=128,dz=550,score_MusicCooldown=0] MusicCooldown 66

#Connecting Cave
playsound glitteringcave record @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_MusicCooldown=0] MusicCooldown 189

#Reflection Cave
playsound caves record @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_MusicCooldown=0] MusicCooldown 66

#Power Plant
playsound powerplant record @s[x=-1092,y=34,z=-401,dx=296,dy=55,dz=122,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-1092,y=34,z=-401,dx=296,dy=55,dz=122,score_MusicCooldown=0] MusicCooldown 208

#Power Plant Volcanion
playsound powerplant record @s[x=-937,y=36,z=-742,dx=280,dy=40,dz=117,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-937,y=36,z=-742,dx=280,dy=40,dz=117,score_MusicCooldown=0] MusicCooldown 208

#Battle Chateau
playsound battlemaison record @s[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_MusicCooldown=0] MusicCooldown 118

#Battle Maison
playsound battlemaison record @s[x=1182,y=63,z=1511,dx=76,dy=31,dz=94,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=1182,y=63,z=1511,dx=76,dy=31,dz=94,score_MusicCooldown=0] MusicCooldown 118



#Lumiose Professor Sycamore Lab
playsound sycamorelab record @s[x=-271,y=99,z=64,dx=36,dy=50,dz=37,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-271,y=99,z=64,dx=36,dy=50,dz=37,score_MusicCooldown=0] MusicCooldown 107

#Lumiose Hotel Richissime
playsound hotelrichissime record @s[x=-508,y=99,z=285,dx=86,dy=60,dz=83,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-508,y=99,z=285,dx=86,dy=60,dz=83,score_MusicCooldown=0] MusicCooldown 114

#Lumiose Museum
playsound hotelrichissime record @s[x=-162,y=0,z=320,dx=162,dy=110,dz=42,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-162,y=0,z=320,dx=162,dy=110,dz=42,score_MusicCooldown=0] MusicCooldown 114

#Lumiose Lysandre Labs
playsound lysandrelabs record @s[x=-402,y=0,z=277,dx=209,dy=256,dz=148,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-402,y=0,z=277,dx=209,dy=256,dz=148,score_MusicCooldown=0] MusicCooldown 185

#Lumiose Coiffure Clips
playsound coiffureclips record @s[x=-131,y=100,z=163,dx=74,dy=12,dz=23,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-131,y=100,z=163,dx=74,dy=12,dz=23,score_MusicCooldown=0] MusicCooldown 104

#Lumiose Friseur Furfrou
playsound coiffureclips record @s[x=-205,y=100,z=203,dx=19,dy=10,dz=25,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-205,y=100,z=203,dx=19,dy=10,dz=25,score_MusicCooldown=0] MusicCooldown 104

#Lumiose PR Studio
playsound prstudio record @s[x=-223,y=100,z=64,dx=115,dy=10,dz=50,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-223,y=100,z=64,dx=115,dy=10,dz=50,score_MusicCooldown=0] MusicCooldown 100

#Lumiose Sushi High Roller
playsound sushihighroller record @s[x=-514,y=100,z=116,dx=50,dy=10,dz=72,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-514,y=100,z=116,dx=50,dy=10,dz=72,score_MusicCooldown=0] MusicCooldown 105

#Lumiose Juice Shoppe
playsound shopping record @s[x=-336,y=100,z=203,dx=19,dy=10,dz=25,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-336,y=100,z=203,dx=19,dy=10,dz=25,score_MusicCooldown=0] MusicCooldown 157

#Lumoise Herboriste
playsound shopping record @s[x=-302,y=100,z=203,dx=19,dy=10,dz=25,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-302,y=100,z=203,dx=19,dy=10,dz=25,score_MusicCooldown=0] MusicCooldown 157

#Lumoise Stone Emporium
playsound shopping record @s[x=-423,y=100,z=203,dx=19,dy=10,dz=25,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-423,y=100,z=203,dx=19,dy=10,dz=25,score_MusicCooldown=0] MusicCooldown 157

#Lumiose Poke Ball Boutique
playsound shopping record @s[x=-269,y=100,z=203,dx=19,dy=10,dz=25,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-269,y=100,z=203,dx=19,dy=10,dz=25,score_MusicCooldown=0] MusicCooldown 157

#Lumiose Boutique Couture
playsound boutique record @s[x=-47,y=100,z=65,dx=40,dy=15,dz=30,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-47,y=100,z=65,dx=40,dy=15,dz=30,score_MusicCooldown=0] MusicCooldown 87



#Team Flare Secret HQ
playsound flaresecrethq record @s[x=-2526,y=0,z=-1074,dx=232,dy=95,dz=167,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-2526,y=0,z=-1074,dx=232,dy=95,dz=167,score_MusicCooldown=0] MusicCooldown 147

#Lost Hotel
playsound glitteringcave record @s[x=403,y=0,z=-497,dx=144,dy=100,dz=127,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=403,y=0,z=-497,dx=144,dy=100,dz=127,score_MusicCooldown=0] MusicCooldown 189

#Friend Safari
playsound friendsafari record @s[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_MusicCooldown=0] MusicCooldown 119

#Terminus Cave Dead End Caverns
playsound glitteringcave record @s[x=1524,y=68,z=6,dx=177,dy=19,dz=100,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=1524,y=68,z=6,dx=177,dy=19,dz=100,score_MusicCooldown=0] MusicCooldown 189



#----------------------------------------------------------------Empty Music Areas----------------------------------------------------------------

#Chamber of Emptiness
playsound waterdrops record @s[x=550,y=70,z=394,dx=63,dy=16,dz=87,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=550,y=70,z=394,dx=63,dy=16,dz=87,score_MusicCooldown=0] MusicCooldown 27

#Sea Spirit's Den
playsound waterdrops record @s[x=-1363,y=21,z=-1264,dx=65,dy=15,dz=83,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-1363,y=21,z=-1264,dx=65,dy=15,dz=83,score_MusicCooldown=0] MusicCooldown 27

#Unknown Dungeon
playsound waterdrops record @s[x=809,y=74,z=525,dx=66,dy=14,dz=92,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=809,y=74,z=525,dx=66,dy=14,dz=92,score_MusicCooldown=0] MusicCooldown 27

#Flymap
scoreboard players set @s[x=1489,y=204,z=-1346,r=30,score_MusicCooldown=0] MusicCooldown 84


#----------------------------------------------------------------Regular Music----------------------------------------------------------------

#Parade Lumiose
playsound kalostheme record @s[x=1469,y=101,z=-1954,r=150,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=1469,y=101,z=-1954,r=150,score_MusicCooldown=0] MusicCooldown 131

#Starting Lobby
playsound title record @s[x=-792,y=100,z=1196,dx=38,dy=20,dz=47,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-792,y=100,z=1196,dx=38,dy=20,dz=47,score_MusicCooldown=0] MusicCooldown 86

#All Gyms
playsound gym record @s[x=-2027,y=0,z=-2285,dx=1319,dy=256,dz=672,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-2027,y=0,z=-2285,dx=1319,dy=256,dz=672,score_MusicCooldown=0] MusicCooldown 121

#Vaniville Town
playsound vanivilletown record @s[x=374,y=0,z=1540,dx=241,dy=256,dz=216,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=374,y=0,z=1540,dx=241,dy=256,dz=216,score_MusicCooldown=0] MusicCooldown 153

#Route 1
playsound route1 record @s[x=445,y=0,z=1442,dx=62,dy=256,dz=87,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=445,y=0,z=1442,dx=62,dy=256,dz=87,score_MusicCooldown=0] MusicCooldown 84

#Aquacorde Town
playsound aquacordetown record @s[x=395,y=0,z=1236,dx=147,dy=256,dz=205,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=395,y=0,z=1236,dx=147,dy=256,dz=205,score_MusicCooldown=0] MusicCooldown 115

#Santalune City
playsound santalunecity record @s[x=93,y=0,z=384,dx=250,dy=256,dz=139,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=93,y=0,z=384,dx=250,dy=256,dz=139,score_MusicCooldown=0] MusicCooldown 117

#Lumiose City
playsound lumiosecity record @s[x=-181,y=101,z=-390,r=395,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-181,y=101,z=-390,r=395,score_MusicCooldown=0] MusicCooldown 150

#Cyllage City
playsound cyllagecity record @s[x=-2223,y=0,z=-217,dx=354,dy=256,dz=275,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-2223,y=0,z=-217,dx=354,dy=256,dz=275,score_MusicCooldown=0] MusicCooldown 105

#Ambrette Town
playsound aquacordetown record @s[x=-2115,y=0,z=504,dx=240,dy=256,dz=258,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-2115,y=0,z=504,dx=240,dy=256,dz=258,score_MusicCooldown=0] MusicCooldown 114

#Geosenge Town
playsound geosengetown record @s[x=-2386,y=0,z=-984,dx=273,dy=256,dz=386,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-2386,y=0,z=-984,dx=273,dy=256,dz=386,score_MusicCooldown=0] MusicCooldown 157

#Geosenge Ultimate Weapon
playsound geosengetown record @s[x=-1306,y=0,z=1736,dx=273,dy=256,dz=386,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-1306,y=0,z=1736,dx=273,dy=256,dz=386,score_MusicCooldown=0] MusicCooldown 157

#Geosenge Destroyed
playsound geosengetown record @s[x=-586,y=0,z=1736,dx=273,dy=256,dz=386,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-586,y=0,z=1736,dx=273,dy=256,dz=386,score_MusicCooldown=0] MusicCooldown 157

#Shalour City
playsound shalourcity record @s[x=-1816,y=0,z=-987,dx=332,dy=256,dz=254,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-1816,y=0,z=-987,dx=332,dy=256,dz=254,score_MusicCooldown=0] MusicCooldown 234

#Coumarine City
playsound coumarinecity record @s[x=-1204,y=0,z=-888,dx=230,dy=256,dz=380,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-1204,y=0,z=-888,dx=230,dy=256,dz=380,score_MusicCooldown=0] MusicCooldown 170

#Laverre City
playsound laverrecity record @s[x=-342,y=0,z=-1577,dx=432,dy=256,dz=274,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-342,y=0,z=-1577,dx=432,dy=256,dz=274,score_MusicCooldown=0] MusicCooldown 194

#Dendemille Town
playsound dendemilletown record @s[x=582,y=0,z=-573,dx=152,dy=256,dz=313,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=582,y=0,z=-573,dx=152,dy=256,dz=313,score_MusicCooldown=0] MusicCooldown 117

#Anistar City
playsound anistarcity record @s[x=1097,y=0,z=-376,dx=334,dy=256,dz=235,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=1097,y=0,z=-376,dx=334,dy=256,dz=235,score_MusicCooldown=0] MusicCooldown 184

#Couriway Town
playsound camphriertown record @s[x=1326,y=0,z=132,dx=360,dy=256,dz=198,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=1326,y=0,z=132,dx=360,dy=256,dz=198,score_MusicCooldown=0] MusicCooldown 117

#Camphrier Town
playsound camphriertown record @s[x=-1146,y=0,z=-213,dx=182,dy=256,dz=337,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-1146,y=0,z=-213,dx=182,dy=256,dz=337,score_MusicCooldown=0] MusicCooldown 117

#Snowbelle City
playsound snowbellecity record @s[x=984,y=0,z=324,dx=341,dy=256,dz=323,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=984,y=0,z=324,dx=341,dy=256,dz=323,score_MusicCooldown=0] MusicCooldown 173

#Kiloude City
playsound kiloudecity record @s[x=1027,y=0,z=1434,dx=331,dy=256,dz=266,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=1027,y=0,z=1434,dx=331,dy=256,dz=266,score_MusicCooldown=0] MusicCooldown 154

#Santalune Forest
playsound santaluneforest record @s[x=331,y=0,z=739,dx=256,dy=256,dz=239,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=331,y=0,z=739,dx=256,dy=256,dz=239,score_MusicCooldown=0] MusicCooldown 104

#Tower of Mastery
playsound towerofmastery record @s[x=-1816,y=0,z=-1284,dx=332,dy=256,dz=296,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-1816,y=0,z=-1284,dx=332,dy=256,dz=296,score_MusicCooldown=0] MusicCooldown 164

#Parfum Palace
playsound parfumpalace record @s[x=-1758,y=0,z=-529,dx=409,dy=256,dz=307,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-1758,y=0,z=-529,dx=409,dy=256,dz=307,score_MusicCooldown=0] MusicCooldown 149

#Glittering Cave
playsound glitteringcave record @s[x=-1542,y=0,z=249,dx=174,dy=256,dz=310,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-1542,y=0,z=249,dx=174,dy=256,dz=310,score_MusicCooldown=0] MusicCooldown 189

#Terminus Cave
playsound glitteringcave record @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_MusicCooldown=0] MusicCooldown 189

#Victory Road 1
playsound victoryroad record @s[x=683,y=0,z=299,dx=21,dy=256,dz=93,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=683,y=0,z=299,dx=21,dy=256,dz=93,score_MusicCooldown=0] MusicCooldown 174

#Victory Road 2
playsound victoryroad record @s[x=543,y=0,z=-37,dx=328,dy=256,dz=272,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=543,y=0,z=-37,dx=328,dy=256,dz=272,score_MusicCooldown=0] MusicCooldown 174

#Victory Road 3
playsound victoryroad record @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_MusicCooldown=0] MusicCooldown 174

#Victory Road 4
playsound victoryroad record @s[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_MusicCooldown=0] MusicCooldown 174

#Route 2
playsound route2 record @s[x=396,y=0,z=979,dx=146,dy=256,dz=256,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=396,y=0,z=979,dx=146,dy=256,dz=256,score_MusicCooldown=0] MusicCooldown 157

#Route 3
playsound route2 record @s[x=251,y=0,z=524,dx=202,dy=256,dz=214,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=251,y=0,z=524,dx=202,dy=256,dz=214,score_MusicCooldown=0] MusicCooldown 157

#Route 4
playsound route4 record @s[x=103,y=0,z=-114,dx=155,dy=256,dz=497,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=103,y=0,z=-114,dx=155,dy=256,dz=497,score_MusicCooldown=0] MusicCooldown 205

#Route 5
playsound route4 record @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_MusicCooldown=0] MusicCooldown 205

#Route 6
playsound route4 record @s[x=-1348,y=0,z=-432,dx=201,dy=256,dz=313,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-1348,y=0,z=-432,dx=201,dy=256,dz=313,score_MusicCooldown=0] MusicCooldown 205

#Route 7
playsound route4 record @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,score_MusicCooldown=0] MusicCooldown 205

#Route 8
playsound route8 record @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_MusicCooldown=0] MusicCooldown 161

#Route 9
playsound route8 record @s[x=-1875,y=0,z=560,dx=507,dy=256,dz=202,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-1875,y=0,z=560,dx=507,dy=256,dz=202,score_MusicCooldown=0] MusicCooldown 161

#Route 10
playsound route8 record @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_MusicCooldown=0] MusicCooldown 161

#Route 11
playsound route8 record @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_MusicCooldown=0] MusicCooldown 161

#Route 12
playsound route8 record @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_MusicCooldown=0] MusicCooldown 161

#Route 13
playsound route8 record @s[x=-973,y=0,z=-871,dx=371,dy=256,dz=651,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-973,y=0,z=-871,dx=371,dy=256,dz=651,score_MusicCooldown=0] MusicCooldown 161

#Route 14
playsound glitteringcave record @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,score_MusicCooldown=0] MusicCooldown 189

#Route 15
playsound route15 record @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292,score_MusicCooldown=0] MusicCooldown 163

#Route 16
playsound route15 record @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273,score_MusicCooldown=0] MusicCooldown 163

#Route 17
playsound route15 record @s[x=735,y=0,z=-417,dx=361,dy=256,dz=495,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=735,y=0,z=-417,dx=361,dy=256,dz=495,score_MusicCooldown=0] MusicCooldown 163

#Route 18
playsound route18 record @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_MusicCooldown=0] MusicCooldown 248

#Route 19
playsound route18 record @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249,score_MusicCooldown=0] MusicCooldown 248

#Route 20
playsound caves record @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_MusicCooldown=0] MusicCooldown 66

#Route 21 1
playsound route18 record @s[x=705,y=95,z=299,dx=278,dy=100,dz=263,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=705,y=95,z=299,dx=278,dy=100,dz=263,score_MusicCooldown=0] MusicCooldown 248

#Route 21 2
playsound route18 record @s[x=683,y=95,z=393,dx=21,dy=100,dz=170,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=683,y=95,z=393,dx=21,dy=100,dz=170,score_MusicCooldown=0] MusicCooldown 248

#Route 22 1
playsound route4 record @s[x=454,y=87,z=524,dx=228,dy=100,dz=214,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=454,y=87,z=524,dx=228,dy=100,dz=214,score_MusicCooldown=0] MusicCooldown 205

#Route 22 2
playsound route4 record @s[x=344,y=87,z=299,dx=338,dy=100,dz=224,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=344,y=87,z=299,dx=338,dy=100,dz=224,score_MusicCooldown=0] MusicCooldown 205

#Pokemon Village
playsound pokemonvillage record @s[x=703,y=90,z=563,dx=280,dy=100,dz=279,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=703,y=90,z=563,dx=280,dy=100,dz=279,score_MusicCooldown=0] MusicCooldown 87

#Azure Bay
playsound route8 record @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,score_MusicCooldown=0] MusicCooldown 161

#Frost Cavern Exterior 1
playsound route15 record @s[x=582,y=0,z=-1444,dx=326,dy=256,dz=870,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=582,y=0,z=-1444,dx=326,dy=256,dz=870,score_MusicCooldown=0] MusicCooldown 163

#Frost Cavern Exterior 2
playsound route15 record @s[x=444,y=0,z=-1444,dx=137,dy=128,dz=560,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=444,y=0,z=-1444,dx=137,dy=128,dz=560,score_MusicCooldown=0] MusicCooldown 163

#Poke Ball Factory
playsound powerplant record @s[x=-342,y=0,z=-2044,dx=431,dy=256,dz=466,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-342,y=0,z=-2044,dx=431,dy=256,dz=466,score_MusicCooldown=0] MusicCooldown 208

#Kiloude City Station
playsound kiloudecity record @s[x=913,y=98,z=1473,dx=70,dy=100,dz=228,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=913,y=98,z=1473,dx=70,dy=100,dz=228,score_MusicCooldown=0] MusicCooldown 154

#Lumiose City Station
playsound lumiosecity record @s[x=984,y=99,z=1845,dx=267,dy=50,dz=200,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=984,y=99,z=1845,dx=267,dy=50,dz=200,score_MusicCooldown=0] MusicCooldown 150

#Lumiose City Interiors (Newmiose)
playsound lumiosecity record @s[x=-514,y=0,z=64,dx=526,dy=256,dz=436,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-514,y=0,z=64,dx=526,dy=256,dz=436,score_MusicCooldown=0] MusicCooldown 150

#Starter Pick Zone
playsound friendstheme record @s[x=-1107,y=99,z=1171,dx=123,dy=30,dz=227,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-1107,y=99,z=1171,dx=123,dy=30,dz=227,score_MusicCooldown=0] MusicCooldown 91

#Pokemon League
playsound pokemonleague record @s[x=-2255,y=0,z=1732,dx=629,dy=256,dz=655,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-2255,y=0,z=1732,dx=629,dy=256,dz=655,score_MusicCooldown=0] MusicCooldown 115

#Sycamore Welcome to the World area
playsound kalostheme record @s[x=-1034,y=99,z=1432,dx=50,dy=50,dz=50,score_MusicCooldown=0] ~ ~ ~ 1000 1 1
scoreboard players set @s[x=-1034,y=99,z=1432,dx=50,dy=50,dz=50,score_MusicCooldown=0] MusicCooldown 131


scoreboard players tag @s remove TrackSeek
#scoreboard players set @s[score_MusicState_min=1] MusicState 0
