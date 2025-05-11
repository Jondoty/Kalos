tellraw @s {"text":"Beginning Adventure...","italic":true,"color":"gray"}

#World Gamerules
gamerule doDaylightCycle true
gamerule keepInventory true
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list
difficulty peaceful

gamemode adventure @s


#sets spawnpoint in Vaniville
spawnpoint @s 506 118 1558


#tps player to lobby if they have a Deaths score (and thus glitched back into the spawn)
tellraw @s[x=-553,y=99,z=1256,dx=2,dy=3,dz=3,scores={Deaths=1..}] {"text":"Death detected, not clearing data or giving initial scores... Go into a portal if not obtained initial scores.","italic":true,"color":"gray"}
tp @s[x=-553,y=99,z=1256,dx=2,dy=3,dz=3,scores={Deaths=1..}] -783 102 1210.0 -90 13
scoreboard players set @s Deaths 0


#Removes player's current advancements
advancement revoke @s everything

#Gives player root starting advancement
advancement grant @s only kalos:root



#Items
function kalos:spawn/holocaster
scoreboard players add @s Money 2000


#Starting Scoreboard Scores
scoreboard players set @s MusicCooldown 0
scoreboard players set @s MusicState 0
scoreboard players set @s FriendSafari 0
scoreboard players set @s StarterPick 0
scoreboard players set @s RockInteract 0
scoreboard players set @s RockTrigger 0
scoreboard players set @s PokemonLeague 0
scoreboard players set @s Gender 0
scoreboard players set @s ChateauRank 0
scoreboard players set @s HoloCall 0
scoreboard players set @s DialogueTrigger 0
scoreboard players set @s Geosenge 0
scoreboard players set @s LookerTickets 0
scoreboard players set @s RestaurantBattle 0
scoreboard players set @s BattleStreak 0
scoreboard players set @s BattlePoint 0
scoreboard players set @s BattleMaison 0
scoreboard players set @s PlayedDays 0
scoreboard players set @s TalkTime 0
scoreboard players set @s PhotoSpot 0
scoreboard players set @s TrainerClass 0

#Event tag Resets if present
tag @s remove GhostGirl
tag @s remove KantoStarters
tag @s remove LucarioMoves
tag @s remove PowerPlantPass
tag @s remove Admin1
tag @s remove Admin3
tag @s remove Admin4
tag @s remove Admin6
tag @s remove SycamoresNote
tag @s remove TMVPass
tag @s remove HoopaCatch
tag @s remove VolcanionCatch

tag @s remove Viscount
tag @s remove Earl
tag @s remove Marquises
tag @s remove Duke
tag @s remove GrandDuke
tag @s remove GrandDukeGet
tag @s remove GDTrainer1
tag @s remove GDTrainer2
tag @s remove GDTrainer3
tag @s remove GDTrainer4
tag @s remove GDTrainer5
tag @s remove GDTrainer6
tag @s remove GDTrainer7
tag @s remove GDTrainer8
tag @s remove GDTrainer9
tag @s remove GDTrainer10
tag @s remove GDTrainer11
tag @s remove GDTrainer12


#Adds Battle Maison default music tag
tag @s add Music1
tag @s remove Music2
tag @s remove Music3
tag @s remove Music4
tag @s remove Music5
tag @s remove Music6
tag @s remove Music7



#Removes Photo Spot tags
tag @s remove PhotoSpot1
tag @s remove PhotoSpot2
tag @s remove PhotoSpot3
tag @s remove PhotoSpot4
tag @s remove PhotoSpot5
tag @s remove PhotoSpot6
tag @s remove PhotoSpot7
tag @s remove PhotoSpot8
tag @s remove PhotoSpot9
tag @s remove PhotoSpot10
tag @s remove PhotoSpot11
tag @s remove PhotoSpot12
tag @s remove PhotoSpot13
tag @s remove PhotoSpot14



