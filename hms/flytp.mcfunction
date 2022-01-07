#Resets any Escape Rope cave data if player has score
scoreboard players set @a[x=1489,y=204,z=-1346,distance=..30,scores={EscapeRope=1..}] EscapeRope 0

#Plays woosh sound
playsound minecraft:entity.arrow.shoot ambient @a[x=1496,y=204,z=-1334,dy=4,tag=FlyKiloude] ~ ~ ~ 10000 1 1
playsound minecraft:entity.arrow.shoot ambient @a[x=1493,y=204,z=-1335,dy=4] ~ ~ ~ 10000 1 1
playsound minecraft:entity.arrow.shoot ambient @a[x=1493,y=204,z=-1338,dy=4,tag=FlyAquacorde] ~ ~ ~ 10000 1 1
playsound minecraft:entity.arrow.shoot ambient @a[x=1492,y=204,z=-1341,dy=4,tag=FlySantalune] ~ ~ ~ 10000 1 1
playsound minecraft:entity.arrow.shoot ambient @a[x=1489,y=204,z=-1346,dy=4,tag=FlyLumiose] ~ ~ ~ 10000 1 1
playsound minecraft:entity.arrow.shoot ambient @a[x=1495,y=204,z=-1344,dy=4,tag=FlyPokemonLeague] ~ ~ ~ 10000 1 1
playsound minecraft:entity.arrow.shoot ambient @a[x=1498,y=204,z=-1341,dy=4,tag=FlySnowbelle] ~ ~ ~ 10000 1 1
playsound minecraft:entity.arrow.shoot ambient @a[x=1502,y=204,z=-1343,dy=4,tag=FlyCouriway] ~ ~ ~ 10000 1 1
playsound minecraft:entity.arrow.shoot ambient @a[x=1501,y=204,z=-1347,dy=4,tag=FlyAnistar] ~ ~ ~ 10000 1 1
playsound minecraft:entity.arrow.shoot ambient @a[x=1495,y=204,z=-1348,dy=4,tag=FlyDendemille] ~ ~ ~ 10000 1 1
playsound minecraft:entity.arrow.shoot ambient @a[x=1489,y=204,z=-1352,dy=4,tag=FlyLaverre] ~ ~ ~ 10000 1 1
playsound minecraft:entity.arrow.shoot ambient @a[x=1483,y=204,z=-1349,dy=4,tag=FlyCoumarine] ~ ~ ~ 10000 1 1
playsound minecraft:entity.arrow.shoot ambient @a[x=1478,y=204,z=-1347,dy=4,tag=FlyShalour] ~ ~ ~ 10000 1 1
playsound minecraft:entity.arrow.shoot ambient @a[x=1475,y=204,z=-1344,dy=4,tag=FlyGeosenge] ~ ~ ~ 10000 1 1
playsound minecraft:entity.arrow.shoot ambient @a[x=1479,y=204,z=-1337,dy=4,tag=FlyAmbrette] ~ ~ ~ 10000 1 1
playsound minecraft:entity.arrow.shoot ambient @a[x=1478,y=204,z=-1342,dy=4,tag=FlyCyllage] ~ ~ ~ 10000 1 1
playsound minecraft:entity.arrow.shoot ambient @a[x=1484,y=204,z=-1342,dy=4,tag=FlyCamphrier] ~ ~ ~ 10000 1 1

