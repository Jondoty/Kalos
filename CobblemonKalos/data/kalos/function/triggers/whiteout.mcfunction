#Returns the player to their last-visited Pokemon Center if they lose or forefit a battle


effect give @s minecraft:blindness 3 1 true
playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~ 1 1 1
tellraw @s {"text":"You fled to the last safe place to heal!","italic":true,"color":"gray"}

#Follows same order as in the portals function with Pokemon Centers listed
execute as @s[scores={Whiteout=0}] run tp @s 509 108 1578 0 12
execute as @s[scores={Whiteout=1}] run tp @s 297 100 486 0 12
execute as @s[scores={Whiteout=2}] run tp @s -1013 100 12 0 12
execute as @s[scores={Whiteout=3}] run tp @s -2036 104 -60 0 12
execute as @s[scores={Whiteout=4}] run tp @s -1961 141 556
execute as @s[scores={Whiteout=5}] run tp @s -441 109 2096 
execute as @s[scores={Whiteout=6}] run tp @s -1161 109 2095
execute as @s[scores={Whiteout=7}] run tp @s -2241 104 -624
execute as @s[scores={Whiteout=8}] run tp @s -1619 80 -817
execute as @s[scores={Whiteout=9}] run tp @s -1026 115 -658
execute as @s[scores={Whiteout=10}] run tp @s -70 100 -1363
execute as @s[scores={Whiteout=11}] run tp @s 621 108 -373
execute as @s[scores={Whiteout=12}] run tp @s 1270 108 -195
execute as @s[scores={Whiteout=13}] run tp @s 1476 100 175
execute as @s[scores={Whiteout=14}] run tp @s 1218 105 505
execute as @s[scores={Whiteout=15}] run tp @s 1180 101 1663
execute as @s[scores={Whiteout=16}] run tp @s -1936 88 2279
execute as @s[scores={Whiteout=17}] run tp @s -148 101 -656 180 ~
execute as @s[scores={Whiteout=18}] run tp @s -258 101 -404 180 ~
execute as @s[scores={Whiteout=19}] run tp @s -227 101 -129 26 ~

#Heals Player's Pokemon
pokeheal @s

tag @s remove Whiteout

#scoreboard players set @s Whiteout 1