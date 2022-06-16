#execute @a[tag=RandomizerTemp,c=1] ~ ~ ~ function kalos:randomizer/tpscript

scoreboard players add @s TalkTime 1
gamemode spectator @s[scores={TalkTime=18..1438},gamemode=adventure]
gamemode spectator @s[scores={TalkTime=18..1438},gamemode=creative]
gamemode spectator @s[scores={TalkTime=18..1438},gamemode=survival]
execute as @s[scores={TalkTime=1}] run gamerule maxCommandChainLength 65536
execute as @s[scores={TalkTime=1}] run scoreboard players set @s[scores={DialogueTrigger=0}] DialogueTrigger 1001
execute as @s[scores={TalkTime=1}] run fill -770 106 1218 -768 106 1218 minecraft:redstone_block
execute as @s[scores={TalkTime=1}] run setblock -768 103 1218 minecraft:redstone_block
execute as @s[scores={TalkTime=1}] run setblock -768 103 1218 minecraft:quartz_block

#Lobby Signs
#Random evos on
#tellraw @a ["",{"text":"Species randomizing upon evolution toggled "},{"text":"On","color":"yellow"}]
#/blockdata -768 104 1217 {Text3:"{\"text\":\"[Random On Evo]\"}"}
#/scoreboard players tag @e[x=-688,y=100,z=1136,dy=3] add Evolutions

#Random Evos off
#tellraw @a ["",{"text":"Species randomizing upon evolution toggled "},{"text":"Off","color":"gray"}]
#/blockdata -768 104 1217 {Text3:"{\"text\":\"[True-Evo Lines]\"}"}
#/scoreboard players tag @e[x=-688,y=100,z=1136,dy=3,tag=Evolutions] remove Evolutions


#Ends script
gamemode adventure @s[scores={TalkTime=1439..1440},gamemode=survival]
gamemode adventure @s[scores={TalkTime=1439..1440},gamemode=creative]
gamemode adventure @s[scores={TalkTime=1439..1440},gamemode=spectator]
tag @s[scores={TalkTime=1440..}] remove RandomizerTemp
tp @s[scores={TalkTime=1440..}] -775 103 1214
playsound minecraft:entity.player.levelup ambient @s[scores={TalkTime=1440..}] ~ ~ ~ 100 1 1
tellraw @s[scores={TalkTime=1440..}] {"text":"Randomization process complete!"}
tag @e[x=-688,y=100,z=1136,dy=3] add Randomizer
scoreboard players set @s[scores={TalkTime=1440..}] DialogueTrigger 0
scoreboard players set @s[scores={TalkTime=1440..}] TalkTime 0


#1-17, generates randomized spawners
#19-1428 tps player around the world, alternates between tping directly to spawner and clones in a spawner
#1430, tps player back to spawn and ends script

tellraw @s[scores={TalkTime=1}] {"text":"Randomizng reference spawners..."}
execute as @s[scores={TalkTime=1}] run clone -417 132 1168 -417 128 1136 -417 101 1136

execute as @s[scores={TalkTime=1}] run function kalos:randomizer/spawner1
execute as @s[scores={TalkTime=3}] run function kalos:randomizer/spawner2
execute as @s[scores={TalkTime=5}] run function kalos:randomizer/spawner3
execute as @s[scores={TalkTime=7}] run function kalos:randomizer/spawner4
execute as @s[scores={TalkTime=9}] run function kalos:randomizer/spawner5
execute as @s[scores={TalkTime=11}] run function kalos:randomizer/spawner6
execute as @s[scores={TalkTime=13}] run function kalos:randomizer/spawner7
execute as @s[scores={TalkTime=15}] run function kalos:randomizer/spawner8
execute as @s[scores={TalkTime=17}] run function kalos:randomizer/spawner9


#Starters
tp @s[scores={TalkTime=1430..1434}] -1078 106 1198
execute as @s[scores={TalkTime=1432}] run function kalos:randomizer/starters

tp @s[scores={TalkTime=1433}] -1078 105 1258
execute as @s[scores={TalkTime=1434}] run function kalos:randomizer/starterssecondary
tp @s[scores={TalkTime=1435}] -1078 105 1311
execute as @s[scores={TalkTime=1436}] run function kalos:randomizer/starterssecondary
tp @s[scores={TalkTime=1437}] -1078 105 1373
execute as @s[scores={TalkTime=1438}] run function kalos:randomizer/starterssecondary




#Progress titles

