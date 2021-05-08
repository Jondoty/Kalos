#execute @a ~ ~ ~ execute @e[r=50,type=parrot] ~ ~ ~ function custom:wildbirds

#/summon minecraft:parrot ~ ~ ~ {Invulnerable:1,PersistenceRequired:1,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:999999}],Passengers:[{id:"pixelmon:statue",ndex:661s,gr:7,Animate:1b}]}

#Adds tags tp specific species of birds to execute commands on
execute @s ~ ~ ~ scoreboard players tag @e[r=3,type=pixelmon:statue,tag=!NPCBird] add NPCBird {ndex:661s}
execute @s ~ ~ ~ scoreboard players tag @e[r=3,type=pixelmon:statue,tag=!NPCBird] add NPCBird {ndex:662s}

#Applies potion effects and animation tag on statues if not present
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird] {Animate:1b}
effect @s[type=parrot] minecraft:invisibility 100000 1 true
effect @s[type=parrot] minecraft:health_boost 100000 15 true
effect @s[type=parrot] minecraft:resistance 100000 255 true



#Switches animations depending on if it's sitting on ground or flying

execute @s ~ ~-1 ~ detect ~ ~ ~ minecraft:air 0 scoreboard players tag @s add Air
execute @s[tag=!Air] ~ ~ ~ entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird] {statueAnimation:"idle"}
execute @s[tag=Air] ~ ~ ~ entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird] {statueAnimation:"walk"}
scoreboard players tag @s remove Air


#runs RNG, plays Pokemon cry if successful
execute @a[r=10,c=1,type=player] ~ ~ ~ scoreboard players set @e[x=-687,y=100,z=1376,dx=2,dy=4,type=armor_stand] rng 0
execute @a[r=10,c=1,type=player] ~ ~ ~ scoreboard players add @r[x=-687,y=100,z=1376,dx=2,dy=4,type=armor_stand] rng 1
execute @a[r=10,c=1,type=player] ~ ~ ~ scoreboard players add @r[x=-687,y=100,z=1376,dx=2,dy=4,type=armor_stand] rng 2
execute @a[r=10,c=1,type=player] ~ ~ ~ scoreboard players add @r[x=-687,y=100,z=1376,dx=2,dy=4,type=armor_stand] rng 4
execute @a[r=10,c=1,type=player] ~ ~ ~ scoreboard players add @r[x=-687,y=100,z=1376,dx=2,dy=4,type=armor_stand] rng 8
execute @a[r=10,c=1,type=player] ~ ~ ~ scoreboard players add @r[x=-687,y=100,z=1376,dx=2,dy=4,type=armor_stand] rng 16
execute @a[r=10,c=1,type=player] ~ ~ ~ scoreboard players add @r[x=-687,y=100,z=1376,dx=2,dy=4,type=armor_stand] rng 32
execute @a[r=10,c=1,type=player] ~ ~ ~ scoreboard players add @r[x=-687,y=100,z=1376,dx=2,dy=4,type=armor_stand] rng 64

scoreboard players operation @s rng = @e[x=-687,y=100,z=1376,dy=3,type=armor_stand] rng
execute @s[score_rng_min=1,score_rng=20] ~ ~ ~ playsound fletchling ambient @a[r=10] ~ ~ ~ 1 1 1

scoreboard players set @s rng 0


