


#Rolls rng score
scoreboard players set @e[x=-687,y=100,z=1376,dx=2,dy=4,type=armor_stand] rng 0
scoreboard players add @r[x=-687,y=100,z=1376,dx=2,dy=4,type=armor_stand] rng 1
scoreboard players add @r[x=-687,y=100,z=1376,dx=2,dy=4,type=armor_stand] rng 2
scoreboard players add @r[x=-687,y=100,z=1376,dx=2,dy=4,type=armor_stand] rng 4
scoreboard players add @r[x=-687,y=100,z=1376,dx=2,dy=4,type=armor_stand] rng 8
scoreboard players add @r[x=-687,y=100,z=1376,dx=2,dy=4,type=armor_stand] rng 16
scoreboard players add @r[x=-687,y=100,z=1376,dx=2,dy=4,type=armor_stand] rng 32
scoreboard players add @r[x=-687,y=100,z=1376,dx=2,dy=4,type=armor_stand] rng 64

scoreboard players operation @s rng = @e[x=-687,y=100,z=1376,dy=3,type=armor_stand] rng











#Connecting Cave [x=-1897,y=0,z=-63,dx=257,dy=86,dz=201]

execute @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Zubat lvl:8 ~ ~ ~5
execute @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Zubat lvl:8 ~4 ~ ~2
execute @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Zubat lvl:8 ~3 ~ ~-3
execute @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Zubat lvl:8 ~-3 ~ ~-3
execute @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Zubat lvl:8 ~-4 ~ ~2
tellraw @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] {"text":"A hoard of Zubat spawned!","italic":true,"color":"gray"}

execute @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_rng_min=46,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Whismur lvl:7 ~ ~ ~5
execute @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_rng_min=46,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Whismur lvl:7 ~4 ~ ~2
execute @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_rng_min=46,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Whismur lvl:7 ~3 ~ ~-3
execute @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_rng_min=46,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Whismur lvl:7 ~-3 ~ ~-3
execute @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_rng_min=46,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Whismur lvl:7 ~-4 ~ ~2
tellraw @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_rng_min=46,score_rng=120,score_HoneyUse_min=1] {"text":"A hoard of Whismur spawned!","italic":true,"color":"gray"}

execute @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Axew lvl:8 ~ ~ ~5
execute @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Axew lvl:8 ~4 ~ ~2
execute @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Axew lvl:8 ~3 ~ ~-3
execute @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Axew lvl:8 ~-3 ~ ~-3
execute @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Axew lvl:8 ~-4 ~ ~2
tellraw @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] {"text":"A hoard of Axew spawned!","italic":true,"color":"gray"}

execute @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_HoneyUse_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=pixelmon:pixelmon] add Shiny {IsShiny:1b,OwnerUUID:""}
execute @e[tag=Shiny,type=pixelmon:pixelmon,c=1] ~ ~ ~ /tellraw @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_HoneyUse_min=1] ["",{"text":"And one of them is ","italic":true,"color":"gray"},{"text":"s","italic":true,"color":"red"},{"text":"h","italic":true,"color":"gold"},{"text":"i","italic":true,"color":"green"},{"text":"n","italic":true,"color":"light_purple"},{"text":"y","italic":true,"color":"dark_purple"},{"text":"!","italic":true,"color":"gray"}]

scoreboard players set @a[x=-1897,y=0,z=-63,dx=257,dy=86,dz=201,score_HoneyUse_min=1] HoneyUse 0




#Reflection Cave [x=-1847,y=0,z=-675,dx=414,dy=89,dz=507]

execute @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_rng_min=0,score_rng=70,score_HoneyUse_min=1] ~ ~ ~ /pokespawn MimeJr lvl:11 ~ ~ ~5
execute @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_rng_min=0,score_rng=70,score_HoneyUse_min=1] ~ ~ ~ /pokespawn MimeJr lvl:11 ~4 ~ ~2
execute @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_rng_min=0,score_rng=70,score_HoneyUse_min=1] ~ ~ ~ /pokespawn MimeJr lvl:11 ~3 ~ ~-3
execute @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_rng_min=0,score_rng=70,score_HoneyUse_min=1] ~ ~ ~ /pokespawn MimeJr lvl:11 ~-3 ~ ~-3
execute @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_rng_min=0,score_rng=70,score_HoneyUse_min=1] ~ ~ ~ /pokespawn MimeJr lvl:11 ~-4 ~ ~2
tellraw @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_rng_min=0,score_rng=70,score_HoneyUse_min=1] {"text":"A hoard of Mime Jr. spawned!","italic":true,"color":"gray"}

execute @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_rng_min=71,score_rng=115,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Roggenrola lvl:11 ~ ~ ~5
execute @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_rng_min=71,score_rng=115,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Roggenrola lvl:11 ~4 ~ ~2
execute @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_rng_min=71,score_rng=115,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Roggenrola lvl:11 ~3 ~ ~-3
execute @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_rng_min=71,score_rng=115,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Roggenrola lvl:11 ~-3 ~ ~-3
execute @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_rng_min=71,score_rng=115,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Roggenrola lvl:11 ~-4 ~ ~2
tellraw @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_rng_min=71,score_rng=115,score_HoneyUse_min=1] {"text":"A hoard of Roggenrola spawned!","italic":true,"color":"gray"}

execute @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_rng_min=116,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Carbink lvl:11 ~ ~ ~5
execute @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_rng_min=116,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Carbink lvl:11 ~4 ~ ~2
execute @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_rng_min=116,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Carbink lvl:11 ~3 ~ ~-3
execute @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_rng_min=116,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Carbink lvl:11 ~-3 ~ ~-3
execute @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_rng_min=116,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Roggenrola lvl:11 ~-4 ~ ~2
tellraw @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_rng_min=116,score_rng=120,score_HoneyUse_min=1] {"text":"A hoard of Carbink & a Roggenrola spawned!","italic":true,"color":"gray"}

execute @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Roggenrola lvl:11 ~ ~ ~5
execute @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Carbink lvl:11 ~4 ~ ~2
execute @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Roggenrola lvl:11 ~3 ~ ~-3
execute @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Roggenrola lvl:11 ~-3 ~ ~-3
execute @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Roggenrola lvl:11 ~-4 ~ ~2
tellraw @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] {"text":"A hoard of Roggenrola & a Carbink spawned!","italic":true,"color":"gray"}

execute @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_rng_min=1,score_HoneyUse_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=pixelmon:pixelmon] add Shiny {IsShiny:1b,OwnerUUID:""}
execute @e[tag=Shiny,type=pixelmon:pixelmon,c=1] ~ ~ ~ /tellraw @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_HoneyUse_min=1] ["",{"text":"And one of them is ","italic":true,"color":"gray"},{"text":"s","italic":true,"color":"red"},{"text":"h","italic":true,"color":"gold"},{"text":"i","italic":true,"color":"green"},{"text":"n","italic":true,"color":"light_purple"},{"text":"y","italic":true,"color":"dark_purple"},{"text":"!","italic":true,"color":"gray"}]

scoreboard players set @a[x=-1847,y=0,z=-675,dx=414,dy=89,dz=507,score_HoneyUse_min=1] HoneyUse 0





#Azure Bay [x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451]

