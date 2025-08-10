#Scans the player's party, PC for specific Pokemon and resets if none are found but the player has encountered the Pokemon.

scoreboard players set @s Temp 0

#Mewtwo
execute store result score @s Temp run teststore @s all mewtwo
execute as @s[scores={Temp=0,Mewtwo=1..}] run tellraw @s {"text":"You can now re-encounter Mewtwo!","italic":true,"color":"gray"}
execute as @s[scores={Temp=0,Mewtwo=1..}] run scoreboard players set @s Mewtwo 0
scoreboard players set @s Temp 0

#Zygarde
execute store result score @s Temp run teststore @s all zygarde
execute as @s[scores={Temp=0,Zygarde=1..}] run tellraw @s {"text":"You can now re-encounter Zygarde!","italic":true,"color":"gray"}
execute as @s[scores={Temp=0,Zygarde=1..}] run scoreboard players set @s Zygarde 0
scoreboard players set @s Temp 0

#Diancie
execute store result score @s Temp run teststore @s all diancie
execute as @s[scores={Temp=0,Diancie=1..}] run tellraw @s {"text":"You can now re-encounter Diancie!","italic":true,"color":"gray"}
execute as @s[scores={Temp=0,Diancie=1..}] run scoreboard players set @s Diancie 0
scoreboard players set @s Temp 0

#Hoopa
execute store result score @s Temp run teststore @s all hoopa
execute as @s[scores={Temp=0,Hoopa=1..}] run tellraw @s {"text":"You can now re-encounter Hoopa!","italic":true,"color":"gray"}
execute as @s[scores={Temp=0,Hoopa=1..}] run scoreboard players set @s Hoopa 0
scoreboard players set @s Temp 0

#Volcanion
execute store result score @s Temp run teststore @s all volcanion
execute as @s[scores={Temp=0,Volcanion=1..}] run tellraw @s {"text":"You can now re-encounter Volcanion!","italic":true,"color":"gray"}
execute as @s[scores={Temp=0,Volcanion=1..}] run scoreboard players set @s Volcanion 0
scoreboard players set @s Temp 0

#Zapdos
execute store result score @s Temp run teststore @s all zapdos
execute as @s[scores={Temp=0,Zapdos=6..}] run tellraw @s {"text":"You can now re-encounter Zapdos!","italic":true,"color":"gray"}
execute as @s[scores={Temp=0,Zapdos=6..}] run scoreboard players set @s Zapdos 5
scoreboard players set @s Temp 0

#Moltres
execute store result score @s Temp run teststore @s all moltres
execute as @s[scores={Temp=0,Moltres=6..}] run tellraw @s {"text":"You can now re-encounter Moltres!","italic":true,"color":"gray"}
execute as @s[scores={Temp=0,Moltres=6..}] run scoreboard players set @s Moltres 5
scoreboard players set @s Temp 0

#Moltres
execute store result score @s Temp run teststore @s all articuno
execute as @s[scores={Temp=0,Articuno=6..}] run tellraw @s {"text":"You can now re-encounter Articuno!","italic":true,"color":"gray"}
execute as @s[scores={Temp=0,Articuno=6..}] run scoreboard players set @s Articuno 5
scoreboard players set @s Temp 0















#