#Dialogue tags if present
tag @s remove Dialogue1
tag @s remove Dialogue2
tag @s remove Dialogue3
tag @s remove Dialogue4
tag @s remove Dialogue5
tag @s remove Dialogue6
tag @s remove Dialogue7
tag @s remove Dialogue8
tag @s remove Dialogue9
tag @s remove Dialogue10
tag @s remove Dialogue11
tag @s remove Dialogue12
tag @s remove Dialogue13
tag @s remove Dialogue14
tag @s remove Dialogue15
tag @s remove Dialogue16
tag @s remove Dialogue17
tag @s remove Dialogue18
tag @s remove Dialogue19
tag @s remove Dialogue20
tag @s remove Dialogue21
tag @s remove Dialogue22
tag @s remove Dialogue23
tag @s remove Dialogue24
tag @s remove Dialogue25
tag @s remove Dialogue26
tag @s remove Dialogue27
tag @s remove Dialogue28
tag @s remove Dialogue29
tag @s remove Dialogue30
tag @s remove Dialogue31
tag @s remove Dialogue32
tag @s remove Dialogue33
tag @s remove Dialogue34
tag @s remove Dialogue35
tag @s remove Dialogue36
tag @s remove Dialogue37
tag @s remove Dialogue38
tag @s remove Dialogue39
tag @s remove Dialogue40
tag @s remove Dialogue41
tag @s remove Dialogue42
tag @s remove Dialogue43
tag @s remove Dialogue44
tag @s remove Dialogue45
tag @s remove Dialogue46
tag @s remove Dialogue47
tag @s remove Dialogue48
tag @s remove Dialogue49
tag @s remove Dialogue50
tag @s remove Dialogue51
tag @s remove Dialogue52
tag @s remove Dialogue53
tag @s remove Dialogue54
tag @s remove Dialogue55
tag @s remove Dialogue56
tag @s remove Dialogue57
tag @s remove Dialogue58
tag @s remove Dialogue59
tag @s remove Dialogue60
tag @s remove Dialogue61
tag @s remove Dialogue62
tag @s remove Dialogue63
tag @s remove Dialogue64
tag @s remove Dialogue65
tag @s remove Dialogue66
tag @s remove Dialogue67
tag @s remove Dialogue68
tag @s remove Dialogue69
tag @s remove Dialogue70
tag @s remove Dialogue71
tag @s remove Dialogue72
tag @s remove Dialogue73
tag @s remove Dialogue74
tag @s remove Dialogue75
tag @s remove Dialogue76
tag @s remove Dialogue77
tag @s remove Dialogue78
tag @s remove Dialogue79
tag @s remove Dialogue80
tag @s remove Dialogue81
tag @s remove Dialogue82
tag @s remove Dialogue83
tag @s remove Dialogue84
tag @s remove Dialogue85
tag @s remove Dialogue86
tag @s remove Dialogue87
tag @s remove Dialogue88
tag @s remove Dialogue89
tag @s remove Dialogue90
tag @s remove Dialogue91
tag @s remove Dialogue92
tag @s remove Dialogue93
tag @s remove Dialogue94
tag @s remove Dialogue95
tag @s remove Dialogue96
tag @s remove Dialogue97
tag @s remove Dialogue98
tag @s remove Dialogue99
tag @s remove Dialogue100
tag @s remove Dialogue101
tag @s remove Dialogue102
tag @s remove Dialogue103
tag @s remove Dialogue104
tag @s remove Dialogue105
tag @s remove Dialogue106
tag @s remove Dialogue107
tag @s remove Dialogue108
tag @s remove Dialogue109
tag @s remove Dialogue110
tag @s remove Dialogue111
tag @s remove Dialogue112
tag @s remove Dialogue113
tag @s remove Dialogue114
tag @s remove Dialogue115
tag @s remove Dialogue116
tag @s remove Dialogue117
tag @s remove Dialogue118
tag @s remove Dialogue119
tag @s remove Dialogue120
tag @s remove Dialogue121
tag @s remove Dialogue122
tag @s remove Dialogue123
tag @s remove Dialogue124
tag @s remove Dialogue125
tag @s remove Dialogue126
tag @s remove Dialogue127
tag @s remove Dialogue128
tag @s remove Dialogue129
tag @s remove Dialogue130
tag @s remove Dialogue131
tag @s remove Dialogue132
tag @s remove Dialogue133
tag @s remove Dialogue134
tag @s remove Dialogue135
tag @s remove Dialogue136
tag @s remove Dialogue137
tag @s remove Dialogue138
tag @s remove Dialogue139
tag @s remove Dialogue140
tag @s remove Dialogue141
tag @s remove Dialogue142
tag @s remove Dialogue143
tag @s remove Dialogue144
tag @s remove Dialogue145
tag @s remove Dialogue146
tag @s remove Dialogue147
tag @s remove Dialogue148
tag @s remove Dialogue149
tag @s remove Dialogue150
tag @s remove Dialogue151
tag @s remove Dialogue152
tag @s remove Dialogue153
tag @s remove Dialogue154
tag @s remove Dialogue155
tag @s remove Dialogue156
tag @s remove Dialogue157
tag @s remove Dialogue158
tag @s remove Dialogue159
tag @s remove Dialogue160
tag @s remove Dialogue161
tag @s remove Dialogue162
tag @s remove Dialogue163
tag @s remove Dialogue164
tag @s remove Dialogue165
tag @s remove Dialogue166
tag @s remove Dialogue167
tag @s remove Dialogue168
tag @s remove Dialogue169
tag @s remove Dialogue170
tag @s remove Dialogue171
tag @s remove Dialogue172
tag @s remove Dialogue173
tag @s remove Dialogue174
tag @s remove Dialogue175
tag @s remove Dialogue176
tag @s remove Dialogue177
tag @s remove Dialogue178
tag @s remove Dialogue179
tag @s remove Dialogue180
tag @s remove Dialogue181
tag @s remove Dialogue182
tag @s remove Dialogue183
tag @s remove Dialogue184
tag @s remove Dialogue185
tag @s remove Dialogue186
tag @s remove Dialogue187
tag @s remove Dialogue188
tag @s remove Dialogue189
tag @s remove Dialogue190
tag @s remove Dialogue191
tag @s remove Dialogue192
tag @s remove Dialogue193
tag @s remove Dialogue194
tag @s remove Dialogue195
tag @s remove Dialogue196
tag @s remove Dialogue197
tag @s remove Dialogue198
tag @s remove Dialogue199
tag @s remove Dialogue200
tag @s remove Dialogue201
tag @s remove Dialogue202
tag @s remove Dialogue203
tag @s remove Dialogue204
tag @s remove Dialogue205
tag @s remove Dialogue206
tag @s remove Dialogue207
tag @s remove Dialogue208
tag @s remove Dialogue209
tag @s remove Dialogue210
tag @s remove Dialogue211
tag @s remove Dialogue212
tag @s remove Dialogue213
tag @s remove Dialogue214
tag @s remove Dialogue215
tag @s remove Dialogue216
tag @s remove Dialogue217
tag @s remove Dialogue218
tag @s remove Dialogue219
tag @s remove Dialogue220
tag @s remove Dialogue221
tag @s remove Dialogue222
tag @s remove Dialogue223
tag @s remove Dialogue224
tag @s remove Dialogue225
tag @s remove Dialogue226
tag @s remove Dialogue227
tag @s remove Dialogue228
tag @s remove Dialogue229
tag @s remove Dialogue230
tag @s remove Dialogue231
tag @s remove Dialogue232
tag @s remove Dialogue233
tag @s remove Dialogue234
tag @s remove Dialogue235
tag @s remove Dialogue236
tag @s remove Dialogue237
tag @s remove Dialogue238
tag @s remove Dialogue239
tag @s remove Dialogue240
tag @s remove Dialogue241
tag @s remove Dialogue242
tag @s remove Dialogue243
tag @s remove Dialogue244
tag @s remove Dialogue245
tag @s remove Dialogue246
tag @s remove Dialogue247
tag @s remove Dialogue248
tag @s remove Dialogue249
tag @s remove Dialogue250
tag @s remove Dialogue251
tag @s remove Dialogue252
tag @s remove Dialogue253
tag @s remove Dialogue254
tag @s remove Dialogue255
tag @s remove Dialogue256
tag @s remove Dialogue257
tag @s remove Dialogue258
tag @s remove Dialogue259
tag @s remove Dialogue260
tag @s remove Dialogue261
tag @s remove Dialogue262
tag @s remove Dialogue263
tag @s remove Dialogue264
tag @s remove Dialogue265
tag @s remove Dialogue266
tag @s remove Dialogue267
tag @s remove Dialogue268
tag @s remove Dialogue269
tag @s remove Dialogue270
tag @s remove Dialogue271
tag @s remove Dialogue272
tag @s remove Dialogue273
tag @s remove Dialogue274
tag @s remove Dialogue275
tag @s remove Dialogue276
tag @s remove Dialogue277
tag @s remove Dialogue278
tag @s remove Dialogue279
tag @s remove Dialogue280
tag @s remove Dialogue281
tag @s remove Dialogue282
tag @s remove Dialogue283
tag @s remove Dialogue284
tag @s remove Dialogue285
tag @s remove Dialogue286
tag @s remove Dialogue287
tag @s remove Dialogue288
tag @s remove Dialogue289
tag @s remove Dialogue290
tag @s remove Dialogue291
tag @s remove Dialogue292
tag @s remove Dialogue293
tag @s remove Dialogue294
tag @s remove Dialogue295
tag @s remove Dialogue296
tag @s remove Dialogue297
tag @s remove Dialogue298
tag @s remove Dialogue299
tag @s remove Dialogue300