execute @a[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Slowpoke lvl:13 ~ ~ ~5
execute @a[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Slowpoke lvl:13 ~4 ~ ~2
execute @a[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Slowpoke lvl:13 ~3 ~ ~-3
execute @a[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Slowpoke lvl:13 ~-3 ~ ~-3
execute @a[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Slowpoke lvl:13 ~-4 ~ ~2
tellraw @a[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] {"text":"A hoard of Slowpoke spawned!","italic":true,"color":"gray"}

execute @a[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,score_rng_min=46,score_rng=52,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Exeggcute lvl:14 ~ ~ ~5
execute @a[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,score_rng_min=46,score_rng=52,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Exeggcute lvl:14 ~4 ~ ~2
execute @a[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,score_rng_min=46,score_rng=52,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Exeggcute lvl:14 ~3 ~ ~-3
execute @a[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,score_rng_min=46,score_rng=52,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Exeggcute lvl:14 ~-3 ~ ~-3
execute @a[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,score_rng_min=46,score_rng=52,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Exeggcute lvl:14 ~-4 ~ ~2
tellraw @a[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,score_rng_min=46,score_rng=52,score_HoneyUse_min=1] {"text":"A hoard of Exeggcute spawned!","italic":true,"color":"gray"}

execute @a[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,score_rng_min=53,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Wingull lvl:13 ~ ~ ~5
execute @a[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,score_rng_min=53,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Wingull lvl:13 ~4 ~ ~2
execute @a[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,score_rng_min=53,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Wingull lvl:13 ~3 ~ ~-3
execute @a[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,score_rng_min=53,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Wingull lvl:13 ~-3 ~ ~-3
execute @a[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,score_rng_min=53,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Wingull lvl:13 ~-4 ~ ~2
tellraw @a[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,score_rng_min=53,score_rng=127,score_HoneyUse_min=1] {"text":"A hoard of Wingull spawned!","italic":true,"color":"gray"}

execute @a[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,score_rng_min=1,score_HoneyUse_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=pixelmon:pixelmon] add Shiny {IsShiny:1b,OwnerUUID:""}
execute @e[tag=Shiny,type=pixelmon:pixelmon,c=1] ~ ~ ~ /tellraw @a[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,score_HoneyUse_min=1] ["",{"text":"And one of them is ","italic":true,"color":"gray"},{"text":"s","italic":true,"color":"red"},{"text":"h","italic":true,"color":"gold"},{"text":"i","italic":true,"color":"green"},{"text":"n","italic":true,"color":"light_purple"},{"text":"y","italic":true,"color":"dark_purple"},{"text":"!","italic":true,"color":"gray"}]

scoreboard players set @a[x=-1483,y=0,z=-1340,dx=278,dy=256,dz=451,score_HoneyUse_min=1] HoneyUse 0





#Frost Cavern Underground [x=444,y=0,z=-1444,dx=465,dy=126,dz=550]

execute @a[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Smoochum lvl:21 ~ ~ ~5
execute @a[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Smoochum lvl:21 ~4 ~ ~2
execute @a[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Smoochum lvl:21 ~3 ~ ~-3
execute @a[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Smoochum lvl:21 ~-3 ~ ~-3
execute @a[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Smoochum lvl:21 ~-4 ~ ~2
tellraw @a[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] {"text":"A hoard of Smoochum spawned!","italic":true,"color":"gray"}

execute @a[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,score_rng_min=7,score_rng=83,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Vanillite lvl:20 ~ ~ ~5
execute @a[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,score_rng_min=7,score_rng=83,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Vanillite lvl:20 ~4 ~ ~2
execute @a[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,score_rng_min=7,score_rng=83,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Vanillite lvl:20 ~3 ~ ~-3
execute @a[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,score_rng_min=7,score_rng=83,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Vanillite lvl:20 ~-3 ~ ~-3
execute @a[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,score_rng_min=7,score_rng=83,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Vanillite lvl:20 ~-4 ~ ~2
tellraw @a[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,score_rng_min=7,score_rng=83,score_HoneyUse_min=1] {"text":"A hoard of Vanillite spawned!","italic":true,"color":"gray"}

execute @a[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,score_rng_min=84,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Cubchoo lvl:20 ~ ~ ~5
execute @a[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,score_rng_min=84,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Cubchoo lvl:20 ~4 ~ ~2
execute @a[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,score_rng_min=84,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Cubchoo lvl:20 ~3 ~ ~-3
execute @a[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,score_rng_min=84,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Cubchoo lvl:20 ~-3 ~ ~-3
execute @a[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,score_rng_min=84,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Cubchoo lvl:20 ~-4 ~ ~2
tellraw @a[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,score_rng_min=84,score_rng=127,score_HoneyUse_min=1] {"text":"A hoard of Cubchoo spawned!","italic":true,"color":"gray"}

execute @a[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,score_rng_min=1,score_HoneyUse_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=pixelmon:pixelmon] add Shiny {IsShiny:1b,OwnerUUID:""}
execute @e[tag=Shiny,type=pixelmon:pixelmon,c=1] ~ ~ ~ /tellraw @a[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,score_HoneyUse_min=1] ["",{"text":"And one of them is ","italic":true,"color":"gray"},{"text":"s","italic":true,"color":"red"},{"text":"h","italic":true,"color":"gold"},{"text":"i","italic":true,"color":"green"},{"text":"n","italic":true,"color":"light_purple"},{"text":"y","italic":true,"color":"dark_purple"},{"text":"!","italic":true,"color":"gray"}]

scoreboard players set @a[x=444,y=0,z=-1444,dx=465,dy=126,dz=550,score_HoneyUse_min=1] HoneyUse 0







#Terminus Cave [x=1720,y=0,z=-232,dx=421,dy=100,dz=324]

execute @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Geodude lvl:23 ~ ~ ~5
execute @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Geodude lvl:23 ~4 ~ ~2
execute @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Geodude lvl:23 ~3 ~ ~-3
execute @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Geodude lvl:23 ~-3 ~ ~-3
execute @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Geodude lvl:23 ~-4 ~ ~2
tellraw @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] {"text":"A hoard of Geodude spawned!","italic":true,"color":"gray"}

execute @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_rng_min=46,score_rng=52,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Larvitar lvl:24 ~ ~ ~5
execute @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_rng_min=46,score_rng=52,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Larvitar lvl:24 ~4 ~ ~2
execute @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_rng_min=46,score_rng=52,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Larvitar lvl:24 ~3 ~ ~-3
execute @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_rng_min=46,score_rng=52,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Larvitar lvl:24 ~-3 ~ ~-3
execute @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_rng_min=46,score_rng=52,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Larvitar lvl:24 ~-4 ~ ~2
tellraw @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_rng_min=46,score_rng=52,score_HoneyUse_min=1] {"text":"A hoard of Larvitar spawned!","italic":true,"color":"gray"}

execute @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_rng_min=53,score_rng=59,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Aron lvl:24 ~ ~ ~5
execute @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_rng_min=53,score_rng=59,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Aron lvl:24 ~4 ~ ~2
execute @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_rng_min=53,score_rng=59,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Aron lvl:24 ~3 ~ ~-3
execute @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_rng_min=53,score_rng=59,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Aron lvl:24 ~-3 ~ ~-3
execute @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_rng_min=53,score_rng=59,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Aron lvl:24 ~-4 ~ ~2
tellraw @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_rng_min=53,score_rng=59,score_HoneyUse_min=1] {"text":"A hoard of Aron spawned!","italic":true,"color":"gray"}

execute @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_rng_min=60,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Durant lvl:23 ~ ~ ~5
execute @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_rng_min=60,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Durant lvl:23 ~4 ~ ~2
execute @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_rng_min=60,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Durant lvl:23 ~3 ~ ~-3
execute @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_rng_min=60,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Durant lvl:23 ~-3 ~ ~-3
execute @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_rng_min=60,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Durant lvl:23 ~-4 ~ ~2
tellraw @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_rng_min=60,score_rng=127,score_HoneyUse_min=1] {"text":"A hoard of Durant spawned!","italic":true,"color":"gray"}

execute @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_rng_min=1,score_HoneyUse_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=pixelmon:pixelmon] add Shiny {IsShiny:1b,OwnerUUID:""}
execute @e[tag=Shiny,type=pixelmon:pixelmon,c=1] ~ ~ ~ /tellraw @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_HoneyUse_min=1] ["",{"text":"And one of them is ","italic":true,"color":"gray"},{"text":"s","italic":true,"color":"red"},{"text":"h","italic":true,"color":"gold"},{"text":"i","italic":true,"color":"green"},{"text":"n","italic":true,"color":"light_purple"},{"text":"y","italic":true,"color":"dark_purple"},{"text":"!","italic":true,"color":"gray"}]

scoreboard players set @a[x=1720,y=0,z=-232,dx=421,dy=100,dz=324,score_HoneyUse_min=1] HoneyUse 0






#Pokémon Village [x=703,y=90,z=563,dx=280,dy=100,dz=279]

execute @a[x=703,y=90,z=563,dx=280,dy=100,dz=279,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Poliwag lvl:25 ~ ~ ~5
execute @a[x=703,y=90,z=563,dx=280,dy=100,dz=279,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Poliwag lvl:25 ~4 ~ ~2
execute @a[x=703,y=90,z=563,dx=280,dy=100,dz=279,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Poliwag lvl:25 ~3 ~ ~-3
execute @a[x=703,y=90,z=563,dx=280,dy=100,dz=279,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Poliwag lvl:25 ~-3 ~ ~-3
execute @a[x=703,y=90,z=563,dx=280,dy=100,dz=279,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Poliwag lvl:25 ~-4 ~ ~2
tellraw @a[x=703,y=90,z=563,dx=280,dy=100,dz=279,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] {"text":"A hoard of Poliwag spawned!","italic":true,"color":"gray"}

execute @a[x=703,y=90,z=563,dx=280,dy=100,dz=279,score_rng_min=46,score_rng=52,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Lombre lvl:25 ~ ~ ~5
execute @a[x=703,y=90,z=563,dx=280,dy=100,dz=279,score_rng_min=46,score_rng=52,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Lombre lvl:25 ~4 ~ ~2
execute @a[x=703,y=90,z=563,dx=280,dy=100,dz=279,score_rng_min=46,score_rng=52,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Lombre lvl:25 ~3 ~ ~-3
execute @a[x=703,y=90,z=563,dx=280,dy=100,dz=279,score_rng_min=46,score_rng=52,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Lombre lvl:25 ~-3 ~ ~-3
execute @a[x=703,y=90,z=563,dx=280,dy=100,dz=279,score_rng_min=46,score_rng=52,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Lombre lvl:25 ~-4 ~ ~2
tellraw @a[x=703,y=90,z=563,dx=280,dy=100,dz=279,score_rng_min=46,score_rng=52,score_HoneyUse_min=1] {"text":"A hoard of Lombre spawned!","italic":true,"color":"gray"}

execute @a[x=703,y=90,z=563,dx=280,dy=100,dz=279,score_rng_min=53,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Foongus lvl:25 ~ ~ ~5
execute @a[x=703,y=90,z=563,dx=280,dy=100,dz=279,score_rng_min=53,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Foongus lvl:25 ~4 ~ ~2
execute @a[x=703,y=90,z=563,dx=280,dy=100,dz=279,score_rng_min=53,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Foongus lvl:25 ~3 ~ ~-3
execute @a[x=703,y=90,z=563,dx=280,dy=100,dz=279,score_rng_min=53,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Foongus lvl:25 ~-3 ~ ~-3
execute @a[x=703,y=90,z=563,dx=280,dy=100,dz=279,score_rng_min=53,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Foongus lvl:25 ~-4 ~ ~2
tellraw @a[x=703,y=90,z=563,dx=280,dy=100,dz=279,score_rng_min=53,score_rng=127,score_HoneyUse_min=1] {"text":"A hoard of Foongus spawned!","italic":true,"color":"gray"}


execute @a[x=703,y=90,z=563,dx=280,dy=100,dz=279,score_rng_min=1,score_HoneyUse_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=pixelmon:pixelmon] add Shiny {IsShiny:1b,OwnerUUID:""}
execute @e[tag=Shiny,type=pixelmon:pixelmon,c=1] ~ ~ ~ /tellraw @a[x=703,y=90,z=563,dx=280,dy=100,dz=279,score_HoneyUse_min=1] ["",{"text":"And one of them is ","italic":true,"color":"gray"},{"text":"s","italic":true,"color":"red"},{"text":"h","italic":true,"color":"gold"},{"text":"i","italic":true,"color":"green"},{"text":"n","italic":true,"color":"light_purple"},{"text":"y","italic":true,"color":"dark_purple"},{"text":"!","italic":true,"color":"gray"}]

scoreboard players set @a[x=703,y=90,z=563,dx=280,dy=100,dz=279,score_HoneyUse_min=1] HoneyUse 0






#Victory Road (3) [x=1500,y=0,z=1203,dx=982,dy=256,dz=554]

execute @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_rng_min=0,score_rng=70,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Geodude lvl:28 ~ ~ ~5
execute @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_rng_min=0,score_rng=70,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Geodude lvl:28 ~4 ~ ~2
execute @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_rng_min=0,score_rng=70,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Geodude lvl:28 ~3 ~ ~-3
execute @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_rng_min=0,score_rng=70,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Geodude lvl:28 ~-3 ~ ~-3
execute @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_rng_min=0,score_rng=70,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Geodude lvl:28 ~-4 ~ ~2
tellraw @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_rng_min=0,score_rng=70,score_HoneyUse_min=1] {"text":"A hoard of Geodude spawned!","italic":true,"color":"gray"}

execute @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_rng_min=71,score_rng=115,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Graveler lvl:29 ~ ~ ~5
execute @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_rng_min=71,score_rng=115,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Graveler lvl:29 ~4 ~ ~2
execute @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_rng_min=71,score_rng=115,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Graveler lvl:29 ~3 ~ ~-3
execute @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_rng_min=71,score_rng=115,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Graveler lvl:29 ~-3 ~ ~-3
execute @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_rng_min=71,score_rng=115,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Graveler lvl:29 ~-4 ~ ~2
tellraw @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_rng_min=71,score_rng=115,score_HoneyUse_min=1] {"text":"A hoard of Graveler spawned!","italic":true,"color":"gray"}

execute @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_rng_min=116,score_rng=121,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Lickitung lvl:30 ~ ~ ~5
execute @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_rng_min=116,score_rng=121,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Lickitung lvl:30 ~4 ~ ~2
execute @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_rng_min=116,score_rng=121,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Lickitung lvl:30 ~3 ~ ~-3
execute @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_rng_min=116,score_rng=121,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Lickitung lvl:30 ~-3 ~ ~-3
execute @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_rng_min=116,score_rng=121,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Lickitung lvl:30 ~-4 ~ ~2
tellraw @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_rng_min=116,score_rng=121,score_HoneyUse_min=1] {"text":"A hoard of Lickitung spawned!","italic":true,"color":"gray"}

execute @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_rng_min=122,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Floatzel lvl:29 ~ ~ ~5
execute @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_rng_min=122,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Floatzel lvl:29 ~4 ~ ~2
execute @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_rng_min=122,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Floatzel lvl:29 ~3 ~ ~-3
execute @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_rng_min=122,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Floatzel lvl:29 ~-3 ~ ~-3
execute @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_rng_min=122,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Floatzel lvl:29 ~-4 ~ ~2
tellraw @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_rng_min=122,score_rng=127,score_HoneyUse_min=1] {"text":"A hoard of Floatzel spawned!","italic":true,"color":"gray"}


execute @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_rng_min=1,score_HoneyUse_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=pixelmon:pixelmon] add Shiny {IsShiny:1b,OwnerUUID:""}
execute @e[tag=Shiny,type=pixelmon:pixelmon,c=1] ~ ~ ~ /tellraw @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_HoneyUse_min=1] ["",{"text":"And one of them is ","italic":true,"color":"gray"},{"text":"s","italic":true,"color":"red"},{"text":"h","italic":true,"color":"gold"},{"text":"i","italic":true,"color":"green"},{"text":"n","italic":true,"color":"light_purple"},{"text":"y","italic":true,"color":"dark_purple"},{"text":"!","italic":true,"color":"gray"}]

scoreboard players set @a[x=1500,y=0,z=1203,dx=982,dy=256,dz=554,score_HoneyUse_min=1] HoneyUse 0






#Victory Road (4) [x=1467,y=99,z=1822,dx=1200,dy=160,dz=738]

execute @a[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_rng_min=0,score_rng=70,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Geodude lvl:28 ~ ~ ~5
execute @a[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_rng_min=0,score_rng=70,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Geodude lvl:28 ~4 ~ ~2
execute @a[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_rng_min=0,score_rng=70,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Geodude lvl:28 ~3 ~ ~-3
execute @a[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_rng_min=0,score_rng=70,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Geodude lvl:28 ~-3 ~ ~-3
execute @a[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_rng_min=0,score_rng=70,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Geodude lvl:28 ~-4 ~ ~2
tellraw @a[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_rng_min=0,score_rng=70,score_HoneyUse_min=1] {"text":"A hoard of Geodude spawned!","italic":true,"color":"gray"}

execute @a[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_rng_min=71,score_rng=115,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Graveler lvl:29 ~ ~ ~5
execute @a[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_rng_min=71,score_rng=115,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Graveler lvl:29 ~4 ~ ~2
execute @a[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_rng_min=71,score_rng=115,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Graveler lvl:29 ~3 ~ ~-3
execute @a[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_rng_min=71,score_rng=115,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Graveler lvl:29 ~-3 ~ ~-3
execute @a[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_rng_min=71,score_rng=115,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Graveler lvl:29 ~-4 ~ ~2
tellraw @a[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_rng_min=71,score_rng=115,score_HoneyUse_min=1] {"text":"A hoard of Graveler spawned!","italic":true,"color":"gray"}

execute @a[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_rng_min=116,score_rng=121,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Lickitung lvl:30 ~ ~ ~5
execute @a[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_rng_min=116,score_rng=121,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Lickitung lvl:30 ~4 ~ ~2
execute @a[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_rng_min=116,score_rng=121,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Lickitung lvl:30 ~3 ~ ~-3
execute @a[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_rng_min=116,score_rng=121,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Lickitung lvl:30 ~-3 ~ ~-3
execute @a[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_rng_min=116,score_rng=121,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Lickitung lvl:30 ~-4 ~ ~2
tellraw @a[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_rng_min=116,score_rng=121,score_HoneyUse_min=1] {"text":"A hoard of Lickitung spawned!","italic":true,"color":"gray"}

execute @a[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_rng_min=116,score_rng=121,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Floatzel lvl:29 ~ ~ ~5
execute @a[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_rng_min=116,score_rng=121,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Floatzel lvl:29 ~4 ~ ~2
execute @a[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_rng_min=116,score_rng=121,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Floatzel lvl:29 ~3 ~ ~-3
execute @a[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_rng_min=116,score_rng=121,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Floatzel lvl:29 ~-3 ~ ~-3
execute @a[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_rng_min=116,score_rng=121,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Floatzel lvl:29 ~-4 ~ ~2
tellraw @a[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_rng_min=116,score_rng=121,score_HoneyUse_min=1] {"text":"A hoard of Floatzel spawned!","italic":true,"color":"gray"}


execute @a[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_rng_min=1,score_HoneyUse_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=pixelmon:pixelmon] add Shiny {IsShiny:1b,OwnerUUID:""}
execute @e[tag=Shiny,type=pixelmon:pixelmon,c=1] ~ ~ ~ /tellraw @a[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_HoneyUse_min=1] ["",{"text":"And one of them is ","italic":true,"color":"gray"},{"text":"s","italic":true,"color":"red"},{"text":"h","italic":true,"color":"gold"},{"text":"i","italic":true,"color":"green"},{"text":"n","italic":true,"color":"light_purple"},{"text":"y","italic":true,"color":"dark_purple"},{"text":"!","italic":true,"color":"gray"}]

scoreboard players set @a[x=1467,y=99,z=1822,dx=1200,dy=160,dz=738,score_HoneyUse_min=1] HoneyUse 0







#Route 5 [x=-963,y=0,z=-219,dx=400,dy=256,dz=230]

execute @a[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Plusle lvl:6 ~ ~ ~5
execute @a[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Minun lvl:6 ~4 ~ ~2
execute @a[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Plusle lvl:6 ~3 ~ ~-3
execute @a[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Plusle lvl:6 ~-3 ~ ~-3
execute @a[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Plusle lvl:6 ~-4 ~ ~2
tellraw @a[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] {"text":"A hoard of Plusle & a Minun spawned!","italic":true,"color":"gray"}

execute @a[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_rng_min=7,score_rng=13,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Minun lvl:6 ~ ~ ~5
execute @a[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_rng_min=7,score_rng=13,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Minun lvl:6 ~4 ~ ~2
execute @a[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_rng_min=7,score_rng=13,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Minun lvl:6 ~3 ~ ~-3
execute @a[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_rng_min=7,score_rng=13,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Plusle lvl:6 ~-3 ~ ~-3
execute @a[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_rng_min=7,score_rng=13,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Minun lvl:6 ~-4 ~ ~2
tellraw @a[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_rng_min=7,score_rng=13,score_HoneyUse_min=1] {"text":"A hoard of Minun & a Plusle spawned!","italic":true,"color":"gray"}

execute @a[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_rng_min=14,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Gulpin lvl:5 ~ ~ ~5
execute @a[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_rng_min=14,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Gulpin lvl:5 ~4 ~ ~2
execute @a[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_rng_min=14,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Gulpin lvl:5 ~3 ~ ~-3
execute @a[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_rng_min=14,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Gulpin lvl:5 ~-3 ~ ~-3
execute @a[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_rng_min=14,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Gulpin lvl:5 ~-4 ~ ~2
tellraw @a[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_rng_min=14,score_rng=84,score_HoneyUse_min=1] {"text":"A hoard of Gulpin spawned!","italic":true,"color":"gray"}

execute @a[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_rng_min=85,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Scraggy lvl:5 ~ ~ ~5
execute @a[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_rng_min=85,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Scraggy lvl:5 ~4 ~ ~2
execute @a[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_rng_min=85,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Scraggy lvl:5 ~3 ~ ~-3
execute @a[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_rng_min=85,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Scraggy lvl:5 ~-3 ~ ~-3
execute @a[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_rng_min=85,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Scraggy lvl:5 ~-4 ~ ~2
tellraw @a[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_rng_min=85,score_rng=127,score_HoneyUse_min=1] {"text":"A hoard of Scraggy spawned!","italic":true,"color":"gray"}


execute @a[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_rng_min=1,score_HoneyUse_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=pixelmon:pixelmon] add Shiny {IsShiny:1b,OwnerUUID:""}
execute @e[tag=Shiny,type=pixelmon:pixelmon,c=1] ~ ~ ~ /tellraw @a[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_HoneyUse_min=1] ["",{"text":"And one of them is ","italic":true,"color":"gray"},{"text":"s","italic":true,"color":"red"},{"text":"h","italic":true,"color":"gold"},{"text":"i","italic":true,"color":"green"},{"text":"n","italic":true,"color":"light_purple"},{"text":"y","italic":true,"color":"dark_purple"},{"text":"!","italic":true,"color":"gray"}]

scoreboard players set @a[x=-963,y=0,z=-219,dx=400,dy=256,dz=230,score_HoneyUse_min=1] HoneyUse 0








#Route 7 [x=-1732,y=88,z=-118,dx=585,dy=168,dz=199]

execute @a[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Psyduck lvl:7 ~ ~ ~5
execute @a[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Psyduck lvl:7 ~4 ~ ~2
execute @a[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Psyduck lvl:7 ~3 ~ ~-3
execute @a[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Psyduck lvl:7 ~-3 ~ ~-3
execute @a[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Psyduck lvl:7 ~-4 ~ ~2
tellraw @a[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] {"text":"A hoard of Psyduck spawned!","italic":true,"color":"gray"}

execute @a[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,score_rng_min=46,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Hoppip lvl:7 ~ ~ ~5
execute @a[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,score_rng_min=46,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Hoppip lvl:7 ~4 ~ ~2
execute @a[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,score_rng_min=46,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Hoppip lvl:7 ~3 ~ ~-3
execute @a[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,score_rng_min=46,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Hoppip lvl:7 ~-3 ~ ~-3
execute @a[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,score_rng_min=46,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Hoppip lvl:7 ~-4 ~ ~2
tellraw @a[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,score_rng_min=46,score_rng=120,score_HoneyUse_min=1] {"text":"A hoard of Hoppip spawned!","italic":true,"color":"gray"}

execute @a[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Roselia lvl:8 ~ ~ ~5
execute @a[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Roselia lvl:8 ~4 ~ ~2
execute @a[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Roselia lvl:8 ~3 ~ ~-3
execute @a[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Roselia lvl:8 ~-3 ~ ~-3
execute @a[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Roselia lvl:8 ~-4 ~ ~2
tellraw @a[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] {"text":"A hoard of Roselia spawned!","italic":true,"color":"gray"}


execute @a[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,score_rng_min=1,score_HoneyUse_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=pixelmon:pixelmon] add Shiny {IsShiny:1b,OwnerUUID:""}
execute @e[tag=Shiny,type=pixelmon:pixelmon,c=1] ~ ~ ~ /tellraw @a[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,score_HoneyUse_min=1] ["",{"text":"And one of them is ","italic":true,"color":"gray"},{"text":"s","italic":true,"color":"red"},{"text":"h","italic":true,"color":"gold"},{"text":"i","italic":true,"color":"green"},{"text":"n","italic":true,"color":"light_purple"},{"text":"y","italic":true,"color":"dark_purple"},{"text":"!","italic":true,"color":"gray"}]

scoreboard players set @a[x=-1732,y=88,z=-118,dx=585,dy=168,dz=199,score_HoneyUse_min=1] HoneyUse 0







#Route 8 [x=-2231,y=83,z=59,dx=362,dy=173,dz=444]

execute @a[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Taillow lvl:7 ~ ~ ~5
execute @a[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Taillow lvl:7 ~4 ~ ~2
execute @a[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Taillow lvl:7 ~3 ~ ~-3
execute @a[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Taillow lvl:7 ~-3 ~ ~-3
execute @a[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Taillow lvl:7 ~-4 ~ ~2
tellraw @a[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] {"text":"A hoard of Taillow spawned!","italic":true,"color":"gray"}

execute @a[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_rng_min=7,score_rng=70,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Wingull lvl:7 ~ ~ ~5
execute @a[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_rng_min=7,score_rng=70,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Wingull lvl:7 ~4 ~ ~2
execute @a[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_rng_min=7,score_rng=70,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Wingull lvl:7 ~3 ~ ~-3
execute @a[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_rng_min=7,score_rng=70,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Wingull lvl:7 ~-3 ~ ~-3
execute @a[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_rng_min=7,score_rng=70,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Wingull lvl:7 ~-4 ~ ~2
tellraw @a[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_rng_min=7,score_rng=70,score_HoneyUse_min=1] {"text":"A hoard of Wingull spawned!","italic":true,"color":"gray"}

execute @a[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_rng_min=71,score_rng=99,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Zangoose lvl:8 ~ ~ ~5
execute @a[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_rng_min=71,score_rng=99,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Zangoose lvl:8 ~4 ~ ~2
execute @a[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_rng_min=71,score_rng=99,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Seviper lvl:8 ~3 ~ ~-3
execute @a[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_rng_min=71,score_rng=99,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Zangoose lvl:8 ~-3 ~ ~-3
execute @a[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_rng_min=71,score_rng=99,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Zangoose lvl:8 ~-4 ~ ~2
tellraw @a[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_rng_min=71,score_rng=99,score_HoneyUse_min=1] {"text":"A hoard of Zangoose & a Seviper spawned!","italic":true,"color":"gray"}

execute @a[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_rng_min=100,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Seviper lvl:8 ~ ~ ~5
execute @a[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_rng_min=100,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Seviper lvl:8 ~4 ~ ~2
execute @a[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_rng_min=100,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Zangoose lvl:8 ~3 ~ ~-3
execute @a[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_rng_min=100,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Seviper lvl:8 ~-3 ~ ~-3
execute @a[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_rng_min=100,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Seviper lvl:8 ~-4 ~ ~2
tellraw @a[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_rng_min=100,score_rng=127,score_HoneyUse_min=1] {"text":"A hoard of Seviper & a Zangoose spawned!","italic":true,"color":"gray"}


execute @a[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_rng_min=1,score_HoneyUse_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=pixelmon:pixelmon] add Shiny {IsShiny:1b,OwnerUUID:""}
execute @e[tag=Shiny,type=pixelmon:pixelmon,c=1] ~ ~ ~ /tellraw @a[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_HoneyUse_min=1] ["",{"text":"And one of them is ","italic":true,"color":"gray"},{"text":"s","italic":true,"color":"red"},{"text":"h","italic":true,"color":"gold"},{"text":"i","italic":true,"color":"green"},{"text":"n","italic":true,"color":"light_purple"},{"text":"y","italic":true,"color":"dark_purple"},{"text":"!","italic":true,"color":"gray"}]

scoreboard players set @a[x=-2231,y=83,z=59,dx=362,dy=173,dz=444,score_HoneyUse_min=1] HoneyUse 0








#Route 10 [x=-2298,y=0,z=-597,dx=262,dy=256,dz=379]

execute @a[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Yanma lvl:10 ~ ~ ~5
execute @a[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Yanma lvl:10 ~4 ~ ~2
execute @a[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Yanma lvl:10 ~3 ~ ~-3
execute @a[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Yanma lvl:10 ~-3 ~ ~-3
execute @a[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Yanma lvl:10 ~-4 ~ ~2
tellraw @a[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_rng_min=0,score_rng=45,score_HoneyUse_min=1] {"text":"A hoard of Yanma spawned!","italic":true,"color":"gray"}

execute @a[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_rng_min=46,score_rng=52,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Houndour lvl:11 ~ ~ ~5
execute @a[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_rng_min=46,score_rng=52,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Houndour lvl:11 ~4 ~ ~2
execute @a[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_rng_min=46,score_rng=52,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Houndour lvl:11 ~3 ~ ~-3
execute @a[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_rng_min=46,score_rng=52,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Houndour lvl:11 ~-3 ~ ~-3
execute @a[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_rng_min=46,score_rng=52,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Houndour lvl:11 ~-4 ~ ~2
tellraw @a[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_rng_min=46,score_rng=52,score_HoneyUse_min=1] {"text":"A hoard of Houndour spawned!","italic":true,"color":"gray"}

execute @a[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_rng_min=53,score_rng=59,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Electrike lvl:10 ~ ~ ~5
execute @a[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_rng_min=53,score_rng=59,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Electrike lvl:10 ~4 ~ ~2
execute @a[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_rng_min=53,score_rng=59,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Electrike lvl:10 ~3 ~ ~-3
execute @a[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_rng_min=53,score_rng=59,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Electrike lvl:10 ~-3 ~ ~-3
execute @a[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_rng_min=53,score_rng=59,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Electrike lvl:10 ~-4 ~ ~2
tellraw @a[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_rng_min=53,score_rng=59,score_HoneyUse_min=1] {"text":"A hoard of Electrike spawned!","italic":true,"color":"gray"}

execute @a[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_rng_min=60,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Nosepass lvl:11 ~ ~ ~5
execute @a[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_rng_min=60,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Nosepass lvl:11 ~4 ~ ~2
execute @a[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_rng_min=60,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Nosepass lvl:11 ~3 ~ ~-3
execute @a[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_rng_min=60,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Nosepass lvl:11 ~-3 ~ ~-3
execute @a[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_rng_min=60,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Nosepass lvl:11 ~-4 ~ ~2
tellraw @a[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_rng_min=60,score_rng=127,score_HoneyUse_min=1] {"text":"A hoard of Nosepass spawned!","italic":true,"color":"gray"}


execute @a[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_rng_min=1,score_HoneyUse_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=pixelmon:pixelmon] add Shiny {IsShiny:1b,OwnerUUID:""}
execute @e[tag=Shiny,type=pixelmon:pixelmon,c=1] ~ ~ ~ /tellraw @a[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_HoneyUse_min=1] ["",{"text":"And one of them is ","italic":true,"color":"gray"},{"text":"s","italic":true,"color":"red"},{"text":"h","italic":true,"color":"gold"},{"text":"i","italic":true,"color":"green"},{"text":"n","italic":true,"color":"light_purple"},{"text":"y","italic":true,"color":"dark_purple"},{"text":"!","italic":true,"color":"gray"}]

scoreboard players set @a[x=-2298,y=0,z=-597,dx=262,dy=256,dz=379,score_HoneyUse_min=1] HoneyUse 0







#Route 11 [x=-2112,y=0,z=-757,dx=264,dy=256,dz=159]

execute @a[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_rng_min=0,score_rng=42,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Nidoranfemale lvl:11 ~ ~ ~5
execute @a[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_rng_min=0,score_rng=42,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Nidoranfemale lvl:11 ~4 ~ ~2
execute @a[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_rng_min=0,score_rng=42,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Nidoranfemale lvl:11 ~3 ~ ~-3
execute @a[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_rng_min=0,score_rng=42,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Nidoranfemale lvl:11 ~-3 ~ ~-3
execute @a[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_rng_min=0,score_rng=42,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Nidoranfemale lvl:11 ~-4 ~ ~2
tellraw @a[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_rng_min=0,score_rng=42,score_HoneyUse_min=1] {"text":"A hoard of Nidoran♀ spawned!","italic":true,"color":"gray"}

execute @a[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_rng_min=43,score_rng=85,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Nidoranmale lvl:11 ~ ~ ~5
execute @a[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_rng_min=43,score_rng=85,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Nidoranmale lvl:11 ~4 ~ ~2
execute @a[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_rng_min=43,score_rng=85,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Nidoranmale lvl:11 ~3 ~ ~-3
execute @a[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_rng_min=43,score_rng=85,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Nidoranmale lvl:11 ~-3 ~ ~-3
execute @a[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_rng_min=43,score_rng=85,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Nidoranmale lvl:11 ~-4 ~ ~2
tellraw @a[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_rng_min=43,score_rng=85,score_HoneyUse_min=1] {"text":"A hoard of Nidoran♂ spawned!","italic":true,"color":"gray"}

execute @a[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_rng_min=86,score_rng=92,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Starly lvl:12 ~ ~ ~5
execute @a[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_rng_min=86,score_rng=92,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Starly lvl:12 ~4 ~ ~2
execute @a[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_rng_min=86,score_rng=92,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Starly lvl:12 ~3 ~ ~-3
execute @a[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_rng_min=86,score_rng=92,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Starly lvl:12 ~-3 ~ ~-3
execute @a[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_rng_min=86,score_rng=92,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Starly lvl:12 ~-4 ~ ~2
tellraw @a[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_rng_min=86,score_rng=92,score_HoneyUse_min=1] {"text":"A hoard of Starly spawned!","italic":true,"color":"gray"}

execute @a[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_rng_min=93,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Stunky lvl:11 ~ ~ ~5
execute @a[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_rng_min=93,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Stunky lvl:11 ~4 ~ ~2
execute @a[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_rng_min=93,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Stunky lvl:11 ~3 ~ ~-3
execute @a[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_rng_min=93,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Stunky lvl:11 ~-3 ~ ~-3
execute @a[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_rng_min=93,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Stunky lvl:11 ~-4 ~ ~2
tellraw @a[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_rng_min=93,score_rng=127,score_HoneyUse_min=1] {"text":"A hoard of Stunky spawned!","italic":true,"color":"gray"}


execute @a[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_rng_min=1,score_HoneyUse_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=pixelmon:pixelmon] add Shiny {IsShiny:1b,OwnerUUID:""}
execute @e[tag=Shiny,type=pixelmon:pixelmon,c=1] ~ ~ ~ /tellraw @a[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_HoneyUse_min=1] ["",{"text":"And one of them is ","italic":true,"color":"gray"},{"text":"s","italic":true,"color":"red"},{"text":"h","italic":true,"color":"gold"},{"text":"i","italic":true,"color":"green"},{"text":"n","italic":true,"color":"light_purple"},{"text":"y","italic":true,"color":"dark_purple"},{"text":"!","italic":true,"color":"gray"}]

scoreboard players set @a[x=-2112,y=0,z=-757,dx=264,dy=256,dz=159,score_HoneyUse_min=1] HoneyUse 0







#Route 12 [x=-1483,y=0,z=-888,dx=278,dy=256,dz=154]

execute @a[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Tauros lvl:14 ~ ~ ~5
execute @a[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Tauros lvl:14 ~4 ~ ~2
execute @a[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Miltank lvl:14 ~3 ~ ~-3
execute @a[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Tauros lvl:14 ~-3 ~ ~-3
execute @a[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Tauros lvl:14 ~-4 ~ ~2
tellraw @a[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] {"text":"A hoard of Tauros & a Miltank spawned!","italic":true,"color":"gray"}

execute @a[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_rng_min=7,score_rng=51,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Mareep lvl:13 ~ ~ ~5
execute @a[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_rng_min=7,score_rng=51,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Mareep lvl:13 ~4 ~ ~2
execute @a[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_rng_min=7,score_rng=51,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Mareep lvl:13 ~3 ~ ~-3
execute @a[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_rng_min=7,score_rng=51,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Mareep lvl:13 ~-3 ~ ~-3
execute @a[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_rng_min=7,score_rng=51,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Mareep lvl:13 ~-4 ~ ~2
tellraw @a[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_rng_min=7,score_rng=51,score_HoneyUse_min=1] {"text":"A hoard of Mareep spawned!","italic":true,"color":"gray"}

execute @a[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_rng_min=52,score_rng=58,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Miltank lvl:14 ~ ~ ~5
execute @a[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_rng_min=52,score_rng=58,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Miltank lvl:14 ~4 ~ ~2
execute @a[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_rng_min=52,score_rng=58,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Tauros lvl:14 ~3 ~ ~-3
execute @a[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_rng_min=52,score_rng=58,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Miltank lvl:14 ~-3 ~ ~-3
execute @a[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_rng_min=52,score_rng=58,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Miltank lvl:14 ~-4 ~ ~2
tellraw @a[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_rng_min=52,score_rng=58,score_HoneyUse_min=1] {"text":"A hoard of Miltank & a Tauros spawned!","italic":true,"color":"gray"}

execute @a[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_rng_min=59,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Wingull lvl:13 ~ ~ ~5
execute @a[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_rng_min=59,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Wingull lvl:13 ~4 ~ ~2
execute @a[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_rng_min=59,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Wingull lvl:13 ~3 ~ ~-3
execute @a[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_rng_min=59,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Wingull lvl:13 ~-3 ~ ~-3
execute @a[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_rng_min=59,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Wingull lvl:13 ~-4 ~ ~2
tellraw @a[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_rng_min=59,score_rng=127,score_HoneyUse_min=1] {"text":"A hoard of Wingull spawned!","italic":true,"color":"gray"}


execute @a[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_rng_min=1,score_HoneyUse_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=pixelmon:pixelmon] add Shiny {IsShiny:1b,OwnerUUID:""}
execute @e[tag=Shiny,type=pixelmon:pixelmon,c=1] ~ ~ ~ /tellraw @a[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_HoneyUse_min=1] ["",{"text":"And one of them is ","italic":true,"color":"gray"},{"text":"s","italic":true,"color":"red"},{"text":"h","italic":true,"color":"gold"},{"text":"i","italic":true,"color":"green"},{"text":"n","italic":true,"color":"light_purple"},{"text":"y","italic":true,"color":"dark_purple"},{"text":"!","italic":true,"color":"gray"}]

scoreboard players set @a[x=-1483,y=0,z=-888,dx=278,dy=256,dz=154,score_HoneyUse_min=1] HoneyUse 0





#Route 14 [x=-342,y=0,z=-1302,dx=432,dy=256,dz=508]

execute @a[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Ekans lvl:17 ~ ~ ~5
execute @a[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Ekans lvl:17 ~4 ~ ~2
execute @a[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Ekans lvl:17 ~3 ~ ~-3
execute @a[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Ekans lvl:17 ~-3 ~ ~-3
execute @a[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Ekans lvl:17 ~-4 ~ ~2
tellraw @a[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] {"text":"A hoard of Ekans spawned!","italic":true,"color":"gray"}

execute @a[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,score_rng_min=7,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Bellsprout lvl:16 ~ ~ ~5
execute @a[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,score_rng_min=7,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Bellsprout lvl:16 ~4 ~ ~2
execute @a[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,score_rng_min=7,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Bellsprout lvl:16 ~3 ~ ~-3
execute @a[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,score_rng_min=7,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Bellsprout lvl:16 ~-3 ~ ~-3
execute @a[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,score_rng_min=7,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Bellsprout lvl:16 ~-4 ~ ~2
tellraw @a[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,score_rng_min=7,score_rng=84,score_HoneyUse_min=1] {"text":"A hoard of Bellsprout spawned!","italic":true,"color":"gray"}

execute @a[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,score_rng_min=85,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Skorupi lvl:16 ~ ~ ~5
execute @a[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,score_rng_min=85,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Skorupi lvl:16 ~4 ~ ~2
execute @a[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,score_rng_min=85,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Skorupi lvl:16 ~3 ~ ~-3
execute @a[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,score_rng_min=85,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Skorupi lvl:16 ~-3 ~ ~-3
execute @a[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,score_rng_min=85,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Skorupi lvl:16 ~-4 ~ ~2
tellraw @a[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,score_rng_min=85,score_rng=127,score_HoneyUse_min=1] {"text":"A hoard of Skorupi spawned!","italic":true,"color":"gray"}


execute @a[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,score_rng_min=1,score_HoneyUse_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=pixelmon:pixelmon] add Shiny {IsShiny:1b,OwnerUUID:""}
execute @e[tag=Shiny,type=pixelmon:pixelmon,c=1] ~ ~ ~ /tellraw @a[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,score_HoneyUse_min=1] ["",{"text":"And one of them is ","italic":true,"color":"gray"},{"text":"s","italic":true,"color":"red"},{"text":"h","italic":true,"color":"gold"},{"text":"i","italic":true,"color":"green"},{"text":"n","italic":true,"color":"light_purple"},{"text":"y","italic":true,"color":"dark_purple"},{"text":"!","italic":true,"color":"gray"}]

scoreboard players set @a[x=-342,y=0,z=-1302,dx=432,dy=256,dz=508,score_HoneyUse_min=1] HoneyUse 0






#Route 15 [x=212,y=95,z=-695,dx=369,dy=156,dz=292]

execute @a[x=212,y=95,z=-695,dx=369,dy=156,dz=292,score_rng_min=0,score_rng=77,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Murkrow lvl:18 ~ ~ ~5
execute @a[x=212,y=95,z=-695,dx=369,dy=156,dz=292,score_rng_min=0,score_rng=77,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Murkrow lvl:18 ~4 ~ ~2
execute @a[x=212,y=95,z=-695,dx=369,dy=156,dz=292,score_rng_min=0,score_rng=77,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Murkrow lvl:18 ~3 ~ ~-3
execute @a[x=212,y=95,z=-695,dx=369,dy=156,dz=292,score_rng_min=0,score_rng=77,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Murkrow lvl:18 ~-3 ~ ~-3
execute @a[x=212,y=95,z=-695,dx=369,dy=156,dz=292,score_rng_min=0,score_rng=77,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Murkrow lvl:18 ~-4 ~ ~2
tellraw @a[x=212,y=95,z=-695,dx=369,dy=156,dz=292,score_rng_min=0,score_rng=77,score_HoneyUse_min=1] {"text":"A hoard of Murkrow spawned!","italic":true,"color":"gray"}

execute @a[x=212,y=95,z=-695,dx=369,dy=156,dz=292,score_rng_min=78,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Foongus lvl:18 ~ ~ ~5
execute @a[x=212,y=95,z=-695,dx=369,dy=156,dz=292,score_rng_min=78,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Foongus lvl:18 ~4 ~ ~2
execute @a[x=212,y=95,z=-695,dx=369,dy=156,dz=292,score_rng_min=78,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Foongus lvl:18 ~3 ~ ~-3
execute @a[x=212,y=95,z=-695,dx=369,dy=156,dz=292,score_rng_min=78,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Foongus lvl:18 ~-3 ~ ~-3
execute @a[x=212,y=95,z=-695,dx=369,dy=156,dz=292,score_rng_min=78,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Foongus lvl:18 ~-4 ~ ~2
tellraw @a[x=212,y=95,z=-695,dx=369,dy=156,dz=292,score_rng_min=78,score_rng=120,score_HoneyUse_min=1] {"text":"A hoard of Foongus spawned!","italic":true,"color":"gray"}

execute @a[x=212,y=95,z=-695,dx=369,dy=156,dz=292,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Klefki lvl:19 ~ ~ ~5
execute @a[x=212,y=95,z=-695,dx=369,dy=156,dz=292,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Klefki lvl:19 ~4 ~ ~2
execute @a[x=212,y=95,z=-695,dx=369,dy=156,dz=292,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Klefki lvl:19 ~3 ~ ~-3
execute @a[x=212,y=95,z=-695,dx=369,dy=156,dz=292,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Klefki lvl:19 ~-3 ~ ~-3
execute @a[x=212,y=95,z=-695,dx=369,dy=156,dz=292,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Klefki lvl:19 ~-4 ~ ~2
tellraw @a[x=212,y=95,z=-695,dx=369,dy=156,dz=292,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] {"text":"A hoard of Klefki spawned!","italic":true,"color":"gray"}


execute @a[x=212,y=95,z=-695,dx=369,dy=156,dz=292,score_rng_min=1,score_HoneyUse_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=pixelmon:pixelmon] add Shiny {IsShiny:1b,OwnerUUID:""}
execute @e[tag=Shiny,type=pixelmon:pixelmon,c=1] ~ ~ ~ /tellraw @a[x=212,y=95,z=-695,dx=369,dy=156,dz=292,score_HoneyUse_min=1] ["",{"text":"And one of them is ","italic":true,"color":"gray"},{"text":"s","italic":true,"color":"red"},{"text":"h","italic":true,"color":"gold"},{"text":"i","italic":true,"color":"green"},{"text":"n","italic":true,"color":"light_purple"},{"text":"y","italic":true,"color":"dark_purple"},{"text":"!","italic":true,"color":"gray"}]

scoreboard players set @a[x=212,y=95,z=-695,dx=369,dy=156,dz=292,score_HoneyUse_min=1] HoneyUse 0





#Route 16 [x=212,y=95,z=-402,dx=369,dy=160,dz=273]

execute @a[x=212,y=95,z=-402,dx=369,dy=160,dz=273,score_rng_min=0,score_rng=77,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Murkrow lvl:18 ~ ~ ~5
execute @a[x=212,y=95,z=-402,dx=369,dy=160,dz=273,score_rng_min=0,score_rng=77,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Murkrow lvl:18 ~4 ~ ~2
execute @a[x=212,y=95,z=-402,dx=369,dy=160,dz=273,score_rng_min=0,score_rng=77,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Murkrow lvl:18 ~3 ~ ~-3
execute @a[x=212,y=95,z=-402,dx=369,dy=160,dz=273,score_rng_min=0,score_rng=77,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Murkrow lvl:18 ~-3 ~ ~-3
execute @a[x=212,y=95,z=-402,dx=369,dy=160,dz=273,score_rng_min=0,score_rng=77,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Murkrow lvl:18 ~-4 ~ ~2
tellraw @a[x=212,y=95,z=-402,dx=369,dy=160,dz=273,score_rng_min=0,score_rng=77,score_HoneyUse_min=1] {"text":"A hoard of Murkrow spawned!","italic":true,"color":"gray"}

execute @a[x=212,y=95,z=-402,dx=369,dy=160,dz=273,score_rng_min=78,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Foongus lvl:18 ~ ~ ~5
execute @a[x=212,y=95,z=-402,dx=369,dy=160,dz=273,score_rng_min=78,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Foongus lvl:18 ~4 ~ ~2
execute @a[x=212,y=95,z=-402,dx=369,dy=160,dz=273,score_rng_min=78,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Foongus lvl:18 ~3 ~ ~-3
execute @a[x=212,y=95,z=-402,dx=369,dy=160,dz=273,score_rng_min=78,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Foongus lvl:18 ~-3 ~ ~-3
execute @a[x=212,y=95,z=-402,dx=369,dy=160,dz=273,score_rng_min=78,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Foongus lvl:18 ~-4 ~ ~2
tellraw @a[x=212,y=95,z=-402,dx=369,dy=160,dz=273,score_rng_min=78,score_rng=120,score_HoneyUse_min=1] {"text":"A hoard of Foongus spawned!","italic":true,"color":"gray"}

execute @a[x=212,y=95,z=-402,dx=369,dy=160,dz=273,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Klefki lvl:19 ~ ~ ~5
execute @a[x=212,y=95,z=-402,dx=369,dy=160,dz=273,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Klefki lvl:19 ~4 ~ ~2
execute @a[x=212,y=95,z=-402,dx=369,dy=160,dz=273,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Klefki lvl:19 ~3 ~ ~-3
execute @a[x=212,y=95,z=-402,dx=369,dy=160,dz=273,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Klefki lvl:19 ~-3 ~ ~-3
execute @a[x=212,y=95,z=-402,dx=369,dy=160,dz=273,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Klefki lvl:19 ~-4 ~ ~2
tellraw @a[x=212,y=95,z=-402,dx=369,dy=160,dz=273,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] {"text":"A hoard of Klefki spawned!","italic":true,"color":"gray"}


execute @a[x=212,y=95,z=-402,dx=369,dy=160,dz=273,score_rng_min=1,score_HoneyUse_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=pixelmon:pixelmon] add Shiny {IsShiny:1b,OwnerUUID:""}
execute @e[tag=Shiny,type=pixelmon:pixelmon,c=1] ~ ~ ~ /tellraw @a[x=212,y=95,z=-402,dx=369,dy=160,dz=273,score_HoneyUse_min=1] ["",{"text":"And one of them is ","italic":true,"color":"gray"},{"text":"s","italic":true,"color":"red"},{"text":"h","italic":true,"color":"gold"},{"text":"i","italic":true,"color":"green"},{"text":"n","italic":true,"color":"light_purple"},{"text":"y","italic":true,"color":"dark_purple"},{"text":"!","italic":true,"color":"gray"}]

scoreboard players set @a[x=212,y=95,z=-402,dx=369,dy=160,dz=273,score_HoneyUse_min=1] HoneyUse 0





#Route 18 [x=1298,y=0,z=-140,dx=300,dy=256,dz=271]

execute @a[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_rng_min=0,score_rng=77,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Geodude lvl:23 ~ ~ ~5
execute @a[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_rng_min=0,score_rng=77,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Geodude lvl:23 ~4 ~ ~2
execute @a[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_rng_min=0,score_rng=77,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Geodude lvl:23 ~3 ~ ~-3
execute @a[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_rng_min=0,score_rng=77,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Geodude lvl:23 ~-3 ~ ~-3
execute @a[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_rng_min=0,score_rng=77,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Geodude lvl:23 ~-4 ~ ~2
tellraw @a[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_rng_min=0,score_rng=77,score_HoneyUse_min=1] {"text":"A hoard of Geodude spawned!","italic":true,"color":"gray"}

execute @a[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_rng_min=78,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Heatmor lvl:23 ~ ~ ~5
execute @a[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_rng_min=78,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Heatmor lvl:23 ~4 ~ ~2
execute @a[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_rng_min=78,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Heatmor lvl:23 ~3 ~ ~-3
execute @a[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_rng_min=78,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Durant lvl:23 ~-3 ~ ~-3
execute @a[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_rng_min=78,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Heatmor lvl:23 ~-4 ~ ~2
tellraw @a[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_rng_min=78,score_rng=84,score_HoneyUse_min=1] {"text":"A hoard of Heatmor & a Durant spawned!","italic":true,"color":"gray"}

execute @a[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_rng_min=85,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Durant lvl:23 ~ ~ ~5
execute @a[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_rng_min=85,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Durant lvl:23 ~4 ~ ~2
execute @a[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_rng_min=85,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Durant lvl:23 ~3 ~ ~-3
execute @a[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_rng_min=85,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Durant lvl:23 ~-3 ~ ~-3
execute @a[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_rng_min=85,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Durant lvl:23 ~-4 ~ ~2
tellraw @a[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_rng_min=85,score_rng=120,score_HoneyUse_min=1] {"text":"A hoard of Durant spawned!","italic":true,"color":"gray"}

execute @a[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Heatmor lvl:23 ~ ~ ~5
execute @a[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Durant lvl:23 ~4 ~ ~2
execute @a[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Durant lvl:23 ~3 ~ ~-3
execute @a[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Durant lvl:23 ~-3 ~ ~-3
execute @a[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Durant lvl:23 ~-4 ~ ~2
tellraw @a[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] {"text":"A hoard of Durant & a Heatmor spawned!","italic":true,"color":"gray"}


execute @a[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_rng_min=1,score_HoneyUse_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=pixelmon:pixelmon] add Shiny {IsShiny:1b,OwnerUUID:""}
execute @e[tag=Shiny,type=pixelmon:pixelmon,c=1] ~ ~ ~ /tellraw @a[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_HoneyUse_min=1] ["",{"text":"And one of them is ","italic":true,"color":"gray"},{"text":"s","italic":true,"color":"red"},{"text":"h","italic":true,"color":"gold"},{"text":"i","italic":true,"color":"green"},{"text":"n","italic":true,"color":"light_purple"},{"text":"y","italic":true,"color":"dark_purple"},{"text":"!","italic":true,"color":"gray"}]

scoreboard players set @a[x=1298,y=0,z=-140,dx=300,dy=256,dz=271,score_HoneyUse_min=1] HoneyUse 0





#Route 19 [x=1326,y=0,z=331,dx=296,dy=256,dz=249]

execute @a[x=1326,y=0,z=331,dx=296,dy=256,dz=249,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Arbok lvl:25 ~ ~ ~5
execute @a[x=1326,y=0,z=331,dx=296,dy=256,dz=249,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Arbok lvl:25 ~4 ~ ~2
execute @a[x=1326,y=0,z=331,dx=296,dy=256,dz=249,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Arbok lvl:25 ~3 ~ ~-3
execute @a[x=1326,y=0,z=331,dx=296,dy=256,dz=249,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Arbok lvl:25 ~-3 ~ ~-3
execute @a[x=1326,y=0,z=331,dx=296,dy=256,dz=249,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Arbok lvl:25 ~-4 ~ ~2
tellraw @a[x=1326,y=0,z=331,dx=296,dy=256,dz=249,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] {"text":"A hoard of Arbok spawned!","italic":true,"color":"gray"}

execute @a[x=1326,y=0,z=331,dx=296,dy=256,dz=249,score_rng_min=7,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Weepinbell lvl:24 ~ ~ ~5
execute @a[x=1326,y=0,z=331,dx=296,dy=256,dz=249,score_rng_min=7,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Weepinbell lvl:24 ~4 ~ ~2
execute @a[x=1326,y=0,z=331,dx=296,dy=256,dz=249,score_rng_min=7,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Weepinbell lvl:24 ~3 ~ ~-3
execute @a[x=1326,y=0,z=331,dx=296,dy=256,dz=249,score_rng_min=7,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Weepinbell lvl:24 ~-3 ~ ~-3
execute @a[x=1326,y=0,z=331,dx=296,dy=256,dz=249,score_rng_min=7,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Weepinbell lvl:24 ~-4 ~ ~2
tellraw @a[x=1326,y=0,z=331,dx=296,dy=256,dz=249,score_rng_min=7,score_rng=84,score_HoneyUse_min=1] {"text":"A hoard of Weepinbell spawned!","italic":true,"color":"gray"}

execute @a[x=1326,y=0,z=331,dx=296,dy=256,dz=249,score_rng_min=85,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Gligar lvl:24 ~ ~ ~5
execute @a[x=1326,y=0,z=331,dx=296,dy=256,dz=249,score_rng_min=85,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Gligar lvl:24 ~4 ~ ~2
execute @a[x=1326,y=0,z=331,dx=296,dy=256,dz=249,score_rng_min=85,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Gligar lvl:24 ~3 ~ ~-3
execute @a[x=1326,y=0,z=331,dx=296,dy=256,dz=249,score_rng_min=85,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Gligar lvl:24 ~-3 ~ ~-3
execute @a[x=1326,y=0,z=331,dx=296,dy=256,dz=249,score_rng_min=85,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Gligar lvl:24 ~-4 ~ ~2
tellraw @a[x=1326,y=0,z=331,dx=296,dy=256,dz=249,score_rng_min=85,score_rng=127,score_HoneyUse_min=1] {"text":"A hoard of Gligar spawned!","italic":true,"color":"gray"}


execute @a[x=1326,y=0,z=331,dx=296,dy=256,dz=249,score_rng_min=1,score_HoneyUse_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=pixelmon:pixelmon] add Shiny {IsShiny:1b,OwnerUUID:""}
execute @e[tag=Shiny,type=pixelmon:pixelmon,c=1] ~ ~ ~ /tellraw @a[x=1326,y=0,z=331,dx=296,dy=256,dz=249,score_HoneyUse_min=1] ["",{"text":"And one of them is ","italic":true,"color":"gray"},{"text":"s","italic":true,"color":"red"},{"text":"h","italic":true,"color":"gold"},{"text":"i","italic":true,"color":"green"},{"text":"n","italic":true,"color":"light_purple"},{"text":"y","italic":true,"color":"dark_purple"},{"text":"!","italic":true,"color":"gray"}]

scoreboard players set @a[x=1326,y=0,z=331,dx=296,dy=256,dz=249,score_HoneyUse_min=1] HoneyUse 0





#Route 20 [x=984,y=95,z=707,dx=621,dy=50,dz=451]

execute @a[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Sudowoodo lvl:25 ~ ~ ~5
execute @a[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Sudowoodo lvl:25 ~4 ~ ~2
execute @a[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Trevenant lvl:25 ~3 ~ ~-3
execute @a[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Sudowoodo lvl:25 ~-3 ~ ~-3
execute @a[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Sudowoodo lvl:25 ~-4 ~ ~2
tellraw @a[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] {"text":"A hoard of Sudowoodo & a Trevenant spawned!","italic":true,"color":"gray"}

execute @a[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_rng_min=7,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Foongus lvl:25 ~ ~ ~5
execute @a[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_rng_min=7,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Foongus lvl:25 ~4 ~ ~2
execute @a[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_rng_min=7,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Foongus lvl:25 ~3 ~ ~-3
execute @a[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_rng_min=7,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Foongus lvl:25 ~-3 ~ ~-3
execute @a[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_rng_min=7,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Foongus lvl:25 ~-4 ~ ~2
tellraw @a[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_rng_min=7,score_rng=84,score_HoneyUse_min=1] {"text":"A hoard of Foongus spawned!","italic":true,"color":"gray"}

execute @a[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_rng_min=85,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Trevenant lvl:25 ~ ~ ~5
execute @a[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_rng_min=85,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Trevenant lvl:25 ~4 ~ ~2
execute @a[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_rng_min=85,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Trevenant lvl:25 ~3 ~ ~-3
execute @a[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_rng_min=85,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Trevenant lvl:25 ~-3 ~ ~-3
execute @a[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_rng_min=85,score_rng=120,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Trevenant lvl:25 ~-4 ~ ~2
tellraw @a[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_rng_min=85,score_rng=120,score_HoneyUse_min=1] {"text":"A hoard of Trevenant spawned!","italic":true,"color":"gray"}

execute @a[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Trevenant lvl:25 ~ ~ ~5
execute @a[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Trevenant lvl:25 ~4 ~ ~2
execute @a[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Sudowoodo lvl:25 ~3 ~ ~-3
execute @a[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Trevenant lvl:25 ~-3 ~ ~-3
execute @a[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Trevenant lvl:25 ~-4 ~ ~2
tellraw @a[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_rng_min=121,score_rng=127,score_HoneyUse_min=1] {"text":"A hoard of Trevenant & a Sudowoodo spawned!","italic":true,"color":"gray"}


execute @a[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_rng_min=1,score_HoneyUse_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=pixelmon:pixelmon] add Shiny {IsShiny:1b,OwnerUUID:""}
execute @e[tag=Shiny,type=pixelmon:pixelmon,c=1] ~ ~ ~ /tellraw @a[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_HoneyUse_min=1] ["",{"text":"And one of them is ","italic":true,"color":"gray"},{"text":"s","italic":true,"color":"red"},{"text":"h","italic":true,"color":"gold"},{"text":"i","italic":true,"color":"green"},{"text":"n","italic":true,"color":"light_purple"},{"text":"y","italic":true,"color":"dark_purple"},{"text":"!","italic":true,"color":"gray"}]

scoreboard players set @a[x=984,y=95,z=707,dx=621,dy=50,dz=451,score_HoneyUse_min=1] HoneyUse 0




#Route 21 (1) [x=705,y=95,z=299,dx=278,dy=100,dz=263]

execute @a[x=705,y=95,z=299,dx=278,dy=100,dz=263,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Scyther lvl:27 ~ ~ ~5
execute @a[x=705,y=95,z=299,dx=278,dy=100,dz=263,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Scyther lvl:27 ~4 ~ ~2
execute @a[x=705,y=95,z=299,dx=278,dy=100,dz=263,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Scyther lvl:27 ~3 ~ ~-3
execute @a[x=705,y=95,z=299,dx=278,dy=100,dz=263,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Scyther lvl:27 ~-3 ~ ~-3
execute @a[x=705,y=95,z=299,dx=278,dy=100,dz=263,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Scyther lvl:27 ~-4 ~ ~2
tellraw @a[x=705,y=95,z=299,dx=278,dy=100,dz=263,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] {"text":"A hoard of Scyther spawned!","italic":true,"color":"gray"}

execute @a[x=705,y=95,z=299,dx=278,dy=100,dz=263,score_rng_min=7,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Spinda lvl:26 ~ ~ ~5
execute @a[x=705,y=95,z=299,dx=278,dy=100,dz=263,score_rng_min=7,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Spinda lvl:26 ~4 ~ ~2
execute @a[x=705,y=95,z=299,dx=278,dy=100,dz=263,score_rng_min=7,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Spinda lvl:26 ~3 ~ ~-3
execute @a[x=705,y=95,z=299,dx=278,dy=100,dz=263,score_rng_min=7,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Spinda lvl:26 ~-3 ~ ~-3
execute @a[x=705,y=95,z=299,dx=278,dy=100,dz=263,score_rng_min=7,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Spinda lvl:26 ~-4 ~ ~2
tellraw @a[x=705,y=95,z=299,dx=278,dy=100,dz=263,score_rng_min=7,score_rng=84,score_HoneyUse_min=1] {"text":"A hoard of Spinda spawned!","italic":true,"color":"gray"}

execute @a[x=705,y=95,z=299,dx=278,dy=100,dz=263,score_rng_min=85,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Swablu lvl:26 ~ ~ ~5
execute @a[x=705,y=95,z=299,dx=278,dy=100,dz=263,score_rng_min=85,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Swablu lvl:26 ~4 ~ ~2
execute @a[x=705,y=95,z=299,dx=278,dy=100,dz=263,score_rng_min=85,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Swablu lvl:26 ~3 ~ ~-3
execute @a[x=705,y=95,z=299,dx=278,dy=100,dz=263,score_rng_min=85,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Swablu lvl:26 ~-3 ~ ~-3
execute @a[x=705,y=95,z=299,dx=278,dy=100,dz=263,score_rng_min=85,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Swablu lvl:26 ~-4 ~ ~2
tellraw @a[x=705,y=95,z=299,dx=278,dy=100,dz=263,score_rng_min=85,score_rng=127,score_HoneyUse_min=1] {"text":"A hoard of Swablu spawned!","italic":true,"color":"gray"}

execute @a[x=705,y=95,z=299,dx=278,dy=100,dz=263,score_rng_min=1,score_HoneyUse_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=pixelmon:pixelmon] add Shiny {IsShiny:1b,OwnerUUID:""}
execute @e[tag=Shiny,type=pixelmon:pixelmon,c=1] ~ ~ ~ /tellraw @a[x=705,y=95,z=299,dx=278,dy=100,dz=263,score_HoneyUse_min=1] ["",{"text":"And one of them is ","italic":true,"color":"gray"},{"text":"s","italic":true,"color":"red"},{"text":"h","italic":true,"color":"gold"},{"text":"i","italic":true,"color":"green"},{"text":"n","italic":true,"color":"light_purple"},{"text":"y","italic":true,"color":"dark_purple"},{"text":"!","italic":true,"color":"gray"}]

scoreboard players set @a[x=705,y=95,z=299,dx=278,dy=100,dz=263,score_HoneyUse_min=1] HoneyUse 0





#Route 21 (2) [x=683,y=95,z=393,dx=21,dy=100,dz=170]

execute @a[x=683,y=95,z=393,dx=21,dy=100,dz=170,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Scyther lvl:27 ~ ~ ~5
execute @a[x=683,y=95,z=393,dx=21,dy=100,dz=170,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Scyther lvl:27 ~4 ~ ~2
execute @a[x=683,y=95,z=393,dx=21,dy=100,dz=170,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Scyther lvl:27 ~3 ~ ~-3
execute @a[x=683,y=95,z=393,dx=21,dy=100,dz=170,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Scyther lvl:27 ~-3 ~ ~-3
execute @a[x=683,y=95,z=393,dx=21,dy=100,dz=170,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Scyther lvl:27 ~-4 ~ ~2
tellraw @a[x=683,y=95,z=393,dx=21,dy=100,dz=170,score_rng_min=0,score_rng=6,score_HoneyUse_min=1] {"text":"A hoard of Scyther spawned!","italic":true,"color":"gray"}

execute @a[x=683,y=95,z=393,dx=21,dy=100,dz=170,score_rng_min=7,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Spinda lvl:26 ~ ~ ~5
execute @a[x=683,y=95,z=393,dx=21,dy=100,dz=170,score_rng_min=7,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Spinda lvl:26 ~4 ~ ~2
execute @a[x=683,y=95,z=393,dx=21,dy=100,dz=170,score_rng_min=7,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Spinda lvl:26 ~3 ~ ~-3
execute @a[x=683,y=95,z=393,dx=21,dy=100,dz=170,score_rng_min=7,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Spinda lvl:26 ~-3 ~ ~-3
execute @a[x=683,y=95,z=393,dx=21,dy=100,dz=170,score_rng_min=7,score_rng=84,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Spinda lvl:26 ~-4 ~ ~2
tellraw @a[x=683,y=95,z=393,dx=21,dy=100,dz=170,score_rng_min=7,score_rng=84,score_HoneyUse_min=1] {"text":"A hoard of Spinda spawned!","italic":true,"color":"gray"}

execute @a[x=683,y=95,z=393,dx=21,dy=100,dz=170,score_rng_min=85,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Swablu lvl:26 ~ ~ ~5
execute @a[x=683,y=95,z=393,dx=21,dy=100,dz=170,score_rng_min=85,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Swablu lvl:26 ~4 ~ ~2
execute @a[x=683,y=95,z=393,dx=21,dy=100,dz=170,score_rng_min=85,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Swablu lvl:26 ~3 ~ ~-3
execute @a[x=683,y=95,z=393,dx=21,dy=100,dz=170,score_rng_min=85,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Swablu lvl:26 ~-3 ~ ~-3
execute @a[x=683,y=95,z=393,dx=21,dy=100,dz=170,score_rng_min=85,score_rng=127,score_HoneyUse_min=1] ~ ~ ~ /pokespawn Swablu lvl:26 ~-4 ~ ~2
tellraw @a[x=683,y=95,z=393,dx=21,dy=100,dz=170,score_rng_min=85,score_rng=127,score_HoneyUse_min=1] {"text":"A hoard of Swablu spawned!","italic":true,"color":"gray"}

execute @a[x=683,y=95,z=393,dx=21,dy=100,dz=170,score_rng_min=1,score_HoneyUse_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=pixelmon:pixelmon] add Shiny {IsShiny:1b,OwnerUUID:""}
execute @e[tag=Shiny,type=pixelmon:pixelmon,c=1] ~ ~ ~ /tellraw @a[x=683,y=95,z=393,dx=21,dy=100,dz=170,score_HoneyUse_min=1] ["",{"text":"And one of them is ","italic":true,"color":"gray"},{"text":"s","italic":true,"color":"red"},{"text":"h","italic":true,"color":"gold"},{"text":"i","italic":true,"color":"green"},{"text":"n","italic":true,"color":"light_purple"},{"text":"y","italic":true,"color":"dark_purple"},{"text":"!","italic":true,"color":"gray"}]

scoreboard players set @a[x=683,y=95,z=393,dx=21,dy=100,dz=170,score_HoneyUse_min=1] HoneyUse 0







tellraw @a[score_HoneyUse_min=1,score_rng_min=1,score_rng=10] {"text":"No Pokemon reacted to the Honey!","italic":true,"color":"gray"}
give @a[score_HoneyUse_min=1,score_rng_min=1,score_rng=10] minecraft:lingering_potion 1 0 {display:{Lore:["A tool used to attract","hoards of Pokemon."]},HideFlags:32}
scoreboard players set @a[score_HoneyUse_min=1,score_rng_min=1,score_rng=10] HoneyUse 0