title @s[scores={TalkTime=19..32}] actionbar {"text":"~0% of spawners placed"}
title @s[scores={TalkTime=33..46}] actionbar {"text":"~1% of spawners placed"}
title @s[scores={TalkTime=47..60}] actionbar {"text":"~2% of spawners placed"}
title @s[scores={TalkTime=61..74}] actionbar {"text":"~3% of spawners placed"}
title @s[scores={TalkTime=75..89}] actionbar {"text":"~4% of spawners placed"}
title @s[scores={TalkTime=90..103}] actionbar {"text":"~5% of spawners placed"}
title @s[scores={TalkTime=104..117}] actionbar {"text":"~6% of spawners placed"}
title @s[scores={TalkTime=118..131}] actionbar {"text":"~7% of spawners placed"}
title @s[scores={TalkTime=132..145}] actionbar {"text":"~8% of spawners placed"}
title @s[scores={TalkTime=146..159}] actionbar {"text":"~9% of spawners placed"}
title @s[scores={TalkTime=160..173}] actionbar {"text":"~10% of spawners placed"}
title @s[scores={TalkTime=174..187}] actionbar {"text":"~11% of spawners placed"}
title @s[scores={TalkTime=188..201}] actionbar {"text":"~12% of spawners placed"}
title @s[scores={TalkTime=202..216}] actionbar {"text":"~13% of spawners placed"}
title @s[scores={TalkTime=217..230}] actionbar {"text":"~14% of spawners placed"}
title @s[scores={TalkTime=231..244}] actionbar {"text":"~15% of spawners placed"}
title @s[scores={TalkTime=245..258}] actionbar {"text":"~16% of spawners placed"}
title @s[scores={TalkTime=259..272}] actionbar {"text":"~17% of spawners placed"}
title @s[scores={TalkTime=273..286}] actionbar {"text":"~18% of spawners placed"}
title @s[scores={TalkTime=287..300}] actionbar {"text":"~19% of spawners placed"}
title @s[scores={TalkTime=301..314}] actionbar {"text":"~20% of spawners placed"}
title @s[scores={TalkTime=315..328}] actionbar {"text":"~21% of spawners placed"}
title @s[scores={TalkTime=329..343}] actionbar {"text":"~22% of spawners placed"}
title @s[scores={TalkTime=344..357}] actionbar {"text":"~23% of spawners placed"}
title @s[scores={TalkTime=358..371}] actionbar {"text":"~24% of spawners placed"}
title @s[scores={TalkTime=372..385}] actionbar {"text":"~25% of spawners placed"}
title @s[scores={TalkTime=386..399}] actionbar {"text":"~26% of spawners placed"}
title @s[scores={TalkTime=400..413}] actionbar {"text":"~27% of spawners placed"}
title @s[scores={TalkTime=414..427}] actionbar {"text":"~28% of spawners placed"}
title @s[scores={TalkTime=428..441}] actionbar {"text":"~29% of spawners placed"}
title @s[scores={TalkTime=442..455}] actionbar {"text":"~30% of spawners placed"}
title @s[scores={TalkTime=456..470}] actionbar {"text":"~31% of spawners placed"}
title @s[scores={TalkTime=471..484}] actionbar {"text":"~32% of spawners placed"}
title @s[scores={TalkTime=485..498}] actionbar {"text":"~33% of spawners placed"}
title @s[scores={TalkTime=499..512}] actionbar {"text":"~34% of spawners placed"}
title @s[scores={TalkTime=513..526}] actionbar {"text":"~35% of spawners placed"}
title @s[scores={TalkTime=527..540}] actionbar {"text":"~36% of spawners placed"}
title @s[scores={TalkTime=541..554}] actionbar {"text":"~37% of spawners placed"}
title @s[scores={TalkTime=555..568}] actionbar {"text":"~38% of spawners placed"}
title @s[scores={TalkTime=569..582}] actionbar {"text":"~39% of spawners placed"}
title @s[scores={TalkTime=583..597}] actionbar {"text":"~40% of spawners placed"}
title @s[scores={TalkTime=598..611}] actionbar {"text":"~41% of spawners placed"}
title @s[scores={TalkTime=612..625}] actionbar {"text":"~42% of spawners placed"}
title @s[scores={TalkTime=626..639}] actionbar {"text":"~43% of spawners placed"}
title @s[scores={TalkTime=640..653}] actionbar {"text":"~44% of spawners placed"}
title @s[scores={TalkTime=654..667}] actionbar {"text":"~45% of spawners placed"}
title @s[scores={TalkTime=668..681}] actionbar {"text":"~46% of spawners placed"}
title @s[scores={TalkTime=682..695}] actionbar {"text":"~47% of spawners placed"}
title @s[scores={TalkTime=696..709}] actionbar {"text":"~48% of spawners placed"}
title @s[scores={TalkTime=710..724}] actionbar {"text":"~49% of spawners placed"}
title @s[scores={TalkTime=725..738}] actionbar {"text":"~50% of spawners placed"}
title @s[scores={TalkTime=739..752}] actionbar {"text":"~51% of spawners placed"}
title @s[scores={TalkTime=753..766}] actionbar {"text":"~52% of spawners placed"}
title @s[scores={TalkTime=767..780}] actionbar {"text":"~53% of spawners placed"}
title @s[scores={TalkTime=781..794}] actionbar {"text":"~54% of spawners placed"}
title @s[scores={TalkTime=795..808}] actionbar {"text":"~55% of spawners placed"}
title @s[scores={TalkTime=809..822}] actionbar {"text":"~56% of spawners placed"}
title @s[scores={TalkTime=823..836}] actionbar {"text":"~57% of spawners placed"}
title @s[scores={TalkTime=837..850}] actionbar {"text":"~58% of spawners placed"}
title @s[scores={TalkTime=851..865}] actionbar {"text":"~59% of spawners placed"}
title @s[scores={TalkTime=866..879}] actionbar {"text":"~60% of spawners placed"}
title @s[scores={TalkTime=880..893}] actionbar {"text":"~61% of spawners placed"}
title @s[scores={TalkTime=894..907}] actionbar {"text":"~62% of spawners placed"}
title @s[scores={TalkTime=908..921}] actionbar {"text":"~63% of spawners placed"}
title @s[scores={TalkTime=922..935}] actionbar {"text":"~64% of spawners placed"}
title @s[scores={TalkTime=936..949}] actionbar {"text":"~65% of spawners placed"}
title @s[scores={TalkTime=950..963}] actionbar {"text":"~66% of spawners placed"}
title @s[scores={TalkTime=964..977}] actionbar {"text":"~67% of spawners placed"}
title @s[scores={TalkTime=978..992}] actionbar {"text":"~68% of spawners placed"}
title @s[scores={TalkTime=993..1006}] actionbar {"text":"~69% of spawners placed"}
title @s[scores={TalkTime=1007..1020}] actionbar {"text":"~70% of spawners placed"}
title @s[scores={TalkTime=1021..1034}] actionbar {"text":"~71% of spawners placed"}
title @s[scores={TalkTime=1035..1048}] actionbar {"text":"~72% of spawners placed"}
title @s[scores={TalkTime=1049..1062}] actionbar {"text":"~73% of spawners placed"}
title @s[scores={TalkTime=1063..1076}] actionbar {"text":"~74% of spawners placed"}
title @s[scores={TalkTime=1077..1090}] actionbar {"text":"~75% of spawners placed"}
title @s[scores={TalkTime=1091..1104}] actionbar {"text":"~76% of spawners placed"}
title @s[scores={TalkTime=1105..1119}] actionbar {"text":"~77% of spawners placed"}
title @s[scores={TalkTime=1120..1133}] actionbar {"text":"~78% of spawners placed"}
title @s[scores={TalkTime=1134..1147}] actionbar {"text":"~79% of spawners placed"}
title @s[scores={TalkTime=1148..1161}] actionbar {"text":"~80% of spawners placed"}
title @s[scores={TalkTime=1162..1175}] actionbar {"text":"~81% of spawners placed"}
title @s[scores={TalkTime=1176..1189}] actionbar {"text":"~82% of spawners placed"}
title @s[scores={TalkTime=1190..1203}] actionbar {"text":"~83% of spawners placed"}
title @s[scores={TalkTime=1204..1217}] actionbar {"text":"~84% of spawners placed"}
title @s[scores={TalkTime=1218..1231}] actionbar {"text":"~85% of spawners placed"}
title @s[scores={TalkTime=1232..1246}] actionbar {"text":"~86% of spawners placed"}
title @s[scores={TalkTime=1247..1260}] actionbar {"text":"~87% of spawners placed"}
title @s[scores={TalkTime=1261..1274}] actionbar {"text":"~88% of spawners placed"}
title @s[scores={TalkTime=1275..1288}] actionbar {"text":"~89% of spawners placed"}
title @s[scores={TalkTime=1289..1302}] actionbar {"text":"~90% of spawners placed"}
title @s[scores={TalkTime=1303..1316}] actionbar {"text":"~91% of spawners placed"}
title @s[scores={TalkTime=1317..1330}] actionbar {"text":"~92% of spawners placed"}
title @s[scores={TalkTime=1331..1344}] actionbar {"text":"~93% of spawners placed"}
title @s[scores={TalkTime=1345..1358}] actionbar {"text":"~94% of spawners placed"}
title @s[scores={TalkTime=1359..1373}] actionbar {"text":"~95% of spawners placed"}
title @s[scores={TalkTime=1374..1387}] actionbar {"text":"~96% of spawners placed"}
title @s[scores={TalkTime=1388..1401}] actionbar {"text":"~97% of spawners placed"}
title @s[scores={TalkTime=1402..1415}] actionbar {"text":"~98% of spawners placed"}
title @s[scores={TalkTime=1416..1429}] actionbar {"text":"~99% of spawners placed"}
title @s[scores={TalkTime=1430..}] actionbar {"text":"~100% of spawners placed"}

tellraw @s[scores={TalkTime=19}] {"text":"Beginning randomized-spawner cloning process... This may take a while. Keep your client open and unpaused in the meantime!"}
#tellraw @s[score_TalkTime_min=357,score_TalkTime=357] {"text":"About 25% through placing spawners."}
#tellraw @s[score_TalkTime_min=714,score_TalkTime=714] {"text":"About 50% through placing spawners."}
#tellraw @s[score_TalkTime_min=1071,score_TalkTime=1071] {"text":"About 75% through placing spawners."}