#Legends
scoreboard players set @s Mewtwo 0
scoreboard players set @s Zapdos 0
scoreboard players set @s Moltres 0
scoreboard players set @s Articuno 0
scoreboard players set @s Xerneas 0
scoreboard players set @s Yveltal 0
scoreboard players set @s Zygarde 0
scoreboard players set @s Hoopa 0
scoreboard players set @s Diancie 0
scoreboard players set @s Volcanion 0


#Berries
scoreboard players set @s OranPickup 0
scoreboard players set @s PersimPickup 0
scoreboard players set @s AguavPickup 0
scoreboard players set @s MagoPickup 0
scoreboard players set @s IapapaPickup 0
scoreboard players set @s SitrusPickup 0
scoreboard players set @s AspearPickup 0
scoreboard players set @s RoseliPickup 0
scoreboard players set @s LeppaPickup 0
scoreboard players set @s LumPickup 0
scoreboard players set @s WacanPickup 0
scoreboard players set @s YachePickup 0
scoreboard players set @s KasibPickup 0
scoreboard players set @s FigyPickup 0


#Friend Safari Trainers, won't re-enable battles though if battled previously
scoreboard players set @s FSNormal1 0
scoreboard players set @s FSNormal2 0
scoreboard players set @s FSNormal3 0
scoreboard players set @s FSNormal4 0