#Particles
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlyKiloude] run particle minecraft:firework 1496 204 -1334 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,distance=..30,tag=FlyKiloude]
execute as @s[x=1489,y=204,z=-1346,distance=..30] run particle minecraft:firework 1493 204 -1335 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,distance=..30]
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlyAquacorde] run particle minecraft:firework 1493 204 -1338 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,distance=..30,tag=FlyAquacorde]
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlySantalune] run particle minecraft:firework 1492 204 -1341 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,distance=..30,tag=FlySantalune]
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlyLumiose] run particle minecraft:firework 1489 204 -1346 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,distance=..30,tag=FlyLumiose]
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlyCamphrier] run particle minecraft:firework 1484 204 -1342 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,distance=..30,tag=FlyCamphrier]
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlyCyllage] run particle minecraft:firework 1478 204 -1342 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,distance=..30,tag=FlyCyllage]
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlyAmbrette] run particle minecraft:firework 1479 204 -1337 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,distance=..30,tag=FlyAmbrette]
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlyGeosenge] run particle minecraft:firework 1475 204 -1344 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,distance=..30,tag=FlyGeosenge]
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlyShalour] run particle minecraft:firework 1478 204 -1347 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,distance=..30,tag=FlyShalour]
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlyCoumarine] run particle minecraft:firework 1483 204 -1349 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,distance=..30,tag=FlyCoumarine]
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlyDendemille] run particle minecraft:firework 1495 204 -1348 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,distance=..30,tag=FlyDendemille]
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlyAnistar] run particle minecraft:firework 1501 204 -1347 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,distance=..30,tag=FlyAnistar]
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlyCouriway] run particle minecraft:firework 1502 204 -1343 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,distance=..30,tag=FlyCouriway]
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlySnowbelle] run particle minecraft:firework 1498 204 -1341 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,distance=..30,tag=FlySnowbelle]
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlyPokemonLeague] run particle minecraft:firework 1495 204 -1344 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,distance=..30,tag=FlyPokemonLeague]
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlyLaverre] run particle minecraft:firework 1489 204 -1352 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,distance=..30,tag=FlyLaverre]
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlySpawn] run particle minecraft:firework 1474 204 -1333 0 2 0 0.1 0 normal @a[x=1489,y=204,z=-1346,distance=..30,tag=FlySpawn]


#Resets music when TP
execute as @s[x=1496,y=204,z=-1334,dy=4,tag=FlyKiloude] run function world:musictitles
execute as @s[x=1493,y=204,z=-1335,dy=4] run function world:musictitles
execute as @s[x=1493,y=204,z=-1338,dy=4,tag=FlyAquacorde] run function world:musictitles
execute as @s[x=1492,y=204,z=-1341,dy=4,tag=FlySantalune] run function world:musictitles
execute as @s[x=1489,y=204,z=-1346,dy=4,tag=FlyLumiose] run function world:musictitles
execute as @s[x=1495,y=204,z=-1344,dy=4,tag=FlyPokemonLeague] run function world:musictitles
execute as @s[x=1498,y=204,z=-1341,dy=4,tag=FlySnowbelle] run function world:musictitles
execute as @s[x=1502,y=204,z=-1343,dy=4,tag=FlyCouriway] run function world:musictitles
execute as @s[x=1501,y=204,z=-1347,dy=4,tag=FlyAnistar] run function world:musictitles
execute as @s[x=1495,y=204,z=-1348,dy=4,tag=FlyDendemille] run function world:musictitles
execute as @s[x=1489,y=204,z=-1352,dy=4,tag=FlyLaverre] run function world:musictitles
execute as @s[x=1483,y=204,z=-1349,dy=4,tag=FlyCoumarine] run function world:musictitles
execute as @s[x=1478,y=204,z=-1347,dy=4,tag=FlyShalour] run function world:musictitles
execute as @s[x=1475,y=204,z=-1344,dy=4,tag=FlyGeosenge] run function world:musictitles
execute as @s[x=1479,y=204,z=-1337,dy=4,tag=FlyAmbrette] run function world:musictitles
execute as @s[x=1478,y=204,z=-1342,dy=4,tag=FlyCyllage] run function world:musictitles
execute as @s[x=1484,y=204,z=-1342,dy=4,tag=FlyCamphrier] run function world:musictitles




#TPs player
tp @s[x=1496,y=204,z=-1334,dy=4,tag=FlyKiloude] 1180 101 1664 0 ~
tp @s[x=1493,y=204,z=-1335,dy=4] 509 107 1645 0 ~
tp @s[x=1493,y=204,z=-1338,dy=4,tag=FlyAquacorde] 498 100 1311 0 ~
tp @s[x=1492,y=204,z=-1341,dy=4,tag=FlySantalune] 297 100 488 0 ~
tp @s[x=1489,y=204,z=-1346,dy=4,tag=FlyLumiose] -181 101 -84 0 ~
tp @s[x=1495,y=204,z=-1344,dy=4,tag=FlyPokemonLeague] -1936 88 2280 0 ~
tp @s[x=1498,y=204,z=-1341,dy=4,tag=FlySnowbelle] 1217 105 506 0 ~
tp @s[x=1502,y=204,z=-1343,dy=4,tag=FlyCouriway] 1476 100 176 0 ~
tp @s[x=1501,y=204,z=-1347,dy=4,tag=FlyAnistar] 1270 108 -194 0 ~
tp @s[x=1495,y=204,z=-1348,dy=4,tag=FlyDendemille] 621 108 -372 0 ~
tp @s[x=1489,y=204,z=-1352,dy=4,tag=FlyLaverre] -70 100 -1362 0 ~
tp @s[x=1483,y=204,z=-1349,dy=4,tag=FlyCoumarine] -1026 115 -657 0 ~
tp @s[x=1478,y=204,z=-1347,dy=4,tag=FlyShalour] -1619 80 -816 0 ~
tp @s[x=1479,y=204,z=-1337,dy=4,tag=FlyAmbrette] -1961 141 557 0 ~
tp @s[x=1478,y=204,z=-1342,dy=4,tag=FlyCyllage] -2036 104 -59 0 ~
tp @s[x=1484,y=204,z=-1342,dy=4,tag=FlyCamphrier] -1013 100 13 0 ~
tp @s[x=1474,y=203,z=-1333,dy=4,tag=FlySpawn] -550 100 1267

