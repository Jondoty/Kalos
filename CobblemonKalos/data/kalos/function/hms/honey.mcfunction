


#Rolls rng score
scoreboard players set @e[x=-687,y=100,z=1376,dx=2,dy=4,type=armor_stand] rng 0
scoreboard players add @e[sort=random,limit=1,x=-687,y=100,z=1376,dx=2,dy=4] rng 1
scoreboard players add @e[sort=random,limit=1,x=-687,y=100,z=1376,dx=2,dy=4] rng 2
scoreboard players add @e[sort=random,limit=1,x=-687,y=100,z=1376,dx=2,dy=4] rng 4
scoreboard players add @e[sort=random,limit=1,x=-687,y=100,z=1376,dx=2,dy=4] rng 8
scoreboard players add @e[sort=random,limit=1,x=-687,y=100,z=1376,dx=2,dy=4] rng 16
scoreboard players add @e[sort=random,limit=1,x=-687,y=100,z=1376,dx=2,dy=4] rng 32
scoreboard players add @e[sort=random,limit=1,x=-687,y=100,z=1376,dx=2,dy=4] rng 64

scoreboard players operation @s rng = @e[x=-687,y=100,z=1376,dy=3,type=armor_stand] rng





#execute as @s positioned ~ ~ ~25 run pokespawn lucario





#Connecting Cave [x=-1897,y=0,z=-63,dx=257,dy=86,dz=201]

