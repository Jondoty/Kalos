#Kalos starter track Chespin
#summon minecraft:interaction -1082 101 1196 {width:1.5,height:1.5,response:1,Tags:[Box1]}
execute as @s[x=-1078,y=101,z=1258,distance=..10] run scoreboard players set @s StarterPick 1
execute as @s[x=-1078,y=101,z=1258,distance=..10] run tellraw @s {"text":"An excellent choice!","italic":true,"color":"gray"}
execute as @s[x=-1078,y=101,z=1258,distance=..10] run pokegive chespin level=5
execute as @s[x=-1078,y=101,z=1258,distance=..10] run tp @s 443 108 1369 88 6


execute as @s[x=-1082,y=101,z=1196,distance=..10] run tellraw @s {"text":"You pick the Grass-type Pokémon Chespin?","italic":true,"color":"gray"}
execute as @s[x=-1082,y=101,z=1196,distance=..10] run tp @s -1078 101 1262 180 20


#Kanto Starters
execute as @s[x=-1009,y=101,z=1258,distance=..10] run tellraw @s {"text":"An excellent choice!","italic":true,"color":"gray"}
execute as @s[x=-1009,y=101,z=1258,distance=..10] run pokegive bulbasaur level=10


execute as @s[x=-1009,y=101,z=1196,distance=..10] run tellraw @s {"text":"You pick the Grass-type Pokémon Bulbasaur?","italic":true,"color":"gray"}
execute as @s[x=-1009,y=101,z=1196,distance=..10] run tp @s -1009 101 1262 180 20


advancement revoke @s only kalos:click/box1