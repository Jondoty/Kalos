tellraw @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] {"text":"Beginning Adventure...","italic":true,"color":"gray"}

#World Gamerules
gamerule doDaylightCycle true
gamerule keepInventory true
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list
difficulty peaceful

gamemode adventure @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3]


#sets spawnpoint in Vaniville
spawnpoint @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] 506 118 1558


#tps player to lobby if they have a Deaths score (and thus glitched back into the spawn)
tellraw @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3,score_DialogueTrigger=0,score_Deaths_min=1] {"text":"Death detected, not clearing data or giving initial scores...","italic":true,"color":"gray"}
tp @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3,score_DialogueTrigger=0,score_Deaths_min=1] -783 102 1210.0 -90 13
scoreboard players set @a[x=-783,y=102,z=1210,r=20,score_DialogueTrigger=0,score_Deaths_min=1] Deaths 0

tellraw @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3,score_DialogueTrigger_min=1,score_Deaths_min=1] {"text":"Death detected, not clearing data or giving initial scores...","italic":true,"color":"gray"}
tp @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3,score_DialogueTrigger_min=1,score_Deaths_min=1] -783 102 1210.0 -90 13
scoreboard players set @a[x=-783,y=102,z=1210,r=20,score_DialogueTrigger_min=1,score_Deaths_min=1] Deaths 0


#Removes player's current advancements
advancement revoke @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] everything

#Gives player root starting advancement
advancement grant @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] only kalos:root



#Items
give @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your hotbar.","","Can be double-clicked to","toggle music on and off."]},HideFlags:63}
give @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] pixelmon:blackbadgecase 1 0
give @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] pixelmon:new_running_boots 1
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /givemoney @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] 2000


#Starting Scoreboard Scores
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] MusicCooldown 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] MusicState 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FriendSafari 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] StarterPick 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] RockInteract 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] RockTrigger 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] PokemonLeague 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Gender 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] ChateauRank 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] HoloCall 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] DialogueTrigger 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Geosenge 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] LookerTickets 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] RestaurantBattle 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] BattleStreak 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] BattlePoint 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] BattleMaison 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] PlayedDays 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TalkTime 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] PhotoSpot 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerClass 0

#Event tag Resets if present
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove GhostGirl
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove KantoStarters
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove LucarioMoves
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove PowerPlantPass
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Admin1
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Admin3
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Admin4
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Admin6
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove SycamoresNote
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove TMVPass
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove HoopaCatch
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove VolcanionCatch

scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Viscount
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Earl
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Marquises
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Duke
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove GrandDuke
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove GrandDukeGet
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove GDTrainer1
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove GDTrainer2
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove GDTrainer3
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove GDTrainer4
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove GDTrainer5
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove GDTrainer6
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove GDTrainer7
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove GDTrainer8
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove GDTrainer9
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove GDTrainer10
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove GDTrainer11
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove GDTrainer12


#Adds Battle Maison default music tag
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] add Music1
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Music2
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Music3
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Music4
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Music5
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Music6
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Music7



#Removes Photo Spot tags
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove PhotoSpot1
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove PhotoSpot2
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove PhotoSpot3
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove PhotoSpot4
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove PhotoSpot5
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove PhotoSpot6
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove PhotoSpot7
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove PhotoSpot8
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove PhotoSpot9
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove PhotoSpot10
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove PhotoSpot11
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove PhotoSpot12
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove PhotoSpot13
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove PhotoSpot14