#Geosenge Variants
tp @s[x=1475,y=204,z=-1344,dy=4,tag=FlyGeosenge,scores={Geosenge=2}] -441 109 2096 0 ~
tp @s[x=1475,y=204,z=-1344,dy=4,tag=FlyGeosenge,scores={Geosenge=1}] -1161 109 2096 0 ~
tp @s[x=1475,y=204,z=-1344,dy=4,tag=FlyGeosenge,scores={Geosenge=0}] -2241 104 -623 0 ~







#Sets Carpets
execute as @s[x=1489,y=204,z=-1346,distance=..30] run setblock 1493 204 -1335 minecraft:lime_carpet

execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=!FlyKiloude] run setblock 1496 204 -1334 minecraft:red_carpet
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlyKiloude] run setblock 1496 204 -1334 minecraft:lime_carpet

execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=!FlyAquacorde] run setblock 1493 204 -1338 minecraft:red_carpet
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlyAquacorde] run setblock 1493 204 -1338 minecraft:lime_carpet

execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=!FlySantalune] run setblock 1492 204 -1341 minecraft:red_carpet
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlySantalune] run setblock 1492 204 -1341 minecraft:lime_carpet

execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=!FlySnowbelle] run setblock 1498 204 -1341 minecraft:red_carpet
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlySnowbelle] run setblock 1498 204 -1341 minecraft:lime_carpet

execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=!FlyCouriway] run setblock 1502 204 -1343 minecraft:red_carpet
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlyCouriway] run setblock 1502 204 -1343 minecraft:lime_carpet

execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=!FlyAnistar] run setblock 1501 204 -1347 minecraft:red_carpet
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlyAnistar] run setblock 1501 204 -1347 minecraft:lime_carpet

execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=!FlyDendemille] run setblock 1495 204 -1348 minecraft:red_carpet
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlyDendemille] run setblock 1495 204 -1348 minecraft:lime_carpet

execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=!FlyPokemonLeague] run setblock 1495 204 -1344 minecraft:red_carpet
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlyPokemonLeague] run setblock 1495 204 -1344 minecraft:lime_carpet

execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=!FlyLumiose] run setblock 1489 204 -1346 minecraft:black_carpet
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlyLumiose] run setblock 1489 204 -1346 minecraft:lime_carpet

execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=!FlyLaverre] run setblock 1489 204 -1352 minecraft:red_carpet
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlyLaverre] run setblock 1489 204 -1352 minecraft:lime_carpet

execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=!FlyAmbrette] run setblock 1479 204 -1337 minecraft:red_carpet
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlyAmbrette] run setblock 1479 204 -1337 minecraft:lime_carpet

execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=!FlyCamphrier] run setblock 1484 204 -1342 minecraft:red_carpet
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlyCamphrier] run setblock 1484 204 -1342 minecraft:lime_carpet

execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=!FlyCyllage] run setblock 1478 204 -1342 minecraft:red_carpet
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlyCyllage] run setblock 1478 204 -1342 minecraft:lime_carpet

execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=!FlyGeosenge] run setblock 1475 204 -1344 minecraft:red_carpet
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlyGeosenge] run setblock 1475 204 -1344 minecraft:lime_carpet

execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=!FlyShalour] run setblock 1478 204 -1347 minecraft:red_carpet
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlyShalour] run setblock 1478 204 -1347 minecraft:lime_carpet

execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=!FlyCoumarine] run setblock 1483 204 -1349 minecraft:red_carpet
execute as @s[x=1489,y=204,z=-1346,distance=..30,tag=FlyCoumarine] run setblock 1483 204 -1349 minecraft:lime_carpet