#Generates a Parrot's rotational score
scoreboard players set @s[rym=-180,ry=-180] Rotation -180
scoreboard players set @s[rym=-179,ry=-179] Rotation -179
scoreboard players set @s[rym=-178,ry=-178] Rotation -178
scoreboard players set @s[rym=-177,ry=-177] Rotation -177
scoreboard players set @s[rym=-176,ry=-176] Rotation -176
scoreboard players set @s[rym=-175,ry=-175] Rotation -175
scoreboard players set @s[rym=-174,ry=-174] Rotation -174
scoreboard players set @s[rym=-173,ry=-173] Rotation -173
scoreboard players set @s[rym=-172,ry=-172] Rotation -172
scoreboard players set @s[rym=-171,ry=-171] Rotation -171
scoreboard players set @s[rym=-170,ry=-170] Rotation -170
scoreboard players set @s[rym=-169,ry=-169] Rotation -169
scoreboard players set @s[rym=-168,ry=-168] Rotation -168
scoreboard players set @s[rym=-167,ry=-167] Rotation -167
scoreboard players set @s[rym=-166,ry=-166] Rotation -166
scoreboard players set @s[rym=-165,ry=-165] Rotation -165
scoreboard players set @s[rym=-164,ry=-164] Rotation -164
scoreboard players set @s[rym=-163,ry=-163] Rotation -163
scoreboard players set @s[rym=-162,ry=-162] Rotation -162
scoreboard players set @s[rym=-161,ry=-161] Rotation -161
scoreboard players set @s[rym=-160,ry=-160] Rotation -160
scoreboard players set @s[rym=-159,ry=-159] Rotation -159
scoreboard players set @s[rym=-158,ry=-158] Rotation -158
scoreboard players set @s[rym=-157,ry=-157] Rotation -157
scoreboard players set @s[rym=-156,ry=-156] Rotation -156
scoreboard players set @s[rym=-155,ry=-155] Rotation -155
scoreboard players set @s[rym=-154,ry=-154] Rotation -154
scoreboard players set @s[rym=-153,ry=-153] Rotation -153
scoreboard players set @s[rym=-152,ry=-152] Rotation -152
scoreboard players set @s[rym=-151,ry=-151] Rotation -151
scoreboard players set @s[rym=-150,ry=-150] Rotation -150
scoreboard players set @s[rym=-149,ry=-149] Rotation -149
scoreboard players set @s[rym=-148,ry=-148] Rotation -148
scoreboard players set @s[rym=-147,ry=-147] Rotation -147
scoreboard players set @s[rym=-146,ry=-146] Rotation -146
scoreboard players set @s[rym=-145,ry=-145] Rotation -145
scoreboard players set @s[rym=-144,ry=-144] Rotation -144
scoreboard players set @s[rym=-143,ry=-143] Rotation -143
scoreboard players set @s[rym=-142,ry=-142] Rotation -142
scoreboard players set @s[rym=-141,ry=-141] Rotation -141
scoreboard players set @s[rym=-140,ry=-140] Rotation -140
scoreboard players set @s[rym=-139,ry=-139] Rotation -139
scoreboard players set @s[rym=-138,ry=-138] Rotation -138
scoreboard players set @s[rym=-137,ry=-137] Rotation -137
scoreboard players set @s[rym=-136,ry=-136] Rotation -136
scoreboard players set @s[rym=-135,ry=-135] Rotation -135
scoreboard players set @s[rym=-134,ry=-134] Rotation -134
scoreboard players set @s[rym=-133,ry=-133] Rotation -133
scoreboard players set @s[rym=-132,ry=-132] Rotation -132
scoreboard players set @s[rym=-131,ry=-131] Rotation -131
scoreboard players set @s[rym=-130,ry=-130] Rotation -130
scoreboard players set @s[rym=-129,ry=-129] Rotation -129
scoreboard players set @s[rym=-128,ry=-128] Rotation -128
scoreboard players set @s[rym=-127,ry=-127] Rotation -127
scoreboard players set @s[rym=-126,ry=-126] Rotation -126
scoreboard players set @s[rym=-125,ry=-125] Rotation -125
scoreboard players set @s[rym=-124,ry=-124] Rotation -124
scoreboard players set @s[rym=-123,ry=-123] Rotation -123
scoreboard players set @s[rym=-122,ry=-122] Rotation -122
scoreboard players set @s[rym=-121,ry=-121] Rotation -121
scoreboard players set @s[rym=-120,ry=-120] Rotation -120
scoreboard players set @s[rym=-119,ry=-119] Rotation -119
scoreboard players set @s[rym=-118,ry=-118] Rotation -118
scoreboard players set @s[rym=-117,ry=-117] Rotation -117
scoreboard players set @s[rym=-116,ry=-116] Rotation -116
scoreboard players set @s[rym=-115,ry=-115] Rotation -115
scoreboard players set @s[rym=-114,ry=-114] Rotation -114
scoreboard players set @s[rym=-113,ry=-113] Rotation -113
scoreboard players set @s[rym=-112,ry=-112] Rotation -112
scoreboard players set @s[rym=-111,ry=-111] Rotation -111
scoreboard players set @s[rym=-110,ry=-110] Rotation -110
scoreboard players set @s[rym=-109,ry=-109] Rotation -109
scoreboard players set @s[rym=-108,ry=-108] Rotation -108
scoreboard players set @s[rym=-107,ry=-107] Rotation -107
scoreboard players set @s[rym=-106,ry=-106] Rotation -106
scoreboard players set @s[rym=-105,ry=-105] Rotation -105
scoreboard players set @s[rym=-104,ry=-104] Rotation -104
scoreboard players set @s[rym=-103,ry=-103] Rotation -103
scoreboard players set @s[rym=-102,ry=-102] Rotation -102
scoreboard players set @s[rym=-101,ry=-101] Rotation -101
scoreboard players set @s[rym=-100,ry=-100] Rotation -100
scoreboard players set @s[rym=-99,ry=-99] Rotation -99
scoreboard players set @s[rym=-98,ry=-98] Rotation -98
scoreboard players set @s[rym=-97,ry=-97] Rotation -97
scoreboard players set @s[rym=-96,ry=-96] Rotation -96
scoreboard players set @s[rym=-95,ry=-95] Rotation -95
scoreboard players set @s[rym=-94,ry=-94] Rotation -94
scoreboard players set @s[rym=-93,ry=-93] Rotation -93
scoreboard players set @s[rym=-92,ry=-92] Rotation -92
scoreboard players set @s[rym=-91,ry=-91] Rotation -91
scoreboard players set @s[rym=-90,ry=-90] Rotation -90
scoreboard players set @s[rym=-89,ry=-89] Rotation -89
scoreboard players set @s[rym=-88,ry=-88] Rotation -88
scoreboard players set @s[rym=-87,ry=-87] Rotation -87
scoreboard players set @s[rym=-86,ry=-86] Rotation -86
scoreboard players set @s[rym=-85,ry=-85] Rotation -85
scoreboard players set @s[rym=-84,ry=-84] Rotation -84
scoreboard players set @s[rym=-83,ry=-83] Rotation -83
scoreboard players set @s[rym=-82,ry=-82] Rotation -82
scoreboard players set @s[rym=-81,ry=-81] Rotation -81
scoreboard players set @s[rym=-80,ry=-80] Rotation -80
scoreboard players set @s[rym=-79,ry=-79] Rotation -79
scoreboard players set @s[rym=-78,ry=-78] Rotation -78
scoreboard players set @s[rym=-77,ry=-77] Rotation -77
scoreboard players set @s[rym=-76,ry=-76] Rotation -76
scoreboard players set @s[rym=-75,ry=-75] Rotation -75
scoreboard players set @s[rym=-74,ry=-74] Rotation -74
scoreboard players set @s[rym=-73,ry=-73] Rotation -73
scoreboard players set @s[rym=-72,ry=-72] Rotation -72
scoreboard players set @s[rym=-71,ry=-71] Rotation -71
scoreboard players set @s[rym=-70,ry=-70] Rotation -70
scoreboard players set @s[rym=-69,ry=-69] Rotation -69
scoreboard players set @s[rym=-68,ry=-68] Rotation -68
scoreboard players set @s[rym=-67,ry=-67] Rotation -67
scoreboard players set @s[rym=-66,ry=-66] Rotation -66
scoreboard players set @s[rym=-65,ry=-65] Rotation -65
scoreboard players set @s[rym=-64,ry=-64] Rotation -64
scoreboard players set @s[rym=-63,ry=-63] Rotation -63
scoreboard players set @s[rym=-62,ry=-62] Rotation -62
scoreboard players set @s[rym=-61,ry=-61] Rotation -61
scoreboard players set @s[rym=-60,ry=-60] Rotation -60
scoreboard players set @s[rym=-59,ry=-59] Rotation -59
scoreboard players set @s[rym=-58,ry=-58] Rotation -58
scoreboard players set @s[rym=-57,ry=-57] Rotation -57
scoreboard players set @s[rym=-56,ry=-56] Rotation -56
scoreboard players set @s[rym=-55,ry=-55] Rotation -55
scoreboard players set @s[rym=-54,ry=-54] Rotation -54
scoreboard players set @s[rym=-53,ry=-53] Rotation -53
scoreboard players set @s[rym=-52,ry=-52] Rotation -52
scoreboard players set @s[rym=-51,ry=-51] Rotation -51
scoreboard players set @s[rym=-50,ry=-50] Rotation -50
scoreboard players set @s[rym=-49,ry=-49] Rotation -49
scoreboard players set @s[rym=-48,ry=-48] Rotation -48
scoreboard players set @s[rym=-47,ry=-47] Rotation -47
scoreboard players set @s[rym=-46,ry=-46] Rotation -46
scoreboard players set @s[rym=-45,ry=-45] Rotation -45
scoreboard players set @s[rym=-44,ry=-44] Rotation -44
scoreboard players set @s[rym=-43,ry=-43] Rotation -43
scoreboard players set @s[rym=-42,ry=-42] Rotation -42
scoreboard players set @s[rym=-41,ry=-41] Rotation -41
scoreboard players set @s[rym=-40,ry=-40] Rotation -40
scoreboard players set @s[rym=-39,ry=-39] Rotation -39
scoreboard players set @s[rym=-38,ry=-38] Rotation -38
scoreboard players set @s[rym=-37,ry=-37] Rotation -37
scoreboard players set @s[rym=-36,ry=-36] Rotation -36
scoreboard players set @s[rym=-35,ry=-35] Rotation -35
scoreboard players set @s[rym=-34,ry=-34] Rotation -34
scoreboard players set @s[rym=-33,ry=-33] Rotation -33
scoreboard players set @s[rym=-32,ry=-32] Rotation -32
scoreboard players set @s[rym=-31,ry=-31] Rotation -31
scoreboard players set @s[rym=-30,ry=-30] Rotation -30
scoreboard players set @s[rym=-29,ry=-29] Rotation -29
scoreboard players set @s[rym=-28,ry=-28] Rotation -28
scoreboard players set @s[rym=-27,ry=-27] Rotation -27
scoreboard players set @s[rym=-26,ry=-26] Rotation -26
scoreboard players set @s[rym=-25,ry=-25] Rotation -25
scoreboard players set @s[rym=-24,ry=-24] Rotation -24
scoreboard players set @s[rym=-23,ry=-23] Rotation -23
scoreboard players set @s[rym=-22,ry=-22] Rotation -22
scoreboard players set @s[rym=-21,ry=-21] Rotation -21
scoreboard players set @s[rym=-20,ry=-20] Rotation -20
scoreboard players set @s[rym=-19,ry=-19] Rotation -19
scoreboard players set @s[rym=-18,ry=-18] Rotation -18
scoreboard players set @s[rym=-17,ry=-17] Rotation -17
scoreboard players set @s[rym=-16,ry=-16] Rotation -16
scoreboard players set @s[rym=-15,ry=-15] Rotation -15
scoreboard players set @s[rym=-14,ry=-14] Rotation -14
scoreboard players set @s[rym=-13,ry=-13] Rotation -13
scoreboard players set @s[rym=-12,ry=-12] Rotation -12
scoreboard players set @s[rym=-11,ry=-11] Rotation -11
scoreboard players set @s[rym=-10,ry=-10] Rotation -10
scoreboard players set @s[rym=-9,ry=-9] Rotation -9
scoreboard players set @s[rym=-8,ry=-8] Rotation -8
scoreboard players set @s[rym=-7,ry=-7] Rotation -7
scoreboard players set @s[rym=-6,ry=-6] Rotation -6
scoreboard players set @s[rym=-5,ry=-5] Rotation -5
scoreboard players set @s[rym=-4,ry=-4] Rotation -4
scoreboard players set @s[rym=-3,ry=-3] Rotation -3
scoreboard players set @s[rym=-2,ry=-2] Rotation -2
scoreboard players set @s[rym=-1,ry=-1] Rotation -1
scoreboard players set @s[rym=0,ry=0] Rotation 0
scoreboard players set @s[rym=1,ry=1] Rotation 1
scoreboard players set @s[rym=2,ry=2] Rotation 2
scoreboard players set @s[rym=3,ry=3] Rotation 3
scoreboard players set @s[rym=4,ry=4] Rotation 4
scoreboard players set @s[rym=5,ry=5] Rotation 5
scoreboard players set @s[rym=6,ry=6] Rotation 6
scoreboard players set @s[rym=7,ry=7] Rotation 7
scoreboard players set @s[rym=8,ry=8] Rotation 8
scoreboard players set @s[rym=9,ry=9] Rotation 9
scoreboard players set @s[rym=10,ry=10] Rotation 10
scoreboard players set @s[rym=11,ry=11] Rotation 11
scoreboard players set @s[rym=12,ry=12] Rotation 12
scoreboard players set @s[rym=13,ry=13] Rotation 13
scoreboard players set @s[rym=14,ry=14] Rotation 14
scoreboard players set @s[rym=15,ry=15] Rotation 15
scoreboard players set @s[rym=16,ry=16] Rotation 16
scoreboard players set @s[rym=17,ry=17] Rotation 17
scoreboard players set @s[rym=18,ry=18] Rotation 18
scoreboard players set @s[rym=19,ry=19] Rotation 19
scoreboard players set @s[rym=20,ry=20] Rotation 20
scoreboard players set @s[rym=21,ry=21] Rotation 21
scoreboard players set @s[rym=22,ry=22] Rotation 22
scoreboard players set @s[rym=23,ry=23] Rotation 23
scoreboard players set @s[rym=24,ry=24] Rotation 24
scoreboard players set @s[rym=25,ry=25] Rotation 25
scoreboard players set @s[rym=26,ry=26] Rotation 26
scoreboard players set @s[rym=27,ry=27] Rotation 27
scoreboard players set @s[rym=28,ry=28] Rotation 28
scoreboard players set @s[rym=29,ry=29] Rotation 29
scoreboard players set @s[rym=30,ry=30] Rotation 30
scoreboard players set @s[rym=31,ry=31] Rotation 31
scoreboard players set @s[rym=32,ry=32] Rotation 32
scoreboard players set @s[rym=33,ry=33] Rotation 33
scoreboard players set @s[rym=34,ry=34] Rotation 34
scoreboard players set @s[rym=35,ry=35] Rotation 35
scoreboard players set @s[rym=36,ry=36] Rotation 36
scoreboard players set @s[rym=37,ry=37] Rotation 37
scoreboard players set @s[rym=38,ry=38] Rotation 38
scoreboard players set @s[rym=39,ry=39] Rotation 39
scoreboard players set @s[rym=40,ry=40] Rotation 40
scoreboard players set @s[rym=41,ry=41] Rotation 41
scoreboard players set @s[rym=42,ry=42] Rotation 42
scoreboard players set @s[rym=43,ry=43] Rotation 43
scoreboard players set @s[rym=44,ry=44] Rotation 44
scoreboard players set @s[rym=45,ry=45] Rotation 45
scoreboard players set @s[rym=46,ry=46] Rotation 46
scoreboard players set @s[rym=47,ry=47] Rotation 47
scoreboard players set @s[rym=48,ry=48] Rotation 48
scoreboard players set @s[rym=49,ry=49] Rotation 49
scoreboard players set @s[rym=50,ry=50] Rotation 50
scoreboard players set @s[rym=51,ry=51] Rotation 51
scoreboard players set @s[rym=52,ry=52] Rotation 52
scoreboard players set @s[rym=53,ry=53] Rotation 53
scoreboard players set @s[rym=54,ry=54] Rotation 54
scoreboard players set @s[rym=55,ry=55] Rotation 55
scoreboard players set @s[rym=56,ry=56] Rotation 56
scoreboard players set @s[rym=57,ry=57] Rotation 57
scoreboard players set @s[rym=58,ry=58] Rotation 58
scoreboard players set @s[rym=59,ry=59] Rotation 59
scoreboard players set @s[rym=60,ry=60] Rotation 60
scoreboard players set @s[rym=61,ry=61] Rotation 61
scoreboard players set @s[rym=62,ry=62] Rotation 62
scoreboard players set @s[rym=63,ry=63] Rotation 63
scoreboard players set @s[rym=64,ry=64] Rotation 64
scoreboard players set @s[rym=65,ry=65] Rotation 65
scoreboard players set @s[rym=66,ry=66] Rotation 66
scoreboard players set @s[rym=67,ry=67] Rotation 67
scoreboard players set @s[rym=68,ry=68] Rotation 68
scoreboard players set @s[rym=69,ry=69] Rotation 69
scoreboard players set @s[rym=70,ry=70] Rotation 70
scoreboard players set @s[rym=71,ry=71] Rotation 71
scoreboard players set @s[rym=72,ry=72] Rotation 72
scoreboard players set @s[rym=73,ry=73] Rotation 73
scoreboard players set @s[rym=74,ry=74] Rotation 74
scoreboard players set @s[rym=75,ry=75] Rotation 75
scoreboard players set @s[rym=76,ry=76] Rotation 76
scoreboard players set @s[rym=77,ry=77] Rotation 77
scoreboard players set @s[rym=78,ry=78] Rotation 78
scoreboard players set @s[rym=79,ry=79] Rotation 79
scoreboard players set @s[rym=80,ry=80] Rotation 80
scoreboard players set @s[rym=81,ry=81] Rotation 81
scoreboard players set @s[rym=82,ry=82] Rotation 82
scoreboard players set @s[rym=83,ry=83] Rotation 83
scoreboard players set @s[rym=84,ry=84] Rotation 84
scoreboard players set @s[rym=85,ry=85] Rotation 85
scoreboard players set @s[rym=86,ry=86] Rotation 86
scoreboard players set @s[rym=87,ry=87] Rotation 87
scoreboard players set @s[rym=88,ry=88] Rotation 88
scoreboard players set @s[rym=89,ry=89] Rotation 89
scoreboard players set @s[rym=90,ry=90] Rotation 90
scoreboard players set @s[rym=91,ry=91] Rotation 91
scoreboard players set @s[rym=92,ry=92] Rotation 92
scoreboard players set @s[rym=93,ry=93] Rotation 93
scoreboard players set @s[rym=94,ry=94] Rotation 94
scoreboard players set @s[rym=95,ry=95] Rotation 95
scoreboard players set @s[rym=96,ry=96] Rotation 96
scoreboard players set @s[rym=97,ry=97] Rotation 97
scoreboard players set @s[rym=98,ry=98] Rotation 98
scoreboard players set @s[rym=99,ry=99] Rotation 99
scoreboard players set @s[rym=100,ry=100] Rotation 100
scoreboard players set @s[rym=101,ry=101] Rotation 101
scoreboard players set @s[rym=102,ry=102] Rotation 102
scoreboard players set @s[rym=103,ry=103] Rotation 103
scoreboard players set @s[rym=104,ry=104] Rotation 104
scoreboard players set @s[rym=105,ry=105] Rotation 105
scoreboard players set @s[rym=106,ry=106] Rotation 106
scoreboard players set @s[rym=107,ry=107] Rotation 107
scoreboard players set @s[rym=108,ry=108] Rotation 108
scoreboard players set @s[rym=109,ry=109] Rotation 109
scoreboard players set @s[rym=110,ry=110] Rotation 110
scoreboard players set @s[rym=111,ry=111] Rotation 111
scoreboard players set @s[rym=112,ry=112] Rotation 112
scoreboard players set @s[rym=113,ry=113] Rotation 113
scoreboard players set @s[rym=114,ry=114] Rotation 114
scoreboard players set @s[rym=115,ry=115] Rotation 115
scoreboard players set @s[rym=116,ry=116] Rotation 116
scoreboard players set @s[rym=117,ry=117] Rotation 117
scoreboard players set @s[rym=118,ry=118] Rotation 118
scoreboard players set @s[rym=119,ry=119] Rotation 119
scoreboard players set @s[rym=120,ry=120] Rotation 120
scoreboard players set @s[rym=121,ry=121] Rotation 121
scoreboard players set @s[rym=122,ry=122] Rotation 122
scoreboard players set @s[rym=123,ry=123] Rotation 123
scoreboard players set @s[rym=124,ry=124] Rotation 124
scoreboard players set @s[rym=125,ry=125] Rotation 125
scoreboard players set @s[rym=126,ry=126] Rotation 126
scoreboard players set @s[rym=127,ry=127] Rotation 127
scoreboard players set @s[rym=128,ry=128] Rotation 128
scoreboard players set @s[rym=129,ry=129] Rotation 129
scoreboard players set @s[rym=130,ry=130] Rotation 130
scoreboard players set @s[rym=131,ry=131] Rotation 131
scoreboard players set @s[rym=132,ry=132] Rotation 132
scoreboard players set @s[rym=133,ry=133] Rotation 133
scoreboard players set @s[rym=134,ry=134] Rotation 134
scoreboard players set @s[rym=135,ry=135] Rotation 135
scoreboard players set @s[rym=136,ry=136] Rotation 136
scoreboard players set @s[rym=137,ry=137] Rotation 137
scoreboard players set @s[rym=138,ry=138] Rotation 138
scoreboard players set @s[rym=139,ry=139] Rotation 139
scoreboard players set @s[rym=140,ry=140] Rotation 140
scoreboard players set @s[rym=141,ry=141] Rotation 141
scoreboard players set @s[rym=142,ry=142] Rotation 142
scoreboard players set @s[rym=143,ry=143] Rotation 143
scoreboard players set @s[rym=144,ry=144] Rotation 144
scoreboard players set @s[rym=145,ry=145] Rotation 145
scoreboard players set @s[rym=146,ry=146] Rotation 146
scoreboard players set @s[rym=147,ry=147] Rotation 147
scoreboard players set @s[rym=148,ry=148] Rotation 148
scoreboard players set @s[rym=149,ry=149] Rotation 149
scoreboard players set @s[rym=150,ry=150] Rotation 150
scoreboard players set @s[rym=151,ry=151] Rotation 151
scoreboard players set @s[rym=152,ry=152] Rotation 152
scoreboard players set @s[rym=153,ry=153] Rotation 153
scoreboard players set @s[rym=154,ry=154] Rotation 154
scoreboard players set @s[rym=155,ry=155] Rotation 155
scoreboard players set @s[rym=156,ry=156] Rotation 156
scoreboard players set @s[rym=157,ry=157] Rotation 157
scoreboard players set @s[rym=158,ry=158] Rotation 158
scoreboard players set @s[rym=159,ry=159] Rotation 159
scoreboard players set @s[rym=160,ry=160] Rotation 160
scoreboard players set @s[rym=161,ry=161] Rotation 161
scoreboard players set @s[rym=162,ry=162] Rotation 162
scoreboard players set @s[rym=163,ry=163] Rotation 163
scoreboard players set @s[rym=164,ry=164] Rotation 164
scoreboard players set @s[rym=165,ry=165] Rotation 165
scoreboard players set @s[rym=166,ry=166] Rotation 166
scoreboard players set @s[rym=167,ry=167] Rotation 167
scoreboard players set @s[rym=168,ry=168] Rotation 168
scoreboard players set @s[rym=169,ry=169] Rotation 169
scoreboard players set @s[rym=170,ry=170] Rotation 170
scoreboard players set @s[rym=171,ry=171] Rotation 171
scoreboard players set @s[rym=172,ry=172] Rotation 172
scoreboard players set @s[rym=173,ry=173] Rotation 173
scoreboard players set @s[rym=174,ry=174] Rotation 174
scoreboard players set @s[rym=175,ry=175] Rotation 175
scoreboard players set @s[rym=176,ry=176] Rotation 176
scoreboard players set @s[rym=177,ry=177] Rotation 177
scoreboard players set @s[rym=178,ry=178] Rotation 178
scoreboard players set @s[rym=179,ry=179] Rotation 179
scoreboard players set @s[rym=180,ry=180] Rotation 180