scoreboard players set @s FSFire1 0
scoreboard players set @s FSFire2 0
scoreboard players set @s FSFire3 0
scoreboard players set @s FSFire4 0

scoreboard players set @s FSFighting1 0
scoreboard players set @s FSFighting2 0
scoreboard players set @s FSFighting3 0
scoreboard players set @s FSFighting4 0

scoreboard players set @s FSWater1 0
scoreboard players set @s FSWater2 0
scoreboard players set @s FSWater3 0
scoreboard players set @s FSWater4 0

scoreboard players set @s FSFlying1 0
scoreboard players set @s FSFlying2 0
scoreboard players set @s FSFlying3 0
scoreboard players set @s FSFlying4 0

scoreboard players set @s FSGrass1 0
scoreboard players set @s FSGrass2 0
scoreboard players set @s FSGrass3 0
scoreboard players set @s FSGrass4 0

scoreboard players set @s FSPoison1 0
scoreboard players set @s FSPoison2 0
scoreboard players set @s FSPoison3 0
scoreboard players set @s FSPoison4 0

scoreboard players set @s FSElectric1 0
scoreboard players set @s FSElectric2 0
scoreboard players set @s FSElectric3 0
scoreboard players set @s FSElectric4 0

scoreboard players set @s FSGround1 0
scoreboard players set @s FSGround2 0
scoreboard players set @s FSGround3 0
scoreboard players set @s FSGround4 0

