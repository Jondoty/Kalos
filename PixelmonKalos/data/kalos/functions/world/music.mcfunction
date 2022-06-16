#MusicCooldown score equal to length of song in seconds x20 (for MC tick speed)
#Scoreboard objective types are dummy. Tags that target player in target selector given by NPC trainers via TrainerCommands.
#Coordinates are based around specific areas within the map. Higher-up commands run before lower commands, allowing priority of music within the same areas.


#First play information
tellraw @s[tag=!FirstSong] ["",{"text":"Tip","bold":true},{"text":": Your Holo Caster is playing music from your hotbar! Move it to your inventory or double click the Holo Caster to turn off the music! Single-clicking resets the song for if glitched."}]
tag @s[tag=!FirstSong] add FirstSong



#----------------------------------------------------------------Battle Music & Tag-based ----------------------------------------------------------------

#Gym Leader Battles
playsound gymleaderbattle record @s[tag=GymLeaderBattleMusic,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
#tag @s[tag=GymLeaderBattleMusic,scores={MusicCooldown=0}] add OldTimingsLonger
scoreboard players set @s[tag=GymLeaderBattleMusic,scores={MusicCooldown=0}] MusicCooldown 364

#Trainer Battles
playsound trainerbattle record @s[tag=TrainerBattleMusic,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
tag @s[tag=TrainerBattleMusic,scores={MusicCooldown=0}] add OldTimings
scoreboard players set @s[tag=TrainerBattleMusic,scores={MusicCooldown=0}] MusicCooldown 227

#Trainer Battles Win
#playsound trainerbattle record @s[tag=TrainerWinMusic,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
#scoreboard players set @s[tag=TrainerWinMusic,scores={MusicCooldown=0}] MusicCooldown 21
#tag @s[tag=TrainerWinMusic] remove TrainerWinMusic

#Elite Four Battles
playsound elitefourbattle record @s[tag=EliteFourBattleMusic,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[tag=EliteFourBattleMusic,scores={MusicCooldown=0}] MusicCooldown 387

#Elite Four Champion Battles
playsound elitefourbattlechamp record @s[tag=ChampionBattleMusic,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[tag=ChampionBattleMusic,scores={MusicCooldown=0}] MusicCooldown 259

#Team Flare Battles
playsound flarebattle record @s[tag=FlareBattleMusic,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
tag @s[tag=FlareBattleMusic,scores={MusicCooldown=0}] add OldTimings
scoreboard players set @s[tag=FlareBattleMusic,scores={MusicCooldown=0}] MusicCooldown 199

#Lysandre Battles
playsound lysandrebattle record @s[tag=LysandreBattleMusic,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
tag @s[tag=LysandreBattleMusic,scores={MusicCooldown=0}] add OldTimings
scoreboard players set @s[tag=LysandreBattleMusic,scores={MusicCooldown=0}] MusicCooldown 230

#Friend/Rival Battles
playsound friendbattle record @s[tag=FriendBattleMusic,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
tag @s[tag=FriendBattleMusic,scores={MusicCooldown=0}] add OldTimings
scoreboard players set @s[tag=FriendBattleMusic,scores={MusicCooldown=0}] MusicCooldown 166

#Successor Korrina Battle
playsound successorbattle record @s[tag=KorrinaBattleMusic,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[tag=KorrinaBattleMusic,scores={MusicCooldown=0}] MusicCooldown 317


#Legendary Battle X Y & Z
execute as @s[type=player] run tag @e[distance=..15,type=pixelmon:pixelmon,tag=!LegendaryXY,nbt={ndex:716s,OwnerUUID:""}] add LegendaryXY
execute as @s[type=player] run tag @e[distance=..15,type=pixelmon:pixelmon,tag=!LegendaryXY,nbt={ndex:717s,OwnerUUID:""}] add LegendaryXY

execute as @s[type=player] run tag @e[x=-2369,y=40,z=-1051,dx=65,dy=20,dz=65,type=pixelmon:pixelmon,tag=!LegendaryXY,nbt={ndex:716s,OwnerUUID:""}] add LegendaryXY
execute as @s[type=player] run tag @e[x=-2369,y=40,z=-1051,dx=65,dy=20,dz=65,type=pixelmon:pixelmon,tag=!LegendaryXY,nbt={ndex:717s,OwnerUUID:""}] add LegendaryXY

execute as @s[type=player] run tag @e[distance=..15,type=pixelmon:pixelmon,tag=!LegendaryXY,nbt={ndex:718s,OwnerUUID:""}] add LegendaryXY
execute as @s[type=player] run tag @e[distance=..15,type=pixelmon:pixelmon,tag=!LegendaryXY,nbt={ndex:719s,OwnerUUID:""}] add LegendaryXY
execute as @s[type=player] run tag @e[distance=..15,type=pixelmon:pixelmon,tag=!LegendaryXY,nbt={ndex:720s,OwnerUUID:""}] add LegendaryXY
execute as @s[type=player] run tag @e[distance=..15,type=pixelmon:pixelmon,tag=!LegendaryXY,nbt={ndex:721s,OwnerUUID:""}] add LegendaryXY

execute as @e[tag=LegendaryXY,type=pixelmon:pixelmon,limit=1] run playsound legendarybattlexy record @a[distance=..10,scores={MusicCooldown=0,TalkTime=0}] ~ ~ ~ 1 1 1
execute as @e[tag=LegendaryXY,type=pixelmon:pixelmon] run scoreboard players set @a[distance=..10,scores={MusicCooldown=0,TalkTime=0}] MusicCooldown 224

#Flare HQ room-specific music if legend is present
execute as @e[x=-2369,y=40,z=-1051,dx=65,dy=20,dz=65,tag=LegendaryXY,type=pixelmon:pixelmon,limit=1] run playsound legendarybattlexy record @a[x=-2369,y=40,z=-1051,dx=65,dy=20,dz=65,scores={MusicCooldown=0,TalkTime=0}] ~ ~ ~ 1 1 1
execute as @e[x=-2369,y=40,z=-1051,dx=65,dy=20,dz=65,tag=LegendaryXY,type=pixelmon:pixelmon] run scoreboard players set @a[x=-2369,y=40,z=-1051,dx=65,dy=20,dz=65,scores={MusicCooldown=0,TalkTime=0}] MusicCooldown 224


#Legendary Battle Kanto
execute as @s[type=player] run tag @e[distance=..15,type=pixelmon:pixelmon,tag=!LegendaryKanto,nbt={ndex:144s,OwnerUUID:""}] add LegendaryKanto
execute as @s[type=player] run tag @e[distance=..15,type=pixelmon:pixelmon,tag=!LegendaryKanto,nbt={ndex:145s,OwnerUUID:""}] add LegendaryKanto
execute as @s[type=player] run tag @e[distance=..15,type=pixelmon:pixelmon,tag=!LegendaryKanto,nbt={ndex:146s,OwnerUUID:""}] add LegendaryKanto
execute as @s[type=player] run tag @e[distance=..15,type=pixelmon:pixelmon,tag=!LegendaryKanto,nbt={ndex:150s,OwnerUUID:""}] add LegendaryKanto

execute as @e[tag=LegendaryKanto,type=pixelmon:pixelmon,limit=1] run playsound mewtwobattle record @s[distance=..10,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
execute as @e[tag=LegendaryKanto,type=pixelmon:pixelmon] run scoreboard players set @s[distance=..10,scores={MusicCooldown=0}] MusicCooldown 259

#Bird Encounters Roaming
playsound birdencounter record @s[scores={DialogueTrigger=167,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=167,MusicCooldown=0}] MusicCooldown 30


#----------------------------------------------------------------Battle Maison----------------------------------------------------------------

execute as @s[tag=BattleMaisonMusic] run playsound trainerbattle record @s[tag=Music1,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
execute as @s[tag=BattleMaisonMusic] run tag @s[tag=Music1,scores={MusicCooldown=0}] add OldTimings
execute as @s[tag=BattleMaisonMusic] run scoreboard players set @s[tag=Music1,scores={MusicCooldown=0}] MusicCooldown 227

execute as @s[tag=BattleMaisonMusic] run playsound wildpokemonbattle record @s[tag=Music2,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
execute as @s[tag=BattleMaisonMusic] run tag @s[tag=Music2,scores={MusicCooldown=0}] add OldTimings
execute as @s[tag=BattleMaisonMusic] run scoreboard players set @s[tag=Music2,scores={MusicCooldown=0}] MusicCooldown 124

execute as @s[tag=BattleMaisonMusic] run playsound friendbattle record @s[tag=Music3,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
execute as @s[tag=BattleMaisonMusic] run tag @s[tag=Music3,scores={MusicCooldown=0}] add OldTimings
execute as @s[tag=BattleMaisonMusic] run scoreboard players set @s[tag=Music3,scores={MusicCooldown=0}] MusicCooldown 166

execute as @s[tag=BattleMaisonMusic] run playsound gymleaderbattle record @s[tag=Music4,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
execute as @s[tag=BattleMaisonMusic] run tag @s[tag=Music4,scores={MusicCooldown=0}] add OldTimings
execute as @s[tag=BattleMaisonMusic] run scoreboard players set @s[tag=Music4,scores={MusicCooldown=0}] MusicCooldown 363

execute as @s[tag=BattleMaisonMusic] run playsound successorbattle record @s[tag=Music5,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
execute as @s[tag=BattleMaisonMusic] run tag @s[tag=Music5,scores={MusicCooldown=0}] add OldTimings
execute as @s[tag=BattleMaisonMusic] run scoreboard players set @s[tag=Music5,scores={MusicCooldown=0}] MusicCooldown 317

execute as @s[tag=BattleMaisonMusic] run playsound lysandrebattle record @s[tag=Music6,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
execute as @s[tag=BattleMaisonMusic] run tag @s[tag=Music6,scores={MusicCooldown=0}] add OldTimings
execute as @s[tag=BattleMaisonMusic] run scoreboard players set @s[tag=Music6,scores={MusicCooldown=0}] MusicCooldown 230

execute as @s[tag=BattleMaisonMusic] run playsound worldchampionships record @s[tag=Music7,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
execute as @s[tag=BattleMaisonMusic] run tag @s[tag=Music7,scores={MusicCooldown=0}] add OldTimings
execute as @s[tag=BattleMaisonMusic] run scoreboard players set @s[tag=Music7,scores={MusicCooldown=0}] MusicCooldown 259




#----------------------------------------------------------------Dialogue Based----------------------------------------------------------------

#Dialogue61, Tower of Mastery post-Serena Battle
playsound friendsforever record @s[scores={DialogueTrigger=61,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=61,MusicCooldown=0}] MusicCooldown 128

#Dialogue140, Route 19 after battled all friends
playsound friendsforever record @s[scores={DialogueTrigger=140,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=140,MusicCooldown=0}] MusicCooldown 128

#----------------------------------------------------------------

#Dialogue80&81, Route 14 south Friends battle
playsound friendstheme record @s[scores={DialogueTrigger=80..81,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=80..81,MusicCooldown=0}] MusicCooldown 91

#----------------------------------------------------------------

#Dialogue18-19, Sycamore's Lab Kanto Starters
playsound sycamorestheme record @s[scores={DialogueTrigger=18..19,TalkTime=1..,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=18..19,TalkTime=1..,MusicCooldown=0}] MusicCooldown 98

#Dialogue66, Sycamore's Theme during Courmarine Entrance
playsound sycamorestheme record @s[scores={DialogueTrigger=66,TalkTime=1..133,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=66,TalkTime=1..133,MusicCooldown=0}] MusicCooldown 98

#Dialogue79, Sycamore's Theme during Lysandre's Cafe Sycamore and Lysandre
playsound sycamorestheme record @s[scores={DialogueTrigger=79,TalkTime=1..,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=79,TalkTime=1..,MusicCooldown=0}] MusicCooldown 98

#Dialogue94, Dendemille Town Sycamore
playsound sycamorestheme record @s[scores={DialogueTrigger=94,TalkTime=1..203,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=94,TalkTime=1..203,MusicCooldown=0}] MusicCooldown 98

#Dialogue135&136, Sycamore in Couriway before and after battle
playsound sycamorestheme record @s[scores={DialogueTrigger=135..136,TalkTime=1..,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=135..136,TalkTime=1..,MusicCooldown=0}] MusicCooldown 98

#Dialogue160, Lumiose Station post-Pokemon League
playsound sycamorestheme record @s[scores={DialogueTrigger=160,TalkTime=1..,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=160,TalkTime=1..,MusicCooldown=0}] MusicCooldown 98

#----------------------------------------------------------------

#Dialogue40
playsound flareappears record @s[scores={DialogueTrigger=40,TalkTime=1..,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=40,TalkTime=1..,MusicCooldown=0}] MusicCooldown 83

#Dialogue42
playsound flareappears record @s[scores={DialogueTrigger=42,TalkTime=1..,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=42,TalkTime=1..,MusicCooldown=0}] MusicCooldown 83

#Dialogue47
playsound flareappears record @s[scores={DialogueTrigger=47,TalkTime=1..,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=47,TalkTime=1..,MusicCooldown=0}] MusicCooldown 83

#Dialogue73&74, Power Plant Flare Admin and Aliana
playsound flareappears record @s[scores={DialogueTrigger=73..74,TalkTime=1..,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=73..74,TalkTime=1..,MusicCooldown=0}] MusicCooldown 83

#Dialogue87&88&89, Poke Ball Factory first guard and Admin talking
playsound flareappears record @s[scores={DialogueTrigger=87..89,TalkTime=1..,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=87..89,TalkTime=1..,MusicCooldown=0}] MusicCooldown 83

#Dialogue96-97, Frost Cavern Team Flare
playsound flareappears record @s[scores={DialogueTrigger=96..97,TalkTime=1..,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=96..97,TalkTime=1..,MusicCooldown=0}] MusicCooldown 83

#Dialogue111-115, Lasandre Labs Flare Scientists
playsound flareappears record @s[scores={DialogueTrigger=111..115,TalkTime=1..,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=111..115,TalkTime=1..,MusicCooldown=0}] MusicCooldown 83

#Dialogue117, Xerosic pre-battle
playsound flareappears record @s[scores={DialogueTrigger=117,TalkTime=59..,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=117,TalkTime=59..,MusicCooldown=0}] MusicCooldown 83

#Dialogue124&125, Flare HQ double battles 1&2
playsound flareappears record @s[scores={DialogueTrigger=124..125,TalkTime=1..,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=124..125,TalkTime=1..,MusicCooldown=0}] MusicCooldown 83

#Dialogue127, Flare HQ double battles 1&2
playsound flareappears record @s[scores={DialogueTrigger=127,TalkTime=1..,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=127,TalkTime=1..,MusicCooldown=0}] MusicCooldown 83

#----------------------------------------------------------------

#Dialogue76, Az Route 13 first encounter, silence
scoreboard players set @s[scores={DialogueTrigger=76..76,TalkTime=1..,MusicCooldown=0}] MusicCooldown 21

#----------------------------------------------------------------

#Dialogue14, Sina and Dexio (Lumiose Gate)
playsound sinaanddexio record @s[scores={DialogueTrigger=14,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=14,MusicCooldown=0}] MusicCooldown 51

#Dialogue68, Sina and Dexio (Courmarine)
playsound sinaanddexio record @s[scores={DialogueTrigger=69..69,TalkTime=1..133,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=69..69,TalkTime=1..133,MusicCooldown=0}] MusicCooldown 51

#Dialogue159, Sina and Dexio (Lumiose Station)
playsound sinaanddexio record @s[scores={DialogueTrigger=159..159,TalkTime=1..,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=159..159,TalkTime=1..,MusicCooldown=0}] MusicCooldown 51

#----------------------------------------------------------------

#Dialogue22, Lysandre and Diantha
playsound darkskies record @s[scores={DialogueTrigger=22..22,TalkTime=40..174,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=22..22,TalkTime=40..174,MusicCooldown=0}] MusicCooldown 103

#Dialogue104, Lysandre Holo Call ending the world
playsound darkskies record @s[scores={DialogueTrigger=104..104,TalkTime=40..90,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=104..104,TalkTime=40..90,MusicCooldown=0}] MusicCooldown 103

#----------------------------------------------------------------

#Dialogue116, Az's Story
playsound aneternalprison record @s[scores={DialogueTrigger=116..116,TalkTime=10..200,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=116..116,TalkTime=10..200,MusicCooldown=0}] MusicCooldown 264

#----------------------------------------------------------------

#Dialogue119&120, Ultimate weapon being deployed
playsound ultimateweapondeployed record @s[scores={DialogueTrigger=119..120,TalkTime=10..20,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=119..120,TalkTime=10..20,MusicCooldown=0}] MusicCooldown 90

#----------------------------------------------------------------

#Dialogue131, Legendary Pokemon spawning
playsound legendaryawaken record @s[scores={DialogueTrigger=131..131,TalkTime=1..,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=131..131,TalkTime=1..,MusicCooldown=0}] MusicCooldown 94

#----------------------------------------------------------------

#Dialogue154, Hall of Fame
playsound halloffame record @s[scores={DialogueTrigger=154..154,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=154..154,MusicCooldown=0}] MusicCooldown 117

#----------------------------------------------------------------

#Dialogue155, Lumiose Parade
playsound kalostheme record @s[scores={DialogueTrigger=155..155,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=155..155,MusicCooldown=0}] MusicCooldown 131


#----------------------------------------------------------------

#Dialogue156, Az and Floette at Lumiose Parade
playsound thesunshinesdown record @s[scores={DialogueTrigger=156..156,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=156..156,MusicCooldown=0}] MusicCooldown 160

#----------------------------------------------------------------

#Dialogue165, Ghost Girl empty area
scoreboard players set @s[scores={DialogueTrigger=165..165,MusicCooldown=0}] MusicCooldown 21


#----------------------------------------------------------------

#Dialogue32 Parfum Palace pre-fireworks
playsound togetherwithshauna record @s[scores={DialogueTrigger=32..32,TalkTime=1..34,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=32..32,TalkTime=1..34,MusicCooldown=0}] MusicCooldown 160

#----------------------------------------------------------------

#Dialogue75, Sina and Dexio Heros first appearance in Power Plant
playsound amysteriousfigure record @s[scores={DialogueTrigger=75..75,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=75..75,MusicCooldown=0}] MusicCooldown 59



#----------------------------------------------------------------

#HoloCall13 - Looker first Introduction call
playsound darkskies record @s[scores={HoloCall=13,TalkTime=1..40,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={HoloCall=13,TalkTime=1..40,MusicCooldown=0}] MusicCooldown 103

playsound darkskies record @s[scores={TalkTime=1..65,HoloCall=17,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={TalkTime=1..65,HoloCall=17,MusicCooldown=0}] MusicCooldown 103

playsound darkskies record @s[scores={DialogueTrigger=188..188,TalkTime=1..130,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=188..188,TalkTime=1..130,MusicCooldown=0}] MusicCooldown 103



#Looker Chapter Starts
playsound lookerchapter record @s[scores={HoloCall=13,TalkTime=41..45,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={HoloCall=13,TalkTime=41..45,MusicCooldown=0}] MusicCooldown 10

playsound lookerchapter record @s[scores={DialogueTrigger=176..176,TalkTime=180..183,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=176..176,TalkTime=180..183,MusicCooldown=0}] MusicCooldown 10

playsound lookerchapter record @s[scores={DialogueTrigger=182..182,TalkTime=1..5,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=182..182,TalkTime=1..5,MusicCooldown=0}] MusicCooldown 10

playsound lookerchapter record @s[scores={DialogueTrigger=185..185,TalkTime=63..68,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=185..185,TalkTime=63..68,MusicCooldown=0}] MusicCooldown 10

playsound lookerchapter record @s[scores={DialogueTrigger=194..194,TalkTime=88..95,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=194..194,TalkTime=88..95,MusicCooldown=0}] MusicCooldown 10

playsound lookerchapter record @s[scores={TalkTime=19..,HoloCall=20,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={TalkTime=19..,HoloCall=20,MusicCooldown=0}] MusicCooldown 10




#Dramatic Silence
scoreboard players set @s[scores={DialogueTrigger=192..192,TalkTime=134..199,MusicCooldown=0}] MusicCooldown 14




#----------------------------------------------------------------

#Looker Themes
playsound lookerstheme record @s[scores={DialogueTrigger=172..172,TalkTime=50..,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=172..172,TalkTime=50..,MusicCooldown=0}] MusicCooldown 91

playsound lookerstheme record @s[scores={DialogueTrigger=173..173,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=173..173,MusicCooldown=0}] MusicCooldown 91

playsound lookerstheme record @s[scores={DialogueTrigger=175..175,TalkTime=34..67,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=175..175,TalkTime=34..67,MusicCooldown=0}] MusicCooldown 91

playsound lookerstheme record @s[scores={DialogueTrigger=176..176,TalkTime=131..179,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=176..176,TalkTime=131..179,MusicCooldown=0}] MusicCooldown 91

playsound lookerstheme record @s[scores={DialogueTrigger=177..177,TalkTime=487..539,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=177..177,TalkTime=487..539,MusicCooldown=0}] MusicCooldown 91

playsound lookerstheme record @s[scores={DialogueTrigger=182..182,TalkTime=751..905,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=182..182,TalkTime=751..905,MusicCooldown=0}] MusicCooldown 91

playsound lookerstheme record @s[scores={DialogueTrigger=188..188,TalkTime=131..239,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=188..188,TalkTime=131..239,MusicCooldown=0}] MusicCooldown 91

playsound lookerstheme record @s[scores={DialogueTrigger=189..189,TalkTime=32..127,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=189..189,TalkTime=32..127,MusicCooldown=0}] MusicCooldown 91

playsound lookerstheme record @s[scores={DialogueTrigger=190..190,TalkTime=36..121,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=190..190,TalkTime=36..121,MusicCooldown=0}] MusicCooldown 91

playsound lookerstheme record @s[scores={DialogueTrigger=191..191,TalkTime=124..149,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=191..191,TalkTime=124..149,MusicCooldown=0}] MusicCooldown 91

playsound lookerstheme record @s[scores={DialogueTrigger=192..192,TalkTime=29..153,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=192..192,TalkTime=29..153,MusicCooldown=0}] MusicCooldown 91

playsound lookerstheme record @s[scores={DialogueTrigger=212..212,TalkTime=36,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=212..212,TalkTime=36,MusicCooldown=0}] MusicCooldown 91





#Looker Sorrowful Themes
playsound lookerssorrowfultheme record @s[scores={DialogueTrigger=175..175,TalkTime=68..,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=175..175,TalkTime=68..,MusicCooldown=0}] MusicCooldown 133

playsound lookerssorrowfultheme record @s[scores={DialogueTrigger=178..178,TalkTime=240..,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=178..178,TalkTime=240..,MusicCooldown=0}] MusicCooldown 133

playsound lookerssorrowfultheme record @s[scores={DialogueTrigger=184..184,TalkTime=215..302,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=184..184,TalkTime=145..232,MusicCooldown=0}] MusicCooldown 133

playsound lookerssorrowfultheme record @s[scores={DialogueTrigger=184..184,TalkTime=660..772,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=184..184,TalkTime=661..772,MusicCooldown=0}] MusicCooldown 133

playsound lookerssorrowfultheme record @s[scores={DialogueTrigger=192..192,TalkTime=200..554,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=192..192,TalkTime=200..554,MusicCooldown=0}] MusicCooldown 133

playsound lookerssorrowfultheme record @s[scores={DialogueTrigger=213..213,TalkTime=374..676,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=213..213,TalkTime=374..676,MusicCooldown=0}] MusicCooldown 133

playsound lookerssorrowfultheme record @s[scores={DialogueTrigger=214..214,TalkTime=76..259,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=214..214,TalkTime=76..259,MusicCooldown=0}] MusicCooldown 133

playsound lookerssorrowfultheme record @s[scores={DialogueTrigger=217..217,TalkTime=596..725,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=217..217,TalkTime=596..725,MusicCooldown=0}] MusicCooldown 133





#Emma's Themes
playsound emmastheme record @s[scores={DialogueTrigger=184..184,TalkTime=487..659,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=184..184,TalkTime=487..659,MusicCooldown=0}] MusicCooldown 119

playsound emmastheme record @s[scores={DialogueTrigger=214..214,TalkTime=266..329,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=214..214,TalkTime=266..329,MusicCooldown=0}] MusicCooldown 119

playsound emmastheme record @s[scores={DialogueTrigger=217..217,TalkTime=94..595,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=217..217,TalkTime=94..595,MusicCooldown=0}] MusicCooldown 119




#Looker's in Trouble music
playsound lookersintrouble record @s[scores={DialogueTrigger=209..209,TalkTime=82..,MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={DialogueTrigger=209..209,TalkTime=82..,MusicCooldown=0}] MusicCooldown 77

execute as @s[x=-306,y=28,z=280,dx=22,dy=20,dz=47,scores={MusicCooldown=0},tag=Dialogue209] run playsound lookersintrouble record @s[tag=!Dialogue212] ~ ~ ~ 1 1 1
execute as @s[x=-306,y=28,z=280,dx=22,dy=20,dz=47,scores={MusicCooldown=0},tag=Dialogue209] run scoreboard players set @s[tag=!Dialogue212] MusicCooldown 77


#----------------------------------------------------------------Entity Based----------------------------------------------------------------

#Bikes
execute at @e[type=pixelmon:bike] run playsound bicycle record @s[distance=..1,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
execute at @e[type=pixelmon:bike] run scoreboard players set @s[distance=..1,scores={MusicCooldown=0}] MusicCooldown 119

#Skiddo
execute at @e[type=pixelmon:pixelmon,nbt={ndex:672s}] run playsound ridingskiddo record @s[distance=..2,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
execute at @e[type=pixelmon:pixelmon,nbt={ndex:672s}] run scoreboard players set @s[distance=..2,scores={MusicCooldown=0}] MusicCooldown 48



#----------------------------------------------------------------Pokemon Center Birthday Theme----------------------------------------------------------------

#Santalune Pokemon Center
playsound pokemoncenterbirthday record @s[x=273,y=65,z=448,dx=50,dy=10,dz=50,scores={MusicCooldown=0},tag=Birthday] ~ ~ ~ 1 1 1
scoreboard players set @s[x=273,y=65,z=448,dx=50,dy=10,dz=50,scores={MusicCooldown=0},tag=Birthday] MusicCooldown 175

#Camphrier Pokemon Center
playsound pokemoncenterbirthday record @s[x=-1035,y=79,z=-22,dx=50,dy=10,dz=50,scores={MusicCooldown=0},tag=Birthday] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-1035,y=79,z=-22,dx=50,dy=10,dz=50,scores={MusicCooldown=0},tag=Birthday] MusicCooldown 175

#Cyllage Pokemon Center
playsound pokemoncenterbirthday record @s[x=-2059,y=76,z=-93,dx=50,dy=10,dz=50,scores={MusicCooldown=0},tag=Birthday] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-2059,y=76,z=-93,dx=50,dy=10,dz=50,scores={MusicCooldown=0},tag=Birthday] MusicCooldown 175

#Ambrette Pokemon Center
playsound pokemoncenterbirthday record @s[x=-1985,y=101,z=523,dx=50,dy=10,dz=50,scores={MusicCooldown=0},tag=Birthday] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-1985,y=101,z=523,dx=50,dy=10,dz=50,scores={MusicCooldown=0},tag=Birthday] MusicCooldown 175

#Geosenge Pokemon Center
playsound pokemoncenterbirthday record @s[x=-2265,y=77,z=-657,dx=50,dy=10,dz=50,scores={MusicCooldown=0},tag=Birthday] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-2265,y=77,z=-657,dx=50,dy=10,dz=50,scores={MusicCooldown=0},tag=Birthday] MusicCooldown 175

#Shalour Pokemon Center
playsound pokemoncenterbirthday record @s[x=-1642,y=55,z=-850,dx=50,dy=10,dz=50,scores={MusicCooldown=0},tag=Birthday] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-1642,y=55,z=-850,dx=50,dy=10,dz=50,scores={MusicCooldown=0},tag=Birthday] MusicCooldown 175

#Courmarine Pokemon Center
playsound pokemoncenterbirthday record @s[x=-1048,y=87,z=-691,dx=50,dy=10,dz=50,scores={MusicCooldown=0},tag=Birthday] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-1048,y=87,z=-691,dx=50,dy=10,dz=50,scores={MusicCooldown=0},tag=Birthday] MusicCooldown 175

#Laverre Pokemon Center
playsound pokemoncenterbirthday record @s[x=-92,y=75,z=-1396,dx=50,dy=10,dz=50,scores={MusicCooldown=0},tag=Birthday] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-92,y=75,z=-1396,dx=50,dy=10,dz=50,scores={MusicCooldown=0},tag=Birthday] MusicCooldown 175

#Dendemille Pokemon Center
playsound pokemoncenterbirthday record @s[x=599,y=85,z=-407,dx=50,dy=10,dz=50,scores={MusicCooldown=0},tag=Birthday] ~ ~ ~ 1 1 1
scoreboard players set @s[x=599,y=85,z=-407,dx=50,dy=10,dz=50,scores={MusicCooldown=0},tag=Birthday] MusicCooldown 175

#Anistar Pokemon Center
playsound pokemoncenterbirthday record @s[x=1248,y=77,z=-228,dx=50,dy=10,dz=50,scores={MusicCooldown=0},tag=Birthday] ~ ~ ~ 1 1 1
scoreboard players set @s[x=1248,y=77,z=-228,dx=50,dy=10,dz=50,scores={MusicCooldown=0},tag=Birthday] MusicCooldown 175

#Couriway Pokemon Center
playsound pokemoncenterbirthday record @s[x=1454,y=77,z=142,dx=50,dy=10,dz=50,scores={MusicCooldown=0},tag=Birthday] ~ ~ ~ 1 1 1
scoreboard players set @s[x=1454,y=77,z=142,dx=50,dy=10,dz=50,scores={MusicCooldown=0},tag=Birthday] MusicCooldown 175

#Snowbelle Pokemon Center
playsound pokemoncenterbirthday record @s[x=1195,y=74,z=472,dx=50,dy=10,dz=50,scores={MusicCooldown=0},tag=Birthday] ~ ~ ~ 1 1 1
scoreboard players set @s[x=1195,y=74,z=472,dx=50,dy=10,dz=50,scores={MusicCooldown=0},tag=Birthday] MusicCooldown 175

#Kiloude Pokemon Center
playsound pokemoncenterbirthday record @s[x=1159,y=79,z=1628,dx=50,dy=10,dz=50,scores={MusicCooldown=0},tag=Birthday] ~ ~ ~ 1 1 1
scoreboard players set @s[x=1159,y=79,z=1628,dx=50,dy=10,dz=50,scores={MusicCooldown=0},tag=Birthday] MusicCooldown 175

#Lumiose Pokemon Centers
playsound pokemoncenterbirthday record @s[x=-508,y=100,z=426,dx=155,dy=20,dz=36,scores={MusicCooldown=0},tag=Birthday] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-508,y=100,z=426,dx=155,dy=20,dz=36,scores={MusicCooldown=0},tag=Birthday] MusicCooldown 175

#Pokemon League Pokemon Center
playsound pokemoncenterbirthday record @s[x=-1959,y=36,z=2247,dx=50,dy=10,dz=50,scores={MusicCooldown=0},tag=Birthday] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-1959,y=36,z=2247,dx=50,dy=10,dz=50,scores={MusicCooldown=0},tag=Birthday] MusicCooldown 175




#----------------------------------------------------------------Pokemon Centers----------------------------------------------------------------

#Santalune Pokemon Center
playsound pokemoncenter record @s[x=273,y=65,z=448,dx=50,dy=10,dz=50,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=273,y=65,z=448,dx=50,dy=10,dz=50,scores={MusicCooldown=0}] MusicCooldown 108

#Camphrier Pokemon Center
playsound pokemoncenter record @s[x=-1035,y=79,z=-22,dx=50,dy=10,dz=50,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-1035,y=79,z=-22,dx=50,dy=10,dz=50,scores={MusicCooldown=0}] MusicCooldown 108

#Cyllage Pokemon Center
playsound pokemoncenter record @s[x=-2059,y=76,z=-93,dx=50,dy=10,dz=50,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-2059,y=76,z=-93,dx=50,dy=10,dz=50,scores={MusicCooldown=0}] MusicCooldown 108

#Ambrette Pokemon Center
playsound pokemoncenter record @s[x=-1985,y=101,z=523,dx=50,dy=10,dz=50,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-1985,y=101,z=523,dx=50,dy=10,dz=50,scores={MusicCooldown=0}] MusicCooldown 108

#Geosenge Pokemon Center
playsound pokemoncenter record @s[x=-2265,y=77,z=-657,dx=50,dy=10,dz=50,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-2265,y=77,z=-657,dx=50,dy=10,dz=50,scores={MusicCooldown=0}] MusicCooldown 108

#Shalour Pokemon Center
playsound pokemoncenter record @s[x=-1642,y=55,z=-850,dx=50,dy=10,dz=50,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-1642,y=55,z=-850,dx=50,dy=10,dz=50,scores={MusicCooldown=0}] MusicCooldown 108

#Courmarine Pokemon Center
playsound pokemoncenter record @s[x=-1048,y=87,z=-691,dx=50,dy=10,dz=50,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-1048,y=87,z=-691,dx=50,dy=10,dz=50,scores={MusicCooldown=0}] MusicCooldown 108

#Laverre Pokemon Center
playsound pokemoncenter record @s[x=-92,y=75,z=-1396,dx=50,dy=10,dz=50,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-92,y=75,z=-1396,dx=50,dy=10,dz=50,scores={MusicCooldown=0}] MusicCooldown 108

#Dendemille Pokemon Center
playsound pokemoncenter record @s[x=599,y=85,z=-407,dx=50,dy=10,dz=50,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=599,y=85,z=-407,dx=50,dy=10,dz=50,scores={MusicCooldown=0}] MusicCooldown 108

#Anistar Pokemon Center
playsound pokemoncenter record @s[x=1248,y=77,z=-228,dx=50,dy=10,dz=50,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=1248,y=77,z=-228,dx=50,dy=10,dz=50,scores={MusicCooldown=0}] MusicCooldown 108

#Couriway Pokemon Center
playsound pokemoncenter record @s[x=1454,y=77,z=142,dx=50,dy=10,dz=50,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=1454,y=77,z=142,dx=50,dy=10,dz=50,scores={MusicCooldown=0}] MusicCooldown 108

#Snowbelle Pokemon Center
playsound pokemoncenter record @s[x=1195,y=74,z=472,dx=50,dy=10,dz=50,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=1195,y=74,z=472,dx=50,dy=10,dz=50,scores={MusicCooldown=0}] MusicCooldown 108

#Kiloude Pokemon Center
playsound pokemoncenter record @s[x=1159,y=79,z=1628,dx=50,dy=10,dz=50,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=1159,y=79,z=1628,dx=50,dy=10,dz=50,scores={MusicCooldown=0}] MusicCooldown 108

#Lumiose Pokemon Centers
playsound pokemoncenter record @s[x=-508,y=100,z=426,dx=155,dy=20,dz=36,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-508,y=100,z=426,dx=155,dy=20,dz=36,scores={MusicCooldown=0}] MusicCooldown 108

#Pokemon League Pokemon Center
playsound pokemoncenter record @s[x=-1959,y=36,z=2247,dx=50,dy=10,dz=50,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-1959,y=36,z=2247,dx=50,dy=10,dz=50,scores={MusicCooldown=0}] MusicCooldown 108

#----------------------------------------------------------------Areas within Areas----------------------------------------------------------------

#Lysandre's Cafe
playsound darkskies record @s[x=-307,y=80,z=425,dx=23,dy=100,dz=28,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-307,y=80,z=425,dx=23,dy=100,dz=28,scores={MusicCooldown=0}] MusicCooldown 103

#Scary House
playsound scaryhouse record @s[x=-241,y=85,z=-1253,dx=21,dy=10,dz=28,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-241,y=85,z=-1253,dx=21,dy=10,dz=28,scores={MusicCooldown=0}] MusicCooldown 82

#Frost Cavern Underground 1
playsound caves record @s[x=582,y=0,z=-1444,dx=326,dy=128,dz=550,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=582,y=0,z=-1444,dx=326,dy=128,dz=550,scores={MusicCooldown=0}] MusicCooldown 66

#Frost Cavern Underground 2
playsound caves record @s[x=444,y=0,z=-1444,dx=137,dy=128,dz=550,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=444,y=0,z=-1444,dx=137,dy=128,dz=550,scores={MusicCooldown=0}] MusicCooldown 66

#Connecting Cave
playsound glitteringcave record @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={MusicCooldown=0}] MusicCooldown 189

#Reflection Cave
playsound caves record @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={MusicCooldown=0}] MusicCooldown 66

#Power Plant
playsound powerplant record @s[x=-1092,y=34,z=-401,dx=296,dy=55,dz=122,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-1092,y=34,z=-401,dx=296,dy=55,dz=122,scores={MusicCooldown=0}] MusicCooldown 208

#Power Plant Volcanion
playsound powerplant record @s[x=-937,y=36,z=-742,dx=280,dy=40,dz=117,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-937,y=36,z=-742,dx=280,dy=40,dz=117,scores={MusicCooldown=0}] MusicCooldown 208

#Battle Chateau
playsound battlemaison record @s[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={MusicCooldown=0}] MusicCooldown 118

#Battle Maison
playsound battlemaison record @s[x=1182,y=63,z=1511,dx=76,dy=31,dz=94,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=1182,y=63,z=1511,dx=76,dy=31,dz=94,scores={MusicCooldown=0}] MusicCooldown 118



#Lumiose Professor Sycamore Lab
playsound sycamorelab record @s[x=-271,y=99,z=64,dx=36,dy=50,dz=37,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-271,y=99,z=64,dx=36,dy=50,dz=37,scores={MusicCooldown=0}] MusicCooldown 107

#Lumiose Hotel Richissime
playsound hotelrichissime record @s[x=-508,y=99,z=285,dx=86,dy=60,dz=83,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-508,y=99,z=285,dx=86,dy=60,dz=83,scores={MusicCooldown=0}] MusicCooldown 114

#Lumiose Museum
playsound hotelrichissime record @s[x=-162,y=0,z=320,dx=162,dy=110,dz=42,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-162,y=0,z=320,dx=162,dy=110,dz=42,scores={MusicCooldown=0}] MusicCooldown 114

#Lumiose Lysandre Labs
playsound lysandrelabs record @s[x=-402,y=0,z=277,dx=209,dy=256,dz=148,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-402,y=0,z=277,dx=209,dy=256,dz=148,scores={MusicCooldown=0}] MusicCooldown 185

#Lumiose Coiffure Clips
playsound coiffureclips record @s[x=-131,y=100,z=163,dx=74,dy=12,dz=23,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-131,y=100,z=163,dx=74,dy=12,dz=23,scores={MusicCooldown=0}] MusicCooldown 104

#Lumiose Friseur Furfrou
playsound coiffureclips record @s[x=-205,y=100,z=203,dx=19,dy=10,dz=25,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-205,y=100,z=203,dx=19,dy=10,dz=25,scores={MusicCooldown=0}] MusicCooldown 104

#Lumiose PR Studio
playsound prstudio record @s[x=-223,y=100,z=64,dx=115,dy=10,dz=50,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-223,y=100,z=64,dx=115,dy=10,dz=50,scores={MusicCooldown=0}] MusicCooldown 100

#Lumiose Sushi High Roller
playsound sushihighroller record @s[x=-514,y=100,z=116,dx=50,dy=10,dz=72,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-514,y=100,z=116,dx=50,dy=10,dz=72,scores={MusicCooldown=0}] MusicCooldown 105

#Lumiose Juice Shoppe
playsound shopping record @s[x=-336,y=100,z=203,dx=19,dy=10,dz=25,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-336,y=100,z=203,dx=19,dy=10,dz=25,scores={MusicCooldown=0}] MusicCooldown 157

#Lumoise Herboriste
playsound shopping record @s[x=-302,y=100,z=203,dx=19,dy=10,dz=25,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-302,y=100,z=203,dx=19,dy=10,dz=25,scores={MusicCooldown=0}] MusicCooldown 157

#Lumoise Stone Emporium
playsound shopping record @s[x=-423,y=100,z=203,dx=19,dy=10,dz=25,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-423,y=100,z=203,dx=19,dy=10,dz=25,scores={MusicCooldown=0}] MusicCooldown 157

#Lumiose Poke Ball Boutique
playsound shopping record @s[x=-269,y=100,z=203,dx=19,dy=10,dz=25,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-269,y=100,z=203,dx=19,dy=10,dz=25,scores={MusicCooldown=0}] MusicCooldown 157

#Lumiose Boutique Couture
playsound boutique record @s[x=-47,y=100,z=65,dx=40,dy=15,dz=30,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-47,y=100,z=65,dx=40,dy=15,dz=30,scores={MusicCooldown=0}] MusicCooldown 87



#Team Flare Secret HQ
playsound flaresecrethq record @s[x=-2526,y=0,z=-1074,dx=232,dy=95,dz=167,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-2526,y=0,z=-1074,dx=232,dy=95,dz=167,scores={MusicCooldown=0}] MusicCooldown 147

#Lost Hotel
playsound glitteringcave record @s[x=403,y=0,z=-497,dx=144,dy=100,dz=127,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=403,y=0,z=-497,dx=144,dy=100,dz=127,scores={MusicCooldown=0}] MusicCooldown 189

#Friend Safari
playsound friendsafari record @s[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={MusicCooldown=0}] MusicCooldown 119

#Terminus Cave Dead End Caverns
playsound glitteringcave record @s[x=1524,y=68,z=6,dx=177,dy=19,dz=100,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=1524,y=68,z=6,dx=177,dy=19,dz=100,scores={MusicCooldown=0}] MusicCooldown 189



#----------------------------------------------------------------Empty Music Areas----------------------------------------------------------------

#Chamber of Emptiness
playsound waterdrops record @s[x=550,y=70,z=394,dx=63,dy=16,dz=87,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=550,y=70,z=394,dx=63,dy=16,dz=87,scores={MusicCooldown=0}] MusicCooldown 27

#Sea Spirit's Den
playsound waterdrops record @s[x=-1363,y=21,z=-1264,dx=65,dy=15,dz=83,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-1363,y=21,z=-1264,dx=65,dy=15,dz=83,scores={MusicCooldown=0}] MusicCooldown 27

#Unknown Dungeon
playsound waterdrops record @s[x=809,y=74,z=525,dx=66,dy=14,dz=92,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=809,y=74,z=525,dx=66,dy=14,dz=92,scores={MusicCooldown=0}] MusicCooldown 27

#Flymap
scoreboard players set @s[x=1489,y=204,z=-1346,distance=..30,scores={MusicCooldown=0}] MusicCooldown 84


#----------------------------------------------------------------Regular Music----------------------------------------------------------------

#Parade Lumiose
playsound kalostheme record @s[x=1469,y=101,z=-1954,distance=..150,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=1469,y=101,z=-1954,distance=..150,scores={MusicCooldown=0}] MusicCooldown 131

#Starting Lobby
playsound title record @s[x=-792,y=100,z=1196,dx=38,dy=20,dz=47,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-792,y=100,z=1196,dx=38,dy=20,dz=47,scores={MusicCooldown=0}] MusicCooldown 86

#All Gyms
playsound gym record @s[x=-2027,y=0,z=-2285,dx=1319,dy=256,dz=672,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-2027,y=0,z=-2285,dx=1319,dy=256,dz=672,scores={MusicCooldown=0}] MusicCooldown 121

#Vaniville Town
playsound vanivilletown record @s[x=374,y=0,z=1540,dx=241,dy=256,dz=216,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=374,y=0,z=1540,dx=241,dy=256,dz=216,scores={MusicCooldown=0}] MusicCooldown 153

#Route 1
playsound route1 record @s[x=445,y=0,z=1442,dx=62,dy=256,dz=87,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=445,y=0,z=1442,dx=62,dy=256,dz=87,scores={MusicCooldown=0}] MusicCooldown 84

#Aquacorde Town
playsound aquacordetown record @s[x=395,y=0,z=1236,dx=147,dy=256,dz=205,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=395,y=0,z=1236,dx=147,dy=256,dz=205,scores={MusicCooldown=0}] MusicCooldown 115

#Santalune City
playsound santalunecity record @s[x=93,y=0,z=384,dx=250,dy=256,dz=139,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=93,y=0,z=384,dx=250,dy=256,dz=139,scores={MusicCooldown=0}] MusicCooldown 117

#Lumiose City
playsound lumiosecity record @s[x=-181,y=101,z=-390,distance=..395,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-181,y=101,z=-390,distance=..395,scores={MusicCooldown=0}] MusicCooldown 150

#Cyllage City
playsound cyllagecity record @s[x=-2223,y=0,z=-217,dx=354,dy=256,dz=275,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-2223,y=0,z=-217,dx=354,dy=256,dz=275,scores={MusicCooldown=0}] MusicCooldown 105

#Ambrette Town
playsound aquacordetown record @s[x=-2115,y=0,z=504,dx=240,dy=256,dz=258,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-2115,y=0,z=504,dx=240,dy=256,dz=258,scores={MusicCooldown=0}] MusicCooldown 114

#Geosenge Town
playsound geosengetown record @s[x=-2386,y=0,z=-984,dx=273,dy=256,dz=386,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-2386,y=0,z=-984,dx=273,dy=256,dz=386,scores={MusicCooldown=0}] MusicCooldown 157

#Geosenge Ultimate Weapon
playsound geosengetown record @s[x=-1306,y=0,z=1736,dx=273,dy=256,dz=386,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-1306,y=0,z=1736,dx=273,dy=256,dz=386,scores={MusicCooldown=0}] MusicCooldown 157

#Geosenge Destroyed
playsound geosengetown record @s[x=-586,y=0,z=1736,dx=273,dy=256,dz=386,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-586,y=0,z=1736,dx=273,dy=256,dz=386,scores={MusicCooldown=0}] MusicCooldown 157

#Shalour City
playsound shalourcity record @s[x=-1816,y=0,z=-987,dx=332,dy=256,dz=254,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-1816,y=0,z=-987,dx=332,dy=256,dz=254,scores={MusicCooldown=0}] MusicCooldown 234

#Coumarine City
playsound coumarinecity record @s[x=-1204,y=0,z=-888,dx=230,dy=256,dz=380,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-1204,y=0,z=-888,dx=230,dy=256,dz=380,scores={MusicCooldown=0}] MusicCooldown 170

#Laverre City
playsound laverrecity record @s[x=-342,y=0,z=-1577,dx=432,dy=256,dz=274,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-342,y=0,z=-1577,dx=432,dy=256,dz=274,scores={MusicCooldown=0}] MusicCooldown 194

#Dendemille Town
playsound dendemilletown record @s[x=582,y=0,z=-573,dx=152,dy=256,dz=313,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=582,y=0,z=-573,dx=152,dy=256,dz=313,scores={MusicCooldown=0}] MusicCooldown 117

#Anistar City
playsound anistarcity record @s[x=1097,y=0,z=-376,dx=334,dy=256,dz=235,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=1097,y=0,z=-376,dx=334,dy=256,dz=235,scores={MusicCooldown=0}] MusicCooldown 184

#Couriway Town
playsound camphriertown record @s[x=1326,y=0,z=132,dx=360,dy=256,dz=198,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=1326,y=0,z=132,dx=360,dy=256,dz=198,scores={MusicCooldown=0}] MusicCooldown 117

#Camphrier Town
playsound camphriertown record @s[x=-1146,y=0,z=-213,dx=182,dy=256,dz=337,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-1146,y=0,z=-213,dx=182,dy=256,dz=337,scores={MusicCooldown=0}] MusicCooldown 117

#Snowbelle City
playsound snowbellecity record @s[x=984,y=0,z=324,dx=341,dy=256,dz=323,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=984,y=0,z=324,dx=341,dy=256,dz=323,scores={MusicCooldown=0}] MusicCooldown 173

#Kiloude City
playsound kiloudecity record @s[x=1027,y=0,z=1434,dx=331,dy=256,dz=266,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=1027,y=0,z=1434,dx=331,dy=256,dz=266,scores={MusicCooldown=0}] MusicCooldown 154

#Santalune Forest
playsound santaluneforest record @s[x=331,y=0,z=739,dx=256,dy=256,dz=239,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=331,y=0,z=739,dx=256,dy=256,dz=239,scores={MusicCooldown=0}] MusicCooldown 104

#Tower of Mastery
playsound towerofmastery record @s[x=-1816,y=0,z=-1284,dx=332,dy=256,dz=296,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-1816,y=0,z=-1284,dx=332,dy=256,dz=296,scores={MusicCooldown=0}] MusicCooldown 164

#Parfum Palace
playsound parfumpalace record @s[x=-1758,y=0,z=-529,dx=409,dy=256,dz=307,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-1758,y=0,z=-529,dx=409,dy=256,dz=307,scores={MusicCooldown=0}] MusicCooldown 149

#Glittering Cave
playsound glitteringcave record @s[x=-1542,y=0,z=249,dx=174,dy=256,dz=310,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-1542,y=0,z=249,dx=174,dy=256,dz=310,scores={MusicCooldown=0}] MusicCooldown 189

#Terminus Cave
playsound glitteringcave record @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={MusicCooldown=0}] MusicCooldown 189

#Victory Road 1
playsound victoryroad record @s[x=683,y=0,z=299,dx=21,dy=256,dz=93,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=683,y=0,z=299,dx=21,dy=256,dz=93,scores={MusicCooldown=0}] MusicCooldown 174

#Victory Road 2
playsound victoryroad record @s[x=543,y=0,z=-37,dx=328,dy=256,dz=272,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=543,y=0,z=-37,dx=328,dy=256,dz=272,scores={MusicCooldown=0}] MusicCooldown 174

#Victory Road 3
playsound victoryroad record @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,scores={MusicCooldown=0}] MusicCooldown 174

#Victory Road 4
playsound victoryroad record @s[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,scores={MusicCooldown=0}] MusicCooldown 174

#Route 2
playsound route2 record @s[x=396,y=0,z=979,dx=146,dy=256,dz=256,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=396,y=0,z=979,dx=146,dy=256,dz=256,scores={MusicCooldown=0}] MusicCooldown 157

#Route 3
playsound route2 record @s[x=251,y=0,z=524,dx=202,dy=256,dz=214,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=251,y=0,z=524,dx=202,dy=256,dz=214,scores={MusicCooldown=0}] MusicCooldown 157

#Route 4
playsound route4 record @s[x=103,y=0,z=-114,dx=155,dy=256,dz=497,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=103,y=0,z=-114,dx=155,dy=256,dz=497,scores={MusicCooldown=0}] MusicCooldown 205

#Route 5
playsound route4 record @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={MusicCooldown=0}] MusicCooldown 205

#Route 6
playsound route4 record @s[x=-1348,y=0,z=-432,dx=201,dy=256,dz=313,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-1348,y=0,z=-432,dx=201,dy=256,dz=313,scores={MusicCooldown=0}] MusicCooldown 205

#Route 7
playsound route4 record @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,scores={MusicCooldown=0}] MusicCooldown 205

#Route 8
playsound route8 record @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={MusicCooldown=0}] MusicCooldown 161

#Route 9
playsound route8 record @s[x=-1875,y=0,z=560,dx=507,dy=256,dz=202,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-1875,y=0,z=560,dx=507,dy=256,dz=202,scores={MusicCooldown=0}] MusicCooldown 161

#Route 10
playsound route8 record @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={MusicCooldown=0}] MusicCooldown 161

#Route 11
playsound route8 record @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={MusicCooldown=0}] MusicCooldown 161

#Route 12
playsound route8 record @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={MusicCooldown=0}] MusicCooldown 161

#Route 13
playsound route8 record @s[x=-973,y=0,z=-871,dx=371,dy=256,dz=651,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-973,y=0,z=-871,dx=371,dy=256,dz=651,scores={MusicCooldown=0}] MusicCooldown 161

#Route 14
playsound glitteringcave record @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,scores={MusicCooldown=0}] MusicCooldown 189

#Route 15
playsound route15 record @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292,scores={MusicCooldown=0}] MusicCooldown 163

#Route 16
playsound route15 record @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273,scores={MusicCooldown=0}] MusicCooldown 163

#Route 17
playsound route15 record @s[x=735,y=0,z=-417,dx=361,dy=256,dz=495,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=735,y=0,z=-417,dx=361,dy=256,dz=495,scores={MusicCooldown=0}] MusicCooldown 163

#Route 18
playsound route18 record @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={MusicCooldown=0}] MusicCooldown 248

