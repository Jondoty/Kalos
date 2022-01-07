#execute @a ~ ~ ~ execute @e[r=50,type=parrot] ~ ~ ~ function custom:wildbirds

#/summon minecraft:parrot ~ ~ ~ {Invulnerable:1,PersistenceRequired:1,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:999999}],Passengers:[{id:"pixelmon:statue",ndex:661s,gr:7,Animate:1b}]}

#Adds tags tp specific species of birds to execute commands on
execute as @s run tag @e[distance=..3,nbt=!{pixelmon:statue},tag=!NPCBird,nbt={ndex:661s}] add NPCBird
execute as @s run tag @e[distance=..3,nbt=!{pixelmon:statue},tag=!NPCBird,nbt={ndex:662s}] add NPCBird

#Applies potion effects and animation tag on statues if not present
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird] {Animate:1b}
effect give @s minecraft:invisibility 100000 1 true
effect give @s minecraft:health_boost 100000 15 true
effect give @s minecraft:resistance 100000 255 true



#Switches animations depending on if it's sitting on ground or flying

execute if block ~ ~-1 ~ minecraft:air run tag @s add Air
execute as @s[tag=!Air] run data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird] {statueAnimation:"idle"}
execute as @s[tag=Air] run data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird] {statueAnimation:"walk"}
tag @s remove Air


#runs RNG, plays Pokemon cry if successful
execute as @a[distance=..10,limit=1] run scoreboard players set @e[x=-687,y=100,z=1376,dx=2,dy=4,type=armor_stand] rng 0
execute as @a[distance=..10,limit=1] run scoreboard players add @e[x=-687,y=100,z=1376,dx=2,dy=4,limit=1,sort=random] rng 1
execute as @a[distance=..10,limit=1] run scoreboard players add @e[x=-687,y=100,z=1376,dx=2,dy=4,limit=1,sort=random] rng 2
execute as @a[distance=..10,limit=1] run scoreboard players add @e[x=-687,y=100,z=1376,dx=2,dy=4,limit=1,sort=random] rng 4
execute as @a[distance=..10,limit=1] run scoreboard players add @e[x=-687,y=100,z=1376,dx=2,dy=4,limit=1,sort=random] rng 8
execute as @a[distance=..10,limit=1] run scoreboard players add @e[x=-687,y=100,z=1376,dx=2,dy=4,limit=1,sort=random] rng 16
execute as @a[distance=..10,limit=1] run scoreboard players add @e[x=-687,y=100,z=1376,dx=2,dy=4,limit=1,sort=random] rng 32
execute as @a[distance=..10,limit=1] run scoreboard players add @e[x=-687,y=100,z=1376,dx=2,dy=4,limit=1,sort=random] rng 64

scoreboard players operation @s rng = @e[x=-687,y=100,z=1376,dy=3,type=armor_stand] rng
execute as @s[scores={rng=1..20}] run playsound fletchling ambient @a[distance=..10] ~ ~ ~ 1 1 1

scoreboard players set @s rng 0