scoreboard players set @s FSPsychic1 0
scoreboard players set @s FSPsychic2 0
scoreboard players set @s FSPsychic3 0
scoreboard players set @s FSPsychic4 0

scoreboard players set @s FSRock1 0
scoreboard players set @s FSRock2 0
scoreboard players set @s FSRock3 0
scoreboard players set @s FSRock4 0

scoreboard players set @s FSIce1 0
scoreboard players set @s FSIce2 0
scoreboard players set @s FSIce3 0
scoreboard players set @s FSIce4 0

scoreboard players set @s FSBug1 0
scoreboard players set @s FSBug2 0
scoreboard players set @s FSBug3 0
scoreboard players set @s FSBug4 0

scoreboard players set @s FSDragon1 0
scoreboard players set @s FSDragon2 0
scoreboard players set @s FSDragon3 0
scoreboard players set @s FSDragon4 0

scoreboard players set @s FSGhost1 0
scoreboard players set @s FSGhost2 0
scoreboard players set @s FSGhost3 0
scoreboard players set @s FSGhost4 0

scoreboard players set @s FSDark1 0
scoreboard players set @s FSDark2 0
scoreboard players set @s FSDark3 0
scoreboard players set @s FSDark4 0

scoreboard players set @s FSSteel1 0
scoreboard players set @s FSSteel2 0
scoreboard players set @s FSSteel3 0
scoreboard players set @s FSSteel4 0

scoreboard players set @s FSFairy1 0
scoreboard players set @s FSFairy2 0
scoreboard players set @s FSFairy3 0
scoreboard players set @s FSFairy4 0


#Resets Mega Stone scores if they are present
scoreboard players set @s MegaStones 0

scoreboard players reset @s Abomasite
scoreboard players reset @s Absolite
scoreboard players reset @s Aggronite
scoreboard players reset @s Alakazite
scoreboard players reset @s Banettite
scoreboard players reset @s Diancite
scoreboard players reset @s Garchompite
scoreboard players reset @s Gyaradosite
scoreboard players reset @s Heracronite
scoreboard players reset @s Houndoominite
scoreboard players reset @s Kangaskhanite
scoreboard players reset @s Manectite
scoreboard players reset @s Mawilite
scoreboard players reset @s Medichamite
scoreboard players reset @s Mewtwonite_X
scoreboard players reset @s Mewtwonite_Y
scoreboard players reset @s Pinsirite
scoreboard players reset @s Scizorite
scoreboard players reset @s Tyranitarite