tp @s[scores={TalkTime=19}] -2254 102 -480
tp @s[scores={TalkTime=21}] -2253 102 -421
tp @s[scores={TalkTime=23}] -2253 102 -452
tp @s[scores={TalkTime=25}] -2253 102 -532
tp @s[scores={TalkTime=27}] -2250 102 -345
tp @s[scores={TalkTime=29}] -2250 102 -566
tp @s[scores={TalkTime=31}] -2249 102 -505
tp @s[scores={TalkTime=33}] -2240 102 -436
tp @s[scores={TalkTime=35}] -2239 102 -471
tp @s[scores={TalkTime=37}] -2236 102 -507
tp @s[scores={TalkTime=39}] -2235 102 -585
tp @s[scores={TalkTime=41}] -2234 102 -522
tp @s[scores={TalkTime=43}] -2231 102 -453
tp @s[scores={TalkTime=45}] -2227 102 -566
tp @s[scores={TalkTime=47}] -2214 102 -456
tp @s[scores={TalkTime=49}] -2211 102 -395
tp @s[scores={TalkTime=51}] -2211 102 -547
tp @s[scores={TalkTime=53}] -2210 102 -492
tp @s[scores={TalkTime=55}] -2209 102 -412
tp @s[scores={TalkTime=57}] -2209 102 -508
tp @s[scores={TalkTime=59}] -2209 102 -521
tp @s[scores={TalkTime=61}] -2209 97 11
tp @s[scores={TalkTime=63}] -2195 102 -399
tp @s[scores={TalkTime=65}] -2186 102 -438
tp @s[scores={TalkTime=67}] -2186 102 -454
tp @s[scores={TalkTime=69}] -2182 102 -417
tp @s[scores={TalkTime=71}] -2182 102 -548
tp @s[scores={TalkTime=73}] -2181 97 -187
tp @s[scores={TalkTime=75}] -2178 97 106
tp @s[scores={TalkTime=77}] -2176 101 -347
tp @s[scores={TalkTime=79}] -2174 102 -490
tp @s[scores={TalkTime=81}] -2171 97 -86
tp @s[scores={TalkTime=83}] -2169 102 -438
tp @s[scores={TalkTime=85}] -2168 102 -320
tp @s[scores={TalkTime=87}] -2168 97 205
tp @s[scores={TalkTime=89}] -2166 102 -411
tp @s[scores={TalkTime=91}] -2165 102 -451
tp @s[scores={TalkTime=93}] -2165 102 -528
tp @s[scores={TalkTime=95}] -2164 102 -358
tp @s[scores={TalkTime=97}] -2164 102 -395
tp @s[scores={TalkTime=99}] -2164 102 -510
tp @s[scores={TalkTime=101}] -2137 102 -353
tp @s[scores={TalkTime=103}] -2126 102 -312
tp @s[scores={TalkTime=105}] -2113 102 -338
tp @s[scores={TalkTime=107}] -2111 97 314
tp @s[scores={TalkTime=109}] -2109 102 -299
tp @s[scores={TalkTime=111}] -2102 97 -10
tp @s[scores={TalkTime=113}] -2082 97 512
tp @s[scores={TalkTime=115}] -2081 97 590
tp @s[scores={TalkTime=117}] -2074 97 386
tp @s[scores={TalkTime=119}] -2066 97 177
tp @s[scores={TalkTime=121}] -2065 97 98
tp @s[scores={TalkTime=123}] -2059 97 641
tp @s[scores={TalkTime=125}] -2047 97 706
tp @s[scores={TalkTime=127}] -2045 97 32
tp @s[scores={TalkTime=129}] -2036 97 237
tp @s[scores={TalkTime=131}] -2036 97 317
tp @s[scores={TalkTime=133}] -2036 97 463
tp @s[scores={TalkTime=135}] -2017 111 -678
tp @s[scores={TalkTime=137}] -2013 111 -706
tp @s[scores={TalkTime=139}] -2011 107 -638
tp @s[scores={TalkTime=141}] -2005 111 -692
tp @s[scores={TalkTime=143}] -2003 107 -658
tp @s[scores={TalkTime=145}] -1995 111 -682
tp @s[scores={TalkTime=147}] -1991 107 -647
tp @s[scores={TalkTime=149}] -1989 97 728
tp @s[scores={TalkTime=151}] -1956 149 116
tp @s[scores={TalkTime=153}] -1955 116 -692
tp @s[scores={TalkTime=155}] -1954 116 -664
tp @s[scores={TalkTime=157}] -1949 116 -711
tp @s[scores={TalkTime=159}] -1944 149 225
tp @s[scores={TalkTime=161}] -1942 149 202
tp @s[scores={TalkTime=163}] -1938 149 370
tp @s[scores={TalkTime=165}] -1936 149 115
tp @s[scores={TalkTime=167}] -1925 149 345
tp @s[scores={TalkTime=169}] -1920 145 243
tp @s[scores={TalkTime=171}] -1916 149 375
tp @s[scores={TalkTime=173}] -1916 149 359
tp @s[scores={TalkTime=175}] -1907 145 285
tp @s[scores={TalkTime=177}] -1907 145 263
tp @s[scores={TalkTime=179}] -1849 45 0
tp @s[scores={TalkTime=181}] -1842 53 105
tp @s[scores={TalkTime=183}] -1832 45 36
tp @s[scores={TalkTime=185}] -1808 74 -951
tp @s[scores={TalkTime=187}] -1807 62 -328
tp @s[scores={TalkTime=189}] -1805 49 106
tp @s[scores={TalkTime=191}] -1792 67 -363
tp @s[scores={TalkTime=193}] -1779 41 36
tp @s[scores={TalkTime=195}] -1764 41 67
tp @s[scores={TalkTime=197}] -1757 70 -424
tp @s[scores={TalkTime=199}] -1754 74 -1115
tp @s[scores={TalkTime=201}] -1752 41 108
tp @s[scores={TalkTime=203}] -1752 74 -1019
tp @s[scores={TalkTime=205}] -1751 67 -359
tp @s[scores={TalkTime=207}] -1750 74 -1227
tp @s[scores={TalkTime=209}] -1749 67 -315
tp @s[scores={TalkTime=211}] -1748 62 -273
tp @s[scores={TalkTime=213}] -1746 135 660
tp @s[scores={TalkTime=215}] -1739 38 35
tp @s[scores={TalkTime=217}] -1725 12 -317
tp @s[scores={TalkTime=219}] -1718 62 -251
tp @s[scores={TalkTime=221}] -1713 67 -341
tp @s[scores={TalkTime=223}] -1709 74 -947
tp @s[scores={TalkTime=225}] -1701 135 638
tp @s[scores={TalkTime=227}] -1696 104 59
tp @s[scores={TalkTime=229}] -1693 0 -367
tp @s[scores={TalkTime=231}] -1692 33 36
tp @s[scores={TalkTime=233}] -1691 74 -1272
tp @s[scores={TalkTime=235}] -1687 62 -277
tp @s[scores={TalkTime=237}] -1676 74 -1018
tp @s[scores={TalkTime=239}] -1666 104 59
tp @s[scores={TalkTime=241}] -1665 15 -327
tp @s[scores={TalkTime=243}] -1664 72 -349
tp @s[scores={TalkTime=245}] -1664 15 -364
tp @s[scores={TalkTime=247}] -1647 17 -388
tp @s[scores={TalkTime=249}] -1641 135 648
tp @s[scores={TalkTime=251}] -1627 74 -1017
tp @s[scores={TalkTime=253}] -1623 38 -266
tp @s[scores={TalkTime=255}] -1620 74 -945
tp @s[scores={TalkTime=257}] -1595 98 -15
tp @s[scores={TalkTime=259}] -1594 41 -352
tp @s[scores={TalkTime=261}] -1593 35 -325
tp @s[scores={TalkTime=263}] -1588 135 650
tp @s[scores={TalkTime=265}] -1580 74 -1022
tp @s[scores={TalkTime=267}] -1576 41 -300
tp @s[scores={TalkTime=269}] -1574 33 -212
tp @s[scores={TalkTime=271}] -1574 33 -264
tp @s[scores={TalkTime=273}] -1572 74 -1271
tp @s[scores={TalkTime=275}] -1566 98 -13
tp @s[scores={TalkTime=277}] -1566 135 615
tp @s[scores={TalkTime=279}] -1552 36 -355
tp @s[scores={TalkTime=281}] -1551 98 -24
tp @s[scores={TalkTime=283}] -1548 74 -1107
tp @s[scores={TalkTime=285}] -1546 74 -1200
tp @s[scores={TalkTime=287}] -1537 74 -943
tp @s[scores={TalkTime=289}] -1535 37 -204
tp @s[scores={TalkTime=291}] -1520 146 412
tp @s[scores={TalkTime=293}] -1514 135 624
tp @s[scores={TalkTime=295}] -1509 33 -355
tp @s[scores={TalkTime=297}] -1505 146 472
tp @s[scores={TalkTime=299}] -1500 98 -14
tp @s[scores={TalkTime=301}] -1488 33 -267
tp @s[scores={TalkTime=303}] -1487 33 -324
tp @s[scores={TalkTime=305}] -1487 33 -209
tp @s[scores={TalkTime=307}] -1483 135 633
tp @s[scores={TalkTime=309}] -1476 98 -19
tp @s[scores={TalkTime=311}] -1471 146 286
tp @s[scores={TalkTime=313}] -1467 146 500
tp @s[scores={TalkTime=315}] -1459 70 -1208
tp @s[scores={TalkTime=317}] -1458 98 -26
tp @s[scores={TalkTime=319}] -1458 98 -14
tp @s[scores={TalkTime=321}] -1453 70 -1101
tp @s[scores={TalkTime=323}] -1451 70 -1023
tp @s[scores={TalkTime=325}] -1447 70 -1290
tp @s[scores={TalkTime=327}] -1445 78 -783
tp @s[scores={TalkTime=329}] -1442 78 -843
tp @s[scores={TalkTime=331}] -1442 146 414
tp @s[scores={TalkTime=333}] -1441 146 483
tp @s[scores={TalkTime=335}] -1439 98 -23
tp @s[scores={TalkTime=337}] -1438 146 325
tp @s[scores={TalkTime=339}] -1432 70 -959
tp @s[scores={TalkTime=341}] -1422 74 -989
tp @s[scores={TalkTime=343}] -1420 74 -1020
tp @s[scores={TalkTime=345}] -1411 70 -815
tp @s[scores={TalkTime=347}] -1408 74 -997
tp @s[scores={TalkTime=349}] -1404 70 -755
tp @s[scores={TalkTime=351}] -1394 98 -23
tp @s[scores={TalkTime=353}] -1388 146 281
tp @s[scores={TalkTime=355}] -1380 70 -1030
tp @s[scores={TalkTime=357}] -1366 70 -1276
tp @s[scores={TalkTime=359}] -1358 78 -772
tp @s[scores={TalkTime=361}] -1357 56 -1095
tp @s[scores={TalkTime=363}] -1355 70 -874
tp @s[scores={TalkTime=365}] -1354 70 -940
tp @s[scores={TalkTime=367}] -1351 64 -1134
tp @s[scores={TalkTime=369}] -1344 98 -23
tp @s[scores={TalkTime=371}] -1343 98 -253
tp @s[scores={TalkTime=373}] -1342 78 -773
tp @s[scores={TalkTime=375}] -1339 98 -205
tp @s[scores={TalkTime=377}] -1339 98 -186
tp @s[scores={TalkTime=379}] -1337 98 -138
tp @s[scores={TalkTime=381}] -1328 98 -249
tp @s[scores={TalkTime=383}] -1326 98 -168
tp @s[scores={TalkTime=385}] -1325 98 -229
tp @s[scores={TalkTime=387}] -1324 70 -902
tp @s[scores={TalkTime=389}] -1322 78 -748
tp @s[scores={TalkTime=391}] -1317 98 -193
tp @s[scores={TalkTime=393}] -1315 98 -23
tp @s[scores={TalkTime=395}] -1312 72 -1216
tp @s[scores={TalkTime=397}] -1309 98 -136
tp @s[scores={TalkTime=399}] -1306 98 -277
tp @s[scores={TalkTime=401}] -1305 98 -152
tp @s[scores={TalkTime=403}] -1303 98 -220
tp @s[scores={TalkTime=405}] -1300 98 -249
tp @s[scores={TalkTime=407}] -1290 70 -1014
tp @s[scores={TalkTime=409}] -1286 98 -138
tp @s[scores={TalkTime=411}] -1281 98 -223
tp @s[scores={TalkTime=413}] -1281 98 -161
tp @s[scores={TalkTime=415}] -1280 98 -193
tp @s[scores={TalkTime=417}] -1278 98 -278
tp @s[scores={TalkTime=419}] -1272 70 -1271
tp @s[scores={TalkTime=421}] -1266 70 -1117
tp @s[scores={TalkTime=423}] -1257 62 -1033
tp @s[scores={TalkTime=425}] -1251 70 -850
tp @s[scores={TalkTime=427}] -1245 70 -903
tp @s[scores={TalkTime=429}] -1244 74 -796
tp @s[scores={TalkTime=431}] -1238 76 -764
tp @s[scores={TalkTime=433}] -1238 70 -1184
tp @s[scores={TalkTime=435}] -1219 98 -279
tp @s[scores={TalkTime=437}] -1217 98 -167
tp @s[scores={TalkTime=439}] -1216 98 -213
tp @s[scores={TalkTime=441}] -1209 98 -248
tp @s[scores={TalkTime=443}] -1198 98 -138
tp @s[scores={TalkTime=445}] -1197 98 -270
tp @s[scores={TalkTime=447}] -1195 98 -207
tp @s[scores={TalkTime=449}] -1194 98 -174
tp @s[scores={TalkTime=451}] -1189 98 -233
tp @s[scores={TalkTime=453}] -1176 98 -264
tp @s[scores={TalkTime=455}] -1161 98 -192
tp @s[scores={TalkTime=457}] -1160 98 -138
tp @s[scores={TalkTime=459}] -1159 98 -221
tp @s[scores={TalkTime=461}] -925 98 -61
tp @s[scores={TalkTime=463}] -923 102 -614
tp @s[scores={TalkTime=465}] -914 102 -460
tp @s[scores={TalkTime=467}] -913 98 -68
tp @s[scores={TalkTime=469}] -909 102 -536
tp @s[scores={TalkTime=471}] -905 98 -161
tp @s[scores={TalkTime=473}] -902 98 -51
tp @s[scores={TalkTime=475}] -902 102 -411
tp @s[scores={TalkTime=477}] -889 102 -673
tp @s[scores={TalkTime=479}] -887 98 -145
tp @s[scores={TalkTime=481}] -883 98 -175
tp @s[scores={TalkTime=483}] -881 100 -98
tp @s[scores={TalkTime=485}] -874 102 -633
tp @s[scores={TalkTime=487}] -872 102 -523
tp @s[scores={TalkTime=489}] -863 100 -110
tp @s[scores={TalkTime=491}] -863 102 -453
tp @s[scores={TalkTime=493}] -852 102 -588
tp @s[scores={TalkTime=495}] -823 102 -518
tp @s[scores={TalkTime=497}] -816 102 -665
tp @s[scores={TalkTime=499}] -815 102 -450
tp @s[scores={TalkTime=501}] -799 102 -562
tp @s[scores={TalkTime=503}] -789 102 -311
tp @s[scores={TalkTime=505}] -772 98 -153
tp @s[scores={TalkTime=507}] -769 102 -509
tp @s[scores={TalkTime=509}] -769 102 -356
tp @s[scores={TalkTime=511}] -760 102 -401
tp @s[scores={TalkTime=513}] -749 102 -584
tp @s[scores={TalkTime=515}] -742 102 -634
tp @s[scores={TalkTime=517}] -741 102 -433
tp @s[scores={TalkTime=519}] -739 94 -135
tp @s[scores={TalkTime=521}] -735 102 -268
tp @s[scores={TalkTime=523}] -718 94 -145
tp @s[scores={TalkTime=525}] -718 102 -326
tp @s[scores={TalkTime=527}] -714 102 -373
tp @s[scores={TalkTime=529}] -692 98 -468
tp @s[scores={TalkTime=531}] -235 96 -1031
tp @s[scores={TalkTime=533}] -232 97 -1201
tp @s[scores={TalkTime=535}] -230 97 -1176
tp @s[scores={TalkTime=537}] -226 96 -1126
tp @s[scores={TalkTime=539}] -218 97 -1066
tp @s[scores={TalkTime=541}] -207 97 -1208
tp @s[scores={TalkTime=543}] -193 98 -1097
tp @s[scores={TalkTime=545}] -188 97 -1036
tp @s[scores={TalkTime=547}] -177 95 -1171
tp @s[scores={TalkTime=549}] -160 98 -1012
tp @s[scores={TalkTime=551}] -157 98 -1123
tp @s[scores={TalkTime=553}] -153 98 -1138
tp @s[scores={TalkTime=555}] -146 97 -1038
tp @s[scores={TalkTime=557}] -142 97 -1167
tp @s[scores={TalkTime=559}] -140 96 -1230
tp @s[scores={TalkTime=561}] -139 97 -1197
tp @s[scores={TalkTime=563}] -135 98 -1012
tp @s[scores={TalkTime=565}] -124 98 -1040
tp @s[scores={TalkTime=567}] -114 97 -1062
tp @s[scores={TalkTime=569}] -107 97 -1090
tp @s[scores={TalkTime=571}] -106 98 -1029
tp @s[scores={TalkTime=573}] -80 98 -1205
tp @s[scores={TalkTime=575}] 127 98 307
tp @s[scores={TalkTime=577}] 130 98 -46
tp @s[scores={TalkTime=579}] 131 98 252
tp @s[scores={TalkTime=581}] 132 98 31
tp @s[scores={TalkTime=583}] 134 98 72
tp @s[scores={TalkTime=585}] 134 98 88
tp @s[scores={TalkTime=587}] 138 98 48
tp @s[scores={TalkTime=589}] 145 98 302
tp @s[scores={TalkTime=591}] 148 98 251
tp @s[scores={TalkTime=593}] 159 98 252
tp @s[scores={TalkTime=595}] 162 98 310
tp @s[scores={TalkTime=597}] 179 98 8
tp @s[scores={TalkTime=599}] 179 98 -7
tp @s[scores={TalkTime=601}] 196 98 310
tp @s[scores={TalkTime=603}] 211 98 252
tp @s[scores={TalkTime=605}] 212 98 303
tp @s[scores={TalkTime=607}] 219 98 46
tp @s[scores={TalkTime=609}] 222 98 71
tp @s[scores={TalkTime=611}] 223 98 88
tp @s[scores={TalkTime=613}] 226 98 251
tp @s[scores={TalkTime=615}] 226 98 32
tp @s[scores={TalkTime=617}] 227 98 -47
tp @s[scores={TalkTime=619}] 229 98 308
tp @s[scores={TalkTime=621}] 290 97 -256
tp @s[scores={TalkTime=623}] 291 92 607
tp @s[scores={TalkTime=625}] 292 92 659
tp @s[scores={TalkTime=627}] 302 92 598
tp @s[scores={TalkTime=629}] 302 94 -287
tp @s[scores={TalkTime=631}] 303 94 -328
tp @s[scores={TalkTime=633}] 305 92 639
tp @s[scores={TalkTime=635}] 309 97 -256
tp @s[scores={TalkTime=637}] 324 94 701
tp @s[scores={TalkTime=639}] 325 106 -553
tp @s[scores={TalkTime=641}] 328 94 -328
tp @s[scores={TalkTime=643}] 334 94 -283
tp @s[scores={TalkTime=645}] 342 97 -234
tp @s[scores={TalkTime=647}] 349 94 678
tp @s[scores={TalkTime=649}] 354 97 -228
tp @s[scores={TalkTime=651}] 355 106 -548
tp @s[scores={TalkTime=653}] 356 98 -346
tp @s[scores={TalkTime=655}] 359 102 -458
tp @s[scores={TalkTime=657}] 360 98 -296
tp @s[scores={TalkTime=659}] 364 97 -245
tp @s[scores={TalkTime=661}] 368 98 620
tp @s[scores={TalkTime=663}] 368 98 597
tp @s[scores={TalkTime=665}] 375 102 -294
tp @s[scores={TalkTime=667}] 375 102 -311
tp @s[scores={TalkTime=669}] 381 106 -546
tp @s[scores={TalkTime=671}] 383 98 837
tp @s[scores={TalkTime=673}] 386 98 863
tp @s[scores={TalkTime=675}] 388 98 -350
tp @s[scores={TalkTime=677}] 390 102 -471
tp @s[scores={TalkTime=679}] 396 106 -509
tp @s[scores={TalkTime=681}] 401 106 -270
tp @s[scores={TalkTime=683}] 401 106 -289
tp @s[scores={TalkTime=685}] 403 106 -546
tp @s[scores={TalkTime=687}] 404 106 -517
tp @s[scores={TalkTime=689}] 404 98 328
tp @s[scores={TalkTime=691}] 405 98 898
tp @s[scores={TalkTime=693}] 405 98 344
tp @s[scores={TalkTime=695}] 407 98 625
tp @s[scores={TalkTime=697}] 408 106 -256
tp @s[scores={TalkTime=699}] 410 98 827
tp @s[scores={TalkTime=701}] 417 85 -387
tp @s[scores={TalkTime=703}] 419 106 -513
tp @s[scores={TalkTime=705}] 421 106 -305
tp @s[scores={TalkTime=707}] 422 85 -432
tp @s[scores={TalkTime=709}] 424 98 937
tp @s[scores={TalkTime=711}] 425 98 329
tp @s[scores={TalkTime=713}] 427 85 -477
tp @s[scores={TalkTime=715}] 429 102 -526
tp @s[scores={TalkTime=717}] 429 106 -283
tp @s[scores={TalkTime=719}] 430 102 -478
tp @s[scores={TalkTime=721}] 430 106 -253
tp @s[scores={TalkTime=723}] 431 98 376
tp @s[scores={TalkTime=725}] 432 102 -354
tp @s[scores={TalkTime=727}] 433 106 -325
tp @s[scores={TalkTime=729}] 436 106 -231
tp @s[scores={TalkTime=731}] 442 98 818
tp @s[scores={TalkTime=733}] 442 98 909
tp @s[scores={TalkTime=735}] 443 106 -215
tp @s[scores={TalkTime=737}] 444 106 -482
tp @s[scores={TalkTime=739}] 448 106 -200
tp @s[scores={TalkTime=741}] 450 98 376
tp @s[scores={TalkTime=743}] 455 98 1087
tp @s[scores={TalkTime=745}] 455 102 -591
tp @s[scores={TalkTime=747}] 455 102 -536
tp @s[scores={TalkTime=749}] 461 98 930
tp @s[scores={TalkTime=751}] 462 98 1032
tp @s[scores={TalkTime=753}] 467 85 -448
tp @s[scores={TalkTime=755}] 467 106 -192
tp @s[scores={TalkTime=757}] 470 98 827
tp @s[scores={TalkTime=759}] 470 102 -419
tp @s[scores={TalkTime=761}] 470 102 -367
tp @s[scores={TalkTime=763}] 471 98 1153
tp @s[scores={TalkTime=765}] 471 85 -384
tp @s[scores={TalkTime=767}] 473 106 -496
tp @s[scores={TalkTime=769}] 477 85 -475
tp @s[scores={TalkTime=771}] 478 98 1087
tp @s[scores={TalkTime=773}] 484 106 -508
tp @s[scores={TalkTime=775}] 487 98 1034
tp @s[scores={TalkTime=777}] 487 106 -191
tp @s[scores={TalkTime=779}] 488 98 812
tp @s[scores={TalkTime=781}] 488 102 -440
tp @s[scores={TalkTime=783}] 490 98 908
tp @s[scores={TalkTime=785}] 492 85 -415
tp @s[scores={TalkTime=787}] 495 106 -335
tp @s[scores={TalkTime=789}] 503 98 941
tp @s[scores={TalkTime=791}] 504 106 -356
tp @s[scores={TalkTime=793}] 505 106 -513
tp @s[scores={TalkTime=795}] 506 102 -470
tp @s[scores={TalkTime=797}] 506 106 -382
tp @s[scores={TalkTime=799}] 509 106 -302
tp @s[scores={TalkTime=801}] 510 97 364
tp @s[scores={TalkTime=803}] 511 98 902
tp @s[scores={TalkTime=805}] 516 98 871
tp @s[scores={TalkTime=807}] 516 106 -327
tp @s[scores={TalkTime=809}] 517 106 -313
tp @s[scores={TalkTime=811}] 519 85 -406
tp @s[scores={TalkTime=813}] 522 85 -456
tp @s[scores={TalkTime=815}] 523 59 -981
tp @s[scores={TalkTime=817}] 525 86 513
tp @s[scores={TalkTime=819}] 527 106 -538
tp @s[scores={TalkTime=821}] 527 95 446
tp @s[scores={TalkTime=823}] 527 86 556
tp @s[scores={TalkTime=825}] 530 63 -1220
tp @s[scores={TalkTime=827}] 531 106 -495
tp @s[scores={TalkTime=829}] 537 98 832
tp @s[scores={TalkTime=831}] 539 106 -453
tp @s[scores={TalkTime=833}] 540 98 949
tp @s[scores={TalkTime=835}] 542 89 482
tp @s[scores={TalkTime=837}] 542 63 -1176
tp @s[scores={TalkTime=839}] 543 106 -368
tp @s[scores={TalkTime=841}] 546 106 -437
tp @s[scores={TalkTime=843}] 547 106 -468
tp @s[scores={TalkTime=845}] 563 110 -538
tp @s[scores={TalkTime=847}] 565 89 478
tp @s[scores={TalkTime=849}] 565 59 -992
tp @s[scores={TalkTime=851}] 567 63 -965
tp @s[scores={TalkTime=853}] 568 86 515
tp @s[scores={TalkTime=855}] 568 59 -1124
tp @s[scores={TalkTime=857}] 568 59 -1058
tp @s[scores={TalkTime=859}] 576 89 492
tp @s[scores={TalkTime=861}] 577 106 -466
tp @s[scores={TalkTime=863}] 577 106 -479
tp @s[scores={TalkTime=865}] 585 59 -1181
tp @s[scores={TalkTime=867}] 586 95 446
tp @s[scores={TalkTime=869}] 587 63 -1125
tp @s[scores={TalkTime=871}] 588 89 501
tp @s[scores={TalkTime=873}] 589 40 -1222
tp @s[scores={TalkTime=875}] 601 63 -1160
tp @s[scores={TalkTime=877}] 609 59 -1239
tp @s[scores={TalkTime=879}] 615 95 514
tp @s[scores={TalkTime=881}] 622 41 -989
tp @s[scores={TalkTime=883}] 622 83 -1200
tp @s[scores={TalkTime=885}] 625 40 -1234
tp @s[scores={TalkTime=887}] 627 63 -1041
tp @s[scores={TalkTime=889}] 633 95 488
tp @s[scores={TalkTime=891}] 638 63 -1166
tp @s[scores={TalkTime=893}] 646 63 -1220
tp @s[scores={TalkTime=895}] 648 112 -660
tp @s[scores={TalkTime=897}] 664 41 -969
tp @s[scores={TalkTime=899}] 673 83 -1231
tp @s[scores={TalkTime=901}] 674 102 -660
tp @s[scores={TalkTime=903}] 676 41 -1008
tp @s[scores={TalkTime=905}] 676 63 -1067
tp @s[scores={TalkTime=907}] 676 83 -1152
tp @s[scores={TalkTime=909}] 677 83 -1314
tp @s[scores={TalkTime=911}] 683 31 -928
tp @s[scores={TalkTime=913}] 701 102 461
tp @s[scores={TalkTime=915}] 710 31 -959
tp @s[scores={TalkTime=917}] 719 102 464
tp @s[scores={TalkTime=919}] 722 98 589
tp @s[scores={TalkTime=921}] 723 83 -1228
tp @s[scores={TalkTime=923}] 724 102 -655
tp @s[scores={TalkTime=925}] 729 63 -1187
tp @s[scores={TalkTime=927}] 730 98 608
tp @s[scores={TalkTime=929}] 736 89 752
tp @s[scores={TalkTime=931}] 737 89 703
tp @s[scores={TalkTime=933}] 739 93 664
tp @s[scores={TalkTime=935}] 742 98 582
tp @s[scores={TalkTime=937}] 742 93 649
tp @s[scores={TalkTime=939}] 753 83 -1154
tp @s[scores={TalkTime=941}] 759 98 460
tp @s[scores={TalkTime=943}] 761 83 -1230
tp @s[scores={TalkTime=945}] 763 94 582
tp @s[scores={TalkTime=947}] 764 89 688
tp @s[scores={TalkTime=949}] 764 94 519
tp @s[scores={TalkTime=951}] 765 89 638
tp @s[scores={TalkTime=953}] 768 63 -1158
tp @s[scores={TalkTime=955}] 774 98 461
tp @s[scores={TalkTime=957}] 780 63 -1108
tp @s[scores={TalkTime=959}] 782 31 -1013
tp @s[scores={TalkTime=961}] 787 102 -654
tp @s[scores={TalkTime=963}] 795 63 -1208
tp @s[scores={TalkTime=965}] 802 83 -1133
tp @s[scores={TalkTime=967}] 805 91 740
tp @s[scores={TalkTime=969}] 805 83 -1074
tp @s[scores={TalkTime=971}] 806 91 698
tp @s[scores={TalkTime=973}] 819 94 519
tp @s[scores={TalkTime=975}] 821 98 333
tp @s[scores={TalkTime=977}] 822 83 -1041
tp @s[scores={TalkTime=979}] 827 91 757
tp @s[scores={TalkTime=981}] 830 36 -1043
tp @s[scores={TalkTime=983}] 830 63 -1115
tp @s[scores={TalkTime=985}] 834 91 666
tp @s[scores={TalkTime=987}] 834 91 723
tp @s[scores={TalkTime=989}] 840 106 -315
tp @s[scores={TalkTime=991}] 843 91 642
tp @s[scores={TalkTime=993}] 844 98 306
tp @s[scores={TalkTime=995}] 853 102 -653
tp @s[scores={TalkTime=997}] 854 91 693
tp @s[scores={TalkTime=999}] 856 83 -1078
tp @s[scores={TalkTime=1001}] 857 63 -1205
tp @s[scores={TalkTime=1003}] 861 91 757
tp @s[scores={TalkTime=1005}] 861 100 400
tp @s[scores={TalkTime=1007}] 863 91 670
tp @s[scores={TalkTime=1009}] 866 98 452
tp @s[scores={TalkTime=1011}] 867 100 421
tp @s[scores={TalkTime=1013}] 872 102 311
tp @s[scores={TalkTime=1015}] 876 91 737
tp @s[scores={TalkTime=1017}] 876 98 440
tp @s[scores={TalkTime=1019}] 876 98 440
tp @s[scores={TalkTime=1021}] 876 94 518
tp @s[scores={TalkTime=1023}] 881 102 332
tp @s[scores={TalkTime=1025}] 885 91 645
tp @s[scores={TalkTime=1027}] 885 91 698
tp @s[scores={TalkTime=1029}] 888 102 318
tp @s[scores={TalkTime=1031}] 890 94 487
tp @s[scores={TalkTime=1033}] 891 94 448
tp @s[scores={TalkTime=1035}] 895 91 614
tp @s[scores={TalkTime=1037}] 896 106 -293
tp @s[scores={TalkTime=1039}] 896 91 728
tp @s[scores={TalkTime=1041}] 903 91 706
tp @s[scores={TalkTime=1043}] 905 106 -224
tp @s[scores={TalkTime=1045}] 910 91 657
tp @s[scores={TalkTime=1047}] 911 93 752
tp @s[scores={TalkTime=1049}] 919 93 732
tp @s[scores={TalkTime=1051}] 924 94 441
tp @s[scores={TalkTime=1053}] 927 94 399
tp @s[scores={TalkTime=1055}] 928 91 703
tp @s[scores={TalkTime=1057}] 929 91 625
tp @s[scores={TalkTime=1059}] 934 91 682
tp @s[scores={TalkTime=1061}] 945 91 645
tp @s[scores={TalkTime=1063}] 946 94 357
tp @s[scores={TalkTime=1065}] 972 106 -193
tp @s[scores={TalkTime=1067}] 1076 98 825
tp @s[scores={TalkTime=1069}] 1080 104 963
tp @s[scores={TalkTime=1071}] 1093 104 986
tp @s[scores={TalkTime=1073}] 1099 104 967
tp @s[scores={TalkTime=1075}] 1169 98 898
tp @s[scores={TalkTime=1077}] 1172 98 911
tp @s[scores={TalkTime=1079}] 1263 98 878
tp @s[scores={TalkTime=1081}] 1282 98 880
tp @s[scores={TalkTime=1083}] 1348 98 774
tp @s[scores={TalkTime=1085}] 1351 98 877
tp @s[scores={TalkTime=1087}] 1356 85 420
tp @s[scores={TalkTime=1089}] 1358 98 762
tp @s[scores={TalkTime=1091}] 1361 98 498
tp @s[scores={TalkTime=1093}] 1362 85 407
tp @s[scores={TalkTime=1095}] 1362 98 478
tp @s[scores={TalkTime=1097}] 1363 98 868
tp @s[scores={TalkTime=1099}] 1367 98 972
tp @s[scores={TalkTime=1101}] 1375 105 -41
tp @s[scores={TalkTime=1103}] 1380 72 427
tp @s[scores={TalkTime=1105}] 1384 106 -3
tp @s[scores={TalkTime=1107}] 1388 98 478
tp @s[scores={TalkTime=1109}] 1390 98 981
tp @s[scores={TalkTime=1111}] 1391 98 794
tp @s[scores={TalkTime=1113}] 1393 98 778
tp @s[scores={TalkTime=1115}] 1394 98 995
tp @s[scores={TalkTime=1117}] 1407 101 863
tp @s[scores={TalkTime=1119}] 1410 72 393
tp @s[scores={TalkTime=1121}] 1410 72 430
tp @s[scores={TalkTime=1123}] 1415 72 481
tp @s[scores={TalkTime=1125}] 1416 72 529
tp @s[scores={TalkTime=1127}] 1424 100 889
tp @s[scores={TalkTime=1129}] 1427 100 864
tp @s[scores={TalkTime=1131}] 1432 93 264
tp @s[scores={TalkTime=1133}] 1434 72 464
tp @s[scores={TalkTime=1135}] 1447 72 499
tp @s[scores={TalkTime=1137}] 1450 72 548
tp @s[scores={TalkTime=1139}] 1452 102 -39
tp @s[scores={TalkTime=1141}] 1454 102 35
tp @s[scores={TalkTime=1143}] 1455 100 60
tp @s[scores={TalkTime=1145}] 1457 102 -28
tp @s[scores={TalkTime=1147}] 1476 72 507
tp @s[scores={TalkTime=1149}] 1477 72 468
tp @s[scores={TalkTime=1151}] 1487 93 264
tp @s[scores={TalkTime=1153}] 1490 107 -20
tp @s[scores={TalkTime=1155}] 1491 107 -36
tp @s[scores={TalkTime=1157}] 1498 98 511
tp @s[scores={TalkTime=1159}] 1512 107 -30
tp @s[scores={TalkTime=1161}] 1514 98 527
tp @s[scores={TalkTime=1163}] 1519 98 507
tp @s[scores={TalkTime=1165}] 1522 98 539
tp @s[scores={TalkTime=1167}] 1526 93 198
tp @s[scores={TalkTime=1169}] 1532 93 259
tp @s[scores={TalkTime=1171}] 1532 102 430
tp @s[scores={TalkTime=1173}] 1533 102 409
tp @s[scores={TalkTime=1175}] 1536 98 508
tp @s[scores={TalkTime=1177}] 1539 98 537
tp @s[scores={TalkTime=1179}] 1550 98 522
tp @s[scores={TalkTime=1181}] 1562 93 238
tp @s[scores={TalkTime=1183}] 1563 63 1578
tp @s[scores={TalkTime=1185}] 1565 102 463
tp @s[scores={TalkTime=1187}] 1565 102 442
tp @s[scores={TalkTime=1189}] 1568 110 350
tp @s[scores={TalkTime=1191}] 1570 93 206
tp @s[scores={TalkTime=1193}] 1579 69 1557
tp @s[scores={TalkTime=1195}] 1580 94 1416
tp @s[scores={TalkTime=1197}] 1580 84 1478
tp @s[scores={TalkTime=1199}] 1580 74 1522
tp @s[scores={TalkTime=1201}] 1592 110 321
tp @s[scores={TalkTime=1203}] 1602 64 1579
tp @s[scores={TalkTime=1205}] 1635 169 2333
tp @s[scores={TalkTime=1207}] 1638 170 2406
tp @s[scores={TalkTime=1209}] 1644 120 318
tp @s[scores={TalkTime=1211}] 1679 169 2348
tp @s[scores={TalkTime=1213}] 1688 184 2282
tp @s[scores={TalkTime=1215}] 1691 184 2194
tp @s[scores={TalkTime=1217}] 1753 76 -67
tp @s[scores={TalkTime=1219}] 1753 169 2347
tp @s[scores={TalkTime=1221}] 1760 70 1540
tp @s[scores={TalkTime=1223}] 1784 70 1385
tp @s[scores={TalkTime=1225}] 1794 70 -94
tp @s[scores={TalkTime=1227}] 1795 46 -32
tp @s[scores={TalkTime=1229}] 1796 80 1456
tp @s[scores={TalkTime=1231}] 1803 80 1540
tp @s[scores={TalkTime=1233}] 1807 70 1411
tp @s[scores={TalkTime=1235}] 1809 36 45
tp @s[scores={TalkTime=1237}] 1818 31 -17
tp @s[scores={TalkTime=1239}] 1823 80 1477
tp @s[scores={TalkTime=1241}] 1824 70 1384
tp @s[scores={TalkTime=1243}] 1827 80 1421
tp @s[scores={TalkTime=1245}] 1841 90 1539
tp @s[scores={TalkTime=1247}] 1845 80 1445
tp @s[scores={TalkTime=1249}] 1847 46 -12
tp @s[scores={TalkTime=1251}] 1854 90 1471
tp @s[scores={TalkTime=1253}] 1856 80 1380
tp @s[scores={TalkTime=1255}] 1861 90 1502
tp @s[scores={TalkTime=1257}] 1863 8 -171
tp @s[scores={TalkTime=1259}] 1864 39 19
tp @s[scores={TalkTime=1261}] 1864 36 -55
tp @s[scores={TalkTime=1263}] 1870 80 1417
tp @s[scores={TalkTime=1265}] 1877 8 -71
tp @s[scores={TalkTime=1267}] 1878 51 -22
tp @s[scores={TalkTime=1269}] 1880 8 -124
tp @s[scores={TalkTime=1271}] 1882 36 44
tp @s[scores={TalkTime=1273}] 1882 100 1538
tp @s[scores={TalkTime=1275}] 1893 80 1485
tp @s[scores={TalkTime=1277}] 1896 8 -167
tp @s[scores={TalkTime=1279}] 1897 36 -9
tp @s[scores={TalkTime=1281}] 1897 80 1380
tp @s[scores={TalkTime=1283}] 1901 36 -51
tp @s[scores={TalkTime=1285}] 1902 80 1437
tp @s[scores={TalkTime=1287}] 1909 8 -100
tp @s[scores={TalkTime=1289}] 1916 46 1
tp @s[scores={TalkTime=1291}] 1929 80 1463
tp @s[scores={TalkTime=1293}] 1930 100 1537
tp @s[scores={TalkTime=1295}] 1935 8 -75
tp @s[scores={TalkTime=1297}] 1935 90 1379
tp @s[scores={TalkTime=1299}] 1944 6 -48
tp @s[scores={TalkTime=1301}] 1947 6 -115
tp @s[scores={TalkTime=1303}] 1950 13 -157
tp @s[scores={TalkTime=1305}] 1951 80 1421
tp @s[scores={TalkTime=1307}] 1955 90 1488
tp @s[scores={TalkTime=1309}] 1966 2 -106
tp @s[scores={TalkTime=1311}] 1971 8 -187
tp @s[scores={TalkTime=1313}] 1972 100 1537
tp @s[scores={TalkTime=1315}] 1978 90 1379
tp @s[scores={TalkTime=1317}] 1983 90 1501
tp @s[scores={TalkTime=1319}] 1984 90 1468
tp @s[scores={TalkTime=1321}] 1990 8 -80
tp @s[scores={TalkTime=1323}] 1990 8 -132
tp @s[scores={TalkTime=1325}] 1994 90 1436
tp @s[scores={TalkTime=1327}] 2001 8 -37
tp @s[scores={TalkTime=1329}] 2012 8 -157
tp @s[scores={TalkTime=1331}] 2015 90 1404
tp @s[scores={TalkTime=1333}] 2015 100 1530
tp @s[scores={TalkTime=1335}] 2022 100 1462
tp @s[scores={TalkTime=1337}] 2041 8 -130
tp @s[scores={TalkTime=1339}] 2050 39 -98
tp @s[scores={TalkTime=1341}] 2072 28 -36
tp @s[scores={TalkTime=1343}] 2072 33 -69
tp @s[scores={TalkTime=1345}] 2136 89 1338
tp @s[scores={TalkTime=1347}] 2152 89 1397
tp @s[scores={TalkTime=1349}] 2157 74 1431
tp @s[scores={TalkTime=1351}] 2184 89 1387
tp @s[scores={TalkTime=1353}] 2192 74 1441
tp @s[scores={TalkTime=1355}] 2200 69 1493
tp @s[scores={TalkTime=1357}] 2203 74 1541
tp @s[scores={TalkTime=1359}] 2219 74 1461
tp @s[scores={TalkTime=1361}] 2220 74 1349
tp @s[scores={TalkTime=1363}] 2221 74 1390
tp @s[scores={TalkTime=1365}] 2221 89 1307
tp @s[scores={TalkTime=1367}] 2233 69 1513
tp @s[scores={TalkTime=1369}] 2236 74 1422
tp @s[scores={TalkTime=1371}] 2243 79 1443
tp @s[scores={TalkTime=1373}] 2247 89 1382
tp @s[scores={TalkTime=1375}] 2252 74 1510
tp @s[scores={TalkTime=1377}] 2262 89 1360
tp @s[scores={TalkTime=1379}] 2263 104 1331
tp @s[scores={TalkTime=1381}] 2272 79 1407
tp @s[scores={TalkTime=1383}] 2287 79 1430
tp @s[scores={TalkTime=1385}] 2288 74 1505
tp @s[scores={TalkTime=1387}] 2299 69 1529
tp @s[scores={TalkTime=1389}] 2304 104 1326
tp @s[scores={TalkTime=1391}] 2312 58 1726
tp @s[scores={TalkTime=1393}] 2313 74 1595
tp @s[scores={TalkTime=1395}] 2313 74 1557
tp @s[scores={TalkTime=1397}] 2314 55 1712
tp @s[scores={TalkTime=1399}] 2317 58 1643
tp @s[scores={TalkTime=1401}] 2325 58 1603
tp @s[scores={TalkTime=1403}] 2342 58 1678
tp @s[scores={TalkTime=1405}] 2357 94 1552
tp @s[scores={TalkTime=1407}] 2362 37 1639
tp @s[scores={TalkTime=1409}] 2365 53 1604
tp @s[scores={TalkTime=1411}] 2375 109 1510
tp @s[scores={TalkTime=1413}] 2376 33 1669
tp @s[scores={TalkTime=1415}] 2377 34 1668
tp @s[scores={TalkTime=1417}] 2399 34 1658
tp @s[scores={TalkTime=1419}] 2403 33 1658
tp @s[scores={TalkTime=1421}] 2422 58 1574
tp @s[scores={TalkTime=1423}] 2422 37 1622
tp @s[scores={TalkTime=1425}] 2422 43 1698
tp @s[scores={TalkTime=1427}] 2423 37 1664