#Generates a Parrot's rotational score
scoreboard players set @s[x_rotation=-180] Rotation -180
scoreboard players set @s[x_rotation=-179] Rotation -179
scoreboard players set @s[x_rotation=-178] Rotation -178
scoreboard players set @s[x_rotation=-177] Rotation -177
scoreboard players set @s[x_rotation=-176] Rotation -176
scoreboard players set @s[x_rotation=-175] Rotation -175
scoreboard players set @s[x_rotation=-174] Rotation -174
scoreboard players set @s[x_rotation=-173] Rotation -173
scoreboard players set @s[x_rotation=-172] Rotation -172
scoreboard players set @s[x_rotation=-171] Rotation -171
scoreboard players set @s[x_rotation=-170] Rotation -170
scoreboard players set @s[x_rotation=-169] Rotation -169
scoreboard players set @s[x_rotation=-168] Rotation -168
scoreboard players set @s[x_rotation=-167] Rotation -167
scoreboard players set @s[x_rotation=-166] Rotation -166
scoreboard players set @s[x_rotation=-165] Rotation -165
scoreboard players set @s[x_rotation=-164] Rotation -164
scoreboard players set @s[x_rotation=-163] Rotation -163
scoreboard players set @s[x_rotation=-162] Rotation -162
scoreboard players set @s[x_rotation=-161] Rotation -161
scoreboard players set @s[x_rotation=-160] Rotation -160
scoreboard players set @s[x_rotation=-159] Rotation -159
scoreboard players set @s[x_rotation=-158] Rotation -158
scoreboard players set @s[x_rotation=-157] Rotation -157
scoreboard players set @s[x_rotation=-156] Rotation -156
scoreboard players set @s[x_rotation=-155] Rotation -155
scoreboard players set @s[x_rotation=-154] Rotation -154
scoreboard players set @s[x_rotation=-153] Rotation -153
scoreboard players set @s[x_rotation=-152] Rotation -152
scoreboard players set @s[x_rotation=-151] Rotation -151
scoreboard players set @s[x_rotation=-150] Rotation -150
scoreboard players set @s[x_rotation=-149] Rotation -149
scoreboard players set @s[x_rotation=-148] Rotation -148
scoreboard players set @s[x_rotation=-147] Rotation -147
scoreboard players set @s[x_rotation=-146] Rotation -146
scoreboard players set @s[x_rotation=-145] Rotation -145
scoreboard players set @s[x_rotation=-144] Rotation -144
scoreboard players set @s[x_rotation=-143] Rotation -143
scoreboard players set @s[x_rotation=-142] Rotation -142
scoreboard players set @s[x_rotation=-141] Rotation -141
scoreboard players set @s[x_rotation=-140] Rotation -140
scoreboard players set @s[x_rotation=-139] Rotation -139
scoreboard players set @s[x_rotation=-138] Rotation -138
scoreboard players set @s[x_rotation=-137] Rotation -137
scoreboard players set @s[x_rotation=-136] Rotation -136
scoreboard players set @s[x_rotation=-135] Rotation -135
scoreboard players set @s[x_rotation=-134] Rotation -134
scoreboard players set @s[x_rotation=-133] Rotation -133
scoreboard players set @s[x_rotation=-132] Rotation -132
scoreboard players set @s[x_rotation=-131] Rotation -131
scoreboard players set @s[x_rotation=-130] Rotation -130
scoreboard players set @s[x_rotation=-129] Rotation -129
scoreboard players set @s[x_rotation=-128] Rotation -128
scoreboard players set @s[x_rotation=-127] Rotation -127
scoreboard players set @s[x_rotation=-126] Rotation -126
scoreboard players set @s[x_rotation=-125] Rotation -125
scoreboard players set @s[x_rotation=-124] Rotation -124
scoreboard players set @s[x_rotation=-123] Rotation -123
scoreboard players set @s[x_rotation=-122] Rotation -122
scoreboard players set @s[x_rotation=-121] Rotation -121
scoreboard players set @s[x_rotation=-120] Rotation -120
scoreboard players set @s[x_rotation=-119] Rotation -119
scoreboard players set @s[x_rotation=-118] Rotation -118
scoreboard players set @s[x_rotation=-117] Rotation -117
scoreboard players set @s[x_rotation=-116] Rotation -116
scoreboard players set @s[x_rotation=-115] Rotation -115
scoreboard players set @s[x_rotation=-114] Rotation -114
scoreboard players set @s[x_rotation=-113] Rotation -113
scoreboard players set @s[x_rotation=-112] Rotation -112
scoreboard players set @s[x_rotation=-111] Rotation -111
scoreboard players set @s[x_rotation=-110] Rotation -110
scoreboard players set @s[x_rotation=-109] Rotation -109
scoreboard players set @s[x_rotation=-108] Rotation -108
scoreboard players set @s[x_rotation=-107] Rotation -107
scoreboard players set @s[x_rotation=-106] Rotation -106
scoreboard players set @s[x_rotation=-105] Rotation -105
scoreboard players set @s[x_rotation=-104] Rotation -104
scoreboard players set @s[x_rotation=-103] Rotation -103
scoreboard players set @s[x_rotation=-102] Rotation -102
scoreboard players set @s[x_rotation=-101] Rotation -101
scoreboard players set @s[x_rotation=-100] Rotation -100
scoreboard players set @s[x_rotation=-99] Rotation -99
scoreboard players set @s[x_rotation=-98] Rotation -98
scoreboard players set @s[x_rotation=-97] Rotation -97
scoreboard players set @s[x_rotation=-96] Rotation -96
scoreboard players set @s[x_rotation=-95] Rotation -95
scoreboard players set @s[x_rotation=-94] Rotation -94
scoreboard players set @s[x_rotation=-93] Rotation -93
scoreboard players set @s[x_rotation=-92] Rotation -92
scoreboard players set @s[x_rotation=-91] Rotation -91
scoreboard players set @s[x_rotation=-90] Rotation -90
scoreboard players set @s[x_rotation=-89] Rotation -89
scoreboard players set @s[x_rotation=-88] Rotation -88
scoreboard players set @s[x_rotation=-87] Rotation -87
scoreboard players set @s[x_rotation=-86] Rotation -86
scoreboard players set @s[x_rotation=-85] Rotation -85
scoreboard players set @s[x_rotation=-84] Rotation -84
scoreboard players set @s[x_rotation=-83] Rotation -83
scoreboard players set @s[x_rotation=-82] Rotation -82
scoreboard players set @s[x_rotation=-81] Rotation -81
scoreboard players set @s[x_rotation=-80] Rotation -80
scoreboard players set @s[x_rotation=-79] Rotation -79
scoreboard players set @s[x_rotation=-78] Rotation -78
scoreboard players set @s[x_rotation=-77] Rotation -77
scoreboard players set @s[x_rotation=-76] Rotation -76
scoreboard players set @s[x_rotation=-75] Rotation -75
scoreboard players set @s[x_rotation=-74] Rotation -74
scoreboard players set @s[x_rotation=-73] Rotation -73
scoreboard players set @s[x_rotation=-72] Rotation -72
scoreboard players set @s[x_rotation=-71] Rotation -71
scoreboard players set @s[x_rotation=-70] Rotation -70
scoreboard players set @s[x_rotation=-69] Rotation -69
scoreboard players set @s[x_rotation=-68] Rotation -68
scoreboard players set @s[x_rotation=-67] Rotation -67
scoreboard players set @s[x_rotation=-66] Rotation -66
scoreboard players set @s[x_rotation=-65] Rotation -65
scoreboard players set @s[x_rotation=-64] Rotation -64
scoreboard players set @s[x_rotation=-63] Rotation -63
scoreboard players set @s[x_rotation=-62] Rotation -62
scoreboard players set @s[x_rotation=-61] Rotation -61
scoreboard players set @s[x_rotation=-60] Rotation -60
scoreboard players set @s[x_rotation=-59] Rotation -59
scoreboard players set @s[x_rotation=-58] Rotation -58
scoreboard players set @s[x_rotation=-57] Rotation -57
scoreboard players set @s[x_rotation=-56] Rotation -56
scoreboard players set @s[x_rotation=-55] Rotation -55
scoreboard players set @s[x_rotation=-54] Rotation -54
scoreboard players set @s[x_rotation=-53] Rotation -53
scoreboard players set @s[x_rotation=-52] Rotation -52
scoreboard players set @s[x_rotation=-51] Rotation -51
scoreboard players set @s[x_rotation=-50] Rotation -50
scoreboard players set @s[x_rotation=-49] Rotation -49
scoreboard players set @s[x_rotation=-48] Rotation -48
scoreboard players set @s[x_rotation=-47] Rotation -47
scoreboard players set @s[x_rotation=-46] Rotation -46
scoreboard players set @s[x_rotation=-45] Rotation -45
scoreboard players set @s[x_rotation=-44] Rotation -44
scoreboard players set @s[x_rotation=-43] Rotation -43
scoreboard players set @s[x_rotation=-42] Rotation -42
scoreboard players set @s[x_rotation=-41] Rotation -41
scoreboard players set @s[x_rotation=-40] Rotation -40
scoreboard players set @s[x_rotation=-39] Rotation -39
scoreboard players set @s[x_rotation=-38] Rotation -38
scoreboard players set @s[x_rotation=-37] Rotation -37
scoreboard players set @s[x_rotation=-36] Rotation -36
scoreboard players set @s[x_rotation=-35] Rotation -35
scoreboard players set @s[x_rotation=-34] Rotation -34
scoreboard players set @s[x_rotation=-33] Rotation -33
scoreboard players set @s[x_rotation=-32] Rotation -32
scoreboard players set @s[x_rotation=-31] Rotation -31
scoreboard players set @s[x_rotation=-30] Rotation -30
scoreboard players set @s[x_rotation=-29] Rotation -29
scoreboard players set @s[x_rotation=-28] Rotation -28
scoreboard players set @s[x_rotation=-27] Rotation -27
scoreboard players set @s[x_rotation=-26] Rotation -26
scoreboard players set @s[x_rotation=-25] Rotation -25
scoreboard players set @s[x_rotation=-24] Rotation -24
scoreboard players set @s[x_rotation=-23] Rotation -23
scoreboard players set @s[x_rotation=-22] Rotation -22
scoreboard players set @s[x_rotation=-21] Rotation -21
scoreboard players set @s[x_rotation=-20] Rotation -20
scoreboard players set @s[x_rotation=-19] Rotation -19
scoreboard players set @s[x_rotation=-18] Rotation -18
scoreboard players set @s[x_rotation=-17] Rotation -17
scoreboard players set @s[x_rotation=-16] Rotation -16
scoreboard players set @s[x_rotation=-15] Rotation -15
scoreboard players set @s[x_rotation=-14] Rotation -14
scoreboard players set @s[x_rotation=-13] Rotation -13
scoreboard players set @s[x_rotation=-12] Rotation -12
scoreboard players set @s[x_rotation=-11] Rotation -11
scoreboard players set @s[x_rotation=-10] Rotation -10
scoreboard players set @s[x_rotation=-9] Rotation -9
scoreboard players set @s[x_rotation=-8] Rotation -8
scoreboard players set @s[x_rotation=-7] Rotation -7
scoreboard players set @s[x_rotation=-6] Rotation -6
scoreboard players set @s[x_rotation=-5] Rotation -5
scoreboard players set @s[x_rotation=-4] Rotation -4
scoreboard players set @s[x_rotation=-3] Rotation -3
scoreboard players set @s[x_rotation=-2] Rotation -2
scoreboard players set @s[x_rotation=-1] Rotation -1
scoreboard players set @s[x_rotation=0] Rotation 0
scoreboard players set @s[x_rotation=1] Rotation 1
scoreboard players set @s[x_rotation=2] Rotation 2
scoreboard players set @s[x_rotation=3] Rotation 3
scoreboard players set @s[x_rotation=4] Rotation 4
scoreboard players set @s[x_rotation=5] Rotation 5
scoreboard players set @s[x_rotation=6] Rotation 6
scoreboard players set @s[x_rotation=7] Rotation 7
scoreboard players set @s[x_rotation=8] Rotation 8
scoreboard players set @s[x_rotation=9] Rotation 9
scoreboard players set @s[x_rotation=10] Rotation 10
scoreboard players set @s[x_rotation=11] Rotation 11
scoreboard players set @s[x_rotation=12] Rotation 12
scoreboard players set @s[x_rotation=13] Rotation 13
scoreboard players set @s[x_rotation=14] Rotation 14
scoreboard players set @s[x_rotation=15] Rotation 15
scoreboard players set @s[x_rotation=16] Rotation 16
scoreboard players set @s[x_rotation=17] Rotation 17
scoreboard players set @s[x_rotation=18] Rotation 18
scoreboard players set @s[x_rotation=19] Rotation 19
scoreboard players set @s[x_rotation=20] Rotation 20
scoreboard players set @s[x_rotation=21] Rotation 21
scoreboard players set @s[x_rotation=22] Rotation 22
scoreboard players set @s[x_rotation=23] Rotation 23
scoreboard players set @s[x_rotation=24] Rotation 24
scoreboard players set @s[x_rotation=25] Rotation 25
scoreboard players set @s[x_rotation=26] Rotation 26
scoreboard players set @s[x_rotation=27] Rotation 27
scoreboard players set @s[x_rotation=28] Rotation 28
scoreboard players set @s[x_rotation=29] Rotation 29
scoreboard players set @s[x_rotation=30] Rotation 30
scoreboard players set @s[x_rotation=31] Rotation 31
scoreboard players set @s[x_rotation=32] Rotation 32
scoreboard players set @s[x_rotation=33] Rotation 33
scoreboard players set @s[x_rotation=34] Rotation 34
scoreboard players set @s[x_rotation=35] Rotation 35
scoreboard players set @s[x_rotation=36] Rotation 36
scoreboard players set @s[x_rotation=37] Rotation 37
scoreboard players set @s[x_rotation=38] Rotation 38
scoreboard players set @s[x_rotation=39] Rotation 39
scoreboard players set @s[x_rotation=40] Rotation 40
scoreboard players set @s[x_rotation=41] Rotation 41
scoreboard players set @s[x_rotation=42] Rotation 42
scoreboard players set @s[x_rotation=43] Rotation 43
scoreboard players set @s[x_rotation=44] Rotation 44
scoreboard players set @s[x_rotation=45] Rotation 45
scoreboard players set @s[x_rotation=46] Rotation 46
scoreboard players set @s[x_rotation=47] Rotation 47
scoreboard players set @s[x_rotation=48] Rotation 48
scoreboard players set @s[x_rotation=49] Rotation 49
scoreboard players set @s[x_rotation=50] Rotation 50
scoreboard players set @s[x_rotation=51] Rotation 51
scoreboard players set @s[x_rotation=52] Rotation 52
scoreboard players set @s[x_rotation=53] Rotation 53
scoreboard players set @s[x_rotation=54] Rotation 54
scoreboard players set @s[x_rotation=55] Rotation 55
scoreboard players set @s[x_rotation=56] Rotation 56
scoreboard players set @s[x_rotation=57] Rotation 57
scoreboard players set @s[x_rotation=58] Rotation 58
scoreboard players set @s[x_rotation=59] Rotation 59
scoreboard players set @s[x_rotation=60] Rotation 60
scoreboard players set @s[x_rotation=61] Rotation 61
scoreboard players set @s[x_rotation=62] Rotation 62
scoreboard players set @s[x_rotation=63] Rotation 63
scoreboard players set @s[x_rotation=64] Rotation 64
scoreboard players set @s[x_rotation=65] Rotation 65
scoreboard players set @s[x_rotation=66] Rotation 66
scoreboard players set @s[x_rotation=67] Rotation 67
scoreboard players set @s[x_rotation=68] Rotation 68
scoreboard players set @s[x_rotation=69] Rotation 69
scoreboard players set @s[x_rotation=70] Rotation 70
scoreboard players set @s[x_rotation=71] Rotation 71
scoreboard players set @s[x_rotation=72] Rotation 72
scoreboard players set @s[x_rotation=73] Rotation 73
scoreboard players set @s[x_rotation=74] Rotation 74
scoreboard players set @s[x_rotation=75] Rotation 75
scoreboard players set @s[x_rotation=76] Rotation 76
scoreboard players set @s[x_rotation=77] Rotation 77
scoreboard players set @s[x_rotation=78] Rotation 78
scoreboard players set @s[x_rotation=79] Rotation 79
scoreboard players set @s[x_rotation=80] Rotation 80
scoreboard players set @s[x_rotation=81] Rotation 81
scoreboard players set @s[x_rotation=82] Rotation 82
scoreboard players set @s[x_rotation=83] Rotation 83
scoreboard players set @s[x_rotation=84] Rotation 84
scoreboard players set @s[x_rotation=85] Rotation 85
scoreboard players set @s[x_rotation=86] Rotation 86
scoreboard players set @s[x_rotation=87] Rotation 87
scoreboard players set @s[x_rotation=88] Rotation 88
scoreboard players set @s[x_rotation=89] Rotation 89
scoreboard players set @s[x_rotation=90] Rotation 90
scoreboard players set @s[x_rotation=91] Rotation 91
scoreboard players set @s[x_rotation=92] Rotation 92
scoreboard players set @s[x_rotation=93] Rotation 93
scoreboard players set @s[x_rotation=94] Rotation 94
scoreboard players set @s[x_rotation=95] Rotation 95
scoreboard players set @s[x_rotation=96] Rotation 96
scoreboard players set @s[x_rotation=97] Rotation 97
scoreboard players set @s[x_rotation=98] Rotation 98
scoreboard players set @s[x_rotation=99] Rotation 99
scoreboard players set @s[x_rotation=100] Rotation 100
scoreboard players set @s[x_rotation=101] Rotation 101
scoreboard players set @s[x_rotation=102] Rotation 102
scoreboard players set @s[x_rotation=103] Rotation 103
scoreboard players set @s[x_rotation=104] Rotation 104
scoreboard players set @s[x_rotation=105] Rotation 105
scoreboard players set @s[x_rotation=106] Rotation 106
scoreboard players set @s[x_rotation=107] Rotation 107
scoreboard players set @s[x_rotation=108] Rotation 108
scoreboard players set @s[x_rotation=109] Rotation 109
scoreboard players set @s[x_rotation=110] Rotation 110
scoreboard players set @s[x_rotation=111] Rotation 111
scoreboard players set @s[x_rotation=112] Rotation 112
scoreboard players set @s[x_rotation=113] Rotation 113
scoreboard players set @s[x_rotation=114] Rotation 114
scoreboard players set @s[x_rotation=115] Rotation 115
scoreboard players set @s[x_rotation=116] Rotation 116
scoreboard players set @s[x_rotation=117] Rotation 117
scoreboard players set @s[x_rotation=118] Rotation 118
scoreboard players set @s[x_rotation=119] Rotation 119
scoreboard players set @s[x_rotation=120] Rotation 120
scoreboard players set @s[x_rotation=121] Rotation 121
scoreboard players set @s[x_rotation=122] Rotation 122
scoreboard players set @s[x_rotation=123] Rotation 123
scoreboard players set @s[x_rotation=124] Rotation 124
scoreboard players set @s[x_rotation=125] Rotation 125
scoreboard players set @s[x_rotation=126] Rotation 126
scoreboard players set @s[x_rotation=127] Rotation 127
scoreboard players set @s[x_rotation=128] Rotation 128
scoreboard players set @s[x_rotation=129] Rotation 129
scoreboard players set @s[x_rotation=130] Rotation 130
scoreboard players set @s[x_rotation=131] Rotation 131
scoreboard players set @s[x_rotation=132] Rotation 132
scoreboard players set @s[x_rotation=133] Rotation 133
scoreboard players set @s[x_rotation=134] Rotation 134
scoreboard players set @s[x_rotation=135] Rotation 135
scoreboard players set @s[x_rotation=136] Rotation 136
scoreboard players set @s[x_rotation=137] Rotation 137
scoreboard players set @s[x_rotation=138] Rotation 138
scoreboard players set @s[x_rotation=139] Rotation 139
scoreboard players set @s[x_rotation=140] Rotation 140
scoreboard players set @s[x_rotation=141] Rotation 141
scoreboard players set @s[x_rotation=142] Rotation 142
scoreboard players set @s[x_rotation=143] Rotation 143
scoreboard players set @s[x_rotation=144] Rotation 144
scoreboard players set @s[x_rotation=145] Rotation 145
scoreboard players set @s[x_rotation=146] Rotation 146
scoreboard players set @s[x_rotation=147] Rotation 147
scoreboard players set @s[x_rotation=148] Rotation 148
scoreboard players set @s[x_rotation=149] Rotation 149
scoreboard players set @s[x_rotation=150] Rotation 150
scoreboard players set @s[x_rotation=151] Rotation 151
scoreboard players set @s[x_rotation=152] Rotation 152
scoreboard players set @s[x_rotation=153] Rotation 153
scoreboard players set @s[x_rotation=154] Rotation 154
scoreboard players set @s[x_rotation=155] Rotation 155
scoreboard players set @s[x_rotation=156] Rotation 156
scoreboard players set @s[x_rotation=157] Rotation 157
scoreboard players set @s[x_rotation=158] Rotation 158
scoreboard players set @s[x_rotation=159] Rotation 159
scoreboard players set @s[x_rotation=160] Rotation 160
scoreboard players set @s[x_rotation=161] Rotation 161
scoreboard players set @s[x_rotation=162] Rotation 162
scoreboard players set @s[x_rotation=163] Rotation 163
scoreboard players set @s[x_rotation=164] Rotation 164
scoreboard players set @s[x_rotation=165] Rotation 165
scoreboard players set @s[x_rotation=166] Rotation 166
scoreboard players set @s[x_rotation=167] Rotation 167
scoreboard players set @s[x_rotation=168] Rotation 168
scoreboard players set @s[x_rotation=169] Rotation 169
scoreboard players set @s[x_rotation=170] Rotation 170
scoreboard players set @s[x_rotation=171] Rotation 171
scoreboard players set @s[x_rotation=172] Rotation 172
scoreboard players set @s[x_rotation=173] Rotation 173
scoreboard players set @s[x_rotation=174] Rotation 174
scoreboard players set @s[x_rotation=175] Rotation 175
scoreboard players set @s[x_rotation=176] Rotation 176
scoreboard players set @s[x_rotation=177] Rotation 177
scoreboard players set @s[x_rotation=178] Rotation 178
scoreboard players set @s[x_rotation=179] Rotation 179
scoreboard players set @s[x_rotation=180] Rotation 180