#Route 19
playsound route18 record @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249,scores={MusicCooldown=0}] MusicCooldown 248

#Route 20
playsound caves record @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={MusicCooldown=0}] MusicCooldown 66

#Route 21 1
playsound route18 record @s[x=705,y=95,z=299,dx=278,dy=100,dz=263,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=705,y=95,z=299,dx=278,dy=100,dz=263,scores={MusicCooldown=0}] MusicCooldown 248

#Route 21 2
playsound route18 record @s[x=683,y=95,z=393,dx=21,dy=100,dz=170,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=683,y=95,z=393,dx=21,dy=100,dz=170,scores={MusicCooldown=0}] MusicCooldown 248

#Route 22 1
playsound route4 record @s[x=454,y=87,z=524,dx=228,dy=100,dz=214,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=454,y=87,z=524,dx=228,dy=100,dz=214,scores={MusicCooldown=0}] MusicCooldown 205

#Route 22 2
playsound route4 record @s[x=344,y=87,z=299,dx=338,dy=100,dz=224,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=344,y=87,z=299,dx=338,dy=100,dz=224,scores={MusicCooldown=0}] MusicCooldown 205

#Pokemon Village
playsound pokemonvillage record @s[x=703,y=90,z=563,dx=280,dy=100,dz=279,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=703,y=90,z=563,dx=280,dy=100,dz=279,scores={MusicCooldown=0}] MusicCooldown 87