#NPC Interact Poke Loot
scoreboard players set @s TrainerLoot0 0
scoreboard players set @s TrainerLoot1 0
scoreboard players set @s TrainerLoot2 0
scoreboard players set @s TrainerLoot3 0
scoreboard players set @s TrainerLoot4 0
scoreboard players set @s TrainerLoot5 0
scoreboard players set @s TrainerLoot6 0
scoreboard players set @s TrainerLoot7 0
scoreboard players set @s TrainerLoot8 0
scoreboard players set @s TrainerLoot9 0
scoreboard players set @s TrainerLoot10 0
scoreboard players set @s TrainerLoot11 0
scoreboard players set @s TrainerLoot12 0
scoreboard players set @s TrainerLoot13 0
scoreboard players set @s TrainerLoot14 0
scoreboard players set @s TrainerLoot15 0
scoreboard players set @s TrainerLoot16 0
scoreboard players set @s TrainerLoot17 0
scoreboard players set @s TrainerLoot18 0
scoreboard players set @s TrainerLoot19 0
scoreboard players set @s TrainerLoot20 0
scoreboard players set @s TrainerLoot21 0
scoreboard players set @s TrainerLoot22 0
scoreboard players set @s TrainerLoot23 0
scoreboard players set @s TrainerLoot24 0
scoreboard players set @s TrainerLoot25 0
scoreboard players set @s TrainerLoot26 0
scoreboard players set @s TrainerLoot27 0
scoreboard players set @s TrainerLoot28 0
scoreboard players set @s TrainerLoot29 0
scoreboard players set @s TrainerLoot30 0
scoreboard players set @s TrainerLoot31 0
scoreboard players set @s TrainerLoot32 0
scoreboard players set @s TrainerLoot33 0
scoreboard players set @s TrainerLoot34 0
scoreboard players set @s TrainerLoot35 0
scoreboard players set @s TrainerLoot36 0
scoreboard players set @s TrainerLoot37 0
scoreboard players set @s TrainerLoot38 0
scoreboard players set @s TrainerLoot39 0
scoreboard players set @s TrainerLoot40 0
scoreboard players set @s TrainerLoot41 0
scoreboard players set @s TrainerLoot42 0
scoreboard players set @s TrainerLoot43 0
scoreboard players set @s TrainerLoot44 0
scoreboard players set @s TrainerLoot45 0
scoreboard players set @s TrainerLoot46 0
scoreboard players set @s TrainerLoot47 0
scoreboard players set @s TrainerLoot48 0
scoreboard players set @s TrainerLoot49 0
scoreboard players set @s TrainerLoot50 0
scoreboard players set @s TrainerLoot51 0
scoreboard players set @s TrainerLoot52 0
scoreboard players set @s TrainerLoot53 0
scoreboard players set @s TrainerLoot54 0
scoreboard players set @s TrainerLoot55 0
scoreboard players set @s TrainerLoot56 0
scoreboard players set @s TrainerLoot57 0
scoreboard players set @s TrainerLoot58 0
scoreboard players set @s TrainerLoot59 0
scoreboard players set @s TrainerLoot60 0
scoreboard players set @s TrainerLoot61 0
scoreboard players set @s TrainerLoot62 0
scoreboard players set @s TrainerLoot63 0
scoreboard players set @s TrainerLoot64 0
scoreboard players set @s TrainerLoot65 0
scoreboard players set @s TrainerLoot66 0
scoreboard players set @s TrainerLoot67 0
scoreboard players set @s TrainerLoot68 0
scoreboard players set @s TrainerLoot69 0
scoreboard players set @s TrainerLoot70 0
scoreboard players set @s TrainerLoot71 0
scoreboard players set @s TrainerLoot72 0
scoreboard players set @s TrainerLoot73 0
scoreboard players set @s TrainerLoot74 0
scoreboard players set @s TrainerLoot75 0
scoreboard players set @s TrainerLoot76 0
scoreboard players set @s TrainerLoot77 0
scoreboard players set @s TrainerLoot78 0
scoreboard players set @s TrainerLoot79 0
scoreboard players set @s TrainerLoot80 0
scoreboard players set @s TrainerLoot81 0
scoreboard players set @s TrainerLoot82 0
scoreboard players set @s TrainerLoot83 0
scoreboard players set @s TrainerLoot84 0
scoreboard players set @s TrainerLoot85 0
scoreboard players set @s TrainerLoot86 0
scoreboard players set @s TrainerLoot87 0
scoreboard players set @s TrainerLoot88 0
scoreboard players set @s TrainerLoot89 0
scoreboard players set @s TrainerLoot90 0
scoreboard players set @s TrainerLoot91 0
scoreboard players set @s TrainerLoot92 0
scoreboard players set @s TrainerLoot93 0
scoreboard players set @s TrainerLoot94 0
scoreboard players set @s TrainerLoot95 0
scoreboard players set @s TrainerLoot96 0
scoreboard players set @s TrainerLoot97 0
scoreboard players set @s TrainerLoot98 0
scoreboard players set @s TrainerLoot99 0
scoreboard players set @s TrainerLoot100 0
scoreboard players set @s TrainerLoot101 0
scoreboard players set @s TrainerLoot102 0
scoreboard players set @s TrainerLoot103 0
scoreboard players set @s TrainerLoot104 0
scoreboard players set @s TrainerLoot105 0
scoreboard players set @s TrainerLoot106 0
scoreboard players set @s TrainerLoot107 0
scoreboard players set @s TrainerLoot108 0
scoreboard players set @s TrainerLoot109 0
scoreboard players set @s TrainerLoot110 0
scoreboard players set @s TrainerLoot111 0
scoreboard players set @s TrainerLoot112 0
scoreboard players set @s TrainerLoot113 0
scoreboard players set @s TrainerLoot114 0
scoreboard players set @s TrainerLoot115 0
scoreboard players set @s TrainerLoot116 0
scoreboard players set @s TrainerLoot117 0
scoreboard players set @s TrainerLoot118 0
scoreboard players set @s TrainerLoot119 0
scoreboard players set @s TrainerLoot120 0
scoreboard players set @s TrainerLoot121 0
scoreboard players set @s TrainerLoot122 0
scoreboard players set @s TrainerLoot123 0
scoreboard players set @s TrainerLoot124 0
scoreboard players set @s TrainerLoot125 0



