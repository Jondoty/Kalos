#execute @a[tag=RandomizerTemp,c=1] ~ ~ ~ function randomizer:tpscript

scoreboard players add @s TalkTime 1
gamemode spectator @s[score_TalkTime_min=18,score_TalkTime=1438,m=2]
gamemode spectator @s[score_TalkTime_min=18,score_TalkTime=1438,m=1]
gamemode spectator @s[score_TalkTime_min=18,score_TalkTime=1438,m=0]
execute @s[score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ gamerule maxCommandChainLength 65536
execute @s[score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s[score_DialogueTrigger=0] DialogueTrigger 1001

#Ends script
gamemode adventure @s[score_TalkTime_min=1439,score_TalkTime=1440,m=0]
gamemode adventure @s[score_TalkTime_min=1439,score_TalkTime=1440,m=1]
gamemode adventure @s[score_TalkTime_min=1439,score_TalkTime=1440,m=3]
scoreboard players tag @s[score_TalkTime_min=1440] remove RandomizerTemp
tp @s[score_TalkTime_min=1440] -775 103 1214
tellraw @s[score_TalkTime_min=1440] {"text":"Randomization process complete!"}
scoreboard players set @s[score_TalkTime_min=1440] DialogueTrigger 0
scoreboard players set @s[score_TalkTime_min=1440] TalkTime 0


#1-17, generates randomized spawners
#19-1428 tps player around the world, alternates between tping directly to spawner and clones in a spawner
#1430, tps player back to spawn and ends script

tellraw @s[score_TalkTime_min=1,score_TalkTime=1] {"text":"Randomizng reference spawners..."}
execute @s[score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ /clone -417 132 1168 -417 128 1136 -417 101 1136

execute @s[score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ /function randomizer:spawner1
execute @s[score_TalkTime_min=3,score_TalkTime=3] ~ ~ ~ /function randomizer:spawner2
execute @s[score_TalkTime_min=5,score_TalkTime=5] ~ ~ ~ /function randomizer:spawner3
execute @s[score_TalkTime_min=7,score_TalkTime=7] ~ ~ ~ /function randomizer:spawner4
execute @s[score_TalkTime_min=9,score_TalkTime=9] ~ ~ ~ /function randomizer:spawner5
execute @s[score_TalkTime_min=11,score_TalkTime=11] ~ ~ ~ /function randomizer:spawner6
execute @s[score_TalkTime_min=13,score_TalkTime=13] ~ ~ ~ /function randomizer:spawner7
execute @s[score_TalkTime_min=15,score_TalkTime=15] ~ ~ ~ /function randomizer:spawner8
execute @s[score_TalkTime_min=17,score_TalkTime=17] ~ ~ ~ /function randomizer:spawner9


#Starters
tp @s[score_TalkTime_min=1430,score_TalkTime=1434] -1078 106 1198
execute @s[score_TalkTime_min=1432,score_TalkTime=1432] ~ ~ ~ /function randomizer:starters

tp @s[score_TalkTime_min=1433,score_TalkTime=1433] -1078 105 1258
execute @s[score_TalkTime_min=1434,score_TalkTime=1434] ~ ~ ~ /function randomizer:starterssecondary
tp @s[score_TalkTime_min=1435,score_TalkTime=1435] -1078 105 1311
execute @s[score_TalkTime_min=1436,score_TalkTime=1436] ~ ~ ~ /function randomizer:starterssecondary
tp @s[score_TalkTime_min=1437,score_TalkTime=1437] -1078 105 1373
execute @s[score_TalkTime_min=1438,score_TalkTime=1438] ~ ~ ~ /function randomizer:starterssecondary



tellraw @s[score_TalkTime_min=19,score_TalkTime=19] {"text":"Beginning randomized-spawner cloning process... This may take a while. Keep your client open and unpaused in the meantime!"}
tellraw @s[score_TalkTime_min=357,score_TalkTime=357] {"text":"About 25% through placing spawners."}
tellraw @s[score_TalkTime_min=714,score_TalkTime=714] {"text":"About 50% through placing spawners."}
tellraw @s[score_TalkTime_min=1071,score_TalkTime=1071] {"text":"About 75% through placing spawners."}
tp @s[score_TalkTime_min=19,score_TalkTime=19] -2254 102 -480
tp @s[score_TalkTime_min=21,score_TalkTime=21] -2253 102 -421
tp @s[score_TalkTime_min=23,score_TalkTime=23] -2253 102 -452
tp @s[score_TalkTime_min=25,score_TalkTime=25] -2253 102 -532
tp @s[score_TalkTime_min=27,score_TalkTime=27] -2250 102 -345
tp @s[score_TalkTime_min=29,score_TalkTime=29] -2250 102 -566
tp @s[score_TalkTime_min=31,score_TalkTime=31] -2249 102 -505
tp @s[score_TalkTime_min=33,score_TalkTime=33] -2240 102 -436
tp @s[score_TalkTime_min=35,score_TalkTime=35] -2239 102 -471
tp @s[score_TalkTime_min=37,score_TalkTime=37] -2236 102 -507
tp @s[score_TalkTime_min=39,score_TalkTime=39] -2235 102 -585
tp @s[score_TalkTime_min=41,score_TalkTime=41] -2234 102 -522
tp @s[score_TalkTime_min=43,score_TalkTime=43] -2231 102 -453
tp @s[score_TalkTime_min=45,score_TalkTime=45] -2227 102 -566
tp @s[score_TalkTime_min=47,score_TalkTime=47] -2214 102 -456
tp @s[score_TalkTime_min=49,score_TalkTime=49] -2211 102 -395
tp @s[score_TalkTime_min=51,score_TalkTime=51] -2211 102 -547
tp @s[score_TalkTime_min=53,score_TalkTime=53] -2210 102 -492
tp @s[score_TalkTime_min=55,score_TalkTime=55] -2209 102 -412
tp @s[score_TalkTime_min=57,score_TalkTime=57] -2209 102 -508
tp @s[score_TalkTime_min=59,score_TalkTime=59] -2209 102 -521
tp @s[score_TalkTime_min=61,score_TalkTime=61] -2209 97 11
tp @s[score_TalkTime_min=63,score_TalkTime=63] -2195 102 -399
tp @s[score_TalkTime_min=65,score_TalkTime=65] -2186 102 -438
tp @s[score_TalkTime_min=67,score_TalkTime=67] -2186 102 -454
tp @s[score_TalkTime_min=69,score_TalkTime=69] -2182 102 -417
tp @s[score_TalkTime_min=71,score_TalkTime=71] -2182 102 -548
tp @s[score_TalkTime_min=73,score_TalkTime=73] -2181 97 -187
tp @s[score_TalkTime_min=75,score_TalkTime=75] -2178 97 106
tp @s[score_TalkTime_min=77,score_TalkTime=77] -2176 101 -347
tp @s[score_TalkTime_min=79,score_TalkTime=79] -2174 102 -490
tp @s[score_TalkTime_min=81,score_TalkTime=81] -2171 97 -86
tp @s[score_TalkTime_min=83,score_TalkTime=83] -2169 102 -438
tp @s[score_TalkTime_min=85,score_TalkTime=85] -2168 102 -320
tp @s[score_TalkTime_min=87,score_TalkTime=87] -2168 97 205
tp @s[score_TalkTime_min=89,score_TalkTime=89] -2166 102 -411
tp @s[score_TalkTime_min=91,score_TalkTime=91] -2165 102 -451
tp @s[score_TalkTime_min=93,score_TalkTime=93] -2165 102 -528
tp @s[score_TalkTime_min=95,score_TalkTime=95] -2164 102 -358
tp @s[score_TalkTime_min=97,score_TalkTime=97] -2164 102 -395
tp @s[score_TalkTime_min=99,score_TalkTime=99] -2164 102 -510
tp @s[score_TalkTime_min=101,score_TalkTime=101] -2137 102 -353
tp @s[score_TalkTime_min=103,score_TalkTime=103] -2126 102 -312
tp @s[score_TalkTime_min=105,score_TalkTime=105] -2113 102 -338
tp @s[score_TalkTime_min=107,score_TalkTime=107] -2111 97 314
tp @s[score_TalkTime_min=109,score_TalkTime=109] -2109 102 -299
tp @s[score_TalkTime_min=111,score_TalkTime=111] -2102 97 -10
tp @s[score_TalkTime_min=113,score_TalkTime=113] -2082 97 512
tp @s[score_TalkTime_min=115,score_TalkTime=115] -2081 97 590
tp @s[score_TalkTime_min=117,score_TalkTime=117] -2074 97 386
tp @s[score_TalkTime_min=119,score_TalkTime=119] -2066 97 177
tp @s[score_TalkTime_min=121,score_TalkTime=121] -2065 97 98
tp @s[score_TalkTime_min=123,score_TalkTime=123] -2059 97 641
tp @s[score_TalkTime_min=125,score_TalkTime=125] -2047 97 706
tp @s[score_TalkTime_min=127,score_TalkTime=127] -2045 97 32
tp @s[score_TalkTime_min=129,score_TalkTime=129] -2036 97 237
tp @s[score_TalkTime_min=131,score_TalkTime=131] -2036 97 317
tp @s[score_TalkTime_min=133,score_TalkTime=133] -2036 97 463
tp @s[score_TalkTime_min=135,score_TalkTime=135] -2017 111 -678
tp @s[score_TalkTime_min=137,score_TalkTime=137] -2013 111 -706
tp @s[score_TalkTime_min=139,score_TalkTime=139] -2011 107 -638
tp @s[score_TalkTime_min=141,score_TalkTime=141] -2005 111 -692
tp @s[score_TalkTime_min=143,score_TalkTime=143] -2003 107 -658
tp @s[score_TalkTime_min=145,score_TalkTime=145] -1995 111 -682
tp @s[score_TalkTime_min=147,score_TalkTime=147] -1991 107 -647
tp @s[score_TalkTime_min=149,score_TalkTime=149] -1989 97 728
tp @s[score_TalkTime_min=151,score_TalkTime=151] -1956 149 116
tp @s[score_TalkTime_min=153,score_TalkTime=153] -1955 116 -692
tp @s[score_TalkTime_min=155,score_TalkTime=155] -1954 116 -664
tp @s[score_TalkTime_min=157,score_TalkTime=157] -1949 116 -711
tp @s[score_TalkTime_min=159,score_TalkTime=159] -1944 149 225
tp @s[score_TalkTime_min=161,score_TalkTime=161] -1942 149 202
tp @s[score_TalkTime_min=163,score_TalkTime=163] -1938 149 370
tp @s[score_TalkTime_min=165,score_TalkTime=165] -1936 149 115
tp @s[score_TalkTime_min=167,score_TalkTime=167] -1925 149 345
tp @s[score_TalkTime_min=169,score_TalkTime=169] -1920 145 243
tp @s[score_TalkTime_min=171,score_TalkTime=171] -1916 149 375
tp @s[score_TalkTime_min=173,score_TalkTime=173] -1916 149 359
tp @s[score_TalkTime_min=175,score_TalkTime=175] -1907 145 285
tp @s[score_TalkTime_min=177,score_TalkTime=177] -1907 145 263
tp @s[score_TalkTime_min=179,score_TalkTime=179] -1849 45 0
tp @s[score_TalkTime_min=181,score_TalkTime=181] -1842 53 105
tp @s[score_TalkTime_min=183,score_TalkTime=183] -1832 45 36
tp @s[score_TalkTime_min=185,score_TalkTime=185] -1808 74 -951
tp @s[score_TalkTime_min=187,score_TalkTime=187] -1807 62 -328
tp @s[score_TalkTime_min=189,score_TalkTime=189] -1805 49 106
tp @s[score_TalkTime_min=191,score_TalkTime=191] -1792 67 -363
tp @s[score_TalkTime_min=193,score_TalkTime=193] -1779 41 36
tp @s[score_TalkTime_min=195,score_TalkTime=195] -1764 41 67
tp @s[score_TalkTime_min=197,score_TalkTime=197] -1757 70 -424
tp @s[score_TalkTime_min=199,score_TalkTime=199] -1754 74 -1115
tp @s[score_TalkTime_min=201,score_TalkTime=201] -1752 41 108
tp @s[score_TalkTime_min=203,score_TalkTime=203] -1752 74 -1019
tp @s[score_TalkTime_min=205,score_TalkTime=205] -1751 67 -359
tp @s[score_TalkTime_min=207,score_TalkTime=207] -1750 74 -1227
tp @s[score_TalkTime_min=209,score_TalkTime=209] -1749 67 -315
tp @s[score_TalkTime_min=211,score_TalkTime=211] -1748 62 -273
tp @s[score_TalkTime_min=213,score_TalkTime=213] -1746 135 660
tp @s[score_TalkTime_min=215,score_TalkTime=215] -1739 38 35
tp @s[score_TalkTime_min=217,score_TalkTime=217] -1725 12 -317
tp @s[score_TalkTime_min=219,score_TalkTime=219] -1718 62 -251
tp @s[score_TalkTime_min=221,score_TalkTime=221] -1713 67 -341
tp @s[score_TalkTime_min=223,score_TalkTime=223] -1709 74 -947
tp @s[score_TalkTime_min=225,score_TalkTime=225] -1701 135 638
tp @s[score_TalkTime_min=227,score_TalkTime=227] -1696 104 59
tp @s[score_TalkTime_min=229,score_TalkTime=229] -1693 0 -367
tp @s[score_TalkTime_min=231,score_TalkTime=231] -1692 33 36
tp @s[score_TalkTime_min=233,score_TalkTime=233] -1691 74 -1272
tp @s[score_TalkTime_min=235,score_TalkTime=235] -1687 62 -277
tp @s[score_TalkTime_min=237,score_TalkTime=237] -1676 74 -1018
tp @s[score_TalkTime_min=239,score_TalkTime=239] -1666 104 59
tp @s[score_TalkTime_min=241,score_TalkTime=241] -1665 15 -327
tp @s[score_TalkTime_min=243,score_TalkTime=243] -1664 72 -349
tp @s[score_TalkTime_min=245,score_TalkTime=245] -1664 15 -364
tp @s[score_TalkTime_min=247,score_TalkTime=247] -1647 17 -388
tp @s[score_TalkTime_min=249,score_TalkTime=249] -1641 135 648
tp @s[score_TalkTime_min=251,score_TalkTime=251] -1627 74 -1017
tp @s[score_TalkTime_min=253,score_TalkTime=253] -1623 38 -266
tp @s[score_TalkTime_min=255,score_TalkTime=255] -1620 74 -945
tp @s[score_TalkTime_min=257,score_TalkTime=257] -1595 98 -15
tp @s[score_TalkTime_min=259,score_TalkTime=259] -1594 41 -352
tp @s[score_TalkTime_min=261,score_TalkTime=261] -1593 35 -325
tp @s[score_TalkTime_min=263,score_TalkTime=263] -1588 135 650
tp @s[score_TalkTime_min=265,score_TalkTime=265] -1580 74 -1022
tp @s[score_TalkTime_min=267,score_TalkTime=267] -1576 41 -300
tp @s[score_TalkTime_min=269,score_TalkTime=269] -1574 33 -212
tp @s[score_TalkTime_min=271,score_TalkTime=271] -1574 33 -264
tp @s[score_TalkTime_min=273,score_TalkTime=273] -1572 74 -1271
tp @s[score_TalkTime_min=275,score_TalkTime=275] -1566 98 -13
tp @s[score_TalkTime_min=277,score_TalkTime=277] -1566 135 615
tp @s[score_TalkTime_min=279,score_TalkTime=279] -1552 36 -355
tp @s[score_TalkTime_min=281,score_TalkTime=281] -1551 98 -24
tp @s[score_TalkTime_min=283,score_TalkTime=283] -1548 74 -1107
tp @s[score_TalkTime_min=285,score_TalkTime=285] -1546 74 -1200
tp @s[score_TalkTime_min=287,score_TalkTime=287] -1537 74 -943
tp @s[score_TalkTime_min=289,score_TalkTime=289] -1535 37 -204
tp @s[score_TalkTime_min=291,score_TalkTime=291] -1520 146 412
tp @s[score_TalkTime_min=293,score_TalkTime=293] -1514 135 624
tp @s[score_TalkTime_min=295,score_TalkTime=295] -1509 33 -355
tp @s[score_TalkTime_min=297,score_TalkTime=297] -1505 146 472
tp @s[score_TalkTime_min=299,score_TalkTime=299] -1500 98 -14
tp @s[score_TalkTime_min=301,score_TalkTime=301] -1488 33 -267
tp @s[score_TalkTime_min=303,score_TalkTime=303] -1487 33 -324
tp @s[score_TalkTime_min=305,score_TalkTime=305] -1487 33 -209
tp @s[score_TalkTime_min=307,score_TalkTime=307] -1483 135 633
tp @s[score_TalkTime_min=309,score_TalkTime=309] -1476 98 -19
tp @s[score_TalkTime_min=311,score_TalkTime=311] -1471 146 286
tp @s[score_TalkTime_min=313,score_TalkTime=313] -1467 146 500
tp @s[score_TalkTime_min=315,score_TalkTime=315] -1459 70 -1208
tp @s[score_TalkTime_min=317,score_TalkTime=317] -1458 98 -26
tp @s[score_TalkTime_min=319,score_TalkTime=319] -1458 98 -14
tp @s[score_TalkTime_min=321,score_TalkTime=321] -1453 70 -1101
tp @s[score_TalkTime_min=323,score_TalkTime=323] -1451 70 -1023
tp @s[score_TalkTime_min=325,score_TalkTime=325] -1447 70 -1290
tp @s[score_TalkTime_min=327,score_TalkTime=327] -1445 78 -783
tp @s[score_TalkTime_min=329,score_TalkTime=329] -1442 78 -843
tp @s[score_TalkTime_min=331,score_TalkTime=331] -1442 146 414
tp @s[score_TalkTime_min=333,score_TalkTime=333] -1441 146 483
tp @s[score_TalkTime_min=335,score_TalkTime=335] -1439 98 -23
tp @s[score_TalkTime_min=337,score_TalkTime=337] -1438 146 325
tp @s[score_TalkTime_min=339,score_TalkTime=339] -1432 70 -959
tp @s[score_TalkTime_min=341,score_TalkTime=341] -1422 74 -989
tp @s[score_TalkTime_min=343,score_TalkTime=343] -1420 74 -1020
tp @s[score_TalkTime_min=345,score_TalkTime=345] -1411 70 -815
tp @s[score_TalkTime_min=347,score_TalkTime=347] -1408 74 -997
tp @s[score_TalkTime_min=349,score_TalkTime=349] -1404 70 -755
tp @s[score_TalkTime_min=351,score_TalkTime=351] -1394 98 -23
tp @s[score_TalkTime_min=353,score_TalkTime=353] -1388 146 281
tp @s[score_TalkTime_min=355,score_TalkTime=355] -1380 70 -1030
tp @s[score_TalkTime_min=357,score_TalkTime=357] -1366 70 -1276
tp @s[score_TalkTime_min=359,score_TalkTime=359] -1358 78 -772
tp @s[score_TalkTime_min=361,score_TalkTime=361] -1357 56 -1095
tp @s[score_TalkTime_min=363,score_TalkTime=363] -1355 70 -874
tp @s[score_TalkTime_min=365,score_TalkTime=365] -1354 70 -940
tp @s[score_TalkTime_min=367,score_TalkTime=367] -1351 64 -1134
tp @s[score_TalkTime_min=369,score_TalkTime=369] -1344 98 -23
tp @s[score_TalkTime_min=371,score_TalkTime=371] -1343 98 -253
tp @s[score_TalkTime_min=373,score_TalkTime=373] -1342 78 -773
tp @s[score_TalkTime_min=375,score_TalkTime=375] -1339 98 -205
tp @s[score_TalkTime_min=377,score_TalkTime=377] -1339 98 -186
tp @s[score_TalkTime_min=379,score_TalkTime=379] -1337 98 -138
tp @s[score_TalkTime_min=381,score_TalkTime=381] -1328 98 -249
tp @s[score_TalkTime_min=383,score_TalkTime=383] -1326 98 -168
tp @s[score_TalkTime_min=385,score_TalkTime=385] -1325 98 -229
tp @s[score_TalkTime_min=387,score_TalkTime=387] -1324 70 -902
tp @s[score_TalkTime_min=389,score_TalkTime=389] -1322 78 -748
tp @s[score_TalkTime_min=391,score_TalkTime=391] -1317 98 -193
tp @s[score_TalkTime_min=393,score_TalkTime=393] -1315 98 -23
tp @s[score_TalkTime_min=395,score_TalkTime=395] -1312 72 -1216
tp @s[score_TalkTime_min=397,score_TalkTime=397] -1309 98 -136
tp @s[score_TalkTime_min=399,score_TalkTime=399] -1306 98 -277
tp @s[score_TalkTime_min=401,score_TalkTime=401] -1305 98 -152
tp @s[score_TalkTime_min=403,score_TalkTime=403] -1303 98 -220
tp @s[score_TalkTime_min=405,score_TalkTime=405] -1300 98 -249
tp @s[score_TalkTime_min=407,score_TalkTime=407] -1290 70 -1014
tp @s[score_TalkTime_min=409,score_TalkTime=409] -1286 98 -138
tp @s[score_TalkTime_min=411,score_TalkTime=411] -1281 98 -223
tp @s[score_TalkTime_min=413,score_TalkTime=413] -1281 98 -161
tp @s[score_TalkTime_min=415,score_TalkTime=415] -1280 98 -193
tp @s[score_TalkTime_min=417,score_TalkTime=417] -1278 98 -278
tp @s[score_TalkTime_min=419,score_TalkTime=419] -1272 70 -1271
tp @s[score_TalkTime_min=421,score_TalkTime=421] -1266 70 -1117
tp @s[score_TalkTime_min=423,score_TalkTime=423] -1257 62 -1033
tp @s[score_TalkTime_min=425,score_TalkTime=425] -1251 70 -850
tp @s[score_TalkTime_min=427,score_TalkTime=427] -1245 70 -903
tp @s[score_TalkTime_min=429,score_TalkTime=429] -1244 74 -796
tp @s[score_TalkTime_min=431,score_TalkTime=431] -1238 76 -764
tp @s[score_TalkTime_min=433,score_TalkTime=433] -1238 70 -1184
tp @s[score_TalkTime_min=435,score_TalkTime=435] -1219 98 -279
tp @s[score_TalkTime_min=437,score_TalkTime=437] -1217 98 -167
tp @s[score_TalkTime_min=439,score_TalkTime=439] -1216 98 -213
tp @s[score_TalkTime_min=441,score_TalkTime=441] -1209 98 -248
tp @s[score_TalkTime_min=443,score_TalkTime=443] -1198 98 -138
tp @s[score_TalkTime_min=445,score_TalkTime=445] -1197 98 -270
tp @s[score_TalkTime_min=447,score_TalkTime=447] -1195 98 -207
tp @s[score_TalkTime_min=449,score_TalkTime=449] -1194 98 -174
tp @s[score_TalkTime_min=451,score_TalkTime=451] -1189 98 -233
tp @s[score_TalkTime_min=453,score_TalkTime=453] -1176 98 -264
tp @s[score_TalkTime_min=455,score_TalkTime=455] -1161 98 -192
tp @s[score_TalkTime_min=457,score_TalkTime=457] -1160 98 -138
tp @s[score_TalkTime_min=459,score_TalkTime=459] -1159 98 -221
tp @s[score_TalkTime_min=461,score_TalkTime=461] -925 98 -61
tp @s[score_TalkTime_min=463,score_TalkTime=463] -923 102 -614
tp @s[score_TalkTime_min=465,score_TalkTime=465] -914 102 -460
tp @s[score_TalkTime_min=467,score_TalkTime=467] -913 98 -68
tp @s[score_TalkTime_min=469,score_TalkTime=469] -909 102 -536
tp @s[score_TalkTime_min=471,score_TalkTime=471] -905 98 -161
tp @s[score_TalkTime_min=473,score_TalkTime=473] -902 98 -51
tp @s[score_TalkTime_min=475,score_TalkTime=475] -902 102 -411
tp @s[score_TalkTime_min=477,score_TalkTime=477] -889 102 -673
tp @s[score_TalkTime_min=479,score_TalkTime=479] -887 98 -145
tp @s[score_TalkTime_min=481,score_TalkTime=481] -883 98 -175
tp @s[score_TalkTime_min=483,score_TalkTime=483] -881 100 -98
tp @s[score_TalkTime_min=485,score_TalkTime=485] -874 102 -633
tp @s[score_TalkTime_min=487,score_TalkTime=487] -872 102 -523
tp @s[score_TalkTime_min=489,score_TalkTime=489] -863 100 -110
tp @s[score_TalkTime_min=491,score_TalkTime=491] -863 102 -453
tp @s[score_TalkTime_min=493,score_TalkTime=493] -852 102 -588
tp @s[score_TalkTime_min=495,score_TalkTime=495] -823 102 -518
tp @s[score_TalkTime_min=497,score_TalkTime=497] -816 102 -665
tp @s[score_TalkTime_min=499,score_TalkTime=499] -815 102 -450
tp @s[score_TalkTime_min=501,score_TalkTime=501] -799 102 -562
tp @s[score_TalkTime_min=503,score_TalkTime=503] -789 102 -311
tp @s[score_TalkTime_min=505,score_TalkTime=505] -772 98 -153
tp @s[score_TalkTime_min=507,score_TalkTime=507] -769 102 -509
tp @s[score_TalkTime_min=509,score_TalkTime=509] -769 102 -356
tp @s[score_TalkTime_min=511,score_TalkTime=511] -760 102 -401
tp @s[score_TalkTime_min=513,score_TalkTime=513] -749 102 -584
tp @s[score_TalkTime_min=515,score_TalkTime=515] -742 102 -634
tp @s[score_TalkTime_min=517,score_TalkTime=517] -741 102 -433
tp @s[score_TalkTime_min=519,score_TalkTime=519] -739 94 -135
tp @s[score_TalkTime_min=521,score_TalkTime=521] -735 102 -268
tp @s[score_TalkTime_min=523,score_TalkTime=523] -718 94 -145
tp @s[score_TalkTime_min=525,score_TalkTime=525] -718 102 -326
tp @s[score_TalkTime_min=527,score_TalkTime=527] -714 102 -373
tp @s[score_TalkTime_min=529,score_TalkTime=529] -692 98 -468
tp @s[score_TalkTime_min=531,score_TalkTime=531] -235 96 -1031
tp @s[score_TalkTime_min=533,score_TalkTime=533] -232 97 -1201
tp @s[score_TalkTime_min=535,score_TalkTime=535] -230 97 -1176
tp @s[score_TalkTime_min=537,score_TalkTime=537] -226 96 -1126
tp @s[score_TalkTime_min=539,score_TalkTime=539] -218 97 -1066
tp @s[score_TalkTime_min=541,score_TalkTime=541] -207 97 -1208
tp @s[score_TalkTime_min=543,score_TalkTime=543] -193 98 -1097
tp @s[score_TalkTime_min=545,score_TalkTime=545] -188 97 -1036
tp @s[score_TalkTime_min=547,score_TalkTime=547] -177 95 -1171
tp @s[score_TalkTime_min=549,score_TalkTime=549] -160 98 -1012
tp @s[score_TalkTime_min=551,score_TalkTime=551] -157 98 -1123
tp @s[score_TalkTime_min=553,score_TalkTime=553] -153 98 -1138
tp @s[score_TalkTime_min=555,score_TalkTime=555] -146 97 -1038
tp @s[score_TalkTime_min=557,score_TalkTime=557] -142 97 -1167
tp @s[score_TalkTime_min=559,score_TalkTime=559] -140 96 -1230
tp @s[score_TalkTime_min=561,score_TalkTime=561] -139 97 -1197
tp @s[score_TalkTime_min=563,score_TalkTime=563] -135 98 -1012
tp @s[score_TalkTime_min=565,score_TalkTime=565] -124 98 -1040
tp @s[score_TalkTime_min=567,score_TalkTime=567] -114 97 -1062
tp @s[score_TalkTime_min=569,score_TalkTime=569] -107 97 -1090
tp @s[score_TalkTime_min=571,score_TalkTime=571] -106 98 -1029
tp @s[score_TalkTime_min=573,score_TalkTime=573] -80 98 -1205
tp @s[score_TalkTime_min=575,score_TalkTime=575] 127 98 307
tp @s[score_TalkTime_min=577,score_TalkTime=577] 130 98 -46
tp @s[score_TalkTime_min=579,score_TalkTime=579] 131 98 252
tp @s[score_TalkTime_min=581,score_TalkTime=581] 132 98 31
tp @s[score_TalkTime_min=583,score_TalkTime=583] 134 98 72
tp @s[score_TalkTime_min=585,score_TalkTime=585] 134 98 88
tp @s[score_TalkTime_min=587,score_TalkTime=587] 138 98 48
tp @s[score_TalkTime_min=589,score_TalkTime=589] 145 98 302
tp @s[score_TalkTime_min=591,score_TalkTime=591] 148 98 251
tp @s[score_TalkTime_min=593,score_TalkTime=593] 159 98 252
tp @s[score_TalkTime_min=595,score_TalkTime=595] 162 98 310
tp @s[score_TalkTime_min=597,score_TalkTime=597] 179 98 8
tp @s[score_TalkTime_min=599,score_TalkTime=599] 179 98 -7
tp @s[score_TalkTime_min=601,score_TalkTime=601] 196 98 310
tp @s[score_TalkTime_min=603,score_TalkTime=603] 211 98 252
tp @s[score_TalkTime_min=605,score_TalkTime=605] 212 98 303
tp @s[score_TalkTime_min=607,score_TalkTime=607] 219 98 46
tp @s[score_TalkTime_min=609,score_TalkTime=609] 222 98 71
tp @s[score_TalkTime_min=611,score_TalkTime=611] 223 98 88
tp @s[score_TalkTime_min=613,score_TalkTime=613] 226 98 251
tp @s[score_TalkTime_min=615,score_TalkTime=615] 226 98 32
tp @s[score_TalkTime_min=617,score_TalkTime=617] 227 98 -47
tp @s[score_TalkTime_min=619,score_TalkTime=619] 229 98 308
tp @s[score_TalkTime_min=621,score_TalkTime=621] 290 97 -256
tp @s[score_TalkTime_min=623,score_TalkTime=623] 291 92 607
tp @s[score_TalkTime_min=625,score_TalkTime=625] 292 92 659
tp @s[score_TalkTime_min=627,score_TalkTime=627] 302 92 598
tp @s[score_TalkTime_min=629,score_TalkTime=629] 302 94 -287
tp @s[score_TalkTime_min=631,score_TalkTime=631] 303 94 -328
tp @s[score_TalkTime_min=633,score_TalkTime=633] 305 92 639
tp @s[score_TalkTime_min=635,score_TalkTime=635] 309 97 -256
tp @s[score_TalkTime_min=637,score_TalkTime=637] 324 94 701
tp @s[score_TalkTime_min=639,score_TalkTime=639] 325 106 -553
tp @s[score_TalkTime_min=641,score_TalkTime=641] 328 94 -328
tp @s[score_TalkTime_min=643,score_TalkTime=643] 334 94 -283
tp @s[score_TalkTime_min=645,score_TalkTime=645] 342 97 -234
tp @s[score_TalkTime_min=647,score_TalkTime=647] 349 94 678
tp @s[score_TalkTime_min=649,score_TalkTime=649] 354 97 -228
tp @s[score_TalkTime_min=651,score_TalkTime=651] 355 106 -548
tp @s[score_TalkTime_min=653,score_TalkTime=653] 356 98 -346
tp @s[score_TalkTime_min=655,score_TalkTime=655] 359 102 -458
tp @s[score_TalkTime_min=657,score_TalkTime=657] 360 98 -296
tp @s[score_TalkTime_min=659,score_TalkTime=659] 364 97 -245
tp @s[score_TalkTime_min=661,score_TalkTime=661] 368 98 620
tp @s[score_TalkTime_min=663,score_TalkTime=663] 368 98 597
tp @s[score_TalkTime_min=665,score_TalkTime=665] 375 102 -294
tp @s[score_TalkTime_min=667,score_TalkTime=667] 375 102 -311
tp @s[score_TalkTime_min=669,score_TalkTime=669] 381 106 -546
tp @s[score_TalkTime_min=671,score_TalkTime=671] 383 98 837
tp @s[score_TalkTime_min=673,score_TalkTime=673] 386 98 863
tp @s[score_TalkTime_min=675,score_TalkTime=675] 388 98 -350
tp @s[score_TalkTime_min=677,score_TalkTime=677] 390 102 -471
tp @s[score_TalkTime_min=679,score_TalkTime=679] 396 106 -509
tp @s[score_TalkTime_min=681,score_TalkTime=681] 401 106 -270
tp @s[score_TalkTime_min=683,score_TalkTime=683] 401 106 -289
tp @s[score_TalkTime_min=685,score_TalkTime=685] 403 106 -546
tp @s[score_TalkTime_min=687,score_TalkTime=687] 404 106 -517
tp @s[score_TalkTime_min=689,score_TalkTime=689] 404 98 328
tp @s[score_TalkTime_min=691,score_TalkTime=691] 405 98 898
tp @s[score_TalkTime_min=693,score_TalkTime=693] 405 98 344
tp @s[score_TalkTime_min=695,score_TalkTime=695] 407 98 625
tp @s[score_TalkTime_min=697,score_TalkTime=697] 408 106 -256
tp @s[score_TalkTime_min=699,score_TalkTime=699] 410 98 827
tp @s[score_TalkTime_min=701,score_TalkTime=701] 417 85 -387
tp @s[score_TalkTime_min=703,score_TalkTime=703] 419 106 -513
tp @s[score_TalkTime_min=705,score_TalkTime=705] 421 106 -305
tp @s[score_TalkTime_min=707,score_TalkTime=707] 422 85 -432
tp @s[score_TalkTime_min=709,score_TalkTime=709] 424 98 937
tp @s[score_TalkTime_min=711,score_TalkTime=711] 425 98 329
tp @s[score_TalkTime_min=713,score_TalkTime=713] 427 85 -477
tp @s[score_TalkTime_min=715,score_TalkTime=715] 429 102 -526
tp @s[score_TalkTime_min=717,score_TalkTime=717] 429 106 -283
tp @s[score_TalkTime_min=719,score_TalkTime=719] 430 102 -478
tp @s[score_TalkTime_min=721,score_TalkTime=721] 430 106 -253
tp @s[score_TalkTime_min=723,score_TalkTime=723] 431 98 376
tp @s[score_TalkTime_min=725,score_TalkTime=725] 432 102 -354
tp @s[score_TalkTime_min=727,score_TalkTime=727] 433 106 -325
tp @s[score_TalkTime_min=729,score_TalkTime=729] 436 106 -231
tp @s[score_TalkTime_min=731,score_TalkTime=731] 442 98 818
tp @s[score_TalkTime_min=733,score_TalkTime=733] 442 98 909
tp @s[score_TalkTime_min=735,score_TalkTime=735] 443 106 -215
tp @s[score_TalkTime_min=737,score_TalkTime=737] 444 106 -482
tp @s[score_TalkTime_min=739,score_TalkTime=739] 448 106 -200
tp @s[score_TalkTime_min=741,score_TalkTime=741] 450 98 376
tp @s[score_TalkTime_min=743,score_TalkTime=743] 455 98 1087
tp @s[score_TalkTime_min=745,score_TalkTime=745] 455 102 -591
tp @s[score_TalkTime_min=747,score_TalkTime=747] 455 102 -536
tp @s[score_TalkTime_min=749,score_TalkTime=749] 461 98 930
tp @s[score_TalkTime_min=751,score_TalkTime=751] 462 98 1032
tp @s[score_TalkTime_min=753,score_TalkTime=753] 467 85 -448
tp @s[score_TalkTime_min=755,score_TalkTime=755] 467 106 -192
tp @s[score_TalkTime_min=757,score_TalkTime=757] 470 98 827
tp @s[score_TalkTime_min=759,score_TalkTime=759] 470 102 -419
tp @s[score_TalkTime_min=761,score_TalkTime=761] 470 102 -367
tp @s[score_TalkTime_min=763,score_TalkTime=763] 471 98 1153
tp @s[score_TalkTime_min=765,score_TalkTime=765] 471 85 -384
tp @s[score_TalkTime_min=767,score_TalkTime=767] 473 106 -496
tp @s[score_TalkTime_min=769,score_TalkTime=769] 477 85 -475
tp @s[score_TalkTime_min=771,score_TalkTime=771] 478 98 1087
tp @s[score_TalkTime_min=773,score_TalkTime=773] 484 106 -508
tp @s[score_TalkTime_min=775,score_TalkTime=775] 487 98 1034
tp @s[score_TalkTime_min=777,score_TalkTime=777] 487 106 -191
tp @s[score_TalkTime_min=779,score_TalkTime=779] 488 98 812
tp @s[score_TalkTime_min=781,score_TalkTime=781] 488 102 -440
tp @s[score_TalkTime_min=783,score_TalkTime=783] 490 98 908
tp @s[score_TalkTime_min=785,score_TalkTime=785] 492 85 -415
tp @s[score_TalkTime_min=787,score_TalkTime=787] 495 106 -335
tp @s[score_TalkTime_min=789,score_TalkTime=789] 503 98 941
tp @s[score_TalkTime_min=791,score_TalkTime=791] 504 106 -356
tp @s[score_TalkTime_min=793,score_TalkTime=793] 505 106 -513
tp @s[score_TalkTime_min=795,score_TalkTime=795] 506 102 -470
tp @s[score_TalkTime_min=797,score_TalkTime=797] 506 106 -382
tp @s[score_TalkTime_min=799,score_TalkTime=799] 509 106 -302
tp @s[score_TalkTime_min=801,score_TalkTime=801] 510 97 364
tp @s[score_TalkTime_min=803,score_TalkTime=803] 511 98 902
tp @s[score_TalkTime_min=805,score_TalkTime=805] 516 98 871
tp @s[score_TalkTime_min=807,score_TalkTime=807] 516 106 -327
tp @s[score_TalkTime_min=809,score_TalkTime=809] 517 106 -313
tp @s[score_TalkTime_min=811,score_TalkTime=811] 519 85 -406
tp @s[score_TalkTime_min=813,score_TalkTime=813] 522 85 -456
tp @s[score_TalkTime_min=815,score_TalkTime=815] 523 59 -981
tp @s[score_TalkTime_min=817,score_TalkTime=817] 525 86 513
tp @s[score_TalkTime_min=819,score_TalkTime=819] 527 106 -538
tp @s[score_TalkTime_min=821,score_TalkTime=821] 527 95 446
tp @s[score_TalkTime_min=823,score_TalkTime=823] 527 86 556
tp @s[score_TalkTime_min=825,score_TalkTime=825] 530 63 -1220
tp @s[score_TalkTime_min=827,score_TalkTime=827] 531 106 -495
tp @s[score_TalkTime_min=829,score_TalkTime=829] 537 98 832
tp @s[score_TalkTime_min=831,score_TalkTime=831] 539 106 -453
tp @s[score_TalkTime_min=833,score_TalkTime=833] 540 98 949
tp @s[score_TalkTime_min=835,score_TalkTime=835] 542 89 482
tp @s[score_TalkTime_min=837,score_TalkTime=837] 542 63 -1176
tp @s[score_TalkTime_min=839,score_TalkTime=839] 543 106 -368
tp @s[score_TalkTime_min=841,score_TalkTime=841] 546 106 -437
tp @s[score_TalkTime_min=843,score_TalkTime=843] 547 106 -468
tp @s[score_TalkTime_min=845,score_TalkTime=845] 563 110 -538
tp @s[score_TalkTime_min=847,score_TalkTime=847] 565 89 478
tp @s[score_TalkTime_min=849,score_TalkTime=849] 565 59 -992
tp @s[score_TalkTime_min=851,score_TalkTime=851] 567 63 -965
tp @s[score_TalkTime_min=853,score_TalkTime=853] 568 86 515
tp @s[score_TalkTime_min=855,score_TalkTime=855] 568 59 -1124
tp @s[score_TalkTime_min=857,score_TalkTime=857] 568 59 -1058
tp @s[score_TalkTime_min=859,score_TalkTime=859] 576 89 492
tp @s[score_TalkTime_min=861,score_TalkTime=861] 577 106 -466
tp @s[score_TalkTime_min=863,score_TalkTime=863] 577 106 -479
tp @s[score_TalkTime_min=865,score_TalkTime=865] 585 59 -1181
tp @s[score_TalkTime_min=867,score_TalkTime=867] 586 95 446
tp @s[score_TalkTime_min=869,score_TalkTime=869] 587 63 -1125
tp @s[score_TalkTime_min=871,score_TalkTime=871] 588 89 501
tp @s[score_TalkTime_min=873,score_TalkTime=873] 589 40 -1222
tp @s[score_TalkTime_min=875,score_TalkTime=875] 601 63 -1160
tp @s[score_TalkTime_min=877,score_TalkTime=877] 609 59 -1239
tp @s[score_TalkTime_min=879,score_TalkTime=879] 615 95 514
tp @s[score_TalkTime_min=881,score_TalkTime=881] 622 41 -989
tp @s[score_TalkTime_min=883,score_TalkTime=883] 622 83 -1200
tp @s[score_TalkTime_min=885,score_TalkTime=885] 625 40 -1234
tp @s[score_TalkTime_min=887,score_TalkTime=887] 627 63 -1041
tp @s[score_TalkTime_min=889,score_TalkTime=889] 633 95 488
tp @s[score_TalkTime_min=891,score_TalkTime=891] 638 63 -1166
tp @s[score_TalkTime_min=893,score_TalkTime=893] 646 63 -1220
tp @s[score_TalkTime_min=895,score_TalkTime=895] 648 112 -660
tp @s[score_TalkTime_min=897,score_TalkTime=897] 664 41 -969
tp @s[score_TalkTime_min=899,score_TalkTime=899] 673 83 -1231
tp @s[score_TalkTime_min=901,score_TalkTime=901] 674 102 -660
tp @s[score_TalkTime_min=903,score_TalkTime=903] 676 41 -1008
tp @s[score_TalkTime_min=905,score_TalkTime=905] 676 63 -1067
tp @s[score_TalkTime_min=907,score_TalkTime=907] 676 83 -1152
tp @s[score_TalkTime_min=909,score_TalkTime=909] 677 83 -1314
tp @s[score_TalkTime_min=911,score_TalkTime=911] 683 31 -928
tp @s[score_TalkTime_min=913,score_TalkTime=913] 701 102 461
tp @s[score_TalkTime_min=915,score_TalkTime=915] 710 31 -959
tp @s[score_TalkTime_min=917,score_TalkTime=917] 719 102 464
tp @s[score_TalkTime_min=919,score_TalkTime=919] 722 98 589
tp @s[score_TalkTime_min=921,score_TalkTime=921] 723 83 -1228
tp @s[score_TalkTime_min=923,score_TalkTime=923] 724 102 -655
tp @s[score_TalkTime_min=925,score_TalkTime=925] 729 63 -1187
tp @s[score_TalkTime_min=927,score_TalkTime=927] 730 98 608
tp @s[score_TalkTime_min=929,score_TalkTime=929] 736 89 752
tp @s[score_TalkTime_min=931,score_TalkTime=931] 737 89 703
tp @s[score_TalkTime_min=933,score_TalkTime=933] 739 93 664
tp @s[score_TalkTime_min=935,score_TalkTime=935] 742 98 582
tp @s[score_TalkTime_min=937,score_TalkTime=937] 742 93 649
tp @s[score_TalkTime_min=939,score_TalkTime=939] 753 83 -1154
tp @s[score_TalkTime_min=941,score_TalkTime=941] 759 98 460
tp @s[score_TalkTime_min=943,score_TalkTime=943] 761 83 -1230
tp @s[score_TalkTime_min=945,score_TalkTime=945] 763 94 582
tp @s[score_TalkTime_min=947,score_TalkTime=947] 764 89 688
tp @s[score_TalkTime_min=949,score_TalkTime=949] 764 94 519
tp @s[score_TalkTime_min=951,score_TalkTime=951] 765 89 638
tp @s[score_TalkTime_min=953,score_TalkTime=953] 768 63 -1158
tp @s[score_TalkTime_min=955,score_TalkTime=955] 774 98 461
tp @s[score_TalkTime_min=957,score_TalkTime=957] 780 63 -1108
tp @s[score_TalkTime_min=959,score_TalkTime=959] 782 31 -1013
tp @s[score_TalkTime_min=961,score_TalkTime=961] 787 102 -654
tp @s[score_TalkTime_min=963,score_TalkTime=963] 795 63 -1208
tp @s[score_TalkTime_min=965,score_TalkTime=965] 802 83 -1133
tp @s[score_TalkTime_min=967,score_TalkTime=967] 805 91 740
tp @s[score_TalkTime_min=969,score_TalkTime=969] 805 83 -1074
tp @s[score_TalkTime_min=971,score_TalkTime=971] 806 91 698
tp @s[score_TalkTime_min=973,score_TalkTime=973] 819 94 519
tp @s[score_TalkTime_min=975,score_TalkTime=975] 821 98 333
tp @s[score_TalkTime_min=977,score_TalkTime=977] 822 83 -1041
tp @s[score_TalkTime_min=979,score_TalkTime=979] 827 91 757
tp @s[score_TalkTime_min=981,score_TalkTime=981] 830 36 -1043
tp @s[score_TalkTime_min=983,score_TalkTime=983] 830 63 -1115
tp @s[score_TalkTime_min=985,score_TalkTime=985] 834 91 666
tp @s[score_TalkTime_min=987,score_TalkTime=987] 834 91 723
tp @s[score_TalkTime_min=989,score_TalkTime=989] 840 106 -315
tp @s[score_TalkTime_min=991,score_TalkTime=991] 843 91 642
tp @s[score_TalkTime_min=993,score_TalkTime=993] 844 98 306
tp @s[score_TalkTime_min=995,score_TalkTime=995] 853 102 -653
tp @s[score_TalkTime_min=997,score_TalkTime=997] 854 91 693
tp @s[score_TalkTime_min=999,score_TalkTime=999] 856 83 -1078
tp @s[score_TalkTime_min=1001,score_TalkTime=1001] 857 63 -1205
tp @s[score_TalkTime_min=1003,score_TalkTime=1003] 861 91 757
tp @s[score_TalkTime_min=1005,score_TalkTime=1005] 861 100 400
tp @s[score_TalkTime_min=1007,score_TalkTime=1007] 863 91 670
tp @s[score_TalkTime_min=1009,score_TalkTime=1009] 866 98 452
tp @s[score_TalkTime_min=1011,score_TalkTime=1011] 867 100 421
tp @s[score_TalkTime_min=1013,score_TalkTime=1013] 872 102 311
tp @s[score_TalkTime_min=1015,score_TalkTime=1015] 876 91 737
tp @s[score_TalkTime_min=1017,score_TalkTime=1017] 876 98 440
tp @s[score_TalkTime_min=1019,score_TalkTime=1019] 876 98 440
tp @s[score_TalkTime_min=1021,score_TalkTime=1021] 876 94 518
tp @s[score_TalkTime_min=1023,score_TalkTime=1023] 881 102 332
tp @s[score_TalkTime_min=1025,score_TalkTime=1025] 885 91 645
tp @s[score_TalkTime_min=1027,score_TalkTime=1027] 885 91 698
tp @s[score_TalkTime_min=1029,score_TalkTime=1029] 888 102 318
tp @s[score_TalkTime_min=1031,score_TalkTime=1031] 890 94 487
tp @s[score_TalkTime_min=1033,score_TalkTime=1033] 891 94 448
tp @s[score_TalkTime_min=1035,score_TalkTime=1035] 895 91 614
tp @s[score_TalkTime_min=1037,score_TalkTime=1037] 896 106 -293
tp @s[score_TalkTime_min=1039,score_TalkTime=1039] 896 91 728
tp @s[score_TalkTime_min=1041,score_TalkTime=1041] 903 91 706
tp @s[score_TalkTime_min=1043,score_TalkTime=1043] 905 106 -224
tp @s[score_TalkTime_min=1045,score_TalkTime=1045] 910 91 657
tp @s[score_TalkTime_min=1047,score_TalkTime=1047] 911 93 752
tp @s[score_TalkTime_min=1049,score_TalkTime=1049] 919 93 732
tp @s[score_TalkTime_min=1051,score_TalkTime=1051] 924 94 441
tp @s[score_TalkTime_min=1053,score_TalkTime=1053] 927 94 399
tp @s[score_TalkTime_min=1055,score_TalkTime=1055] 928 91 703
tp @s[score_TalkTime_min=1057,score_TalkTime=1057] 929 91 625
tp @s[score_TalkTime_min=1059,score_TalkTime=1059] 934 91 682
tp @s[score_TalkTime_min=1061,score_TalkTime=1061] 945 91 645
tp @s[score_TalkTime_min=1063,score_TalkTime=1063] 946 94 357
tp @s[score_TalkTime_min=1065,score_TalkTime=1065] 972 106 -193
tp @s[score_TalkTime_min=1067,score_TalkTime=1067] 1076 98 825
tp @s[score_TalkTime_min=1069,score_TalkTime=1069] 1080 104 963
tp @s[score_TalkTime_min=1071,score_TalkTime=1071] 1093 104 986
tp @s[score_TalkTime_min=1073,score_TalkTime=1073] 1099 104 967
tp @s[score_TalkTime_min=1075,score_TalkTime=1075] 1169 98 898
tp @s[score_TalkTime_min=1077,score_TalkTime=1077] 1172 98 911
tp @s[score_TalkTime_min=1079,score_TalkTime=1079] 1263 98 878
tp @s[score_TalkTime_min=1081,score_TalkTime=1081] 1282 98 880
tp @s[score_TalkTime_min=1083,score_TalkTime=1083] 1348 98 774
tp @s[score_TalkTime_min=1085,score_TalkTime=1085] 1351 98 877
tp @s[score_TalkTime_min=1087,score_TalkTime=1087] 1356 85 420
tp @s[score_TalkTime_min=1089,score_TalkTime=1089] 1358 98 762
tp @s[score_TalkTime_min=1091,score_TalkTime=1091] 1361 98 498
tp @s[score_TalkTime_min=1093,score_TalkTime=1093] 1362 85 407
tp @s[score_TalkTime_min=1095,score_TalkTime=1095] 1362 98 478
tp @s[score_TalkTime_min=1097,score_TalkTime=1097] 1363 98 868
tp @s[score_TalkTime_min=1099,score_TalkTime=1099] 1367 98 972
tp @s[score_TalkTime_min=1101,score_TalkTime=1101] 1375 105 -41
tp @s[score_TalkTime_min=1103,score_TalkTime=1103] 1380 72 427
tp @s[score_TalkTime_min=1105,score_TalkTime=1105] 1384 106 -3
tp @s[score_TalkTime_min=1107,score_TalkTime=1107] 1388 98 478
tp @s[score_TalkTime_min=1109,score_TalkTime=1109] 1390 98 981
tp @s[score_TalkTime_min=1111,score_TalkTime=1111] 1391 98 794
tp @s[score_TalkTime_min=1113,score_TalkTime=1113] 1393 98 778
tp @s[score_TalkTime_min=1115,score_TalkTime=1115] 1394 98 995
tp @s[score_TalkTime_min=1117,score_TalkTime=1117] 1407 101 863
tp @s[score_TalkTime_min=1119,score_TalkTime=1119] 1410 72 393
tp @s[score_TalkTime_min=1121,score_TalkTime=1121] 1410 72 430
tp @s[score_TalkTime_min=1123,score_TalkTime=1123] 1415 72 481
tp @s[score_TalkTime_min=1125,score_TalkTime=1125] 1416 72 529
tp @s[score_TalkTime_min=1127,score_TalkTime=1127] 1424 100 889
tp @s[score_TalkTime_min=1129,score_TalkTime=1129] 1427 100 864
tp @s[score_TalkTime_min=1131,score_TalkTime=1131] 1432 93 264
tp @s[score_TalkTime_min=1133,score_TalkTime=1133] 1434 72 464
tp @s[score_TalkTime_min=1135,score_TalkTime=1135] 1447 72 499
tp @s[score_TalkTime_min=1137,score_TalkTime=1137] 1450 72 548
tp @s[score_TalkTime_min=1139,score_TalkTime=1139] 1452 102 -39
tp @s[score_TalkTime_min=1141,score_TalkTime=1141] 1454 102 35
tp @s[score_TalkTime_min=1143,score_TalkTime=1143] 1455 100 60
tp @s[score_TalkTime_min=1145,score_TalkTime=1145] 1457 102 -28
tp @s[score_TalkTime_min=1147,score_TalkTime=1147] 1476 72 507
tp @s[score_TalkTime_min=1149,score_TalkTime=1149] 1477 72 468
tp @s[score_TalkTime_min=1151,score_TalkTime=1151] 1487 93 264
tp @s[score_TalkTime_min=1153,score_TalkTime=1153] 1490 107 -20
tp @s[score_TalkTime_min=1155,score_TalkTime=1155] 1491 107 -36
tp @s[score_TalkTime_min=1157,score_TalkTime=1157] 1498 98 511
tp @s[score_TalkTime_min=1159,score_TalkTime=1159] 1512 107 -30
tp @s[score_TalkTime_min=1161,score_TalkTime=1161] 1514 98 527
tp @s[score_TalkTime_min=1163,score_TalkTime=1163] 1519 98 507
tp @s[score_TalkTime_min=1165,score_TalkTime=1165] 1522 98 539
tp @s[score_TalkTime_min=1167,score_TalkTime=1167] 1526 93 198
tp @s[score_TalkTime_min=1169,score_TalkTime=1169] 1532 93 259
tp @s[score_TalkTime_min=1171,score_TalkTime=1171] 1532 102 430
tp @s[score_TalkTime_min=1173,score_TalkTime=1173] 1533 102 409
tp @s[score_TalkTime_min=1175,score_TalkTime=1175] 1536 98 508
tp @s[score_TalkTime_min=1177,score_TalkTime=1177] 1539 98 537
tp @s[score_TalkTime_min=1179,score_TalkTime=1179] 1550 98 522
tp @s[score_TalkTime_min=1181,score_TalkTime=1181] 1562 93 238
tp @s[score_TalkTime_min=1183,score_TalkTime=1183] 1563 63 1578
tp @s[score_TalkTime_min=1185,score_TalkTime=1185] 1565 102 463
tp @s[score_TalkTime_min=1187,score_TalkTime=1187] 1565 102 442
tp @s[score_TalkTime_min=1189,score_TalkTime=1189] 1568 110 350
tp @s[score_TalkTime_min=1191,score_TalkTime=1191] 1570 93 206
tp @s[score_TalkTime_min=1193,score_TalkTime=1193] 1579 69 1557
tp @s[score_TalkTime_min=1195,score_TalkTime=1195] 1580 94 1416
tp @s[score_TalkTime_min=1197,score_TalkTime=1197] 1580 84 1478
tp @s[score_TalkTime_min=1199,score_TalkTime=1199] 1580 74 1522
tp @s[score_TalkTime_min=1201,score_TalkTime=1201] 1592 110 321
tp @s[score_TalkTime_min=1203,score_TalkTime=1203] 1602 64 1579
tp @s[score_TalkTime_min=1205,score_TalkTime=1205] 1635 169 2333
tp @s[score_TalkTime_min=1207,score_TalkTime=1207] 1638 170 2406
tp @s[score_TalkTime_min=1209,score_TalkTime=1209] 1644 120 318
tp @s[score_TalkTime_min=1211,score_TalkTime=1211] 1679 169 2348
tp @s[score_TalkTime_min=1213,score_TalkTime=1213] 1688 184 2282
tp @s[score_TalkTime_min=1215,score_TalkTime=1215] 1691 184 2194
tp @s[score_TalkTime_min=1217,score_TalkTime=1217] 1753 76 -67
tp @s[score_TalkTime_min=1219,score_TalkTime=1219] 1753 169 2347
tp @s[score_TalkTime_min=1221,score_TalkTime=1221] 1760 70 1540
tp @s[score_TalkTime_min=1223,score_TalkTime=1223] 1784 70 1385
tp @s[score_TalkTime_min=1225,score_TalkTime=1225] 1794 70 -94
tp @s[score_TalkTime_min=1227,score_TalkTime=1227] 1795 46 -32
tp @s[score_TalkTime_min=1229,score_TalkTime=1229] 1796 80 1456
tp @s[score_TalkTime_min=1231,score_TalkTime=1231] 1803 80 1540
tp @s[score_TalkTime_min=1233,score_TalkTime=1233] 1807 70 1411
tp @s[score_TalkTime_min=1235,score_TalkTime=1235] 1809 36 45
tp @s[score_TalkTime_min=1237,score_TalkTime=1237] 1818 31 -17
tp @s[score_TalkTime_min=1239,score_TalkTime=1239] 1823 80 1477
tp @s[score_TalkTime_min=1241,score_TalkTime=1241] 1824 70 1384
tp @s[score_TalkTime_min=1243,score_TalkTime=1243] 1827 80 1421
tp @s[score_TalkTime_min=1245,score_TalkTime=1245] 1841 90 1539
tp @s[score_TalkTime_min=1247,score_TalkTime=1247] 1845 80 1445
tp @s[score_TalkTime_min=1249,score_TalkTime=1249] 1847 46 -12
tp @s[score_TalkTime_min=1251,score_TalkTime=1251] 1854 90 1471
tp @s[score_TalkTime_min=1253,score_TalkTime=1253] 1856 80 1380
tp @s[score_TalkTime_min=1255,score_TalkTime=1255] 1861 90 1502
tp @s[score_TalkTime_min=1257,score_TalkTime=1257] 1863 8 -171
tp @s[score_TalkTime_min=1259,score_TalkTime=1259] 1864 39 19
tp @s[score_TalkTime_min=1261,score_TalkTime=1261] 1864 36 -55
tp @s[score_TalkTime_min=1263,score_TalkTime=1263] 1870 80 1417
tp @s[score_TalkTime_min=1265,score_TalkTime=1265] 1877 8 -71
tp @s[score_TalkTime_min=1267,score_TalkTime=1267] 1878 51 -22
tp @s[score_TalkTime_min=1269,score_TalkTime=1269] 1880 8 -124
tp @s[score_TalkTime_min=1271,score_TalkTime=1271] 1882 36 44
tp @s[score_TalkTime_min=1273,score_TalkTime=1273] 1882 100 1538
tp @s[score_TalkTime_min=1275,score_TalkTime=1275] 1893 80 1485
tp @s[score_TalkTime_min=1277,score_TalkTime=1277] 1896 8 -167
tp @s[score_TalkTime_min=1279,score_TalkTime=1279] 1897 36 -9
tp @s[score_TalkTime_min=1281,score_TalkTime=1281] 1897 80 1380
tp @s[score_TalkTime_min=1283,score_TalkTime=1283] 1901 36 -51
tp @s[score_TalkTime_min=1285,score_TalkTime=1285] 1902 80 1437
tp @s[score_TalkTime_min=1287,score_TalkTime=1287] 1909 8 -100
tp @s[score_TalkTime_min=1289,score_TalkTime=1289] 1916 46 1
tp @s[score_TalkTime_min=1291,score_TalkTime=1291] 1929 80 1463
tp @s[score_TalkTime_min=1293,score_TalkTime=1293] 1930 100 1537
tp @s[score_TalkTime_min=1295,score_TalkTime=1295] 1935 8 -75
tp @s[score_TalkTime_min=1297,score_TalkTime=1297] 1935 90 1379
tp @s[score_TalkTime_min=1299,score_TalkTime=1299] 1944 6 -48
tp @s[score_TalkTime_min=1301,score_TalkTime=1301] 1947 6 -115
tp @s[score_TalkTime_min=1303,score_TalkTime=1303] 1950 13 -157
tp @s[score_TalkTime_min=1305,score_TalkTime=1305] 1951 80 1421
tp @s[score_TalkTime_min=1307,score_TalkTime=1307] 1955 90 1488
tp @s[score_TalkTime_min=1309,score_TalkTime=1309] 1966 2 -106
tp @s[score_TalkTime_min=1311,score_TalkTime=1311] 1971 8 -187
tp @s[score_TalkTime_min=1313,score_TalkTime=1313] 1972 100 1537
tp @s[score_TalkTime_min=1315,score_TalkTime=1315] 1978 90 1379
tp @s[score_TalkTime_min=1317,score_TalkTime=1317] 1983 90 1501
tp @s[score_TalkTime_min=1319,score_TalkTime=1319] 1984 90 1468
tp @s[score_TalkTime_min=1321,score_TalkTime=1321] 1990 8 -80
tp @s[score_TalkTime_min=1323,score_TalkTime=1323] 1990 8 -132
tp @s[score_TalkTime_min=1325,score_TalkTime=1325] 1994 90 1436
tp @s[score_TalkTime_min=1327,score_TalkTime=1327] 2001 8 -37
tp @s[score_TalkTime_min=1329,score_TalkTime=1329] 2012 8 -157
tp @s[score_TalkTime_min=1331,score_TalkTime=1331] 2015 90 1404
tp @s[score_TalkTime_min=1333,score_TalkTime=1333] 2015 100 1530
tp @s[score_TalkTime_min=1335,score_TalkTime=1335] 2022 100 1462
tp @s[score_TalkTime_min=1337,score_TalkTime=1337] 2041 8 -130
tp @s[score_TalkTime_min=1339,score_TalkTime=1339] 2050 39 -98
tp @s[score_TalkTime_min=1341,score_TalkTime=1341] 2072 28 -36
tp @s[score_TalkTime_min=1343,score_TalkTime=1343] 2072 33 -69
tp @s[score_TalkTime_min=1345,score_TalkTime=1345] 2136 89 1338
tp @s[score_TalkTime_min=1347,score_TalkTime=1347] 2152 89 1397
tp @s[score_TalkTime_min=1349,score_TalkTime=1349] 2157 74 1431
tp @s[score_TalkTime_min=1351,score_TalkTime=1351] 2184 89 1387
tp @s[score_TalkTime_min=1353,score_TalkTime=1353] 2192 74 1441
tp @s[score_TalkTime_min=1355,score_TalkTime=1355] 2200 69 1493
tp @s[score_TalkTime_min=1357,score_TalkTime=1357] 2203 74 1541
tp @s[score_TalkTime_min=1359,score_TalkTime=1359] 2219 74 1461
tp @s[score_TalkTime_min=1361,score_TalkTime=1361] 2220 74 1349
tp @s[score_TalkTime_min=1363,score_TalkTime=1363] 2221 74 1390
tp @s[score_TalkTime_min=1365,score_TalkTime=1365] 2221 89 1307
tp @s[score_TalkTime_min=1367,score_TalkTime=1367] 2233 69 1513
tp @s[score_TalkTime_min=1369,score_TalkTime=1369] 2236 74 1422
tp @s[score_TalkTime_min=1371,score_TalkTime=1371] 2243 79 1443
tp @s[score_TalkTime_min=1373,score_TalkTime=1373] 2247 89 1382
tp @s[score_TalkTime_min=1375,score_TalkTime=1375] 2252 74 1510
tp @s[score_TalkTime_min=1377,score_TalkTime=1377] 2262 89 1360
tp @s[score_TalkTime_min=1379,score_TalkTime=1379] 2263 104 1331
tp @s[score_TalkTime_min=1381,score_TalkTime=1381] 2272 79 1407
tp @s[score_TalkTime_min=1383,score_TalkTime=1383] 2287 79 1430
tp @s[score_TalkTime_min=1385,score_TalkTime=1385] 2288 74 1505
tp @s[score_TalkTime_min=1387,score_TalkTime=1387] 2299 69 1529
tp @s[score_TalkTime_min=1389,score_TalkTime=1389] 2304 104 1326
tp @s[score_TalkTime_min=1391,score_TalkTime=1391] 2312 58 1726
tp @s[score_TalkTime_min=1393,score_TalkTime=1393] 2313 74 1595
tp @s[score_TalkTime_min=1395,score_TalkTime=1395] 2313 74 1557
tp @s[score_TalkTime_min=1397,score_TalkTime=1397] 2314 55 1712
tp @s[score_TalkTime_min=1399,score_TalkTime=1399] 2317 58 1643
tp @s[score_TalkTime_min=1401,score_TalkTime=1401] 2325 58 1603
tp @s[score_TalkTime_min=1403,score_TalkTime=1403] 2342 58 1678
tp @s[score_TalkTime_min=1405,score_TalkTime=1405] 2357 94 1552
tp @s[score_TalkTime_min=1407,score_TalkTime=1407] 2362 37 1639
tp @s[score_TalkTime_min=1409,score_TalkTime=1409] 2365 53 1604
tp @s[score_TalkTime_min=1411,score_TalkTime=1411] 2375 109 1510
tp @s[score_TalkTime_min=1413,score_TalkTime=1413] 2376 33 1669
tp @s[score_TalkTime_min=1415,score_TalkTime=1415] 2377 34 1668
tp @s[score_TalkTime_min=1417,score_TalkTime=1417] 2399 34 1658
tp @s[score_TalkTime_min=1419,score_TalkTime=1419] 2403 33 1658
tp @s[score_TalkTime_min=1421,score_TalkTime=1421] 2422 58 1574
tp @s[score_TalkTime_min=1423,score_TalkTime=1423] 2422 37 1622
tp @s[score_TalkTime_min=1425,score_TalkTime=1425] 2422 43 1698
tp @s[score_TalkTime_min=1427,score_TalkTime=1427] 2423 37 1664


execute @s[score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=22,score_TalkTime=22] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=24,score_TalkTime=24] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=26,score_TalkTime=26] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=28,score_TalkTime=28] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=30,score_TalkTime=30] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=32,score_TalkTime=32] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=34,score_TalkTime=34] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=36,score_TalkTime=36] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=40,score_TalkTime=40] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=42,score_TalkTime=42] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=44,score_TalkTime=44] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=46,score_TalkTime=46] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=48,score_TalkTime=48] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=50,score_TalkTime=50] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=52,score_TalkTime=52] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=54,score_TalkTime=54] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=56,score_TalkTime=56] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=58,score_TalkTime=58] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=60,score_TalkTime=60] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=62,score_TalkTime=62] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=64,score_TalkTime=64] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=66,score_TalkTime=66] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=68,score_TalkTime=68] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=70,score_TalkTime=70] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=72,score_TalkTime=72] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=74,score_TalkTime=74] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=76,score_TalkTime=76] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=78,score_TalkTime=78] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=80,score_TalkTime=80] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=82,score_TalkTime=82] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=84,score_TalkTime=84] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=86,score_TalkTime=86] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=88,score_TalkTime=88] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=90,score_TalkTime=90] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=92,score_TalkTime=92] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=94,score_TalkTime=94] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=96,score_TalkTime=96] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=98,score_TalkTime=98] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=100,score_TalkTime=100] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=102,score_TalkTime=102] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=104,score_TalkTime=104] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=106,score_TalkTime=106] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=108,score_TalkTime=108] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=110,score_TalkTime=110] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=112,score_TalkTime=112] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=114,score_TalkTime=114] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=116,score_TalkTime=116] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=118,score_TalkTime=118] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=120,score_TalkTime=120] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=122,score_TalkTime=122] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=124,score_TalkTime=124] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=126,score_TalkTime=126] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=128,score_TalkTime=128] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=130,score_TalkTime=130] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=132,score_TalkTime=132] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=134,score_TalkTime=134] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=136,score_TalkTime=136] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=138,score_TalkTime=138] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=140,score_TalkTime=140] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=142,score_TalkTime=142] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=144,score_TalkTime=144] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=146,score_TalkTime=146] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=148,score_TalkTime=148] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=150,score_TalkTime=150] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=152,score_TalkTime=152] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=154,score_TalkTime=154] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=156,score_TalkTime=156] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=158,score_TalkTime=158] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=160,score_TalkTime=160] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=162,score_TalkTime=162] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=164,score_TalkTime=164] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=166,score_TalkTime=166] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=168,score_TalkTime=168] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=170,score_TalkTime=170] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=172,score_TalkTime=172] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=174,score_TalkTime=174] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=176,score_TalkTime=176] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=178,score_TalkTime=178] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=180,score_TalkTime=180] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=182,score_TalkTime=182] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=184,score_TalkTime=184] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=186,score_TalkTime=186] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=188,score_TalkTime=188] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=190,score_TalkTime=190] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=192,score_TalkTime=192] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=194,score_TalkTime=194] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=196,score_TalkTime=196] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=198,score_TalkTime=198] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=200,score_TalkTime=200] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=202,score_TalkTime=202] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=204,score_TalkTime=204] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=206,score_TalkTime=206] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=208,score_TalkTime=208] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=210,score_TalkTime=210] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=212,score_TalkTime=212] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=214,score_TalkTime=214] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=216,score_TalkTime=216] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=218,score_TalkTime=218] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=220,score_TalkTime=220] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=222,score_TalkTime=222] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=224,score_TalkTime=224] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=226,score_TalkTime=226] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=228,score_TalkTime=228] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=230,score_TalkTime=230] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=232,score_TalkTime=232] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=234,score_TalkTime=234] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=236,score_TalkTime=236] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=238,score_TalkTime=238] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=240,score_TalkTime=240] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=242,score_TalkTime=242] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=244,score_TalkTime=244] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=246,score_TalkTime=246] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=248,score_TalkTime=248] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=250,score_TalkTime=250] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=252,score_TalkTime=252] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=254,score_TalkTime=254] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=256,score_TalkTime=256] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=258,score_TalkTime=258] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=260,score_TalkTime=260] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=262,score_TalkTime=262] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=264,score_TalkTime=264] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=266,score_TalkTime=266] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=268,score_TalkTime=268] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=270,score_TalkTime=270] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=272,score_TalkTime=272] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=274,score_TalkTime=274] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=276,score_TalkTime=276] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=278,score_TalkTime=278] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=280,score_TalkTime=280] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=282,score_TalkTime=282] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=284,score_TalkTime=284] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=286,score_TalkTime=286] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=288,score_TalkTime=288] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=290,score_TalkTime=290] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=292,score_TalkTime=292] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=294,score_TalkTime=294] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=296,score_TalkTime=296] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=298,score_TalkTime=298] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=300,score_TalkTime=300] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=302,score_TalkTime=302] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=304,score_TalkTime=304] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=306,score_TalkTime=306] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=308,score_TalkTime=308] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=310,score_TalkTime=310] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=312,score_TalkTime=312] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=314,score_TalkTime=314] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=316,score_TalkTime=316] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=318,score_TalkTime=318] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=320,score_TalkTime=320] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=322,score_TalkTime=322] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=324,score_TalkTime=324] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=326,score_TalkTime=326] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=328,score_TalkTime=328] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=330,score_TalkTime=330] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=332,score_TalkTime=332] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=334,score_TalkTime=334] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=336,score_TalkTime=336] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=338,score_TalkTime=338] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=340,score_TalkTime=340] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=342,score_TalkTime=342] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=344,score_TalkTime=344] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=346,score_TalkTime=346] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=348,score_TalkTime=348] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=350,score_TalkTime=350] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=352,score_TalkTime=352] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=354,score_TalkTime=354] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=356,score_TalkTime=356] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=358,score_TalkTime=358] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=360,score_TalkTime=360] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=362,score_TalkTime=362] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=364,score_TalkTime=364] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=366,score_TalkTime=366] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=368,score_TalkTime=368] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=370,score_TalkTime=370] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=372,score_TalkTime=372] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=374,score_TalkTime=374] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=376,score_TalkTime=376] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=378,score_TalkTime=378] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=380,score_TalkTime=380] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=382,score_TalkTime=382] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=384,score_TalkTime=384] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=386,score_TalkTime=386] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=388,score_TalkTime=388] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=390,score_TalkTime=390] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=392,score_TalkTime=392] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=394,score_TalkTime=394] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=396,score_TalkTime=396] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=398,score_TalkTime=398] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=400,score_TalkTime=400] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=402,score_TalkTime=402] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=404,score_TalkTime=404] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=406,score_TalkTime=406] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=408,score_TalkTime=408] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=410,score_TalkTime=410] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=412,score_TalkTime=412] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=414,score_TalkTime=414] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=416,score_TalkTime=416] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=418,score_TalkTime=418] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=420,score_TalkTime=420] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=422,score_TalkTime=422] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=424,score_TalkTime=424] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=426,score_TalkTime=426] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=428,score_TalkTime=428] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=430,score_TalkTime=430] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=432,score_TalkTime=432] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=434,score_TalkTime=434] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=436,score_TalkTime=436] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=438,score_TalkTime=438] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=440,score_TalkTime=440] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=442,score_TalkTime=442] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=444,score_TalkTime=444] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=446,score_TalkTime=446] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=448,score_TalkTime=448] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=450,score_TalkTime=450] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=452,score_TalkTime=452] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=454,score_TalkTime=454] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=456,score_TalkTime=456] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=458,score_TalkTime=458] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=460,score_TalkTime=460] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=462,score_TalkTime=462] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=464,score_TalkTime=464] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=466,score_TalkTime=466] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=468,score_TalkTime=468] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=470,score_TalkTime=470] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=472,score_TalkTime=472] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=474,score_TalkTime=474] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=476,score_TalkTime=476] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=478,score_TalkTime=478] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=480,score_TalkTime=480] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=482,score_TalkTime=482] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=484,score_TalkTime=484] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=486,score_TalkTime=486] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=488,score_TalkTime=488] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=490,score_TalkTime=490] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=492,score_TalkTime=492] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=494,score_TalkTime=494] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=496,score_TalkTime=496] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=498,score_TalkTime=498] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=500,score_TalkTime=500] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=502,score_TalkTime=502] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=504,score_TalkTime=504] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=506,score_TalkTime=506] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=508,score_TalkTime=508] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=510,score_TalkTime=510] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=512,score_TalkTime=512] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=514,score_TalkTime=514] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=516,score_TalkTime=516] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=518,score_TalkTime=518] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=520,score_TalkTime=520] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=522,score_TalkTime=522] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=524,score_TalkTime=524] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=526,score_TalkTime=526] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=528,score_TalkTime=528] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=530,score_TalkTime=530] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=532,score_TalkTime=532] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=534,score_TalkTime=534] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=536,score_TalkTime=536] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=538,score_TalkTime=538] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=540,score_TalkTime=540] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=542,score_TalkTime=542] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=544,score_TalkTime=544] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=546,score_TalkTime=546] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=548,score_TalkTime=548] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=550,score_TalkTime=550] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=552,score_TalkTime=552] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=554,score_TalkTime=554] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=556,score_TalkTime=556] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=558,score_TalkTime=558] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=560,score_TalkTime=560] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=562,score_TalkTime=562] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=564,score_TalkTime=564] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=566,score_TalkTime=566] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=568,score_TalkTime=568] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=570,score_TalkTime=570] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=572,score_TalkTime=572] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=574,score_TalkTime=574] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=576,score_TalkTime=576] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=578,score_TalkTime=578] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=580,score_TalkTime=580] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=582,score_TalkTime=582] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=584,score_TalkTime=584] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=586,score_TalkTime=586] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=588,score_TalkTime=588] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=590,score_TalkTime=590] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=592,score_TalkTime=592] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=594,score_TalkTime=594] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=596,score_TalkTime=596] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=598,score_TalkTime=598] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=600,score_TalkTime=600] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=602,score_TalkTime=602] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=604,score_TalkTime=604] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=606,score_TalkTime=606] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=608,score_TalkTime=608] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=610,score_TalkTime=610] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=612,score_TalkTime=612] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=614,score_TalkTime=614] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=616,score_TalkTime=616] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=618,score_TalkTime=618] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=620,score_TalkTime=620] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=622,score_TalkTime=622] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=624,score_TalkTime=624] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=626,score_TalkTime=626] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=628,score_TalkTime=628] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=630,score_TalkTime=630] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=632,score_TalkTime=632] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=634,score_TalkTime=634] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=636,score_TalkTime=636] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=638,score_TalkTime=638] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=640,score_TalkTime=640] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=642,score_TalkTime=642] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=644,score_TalkTime=644] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=646,score_TalkTime=646] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=648,score_TalkTime=648] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=650,score_TalkTime=650] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=652,score_TalkTime=652] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=654,score_TalkTime=654] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=656,score_TalkTime=656] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=658,score_TalkTime=658] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=660,score_TalkTime=660] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=662,score_TalkTime=662] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=664,score_TalkTime=664] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=666,score_TalkTime=666] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=668,score_TalkTime=668] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=670,score_TalkTime=670] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=672,score_TalkTime=672] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=674,score_TalkTime=674] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=676,score_TalkTime=676] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=678,score_TalkTime=678] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=680,score_TalkTime=680] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=682,score_TalkTime=682] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=684,score_TalkTime=684] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=686,score_TalkTime=686] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=688,score_TalkTime=688] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=690,score_TalkTime=690] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=692,score_TalkTime=692] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=694,score_TalkTime=694] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=696,score_TalkTime=696] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=698,score_TalkTime=698] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=700,score_TalkTime=700] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=702,score_TalkTime=702] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=704,score_TalkTime=704] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=706,score_TalkTime=706] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=708,score_TalkTime=708] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=710,score_TalkTime=710] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=712,score_TalkTime=712] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=714,score_TalkTime=714] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=716,score_TalkTime=716] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=718,score_TalkTime=718] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=720,score_TalkTime=720] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=722,score_TalkTime=722] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=724,score_TalkTime=724] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=726,score_TalkTime=726] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=728,score_TalkTime=728] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=730,score_TalkTime=730] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=732,score_TalkTime=732] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=734,score_TalkTime=734] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=736,score_TalkTime=736] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=738,score_TalkTime=738] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=740,score_TalkTime=740] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=742,score_TalkTime=742] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=744,score_TalkTime=744] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=746,score_TalkTime=746] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=748,score_TalkTime=748] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=750,score_TalkTime=750] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=752,score_TalkTime=752] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=754,score_TalkTime=754] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=756,score_TalkTime=756] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=758,score_TalkTime=758] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=760,score_TalkTime=760] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=762,score_TalkTime=762] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=764,score_TalkTime=764] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=766,score_TalkTime=766] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=768,score_TalkTime=768] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=770,score_TalkTime=770] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=772,score_TalkTime=772] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=774,score_TalkTime=774] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=776,score_TalkTime=776] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=778,score_TalkTime=778] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=780,score_TalkTime=780] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=782,score_TalkTime=782] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=784,score_TalkTime=784] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=786,score_TalkTime=786] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=788,score_TalkTime=788] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=790,score_TalkTime=790] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=792,score_TalkTime=792] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=794,score_TalkTime=794] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=796,score_TalkTime=796] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=798,score_TalkTime=798] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=800,score_TalkTime=800] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=802,score_TalkTime=802] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=804,score_TalkTime=804] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=806,score_TalkTime=806] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=808,score_TalkTime=808] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=810,score_TalkTime=810] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=812,score_TalkTime=812] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=814,score_TalkTime=814] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=816,score_TalkTime=816] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=818,score_TalkTime=818] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=820,score_TalkTime=820] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=822,score_TalkTime=822] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=824,score_TalkTime=824] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=826,score_TalkTime=826] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=828,score_TalkTime=828] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=830,score_TalkTime=830] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=832,score_TalkTime=832] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=834,score_TalkTime=834] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=836,score_TalkTime=836] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=838,score_TalkTime=838] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=840,score_TalkTime=840] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=842,score_TalkTime=842] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=844,score_TalkTime=844] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=846,score_TalkTime=846] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=848,score_TalkTime=848] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=850,score_TalkTime=850] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=852,score_TalkTime=852] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=854,score_TalkTime=854] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=856,score_TalkTime=856] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=858,score_TalkTime=858] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=860,score_TalkTime=860] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=862,score_TalkTime=862] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=864,score_TalkTime=864] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=866,score_TalkTime=866] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=868,score_TalkTime=868] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=870,score_TalkTime=870] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=872,score_TalkTime=872] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=874,score_TalkTime=874] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=876,score_TalkTime=876] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=878,score_TalkTime=878] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=880,score_TalkTime=880] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=882,score_TalkTime=882] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=884,score_TalkTime=884] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=886,score_TalkTime=886] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=888,score_TalkTime=888] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=890,score_TalkTime=890] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=892,score_TalkTime=892] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=894,score_TalkTime=894] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=896,score_TalkTime=896] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=898,score_TalkTime=898] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=900,score_TalkTime=900] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=902,score_TalkTime=902] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=904,score_TalkTime=904] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=906,score_TalkTime=906] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=908,score_TalkTime=908] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=910,score_TalkTime=910] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=912,score_TalkTime=912] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=914,score_TalkTime=914] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=916,score_TalkTime=916] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=918,score_TalkTime=918] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=920,score_TalkTime=920] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=922,score_TalkTime=922] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=924,score_TalkTime=924] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=926,score_TalkTime=926] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=928,score_TalkTime=928] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=930,score_TalkTime=930] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=932,score_TalkTime=932] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=934,score_TalkTime=934] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=936,score_TalkTime=936] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=938,score_TalkTime=938] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=940,score_TalkTime=940] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=942,score_TalkTime=942] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=944,score_TalkTime=944] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=946,score_TalkTime=946] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=948,score_TalkTime=948] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=950,score_TalkTime=950] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=952,score_TalkTime=952] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=954,score_TalkTime=954] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=956,score_TalkTime=956] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=958,score_TalkTime=958] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=960,score_TalkTime=960] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=962,score_TalkTime=962] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=964,score_TalkTime=964] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=966,score_TalkTime=966] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=968,score_TalkTime=968] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=970,score_TalkTime=970] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=972,score_TalkTime=972] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=974,score_TalkTime=974] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=976,score_TalkTime=976] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=978,score_TalkTime=978] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=980,score_TalkTime=980] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=982,score_TalkTime=982] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=984,score_TalkTime=984] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=986,score_TalkTime=986] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=988,score_TalkTime=988] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=990,score_TalkTime=990] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=992,score_TalkTime=992] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=994,score_TalkTime=994] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=996,score_TalkTime=996] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=998,score_TalkTime=998] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1000,score_TalkTime=1000] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1002,score_TalkTime=1002] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1004,score_TalkTime=1004] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1006,score_TalkTime=1006] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1008,score_TalkTime=1008] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1010,score_TalkTime=1010] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1012,score_TalkTime=1012] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1014,score_TalkTime=1014] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1016,score_TalkTime=1016] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1018,score_TalkTime=1018] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1020,score_TalkTime=1020] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1022,score_TalkTime=1022] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1024,score_TalkTime=1024] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1026,score_TalkTime=1026] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1028,score_TalkTime=1028] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1030,score_TalkTime=1030] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1032,score_TalkTime=1032] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1034,score_TalkTime=1034] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1036,score_TalkTime=1036] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1038,score_TalkTime=1038] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1040,score_TalkTime=1040] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1042,score_TalkTime=1042] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1044,score_TalkTime=1044] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1046,score_TalkTime=1046] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1048,score_TalkTime=1048] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1050,score_TalkTime=1050] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1052,score_TalkTime=1052] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1054,score_TalkTime=1054] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1056,score_TalkTime=1056] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1058,score_TalkTime=1058] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1060,score_TalkTime=1060] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1062,score_TalkTime=1062] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1064,score_TalkTime=1064] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1066,score_TalkTime=1066] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1068,score_TalkTime=1068] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1070,score_TalkTime=1070] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1072,score_TalkTime=1072] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1074,score_TalkTime=1074] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1076,score_TalkTime=1076] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1078,score_TalkTime=1078] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1080,score_TalkTime=1080] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1082,score_TalkTime=1082] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1084,score_TalkTime=1084] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1086,score_TalkTime=1086] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1088,score_TalkTime=1088] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1090,score_TalkTime=1090] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1092,score_TalkTime=1092] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1094,score_TalkTime=1094] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1096,score_TalkTime=1096] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1098,score_TalkTime=1098] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1100,score_TalkTime=1100] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1102,score_TalkTime=1102] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1104,score_TalkTime=1104] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1106,score_TalkTime=1106] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1108,score_TalkTime=1108] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1110,score_TalkTime=1110] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1112,score_TalkTime=1112] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1114,score_TalkTime=1114] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1116,score_TalkTime=1116] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1118,score_TalkTime=1118] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1120,score_TalkTime=1120] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1122,score_TalkTime=1122] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1124,score_TalkTime=1124] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1126,score_TalkTime=1126] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1128,score_TalkTime=1128] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1130,score_TalkTime=1130] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1132,score_TalkTime=1132] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1134,score_TalkTime=1134] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1136,score_TalkTime=1136] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1138,score_TalkTime=1138] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1140,score_TalkTime=1140] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1142,score_TalkTime=1142] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1144,score_TalkTime=1144] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1146,score_TalkTime=1146] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1148,score_TalkTime=1148] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1150,score_TalkTime=1150] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1152,score_TalkTime=1152] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1154,score_TalkTime=1154] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1156,score_TalkTime=1156] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1158,score_TalkTime=1158] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1160,score_TalkTime=1160] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1162,score_TalkTime=1162] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1164,score_TalkTime=1164] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1166,score_TalkTime=1166] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1168,score_TalkTime=1168] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1170,score_TalkTime=1170] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1172,score_TalkTime=1172] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1174,score_TalkTime=1174] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1176,score_TalkTime=1176] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1178,score_TalkTime=1178] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1180,score_TalkTime=1180] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1182,score_TalkTime=1182] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1184,score_TalkTime=1184] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1186,score_TalkTime=1186] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1188,score_TalkTime=1188] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1190,score_TalkTime=1190] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1192,score_TalkTime=1192] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1194,score_TalkTime=1194] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1196,score_TalkTime=1196] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1198,score_TalkTime=1198] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1200,score_TalkTime=1200] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1202,score_TalkTime=1202] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1204,score_TalkTime=1204] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1206,score_TalkTime=1206] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1208,score_TalkTime=1208] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1210,score_TalkTime=1210] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1212,score_TalkTime=1212] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1214,score_TalkTime=1214] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1216,score_TalkTime=1216] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1218,score_TalkTime=1218] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1220,score_TalkTime=1220] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1222,score_TalkTime=1222] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1224,score_TalkTime=1224] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1226,score_TalkTime=1226] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1228,score_TalkTime=1228] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1230,score_TalkTime=1230] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1232,score_TalkTime=1232] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1234,score_TalkTime=1234] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1236,score_TalkTime=1236] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1238,score_TalkTime=1238] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1240,score_TalkTime=1240] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1242,score_TalkTime=1242] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1244,score_TalkTime=1244] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1246,score_TalkTime=1246] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1248,score_TalkTime=1248] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1250,score_TalkTime=1250] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1252,score_TalkTime=1252] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1254,score_TalkTime=1254] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1256,score_TalkTime=1256] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1258,score_TalkTime=1258] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1260,score_TalkTime=1260] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1262,score_TalkTime=1262] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1264,score_TalkTime=1264] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1266,score_TalkTime=1266] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1268,score_TalkTime=1268] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1270,score_TalkTime=1270] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1272,score_TalkTime=1272] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1274,score_TalkTime=1274] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1276,score_TalkTime=1276] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1278,score_TalkTime=1278] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1280,score_TalkTime=1280] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1282,score_TalkTime=1282] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1284,score_TalkTime=1284] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1286,score_TalkTime=1286] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1288,score_TalkTime=1288] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1290,score_TalkTime=1290] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1292,score_TalkTime=1292] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1294,score_TalkTime=1294] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1296,score_TalkTime=1296] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1298,score_TalkTime=1298] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1300,score_TalkTime=1300] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1302,score_TalkTime=1302] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1304,score_TalkTime=1304] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1306,score_TalkTime=1306] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1308,score_TalkTime=1308] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1310,score_TalkTime=1310] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1312,score_TalkTime=1312] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1314,score_TalkTime=1314] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1316,score_TalkTime=1316] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1318,score_TalkTime=1318] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1320,score_TalkTime=1320] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1322,score_TalkTime=1322] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1324,score_TalkTime=1324] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1326,score_TalkTime=1326] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1328,score_TalkTime=1328] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1330,score_TalkTime=1330] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1332,score_TalkTime=1332] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1334,score_TalkTime=1334] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1336,score_TalkTime=1336] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1338,score_TalkTime=1338] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1340,score_TalkTime=1340] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1342,score_TalkTime=1342] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1344,score_TalkTime=1344] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1346,score_TalkTime=1346] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1348,score_TalkTime=1348] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1350,score_TalkTime=1350] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1352,score_TalkTime=1352] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1354,score_TalkTime=1354] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1356,score_TalkTime=1356] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1358,score_TalkTime=1358] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1360,score_TalkTime=1360] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1362,score_TalkTime=1362] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1364,score_TalkTime=1364] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1366,score_TalkTime=1366] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1368,score_TalkTime=1368] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1370,score_TalkTime=1370] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1372,score_TalkTime=1372] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1374,score_TalkTime=1374] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1376,score_TalkTime=1376] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1378,score_TalkTime=1378] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1380,score_TalkTime=1380] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1382,score_TalkTime=1382] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1384,score_TalkTime=1384] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1386,score_TalkTime=1386] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1388,score_TalkTime=1388] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1390,score_TalkTime=1390] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1392,score_TalkTime=1392] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1394,score_TalkTime=1394] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1396,score_TalkTime=1396] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1398,score_TalkTime=1398] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1400,score_TalkTime=1400] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1402,score_TalkTime=1402] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1404,score_TalkTime=1404] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1406,score_TalkTime=1406] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1408,score_TalkTime=1408] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1410,score_TalkTime=1410] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1412,score_TalkTime=1412] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1414,score_TalkTime=1414] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1416,score_TalkTime=1416] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1418,score_TalkTime=1418] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1420,score_TalkTime=1420] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1422,score_TalkTime=1422] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1424,score_TalkTime=1424] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1426,score_TalkTime=1426] ~ ~ ~ /function custom:spawnerclone
execute @s[score_TalkTime_min=1428,score_TalkTime=1428] ~ ~ ~ /function custom:spawnerclone