#Dialogue tags if present
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue1
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue2
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue3
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue4
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue5
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue6
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue7
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue8
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue9
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue10
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue11
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue12
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue13
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue14
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue15
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue16
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue17
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue18
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue19
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue20
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue21
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue22
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue23
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue24
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue25
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue26
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue27
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue28
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue29
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue30
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue31
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue32
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue33
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue34
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue35
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue36
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue37
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue38
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue39
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue40
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue41
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue42
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue43
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue44
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue45
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue46
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue47
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue48
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue49
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue50
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue51
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue52
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue53
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue54
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue55
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue56
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue57
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue58
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue59
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue60
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue61
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue62
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue63
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue64
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue65
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue66
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue67
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue68
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue69
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue70
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue71
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue72
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue73
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue74
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue75
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue76
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue77
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue78
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue79
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue80
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue81
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue82
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue83
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue84
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue85
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue86
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue87
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue88
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue89
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue90
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue91
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue92
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue93
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue94
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue95
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue96
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue97
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue98
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue99
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue100
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue101
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue102
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue103
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue104
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue105
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue106
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue107
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue108
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue109
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue110
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue111
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue112
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue113
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue114
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue115
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue116
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue117
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue118
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue119
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue120
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue121
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue122
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue123
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue124
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue125
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue126
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue127
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue128
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue129
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue130
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue131
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue132
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue133
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue134
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue135
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue136
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue137
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue138
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue139
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue140
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue141
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue142
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue143
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue144
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue145
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue146
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue147
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue148
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue149
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue150
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue151
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue152
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue153
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue154
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue155
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue156
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue157
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue158
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue159
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue160
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue161
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue162
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue163
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue164
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue165
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue166
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue167
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue168
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue169
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue170
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue171
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue172
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue173
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue174
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue175
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue176
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue177
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue178
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue179
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue180
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue181
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue182
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue183
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue184
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue185
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue186
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue187
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue188
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue189
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue190
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue191
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue192
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue193
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue194
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue195
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue196
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue197
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue198
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue199
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue200
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue201
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue202
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue203
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue204
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue205
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue206
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue207
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue208
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue209
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue210
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue211
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue212
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue213
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue214
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue215
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue216
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue217
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue218
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue219
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue220
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue221
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue222
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue223
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue224
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue225
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue226
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue227
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue228
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue229
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue230
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue231
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue232
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue233
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue234
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue235
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue236
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue237
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue238
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue239
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue240
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue241
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue242
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue243
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue244
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue245
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue246
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue247
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue248
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue249
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue250
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue251
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue252
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue253
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue254
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue255
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue256
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue257
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue258
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue259
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue260
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue261
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue262
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue263
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue264
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue265
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue266
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue267
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue268
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue269
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue270
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue271
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue272
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue273
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue274
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue275
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue276
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue277
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue278
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue279
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue280
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue281
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue282
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue283
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue284
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue285
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue286
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue287
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue288
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue289
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue290
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue291
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue292
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue293
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue294
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue295
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue296
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue297
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue298
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue299
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Dialogue300


#Legends
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Mewtwo 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Zapdos 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Moltres 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Articuno 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Xerneas 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Yveltal 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Zygarde 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Hoopa 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Diancie 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Volcanion 0


#Berries
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] OranPickup 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] PersimPickup 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] AguavPickup 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] MagoPickup 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] IapapaPickup 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] SitrusPickup 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] AspearPickup 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] RoseliPickup 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] LeppaPickup 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] LumPickup 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] WacanPickup 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] YachePickup 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] KasibPickup 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FigyPickup 0


#Friend Safari Trainers, won't re-enable battles though if battled previously
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSNormal1 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSNormal2 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSNormal3 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSNormal4 0

scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSFire1 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSFire2 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSFire3 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSFire4 0

scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSFighting1 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSFighting2 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSFighting3 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSFighting4 0

scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSWater1 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSWater2 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSWater3 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSWater4 0

scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSFlying1 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSFlying2 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSFlying3 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSFlying4 0

scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSGrass1 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSGrass2 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSGrass3 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSGrass4 0

scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSPoison1 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSPoison2 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSPoison3 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSPoison4 0

scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSElectric1 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSElectric2 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSElectric3 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSElectric4 0

scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSGround1 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSGround2 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSGround3 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSGround4 0

scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSPsychic1 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSPsychic2 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSPsychic3 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSPsychic4 0

scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSRock1 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSRock2 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSRock3 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSRock4 0

scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSIce1 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSIce2 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSIce3 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSIce4 0

scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSBug1 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSBug2 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSBug3 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSBug4 0

scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSDragon1 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSDragon2 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSDragon3 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSDragon4 0

scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSGhost1 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSGhost2 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSGhost3 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSGhost4 0

scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSDark1 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSDark2 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSDark3 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSDark4 0

scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSSteel1 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSSteel2 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSSteel3 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSSteel4 0

scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSFairy1 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSFairy2 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSFairy3 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] FSFairy4 0


#Resets Mega Stone scores if they are present
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] MegaStones 0

scoreboard players reset @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Abomasite
scoreboard players reset @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Absolite
scoreboard players reset @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Aggronite
scoreboard players reset @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Alakazite
scoreboard players reset @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Banettite
scoreboard players reset @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Diancite
scoreboard players reset @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Garchompite
scoreboard players reset @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Gyaradosite
scoreboard players reset @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Heracronite
scoreboard players reset @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Houndoominite
scoreboard players reset @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Kangaskhanite
scoreboard players reset @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Manectite
scoreboard players reset @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Mawilite
scoreboard players reset @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Medichamite
scoreboard players reset @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Mewtwonite_X
scoreboard players reset @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Mewtwonite_Y
scoreboard players reset @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Pinsirite
scoreboard players reset @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Scizorite
scoreboard players reset @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Tyranitarite


