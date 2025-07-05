#Kalos starter track Froakie
execute as @s[x=-1078,y=101,z=1373,distance=..10] run scoreboard players set @s StarterPick 2
execute as @s[x=-1078,y=101,z=1373,distance=..10] run tellraw @s {"text":"An excellent choice!","italic":true,"color":"gray"}
execute as @s[x=-1078,y=101,z=1373,distance=..10] run pokegive froakie level=5
execute as @s[x=-1078,y=101,z=1373,distance=..10] run tp @s 443 108 1369 88 6


execute as @s[x=-1074,y=101,z=1196,distance=..10] run tellraw @s {"text":"You pick the Water-type Pokémon Froakie?","italic":true,"color":"gray"}
execute as @s[x=-1074,y=101,z=1196,distance=..10] run tp @s -1078 101 1377 180 20


#Kanto Starters
execute as @s[x=-1009,y=101,z=1373,distance=..10] run tellraw @s {"text":"An excellent choice!","italic":true,"color":"gray"}
execute as @s[x=-1009,y=101,z=1373,distance=..10] run pokegive squirtle level=10

execute as @s[x=-1009,y=101,z=1196,distance=..10] run tellraw @s {"text":"You pick the Water-type Pokémon Squirtle?","italic":true,"color":"gray"}
execute as @s[x=-1009,y=101,z=1196,distance=..10] run tp @s -1009 101 1377 180 20




advancement revoke @s only kalos:click/box3