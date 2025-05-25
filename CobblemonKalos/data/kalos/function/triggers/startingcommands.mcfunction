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
function kalos:spawn/townmap
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


#Loots from ground and NPCs
tag @s remove ItemLoot1
tag @s remove ItemLoot2
tag @s remove ItemLoot3
tag @s remove ItemLoot4
tag @s remove ItemLoot5
tag @s remove ItemLoot6
tag @s remove ItemLoot7
tag @s remove ItemLoot8
tag @s remove ItemLoot9
tag @s remove ItemLoot10
tag @s remove ItemLoot11
tag @s remove ItemLoot12
tag @s remove ItemLoot13
tag @s remove ItemLoot14
tag @s remove ItemLoot15
tag @s remove ItemLoot16
tag @s remove ItemLoot17
tag @s remove ItemLoot18
tag @s remove ItemLoot19
tag @s remove ItemLoot20
tag @s remove ItemLoot21
tag @s remove ItemLoot22
tag @s remove ItemLoot23
tag @s remove ItemLoot24
tag @s remove ItemLoot25
tag @s remove ItemLoot26
tag @s remove ItemLoot27
tag @s remove ItemLoot28
tag @s remove ItemLoot29
tag @s remove ItemLoot30
tag @s remove ItemLoot31
tag @s remove ItemLoot32
tag @s remove ItemLoot33
tag @s remove ItemLoot34
tag @s remove ItemLoot35
tag @s remove ItemLoot36
tag @s remove ItemLoot37
tag @s remove ItemLoot38
tag @s remove ItemLoot39
tag @s remove ItemLoot40
tag @s remove ItemLoot41
tag @s remove ItemLoot42
tag @s remove ItemLoot43
tag @s remove ItemLoot44
tag @s remove ItemLoot45
tag @s remove ItemLoot46
tag @s remove ItemLoot47
tag @s remove ItemLoot48
tag @s remove ItemLoot49
tag @s remove ItemLoot50
tag @s remove ItemLoot51
tag @s remove ItemLoot52
tag @s remove ItemLoot53
tag @s remove ItemLoot54
tag @s remove ItemLoot55
tag @s remove ItemLoot56
tag @s remove ItemLoot57
tag @s remove ItemLoot58
tag @s remove ItemLoot59
tag @s remove ItemLoot60
tag @s remove ItemLoot61
tag @s remove ItemLoot62
tag @s remove ItemLoot63
tag @s remove ItemLoot64
tag @s remove ItemLoot65
tag @s remove ItemLoot66
tag @s remove ItemLoot67
tag @s remove ItemLoot68
tag @s remove ItemLoot69
tag @s remove ItemLoot70
tag @s remove ItemLoot71
tag @s remove ItemLoot72
tag @s remove ItemLoot73
tag @s remove ItemLoot74
tag @s remove ItemLoot75
tag @s remove ItemLoot76
tag @s remove ItemLoot77
tag @s remove ItemLoot78
tag @s remove ItemLoot79
tag @s remove ItemLoot80
tag @s remove ItemLoot81
tag @s remove ItemLoot82
tag @s remove ItemLoot83
tag @s remove ItemLoot84
tag @s remove ItemLoot85
tag @s remove ItemLoot86
tag @s remove ItemLoot87
tag @s remove ItemLoot88
tag @s remove ItemLoot89
tag @s remove ItemLoot90
tag @s remove ItemLoot91
tag @s remove ItemLoot92
tag @s remove ItemLoot93
tag @s remove ItemLoot94
tag @s remove ItemLoot95
tag @s remove ItemLoot96
tag @s remove ItemLoot97
tag @s remove ItemLoot98
tag @s remove ItemLoot99
tag @s remove ItemLoot100
tag @s remove ItemLoot101
tag @s remove ItemLoot102
tag @s remove ItemLoot103
tag @s remove ItemLoot104
tag @s remove ItemLoot105
tag @s remove ItemLoot106
tag @s remove ItemLoot107
tag @s remove ItemLoot108
tag @s remove ItemLoot109
tag @s remove ItemLoot110
tag @s remove ItemLoot111
tag @s remove ItemLoot112
tag @s remove ItemLoot113
tag @s remove ItemLoot114
tag @s remove ItemLoot115
tag @s remove ItemLoot116
tag @s remove ItemLoot117
tag @s remove ItemLoot118
tag @s remove ItemLoot119
tag @s remove ItemLoot120
tag @s remove ItemLoot121
tag @s remove ItemLoot122
tag @s remove ItemLoot123
tag @s remove ItemLoot124
tag @s remove ItemLoot125
tag @s remove ItemLoot126
tag @s remove ItemLoot127
tag @s remove ItemLoot128
tag @s remove ItemLoot129
tag @s remove ItemLoot130
tag @s remove ItemLoot131
tag @s remove ItemLoot132
tag @s remove ItemLoot133
tag @s remove ItemLoot134
tag @s remove ItemLoot135
tag @s remove ItemLoot136
tag @s remove ItemLoot137
tag @s remove ItemLoot138
tag @s remove ItemLoot139
tag @s remove ItemLoot140
tag @s remove ItemLoot141
tag @s remove ItemLoot142
tag @s remove ItemLoot143
tag @s remove ItemLoot144
tag @s remove ItemLoot145
tag @s remove ItemLoot146
tag @s remove ItemLoot147
tag @s remove ItemLoot148
tag @s remove ItemLoot149
tag @s remove ItemLoot150
tag @s remove ItemLoot151
tag @s remove ItemLoot152
tag @s remove ItemLoot153
tag @s remove ItemLoot154
tag @s remove ItemLoot155
tag @s remove ItemLoot156
tag @s remove ItemLoot157
tag @s remove ItemLoot158
tag @s remove ItemLoot159
tag @s remove ItemLoot160
tag @s remove ItemLoot161
tag @s remove ItemLoot162
tag @s remove ItemLoot163
tag @s remove ItemLoot164
tag @s remove ItemLoot165
tag @s remove ItemLoot166
tag @s remove ItemLoot167
tag @s remove ItemLoot168
tag @s remove ItemLoot169
tag @s remove ItemLoot170
tag @s remove ItemLoot171
tag @s remove ItemLoot172
tag @s remove ItemLoot173
tag @s remove ItemLoot174
tag @s remove ItemLoot175
tag @s remove ItemLoot176
tag @s remove ItemLoot177
tag @s remove ItemLoot178
tag @s remove ItemLoot179
tag @s remove ItemLoot180
tag @s remove ItemLoot181
tag @s remove ItemLoot182
tag @s remove ItemLoot183
tag @s remove ItemLoot184
tag @s remove ItemLoot185
tag @s remove ItemLoot186
tag @s remove ItemLoot187
tag @s remove ItemLoot188
tag @s remove ItemLoot189
tag @s remove ItemLoot190
tag @s remove ItemLoot191
tag @s remove ItemLoot192
tag @s remove ItemLoot193
tag @s remove ItemLoot194
tag @s remove ItemLoot195
tag @s remove ItemLoot196
tag @s remove ItemLoot197
tag @s remove ItemLoot198
tag @s remove ItemLoot199
tag @s remove ItemLoot200
tag @s remove ItemLoot201
tag @s remove ItemLoot202
tag @s remove ItemLoot203
tag @s remove ItemLoot204
tag @s remove ItemLoot205
tag @s remove ItemLoot206
tag @s remove ItemLoot207
tag @s remove ItemLoot208
tag @s remove ItemLoot209
tag @s remove ItemLoot210
tag @s remove ItemLoot211
tag @s remove ItemLoot212
tag @s remove ItemLoot213
tag @s remove ItemLoot214
tag @s remove ItemLoot215
tag @s remove ItemLoot216
tag @s remove ItemLoot217
tag @s remove ItemLoot218
tag @s remove ItemLoot219
tag @s remove ItemLoot220
tag @s remove ItemLoot221
tag @s remove ItemLoot222
tag @s remove ItemLoot223
tag @s remove ItemLoot224
tag @s remove ItemLoot225
tag @s remove ItemLoot226
tag @s remove ItemLoot227
tag @s remove ItemLoot228
tag @s remove ItemLoot229
tag @s remove ItemLoot230
tag @s remove ItemLoot231
tag @s remove ItemLoot232
tag @s remove ItemLoot233
tag @s remove ItemLoot234
tag @s remove ItemLoot235
tag @s remove ItemLoot236
tag @s remove ItemLoot237
tag @s remove ItemLoot238
tag @s remove ItemLoot239
tag @s remove ItemLoot240
tag @s remove ItemLoot241
tag @s remove ItemLoot242
tag @s remove ItemLoot243
tag @s remove ItemLoot244
tag @s remove ItemLoot245
tag @s remove ItemLoot246
tag @s remove ItemLoot247
tag @s remove ItemLoot248
tag @s remove ItemLoot249
tag @s remove ItemLoot250
tag @s remove ItemLoot251
tag @s remove ItemLoot252
tag @s remove ItemLoot253
tag @s remove ItemLoot254
tag @s remove ItemLoot255
tag @s remove ItemLoot256
tag @s remove ItemLoot257
tag @s remove ItemLoot258
tag @s remove ItemLoot259
tag @s remove ItemLoot260
tag @s remove ItemLoot261
tag @s remove ItemLoot262
tag @s remove ItemLoot263
tag @s remove ItemLoot264
tag @s remove ItemLoot265
tag @s remove ItemLoot266
tag @s remove ItemLoot267
tag @s remove ItemLoot268
tag @s remove ItemLoot269
tag @s remove ItemLoot270
tag @s remove ItemLoot271
tag @s remove ItemLoot272
tag @s remove ItemLoot273
tag @s remove ItemLoot274
tag @s remove ItemLoot275
tag @s remove ItemLoot276
tag @s remove ItemLoot277
tag @s remove ItemLoot278
tag @s remove ItemLoot279
tag @s remove ItemLoot280
tag @s remove ItemLoot281
tag @s remove ItemLoot282
tag @s remove ItemLoot283
tag @s remove ItemLoot284
tag @s remove ItemLoot285
tag @s remove ItemLoot286
tag @s remove ItemLoot287
tag @s remove ItemLoot288
tag @s remove ItemLoot289
tag @s remove ItemLoot290
tag @s remove ItemLoot291
tag @s remove ItemLoot292
tag @s remove ItemLoot293
tag @s remove ItemLoot294
tag @s remove ItemLoot295
tag @s remove ItemLoot296
tag @s remove ItemLoot297
tag @s remove ItemLoot298
tag @s remove ItemLoot299
tag @s remove ItemLoot300
tag @s remove ItemLoot301
tag @s remove ItemLoot302
tag @s remove ItemLoot303
tag @s remove ItemLoot304
tag @s remove ItemLoot305
tag @s remove ItemLoot306
tag @s remove ItemLoot307
tag @s remove ItemLoot308
tag @s remove ItemLoot309
tag @s remove ItemLoot310
tag @s remove ItemLoot311
tag @s remove ItemLoot312
tag @s remove ItemLoot313
tag @s remove ItemLoot314
tag @s remove ItemLoot315
tag @s remove ItemLoot316
tag @s remove ItemLoot317
tag @s remove ItemLoot318
tag @s remove ItemLoot319
tag @s remove ItemLoot320
tag @s remove ItemLoot321
tag @s remove ItemLoot322
tag @s remove ItemLoot323
tag @s remove ItemLoot324
tag @s remove ItemLoot325
tag @s remove ItemLoot326
tag @s remove ItemLoot327
tag @s remove ItemLoot328
tag @s remove ItemLoot329
tag @s remove ItemLoot330
tag @s remove ItemLoot331
tag @s remove ItemLoot332
tag @s remove ItemLoot333
tag @s remove ItemLoot334
tag @s remove ItemLoot335
tag @s remove ItemLoot336
tag @s remove ItemLoot337
tag @s remove ItemLoot338
tag @s remove ItemLoot339
tag @s remove ItemLoot340
tag @s remove ItemLoot341
tag @s remove ItemLoot342
tag @s remove ItemLoot343
tag @s remove ItemLoot344
tag @s remove ItemLoot345
tag @s remove ItemLoot346
tag @s remove ItemLoot347
tag @s remove ItemLoot348
tag @s remove ItemLoot349
tag @s remove ItemLoot350
tag @s remove ItemLoot351
tag @s remove ItemLoot352
tag @s remove ItemLoot353
tag @s remove ItemLoot354
tag @s remove ItemLoot355
tag @s remove ItemLoot356
tag @s remove ItemLoot357
tag @s remove ItemLoot358
tag @s remove ItemLoot359
tag @s remove ItemLoot360
tag @s remove ItemLoot361
tag @s remove ItemLoot362
tag @s remove ItemLoot363
tag @s remove ItemLoot364
tag @s remove ItemLoot365
tag @s remove ItemLoot366
tag @s remove ItemLoot367
tag @s remove ItemLoot368
tag @s remove ItemLoot369
tag @s remove ItemLoot370
tag @s remove ItemLoot371
tag @s remove ItemLoot372
tag @s remove ItemLoot373
tag @s remove ItemLoot374
tag @s remove ItemLoot375
tag @s remove ItemLoot376
tag @s remove ItemLoot377
tag @s remove ItemLoot378
tag @s remove ItemLoot379
tag @s remove ItemLoot380
tag @s remove ItemLoot381
tag @s remove ItemLoot382
tag @s remove ItemLoot383
tag @s remove ItemLoot384
tag @s remove ItemLoot385
tag @s remove ItemLoot386
tag @s remove ItemLoot387
tag @s remove ItemLoot388
tag @s remove ItemLoot389
tag @s remove ItemLoot390
tag @s remove ItemLoot391
tag @s remove ItemLoot392
tag @s remove ItemLoot393
tag @s remove ItemLoot394
tag @s remove ItemLoot395
tag @s remove ItemLoot396
tag @s remove ItemLoot397
tag @s remove ItemLoot398
tag @s remove ItemLoot399
tag @s remove ItemLoot400
tag @s remove ItemLoot401
tag @s remove ItemLoot402
tag @s remove ItemLoot403
tag @s remove ItemLoot404
tag @s remove ItemLoot405
tag @s remove ItemLoot406
tag @s remove ItemLoot407
tag @s remove ItemLoot408
tag @s remove ItemLoot409
tag @s remove ItemLoot410
tag @s remove ItemLoot411
tag @s remove ItemLoot412
tag @s remove ItemLoot413
tag @s remove ItemLoot414
tag @s remove ItemLoot415
tag @s remove ItemLoot416
tag @s remove ItemLoot417
tag @s remove ItemLoot418
tag @s remove ItemLoot419
tag @s remove ItemLoot420
tag @s remove ItemLoot421
tag @s remove ItemLoot422
tag @s remove ItemLoot423
tag @s remove ItemLoot424
tag @s remove ItemLoot425
tag @s remove ItemLoot426
tag @s remove ItemLoot427
tag @s remove ItemLoot428
tag @s remove ItemLoot429
tag @s remove ItemLoot430
tag @s remove ItemLoot431
tag @s remove ItemLoot432
tag @s remove ItemLoot433
tag @s remove ItemLoot434
tag @s remove ItemLoot435
tag @s remove ItemLoot436
tag @s remove ItemLoot437
tag @s remove ItemLoot438
tag @s remove ItemLoot439
tag @s remove ItemLoot440
tag @s remove ItemLoot441
tag @s remove ItemLoot442
tag @s remove ItemLoot443
tag @s remove ItemLoot444
tag @s remove ItemLoot445
tag @s remove ItemLoot446
tag @s remove ItemLoot447
tag @s remove ItemLoot448
tag @s remove ItemLoot449
tag @s remove ItemLoot450
tag @s remove ItemLoot451
tag @s remove ItemLoot452
tag @s remove ItemLoot453
tag @s remove ItemLoot454
tag @s remove ItemLoot455
tag @s remove ItemLoot456
tag @s remove ItemLoot457
tag @s remove ItemLoot458
tag @s remove ItemLoot459
tag @s remove ItemLoot460
tag @s remove ItemLoot461
tag @s remove ItemLoot462
tag @s remove ItemLoot463
tag @s remove ItemLoot464
tag @s remove ItemLoot465
tag @s remove ItemLoot466
tag @s remove ItemLoot467
tag @s remove ItemLoot468
tag @s remove ItemLoot469
tag @s remove ItemLoot470
tag @s remove ItemLoot471
tag @s remove ItemLoot472
tag @s remove ItemLoot473
tag @s remove ItemLoot474
tag @s remove ItemLoot475
tag @s remove ItemLoot476
tag @s remove ItemLoot477
tag @s remove ItemLoot478
tag @s remove ItemLoot479
tag @s remove ItemLoot480
tag @s remove ItemLoot481
tag @s remove ItemLoot482
tag @s remove ItemLoot483
tag @s remove ItemLoot484
tag @s remove ItemLoot485
tag @s remove ItemLoot486
tag @s remove ItemLoot487
tag @s remove ItemLoot488
tag @s remove ItemLoot489
tag @s remove ItemLoot490
tag @s remove ItemLoot491
tag @s remove ItemLoot492
tag @s remove ItemLoot493
tag @s remove ItemLoot494
tag @s remove ItemLoot495
tag @s remove ItemLoot496
tag @s remove ItemLoot497
tag @s remove ItemLoot498
tag @s remove ItemLoot499
tag @s remove ItemLoot500
tag @s remove ItemLoot501
tag @s remove ItemLoot502
tag @s remove ItemLoot503
tag @s remove ItemLoot504
tag @s remove ItemLoot505
tag @s remove ItemLoot506
tag @s remove ItemLoot507
tag @s remove ItemLoot508
tag @s remove ItemLoot509
tag @s remove ItemLoot510
tag @s remove ItemLoot511
tag @s remove ItemLoot512
tag @s remove ItemLoot513
tag @s remove ItemLoot514
tag @s remove ItemLoot515
tag @s remove ItemLoot516
tag @s remove ItemLoot517
tag @s remove ItemLoot518
tag @s remove ItemLoot519
tag @s remove ItemLoot520
tag @s remove ItemLoot521
tag @s remove ItemLoot522
tag @s remove ItemLoot523
tag @s remove ItemLoot524
tag @s remove ItemLoot525
tag @s remove ItemLoot526
tag @s remove ItemLoot527
tag @s remove ItemLoot528
tag @s remove ItemLoot529
tag @s remove ItemLoot530
tag @s remove ItemLoot531
tag @s remove ItemLoot532
tag @s remove ItemLoot533
tag @s remove ItemLoot534
tag @s remove ItemLoot535
tag @s remove ItemLoot536
tag @s remove ItemLoot537
tag @s remove ItemLoot538
tag @s remove ItemLoot539
tag @s remove ItemLoot540
tag @s remove ItemLoot541
tag @s remove ItemLoot542
tag @s remove ItemLoot543
tag @s remove ItemLoot544
tag @s remove ItemLoot545
tag @s remove ItemLoot546



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
tp @s[x=-553,y=99,z=1256,dx=2,dy=3,dz=3,tag=InitialTags] -783 102 1210.0 -90 13