execute as @s[scores={TalkTime=20}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=22}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=24}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=26}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=28}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=30}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=32}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=34}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=36}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=38}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=40}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=42}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=44}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=46}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=48}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=50}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=52}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=54}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=56}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=58}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=60}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=62}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=64}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=66}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=68}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=70}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=72}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=74}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=76}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=78}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=80}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=82}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=84}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=86}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=88}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=90}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=92}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=94}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=96}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=98}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=100}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=102}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=104}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=106}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=108}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=110}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=112}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=114}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=116}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=118}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=120}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=122}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=124}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=126}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=128}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=130}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=132}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=134}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=136}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=138}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=140}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=142}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=144}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=146}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=148}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=150}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=152}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=154}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=156}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=158}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=160}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=162}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=164}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=166}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=168}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=170}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=172}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=174}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=176}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=178}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=180}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=182}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=184}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=186}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=188}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=190}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=192}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=194}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=196}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=198}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=200}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=202}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=204}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=206}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=208}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=210}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=212}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=214}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=216}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=218}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=220}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=222}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=224}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=226}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=228}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=230}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=232}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=234}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=236}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=238}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=240}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=242}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=244}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=246}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=248}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=250}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=252}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=254}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=256}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=258}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=260}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=262}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=264}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=266}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=268}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=270}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=272}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=274}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=276}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=278}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=280}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=282}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=284}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=286}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=288}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=290}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=292}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=294}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=296}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=298}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=300}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=302}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=304}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=306}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=308}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=310}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=312}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=314}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=316}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=318}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=320}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=322}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=324}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=326}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=328}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=330}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=332}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=334}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=336}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=338}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=340}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=342}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=344}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=346}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=348}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=350}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=352}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=354}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=356}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=358}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=360}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=362}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=364}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=366}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=368}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=370}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=372}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=374}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=376}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=378}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=380}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=382}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=384}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=386}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=388}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=390}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=392}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=394}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=396}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=398}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=400}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=402}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=404}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=406}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=408}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=410}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=412}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=414}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=416}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=418}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=420}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=422}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=424}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=426}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=428}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=430}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=432}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=434}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=436}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=438}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=440}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=442}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=444}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=446}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=448}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=450}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=452}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=454}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=456}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=458}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=460}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=462}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=464}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=466}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=468}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=470}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=472}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=474}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=476}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=478}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=480}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=482}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=484}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=486}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=488}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=490}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=492}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=494}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=496}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=498}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=500}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=502}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=504}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=506}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=508}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=510}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=512}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=514}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=516}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=518}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=520}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=522}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=524}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=526}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=528}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=530}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=532}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=534}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=536}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=538}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=540}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=542}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=544}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=546}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=548}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=550}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=552}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=554}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=556}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=558}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=560}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=562}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=564}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=566}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=568}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=570}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=572}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=574}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=576}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=578}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=580}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=582}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=584}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=586}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=588}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=590}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=592}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=594}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=596}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=598}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=600}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=602}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=604}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=606}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=608}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=610}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=612}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=614}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=616}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=618}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=620}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=622}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=624}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=626}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=628}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=630}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=632}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=634}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=636}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=638}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=640}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=642}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=644}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=646}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=648}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=650}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=652}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=654}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=656}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=658}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=660}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=662}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=664}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=666}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=668}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=670}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=672}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=674}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=676}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=678}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=680}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=682}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=684}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=686}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=688}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=690}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=692}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=694}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=696}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=698}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=700}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=702}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=704}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=706}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=708}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=710}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=712}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=714}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=716}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=718}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=720}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=722}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=724}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=726}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=728}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=730}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=732}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=734}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=736}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=738}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=740}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=742}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=744}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=746}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=748}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=750}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=752}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=754}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=756}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=758}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=760}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=762}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=764}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=766}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=768}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=770}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=772}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=774}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=776}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=778}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=780}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=782}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=784}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=786}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=788}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=790}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=792}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=794}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=796}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=798}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=800}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=802}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=804}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=806}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=808}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=810}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=812}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=814}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=816}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=818}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=820}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=822}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=824}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=826}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=828}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=830}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=832}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=834}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=836}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=838}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=840}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=842}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=844}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=846}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=848}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=850}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=852}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=854}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=856}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=858}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=860}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=862}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=864}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=866}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=868}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=870}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=872}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=874}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=876}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=878}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=880}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=882}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=884}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=886}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=888}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=890}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=892}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=894}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=896}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=898}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=900}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=902}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=904}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=906}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=908}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=910}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=912}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=914}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=916}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=918}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=920}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=922}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=924}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=926}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=928}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=930}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=932}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=934}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=936}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=938}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=940}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=942}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=944}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=946}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=948}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=950}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=952}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=954}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=956}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=958}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=960}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=962}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=964}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=966}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=968}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=970}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=972}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=974}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=976}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=978}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=980}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=982}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=984}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=986}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=988}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=990}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=992}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=994}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=996}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=998}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1000}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1002}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1004}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1006}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1008}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1010}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1012}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1014}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1016}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1018}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1020}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1022}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1024}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1026}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1028}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1030}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1032}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1034}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1036}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1038}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1040}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1042}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1044}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1046}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1048}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1050}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1052}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1054}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1056}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1058}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1060}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1062}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1064}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1066}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1068}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1070}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1072}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1074}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1076}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1078}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1080}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1082}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1084}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1086}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1088}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1090}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1092}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1094}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1096}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1098}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1100}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1102}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1104}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1106}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1108}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1110}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1112}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1114}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1116}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1118}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1120}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1122}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1124}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1126}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1128}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1130}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1132}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1134}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1136}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1138}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1140}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1142}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1144}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1146}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1148}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1150}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1152}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1154}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1156}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1158}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1160}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1162}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1164}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1166}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1168}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1170}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1172}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1174}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1176}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1178}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1180}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1182}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1184}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1186}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1188}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1190}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1192}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1194}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1196}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1198}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1200}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1202}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1204}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1206}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1208}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1210}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1212}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1214}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1216}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1218}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1220}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1222}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1224}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1226}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1228}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1230}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1232}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1234}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1236}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1238}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1240}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1242}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1244}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1246}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1248}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1250}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1252}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1254}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1256}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1258}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1260}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1262}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1264}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1266}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1268}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1270}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1272}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1274}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1276}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1278}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1280}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1282}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1284}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1286}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1288}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1290}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1292}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1294}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1296}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1298}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1300}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1302}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1304}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1306}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1308}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1310}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1312}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1314}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1316}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1318}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1320}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1322}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1324}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1326}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1328}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1330}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1332}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1334}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1336}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1338}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1340}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1342}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1344}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1346}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1348}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1350}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1352}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1354}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1356}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1358}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1360}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1362}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1364}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1366}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1368}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1370}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1372}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1374}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1376}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1378}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1380}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1382}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1384}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1386}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1388}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1390}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1392}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1394}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1396}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1398}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1400}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1402}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1404}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1406}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1408}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1410}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1412}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1414}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1416}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1418}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1420}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1422}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1424}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1426}] run function kalos:tools/spawnerclone
execute as @s[scores={TalkTime=1428}] run function kalos:tools/spawnerclone