#Resets clothing
scoreboard players set @s Hat1 0
scoreboard players set @s Hat2 0
scoreboard players set @s Hat3 0
scoreboard players set @s Hat4 0
scoreboard players set @s Hat5 0
scoreboard players set @s Hat6 0
scoreboard players set @s Hat7 0
scoreboard players set @s Hat8 0
scoreboard players set @s Hat9 0
scoreboard players set @s Hat10 0
scoreboard players set @s Hat11 0
scoreboard players set @s Hat12 0
scoreboard players set @s Hat13 0
scoreboard players set @s Hat14 0
scoreboard players set @s Hat15 0
scoreboard players set @s Hat16 0
scoreboard players set @s Hat17 0
scoreboard players set @s Hat18 0
scoreboard players set @s Hat19 0
scoreboard players set @s Hat20 0


scoreboard players set @s Shirt1 0
scoreboard players set @s Shirt2 0
scoreboard players set @s Shirt3 0
scoreboard players set @s Shirt4 0
scoreboard players set @s Shirt5 0
scoreboard players set @s Shirt6 0
scoreboard players set @s Shirt7 0
scoreboard players set @s Shirt8 0
scoreboard players set @s Shirt9 0
scoreboard players set @s Shirt10 0
scoreboard players set @s Shirt11 0
scoreboard players set @s Shirt12 0
scoreboard players set @s Shirt13 0
scoreboard players set @s Shirt14 0
scoreboard players set @s Shirt15 0
scoreboard players set @s Shirt16 0
scoreboard players set @s Shirt17 0
scoreboard players set @s Shirt18 0
scoreboard players set @s Shirt19 0
scoreboard players set @s Shirt20 0


scoreboard players set @s Pants1 0
scoreboard players set @s Pants2 0
scoreboard players set @s Pants3 0
scoreboard players set @s Pants4 0
scoreboard players set @s Pants5 0
scoreboard players set @s Pants6 0
scoreboard players set @s Pants7 0
scoreboard players set @s Pants8 0
scoreboard players set @s Pants9 0
scoreboard players set @s Pants10 0
scoreboard players set @s Pants11 0
scoreboard players set @s Pants12 0
scoreboard players set @s Pants13 0
scoreboard players set @s Pants14 0
scoreboard players set @s Pants15 0
scoreboard players set @s Pants16 0
scoreboard players set @s Pants17 0
scoreboard players set @s Pants18 0
scoreboard players set @s Pants19 0
scoreboard players set @s Pants20 0


