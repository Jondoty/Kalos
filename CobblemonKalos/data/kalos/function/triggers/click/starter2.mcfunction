#Kalos starter track Fennekin
execute as @s[x=-1078,y=101,z=1311,distance=..10] run scoreboard players set @s StarterPick 2
execute as @s[x=-1078,y=101,z=1311,distance=..10] run tellraw @s {"text":"An excellent choice!","italic":true,"color":"gray"}
execute as @s[x=-1078,y=101,z=1311,distance=..10] run pokegive fennekin level=5
execute as @s[x=-1078,y=101,z=1311,distance=..10] run tp @s 443 108 1369 88 6


execute as @s[x=-1078,y=101,z=1196,distance=..10] run tellraw @s {"text":"You pick the Fire-type Pokémon Fennekin?","italic":true,"color":"gray"}
execute as @s[x=-1078,y=101,z=1196,distance=..10] run tp @s -1078 101 1315 180 20


#Kanto Starter
execute as @s[x=-1009,y=101,z=1311,distance=..10] run tellraw @s {"text":"An excellent choice!","italic":true,"color":"gray"}
execute as @s[x=-1009,y=101,z=1311,distance=..10] run pokegive charmander level=10
execute as @s[x=-1009,y=101,z=1311,distance=..10] run give @s mega_showdown:charizardite_x
execute as @s[x=-1009,y=101,z=1311,distance=..10] run give @s mega_showdown:charizardite_y
execute as @s[x=-1009,y=101,z=1311,distance=..10] run tag @s add KantoStarter
execute as @s[x=-1009,y=101,z=1311,distance=..10] run tp @s -265 121 95 180 12


execute as @s[x=-1009,y=101,z=1196,distance=..10] run tellraw @s {"text":"You pick the Fire-type Pokémon Charmander?","italic":true,"color":"gray"}
execute as @s[x=-1009,y=101,z=1196,distance=..10] run tp @s -1009 101 1315 180 20


#Ultimate Weapon boxes used
execute as @s[x=-310,y=107,z=317,distance=..20,tag=Dialogue118,tag=!Dialogue119] unless entity @s[scores={GameVersion=1..}] run opendialogue xerosic_y_dialogue120a @s
execute as @s[x=-310,y=107,z=317,distance=..20,tag=Dialogue118,tag=!Dialogue119] unless entity @s[scores={GameVersion=1..}] run scoreboard players set @s GameVersion 2


advancement revoke @s only kalos:click/box2