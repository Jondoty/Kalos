#Kalos starter track Fennekin

#Fennekin starter
execute as @s[x=-1078,y=101,z=1196,distance=..10] run opendialogue fennekin_pick @s


#Kanto Starter
execute as @s[x=-1009,y=101,z=1196,distance=..10] run opendialogue charmander_pick @s


#Ultimate Weapon boxes used
execute as @s[x=-310,y=107,z=317,distance=..20,tag=Dialogue118,tag=!Dialogue119] unless entity @s[scores={GameVersion=1..}] run opendialogue xerosic_y_dialogue120a @s
execute as @s[x=-310,y=107,z=317,distance=..20,tag=Dialogue118,tag=!Dialogue119] unless entity @s[scores={GameVersion=1..}] run scoreboard players set @s GameVersion 2


advancement revoke @s only kalos:click/box2