#Operations the parrot's score onto the fletchling statue
scoreboard players operation @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird] Rotation = @s Rotation

#Rotates the Fletchling based on its score
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-180}] {StartingYaw:-180f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-179}] {StartingYaw:-179f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-178}] {StartingYaw:-178f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-177}] {StartingYaw:-177f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-176}] {StartingYaw:-176f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-175}] {StartingYaw:-175f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-174}] {StartingYaw:-174f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-173}] {StartingYaw:-173f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-172}] {StartingYaw:-172f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-171}] {StartingYaw:-171f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-170}] {StartingYaw:-170f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-169}] {StartingYaw:-169f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-168}] {StartingYaw:-168f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-167}] {StartingYaw:-167f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-166}] {StartingYaw:-166f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-165}] {StartingYaw:-165f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-164}] {StartingYaw:-164f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-163}] {StartingYaw:-163f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-162}] {StartingYaw:-162f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-161}] {StartingYaw:-161f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-160}] {StartingYaw:-160f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-159}] {StartingYaw:-159f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-158}] {StartingYaw:-158f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-157}] {StartingYaw:-157f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-156}] {StartingYaw:-156f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-155}] {StartingYaw:-155f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-154}] {StartingYaw:-154f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-153}] {StartingYaw:-153f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-152}] {StartingYaw:-152f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-151}] {StartingYaw:-151f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-150}] {StartingYaw:-150f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-149}] {StartingYaw:-149f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-148}] {StartingYaw:-148f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-147}] {StartingYaw:-147f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-146}] {StartingYaw:-146f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-145}] {StartingYaw:-145f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-144}] {StartingYaw:-144f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-143}] {StartingYaw:-143f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-142}] {StartingYaw:-142f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-141}] {StartingYaw:-141f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-140}] {StartingYaw:-140f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-139}] {StartingYaw:-139f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-138}] {StartingYaw:-138f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-137}] {StartingYaw:-137f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-136}] {StartingYaw:-136f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-135}] {StartingYaw:-135f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-134}] {StartingYaw:-134f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-133}] {StartingYaw:-133f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-132}] {StartingYaw:-132f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-131}] {StartingYaw:-131f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-130}] {StartingYaw:-130f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-129}] {StartingYaw:-129f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-128}] {StartingYaw:-128f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-127}] {StartingYaw:-127f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-126}] {StartingYaw:-126f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-125}] {StartingYaw:-125f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-124}] {StartingYaw:-124f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-123}] {StartingYaw:-123f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-122}] {StartingYaw:-122f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-121}] {StartingYaw:-121f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-120}] {StartingYaw:-120f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-119}] {StartingYaw:-119f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-118}] {StartingYaw:-118f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-117}] {StartingYaw:-117f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-116}] {StartingYaw:-116f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-115}] {StartingYaw:-115f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-114}] {StartingYaw:-114f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-113}] {StartingYaw:-113f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-112}] {StartingYaw:-112f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-111}] {StartingYaw:-111f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-110}] {StartingYaw:-110f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-109}] {StartingYaw:-109f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-108}] {StartingYaw:-108f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-107}] {StartingYaw:-107f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-106}] {StartingYaw:-106f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-105}] {StartingYaw:-105f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-104}] {StartingYaw:-104f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-103}] {StartingYaw:-103f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-102}] {StartingYaw:-102f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-101}] {StartingYaw:-101f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-100}] {StartingYaw:-100f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-99}] {StartingYaw:-99f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-98}] {StartingYaw:-98f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-97}] {StartingYaw:-97f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-96}] {StartingYaw:-96f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-95}] {StartingYaw:-95f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-94}] {StartingYaw:-94f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-93}] {StartingYaw:-93f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-92}] {StartingYaw:-92f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-91}] {StartingYaw:-91f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-90}] {StartingYaw:-90f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-89}] {StartingYaw:-89f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-88}] {StartingYaw:-88f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-87}] {StartingYaw:-87f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-86}] {StartingYaw:-86f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-85}] {StartingYaw:-85f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-84}] {StartingYaw:-84f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-83}] {StartingYaw:-83f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-82}] {StartingYaw:-82f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-81}] {StartingYaw:-81f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-80}] {StartingYaw:-80f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-79}] {StartingYaw:-79f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-78}] {StartingYaw:-78f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-77}] {StartingYaw:-77f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-76}] {StartingYaw:-76f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-75}] {StartingYaw:-75f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-74}] {StartingYaw:-74f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-73}] {StartingYaw:-73f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-72}] {StartingYaw:-72f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-71}] {StartingYaw:-71f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-70}] {StartingYaw:-70f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-69}] {StartingYaw:-69f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-68}] {StartingYaw:-68f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-67}] {StartingYaw:-67f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-66}] {StartingYaw:-66f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-65}] {StartingYaw:-65f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-64}] {StartingYaw:-64f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-63}] {StartingYaw:-63f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-62}] {StartingYaw:-62f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-61}] {StartingYaw:-61f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-60}] {StartingYaw:-60f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-59}] {StartingYaw:-59f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-58}] {StartingYaw:-58f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-57}] {StartingYaw:-57f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-56}] {StartingYaw:-56f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-55}] {StartingYaw:-55f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-54}] {StartingYaw:-54f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-53}] {StartingYaw:-53f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-52}] {StartingYaw:-52f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-51}] {StartingYaw:-51f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-50}] {StartingYaw:-50f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-49}] {StartingYaw:-49f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-48}] {StartingYaw:-48f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-47}] {StartingYaw:-47f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-46}] {StartingYaw:-46f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-45}] {StartingYaw:-45f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-44}] {StartingYaw:-44f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-43}] {StartingYaw:-43f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-42}] {StartingYaw:-42f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-41}] {StartingYaw:-41f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-40}] {StartingYaw:-40f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-39}] {StartingYaw:-39f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-38}] {StartingYaw:-38f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-37}] {StartingYaw:-37f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-36}] {StartingYaw:-36f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-35}] {StartingYaw:-35f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-34}] {StartingYaw:-34f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-33}] {StartingYaw:-33f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-32}] {StartingYaw:-32f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-31}] {StartingYaw:-31f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-30}] {StartingYaw:-30f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-29}] {StartingYaw:-29f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-28}] {StartingYaw:-28f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-27}] {StartingYaw:-27f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-26}] {StartingYaw:-26f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-25}] {StartingYaw:-25f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-24}] {StartingYaw:-24f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-23}] {StartingYaw:-23f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-22}] {StartingYaw:-22f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-21}] {StartingYaw:-21f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-20}] {StartingYaw:-20f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-19}] {StartingYaw:-19f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-18}] {StartingYaw:-18f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-17}] {StartingYaw:-17f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-16}] {StartingYaw:-16f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-15}] {StartingYaw:-15f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-14}] {StartingYaw:-14f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-13}] {StartingYaw:-13f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-12}] {StartingYaw:-12f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-11}] {StartingYaw:-11f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-10}] {StartingYaw:-10f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-9}] {StartingYaw:-9f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-8}] {StartingYaw:-8f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-7}] {StartingYaw:-7f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-6}] {StartingYaw:-6f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-5}] {StartingYaw:-5f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-4}] {StartingYaw:-4f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-3}] {StartingYaw:-3f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-2}] {StartingYaw:-2f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=-1}] {StartingYaw:-1f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=0}] {StartingYaw:0f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=1}] {StartingYaw:1f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=2}] {StartingYaw:2f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=3}] {StartingYaw:3f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=4}] {StartingYaw:4f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=5}] {StartingYaw:5f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=6}] {StartingYaw:6f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=7}] {StartingYaw:7f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=8}] {StartingYaw:8f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=9}] {StartingYaw:9f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=10}] {StartingYaw:10f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=11}] {StartingYaw:11f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=12}] {StartingYaw:12f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=13}] {StartingYaw:13f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=14}] {StartingYaw:14f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=15}] {StartingYaw:15f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=16}] {StartingYaw:16f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=17}] {StartingYaw:17f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=18}] {StartingYaw:18f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=19}] {StartingYaw:19f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=20}] {StartingYaw:20f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=21}] {StartingYaw:21f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=22}] {StartingYaw:22f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=23}] {StartingYaw:23f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=24}] {StartingYaw:24f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=25}] {StartingYaw:25f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=26}] {StartingYaw:26f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=27}] {StartingYaw:27f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=28}] {StartingYaw:28f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=29}] {StartingYaw:29f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=30}] {StartingYaw:30f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=31}] {StartingYaw:31f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=32}] {StartingYaw:32f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=33}] {StartingYaw:33f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=34}] {StartingYaw:34f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=35}] {StartingYaw:35f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=36}] {StartingYaw:36f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=37}] {StartingYaw:37f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=38}] {StartingYaw:38f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=39}] {StartingYaw:39f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=40}] {StartingYaw:40f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=41}] {StartingYaw:41f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=42}] {StartingYaw:42f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=43}] {StartingYaw:43f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=44}] {StartingYaw:44f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=45}] {StartingYaw:45f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=46}] {StartingYaw:46f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=47}] {StartingYaw:47f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=48}] {StartingYaw:48f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=49}] {StartingYaw:49f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=50}] {StartingYaw:50f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=51}] {StartingYaw:51f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=52}] {StartingYaw:52f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=53}] {StartingYaw:53f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=54}] {StartingYaw:54f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=55}] {StartingYaw:55f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=56}] {StartingYaw:56f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=57}] {StartingYaw:57f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=58}] {StartingYaw:58f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=59}] {StartingYaw:59f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=60}] {StartingYaw:60f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=61}] {StartingYaw:61f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=62}] {StartingYaw:62f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=63}] {StartingYaw:63f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=64}] {StartingYaw:64f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=65}] {StartingYaw:65f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=66}] {StartingYaw:66f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=67}] {StartingYaw:67f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=68}] {StartingYaw:68f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=69}] {StartingYaw:69f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=70}] {StartingYaw:70f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=71}] {StartingYaw:71f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=72}] {StartingYaw:72f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=73}] {StartingYaw:73f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=74}] {StartingYaw:74f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=75}] {StartingYaw:75f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=76}] {StartingYaw:76f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=77}] {StartingYaw:77f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=78}] {StartingYaw:78f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=79}] {StartingYaw:79f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=80}] {StartingYaw:80f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=81}] {StartingYaw:81f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=82}] {StartingYaw:82f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=83}] {StartingYaw:83f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=84}] {StartingYaw:84f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=85}] {StartingYaw:85f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=86}] {StartingYaw:86f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=87}] {StartingYaw:87f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=88}] {StartingYaw:88f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=89}] {StartingYaw:89f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=90}] {StartingYaw:90f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=91}] {StartingYaw:91f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=92}] {StartingYaw:92f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=93}] {StartingYaw:93f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=94}] {StartingYaw:94f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=95}] {StartingYaw:95f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=96}] {StartingYaw:96f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=97}] {StartingYaw:97f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=98}] {StartingYaw:98f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=99}] {StartingYaw:99f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=100}] {StartingYaw:100f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=101}] {StartingYaw:101f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=102}] {StartingYaw:102f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=103}] {StartingYaw:103f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=104}] {StartingYaw:104f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=105}] {StartingYaw:105f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=106}] {StartingYaw:106f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=107}] {StartingYaw:107f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=108}] {StartingYaw:108f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=109}] {StartingYaw:109f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=110}] {StartingYaw:110f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=111}] {StartingYaw:111f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=112}] {StartingYaw:112f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=113}] {StartingYaw:113f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=114}] {StartingYaw:114f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=115}] {StartingYaw:115f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=116}] {StartingYaw:116f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=117}] {StartingYaw:117f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=118}] {StartingYaw:118f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=119}] {StartingYaw:119f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=120}] {StartingYaw:120f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=121}] {StartingYaw:121f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=122}] {StartingYaw:122f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=123}] {StartingYaw:123f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=124}] {StartingYaw:124f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=125}] {StartingYaw:125f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=126}] {StartingYaw:126f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=127}] {StartingYaw:127f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=128}] {StartingYaw:128f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=129}] {StartingYaw:129f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=130}] {StartingYaw:130f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=131}] {StartingYaw:131f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=132}] {StartingYaw:132f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=133}] {StartingYaw:133f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=134}] {StartingYaw:134f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=135}] {StartingYaw:135f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=136}] {StartingYaw:136f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=137}] {StartingYaw:137f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=138}] {StartingYaw:138f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=139}] {StartingYaw:139f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=140}] {StartingYaw:140f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=141}] {StartingYaw:141f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=142}] {StartingYaw:142f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=143}] {StartingYaw:143f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=144}] {StartingYaw:144f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=145}] {StartingYaw:145f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=146}] {StartingYaw:146f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=147}] {StartingYaw:147f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=148}] {StartingYaw:148f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=149}] {StartingYaw:149f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=150}] {StartingYaw:150f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=151}] {StartingYaw:151f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=152}] {StartingYaw:152f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=153}] {StartingYaw:153f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=154}] {StartingYaw:154f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=155}] {StartingYaw:155f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=156}] {StartingYaw:156f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=157}] {StartingYaw:157f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=158}] {StartingYaw:158f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=159}] {StartingYaw:159f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=160}] {StartingYaw:160f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=161}] {StartingYaw:161f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=162}] {StartingYaw:162f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=163}] {StartingYaw:163f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=164}] {StartingYaw:164f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=165}] {StartingYaw:165f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=166}] {StartingYaw:166f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=167}] {StartingYaw:167f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=168}] {StartingYaw:168f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=169}] {StartingYaw:169f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=170}] {StartingYaw:170f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=171}] {StartingYaw:171f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=172}] {StartingYaw:172f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=173}] {StartingYaw:173f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=174}] {StartingYaw:174f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=175}] {StartingYaw:175f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=176}] {StartingYaw:176f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=177}] {StartingYaw:177f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=178}] {StartingYaw:178f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=179}] {StartingYaw:179f}
data modify entity @e[distance=..3,limit=1,nbt=!{pixelmon:statue},tag=NPCBird,scores={Rotation=180}] {StartingYaw:180f}
