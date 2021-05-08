#Resets any Escape Rope cave data if player has score
scoreboard players set @a[x=1489,y=204,z=-1346,r=30,score_EscapeRope_min=1] EscapeRope 0

#Plays woosh sound
playsound entity.arrow.shoot ambient @a[x=1496,y=204,z=-1334,dy=4,tag=FlyKiloude] ~ ~ ~ 10000 1 1
playsound entity.arrow.shoot ambient @a[x=1493,y=204,z=-1335,dy=4] ~ ~ ~ 10000 1 1
playsound entity.arrow.shoot ambient @a[x=1493,y=204,z=-1338,dy=4,tag=FlyAquacorde] ~ ~ ~ 10000 1 1
playsound entity.arrow.shoot ambient @a[x=1492,y=204,z=-1341,dy=4,tag=FlySantalune] ~ ~ ~ 10000 1 1
playsound entity.arrow.shoot ambient @a[x=1489,y=204,z=-1346,dy=4,tag=FlyLumiose] ~ ~ ~ 10000 1 1
playsound entity.arrow.shoot ambient @a[x=1495,y=204,z=-1344,dy=4,tag=FlyPokemonLeague] ~ ~ ~ 10000 1 1
playsound entity.arrow.shoot ambient @a[x=1498,y=204,z=-1341,dy=4,tag=FlySnowbelle] ~ ~ ~ 10000 1 1
playsound entity.arrow.shoot ambient @a[x=1502,y=204,z=-1343,dy=4,tag=FlyCouriway] ~ ~ ~ 10000 1 1
playsound entity.arrow.shoot ambient @a[x=1501,y=204,z=-1347,dy=4,tag=FlyAnistar] ~ ~ ~ 10000 1 1
playsound entity.arrow.shoot ambient @a[x=1495,y=204,z=-1348,dy=4,tag=FlyDendemille] ~ ~ ~ 10000 1 1
playsound entity.arrow.shoot ambient @a[x=1489,y=204,z=-1352,dy=4,tag=FlyLaverre] ~ ~ ~ 10000 1 1
playsound entity.arrow.shoot ambient @a[x=1483,y=204,z=-1349,dy=4,tag=FlyCoumarine] ~ ~ ~ 10000 1 1
playsound entity.arrow.shoot ambient @a[x=1478,y=204,z=-1347,dy=4,tag=FlyShalour] ~ ~ ~ 10000 1 1
playsound entity.arrow.shoot ambient @a[x=1475,y=204,z=-1344,dy=4,tag=FlyGeosenge] ~ ~ ~ 10000 1 1
playsound entity.arrow.shoot ambient @a[x=1479,y=204,z=-1337,dy=4,tag=FlyAmbrette] ~ ~ ~ 10000 1 1
playsound entity.arrow.shoot ambient @a[x=1478,y=204,z=-1342,dy=4,tag=FlyCyllage] ~ ~ ~ 10000 1 1
playsound entity.arrow.shoot ambient @a[x=1484,y=204,z=-1342,dy=4,tag=FlyCamphrier] ~ ~ ~ 10000 1 1