scoreboard players set @s Shoes1 0
scoreboard players set @s Shoes2 0
scoreboard players set @s Shoes3 0
scoreboard players set @s Shoes4 0
scoreboard players set @s Shoes5 0
scoreboard players set @s Shoes6 0
scoreboard players set @s Shoes7 0
scoreboard players set @s Shoes8 0
scoreboard players set @s Shoes9 0
scoreboard players set @s Shoes10 0
scoreboard players set @s Shoes11 0
scoreboard players set @s Shoes12 0
scoreboard players set @s Shoes13 0
scoreboard players set @s Shoes14 0
scoreboard players set @s Shoes15 0
scoreboard players set @s Shoes16 0
scoreboard players set @s Shoes17 0
scoreboard players set @s Shoes18 0
scoreboard players set @s Shoes19 0
scoreboard players set @s Shoes20 0



#Removes Gym Leader tags if present, won't re-enable battles though if battled previously
tag @s remove Viola
tag @s remove Grant
tag @s remove Korrina
tag @s remove Ramos
tag @s remove Clemont
tag @s remove Valerie
tag @s remove Olympia
tag @s remove Wulfric
tag @s remove AllGyms


#Removes FlyMap Tags
tag @s remove FlyVaniville
tag @s remove FlyAquacorde
tag @s remove FlySantalune
tag @s remove FlyLumiose
tag @s remove FlyCamphrier
tag @s remove FlyCyllage
tag @s remove FlyAmbrette
tag @s remove FlyGeosenge
tag @s remove FlyShalour
tag @s remove FlyCoumarine
tag @s remove FlyLaverre
tag @s remove FlyDendemille
tag @s remove FlyAnistar
tag @s remove FlyCouriway
tag @s remove FlySnowbelle
tag @s remove FlyKiloude
tag @s remove FlyPokemonLeague
tag @s remove FlySpawn


#Removes Holo Caster Call tags
tag @s remove Call1
tag @s remove Call2
tag @s remove Call3
tag @s remove Call4
tag @s remove Call5
tag @s remove Call6
tag @s remove Call7
tag @s remove Call8
tag @s remove Call9
tag @s remove Call10
tag @s remove Call11
tag @s remove Call12
tag @s remove Call13
tag @s remove Call14
tag @s remove Call15
tag @s remove Call16
tag @s remove Call17
tag @s remove Call18
tag @s remove Call19
tag @s remove Call20
tag @s remove Call21
tag @s remove Call22
tag @s remove Call23
tag @s remove Call24
tag @s remove Call25
tag @s remove Call26
tag @s remove Call27
tag @s remove Call28
tag @s remove Call29
tag @s remove Call30




#Battle Chateau Tags
tag @s remove GrandDuke
tag @s remove GrandDuchess
tag @s remove Viscount
tag @s remove Earl
tag @s remove Marquises
tag @s remove Duke


#Looker Bureau Story Tickets
tag @s remove LookerTickets
tag @s remove TicketMuseum
tag @s remove TicketHotel
tag @s remove TicketHerb
tag @s remove TicketGym
tag @s remove TicketCenter



#Removes Legendary non-Respawn tags if present
tag @s remove MewtwoCatch
tag @s remove ZygardeCatch
tag @s remove DiancieCatch
tag @s remove HoopaCatch
tag @s remove VolcanionCatch
tag @s remove ZapdosCatch
tag @s remove MoltresCatch
tag @s remove ArticunoCatch




#TM Quiz Tags
tag @s remove QuizCooldown
tag @s remove TMQuiz1
tag @s remove TMQuiz2
tag @s remove TMQuiz3
tag @s remove TMQuiz4


#Gives InitialTags score to check for later in case of an issue
tag @s add InitialTags

















#Tp to lobby
tp @s[x=-553,y=99,z=1256,dx=2,dy=3,dz=3,scores={DialogueTrigger=0}] -783 102 1210.0 -90 13