#Operations the parrot's score onto the fletchling statue
scoreboard players operation @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird] Rotation = @s Rotation

#Rotates the Fletchling based on its score
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-180,score_Rotation=-180] {StartingYaw:-180f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-179,score_Rotation=-179] {StartingYaw:-179f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-178,score_Rotation=-178] {StartingYaw:-178f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-177,score_Rotation=-177] {StartingYaw:-177f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-176,score_Rotation=-176] {StartingYaw:-176f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-175,score_Rotation=-175] {StartingYaw:-175f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-174,score_Rotation=-174] {StartingYaw:-174f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-173,score_Rotation=-173] {StartingYaw:-173f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-172,score_Rotation=-172] {StartingYaw:-172f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-171,score_Rotation=-171] {StartingYaw:-171f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-170,score_Rotation=-170] {StartingYaw:-170f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-169,score_Rotation=-169] {StartingYaw:-169f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-168,score_Rotation=-168] {StartingYaw:-168f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-167,score_Rotation=-167] {StartingYaw:-167f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-166,score_Rotation=-166] {StartingYaw:-166f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-165,score_Rotation=-165] {StartingYaw:-165f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-164,score_Rotation=-164] {StartingYaw:-164f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-163,score_Rotation=-163] {StartingYaw:-163f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-162,score_Rotation=-162] {StartingYaw:-162f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-161,score_Rotation=-161] {StartingYaw:-161f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-160,score_Rotation=-160] {StartingYaw:-160f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-159,score_Rotation=-159] {StartingYaw:-159f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-158,score_Rotation=-158] {StartingYaw:-158f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-157,score_Rotation=-157] {StartingYaw:-157f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-156,score_Rotation=-156] {StartingYaw:-156f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-155,score_Rotation=-155] {StartingYaw:-155f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-154,score_Rotation=-154] {StartingYaw:-154f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-153,score_Rotation=-153] {StartingYaw:-153f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-152,score_Rotation=-152] {StartingYaw:-152f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-151,score_Rotation=-151] {StartingYaw:-151f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-150,score_Rotation=-150] {StartingYaw:-150f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-149,score_Rotation=-149] {StartingYaw:-149f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-148,score_Rotation=-148] {StartingYaw:-148f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-147,score_Rotation=-147] {StartingYaw:-147f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-146,score_Rotation=-146] {StartingYaw:-146f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-145,score_Rotation=-145] {StartingYaw:-145f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-144,score_Rotation=-144] {StartingYaw:-144f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-143,score_Rotation=-143] {StartingYaw:-143f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-142,score_Rotation=-142] {StartingYaw:-142f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-141,score_Rotation=-141] {StartingYaw:-141f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-140,score_Rotation=-140] {StartingYaw:-140f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-139,score_Rotation=-139] {StartingYaw:-139f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-138,score_Rotation=-138] {StartingYaw:-138f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-137,score_Rotation=-137] {StartingYaw:-137f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-136,score_Rotation=-136] {StartingYaw:-136f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-135,score_Rotation=-135] {StartingYaw:-135f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-134,score_Rotation=-134] {StartingYaw:-134f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-133,score_Rotation=-133] {StartingYaw:-133f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-132,score_Rotation=-132] {StartingYaw:-132f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-131,score_Rotation=-131] {StartingYaw:-131f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-130,score_Rotation=-130] {StartingYaw:-130f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-129,score_Rotation=-129] {StartingYaw:-129f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-128,score_Rotation=-128] {StartingYaw:-128f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-127,score_Rotation=-127] {StartingYaw:-127f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-126,score_Rotation=-126] {StartingYaw:-126f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-125,score_Rotation=-125] {StartingYaw:-125f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-124,score_Rotation=-124] {StartingYaw:-124f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-123,score_Rotation=-123] {StartingYaw:-123f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-122,score_Rotation=-122] {StartingYaw:-122f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-121,score_Rotation=-121] {StartingYaw:-121f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-120,score_Rotation=-120] {StartingYaw:-120f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-119,score_Rotation=-119] {StartingYaw:-119f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-118,score_Rotation=-118] {StartingYaw:-118f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-117,score_Rotation=-117] {StartingYaw:-117f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-116,score_Rotation=-116] {StartingYaw:-116f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-115,score_Rotation=-115] {StartingYaw:-115f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-114,score_Rotation=-114] {StartingYaw:-114f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-113,score_Rotation=-113] {StartingYaw:-113f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-112,score_Rotation=-112] {StartingYaw:-112f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-111,score_Rotation=-111] {StartingYaw:-111f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-110,score_Rotation=-110] {StartingYaw:-110f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-109,score_Rotation=-109] {StartingYaw:-109f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-108,score_Rotation=-108] {StartingYaw:-108f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-107,score_Rotation=-107] {StartingYaw:-107f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-106,score_Rotation=-106] {StartingYaw:-106f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-105,score_Rotation=-105] {StartingYaw:-105f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-104,score_Rotation=-104] {StartingYaw:-104f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-103,score_Rotation=-103] {StartingYaw:-103f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-102,score_Rotation=-102] {StartingYaw:-102f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-101,score_Rotation=-101] {StartingYaw:-101f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-100,score_Rotation=-100] {StartingYaw:-100f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-99,score_Rotation=-99] {StartingYaw:-99f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-98,score_Rotation=-98] {StartingYaw:-98f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-97,score_Rotation=-97] {StartingYaw:-97f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-96,score_Rotation=-96] {StartingYaw:-96f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-95,score_Rotation=-95] {StartingYaw:-95f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-94,score_Rotation=-94] {StartingYaw:-94f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-93,score_Rotation=-93] {StartingYaw:-93f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-92,score_Rotation=-92] {StartingYaw:-92f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-91,score_Rotation=-91] {StartingYaw:-91f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-90,score_Rotation=-90] {StartingYaw:-90f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-89,score_Rotation=-89] {StartingYaw:-89f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-88,score_Rotation=-88] {StartingYaw:-88f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-87,score_Rotation=-87] {StartingYaw:-87f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-86,score_Rotation=-86] {StartingYaw:-86f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-85,score_Rotation=-85] {StartingYaw:-85f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-84,score_Rotation=-84] {StartingYaw:-84f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-83,score_Rotation=-83] {StartingYaw:-83f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-82,score_Rotation=-82] {StartingYaw:-82f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-81,score_Rotation=-81] {StartingYaw:-81f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-80,score_Rotation=-80] {StartingYaw:-80f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-79,score_Rotation=-79] {StartingYaw:-79f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-78,score_Rotation=-78] {StartingYaw:-78f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-77,score_Rotation=-77] {StartingYaw:-77f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-76,score_Rotation=-76] {StartingYaw:-76f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-75,score_Rotation=-75] {StartingYaw:-75f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-74,score_Rotation=-74] {StartingYaw:-74f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-73,score_Rotation=-73] {StartingYaw:-73f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-72,score_Rotation=-72] {StartingYaw:-72f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-71,score_Rotation=-71] {StartingYaw:-71f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-70,score_Rotation=-70] {StartingYaw:-70f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-69,score_Rotation=-69] {StartingYaw:-69f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-68,score_Rotation=-68] {StartingYaw:-68f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-67,score_Rotation=-67] {StartingYaw:-67f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-66,score_Rotation=-66] {StartingYaw:-66f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-65,score_Rotation=-65] {StartingYaw:-65f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-64,score_Rotation=-64] {StartingYaw:-64f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-63,score_Rotation=-63] {StartingYaw:-63f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-62,score_Rotation=-62] {StartingYaw:-62f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-61,score_Rotation=-61] {StartingYaw:-61f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-60,score_Rotation=-60] {StartingYaw:-60f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-59,score_Rotation=-59] {StartingYaw:-59f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-58,score_Rotation=-58] {StartingYaw:-58f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-57,score_Rotation=-57] {StartingYaw:-57f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-56,score_Rotation=-56] {StartingYaw:-56f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-55,score_Rotation=-55] {StartingYaw:-55f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-54,score_Rotation=-54] {StartingYaw:-54f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-53,score_Rotation=-53] {StartingYaw:-53f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-52,score_Rotation=-52] {StartingYaw:-52f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-51,score_Rotation=-51] {StartingYaw:-51f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-50,score_Rotation=-50] {StartingYaw:-50f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-49,score_Rotation=-49] {StartingYaw:-49f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-48,score_Rotation=-48] {StartingYaw:-48f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-47,score_Rotation=-47] {StartingYaw:-47f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-46,score_Rotation=-46] {StartingYaw:-46f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-45,score_Rotation=-45] {StartingYaw:-45f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-44,score_Rotation=-44] {StartingYaw:-44f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-43,score_Rotation=-43] {StartingYaw:-43f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-42,score_Rotation=-42] {StartingYaw:-42f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-41,score_Rotation=-41] {StartingYaw:-41f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-40,score_Rotation=-40] {StartingYaw:-40f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-39,score_Rotation=-39] {StartingYaw:-39f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-38,score_Rotation=-38] {StartingYaw:-38f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-37,score_Rotation=-37] {StartingYaw:-37f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-36,score_Rotation=-36] {StartingYaw:-36f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-35,score_Rotation=-35] {StartingYaw:-35f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-34,score_Rotation=-34] {StartingYaw:-34f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-33,score_Rotation=-33] {StartingYaw:-33f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-32,score_Rotation=-32] {StartingYaw:-32f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-31,score_Rotation=-31] {StartingYaw:-31f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-30,score_Rotation=-30] {StartingYaw:-30f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-29,score_Rotation=-29] {StartingYaw:-29f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-28,score_Rotation=-28] {StartingYaw:-28f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-27,score_Rotation=-27] {StartingYaw:-27f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-26,score_Rotation=-26] {StartingYaw:-26f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-25,score_Rotation=-25] {StartingYaw:-25f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-24,score_Rotation=-24] {StartingYaw:-24f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-23,score_Rotation=-23] {StartingYaw:-23f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-22,score_Rotation=-22] {StartingYaw:-22f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-21,score_Rotation=-21] {StartingYaw:-21f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-20,score_Rotation=-20] {StartingYaw:-20f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-19,score_Rotation=-19] {StartingYaw:-19f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-18,score_Rotation=-18] {StartingYaw:-18f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-17,score_Rotation=-17] {StartingYaw:-17f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-16,score_Rotation=-16] {StartingYaw:-16f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-15,score_Rotation=-15] {StartingYaw:-15f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-14,score_Rotation=-14] {StartingYaw:-14f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-13,score_Rotation=-13] {StartingYaw:-13f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-12,score_Rotation=-12] {StartingYaw:-12f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-11,score_Rotation=-11] {StartingYaw:-11f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-10,score_Rotation=-10] {StartingYaw:-10f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-9,score_Rotation=-9] {StartingYaw:-9f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-8,score_Rotation=-8] {StartingYaw:-8f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-7,score_Rotation=-7] {StartingYaw:-7f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-6,score_Rotation=-6] {StartingYaw:-6f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-5,score_Rotation=-5] {StartingYaw:-5f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-4,score_Rotation=-4] {StartingYaw:-4f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-3,score_Rotation=-3] {StartingYaw:-3f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-2,score_Rotation=-2] {StartingYaw:-2f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=-1,score_Rotation=-1] {StartingYaw:-1f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=0,score_Rotation=0] {StartingYaw:0f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=1,score_Rotation=1] {StartingYaw:1f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=2,score_Rotation=2] {StartingYaw:2f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=3,score_Rotation=3] {StartingYaw:3f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=4,score_Rotation=4] {StartingYaw:4f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=5,score_Rotation=5] {StartingYaw:5f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=6,score_Rotation=6] {StartingYaw:6f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=7,score_Rotation=7] {StartingYaw:7f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=8,score_Rotation=8] {StartingYaw:8f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=9,score_Rotation=9] {StartingYaw:9f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=10,score_Rotation=10] {StartingYaw:10f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=11,score_Rotation=11] {StartingYaw:11f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=12,score_Rotation=12] {StartingYaw:12f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=13,score_Rotation=13] {StartingYaw:13f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=14,score_Rotation=14] {StartingYaw:14f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=15,score_Rotation=15] {StartingYaw:15f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=16,score_Rotation=16] {StartingYaw:16f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=17,score_Rotation=17] {StartingYaw:17f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=18,score_Rotation=18] {StartingYaw:18f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=19,score_Rotation=19] {StartingYaw:19f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=20,score_Rotation=20] {StartingYaw:20f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=21,score_Rotation=21] {StartingYaw:21f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=22,score_Rotation=22] {StartingYaw:22f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=23,score_Rotation=23] {StartingYaw:23f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=24,score_Rotation=24] {StartingYaw:24f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=25,score_Rotation=25] {StartingYaw:25f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=26,score_Rotation=26] {StartingYaw:26f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=27,score_Rotation=27] {StartingYaw:27f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=28,score_Rotation=28] {StartingYaw:28f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=29,score_Rotation=29] {StartingYaw:29f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=30,score_Rotation=30] {StartingYaw:30f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=31,score_Rotation=31] {StartingYaw:31f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=32,score_Rotation=32] {StartingYaw:32f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=33,score_Rotation=33] {StartingYaw:33f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=34,score_Rotation=34] {StartingYaw:34f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=35,score_Rotation=35] {StartingYaw:35f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=36,score_Rotation=36] {StartingYaw:36f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=37,score_Rotation=37] {StartingYaw:37f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=38,score_Rotation=38] {StartingYaw:38f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=39,score_Rotation=39] {StartingYaw:39f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=40,score_Rotation=40] {StartingYaw:40f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=41,score_Rotation=41] {StartingYaw:41f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=42,score_Rotation=42] {StartingYaw:42f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=43,score_Rotation=43] {StartingYaw:43f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=44,score_Rotation=44] {StartingYaw:44f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=45,score_Rotation=45] {StartingYaw:45f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=46,score_Rotation=46] {StartingYaw:46f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=47,score_Rotation=47] {StartingYaw:47f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=48,score_Rotation=48] {StartingYaw:48f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=49,score_Rotation=49] {StartingYaw:49f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=50,score_Rotation=50] {StartingYaw:50f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=51,score_Rotation=51] {StartingYaw:51f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=52,score_Rotation=52] {StartingYaw:52f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=53,score_Rotation=53] {StartingYaw:53f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=54,score_Rotation=54] {StartingYaw:54f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=55,score_Rotation=55] {StartingYaw:55f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=56,score_Rotation=56] {StartingYaw:56f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=57,score_Rotation=57] {StartingYaw:57f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=58,score_Rotation=58] {StartingYaw:58f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=59,score_Rotation=59] {StartingYaw:59f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=60,score_Rotation=60] {StartingYaw:60f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=61,score_Rotation=61] {StartingYaw:61f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=62,score_Rotation=62] {StartingYaw:62f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=63,score_Rotation=63] {StartingYaw:63f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=64,score_Rotation=64] {StartingYaw:64f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=65,score_Rotation=65] {StartingYaw:65f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=66,score_Rotation=66] {StartingYaw:66f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=67,score_Rotation=67] {StartingYaw:67f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=68,score_Rotation=68] {StartingYaw:68f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=69,score_Rotation=69] {StartingYaw:69f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=70,score_Rotation=70] {StartingYaw:70f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=71,score_Rotation=71] {StartingYaw:71f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=72,score_Rotation=72] {StartingYaw:72f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=73,score_Rotation=73] {StartingYaw:73f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=74,score_Rotation=74] {StartingYaw:74f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=75,score_Rotation=75] {StartingYaw:75f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=76,score_Rotation=76] {StartingYaw:76f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=77,score_Rotation=77] {StartingYaw:77f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=78,score_Rotation=78] {StartingYaw:78f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=79,score_Rotation=79] {StartingYaw:79f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=80,score_Rotation=80] {StartingYaw:80f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=81,score_Rotation=81] {StartingYaw:81f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=82,score_Rotation=82] {StartingYaw:82f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=83,score_Rotation=83] {StartingYaw:83f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=84,score_Rotation=84] {StartingYaw:84f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=85,score_Rotation=85] {StartingYaw:85f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=86,score_Rotation=86] {StartingYaw:86f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=87,score_Rotation=87] {StartingYaw:87f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=88,score_Rotation=88] {StartingYaw:88f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=89,score_Rotation=89] {StartingYaw:89f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=90,score_Rotation=90] {StartingYaw:90f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=91,score_Rotation=91] {StartingYaw:91f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=92,score_Rotation=92] {StartingYaw:92f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=93,score_Rotation=93] {StartingYaw:93f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=94,score_Rotation=94] {StartingYaw:94f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=95,score_Rotation=95] {StartingYaw:95f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=96,score_Rotation=96] {StartingYaw:96f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=97,score_Rotation=97] {StartingYaw:97f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=98,score_Rotation=98] {StartingYaw:98f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=99,score_Rotation=99] {StartingYaw:99f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=100,score_Rotation=100] {StartingYaw:100f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=101,score_Rotation=101] {StartingYaw:101f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=102,score_Rotation=102] {StartingYaw:102f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=103,score_Rotation=103] {StartingYaw:103f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=104,score_Rotation=104] {StartingYaw:104f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=105,score_Rotation=105] {StartingYaw:105f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=106,score_Rotation=106] {StartingYaw:106f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=107,score_Rotation=107] {StartingYaw:107f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=108,score_Rotation=108] {StartingYaw:108f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=109,score_Rotation=109] {StartingYaw:109f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=110,score_Rotation=110] {StartingYaw:110f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=111,score_Rotation=111] {StartingYaw:111f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=112,score_Rotation=112] {StartingYaw:112f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=113,score_Rotation=113] {StartingYaw:113f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=114,score_Rotation=114] {StartingYaw:114f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=115,score_Rotation=115] {StartingYaw:115f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=116,score_Rotation=116] {StartingYaw:116f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=117,score_Rotation=117] {StartingYaw:117f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=118,score_Rotation=118] {StartingYaw:118f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=119,score_Rotation=119] {StartingYaw:119f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=120,score_Rotation=120] {StartingYaw:120f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=121,score_Rotation=121] {StartingYaw:121f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=122,score_Rotation=122] {StartingYaw:122f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=123,score_Rotation=123] {StartingYaw:123f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=124,score_Rotation=124] {StartingYaw:124f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=125,score_Rotation=125] {StartingYaw:125f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=126,score_Rotation=126] {StartingYaw:126f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=127,score_Rotation=127] {StartingYaw:127f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=128,score_Rotation=128] {StartingYaw:128f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=129,score_Rotation=129] {StartingYaw:129f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=130,score_Rotation=130] {StartingYaw:130f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=131,score_Rotation=131] {StartingYaw:131f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=132,score_Rotation=132] {StartingYaw:132f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=133,score_Rotation=133] {StartingYaw:133f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=134,score_Rotation=134] {StartingYaw:134f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=135,score_Rotation=135] {StartingYaw:135f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=136,score_Rotation=136] {StartingYaw:136f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=137,score_Rotation=137] {StartingYaw:137f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=138,score_Rotation=138] {StartingYaw:138f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=139,score_Rotation=139] {StartingYaw:139f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=140,score_Rotation=140] {StartingYaw:140f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=141,score_Rotation=141] {StartingYaw:141f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=142,score_Rotation=142] {StartingYaw:142f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=143,score_Rotation=143] {StartingYaw:143f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=144,score_Rotation=144] {StartingYaw:144f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=145,score_Rotation=145] {StartingYaw:145f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=146,score_Rotation=146] {StartingYaw:146f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=147,score_Rotation=147] {StartingYaw:147f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=148,score_Rotation=148] {StartingYaw:148f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=149,score_Rotation=149] {StartingYaw:149f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=150,score_Rotation=150] {StartingYaw:150f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=151,score_Rotation=151] {StartingYaw:151f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=152,score_Rotation=152] {StartingYaw:152f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=153,score_Rotation=153] {StartingYaw:153f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=154,score_Rotation=154] {StartingYaw:154f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=155,score_Rotation=155] {StartingYaw:155f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=156,score_Rotation=156] {StartingYaw:156f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=157,score_Rotation=157] {StartingYaw:157f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=158,score_Rotation=158] {StartingYaw:158f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=159,score_Rotation=159] {StartingYaw:159f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=160,score_Rotation=160] {StartingYaw:160f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=161,score_Rotation=161] {StartingYaw:161f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=162,score_Rotation=162] {StartingYaw:162f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=163,score_Rotation=163] {StartingYaw:163f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=164,score_Rotation=164] {StartingYaw:164f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=165,score_Rotation=165] {StartingYaw:165f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=166,score_Rotation=166] {StartingYaw:166f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=167,score_Rotation=167] {StartingYaw:167f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=168,score_Rotation=168] {StartingYaw:168f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=169,score_Rotation=169] {StartingYaw:169f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=170,score_Rotation=170] {StartingYaw:170f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=171,score_Rotation=171] {StartingYaw:171f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=172,score_Rotation=172] {StartingYaw:172f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=173,score_Rotation=173] {StartingYaw:173f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=174,score_Rotation=174] {StartingYaw:174f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=175,score_Rotation=175] {StartingYaw:175f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=176,score_Rotation=176] {StartingYaw:176f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=177,score_Rotation=177] {StartingYaw:177f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=178,score_Rotation=178] {StartingYaw:178f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=179,score_Rotation=179] {StartingYaw:179f}
entitydata @e[r=3,c=1,type=pixelmon:statue,tag=NPCBird,score_Rotation_min=180,score_Rotation=180] {StartingYaw:180f}