execute as @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={rng=0..45,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Zubat level=8
execute as @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={rng=0..45,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Zubat level=8
execute as @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={rng=0..45,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Zubat level=8
execute as @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={rng=0..45,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Zubat level=8
execute as @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={rng=0..45,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Zubat level=8
tellraw @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={rng=0..45,HoneyUse=1..}] {"text":"A hoard of Zubat spawned!","italic":true,"color":"gray"}

execute as @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={rng=46..120,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Whismur level=7
execute as @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={rng=46..120,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Whismur level=7
execute as @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={rng=46..120,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Whismur level=7
execute as @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={rng=46..120,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Whismur level=7
execute as @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={rng=46..120,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Whismur level=7
tellraw @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={rng=46..120,HoneyUse=1..}] {"text":"A hoard of Whismur spawned!","italic":true,"color":"gray"}

execute as @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Axew level=8
execute as @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Axew level=8
execute as @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Axew level=8
execute as @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Axew level=8
execute as @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Axew level=8
tellraw @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={rng=121..127,HoneyUse=1..}] {"text":"A hoard of Axew spawned!","italic":true,"color":"gray"}

scoreboard players set @s[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,scores={HoneyUse=1..}] HoneyUse 0




#Reflection Cave [x=-1847,y=0,z=-675,dx=414,dy=89,dz=507]

execute as @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={rng=0..70,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn MimeJr level=11
execute as @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={rng=0..70,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn MimeJr level=11
execute as @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={rng=0..70,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn MimeJr level=11
execute as @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={rng=0..70,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn MimeJr level=11
execute as @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={rng=0..70,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn MimeJr level=11
tellraw @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={rng=0..70,HoneyUse=1..}] {"text":"A hoard of Mime Jr. spawned!","italic":true,"color":"gray"}

execute as @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={rng=71..115,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Roggenrola level=11
execute as @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={rng=71..115,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Roggenrola level=11
execute as @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={rng=71..115,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Roggenrola level=11
execute as @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={rng=71..115,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Roggenrola level=11
execute as @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={rng=71..115,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Roggenrola level=11
tellraw @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={rng=71..115,HoneyUse=1..}] {"text":"A hoard of Roggenrola spawned!","italic":true,"color":"gray"}

execute as @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={rng=116..120,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Carbink level=11
execute as @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={rng=116..120,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Carbink level=11
execute as @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={rng=116..120,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Carbink level=11
execute as @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={rng=116..120,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Carbink level=11
execute as @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={rng=116..120,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Roggenrola level=11
tellraw @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={rng=116..120,HoneyUse=1..}] {"text":"A hoard of Carbink & a Roggenrola spawned!","italic":true,"color":"gray"}

execute as @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Roggenrola level=11
execute as @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Carbink level=11
execute as @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Roggenrola level=11
execute as @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Roggenrola level=11
execute as @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Roggenrola level=11
tellraw @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={rng=121..127,HoneyUse=1..}] {"text":"A hoard of Roggenrola & a Carbink spawned!","italic":true,"color":"gray"}

scoreboard players set @s[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,scores={HoneyUse=1..}] HoneyUse 0





#Azure Bay [x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451]

execute as @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={rng=0..45,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Slowpoke level=13
execute as @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={rng=0..45,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Slowpoke level=13
execute as @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={rng=0..45,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Slowpoke level=13
execute as @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={rng=0..45,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Slowpoke level=13
execute as @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={rng=0..45,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Slowpoke level=13
tellraw @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={rng=0..45,HoneyUse=1..}] {"text":"A hoard of Slowpoke spawned!","italic":true,"color":"gray"}

execute as @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={rng=46..52,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Exeggcute level=14
execute as @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={rng=46..52,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Exeggcute level=14
execute as @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={rng=46..52,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Exeggcute level=14
execute as @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={rng=46..52,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Exeggcute level=14
execute as @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={rng=46..52,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Exeggcute level=14
tellraw @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={rng=46..52,HoneyUse=1..}] {"text":"A hoard of Exeggcute spawned!","italic":true,"color":"gray"}

execute as @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={rng=53..127,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Wingull level=13
execute as @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={rng=53..127,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Wingull level=13
execute as @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={rng=53..127,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Wingull level=13
execute as @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={rng=53..127,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Wingull level=13
execute as @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={rng=53..127,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Wingull level=13
tellraw @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={rng=53..127,HoneyUse=1..}] {"text":"A hoard of Wingull spawned!","italic":true,"color":"gray"}

scoreboard players set @s[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,scores={HoneyUse=1..}] HoneyUse 0





#Frost Cavern Underground [x=444,y=0,z=-1444,dx=465,dy=126,dz=550]

execute as @s[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Smoochum level=21
execute as @s[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Smoochum level=21
execute as @s[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Smoochum level=21
execute as @s[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Smoochum level=21
execute as @s[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Smoochum level=21
tellraw @s[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,scores={rng=0..6,HoneyUse=1..}] {"text":"A hoard of Smoochum spawned!","italic":true,"color":"gray"}

execute as @s[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,scores={rng=7..83,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Vanillite level=20
execute as @s[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,scores={rng=7..83,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Vanillite level=20
execute as @s[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,scores={rng=7..83,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Vanillite level=20
execute as @s[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,scores={rng=7..83,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Vanillite level=20
execute as @s[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,scores={rng=7..83,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Vanillite level=20
tellraw @s[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,scores={rng=7..83,HoneyUse=1..}] {"text":"A hoard of Vanillite spawned!","italic":true,"color":"gray"}

execute as @s[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,scores={rng=84..127,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Cubchoo level=20
execute as @s[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,scores={rng=84..127,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Cubchoo level=20
execute as @s[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,scores={rng=84..127,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Cubchoo level=20
execute as @s[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,scores={rng=84..127,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Cubchoo level=20
execute as @s[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,scores={rng=84..127,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Cubchoo level=20
tellraw @s[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,scores={rng=84..127,HoneyUse=1..}] {"text":"A hoard of Cubchoo spawned!","italic":true,"color":"gray"}

scoreboard players set @s[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,scores={HoneyUse=1..}] HoneyUse 0







#Terminus Cave [x=1720,y=0,z=-232,dx=421,dy=100,dz=324]

execute as @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={rng=0..45,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Geodude level=23
execute as @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={rng=0..45,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Geodude level=23
execute as @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={rng=0..45,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Geodude level=23
execute as @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={rng=0..45,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Geodude level=23
execute as @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={rng=0..45,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Geodude level=23
tellraw @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={rng=0..45,HoneyUse=1..}] {"text":"A hoard of Geodude spawned!","italic":true,"color":"gray"}

execute as @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={rng=46..52,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Larvitar level=24
execute as @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={rng=46..52,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Larvitar level=24
execute as @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={rng=46..52,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Larvitar level=24
execute as @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={rng=46..52,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Larvitar level=24
execute as @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={rng=46..52,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Larvitar level=24
tellraw @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={rng=46..52,HoneyUse=1..}] {"text":"A hoard of Larvitar spawned!","italic":true,"color":"gray"}

execute as @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={rng=53..59,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Aron level=24
execute as @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={rng=53..59,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Aron level=24
execute as @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={rng=53..59,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Aron level=24
execute as @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={rng=53..59,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Aron level=24
execute as @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={rng=53..59,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Aron level=24
tellraw @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={rng=53..59,HoneyUse=1..}] {"text":"A hoard of Aron spawned!","italic":true,"color":"gray"}

execute as @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={rng=60..127,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Durant level=23
execute as @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={rng=60..127,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Durant level=23
execute as @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={rng=60..127,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Durant level=23
execute as @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={rng=60..127,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Durant level=23
execute as @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={rng=60..127,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Durant level=23
tellraw @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={rng=60..127,HoneyUse=1..}] {"text":"A hoard of Durant spawned!","italic":true,"color":"gray"}

scoreboard players set @s[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,scores={HoneyUse=1..}] HoneyUse 0






#Pokémon Village [x=703,y=90,z=563,dx=280,dy=100,dz=279]

execute as @s[x=703,y=90,z=563,dx=280,dy=100,dz=279,scores={rng=0..45,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Poliwag level=25
execute as @s[x=703,y=90,z=563,dx=280,dy=100,dz=279,scores={rng=0..45,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Poliwag level=25
execute as @s[x=703,y=90,z=563,dx=280,dy=100,dz=279,scores={rng=0..45,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Poliwag level=25
execute as @s[x=703,y=90,z=563,dx=280,dy=100,dz=279,scores={rng=0..45,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Poliwag level=25
execute as @s[x=703,y=90,z=563,dx=280,dy=100,dz=279,scores={rng=0..45,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Poliwag level=25
tellraw @s[x=703,y=90,z=563,dx=280,dy=100,dz=279,scores={rng=0..45,HoneyUse=1..}] {"text":"A hoard of Poliwag spawned!","italic":true,"color":"gray"}

execute as @s[x=703,y=90,z=563,dx=280,dy=100,dz=279,scores={rng=46..52,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Lombre level=25
execute as @s[x=703,y=90,z=563,dx=280,dy=100,dz=279,scores={rng=46..52,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Lombre level=25
execute as @s[x=703,y=90,z=563,dx=280,dy=100,dz=279,scores={rng=46..52,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Lombre level=25
execute as @s[x=703,y=90,z=563,dx=280,dy=100,dz=279,scores={rng=46..52,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Lombre level=25
execute as @s[x=703,y=90,z=563,dx=280,dy=100,dz=279,scores={rng=46..52,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Lombre level=25
tellraw @s[x=703,y=90,z=563,dx=280,dy=100,dz=279,scores={rng=46..52,HoneyUse=1..}] {"text":"A hoard of Lombre spawned!","italic":true,"color":"gray"}

execute as @s[x=703,y=90,z=563,dx=280,dy=100,dz=279,scores={rng=53..127,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Foongus level=25
execute as @s[x=703,y=90,z=563,dx=280,dy=100,dz=279,scores={rng=53..127,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Foongus level=25
execute as @s[x=703,y=90,z=563,dx=280,dy=100,dz=279,scores={rng=53..127,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Foongus level=25
execute as @s[x=703,y=90,z=563,dx=280,dy=100,dz=279,scores={rng=53..127,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Foongus level=25
execute as @s[x=703,y=90,z=563,dx=280,dy=100,dz=279,scores={rng=53..127,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Foongus level=25
tellraw @s[x=703,y=90,z=563,dx=280,dy=100,dz=279,scores={rng=53..127,HoneyUse=1..}] {"text":"A hoard of Foongus spawned!","italic":true,"color":"gray"}

scoreboard players set @s[x=703,y=90,z=563,dx=280,dy=100,dz=279,scores={HoneyUse=1..}] HoneyUse 0






#Victory Road (3) [x=1500,y=0,z=1203,dx=982,dy=256,dz=554]

execute as @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,scores={rng=0..70,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Geodude level=28
execute as @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,scores={rng=0..70,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Geodude level=28
execute as @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,scores={rng=0..70,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Geodude level=28
execute as @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,scores={rng=0..70,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Geodude level=28
execute as @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,scores={rng=0..70,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Geodude level=28
tellraw @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,scores={rng=0..70,HoneyUse=1..}] {"text":"A hoard of Geodude spawned!","italic":true,"color":"gray"}

execute as @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,scores={rng=71..115,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Graveler level=29
execute as @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,scores={rng=71..115,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Graveler level=29
execute as @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,scores={rng=71..115,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Graveler level=29
execute as @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,scores={rng=71..115,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Graveler level=29
execute as @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,scores={rng=71..115,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Graveler level=29
tellraw @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,scores={rng=71..115,HoneyUse=1..}] {"text":"A hoard of Graveler spawned!","italic":true,"color":"gray"}

execute as @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,scores={rng=116..121,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Lickitung level=30
execute as @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,scores={rng=116..121,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Lickitung level=30
execute as @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,scores={rng=116..121,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Lickitung level=30
execute as @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,scores={rng=116..121,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Lickitung level=30
execute as @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,scores={rng=116..121,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Lickitung level=30
tellraw @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,scores={rng=116..121,HoneyUse=1..}] {"text":"A hoard of Lickitung spawned!","italic":true,"color":"gray"}

execute as @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,scores={rng=122..127,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Floatzel level=29
execute as @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,scores={rng=122..127,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Floatzel level=29
execute as @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,scores={rng=122..127,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Floatzel level=29
execute as @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,scores={rng=122..127,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Floatzel level=29
execute as @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,scores={rng=122..127,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Floatzel level=29
tellraw @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,scores={rng=122..127,HoneyUse=1..}] {"text":"A hoard of Floatzel spawned!","italic":true,"color":"gray"}

scoreboard players set @s[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,scores={HoneyUse=1..}] HoneyUse 0






#Victory Road (4) [x=1467,y=99,z=1822,dx=1200,dy=160,dz=738]

execute as @s[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,scores={rng=0..70,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Geodude level=28
execute as @s[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,scores={rng=0..70,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Geodude level=28
execute as @s[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,scores={rng=0..70,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Geodude level=28
execute as @s[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,scores={rng=0..70,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Geodude level=28
execute as @s[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,scores={rng=0..70,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Geodude level=28
tellraw @s[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,scores={rng=0..70,HoneyUse=1..}] {"text":"A hoard of Geodude spawned!","italic":true,"color":"gray"}

execute as @s[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,scores={rng=71..115,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Graveler level=29
execute as @s[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,scores={rng=71..115,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Graveler level=29
execute as @s[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,scores={rng=71..115,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Graveler level=29
execute as @s[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,scores={rng=71..115,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Graveler level=29
execute as @s[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,scores={rng=71..115,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Graveler level=29
tellraw @s[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,scores={rng=71..115,HoneyUse=1..}] {"text":"A hoard of Graveler spawned!","italic":true,"color":"gray"}

execute as @s[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,scores={rng=116..121,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Lickitung level=30
execute as @s[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,scores={rng=116..121,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Lickitung level=30
execute as @s[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,scores={rng=116..121,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Lickitung level=30
execute as @s[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,scores={rng=116..121,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Lickitung level=30
execute as @s[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,scores={rng=116..121,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Lickitung level=30
tellraw @s[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,scores={rng=116..121,HoneyUse=1..}] {"text":"A hoard of Lickitung spawned!","italic":true,"color":"gray"}

execute as @s[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,scores={rng=116..121,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Floatzel level=29
execute as @s[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,scores={rng=116..121,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Floatzel level=29
execute as @s[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,scores={rng=116..121,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Floatzel level=29
execute as @s[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,scores={rng=116..121,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Floatzel level=29
execute as @s[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,scores={rng=116..121,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Floatzel level=29
tellraw @s[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,scores={rng=116..121,HoneyUse=1..}] {"text":"A hoard of Floatzel spawned!","italic":true,"color":"gray"}

scoreboard players set @s[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,scores={HoneyUse=1..}] HoneyUse 0







#Route 5 [x=-963,y=0,z=-219,dx=400,dy=256,dz=230]

execute as @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Plusle level=6
execute as @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Minun level=6
execute as @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Plusle level=6
execute as @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Plusle level=6
execute as @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Plusle level=6
tellraw @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={rng=0..6,HoneyUse=1..}] {"text":"A hoard of Plusle & a Minun spawned!","italic":true,"color":"gray"}

execute as @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={rng=7..13,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Minun level=6
execute as @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={rng=7..13,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Minun level=6
execute as @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={rng=7..13,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Minun level=6
execute as @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={rng=7..13,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Plusle level=6
execute as @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={rng=7..13,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Minun level=6
tellraw @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={rng=7..13,HoneyUse=1..}] {"text":"A hoard of Minun & a Plusle spawned!","italic":true,"color":"gray"}

execute as @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={rng=14..84,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Gulpin level=5
execute as @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={rng=14..84,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Gulpin level=5
execute as @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={rng=14..84,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Gulpin level=5
execute as @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={rng=14..84,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Gulpin level=5
execute as @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={rng=14..84,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Gulpin level=5
tellraw @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={rng=14..84,HoneyUse=1..}] {"text":"A hoard of Gulpin spawned!","italic":true,"color":"gray"}

execute as @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={rng=85..127,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Scraggy level=5
execute as @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={rng=85..127,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Scraggy level=5
execute as @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={rng=85..127,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Scraggy level=5
execute as @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={rng=85..127,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Scraggy level=5
execute as @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={rng=85..127,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Scraggy level=5
tellraw @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={rng=85..127,HoneyUse=1..}] {"text":"A hoard of Scraggy spawned!","italic":true,"color":"gray"}

scoreboard players set @s[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,scores={HoneyUse=1..}] HoneyUse 0








#Route 7 [x=-1732,y=88,z=-118,dx=585,dy=168,dz=199]

execute as @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,scores={rng=0..45,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Psyduck level=7
execute as @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,scores={rng=0..45,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Psyduck level=7
execute as @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,scores={rng=0..45,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Psyduck level=7
execute as @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,scores={rng=0..45,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Psyduck level=7
execute as @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,scores={rng=0..45,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Psyduck level=7
tellraw @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,scores={rng=0..45,HoneyUse=1..}] {"text":"A hoard of Psyduck spawned!","italic":true,"color":"gray"}

execute as @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,scores={rng=46..120,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Hoppip level=7
execute as @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,scores={rng=46..120,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Hoppip level=7
execute as @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,scores={rng=46..120,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Hoppip level=7
execute as @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,scores={rng=46..120,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Hoppip level=7
execute as @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,scores={rng=46..120,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Hoppip level=7
tellraw @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,scores={rng=46..120,HoneyUse=1..}] {"text":"A hoard of Hoppip spawned!","italic":true,"color":"gray"}

execute as @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Roselia level=8
execute as @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Roselia level=8
execute as @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Roselia level=8
execute as @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Roselia level=8
execute as @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Roselia level=8
tellraw @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,scores={rng=121..127,HoneyUse=1..}] {"text":"A hoard of Roselia spawned!","italic":true,"color":"gray"}

scoreboard players set @s[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,scores={HoneyUse=1..}] HoneyUse 0







#Route 8 [x=-2231,y=83,z=59,dx=362,dy=173,dz=444]

execute as @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Taillow level=7
execute as @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Taillow level=7
execute as @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Taillow level=7
execute as @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Taillow level=7
execute as @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Taillow level=7
tellraw @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={rng=0..6,HoneyUse=1..}] {"text":"A hoard of Taillow spawned!","italic":true,"color":"gray"}

execute as @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={rng=7..70,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Wingull level=7
execute as @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={rng=7..70,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Wingull level=7
execute as @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={rng=7..70,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Wingull level=7
execute as @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={rng=7..70,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Wingull level=7
execute as @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={rng=7..70,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Wingull level=7
tellraw @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={rng=7..70,HoneyUse=1..}] {"text":"A hoard of Wingull spawned!","italic":true,"color":"gray"}

execute as @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={rng=71..99,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Zangoose level=8
execute as @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={rng=71..99,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Zangoose level=8
execute as @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={rng=71..99,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Seviper level=8
execute as @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={rng=71..99,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Zangoose level=8
execute as @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={rng=71..99,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Zangoose level=8
tellraw @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={rng=71..99,HoneyUse=1..}] {"text":"A hoard of Zangoose & a Seviper spawned!","italic":true,"color":"gray"}

execute as @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={rng=100..127,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Seviper level=8
execute as @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={rng=100..127,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Seviper level=8
execute as @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={rng=100..127,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Zangoose level=8
execute as @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={rng=100..127,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Seviper level=8
execute as @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={rng=100..127,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Seviper level=8
tellraw @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={rng=100..127,HoneyUse=1..}] {"text":"A hoard of Seviper & a Zangoose spawned!","italic":true,"color":"gray"}

scoreboard players set @s[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,scores={HoneyUse=1..}] HoneyUse 0








#Route 10 [x=-2298,y=0,z=-597,dx=262,dy=256,dz=379]

execute as @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={rng=0..45,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Yanma level=10
execute as @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={rng=0..45,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Yanma level=10
execute as @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={rng=0..45,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Yanma level=10
execute as @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={rng=0..45,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Yanma level=10
execute as @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={rng=0..45,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Yanma level=10
tellraw @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={rng=0..45,HoneyUse=1..}] {"text":"A hoard of Yanma spawned!","italic":true,"color":"gray"}

execute as @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={rng=46..52,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Houndour level=11
execute as @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={rng=46..52,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Houndour level=11
execute as @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={rng=46..52,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Houndour level=11
execute as @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={rng=46..52,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Houndour level=11
execute as @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={rng=46..52,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Houndour level=11
tellraw @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={rng=46..52,HoneyUse=1..}] {"text":"A hoard of Houndour spawned!","italic":true,"color":"gray"}

execute as @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={rng=53..59,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Electrike level=10
execute as @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={rng=53..59,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Electrike level=10
execute as @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={rng=53..59,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Electrike level=10
execute as @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={rng=53..59,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Electrike level=10
execute as @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={rng=53..59,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Electrike level=10
tellraw @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={rng=53..59,HoneyUse=1..}] {"text":"A hoard of Electrike spawned!","italic":true,"color":"gray"}

execute as @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={rng=60..127,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Nosepass level=11
execute as @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={rng=60..127,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Nosepass level=11
execute as @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={rng=60..127,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Nosepass level=11
execute as @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={rng=60..127,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Nosepass level=11
execute as @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={rng=60..127,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Nosepass level=11
tellraw @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={rng=60..127,HoneyUse=1..}] {"text":"A hoard of Nosepass spawned!","italic":true,"color":"gray"}

scoreboard players set @s[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,scores={HoneyUse=1..}] HoneyUse 0







#Route 11 [x=-2112,y=0,z=-757,dx=264,dy=256,dz=159]

execute as @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={rng=0..42,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Nidoranfemale level=11
execute as @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={rng=0..42,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Nidoranfemale level=11
execute as @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={rng=0..42,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Nidoranfemale level=11
execute as @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={rng=0..42,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Nidoranfemale level=11
execute as @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={rng=0..42,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Nidoranfemale level=11
tellraw @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={rng=0..42,HoneyUse=1..}] {"text":"A hoard of Nidoran♀ spawned!","italic":true,"color":"gray"}

execute as @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={rng=43..85,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Nidoranmale level=11
execute as @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={rng=43..85,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Nidoranmale level=11
execute as @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={rng=43..85,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Nidoranmale level=11
execute as @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={rng=43..85,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Nidoranmale level=11
execute as @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={rng=43..85,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Nidoranmale level=11
tellraw @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={rng=43..85,HoneyUse=1..}] {"text":"A hoard of Nidoran♂ spawned!","italic":true,"color":"gray"}

execute as @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={rng=86..92,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Starly level=12
execute as @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={rng=86..92,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Starly level=12
execute as @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={rng=86..92,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Starly level=12
execute as @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={rng=86..92,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Starly level=12
execute as @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={rng=86..92,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Starly level=12
tellraw @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={rng=86..92,HoneyUse=1..}] {"text":"A hoard of Starly spawned!","italic":true,"color":"gray"}

execute as @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={rng=93..127,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Stunky level=11
execute as @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={rng=93..127,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Stunky level=11
execute as @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={rng=93..127,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Stunky level=11
execute as @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={rng=93..127,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Stunky level=11
execute as @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={rng=93..127,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Stunky level=11
tellraw @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={rng=93..127,HoneyUse=1..}] {"text":"A hoard of Stunky spawned!","italic":true,"color":"gray"}

scoreboard players set @s[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,scores={HoneyUse=1..}] HoneyUse 0







#Route 12 [x=-1483,y=0,z=-888,dx=278,dy=256,dz=154]

execute as @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Tauros level=14
execute as @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Tauros level=14
execute as @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Miltank level=14
execute as @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Tauros level=14
execute as @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Tauros level=14
tellraw @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={rng=0..6,HoneyUse=1..}] {"text":"A hoard of Tauros & a Miltank spawned!","italic":true,"color":"gray"}

execute as @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={rng=7..51,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Mareep level=13
execute as @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={rng=7..51,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Mareep level=13
execute as @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={rng=7..51,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Mareep level=13
execute as @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={rng=7..51,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Mareep level=13
execute as @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={rng=7..51,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Mareep level=13
tellraw @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={rng=7..51,HoneyUse=1..}] {"text":"A hoard of Mareep spawned!","italic":true,"color":"gray"}

execute as @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={rng=52..58,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Miltank level=14
execute as @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={rng=52..58,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Miltank level=14
execute as @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={rng=52..58,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Tauros level=14
execute as @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={rng=52..58,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Miltank level=14
execute as @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={rng=52..58,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Miltank level=14
tellraw @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={rng=52..58,HoneyUse=1..}] {"text":"A hoard of Miltank & a Tauros spawned!","italic":true,"color":"gray"}

execute as @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={rng=59..127,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Wingull level=13
execute as @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={rng=59..127,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Wingull level=13
execute as @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={rng=59..127,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Wingull level=13
execute as @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={rng=59..127,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Wingull level=13
execute as @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={rng=59..127,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Wingull level=13
tellraw @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={rng=59..127,HoneyUse=1..}] {"text":"A hoard of Wingull spawned!","italic":true,"color":"gray"}

scoreboard players set @s[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,scores={HoneyUse=1..}] HoneyUse 0





#Route 14 [x=-342,y=0,z=-1302,dx=432,dy=256,dz=508]

execute as @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Ekans level=17
execute as @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Ekans level=17
execute as @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Ekans level=17
execute as @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Ekans level=17
execute as @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Ekans level=17
tellraw @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,scores={rng=0..6,HoneyUse=1..}] {"text":"A hoard of Ekans spawned!","italic":true,"color":"gray"}

execute as @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,scores={rng=7..84,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Bellsprout level=16
execute as @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,scores={rng=7..84,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Bellsprout level=16
execute as @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,scores={rng=7..84,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Bellsprout level=16
execute as @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,scores={rng=7..84,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Bellsprout level=16
execute as @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,scores={rng=7..84,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Bellsprout level=16
tellraw @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,scores={rng=7..84,HoneyUse=1..}] {"text":"A hoard of Bellsprout spawned!","italic":true,"color":"gray"}

execute as @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,scores={rng=85..127,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Skorupi level=16
execute as @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,scores={rng=85..127,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Skorupi level=16
execute as @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,scores={rng=85..127,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Skorupi level=16
execute as @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,scores={rng=85..127,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Skorupi level=16
execute as @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,scores={rng=85..127,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Skorupi level=16
tellraw @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,scores={rng=85..127,HoneyUse=1..}] {"text":"A hoard of Skorupi spawned!","italic":true,"color":"gray"}

scoreboard players set @s[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,scores={HoneyUse=1..}] HoneyUse 0






#Route 15 [x=212,y=95,z=-695,dx=369,dy=156,dz=292]

execute as @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292,scores={rng=0..77,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Murkrow level=18
execute as @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292,scores={rng=0..77,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Murkrow level=18
execute as @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292,scores={rng=0..77,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Murkrow level=18
execute as @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292,scores={rng=0..77,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Murkrow level=18
execute as @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292,scores={rng=0..77,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Murkrow level=18
tellraw @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292,scores={rng=0..77,HoneyUse=1..}] {"text":"A hoard of Murkrow spawned!","italic":true,"color":"gray"}

execute as @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292,scores={rng=78..120,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Foongus level=18
execute as @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292,scores={rng=78..120,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Foongus level=18
execute as @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292,scores={rng=78..120,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Foongus level=18
execute as @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292,scores={rng=78..120,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Foongus level=18
execute as @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292,scores={rng=78..120,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Foongus level=18
tellraw @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292,scores={rng=78..120,HoneyUse=1..}] {"text":"A hoard of Foongus spawned!","italic":true,"color":"gray"}

execute as @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Klefki level=19
execute as @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Klefki level=19
execute as @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Klefki level=19
execute as @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Klefki level=19
execute as @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Klefki level=19
tellraw @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292,scores={rng=121..127,HoneyUse=1..}] {"text":"A hoard of Klefki spawned!","italic":true,"color":"gray"}

scoreboard players set @s[x=212,y=95,z=-695,dx=369,dy=156,dz=292,scores={HoneyUse=1..}] HoneyUse 0





#Route 16 [x=212,y=95,z=-402,dx=369,dy=160,dz=273]

execute as @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273,scores={rng=0..77,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Murkrow level=18
execute as @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273,scores={rng=0..77,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Murkrow level=18
execute as @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273,scores={rng=0..77,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Murkrow level=18
execute as @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273,scores={rng=0..77,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Murkrow level=18
execute as @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273,scores={rng=0..77,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Murkrow level=18
tellraw @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273,scores={rng=0..77,HoneyUse=1..}] {"text":"A hoard of Murkrow spawned!","italic":true,"color":"gray"}

execute as @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273,scores={rng=78..120,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Foongus level=18
execute as @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273,scores={rng=78..120,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Foongus level=18
execute as @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273,scores={rng=78..120,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Foongus level=18
execute as @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273,scores={rng=78..120,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Foongus level=18
execute as @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273,scores={rng=78..120,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Foongus level=18
tellraw @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273,scores={rng=78..120,HoneyUse=1..}] {"text":"A hoard of Foongus spawned!","italic":true,"color":"gray"}

execute as @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Klefki level=19
execute as @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Klefki level=19
execute as @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Klefki level=19
execute as @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Klefki level=19
execute as @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Klefki level=19
tellraw @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273,scores={rng=121..127,HoneyUse=1..}] {"text":"A hoard of Klefki spawned!","italic":true,"color":"gray"}

scoreboard players set @s[x=212,y=95,z=-402,dx=369,dy=160,dz=273,scores={HoneyUse=1..}] HoneyUse 0





#Route 18 [x=1298,y=0,z=-140,dx=300,dy=256,dz=271]

execute as @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={rng=0..77,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Geodude level=23
execute as @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={rng=0..77,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Geodude level=23
execute as @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={rng=0..77,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Geodude level=23
execute as @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={rng=0..77,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Geodude level=23
execute as @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={rng=0..77,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Geodude level=23
tellraw @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={rng=0..77,HoneyUse=1..}] {"text":"A hoard of Geodude spawned!","italic":true,"color":"gray"}

execute as @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={rng=78..84,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Heatmor level=23
execute as @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={rng=78..84,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Heatmor level=23
execute as @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={rng=78..84,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Heatmor level=23
execute as @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={rng=78..84,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Durant level=23
execute as @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={rng=78..84,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Heatmor level=23
tellraw @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={rng=78..84,HoneyUse=1..}] {"text":"A hoard of Heatmor & a Durant spawned!","italic":true,"color":"gray"}

execute as @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={rng=85..120,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Durant level=23
execute as @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={rng=85..120,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Durant level=23
execute as @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={rng=85..120,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Durant level=23
execute as @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={rng=85..120,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Durant level=23
execute as @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={rng=85..120,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Durant level=23
tellraw @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={rng=85..120,HoneyUse=1..}] {"text":"A hoard of Durant spawned!","italic":true,"color":"gray"}

execute as @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Heatmor level=23
execute as @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Durant level=23
execute as @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Durant level=23
execute as @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Durant level=23
execute as @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Durant level=23
tellraw @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={rng=121..127,HoneyUse=1..}] {"text":"A hoard of Durant & a Heatmor spawned!","italic":true,"color":"gray"}

scoreboard players set @s[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,scores={HoneyUse=1..}] HoneyUse 0





#Route 19 [x=1326,y=0,z=331,dx=296,dy=256,dz=249]

execute as @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Arbok level=25
execute as @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Arbok level=25
execute as @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Arbok level=25
execute as @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Arbok level=25
execute as @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Arbok level=25
tellraw @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249,scores={rng=0..6,HoneyUse=1..}] {"text":"A hoard of Arbok spawned!","italic":true,"color":"gray"}

execute as @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249,scores={rng=7..84,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Weepinbell level=24
execute as @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249,scores={rng=7..84,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Weepinbell level=24
execute as @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249,scores={rng=7..84,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Weepinbell level=24
execute as @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249,scores={rng=7..84,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Weepinbell level=24
execute as @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249,scores={rng=7..84,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Weepinbell level=24
tellraw @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249,scores={rng=7..84,HoneyUse=1..}] {"text":"A hoard of Weepinbell spawned!","italic":true,"color":"gray"}

execute as @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249,scores={rng=85..127,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Gligar level=24
execute as @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249,scores={rng=85..127,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Gligar level=24
execute as @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249,scores={rng=85..127,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Gligar level=24
execute as @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249,scores={rng=85..127,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Gligar level=24
execute as @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249,scores={rng=85..127,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Gligar level=24
tellraw @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249,scores={rng=85..127,HoneyUse=1..}] {"text":"A hoard of Gligar spawned!","italic":true,"color":"gray"}

scoreboard players set @s[x=1326,y=0,z=331,dx=296,dy=256,dz=249,scores={HoneyUse=1..}] HoneyUse 0





#Route 20 [x=984,y=95,z=707,dx=621,dy=50,dz=451]

execute as @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Sudowoodo level=25
execute as @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Sudowoodo level=25
execute as @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Trevenant level=25
execute as @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Sudowoodo level=25
execute as @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Sudowoodo level=25
tellraw @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={rng=0..6,HoneyUse=1..}] {"text":"A hoard of Sudowoodo & a Trevenant spawned!","italic":true,"color":"gray"}

execute as @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={rng=7..84,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Foongus level=25
execute as @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={rng=7..84,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Foongus level=25
execute as @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={rng=7..84,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Foongus level=25
execute as @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={rng=7..84,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Foongus level=25
execute as @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={rng=7..84,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Foongus level=25
tellraw @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={rng=7..84,HoneyUse=1..}] {"text":"A hoard of Foongus spawned!","italic":true,"color":"gray"}

execute as @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={rng=85..120,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Trevenant level=25
execute as @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={rng=85..120,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Trevenant level=25
execute as @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={rng=85..120,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Trevenant level=25
execute as @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={rng=85..120,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Trevenant level=25
execute as @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={rng=85..120,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Trevenant level=25
tellraw @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={rng=85..120,HoneyUse=1..}] {"text":"A hoard of Trevenant spawned!","italic":true,"color":"gray"}

execute as @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Trevenant level=25
execute as @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Trevenant level=25
execute as @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Sudowoodo level=25
execute as @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Trevenant level=25
execute as @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={rng=121..127,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Trevenant level=25
tellraw @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={rng=121..127,HoneyUse=1..}] {"text":"A hoard of Trevenant & a Sudowoodo spawned!","italic":true,"color":"gray"}

scoreboard players set @s[x=984,y=95,z=707,dx=621,dy=50,dz=451,scores={HoneyUse=1..}] HoneyUse 0




#Route 21 (1) [x=705,y=95,z=299,dx=278,dy=100,dz=263]

execute as @s[x=705,y=95,z=299,dx=278,dy=100,dz=263,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Scyther level=27
execute as @s[x=705,y=95,z=299,dx=278,dy=100,dz=263,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Scyther level=27
execute as @s[x=705,y=95,z=299,dx=278,dy=100,dz=263,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Scyther level=27
execute as @s[x=705,y=95,z=299,dx=278,dy=100,dz=263,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Scyther level=27
execute as @s[x=705,y=95,z=299,dx=278,dy=100,dz=263,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Scyther level=27
tellraw @s[x=705,y=95,z=299,dx=278,dy=100,dz=263,scores={rng=0..6,HoneyUse=1..}] {"text":"A hoard of Scyther spawned!","italic":true,"color":"gray"}

execute as @s[x=705,y=95,z=299,dx=278,dy=100,dz=263,scores={rng=7..84,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Spinda level=26
execute as @s[x=705,y=95,z=299,dx=278,dy=100,dz=263,scores={rng=7..84,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Spinda level=26
execute as @s[x=705,y=95,z=299,dx=278,dy=100,dz=263,scores={rng=7..84,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Spinda level=26
execute as @s[x=705,y=95,z=299,dx=278,dy=100,dz=263,scores={rng=7..84,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Spinda level=26
execute as @s[x=705,y=95,z=299,dx=278,dy=100,dz=263,scores={rng=7..84,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Spinda level=26
tellraw @s[x=705,y=95,z=299,dx=278,dy=100,dz=263,scores={rng=7..84,HoneyUse=1..}] {"text":"A hoard of Spinda spawned!","italic":true,"color":"gray"}

execute as @s[x=705,y=95,z=299,dx=278,dy=100,dz=263,scores={rng=85..127,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Swablu level=26
execute as @s[x=705,y=95,z=299,dx=278,dy=100,dz=263,scores={rng=85..127,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Swablu level=26
execute as @s[x=705,y=95,z=299,dx=278,dy=100,dz=263,scores={rng=85..127,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Swablu level=26
execute as @s[x=705,y=95,z=299,dx=278,dy=100,dz=263,scores={rng=85..127,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Swablu level=26
execute as @s[x=705,y=95,z=299,dx=278,dy=100,dz=263,scores={rng=85..127,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Swablu level=26
tellraw @s[x=705,y=95,z=299,dx=278,dy=100,dz=263,scores={rng=85..127,HoneyUse=1..}] {"text":"A hoard of Swablu spawned!","italic":true,"color":"gray"}

scoreboard players set @s[x=705,y=95,z=299,dx=278,dy=100,dz=263,scores={HoneyUse=1..}] HoneyUse 0





#Route 21 (2) [x=683,y=95,z=393,dx=21,dy=100,dz=170]

execute as @s[x=683,y=95,z=393,dx=21,dy=100,dz=170,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Scyther level=27
execute as @s[x=683,y=95,z=393,dx=21,dy=100,dz=170,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Scyther level=27
execute as @s[x=683,y=95,z=393,dx=21,dy=100,dz=170,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Scyther level=27
execute as @s[x=683,y=95,z=393,dx=21,dy=100,dz=170,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Scyther level=27
execute as @s[x=683,y=95,z=393,dx=21,dy=100,dz=170,scores={rng=0..6,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Scyther level=27
tellraw @s[x=683,y=95,z=393,dx=21,dy=100,dz=170,scores={rng=0..6,HoneyUse=1..}] {"text":"A hoard of Scyther spawned!","italic":true,"color":"gray"}

execute as @s[x=683,y=95,z=393,dx=21,dy=100,dz=170,scores={rng=7..84,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Spinda level=26
execute as @s[x=683,y=95,z=393,dx=21,dy=100,dz=170,scores={rng=7..84,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Spinda level=26
execute as @s[x=683,y=95,z=393,dx=21,dy=100,dz=170,scores={rng=7..84,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Spinda level=26
execute as @s[x=683,y=95,z=393,dx=21,dy=100,dz=170,scores={rng=7..84,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Spinda level=26
execute as @s[x=683,y=95,z=393,dx=21,dy=100,dz=170,scores={rng=7..84,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Spinda level=26
tellraw @s[x=683,y=95,z=393,dx=21,dy=100,dz=170,scores={rng=7..84,HoneyUse=1..}] {"text":"A hoard of Spinda spawned!","italic":true,"color":"gray"}

execute as @s[x=683,y=95,z=393,dx=21,dy=100,dz=170,scores={rng=85..127,HoneyUse=1..}] at @s positioned ~ ~ ~5 run pokespawn Swablu level=26
execute as @s[x=683,y=95,z=393,dx=21,dy=100,dz=170,scores={rng=85..127,HoneyUse=1..}] at @s positioned ~4 ~ ~2 run pokespawn Swablu level=26
execute as @s[x=683,y=95,z=393,dx=21,dy=100,dz=170,scores={rng=85..127,HoneyUse=1..}] at @s positioned ~3 ~ ~-3 run pokespawn Swablu level=26
execute as @s[x=683,y=95,z=393,dx=21,dy=100,dz=170,scores={rng=85..127,HoneyUse=1..}] at @s positioned ~-3 ~ ~-3 run pokespawn Swablu level=26
execute as @s[x=683,y=95,z=393,dx=21,dy=100,dz=170,scores={rng=85..127,HoneyUse=1..}] at @s positioned ~-4 ~ ~2 run pokespawn Swablu level=26
tellraw @s[x=683,y=95,z=393,dx=21,dy=100,dz=170,scores={rng=85..127,HoneyUse=1..}] {"text":"A hoard of Swablu spawned!","italic":true,"color":"gray"}

scoreboard players set @s[x=683,y=95,z=393,dx=21,dy=100,dz=170,scores={HoneyUse=1..}] HoneyUse 0







tellraw @s[scores={HoneyUse=1..}] {"text":"No Pokemon reacted to the Honey!","italic":true,"color":"gray"}
execute as @s[scores={HoneyUse=1..}] run function kalos:spawn/honey
scoreboard players set @s[scores={HoneyUse=1..}] HoneyUse 0
