#Kalos starter track Chespin
#summon minecraft:interaction -1082 101 1196 {width:1.5,height:1.5,response:1,Tags:[Box1]}

#Chespin starter
execute as @s[x=-1082,y=101,z=1196,distance=..10] run opendialogue chespin_pick @s


#Kanto Starters
execute as @s[x=-1009,y=101,z=1196,distance=..10] run opendialogue bulbasaur_pick @s


#Ultimate Weapon boxes used
execute as @s[x=-310,y=107,z=317,distance=..20,tag=Dialogue118,tag=!Dialogue119] unless entity @s[scores={GameVersion=1..}] run opendialogue xerosic_x_dialogue120a @s
execute as @s[x=-310,y=107,z=317,distance=..20,tag=Dialogue118,tag=!Dialogue119] unless entity @s[scores={GameVersion=1..}] run scoreboard players set @s GameVersion 1



advancement revoke @s only kalos:click/box1