#Particles
execute @p[x=1489,y=204,z=-1346,r=30,tag=FlyKiloude] ~ ~ ~ /particle fireworksSpark 1496 204 -1334 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,r=30,tag=FlyKiloude]
execute @p[x=1489,y=204,z=-1346,r=30] ~ ~ ~ /particle fireworksSpark 1493 204 -1335 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,r=30]
execute @p[x=1489,y=204,z=-1346,r=30,tag=FlyAquacorde] ~ ~ ~ /particle fireworksSpark 1493 204 -1338 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,r=30,tag=FlyAquacorde]
execute @p[x=1489,y=204,z=-1346,r=30,tag=FlySantalune] ~ ~ ~ /particle fireworksSpark 1492 204 -1341 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,r=30,tag=FlySantalune]
execute @p[x=1489,y=204,z=-1346,r=30,tag=FlyLumiose] ~ ~ ~ /particle fireworksSpark 1489 204 -1346 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,r=30,tag=FlyLumiose]
execute @p[x=1489,y=204,z=-1346,r=30,tag=FlyCamphrier] ~ ~ ~ /particle fireworksSpark 1484 204 -1342 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,r=30,tag=FlyCamphrier]
execute @p[x=1489,y=204,z=-1346,r=30,tag=FlyCyllage] ~ ~ ~ /particle fireworksSpark 1478 204 -1342 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,r=30,tag=FlyCyllage]
execute @p[x=1489,y=204,z=-1346,r=30,tag=FlyAmbrette] ~ ~ ~ /particle fireworksSpark 1479 204 -1337 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,r=30,tag=FlyAmbrette]
execute @p[x=1489,y=204,z=-1346,r=30,tag=FlyGeosenge] ~ ~ ~ /particle fireworksSpark 1475 204 -1344 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,r=30,tag=FlyGeosenge]
execute @p[x=1489,y=204,z=-1346,r=30,tag=FlyShalour] ~ ~ ~ /particle fireworksSpark 1478 204 -1347 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,r=30,tag=FlyShalour]
execute @p[x=1489,y=204,z=-1346,r=30,tag=FlyCoumarine] ~ ~ ~ /particle fireworksSpark 1483 204 -1349 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,r=30,tag=FlyCoumarine]
execute @p[x=1489,y=204,z=-1346,r=30,tag=FlyDendemille] ~ ~ ~ /particle fireworksSpark 1495 204 -1348 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,r=30,tag=FlyDendemille]
execute @p[x=1489,y=204,z=-1346,r=30,tag=FlyAnistar] ~ ~ ~ /particle fireworksSpark 1501 204 -1347 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,r=30,tag=FlyAnistar]
execute @p[x=1489,y=204,z=-1346,r=30,tag=FlyCouriway] ~ ~ ~ /particle fireworksSpark 1502 204 -1343 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,r=30,tag=FlyCouriway]
execute @p[x=1489,y=204,z=-1346,r=30,tag=FlySnowbelle] ~ ~ ~ /particle fireworksSpark 1498 204 -1341 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,r=30,tag=FlySnowbelle]
execute @p[x=1489,y=204,z=-1346,r=30,tag=FlyPokemonLeague] ~ ~ ~ /particle fireworksSpark 1495 204 -1344 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,r=30,tag=FlyPokemonLeague]
execute @p[x=1489,y=204,z=-1346,r=30,tag=FlyLaverre] ~ ~ ~ /particle fireworksSpark 1489 204 -1352 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,r=30,tag=FlyLaverre]
execute @p[x=1489,y=204,z=-1346,r=30,tag=FlySpawn] ~ ~ ~ /particle fireworksSpark 1474 204 -1333 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,r=30,tag=FlySpawn]


#Resets music when TP
scoreboard players set @a[x=1496,y=204,z=-1334,dy=4,tag=FlyKiloude] click 1
scoreboard players set @a[x=1493,y=204,z=-1335,dy=4] click 1
scoreboard players set @a[x=1493,y=204,z=-1338,dy=4,tag=FlyAquacorde] click 1
scoreboard players set @a[x=1492,y=204,z=-1341,dy=4,tag=FlySantalune] click 1
scoreboard players set @a[x=1489,y=204,z=-1346,dy=4,tag=FlyLumiose] click 1
scoreboard players set @a[x=1495,y=204,z=-1344,dy=4,tag=FlyPokemonLeague] click 1
scoreboard players set @a[x=1498,y=204,z=-1341,dy=4,tag=FlySnowbelle] click 1
scoreboard players set @a[x=1502,y=204,z=-1343,dy=4,tag=FlyCouriway] click 1
scoreboard players set @a[x=1501,y=204,z=-1347,dy=4,tag=FlyAnistar] click 1
scoreboard players set @a[x=1495,y=204,z=-1348,dy=4,tag=FlyDendemille] click 1
scoreboard players set @a[x=1489,y=204,z=-1352,dy=4,tag=FlyLaverre] click 1
scoreboard players set @a[x=1483,y=204,z=-1349,dy=4,tag=FlyCoumarine] click 1
scoreboard players set @a[x=1478,y=204,z=-1347,dy=4,tag=FlyShalour] click 1
scoreboard players set @a[x=1475,y=204,z=-1344,dy=4,tag=FlyGeosenge] click 1
scoreboard players set @a[x=1479,y=204,z=-1337,dy=4,tag=FlyAmbrette] click 1
scoreboard players set @a[x=1478,y=204,z=-1342,dy=4,tag=FlyCyllage] click 1
scoreboard players set @a[x=1484,y=204,z=-1342,dy=4,tag=FlyCamphrier] click 1