#NPC Interact Poke Loot
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot0 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot1 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot2 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot3 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot4 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot5 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot6 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot7 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot8 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot9 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot10 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot11 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot12 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot13 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot14 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot15 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot16 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot17 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot18 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot19 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot20 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot21 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot22 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot23 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot24 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot25 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot26 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot27 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot28 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot29 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot30 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot31 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot32 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot33 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot34 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot35 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot36 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot37 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot38 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot39 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot40 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot41 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot42 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot43 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot44 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot45 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot46 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot47 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot48 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot49 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot50 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot51 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot52 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot53 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot54 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot55 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot56 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot57 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot58 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot59 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot60 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot61 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot62 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot63 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot64 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot65 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot66 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot67 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot68 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot69 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot70 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot71 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot72 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot73 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot74 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot75 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot76 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot77 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot78 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot79 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot80 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot81 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot82 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot83 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot84 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot85 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot86 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot87 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot88 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot89 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot90 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot91 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot92 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot93 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot94 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot95 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot96 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot97 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot98 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot99 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot100 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot101 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot102 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot103 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot104 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot105 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot106 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot107 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot108 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot109 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot110 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot111 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot112 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot113 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot114 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot115 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot116 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot117 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot118 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot119 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot120 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot121 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot122 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot123 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot124 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] TrainerLoot125 0



#Resets clothing
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Hat1 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Hat2 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Hat3 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Hat4 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Hat5 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Hat6 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Hat7 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Hat8 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Hat9 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Hat10 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Hat11 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Hat12 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Hat13 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Hat14 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Hat15 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Hat16 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Hat17 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Hat18 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Hat19 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Hat20 0


scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shirt1 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shirt2 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shirt3 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shirt4 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shirt5 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shirt6 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shirt7 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shirt8 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shirt9 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shirt10 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shirt11 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shirt12 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shirt13 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shirt14 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shirt15 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shirt16 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shirt17 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shirt18 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shirt19 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shirt20 0


scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Pants1 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Pants2 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Pants3 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Pants4 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Pants5 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Pants6 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Pants7 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Pants8 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Pants9 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Pants10 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Pants11 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Pants12 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Pants13 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Pants14 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Pants15 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Pants16 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Pants17 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Pants18 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Pants19 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Pants20 0


scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shoes1 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shoes2 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shoes3 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shoes4 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shoes5 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shoes6 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shoes7 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shoes8 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shoes9 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shoes10 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shoes11 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shoes12 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shoes13 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shoes14 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shoes15 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shoes16 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shoes17 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shoes18 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shoes19 0
scoreboard players set @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] Shoes20 0



#Removes Gym Leader tags if present, won't re-enable battles though if battled previously
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Viola
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Grant
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Korrina
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Ramos
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Clemont
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Valerie
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Olympia
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Wulfric
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove AllGyms


#Removes FlyMap Tags
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove FlyVaniville
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove FlyAquacorde
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove FlySantalune
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove FlyLumiose
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove FlyCamphrier
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove FlyCyllage
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove FlyAmbrette
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove FlyGeosenge
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove FlyShalour
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove FlyCoumarine
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove FlyLaverre
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove FlyDendemille
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove FlyAnistar
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove FlyCouriway
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove FlySnowbelle
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove FlyKiloude
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove FlyPokemonLeague
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove FlySpawn


#Removes Holo Caster Call tags
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Call1
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Call2
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Call3
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Call4
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Call5
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Call6
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Call7
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Call8
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Call9
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Call10
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Call11
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Call12
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Call13
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Call14
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Call15
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Call16
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Call17
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Call18
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Call19
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Call20
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Call21
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Call22
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Call23
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Call24
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Call25
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Call26
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Call27
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Call28
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Call29
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Call30




#Battle Chateau Tags
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove GrandDuke
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove GrandDuchess
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Viscount
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Earl
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Marquises
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Duke


#Looker Bureau Story Tickets
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove Looker Tickets
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove TicketMuseum
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove TicketHotel
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove TicketHerb
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove TicketGym
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove TicketCenter



#Removes Legendary non-Respawn tags if present
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove MewtwoCatch
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove ZygardeCatch
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove DiancieCatch
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove HoopaCatch
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove VolcanionCatch
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove ZapdosCatch
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove MoltresCatch
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove ArticunoCatch




#TM Quiz Tags
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove QuizCooldown
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove TMQuiz1
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove TMQuiz2
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove TMQuiz3
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] remove TMQuiz4


#Gives InitialTags score to check for later in case of an issue
scoreboard players tag @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3] add InitialTags

















#Tp to lobby
tp @a[x=-553,y=99,z=1256,dx=2,dy=3,dz=3,score_DialogueTrigger=0] -783 102 1210.0 -90 13