#Azure Bay
playsound route8 record @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={MusicCooldown=0}] MusicCooldown 161

#Frost Cavern Exterior 1
playsound route15 record @s[x=582,y=0,z=-1444,dx=326,dy=256,dz=870,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=582,y=0,z=-1444,dx=326,dy=256,dz=870,scores={MusicCooldown=0}] MusicCooldown 163

#Frost Cavern Exterior 2
playsound route15 record @s[x=444,y=0,z=-1444,dx=137,dy=128,dz=560,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=444,y=0,z=-1444,dx=137,dy=128,dz=560,scores={MusicCooldown=0}] MusicCooldown 163

#Poke Ball Factory
playsound powerplant record @s[x=-342,y=0,z=-2044,dx=431,dy=256,dz=466,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-342,y=0,z=-2044,dx=431,dy=256,dz=466,scores={MusicCooldown=0}] MusicCooldown 208

#Kiloude City Station
playsound kiloudecity record @s[x=913,y=98,z=1473,dx=70,dy=100,dz=228,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=913,y=98,z=1473,dx=70,dy=100,dz=228,scores={MusicCooldown=0}] MusicCooldown 154

#Lumiose City Station
playsound lumiosecity record @s[x=984,y=99,z=1845,dx=267,dy=50,dz=200,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=984,y=99,z=1845,dx=267,dy=50,dz=200,scores={MusicCooldown=0}] MusicCooldown 150

#Lumiose City Interiors (Newmiose)
playsound lumiosecity record @s[x=-514,y=0,z=64,dx=526,dy=256,dz=436,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-514,y=0,z=64,dx=526,dy=256,dz=436,scores={MusicCooldown=0}] MusicCooldown 150

#Starter Pick Zone
playsound friendstheme record @s[x=-1107,y=99,z=1171,dx=123,dy=30,dz=227,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-1107,y=99,z=1171,dx=123,dy=30,dz=227,scores={MusicCooldown=0}] MusicCooldown 91

#Pokemon League
playsound pokemonleague record @s[x=-2255,y=0,z=1732,dx=629,dy=256,dz=655,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-2255,y=0,z=1732,dx=629,dy=256,dz=655,scores={MusicCooldown=0}] MusicCooldown 115

#Sycamore Welcome to the World area
playsound kalostheme record @s[x=-1034,y=99,z=1432,dx=50,dy=50,dz=50,scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
scoreboard players set @s[x=-1034,y=99,z=1432,dx=50,dy=50,dz=50,scores={MusicCooldown=0}] MusicCooldown 131


tag @s remove TrackSeek
#scoreboard players set @s[score_MusicState_min=1] MusicState 0