#TPs player
tp @a[x=1496,y=204,z=-1334,dy=4,tag=FlyKiloude] 1180 101 1664 0 ~
tp @a[x=1493,y=204,z=-1335,dy=4] 509 107 1645 0 ~
tp @a[x=1493,y=204,z=-1338,dy=4,tag=FlyAquacorde] 498 100 1311 0 ~
tp @a[x=1492,y=204,z=-1341,dy=4,tag=FlySantalune] 297 100 488 0 ~
tp @a[x=1489,y=204,z=-1346,dy=4,tag=FlyLumiose] -181 101 -84 0 ~
tp @a[x=1495,y=204,z=-1344,dy=4,tag=FlyPokemonLeague] -1936 88 2280 0 ~
tp @a[x=1498,y=204,z=-1341,dy=4,tag=FlySnowbelle] 1217 105 506 0 ~
tp @a[x=1502,y=204,z=-1343,dy=4,tag=FlyCouriway] 1476 100 176 0 ~
tp @a[x=1501,y=204,z=-1347,dy=4,tag=FlyAnistar] 1270 108 -194 0 ~
tp @a[x=1495,y=204,z=-1348,dy=4,tag=FlyDendemille] 621 108 -372 0 ~
tp @a[x=1489,y=204,z=-1352,dy=4,tag=FlyLaverre] -70 100 -1362 0 ~
tp @a[x=1483,y=204,z=-1349,dy=4,tag=FlyCoumarine] -1026 115 -657 0 ~
tp @a[x=1478,y=204,z=-1347,dy=4,tag=FlyShalour] -1619 80 -816 0 ~
tp @a[x=1479,y=204,z=-1337,dy=4,tag=FlyAmbrette] -1961 141 557 0 ~
tp @a[x=1478,y=204,z=-1342,dy=4,tag=FlyCyllage] -2036 104 -59 0 ~
tp @a[x=1484,y=204,z=-1342,dy=4,tag=FlyCamphrier] -1013 100 13 0 ~
tp @a[x=1474,y=203,z=-1333,dy=4,tag=FlySpawn] -550 100 1267

#Geosenge Variants
tp @a[x=1475,y=204,z=-1344,dy=4,tag=FlyGeosenge,score_Geosenge_min=2,score_Geosenge=2] -441 109 2096 0 ~
tp @a[x=1475,y=204,z=-1344,dy=4,tag=FlyGeosenge,score_Geosenge_min=1,score_Geosenge=1] -1161 109 2096 0 ~
tp @a[x=1475,y=204,z=-1344,dy=4,tag=FlyGeosenge,score_Geosenge=0] -2241 104 -623 0 ~







#Sets Carpets
execute @a[x=1489,y=204,z=-1346,r=30] ~ ~ ~ /setblock 1493 204 -1335 minecraft:carpet 5

execute @a[x=1489,y=204,z=-1346,r=30,tag=!FlyKiloude] ~ ~ ~ /setblock 1496 204 -1334 minecraft:carpet 14
execute @a[x=1489,y=204,z=-1346,r=30,tag=FlyKiloude] ~ ~ ~ /setblock 1496 204 -1334 minecraft:carpet 5

execute @a[x=1489,y=204,z=-1346,r=30,tag=!FlyAquacorde] ~ ~ ~ /setblock 1493 204 -1338 minecraft:carpet 14
execute @a[x=1489,y=204,z=-1346,r=30,tag=FlyAquacorde] ~ ~ ~ /setblock 1493 204 -1338 minecraft:carpet 5

execute @a[x=1489,y=204,z=-1346,r=30,tag=!FlySantalune] ~ ~ ~ /setblock 1492 204 -1341 minecraft:carpet 14
execute @a[x=1489,y=204,z=-1346,r=30,tag=FlySantalune] ~ ~ ~ /setblock 1492 204 -1341 minecraft:carpet 5

execute @a[x=1489,y=204,z=-1346,r=30,tag=!FlySnowbelle] ~ ~ ~ /setblock 1498 204 -1341 minecraft:carpet 14
execute @a[x=1489,y=204,z=-1346,r=30,tag=FlySnowbelle] ~ ~ ~ /setblock 1498 204 -1341 minecraft:carpet 5

execute @a[x=1489,y=204,z=-1346,r=30,tag=!FlyCouriway] ~ ~ ~ /setblock 1502 204 -1343 minecraft:carpet 14
execute @a[x=1489,y=204,z=-1346,r=30,tag=FlyCouriway] ~ ~ ~ /setblock 1502 204 -1343 minecraft:carpet 5

execute @a[x=1489,y=204,z=-1346,r=30,tag=!FlyAnistar] ~ ~ ~ /setblock 1501 204 -1347 minecraft:carpet 14
execute @a[x=1489,y=204,z=-1346,r=30,tag=FlyAnistar] ~ ~ ~ /setblock 1501 204 -1347 minecraft:carpet 5

execute @a[x=1489,y=204,z=-1346,r=30,tag=!FlyDendemille] ~ ~ ~ /setblock 1495 204 -1348 minecraft:carpet 14
execute @a[x=1489,y=204,z=-1346,r=30,tag=FlyDendemille] ~ ~ ~ /setblock 1495 204 -1348 minecraft:carpet 5

execute @a[x=1489,y=204,z=-1346,r=30,tag=!FlyPokemonLeague] ~ ~ ~ /setblock 1495 204 -1344 minecraft:carpet 14
execute @a[x=1489,y=204,z=-1346,r=30,tag=FlyPokemonLeague] ~ ~ ~ /setblock 1495 204 -1344 minecraft:carpet 5

execute @a[x=1489,y=204,z=-1346,r=30,tag=!FlyLumiose] ~ ~ ~ /setblock 1489 204 -1346 minecraft:carpet 15
execute @a[x=1489,y=204,z=-1346,r=30,tag=FlyLumiose] ~ ~ ~ /setblock 1489 204 -1346 minecraft:carpet 5

execute @a[x=1489,y=204,z=-1346,r=30,tag=!FlyLaverre] ~ ~ ~ /setblock 1489 204 -1352 minecraft:carpet 14
execute @a[x=1489,y=204,z=-1346,r=30,tag=FlyLaverre] ~ ~ ~ /setblock 1489 204 -1352 minecraft:carpet 5

execute @a[x=1489,y=204,z=-1346,r=30,tag=!FlyAmbrette] ~ ~ ~ /setblock 1479 204 -1337 minecraft:carpet 14
execute @a[x=1489,y=204,z=-1346,r=30,tag=FlyAmbrette] ~ ~ ~ /setblock 1479 204 -1337 minecraft:carpet 5

execute @a[x=1489,y=204,z=-1346,r=30,tag=!FlyCamphrier] ~ ~ ~ /setblock 1484 204 -1342 minecraft:carpet 14
execute @a[x=1489,y=204,z=-1346,r=30,tag=FlyCamphrier] ~ ~ ~ /setblock 1484 204 -1342 minecraft:carpet 5

execute @a[x=1489,y=204,z=-1346,r=30,tag=!FlyCyllage] ~ ~ ~ /setblock 1478 204 -1342 minecraft:carpet 14
execute @a[x=1489,y=204,z=-1346,r=30,tag=FlyCyllage] ~ ~ ~ /setblock 1478 204 -1342 minecraft:carpet 5

execute @a[x=1489,y=204,z=-1346,r=30,tag=!FlyGeosenge] ~ ~ ~ /setblock 1475 204 -1344 minecraft:carpet 14
execute @a[x=1489,y=204,z=-1346,r=30,tag=FlyGeosenge] ~ ~ ~ /setblock 1475 204 -1344 minecraft:carpet 5

execute @a[x=1489,y=204,z=-1346,r=30,tag=!FlyShalour] ~ ~ ~ /setblock 1478 204 -1347 minecraft:carpet 14
execute @a[x=1489,y=204,z=-1346,r=30,tag=FlyShalour] ~ ~ ~ /setblock 1478 204 -1347 minecraft:carpet 5

execute @a[x=1489,y=204,z=-1346,r=30,tag=!FlyCoumarine] ~ ~ ~ /setblock 1483 204 -1349 minecraft:carpet 14
execute @a[x=1489,y=204,z=-1346,r=30,tag=FlyCoumarine] ~ ~ ~ /setblock 1483 204 -1349 minecraft:carpet 5
