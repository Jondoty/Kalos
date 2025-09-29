#Gives money based on the Temp score the player recieves from the end of the trainer battle.
#Writs will adjust the winnings based on found tags




#Upon winning, teleports the trainer upward to relative location and y=79 to prevent rebattling (but still in range to be reorgznied)
execute as @s at @s as @e[distance=..10,type=cobblemon:npc,tag=!Skip] run particle cloud ~ ~ ~ 2 2 2 1 50 
execute as @s at @s as @e[distance=..10,type=cobblemon:npc,tag=!Skip] at @s run tp @s ~ 79 ~



#Adds to the player's Chateau Ranks Point
execute as @s[scores={Temp=1..14}] run scoreboard players add @s ChateauRank 1
execute as @s[scores={Temp=15..28}] run scoreboard players add @s ChateauRank 2
execute as @s[scores={Temp=29..42}] run scoreboard players add @s ChateauRank 3
execute as @s[scores={Temp=43..62}] run scoreboard players add @s ChateauRank 4
execute as @s[scores={Temp=63..}] run scoreboard players add @s ChateauRank 5

#Writs, in ascending order of payout
#WritofChallenge
#@e[x=-679,y=100,z=1384,dy=3,tag=WritofChallenge]

#BlueWritofChallenge
#@e[x=-677,y=100,z=1384,dy=3,tag=BlueWritofChallenge]

#RedWritofChallenge
#@e[x=-675,y=100,z=1384,dy=3,tag=RedWritofChallenge]

#BlackWritofChallenge
#@e[x=-673,y=100,z=1384,dy=3,tag=BlackWritofChallenge]

#GoldWritofInvitation
#@e[x=-681,y=100,z=1384,dy=3,tag=GoldWritofInvitation]

#All armor stands
#@e[x=-685,y=100,z=1384,dy=3,dx=12]


#Calculates which Writ money to give to player
execute if entity @e[x=-679,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] run tag @s add WritofChallenge
execute if entity @e[x=-677,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] run tag @s add BlueWritofChallenge
execute if entity @e[x=-675,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] run tag @s add RedWritofChallenge
execute if entity @e[x=-673,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] run tag @s add BlackWritofChallenge
execute if entity @e[x=-681,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] run tag @s add GoldWritofInvitation
execute as @s unless entity @s[tag=WritofChallenge] unless entity @s[tag=BlueWritofChallenge] unless entity @s[tag=RedWritofChallenge] unless entity @s[tag=BlackWritofChallenge] unless entity @s[tag=GoldWritofInvitation] run tag @s add NoWrit

#If multiple tags found, removes lower money tiers
execute as @s[tag=BlueWritofChallenge] run tag @s remove WritofChallenge

execute as @s[tag=RedWritofChallenge] run tag @s remove WritofChallenge
execute as @s[tag=RedWritofChallenge] run tag @s remove BlueWritofChallenge

execute as @s[tag=BlackWritofChallenge] run tag @s remove WritofChallenge
execute as @s[tag=BlackWritofChallenge] run tag @s remove BlueWritofChallenge
execute as @s[tag=BlackWritofChallenge] run tag @s remove RedWritofChallenge

execute as @s[tag=GoldWritofInvitation] run tag @s remove WritofChallenge
execute as @s[tag=GoldWritofInvitation] run tag @s remove BlueWritofChallenge
execute as @s[tag=GoldWritofInvitation] run tag @s remove RedWritofChallenge
execute as @s[tag=GoldWritofInvitation] run tag @s remove BlackWritofChallenge

execute as @s[tag=NoWrit] run tag @s remove WritofChallenge
execute as @s[tag=NoWrit] run tag @s remove BlueWritofChallenge
execute as @s[tag=NoWrit] run tag @s remove RedWritofChallenge
execute as @s[tag=NoWrit] run tag @s remove BlackWritofChallenge
execute as @s[tag=NoWrit] run tag @s remove GoldWritofInvitation


#Money
execute as @s[scores={Temp=1},tag=NoWrit] run scoreboard players add @s Money 1800
execute as @s[scores={Temp=1},tag=NoWrit] run tellraw @s {"text":"You got $1800 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=1},tag=WritofChallenge] run scoreboard players add @s Money 1980
execute as @s[scores={Temp=1},tag=WritofChallenge] run tellraw @s {"text":"You got $1980 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=1},tag=BlueWritofChallenge] run scoreboard players add @s Money 1512
execute as @s[scores={Temp=1},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $1512 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=1},tag=RedWritofChallenge] run scoreboard players add @s Money 2106
execute as @s[scores={Temp=1},tag=RedWritofChallenge] run tellraw @s {"text":"You got $2106 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=1},tag=BlackWritofChallenge] run scoreboard players add @s Money 2394
execute as @s[scores={Temp=1},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $2394 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=1},tag=GoldWritofInvitation] run scoreboard players add @s Money 2700
execute as @s[scores={Temp=1},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $2700 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=2},tag=NoWrit] run scoreboard players add @s Money 960
execute as @s[scores={Temp=2},tag=NoWrit] run tellraw @s {"text":"You got $960 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=2},tag=WritofChallenge] run scoreboard players add @s Money 1056
execute as @s[scores={Temp=2},tag=WritofChallenge] run tellraw @s {"text":"You got $1056 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=2},tag=BlueWritofChallenge] run scoreboard players add @s Money 806
execute as @s[scores={Temp=2},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $806 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=2},tag=RedWritofChallenge] run scoreboard players add @s Money 1123
execute as @s[scores={Temp=2},tag=RedWritofChallenge] run tellraw @s {"text":"You got $1123 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=2},tag=BlackWritofChallenge] run scoreboard players add @s Money 1277
execute as @s[scores={Temp=2},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $1277 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=2},tag=GoldWritofInvitation] run scoreboard players add @s Money 1440
execute as @s[scores={Temp=2},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $1440 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=3},tag=NoWrit] run scoreboard players add @s Money 1800
execute as @s[scores={Temp=3},tag=NoWrit] run tellraw @s {"text":"You got $1800 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=3},tag=WritofChallenge] run scoreboard players add @s Money 1980
execute as @s[scores={Temp=3},tag=WritofChallenge] run tellraw @s {"text":"You got $1980 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=3},tag=BlueWritofChallenge] run scoreboard players add @s Money 1512
execute as @s[scores={Temp=3},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $1512 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=3},tag=RedWritofChallenge] run scoreboard players add @s Money 2106
execute as @s[scores={Temp=3},tag=RedWritofChallenge] run tellraw @s {"text":"You got $2106 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=3},tag=BlackWritofChallenge] run scoreboard players add @s Money 2394
execute as @s[scores={Temp=3},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $2394 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=3},tag=GoldWritofInvitation] run scoreboard players add @s Money 2700
execute as @s[scores={Temp=3},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $2700 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=5},tag=NoWrit] run scoreboard players add @s Money 1800
execute as @s[scores={Temp=5},tag=NoWrit] run tellraw @s {"text":"You got $1800 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=5},tag=WritofChallenge] run scoreboard players add @s Money 1980
execute as @s[scores={Temp=5},tag=WritofChallenge] run tellraw @s {"text":"You got $1980 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=5},tag=BlueWritofChallenge] run scoreboard players add @s Money 1512
execute as @s[scores={Temp=5},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $1512 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=5},tag=RedWritofChallenge] run scoreboard players add @s Money 2106
execute as @s[scores={Temp=5},tag=RedWritofChallenge] run tellraw @s {"text":"You got $2106 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=5},tag=BlackWritofChallenge] run scoreboard players add @s Money 2394
execute as @s[scores={Temp=5},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $2394 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=5},tag=GoldWritofInvitation] run scoreboard players add @s Money 2700
execute as @s[scores={Temp=5},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $2700 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=6},tag=NoWrit] run scoreboard players add @s Money 1800
execute as @s[scores={Temp=6},tag=NoWrit] run tellraw @s {"text":"You got $1800 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=6},tag=WritofChallenge] run scoreboard players add @s Money 1980
execute as @s[scores={Temp=6},tag=WritofChallenge] run tellraw @s {"text":"You got $1980 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=6},tag=BlueWritofChallenge] run scoreboard players add @s Money 1512
execute as @s[scores={Temp=6},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $1512 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=6},tag=RedWritofChallenge] run scoreboard players add @s Money 2106
execute as @s[scores={Temp=6},tag=RedWritofChallenge] run tellraw @s {"text":"You got $2106 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=6},tag=BlackWritofChallenge] run scoreboard players add @s Money 2394
execute as @s[scores={Temp=6},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $2394 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=6},tag=GoldWritofInvitation] run scoreboard players add @s Money 2700
execute as @s[scores={Temp=6},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $2700 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=7},tag=NoWrit] run scoreboard players add @s Money 3000
execute as @s[scores={Temp=7},tag=NoWrit] run tellraw @s {"text":"You got $3000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=7},tag=WritofChallenge] run scoreboard players add @s Money 3300
execute as @s[scores={Temp=7},tag=WritofChallenge] run tellraw @s {"text":"You got $3300 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=7},tag=BlueWritofChallenge] run scoreboard players add @s Money 2520
execute as @s[scores={Temp=7},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $2520 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=7},tag=RedWritofChallenge] run scoreboard players add @s Money 3510
execute as @s[scores={Temp=7},tag=RedWritofChallenge] run tellraw @s {"text":"You got $3510 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=7},tag=BlackWritofChallenge] run scoreboard players add @s Money 3990
execute as @s[scores={Temp=7},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $3990 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=7},tag=GoldWritofInvitation] run scoreboard players add @s Money 4500
execute as @s[scores={Temp=7},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $4500 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=8},tag=NoWrit] run scoreboard players add @s Money 3000
execute as @s[scores={Temp=8},tag=NoWrit] run tellraw @s {"text":"You got $3000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=8},tag=WritofChallenge] run scoreboard players add @s Money 3300
execute as @s[scores={Temp=8},tag=WritofChallenge] run tellraw @s {"text":"You got $3300 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=8},tag=BlueWritofChallenge] run scoreboard players add @s Money 2520
execute as @s[scores={Temp=8},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $2520 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=8},tag=RedWritofChallenge] run scoreboard players add @s Money 3510
execute as @s[scores={Temp=8},tag=RedWritofChallenge] run tellraw @s {"text":"You got $3510 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=8},tag=BlackWritofChallenge] run scoreboard players add @s Money 3990
execute as @s[scores={Temp=8},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $3990 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=8},tag=GoldWritofInvitation] run scoreboard players add @s Money 4500
execute as @s[scores={Temp=8},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $4500 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=9},tag=NoWrit] run scoreboard players add @s Money 1800
execute as @s[scores={Temp=9},tag=NoWrit] run tellraw @s {"text":"You got $1800 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=9},tag=WritofChallenge] run scoreboard players add @s Money 1980
execute as @s[scores={Temp=9},tag=WritofChallenge] run tellraw @s {"text":"You got $1980 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=9},tag=BlueWritofChallenge] run scoreboard players add @s Money 1512
execute as @s[scores={Temp=9},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $1512 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=9},tag=RedWritofChallenge] run scoreboard players add @s Money 2106
execute as @s[scores={Temp=9},tag=RedWritofChallenge] run tellraw @s {"text":"You got $2106 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=9},tag=BlackWritofChallenge] run scoreboard players add @s Money 2394
execute as @s[scores={Temp=9},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $2394 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=9},tag=GoldWritofInvitation] run scoreboard players add @s Money 2700
execute as @s[scores={Temp=9},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $2700 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=10},tag=NoWrit] run scoreboard players add @s Money 1800
execute as @s[scores={Temp=10},tag=NoWrit] run tellraw @s {"text":"You got $1800 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=10},tag=WritofChallenge] run scoreboard players add @s Money 1980
execute as @s[scores={Temp=10},tag=WritofChallenge] run tellraw @s {"text":"You got $1980 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=10},tag=BlueWritofChallenge] run scoreboard players add @s Money 1512
execute as @s[scores={Temp=10},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $1512 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=10},tag=RedWritofChallenge] run scoreboard players add @s Money 2106
execute as @s[scores={Temp=10},tag=RedWritofChallenge] run tellraw @s {"text":"You got $2106 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=10},tag=BlackWritofChallenge] run scoreboard players add @s Money 2394
execute as @s[scores={Temp=10},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $2394 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=10},tag=GoldWritofInvitation] run scoreboard players add @s Money 2700
execute as @s[scores={Temp=10},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $2700 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=11},tag=NoWrit] run scoreboard players add @s Money 1800
execute as @s[scores={Temp=11},tag=NoWrit] run tellraw @s {"text":"You got $1800 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=11},tag=WritofChallenge] run scoreboard players add @s Money 1980
execute as @s[scores={Temp=11},tag=WritofChallenge] run tellraw @s {"text":"You got $1980 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=11},tag=BlueWritofChallenge] run scoreboard players add @s Money 1512
execute as @s[scores={Temp=11},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $1512 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=11},tag=RedWritofChallenge] run scoreboard players add @s Money 2106
execute as @s[scores={Temp=11},tag=RedWritofChallenge] run tellraw @s {"text":"You got $2106 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=11},tag=BlackWritofChallenge] run scoreboard players add @s Money 2394
execute as @s[scores={Temp=11},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $2394 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=11},tag=GoldWritofInvitation] run scoreboard players add @s Money 2700
execute as @s[scores={Temp=11},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $2700 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=12},tag=NoWrit] run scoreboard players add @s Money 1800
execute as @s[scores={Temp=12},tag=NoWrit] run tellraw @s {"text":"You got $1800 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=12},tag=WritofChallenge] run scoreboard players add @s Money 1980
execute as @s[scores={Temp=12},tag=WritofChallenge] run tellraw @s {"text":"You got $1980 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=12},tag=BlueWritofChallenge] run scoreboard players add @s Money 1512
execute as @s[scores={Temp=12},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $1512 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=12},tag=RedWritofChallenge] run scoreboard players add @s Money 2106
execute as @s[scores={Temp=12},tag=RedWritofChallenge] run tellraw @s {"text":"You got $2106 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=12},tag=BlackWritofChallenge] run scoreboard players add @s Money 2394
execute as @s[scores={Temp=12},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $2394 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=12},tag=GoldWritofInvitation] run scoreboard players add @s Money 2700
execute as @s[scores={Temp=12},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $2700 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=13},tag=NoWrit] run scoreboard players add @s Money 1200
execute as @s[scores={Temp=13},tag=NoWrit] run tellraw @s {"text":"You got $1200 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=13},tag=WritofChallenge] run scoreboard players add @s Money 1320
execute as @s[scores={Temp=13},tag=WritofChallenge] run tellraw @s {"text":"You got $1320 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=13},tag=BlueWritofChallenge] run scoreboard players add @s Money 1008
execute as @s[scores={Temp=13},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $1008 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=13},tag=RedWritofChallenge] run scoreboard players add @s Money 1404
execute as @s[scores={Temp=13},tag=RedWritofChallenge] run tellraw @s {"text":"You got $1404 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=13},tag=BlackWritofChallenge] run scoreboard players add @s Money 1596
execute as @s[scores={Temp=13},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $1596 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=13},tag=GoldWritofInvitation] run scoreboard players add @s Money 1800
execute as @s[scores={Temp=13},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $1800 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=14},tag=NoWrit] run scoreboard players add @s Money 1800
execute as @s[scores={Temp=14},tag=NoWrit] run tellraw @s {"text":"You got $1800 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=14},tag=WritofChallenge] run scoreboard players add @s Money 1980
execute as @s[scores={Temp=14},tag=WritofChallenge] run tellraw @s {"text":"You got $1980 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=14},tag=BlueWritofChallenge] run scoreboard players add @s Money 1512
execute as @s[scores={Temp=14},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $1512 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=14},tag=RedWritofChallenge] run scoreboard players add @s Money 2106
execute as @s[scores={Temp=14},tag=RedWritofChallenge] run tellraw @s {"text":"You got $2106 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=14},tag=BlackWritofChallenge] run scoreboard players add @s Money 2394
execute as @s[scores={Temp=14},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $2394 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=15},tag=NoWrit] run scoreboard players add @s Money 2400
execute as @s[scores={Temp=15},tag=NoWrit] run tellraw @s {"text":"You got $2400 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=15},tag=WritofChallenge] run scoreboard players add @s Money 2640
execute as @s[scores={Temp=15},tag=WritofChallenge] run tellraw @s {"text":"You got $2640 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=15},tag=BlueWritofChallenge] run scoreboard players add @s Money 2016
execute as @s[scores={Temp=15},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $2016 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=15},tag=RedWritofChallenge] run scoreboard players add @s Money 2808
execute as @s[scores={Temp=15},tag=RedWritofChallenge] run tellraw @s {"text":"You got $2808 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=15},tag=BlackWritofChallenge] run scoreboard players add @s Money 3192
execute as @s[scores={Temp=15},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $3192 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=15},tag=GoldWritofInvitation] run scoreboard players add @s Money 3600
execute as @s[scores={Temp=15},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $3600 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=16},tag=NoWrit] run scoreboard players add @s Money 4000
execute as @s[scores={Temp=16},tag=NoWrit] run tellraw @s {"text":"You got $4000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=16},tag=WritofChallenge] run scoreboard players add @s Money 4400
execute as @s[scores={Temp=16},tag=WritofChallenge] run tellraw @s {"text":"You got $4400 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=16},tag=BlueWritofChallenge] run scoreboard players add @s Money 3360
execute as @s[scores={Temp=16},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $3360 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=16},tag=RedWritofChallenge] run scoreboard players add @s Money 4680
execute as @s[scores={Temp=16},tag=RedWritofChallenge] run tellraw @s {"text":"You got $4680 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=16},tag=BlackWritofChallenge] run scoreboard players add @s Money 5320
execute as @s[scores={Temp=16},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $5320 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=16},tag=GoldWritofInvitation] run scoreboard players add @s Money 6000
execute as @s[scores={Temp=16},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $6000 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=17},tag=NoWrit] run scoreboard players add @s Money 2400
execute as @s[scores={Temp=17},tag=NoWrit] run tellraw @s {"text":"You got $2400 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=17},tag=WritofChallenge] run scoreboard players add @s Money 2640
execute as @s[scores={Temp=17},tag=WritofChallenge] run tellraw @s {"text":"You got $2640 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=17},tag=BlueWritofChallenge] run scoreboard players add @s Money 2016
execute as @s[scores={Temp=17},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $2016 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=17},tag=RedWritofChallenge] run scoreboard players add @s Money 2808
execute as @s[scores={Temp=17},tag=RedWritofChallenge] run tellraw @s {"text":"You got $2808 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=17},tag=BlackWritofChallenge] run scoreboard players add @s Money 3192
execute as @s[scores={Temp=17},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $3192 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=17},tag=GoldWritofInvitation] run scoreboard players add @s Money 3600
execute as @s[scores={Temp=17},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $3600 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=18},tag=NoWrit] run scoreboard players add @s Money 2400
execute as @s[scores={Temp=18},tag=NoWrit] run tellraw @s {"text":"You got $2400 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=18},tag=WritofChallenge] run scoreboard players add @s Money 2640
execute as @s[scores={Temp=18},tag=WritofChallenge] run tellraw @s {"text":"You got $2640 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=18},tag=BlueWritofChallenge] run scoreboard players add @s Money 2016
execute as @s[scores={Temp=18},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $2016 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=18},tag=RedWritofChallenge] run scoreboard players add @s Money 2808
execute as @s[scores={Temp=18},tag=RedWritofChallenge] run tellraw @s {"text":"You got $2808 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=18},tag=BlackWritofChallenge] run scoreboard players add @s Money 3192
execute as @s[scores={Temp=18},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $3192 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=18},tag=GoldWritofInvitation] run scoreboard players add @s Money 3600
execute as @s[scores={Temp=18},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $3600 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=19},tag=NoWrit] run scoreboard players add @s Money 1920
execute as @s[scores={Temp=19},tag=NoWrit] run tellraw @s {"text":"You got $1920 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=19},tag=WritofChallenge] run scoreboard players add @s Money 2112
execute as @s[scores={Temp=19},tag=WritofChallenge] run tellraw @s {"text":"You got $2112 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=19},tag=BlueWritofChallenge] run scoreboard players add @s Money 1613
execute as @s[scores={Temp=19},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $1613 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=19},tag=RedWritofChallenge] run scoreboard players add @s Money 2246
execute as @s[scores={Temp=19},tag=RedWritofChallenge] run tellraw @s {"text":"You got $2246 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=19},tag=BlackWritofChallenge] run scoreboard players add @s Money 2554
execute as @s[scores={Temp=19},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $2554 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=19},tag=GoldWritofInvitation] run scoreboard players add @s Money 2880
execute as @s[scores={Temp=19},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $2880 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=20},tag=NoWrit] run scoreboard players add @s Money 4000
execute as @s[scores={Temp=20},tag=NoWrit] run tellraw @s {"text":"You got $4000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=20},tag=WritofChallenge] run scoreboard players add @s Money 4400
execute as @s[scores={Temp=20},tag=WritofChallenge] run tellraw @s {"text":"You got $4400 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=20},tag=BlueWritofChallenge] run scoreboard players add @s Money 3360
execute as @s[scores={Temp=20},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $3360 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=20},tag=RedWritofChallenge] run scoreboard players add @s Money 4680
execute as @s[scores={Temp=20},tag=RedWritofChallenge] run tellraw @s {"text":"You got $4680 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=20},tag=BlackWritofChallenge] run scoreboard players add @s Money 5320
execute as @s[scores={Temp=20},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $5320 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=20},tag=GoldWritofInvitation] run scoreboard players add @s Money 6000
execute as @s[scores={Temp=20},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $6000 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=21},tag=NoWrit] run scoreboard players add @s Money 4000
execute as @s[scores={Temp=21},tag=NoWrit] run tellraw @s {"text":"You got $4000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=21},tag=WritofChallenge] run scoreboard players add @s Money 4400
execute as @s[scores={Temp=21},tag=WritofChallenge] run tellraw @s {"text":"You got $4400 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=21},tag=BlueWritofChallenge] run scoreboard players add @s Money 3360
execute as @s[scores={Temp=21},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $3360 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=21},tag=RedWritofChallenge] run scoreboard players add @s Money 4680
execute as @s[scores={Temp=21},tag=RedWritofChallenge] run tellraw @s {"text":"You got $4680 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=21},tag=BlackWritofChallenge] run scoreboard players add @s Money 5320
execute as @s[scores={Temp=21},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $5320 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=21},tag=GoldWritofInvitation] run scoreboard players add @s Money 6000
execute as @s[scores={Temp=21},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $6000 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=22},tag=NoWrit] run scoreboard players add @s Money 1600
execute as @s[scores={Temp=22},tag=NoWrit] run tellraw @s {"text":"You got $1600 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=22},tag=WritofChallenge] run scoreboard players add @s Money 1760
execute as @s[scores={Temp=22},tag=WritofChallenge] run tellraw @s {"text":"You got $1760 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=22},tag=BlueWritofChallenge] run scoreboard players add @s Money 1344
execute as @s[scores={Temp=22},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $1344 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=22},tag=RedWritofChallenge] run scoreboard players add @s Money 1872
execute as @s[scores={Temp=22},tag=RedWritofChallenge] run tellraw @s {"text":"You got $1872 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=22},tag=BlackWritofChallenge] run scoreboard players add @s Money 2128
execute as @s[scores={Temp=22},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $2128 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=22},tag=GoldWritofInvitation] run scoreboard players add @s Money 2400
execute as @s[scores={Temp=22},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $2400 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=23},tag=NoWrit] run scoreboard players add @s Money 2400
execute as @s[scores={Temp=23},tag=NoWrit] run tellraw @s {"text":"You got $2400 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=23},tag=WritofChallenge] run scoreboard players add @s Money 2640
execute as @s[scores={Temp=23},tag=WritofChallenge] run tellraw @s {"text":"You got $2640 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=23},tag=BlueWritofChallenge] run scoreboard players add @s Money 2016
execute as @s[scores={Temp=23},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $2016 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=23},tag=RedWritofChallenge] run scoreboard players add @s Money 2808
execute as @s[scores={Temp=23},tag=RedWritofChallenge] run tellraw @s {"text":"You got $2808 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=23},tag=BlackWritofChallenge] run scoreboard players add @s Money 3192
execute as @s[scores={Temp=23},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $3192 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=23},tag=GoldWritofInvitation] run scoreboard players add @s Money 3600
execute as @s[scores={Temp=23},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $3600 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=24},tag=NoWrit] run scoreboard players add @s Money 4000
execute as @s[scores={Temp=24},tag=NoWrit] run tellraw @s {"text":"You got $4000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=24},tag=WritofChallenge] run scoreboard players add @s Money 4400
execute as @s[scores={Temp=24},tag=WritofChallenge] run tellraw @s {"text":"You got $4400 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=24},tag=BlueWritofChallenge] run scoreboard players add @s Money 3360
execute as @s[scores={Temp=24},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $3360 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=24},tag=RedWritofChallenge] run scoreboard players add @s Money 4680
execute as @s[scores={Temp=24},tag=RedWritofChallenge] run tellraw @s {"text":"You got $4680 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=24},tag=BlackWritofChallenge] run scoreboard players add @s Money 5320
execute as @s[scores={Temp=24},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $5320 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=24},tag=GoldWritofInvitation] run scoreboard players add @s Money 6000
execute as @s[scores={Temp=24},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $6000 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=25},tag=NoWrit] run scoreboard players add @s Money 2400
execute as @s[scores={Temp=25},tag=NoWrit] run tellraw @s {"text":"You got $2400 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=25},tag=WritofChallenge] run scoreboard players add @s Money 2640
execute as @s[scores={Temp=25},tag=WritofChallenge] run tellraw @s {"text":"You got $2640 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=25},tag=BlueWritofChallenge] run scoreboard players add @s Money 2016
execute as @s[scores={Temp=25},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $2016 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=25},tag=RedWritofChallenge] run scoreboard players add @s Money 2808
execute as @s[scores={Temp=25},tag=RedWritofChallenge] run tellraw @s {"text":"You got $2808 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=25},tag=BlackWritofChallenge] run scoreboard players add @s Money 3192
execute as @s[scores={Temp=25},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $3192 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=25},tag=GoldWritofInvitation] run scoreboard players add @s Money 3600
execute as @s[scores={Temp=25},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $3600 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=26},tag=NoWrit] run scoreboard players add @s Money 2400
execute as @s[scores={Temp=26},tag=NoWrit] run tellraw @s {"text":"You got $2400 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=26},tag=WritofChallenge] run scoreboard players add @s Money 2640
execute as @s[scores={Temp=26},tag=WritofChallenge] run tellraw @s {"text":"You got $2640 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=26},tag=BlueWritofChallenge] run scoreboard players add @s Money 2016
execute as @s[scores={Temp=26},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $2016 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=26},tag=RedWritofChallenge] run scoreboard players add @s Money 2808
execute as @s[scores={Temp=26},tag=RedWritofChallenge] run tellraw @s {"text":"You got $2808 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=26},tag=BlackWritofChallenge] run scoreboard players add @s Money 3192
execute as @s[scores={Temp=26},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $3192 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=26},tag=GoldWritofInvitation] run scoreboard players add @s Money 3600
execute as @s[scores={Temp=26},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $3600 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=27},tag=NoWrit] run scoreboard players add @s Money 4000
execute as @s[scores={Temp=27},tag=NoWrit] run tellraw @s {"text":"You got $4000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=27},tag=WritofChallenge] run scoreboard players add @s Money 4400
execute as @s[scores={Temp=27},tag=WritofChallenge] run tellraw @s {"text":"You got $4400 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=27},tag=BlueWritofChallenge] run scoreboard players add @s Money 3360
execute as @s[scores={Temp=27},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $3360 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=27},tag=RedWritofChallenge] run scoreboard players add @s Money 4680
execute as @s[scores={Temp=27},tag=RedWritofChallenge] run tellraw @s {"text":"You got $4680 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=27},tag=BlackWritofChallenge] run scoreboard players add @s Money 5320
execute as @s[scores={Temp=27},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $5320 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=27},tag=GoldWritofInvitation] run scoreboard players add @s Money 6000
execute as @s[scores={Temp=27},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $6000 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=28},tag=NoWrit] run scoreboard players add @s Money 4000
execute as @s[scores={Temp=28},tag=NoWrit] run tellraw @s {"text":"You got $4000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=28},tag=WritofChallenge] run scoreboard players add @s Money 4400
execute as @s[scores={Temp=28},tag=WritofChallenge] run tellraw @s {"text":"You got $4400 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=28},tag=BlueWritofChallenge] run scoreboard players add @s Money 3360
execute as @s[scores={Temp=28},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $3360 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=28},tag=RedWritofChallenge] run scoreboard players add @s Money 4680
execute as @s[scores={Temp=28},tag=RedWritofChallenge] run tellraw @s {"text":"You got $4680 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=28},tag=BlackWritofChallenge] run scoreboard players add @s Money 5320
execute as @s[scores={Temp=28},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $5320 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=28},tag=GoldWritofInvitation] run scoreboard players add @s Money 6000
execute as @s[scores={Temp=28},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $6000 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=29},tag=NoWrit] run scoreboard players add @s Money 5000
execute as @s[scores={Temp=29},tag=NoWrit] run tellraw @s {"text":"You got $5000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=29},tag=WritofChallenge] run scoreboard players add @s Money 5500
execute as @s[scores={Temp=29},tag=WritofChallenge] run tellraw @s {"text":"You got $5500 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=29},tag=BlueWritofChallenge] run scoreboard players add @s Money 4200
execute as @s[scores={Temp=29},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $4200 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=29},tag=RedWritofChallenge] run scoreboard players add @s Money 5850
execute as @s[scores={Temp=29},tag=RedWritofChallenge] run tellraw @s {"text":"You got $5850 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=29},tag=BlackWritofChallenge] run scoreboard players add @s Money 6650
execute as @s[scores={Temp=29},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $6650 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=29},tag=GoldWritofInvitation] run scoreboard players add @s Money 7500
execute as @s[scores={Temp=29},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $7500 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=30},tag=NoWrit] run scoreboard players add @s Money 3000
execute as @s[scores={Temp=30},tag=NoWrit] run tellraw @s {"text":"You got $3000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=30},tag=WritofChallenge] run scoreboard players add @s Money 3300
execute as @s[scores={Temp=30},tag=WritofChallenge] run tellraw @s {"text":"You got $3300 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=30},tag=BlueWritofChallenge] run scoreboard players add @s Money 2520
execute as @s[scores={Temp=30},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $2520 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=30},tag=RedWritofChallenge] run scoreboard players add @s Money 3510
execute as @s[scores={Temp=30},tag=RedWritofChallenge] run tellraw @s {"text":"You got $3510 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=30},tag=BlackWritofChallenge] run scoreboard players add @s Money 3990
execute as @s[scores={Temp=30},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $3990 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=30},tag=GoldWritofInvitation] run scoreboard players add @s Money 4500
execute as @s[scores={Temp=30},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $4500 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=31},tag=NoWrit] run scoreboard players add @s Money 5000
execute as @s[scores={Temp=31},tag=NoWrit] run tellraw @s {"text":"You got $5000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=31},tag=WritofChallenge] run scoreboard players add @s Money 5500
execute as @s[scores={Temp=31},tag=WritofChallenge] run tellraw @s {"text":"You got $5500 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=31},tag=BlueWritofChallenge] run scoreboard players add @s Money 4200
execute as @s[scores={Temp=31},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $4200 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=31},tag=RedWritofChallenge] run scoreboard players add @s Money 5850
execute as @s[scores={Temp=31},tag=RedWritofChallenge] run tellraw @s {"text":"You got $5850 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=31},tag=BlackWritofChallenge] run scoreboard players add @s Money 6650
execute as @s[scores={Temp=31},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $6650 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=31},tag=GoldWritofInvitation] run scoreboard players add @s Money 7500
execute as @s[scores={Temp=31},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $7500 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=32},tag=NoWrit] run scoreboard players add @s Money 5000
execute as @s[scores={Temp=32},tag=NoWrit] run tellraw @s {"text":"You got $5000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=32},tag=WritofChallenge] run scoreboard players add @s Money 5500
execute as @s[scores={Temp=32},tag=WritofChallenge] run tellraw @s {"text":"You got $5500 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=32},tag=BlueWritofChallenge] run scoreboard players add @s Money 4200
execute as @s[scores={Temp=32},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $4200 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=32},tag=RedWritofChallenge] run scoreboard players add @s Money 5850
execute as @s[scores={Temp=32},tag=RedWritofChallenge] run tellraw @s {"text":"You got $5850 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=32},tag=BlackWritofChallenge] run scoreboard players add @s Money 6650
execute as @s[scores={Temp=32},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $6650 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=32},tag=GoldWritofInvitation] run scoreboard players add @s Money 7500
execute as @s[scores={Temp=32},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $7500 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=33},tag=NoWrit] run scoreboard players add @s Money 1600
execute as @s[scores={Temp=33},tag=NoWrit] run tellraw @s {"text":"You got $1600 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=33},tag=WritofChallenge] run scoreboard players add @s Money 1760
execute as @s[scores={Temp=33},tag=WritofChallenge] run tellraw @s {"text":"You got $1760 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=33},tag=BlueWritofChallenge] run scoreboard players add @s Money 1344
execute as @s[scores={Temp=33},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $1344 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=33},tag=RedWritofChallenge] run scoreboard players add @s Money 1872
execute as @s[scores={Temp=33},tag=RedWritofChallenge] run tellraw @s {"text":"You got $1872 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=33},tag=BlackWritofChallenge] run scoreboard players add @s Money 2128
execute as @s[scores={Temp=33},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $2128 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=33},tag=GoldWritofInvitation] run scoreboard players add @s Money 2400
execute as @s[scores={Temp=33},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $2400 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=34},tag=NoWrit] run scoreboard players add @s Money 5000
execute as @s[scores={Temp=34},tag=NoWrit] run tellraw @s {"text":"You got $5000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=34},tag=WritofChallenge] run scoreboard players add @s Money 5500
execute as @s[scores={Temp=34},tag=WritofChallenge] run tellraw @s {"text":"You got $5500 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=34},tag=BlueWritofChallenge] run scoreboard players add @s Money 4200
execute as @s[scores={Temp=34},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $4200 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=34},tag=RedWritofChallenge] run scoreboard players add @s Money 5850
execute as @s[scores={Temp=34},tag=RedWritofChallenge] run tellraw @s {"text":"You got $5850 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=34},tag=BlackWritofChallenge] run scoreboard players add @s Money 6650
execute as @s[scores={Temp=34},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $6650 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=34},tag=GoldWritofInvitation] run scoreboard players add @s Money 7500
execute as @s[scores={Temp=34},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $7500 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=35},tag=NoWrit] run scoreboard players add @s Money 5000
execute as @s[scores={Temp=35},tag=NoWrit] run tellraw @s {"text":"You got $5000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=35},tag=WritofChallenge] run scoreboard players add @s Money 5500
execute as @s[scores={Temp=35},tag=WritofChallenge] run tellraw @s {"text":"You got $5500 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=35},tag=BlueWritofChallenge] run scoreboard players add @s Money 4200
execute as @s[scores={Temp=35},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $4200 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=35},tag=RedWritofChallenge] run scoreboard players add @s Money 5850
execute as @s[scores={Temp=35},tag=RedWritofChallenge] run tellraw @s {"text":"You got $5850 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=35},tag=BlackWritofChallenge] run scoreboard players add @s Money 6650
execute as @s[scores={Temp=35},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $6650 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=35},tag=GoldWritofInvitation] run scoreboard players add @s Money 7500
execute as @s[scores={Temp=35},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $7500 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=36},tag=NoWrit] run scoreboard players add @s Money 2000
execute as @s[scores={Temp=36},tag=NoWrit] run tellraw @s {"text":"You got $2000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=36},tag=WritofChallenge] run scoreboard players add @s Money 2200
execute as @s[scores={Temp=36},tag=WritofChallenge] run tellraw @s {"text":"You got $2200 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=36},tag=BlueWritofChallenge] run scoreboard players add @s Money 1680
execute as @s[scores={Temp=36},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $1680 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=36},tag=RedWritofChallenge] run scoreboard players add @s Money 2340
execute as @s[scores={Temp=36},tag=RedWritofChallenge] run tellraw @s {"text":"You got $2340 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=36},tag=BlackWritofChallenge] run scoreboard players add @s Money 2660
execute as @s[scores={Temp=36},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $2660 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=36},tag=GoldWritofInvitation] run scoreboard players add @s Money 3000
execute as @s[scores={Temp=36},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $3000 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=37},tag=NoWrit] run scoreboard players add @s Money 5000
execute as @s[scores={Temp=37},tag=NoWrit] run tellraw @s {"text":"You got $5000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=37},tag=WritofChallenge] run scoreboard players add @s Money 5500
execute as @s[scores={Temp=37},tag=WritofChallenge] run tellraw @s {"text":"You got $5500 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=37},tag=BlueWritofChallenge] run scoreboard players add @s Money 4200
execute as @s[scores={Temp=37},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $4200 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=37},tag=RedWritofChallenge] run scoreboard players add @s Money 5850
execute as @s[scores={Temp=37},tag=RedWritofChallenge] run tellraw @s {"text":"You got $5850 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=37},tag=BlackWritofChallenge] run scoreboard players add @s Money 6650
execute as @s[scores={Temp=37},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $6650 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=37},tag=GoldWritofInvitation] run scoreboard players add @s Money 7500
execute as @s[scores={Temp=37},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $7500 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=38},tag=NoWrit] run scoreboard players add @s Money 5000
execute as @s[scores={Temp=38},tag=NoWrit] run tellraw @s {"text":"You got $5000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=38},tag=WritofChallenge] run scoreboard players add @s Money 5500
execute as @s[scores={Temp=38},tag=WritofChallenge] run tellraw @s {"text":"You got $5500 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=38},tag=BlueWritofChallenge] run scoreboard players add @s Money 4200
execute as @s[scores={Temp=38},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $4200 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=38},tag=RedWritofChallenge] run scoreboard players add @s Money 5850
execute as @s[scores={Temp=38},tag=RedWritofChallenge] run tellraw @s {"text":"You got $5850 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=38},tag=BlackWritofChallenge] run scoreboard players add @s Money 6650
execute as @s[scores={Temp=38},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $6650 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=38},tag=GoldWritofInvitation] run scoreboard players add @s Money 7500
execute as @s[scores={Temp=38},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $7500 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=39},tag=NoWrit] run scoreboard players add @s Money 5000
execute as @s[scores={Temp=39},tag=NoWrit] run tellraw @s {"text":"You got $5000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=39},tag=WritofChallenge] run scoreboard players add @s Money 5500
execute as @s[scores={Temp=39},tag=WritofChallenge] run tellraw @s {"text":"You got $5500 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=39},tag=BlueWritofChallenge] run scoreboard players add @s Money 4200
execute as @s[scores={Temp=39},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $4200 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=39},tag=RedWritofChallenge] run scoreboard players add @s Money 5850
execute as @s[scores={Temp=39},tag=RedWritofChallenge] run tellraw @s {"text":"You got $5850 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=39},tag=BlackWritofChallenge] run scoreboard players add @s Money 6650
execute as @s[scores={Temp=39},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $6650 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=39},tag=GoldWritofInvitation] run scoreboard players add @s Money 7500
execute as @s[scores={Temp=39},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $7500 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=40},tag=NoWrit] run scoreboard players add @s Money 5000
execute as @s[scores={Temp=40},tag=NoWrit] run tellraw @s {"text":"You got $5000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=40},tag=WritofChallenge] run scoreboard players add @s Money 5500
execute as @s[scores={Temp=40},tag=WritofChallenge] run tellraw @s {"text":"You got $5500 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=40},tag=BlueWritofChallenge] run scoreboard players add @s Money 4200
execute as @s[scores={Temp=40},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $4200 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=40},tag=RedWritofChallenge] run scoreboard players add @s Money 5850
execute as @s[scores={Temp=40},tag=RedWritofChallenge] run tellraw @s {"text":"You got $5850 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=40},tag=BlackWritofChallenge] run scoreboard players add @s Money 6650
execute as @s[scores={Temp=40},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $6650 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=40},tag=GoldWritofInvitation] run scoreboard players add @s Money 7500
execute as @s[scores={Temp=40},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $7500 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=41},tag=NoWrit] run scoreboard players add @s Money 3000
execute as @s[scores={Temp=41},tag=NoWrit] run tellraw @s {"text":"You got $3000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=41},tag=WritofChallenge] run scoreboard players add @s Money 3300
execute as @s[scores={Temp=41},tag=WritofChallenge] run tellraw @s {"text":"You got $3300 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=41},tag=BlueWritofChallenge] run scoreboard players add @s Money 2520
execute as @s[scores={Temp=41},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $2520 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=41},tag=RedWritofChallenge] run scoreboard players add @s Money 3510
execute as @s[scores={Temp=41},tag=RedWritofChallenge] run tellraw @s {"text":"You got $3510 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=41},tag=BlackWritofChallenge] run scoreboard players add @s Money 3990
execute as @s[scores={Temp=41},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $3990 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=41},tag=GoldWritofInvitation] run scoreboard players add @s Money 4500
execute as @s[scores={Temp=41},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $4500 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=42},tag=NoWrit] run scoreboard players add @s Money 5000
execute as @s[scores={Temp=42},tag=NoWrit] run tellraw @s {"text":"You got $5000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=42},tag=WritofChallenge] run scoreboard players add @s Money 5500
execute as @s[scores={Temp=42},tag=WritofChallenge] run tellraw @s {"text":"You got $5500 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=42},tag=BlueWritofChallenge] run scoreboard players add @s Money 4200
execute as @s[scores={Temp=42},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $4200 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=42},tag=RedWritofChallenge] run scoreboard players add @s Money 5850
execute as @s[scores={Temp=42},tag=RedWritofChallenge] run tellraw @s {"text":"You got $5850 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=42},tag=BlackWritofChallenge] run scoreboard players add @s Money 6650
execute as @s[scores={Temp=42},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $6650 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=42},tag=GoldWritofInvitation] run scoreboard players add @s Money 7500
execute as @s[scores={Temp=42},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $7500 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=43},tag=NoWrit] run scoreboard players add @s Money 4200
execute as @s[scores={Temp=43},tag=NoWrit] run tellraw @s {"text":"You got $4200 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=43},tag=WritofChallenge] run scoreboard players add @s Money 4620
execute as @s[scores={Temp=43},tag=WritofChallenge] run tellraw @s {"text":"You got $4620 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=43},tag=BlueWritofChallenge] run scoreboard players add @s Money 3528
execute as @s[scores={Temp=43},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $3528 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=43},tag=RedWritofChallenge] run scoreboard players add @s Money 4914
execute as @s[scores={Temp=43},tag=RedWritofChallenge] run tellraw @s {"text":"You got $4914 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=43},tag=BlackWritofChallenge] run scoreboard players add @s Money 5586
execute as @s[scores={Temp=43},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $5586 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=43},tag=GoldWritofInvitation] run scoreboard players add @s Money 6300
execute as @s[scores={Temp=43},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $6300 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=44},tag=NoWrit] run scoreboard players add @s Money 7000
execute as @s[scores={Temp=44},tag=NoWrit] run tellraw @s {"text":"You got $7000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=44},tag=WritofChallenge] run scoreboard players add @s Money 7700
execute as @s[scores={Temp=44},tag=WritofChallenge] run tellraw @s {"text":"You got $7700 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=44},tag=BlueWritofChallenge] run scoreboard players add @s Money 5880
execute as @s[scores={Temp=44},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $5880 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=44},tag=RedWritofChallenge] run scoreboard players add @s Money 8190
execute as @s[scores={Temp=44},tag=RedWritofChallenge] run tellraw @s {"text":"You got $8190 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=44},tag=BlackWritofChallenge] run scoreboard players add @s Money 9310
execute as @s[scores={Temp=44},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $9310 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=44},tag=GoldWritofInvitation] run scoreboard players add @s Money 10500
execute as @s[scores={Temp=44},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $10500 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=45},tag=NoWrit] run scoreboard players add @s Money 2240
execute as @s[scores={Temp=45},tag=NoWrit] run tellraw @s {"text":"You got $2240 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=45},tag=WritofChallenge] run scoreboard players add @s Money 2464
execute as @s[scores={Temp=45},tag=WritofChallenge] run tellraw @s {"text":"You got $2464 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=45},tag=BlueWritofChallenge] run scoreboard players add @s Money 1882
execute as @s[scores={Temp=45},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $1882 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=45},tag=RedWritofChallenge] run scoreboard players add @s Money 2621
execute as @s[scores={Temp=45},tag=RedWritofChallenge] run tellraw @s {"text":"You got $2621 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=45},tag=BlackWritofChallenge] run scoreboard players add @s Money 2979
execute as @s[scores={Temp=45},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $2979 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=45},tag=GoldWritofInvitation] run scoreboard players add @s Money 3360
execute as @s[scores={Temp=45},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $3360 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=46},tag=NoWrit] run scoreboard players add @s Money 2520
execute as @s[scores={Temp=46},tag=NoWrit] run tellraw @s {"text":"You got $2520 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=46},tag=WritofChallenge] run scoreboard players add @s Money 2772
execute as @s[scores={Temp=46},tag=WritofChallenge] run tellraw @s {"text":"You got $2772 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=46},tag=BlueWritofChallenge] run scoreboard players add @s Money 2117
execute as @s[scores={Temp=46},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $2117 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=46},tag=RedWritofChallenge] run scoreboard players add @s Money 2948
execute as @s[scores={Temp=46},tag=RedWritofChallenge] run tellraw @s {"text":"You got $2948 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=46},tag=BlackWritofChallenge] run scoreboard players add @s Money 3352
execute as @s[scores={Temp=46},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $3352 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=46},tag=GoldWritofInvitation] run scoreboard players add @s Money 3780
execute as @s[scores={Temp=46},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $3780 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=47},tag=NoWrit] run scoreboard players add @s Money 2520
execute as @s[scores={Temp=47},tag=NoWrit] run tellraw @s {"text":"You got $2520 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=47},tag=WritofChallenge] run scoreboard players add @s Money 2772
execute as @s[scores={Temp=47},tag=WritofChallenge] run tellraw @s {"text":"You got $2772 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=47},tag=BlueWritofChallenge] run scoreboard players add @s Money 2117
execute as @s[scores={Temp=47},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $2117 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=47},tag=RedWritofChallenge] run scoreboard players add @s Money 2948
execute as @s[scores={Temp=47},tag=RedWritofChallenge] run tellraw @s {"text":"You got $2948 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=47},tag=BlackWritofChallenge] run scoreboard players add @s Money 3352
execute as @s[scores={Temp=47},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $3352 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=47},tag=GoldWritofInvitation] run scoreboard players add @s Money 3780
execute as @s[scores={Temp=47},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $3780 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=48},tag=NoWrit] run scoreboard players add @s Money 2520
execute as @s[scores={Temp=48},tag=NoWrit] run tellraw @s {"text":"You got $2520 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=48},tag=WritofChallenge] run scoreboard players add @s Money 2772
execute as @s[scores={Temp=48},tag=WritofChallenge] run tellraw @s {"text":"You got $2772 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=48},tag=BlueWritofChallenge] run scoreboard players add @s Money 2117
execute as @s[scores={Temp=48},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $2117 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=48},tag=RedWritofChallenge] run scoreboard players add @s Money 2948
execute as @s[scores={Temp=48},tag=RedWritofChallenge] run tellraw @s {"text":"You got $2948 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=48},tag=BlackWritofChallenge] run scoreboard players add @s Money 3352
execute as @s[scores={Temp=48},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $3352 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=48},tag=GoldWritofInvitation] run scoreboard players add @s Money 3780
execute as @s[scores={Temp=48},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $3780 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=49},tag=NoWrit] run scoreboard players add @s Money 2520
execute as @s[scores={Temp=49},tag=NoWrit] run tellraw @s {"text":"You got $2520 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=49},tag=WritofChallenge] run scoreboard players add @s Money 2772
execute as @s[scores={Temp=49},tag=WritofChallenge] run tellraw @s {"text":"You got $2772 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=49},tag=BlueWritofChallenge] run scoreboard players add @s Money 2117
execute as @s[scores={Temp=49},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $2117 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=49},tag=RedWritofChallenge] run scoreboard players add @s Money 2948
execute as @s[scores={Temp=49},tag=RedWritofChallenge] run tellraw @s {"text":"You got $2948 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=49},tag=BlackWritofChallenge] run scoreboard players add @s Money 3352
execute as @s[scores={Temp=49},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $3352 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=49},tag=GoldWritofInvitation] run scoreboard players add @s Money 3780
execute as @s[scores={Temp=49},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $3780 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=50},tag=NoWrit] run scoreboard players add @s Money 2800
execute as @s[scores={Temp=50},tag=NoWrit] run tellraw @s {"text":"You got $2800 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=50},tag=WritofChallenge] run scoreboard players add @s Money 3080
execute as @s[scores={Temp=50},tag=WritofChallenge] run tellraw @s {"text":"You got $3080 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=50},tag=BlueWritofChallenge] run scoreboard players add @s Money 2352
execute as @s[scores={Temp=50},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $2352 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=50},tag=RedWritofChallenge] run scoreboard players add @s Money 3276
execute as @s[scores={Temp=50},tag=RedWritofChallenge] run tellraw @s {"text":"You got $3276 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=50},tag=BlackWritofChallenge] run scoreboard players add @s Money 3724
execute as @s[scores={Temp=50},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $3724 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=50},tag=GoldWritofInvitation] run scoreboard players add @s Money 4200
execute as @s[scores={Temp=50},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $4200 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=51},tag=NoWrit] run scoreboard players add @s Money 4200
execute as @s[scores={Temp=51},tag=NoWrit] run tellraw @s {"text":"You got $4200 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=51},tag=WritofChallenge] run scoreboard players add @s Money 4620
execute as @s[scores={Temp=51},tag=WritofChallenge] run tellraw @s {"text":"You got $4620 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=51},tag=BlueWritofChallenge] run scoreboard players add @s Money 3528
execute as @s[scores={Temp=51},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $3528 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=51},tag=RedWritofChallenge] run scoreboard players add @s Money 4914
execute as @s[scores={Temp=51},tag=RedWritofChallenge] run tellraw @s {"text":"You got $4914 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=51},tag=BlackWritofChallenge] run scoreboard players add @s Money 5586
execute as @s[scores={Temp=51},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $5586 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=51},tag=GoldWritofInvitation] run scoreboard players add @s Money 6300
execute as @s[scores={Temp=51},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $6300 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=52},tag=NoWrit] run scoreboard players add @s Money 10500
execute as @s[scores={Temp=52},tag=NoWrit] run tellraw @s {"text":"You got $10500 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=52},tag=WritofChallenge] run scoreboard players add @s Money 11550
execute as @s[scores={Temp=52},tag=WritofChallenge] run tellraw @s {"text":"You got $11550 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=52},tag=BlueWritofChallenge] run scoreboard players add @s Money 8820
execute as @s[scores={Temp=52},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $8820 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=52},tag=RedWritofChallenge] run scoreboard players add @s Money 12285
execute as @s[scores={Temp=52},tag=RedWritofChallenge] run tellraw @s {"text":"You got $12285 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=52},tag=BlackWritofChallenge] run scoreboard players add @s Money 13965
execute as @s[scores={Temp=52},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $13965 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=52},tag=GoldWritofInvitation] run scoreboard players add @s Money 15750
execute as @s[scores={Temp=52},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $15750 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=53},tag=NoWrit] run scoreboard players add @s Money 2880
execute as @s[scores={Temp=53},tag=NoWrit] run tellraw @s {"text":"You got $2880 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=53},tag=WritofChallenge] run scoreboard players add @s Money 3168
execute as @s[scores={Temp=53},tag=WritofChallenge] run tellraw @s {"text":"You got $3168 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=53},tag=BlueWritofChallenge] run scoreboard players add @s Money 2419
execute as @s[scores={Temp=53},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $2419 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=53},tag=RedWritofChallenge] run scoreboard players add @s Money 3370
execute as @s[scores={Temp=53},tag=RedWritofChallenge] run tellraw @s {"text":"You got $3370 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=53},tag=BlackWritofChallenge] run scoreboard players add @s Money 3831
execute as @s[scores={Temp=53},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $3831 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=53},tag=GoldWritofInvitation] run scoreboard players add @s Money 4320
execute as @s[scores={Temp=53},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $4320 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=54},tag=NoWrit] run scoreboard players add @s Money 3240
execute as @s[scores={Temp=54},tag=NoWrit] run tellraw @s {"text":"You got $3240 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=54},tag=WritofChallenge] run scoreboard players add @s Money 3564
execute as @s[scores={Temp=54},tag=WritofChallenge] run tellraw @s {"text":"You got $3564 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=54},tag=BlueWritofChallenge] run scoreboard players add @s Money 2722
execute as @s[scores={Temp=54},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $2722 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=54},tag=RedWritofChallenge] run scoreboard players add @s Money 3791
execute as @s[scores={Temp=54},tag=RedWritofChallenge] run tellraw @s {"text":"You got $3791 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=54},tag=BlackWritofChallenge] run scoreboard players add @s Money 4309
execute as @s[scores={Temp=54},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $4309 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=54},tag=GoldWritofInvitation] run scoreboard players add @s Money 4860
execute as @s[scores={Temp=54},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $4860 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=55},tag=NoWrit] run scoreboard players add @s Money 3240
execute as @s[scores={Temp=55},tag=NoWrit] run tellraw @s {"text":"You got $3240 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=55},tag=WritofChallenge] run scoreboard players add @s Money 3564
execute as @s[scores={Temp=55},tag=WritofChallenge] run tellraw @s {"text":"You got $3564 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=55},tag=BlueWritofChallenge] run scoreboard players add @s Money 2722
execute as @s[scores={Temp=55},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $2722 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=55},tag=RedWritofChallenge] run scoreboard players add @s Money 3791
execute as @s[scores={Temp=55},tag=RedWritofChallenge] run tellraw @s {"text":"You got $3791 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=55},tag=BlackWritofChallenge] run scoreboard players add @s Money 4309
execute as @s[scores={Temp=55},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $4309 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=55},tag=GoldWritofInvitation] run scoreboard players add @s Money 4860
execute as @s[scores={Temp=55},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $4860 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=56},tag=NoWrit] run scoreboard players add @s Money 9000
execute as @s[scores={Temp=56},tag=NoWrit] run tellraw @s {"text":"You got $9000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=56},tag=WritofChallenge] run scoreboard players add @s Money 9900
execute as @s[scores={Temp=56},tag=WritofChallenge] run tellraw @s {"text":"You got $9900 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=56},tag=BlueWritofChallenge] run scoreboard players add @s Money 7560
execute as @s[scores={Temp=56},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $7560 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=56},tag=RedWritofChallenge] run scoreboard players add @s Money 10530
execute as @s[scores={Temp=56},tag=RedWritofChallenge] run tellraw @s {"text":"You got $10530 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=56},tag=BlackWritofChallenge] run scoreboard players add @s Money 11970
execute as @s[scores={Temp=56},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $11970 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=56},tag=GoldWritofInvitation] run scoreboard players add @s Money 13500
execute as @s[scores={Temp=56},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $13500 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=57},tag=NoWrit] run scoreboard players add @s Money 5400
execute as @s[scores={Temp=57},tag=NoWrit] run tellraw @s {"text":"You got $5400 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=57},tag=WritofChallenge] run scoreboard players add @s Money 5940
execute as @s[scores={Temp=57},tag=WritofChallenge] run tellraw @s {"text":"You got $5940 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=57},tag=BlueWritofChallenge] run scoreboard players add @s Money 4536
execute as @s[scores={Temp=57},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $4536 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=57},tag=RedWritofChallenge] run scoreboard players add @s Money 6318
execute as @s[scores={Temp=57},tag=RedWritofChallenge] run tellraw @s {"text":"You got $6318 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=57},tag=BlackWritofChallenge] run scoreboard players add @s Money 7182
execute as @s[scores={Temp=57},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $7182 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=57},tag=GoldWritofInvitation] run scoreboard players add @s Money 8100
execute as @s[scores={Temp=57},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $8100 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=58},tag=NoWrit] run scoreboard players add @s Money 3240
execute as @s[scores={Temp=58},tag=NoWrit] run tellraw @s {"text":"You got $3240 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=58},tag=WritofChallenge] run scoreboard players add @s Money 3564
execute as @s[scores={Temp=58},tag=WritofChallenge] run tellraw @s {"text":"You got $3564 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=58},tag=BlueWritofChallenge] run scoreboard players add @s Money 2722
execute as @s[scores={Temp=58},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $2722 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=58},tag=RedWritofChallenge] run scoreboard players add @s Money 3791
execute as @s[scores={Temp=58},tag=RedWritofChallenge] run tellraw @s {"text":"You got $3791 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=58},tag=BlackWritofChallenge] run scoreboard players add @s Money 4309
execute as @s[scores={Temp=58},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $4309 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=58},tag=GoldWritofInvitation] run scoreboard players add @s Money 4860
execute as @s[scores={Temp=58},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $4860 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=59},tag=NoWrit] run scoreboard players add @s Money 3240
execute as @s[scores={Temp=59},tag=NoWrit] run tellraw @s {"text":"You got $3240 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=59},tag=WritofChallenge] run scoreboard players add @s Money 3564
execute as @s[scores={Temp=59},tag=WritofChallenge] run tellraw @s {"text":"You got $3564 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=59},tag=BlueWritofChallenge] run scoreboard players add @s Money 2722
execute as @s[scores={Temp=59},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $2722 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=59},tag=RedWritofChallenge] run scoreboard players add @s Money 3791
execute as @s[scores={Temp=59},tag=RedWritofChallenge] run tellraw @s {"text":"You got $3791 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=59},tag=BlackWritofChallenge] run scoreboard players add @s Money 4309
execute as @s[scores={Temp=59},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $4309 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=59},tag=GoldWritofInvitation] run scoreboard players add @s Money 4860
execute as @s[scores={Temp=59},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $4860 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=60},tag=NoWrit] run scoreboard players add @s Money 12000
execute as @s[scores={Temp=60},tag=NoWrit] run tellraw @s {"text":"You got $12000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=60},tag=WritofChallenge] run scoreboard players add @s Money 13200
execute as @s[scores={Temp=60},tag=WritofChallenge] run tellraw @s {"text":"You got $13200 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=60},tag=BlueWritofChallenge] run scoreboard players add @s Money 10080
execute as @s[scores={Temp=60},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $10080 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=60},tag=RedWritofChallenge] run scoreboard players add @s Money 14040
execute as @s[scores={Temp=60},tag=RedWritofChallenge] run tellraw @s {"text":"You got $14040 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=60},tag=BlackWritofChallenge] run scoreboard players add @s Money 15960
execute as @s[scores={Temp=60},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $15960 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=60},tag=GoldWritofInvitation] run scoreboard players add @s Money 18000
execute as @s[scores={Temp=60},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $18000 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=61},tag=NoWrit] run scoreboard players add @s Money 5400
execute as @s[scores={Temp=61},tag=NoWrit] run tellraw @s {"text":"You got $5400 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=61},tag=WritofChallenge] run scoreboard players add @s Money 5940
execute as @s[scores={Temp=61},tag=WritofChallenge] run tellraw @s {"text":"You got $5940 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=61},tag=BlueWritofChallenge] run scoreboard players add @s Money 4536
execute as @s[scores={Temp=61},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $4536 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=61},tag=RedWritofChallenge] run scoreboard players add @s Money 6318
execute as @s[scores={Temp=61},tag=RedWritofChallenge] run tellraw @s {"text":"You got $6318 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=61},tag=BlackWritofChallenge] run scoreboard players add @s Money 7182
execute as @s[scores={Temp=61},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $7182 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=61},tag=GoldWritofInvitation] run scoreboard players add @s Money 8100
execute as @s[scores={Temp=61},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $8100 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=62},tag=NoWrit] run scoreboard players add @s Money 5400
execute as @s[scores={Temp=62},tag=NoWrit] run tellraw @s {"text":"You got $5400 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=62},tag=WritofChallenge] run scoreboard players add @s Money 5940
execute as @s[scores={Temp=62},tag=WritofChallenge] run tellraw @s {"text":"You got $5940 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=62},tag=BlueWritofChallenge] run scoreboard players add @s Money 4536
execute as @s[scores={Temp=62},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $4536 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=62},tag=RedWritofChallenge] run scoreboard players add @s Money 6318
execute as @s[scores={Temp=62},tag=RedWritofChallenge] run tellraw @s {"text":"You got $6318 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=62},tag=BlackWritofChallenge] run scoreboard players add @s Money 7182
execute as @s[scores={Temp=62},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $7182 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=62},tag=GoldWritofInvitation] run scoreboard players add @s Money 8100
execute as @s[scores={Temp=62},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $8100 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=63},tag=NoWrit] run scoreboard players add @s Money 6400
execute as @s[scores={Temp=63},tag=NoWrit] run tellraw @s {"text":"You got $6400 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=63},tag=WritofChallenge] run scoreboard players add @s Money 7040
execute as @s[scores={Temp=63},tag=WritofChallenge] run tellraw @s {"text":"You got $7040 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=63},tag=BlueWritofChallenge] run scoreboard players add @s Money 5376
execute as @s[scores={Temp=63},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $5376 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=63},tag=RedWritofChallenge] run scoreboard players add @s Money 7488
execute as @s[scores={Temp=63},tag=RedWritofChallenge] run tellraw @s {"text":"You got $7488 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=63},tag=BlackWritofChallenge] run scoreboard players add @s Money 8512
execute as @s[scores={Temp=63},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $8512 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=63},tag=GoldWritofInvitation] run scoreboard players add @s Money 9600
execute as @s[scores={Temp=63},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $9600 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=64},tag=NoWrit] run scoreboard players add @s Money 6400
execute as @s[scores={Temp=64},tag=NoWrit] run tellraw @s {"text":"You got $6400 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=64},tag=WritofChallenge] run scoreboard players add @s Money 7040
execute as @s[scores={Temp=64},tag=WritofChallenge] run tellraw @s {"text":"You got $7040 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=64},tag=BlueWritofChallenge] run scoreboard players add @s Money 5376
execute as @s[scores={Temp=64},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $5376 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=64},tag=RedWritofChallenge] run scoreboard players add @s Money 7488
execute as @s[scores={Temp=64},tag=RedWritofChallenge] run tellraw @s {"text":"You got $7488 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=64},tag=BlackWritofChallenge] run scoreboard players add @s Money 8512
execute as @s[scores={Temp=64},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $8512 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=64},tag=GoldWritofInvitation] run scoreboard players add @s Money 9600
execute as @s[scores={Temp=64},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $9600 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=65},tag=NoWrit] run scoreboard players add @s Money 6400
execute as @s[scores={Temp=65},tag=NoWrit] run tellraw @s {"text":"You got $6400 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=65},tag=WritofChallenge] run scoreboard players add @s Money 7040
execute as @s[scores={Temp=65},tag=WritofChallenge] run tellraw @s {"text":"You got $7040 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=65},tag=BlueWritofChallenge] run scoreboard players add @s Money 5376
execute as @s[scores={Temp=65},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $5376 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=65},tag=RedWritofChallenge] run scoreboard players add @s Money 7488
execute as @s[scores={Temp=65},tag=RedWritofChallenge] run tellraw @s {"text":"You got $7488 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=65},tag=BlackWritofChallenge] run scoreboard players add @s Money 8512
execute as @s[scores={Temp=65},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $8512 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=65},tag=GoldWritofInvitation] run scoreboard players add @s Money 9600
execute as @s[scores={Temp=65},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $9600 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=66},tag=NoWrit] run scoreboard players add @s Money 6400
execute as @s[scores={Temp=66},tag=NoWrit] run tellraw @s {"text":"You got $6400 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=66},tag=WritofChallenge] run scoreboard players add @s Money 7040
execute as @s[scores={Temp=66},tag=WritofChallenge] run tellraw @s {"text":"You got $7040 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=66},tag=BlueWritofChallenge] run scoreboard players add @s Money 5376
execute as @s[scores={Temp=66},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $5376 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=66},tag=RedWritofChallenge] run scoreboard players add @s Money 7488
execute as @s[scores={Temp=66},tag=RedWritofChallenge] run tellraw @s {"text":"You got $7488 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=66},tag=BlackWritofChallenge] run scoreboard players add @s Money 8512
execute as @s[scores={Temp=66},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $8512 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=66},tag=GoldWritofInvitation] run scoreboard players add @s Money 9600
execute as @s[scores={Temp=66},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $9600 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=67},tag=NoWrit] run scoreboard players add @s Money 6400
execute as @s[scores={Temp=67},tag=NoWrit] run tellraw @s {"text":"You got $6400 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=67},tag=WritofChallenge] run scoreboard players add @s Money 7040
execute as @s[scores={Temp=67},tag=WritofChallenge] run tellraw @s {"text":"You got $7040 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=67},tag=BlueWritofChallenge] run scoreboard players add @s Money 5376
execute as @s[scores={Temp=67},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $5376 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=67},tag=RedWritofChallenge] run scoreboard players add @s Money 7488
execute as @s[scores={Temp=67},tag=RedWritofChallenge] run tellraw @s {"text":"You got $7488 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=67},tag=BlackWritofChallenge] run scoreboard players add @s Money 8512
execute as @s[scores={Temp=67},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $8512 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=67},tag=GoldWritofInvitation] run scoreboard players add @s Money 9600
execute as @s[scores={Temp=67},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $9600 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=68},tag=NoWrit] run scoreboard players add @s Money 6400
execute as @s[scores={Temp=68},tag=NoWrit] run tellraw @s {"text":"You got $6400 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=68},tag=WritofChallenge] run scoreboard players add @s Money 7040
execute as @s[scores={Temp=68},tag=WritofChallenge] run tellraw @s {"text":"You got $7040 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=68},tag=BlueWritofChallenge] run scoreboard players add @s Money 5376
execute as @s[scores={Temp=68},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $5376 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=68},tag=RedWritofChallenge] run scoreboard players add @s Money 7488
execute as @s[scores={Temp=68},tag=RedWritofChallenge] run tellraw @s {"text":"You got $7488 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=68},tag=BlackWritofChallenge] run scoreboard players add @s Money 8512
execute as @s[scores={Temp=68},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $8512 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=68},tag=GoldWritofInvitation] run scoreboard players add @s Money 9600
execute as @s[scores={Temp=68},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $9600 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=69},tag=NoWrit] run scoreboard players add @s Money 6400
execute as @s[scores={Temp=69},tag=NoWrit] run tellraw @s {"text":"You got $6400 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=69},tag=WritofChallenge] run scoreboard players add @s Money 7040
execute as @s[scores={Temp=69},tag=WritofChallenge] run tellraw @s {"text":"You got $7040 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=69},tag=BlueWritofChallenge] run scoreboard players add @s Money 5376
execute as @s[scores={Temp=69},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $5376 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=69},tag=RedWritofChallenge] run scoreboard players add @s Money 7488
execute as @s[scores={Temp=69},tag=RedWritofChallenge] run tellraw @s {"text":"You got $7488 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=69},tag=BlackWritofChallenge] run scoreboard players add @s Money 8512
execute as @s[scores={Temp=69},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $8512 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=69},tag=GoldWritofInvitation] run scoreboard players add @s Money 9600
execute as @s[scores={Temp=69},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $9600 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=70},tag=NoWrit] run scoreboard players add @s Money 6400
execute as @s[scores={Temp=70},tag=NoWrit] run tellraw @s {"text":"You got $6400 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=70},tag=WritofChallenge] run scoreboard players add @s Money 7040
execute as @s[scores={Temp=70},tag=WritofChallenge] run tellraw @s {"text":"You got $7040 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=70},tag=BlueWritofChallenge] run scoreboard players add @s Money 5376
execute as @s[scores={Temp=70},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $5376 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=70},tag=RedWritofChallenge] run scoreboard players add @s Money 7488
execute as @s[scores={Temp=70},tag=RedWritofChallenge] run tellraw @s {"text":"You got $7488 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=70},tag=BlackWritofChallenge] run scoreboard players add @s Money 8512
execute as @s[scores={Temp=70},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $8512 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=70},tag=GoldWritofInvitation] run scoreboard players add @s Money 9600
execute as @s[scores={Temp=70},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $9600 for winning!","italic":true,"color":"gray"}


execute as @s[scores={Temp=71},tag=NoWrit] run scoreboard players add @s Money 8000
execute as @s[scores={Temp=71},tag=NoWrit] run tellraw @s {"text":"You got $8000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=71},tag=WritofChallenge] run scoreboard players add @s Money 8800
execute as @s[scores={Temp=71},tag=WritofChallenge] run tellraw @s {"text":"You got $8800 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=71},tag=BlueWritofChallenge] run scoreboard players add @s Money 6720
execute as @s[scores={Temp=71},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $6720 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=71},tag=RedWritofChallenge] run scoreboard players add @s Money 9360
execute as @s[scores={Temp=71},tag=RedWritofChallenge] run tellraw @s {"text":"You got $9360 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=71},tag=BlackWritofChallenge] run scoreboard players add @s Money 10640
execute as @s[scores={Temp=71},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $10640 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=71},tag=GoldWritofInvitation] run scoreboard players add @s Money 12000
execute as @s[scores={Temp=71},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $12000 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=72},tag=NoWrit] run scoreboard players add @s Money 8000
execute as @s[scores={Temp=72},tag=NoWrit] run tellraw @s {"text":"You got $8000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=72},tag=WritofChallenge] run scoreboard players add @s Money 8800
execute as @s[scores={Temp=72},tag=WritofChallenge] run tellraw @s {"text":"You got $8800 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=72},tag=BlueWritofChallenge] run scoreboard players add @s Money 6720
execute as @s[scores={Temp=72},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $6720 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=72},tag=RedWritofChallenge] run scoreboard players add @s Money 9360
execute as @s[scores={Temp=72},tag=RedWritofChallenge] run tellraw @s {"text":"You got $9360 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=72},tag=BlackWritofChallenge] run scoreboard players add @s Money 10640
execute as @s[scores={Temp=72},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $10640 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=72},tag=GoldWritofInvitation] run scoreboard players add @s Money 12000
execute as @s[scores={Temp=72},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $12000 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=73},tag=NoWrit] run scoreboard players add @s Money 8000
execute as @s[scores={Temp=73},tag=NoWrit] run tellraw @s {"text":"You got $8000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=73},tag=WritofChallenge] run scoreboard players add @s Money 8800
execute as @s[scores={Temp=73},tag=WritofChallenge] run tellraw @s {"text":"You got $8800 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=73},tag=BlueWritofChallenge] run scoreboard players add @s Money 6720
execute as @s[scores={Temp=73},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $6720 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=73},tag=RedWritofChallenge] run scoreboard players add @s Money 9360
execute as @s[scores={Temp=73},tag=RedWritofChallenge] run tellraw @s {"text":"You got $9360 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=73},tag=BlackWritofChallenge] run scoreboard players add @s Money 10640
execute as @s[scores={Temp=73},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $10640 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=73},tag=GoldWritofInvitation] run scoreboard players add @s Money 12000
execute as @s[scores={Temp=73},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $12000 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=74},tag=NoWrit] run scoreboard players add @s Money 8000
execute as @s[scores={Temp=74},tag=NoWrit] run tellraw @s {"text":"You got $8000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=74},tag=WritofChallenge] run scoreboard players add @s Money 8800
execute as @s[scores={Temp=74},tag=WritofChallenge] run tellraw @s {"text":"You got $8800 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=74},tag=BlueWritofChallenge] run scoreboard players add @s Money 6720
execute as @s[scores={Temp=74},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $6720 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=74},tag=RedWritofChallenge] run scoreboard players add @s Money 9360
execute as @s[scores={Temp=74},tag=RedWritofChallenge] run tellraw @s {"text":"You got $9360 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=74},tag=BlackWritofChallenge] run scoreboard players add @s Money 10640
execute as @s[scores={Temp=74},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $10640 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=74},tag=GoldWritofInvitation] run scoreboard players add @s Money 12000
execute as @s[scores={Temp=74},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $12000 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=75},tag=NoWrit] run scoreboard players add @s Money 8000
execute as @s[scores={Temp=75},tag=NoWrit] run tellraw @s {"text":"You got $8000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=75},tag=WritofChallenge] run scoreboard players add @s Money 8800
execute as @s[scores={Temp=75},tag=WritofChallenge] run tellraw @s {"text":"You got $8800 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=75},tag=BlueWritofChallenge] run scoreboard players add @s Money 6720
execute as @s[scores={Temp=75},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $6720 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=75},tag=RedWritofChallenge] run scoreboard players add @s Money 9360
execute as @s[scores={Temp=75},tag=RedWritofChallenge] run tellraw @s {"text":"You got $9360 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=75},tag=BlackWritofChallenge] run scoreboard players add @s Money 10640
execute as @s[scores={Temp=75},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $10640 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=75},tag=GoldWritofInvitation] run scoreboard players add @s Money 12000
execute as @s[scores={Temp=75},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $12000 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=76},tag=NoWrit] run scoreboard players add @s Money 8000
execute as @s[scores={Temp=76},tag=NoWrit] run tellraw @s {"text":"You got $8000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=76},tag=WritofChallenge] run scoreboard players add @s Money 8800
execute as @s[scores={Temp=76},tag=WritofChallenge] run tellraw @s {"text":"You got $8800 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=76},tag=BlueWritofChallenge] run scoreboard players add @s Money 6720
execute as @s[scores={Temp=76},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $6720 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=76},tag=RedWritofChallenge] run scoreboard players add @s Money 9360
execute as @s[scores={Temp=76},tag=RedWritofChallenge] run tellraw @s {"text":"You got $9360 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=76},tag=BlackWritofChallenge] run scoreboard players add @s Money 10640
execute as @s[scores={Temp=76},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $10640 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=76},tag=GoldWritofInvitation] run scoreboard players add @s Money 12000
execute as @s[scores={Temp=76},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $12000 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=77},tag=NoWrit] run scoreboard players add @s Money 8000
execute as @s[scores={Temp=77},tag=NoWrit] run tellraw @s {"text":"You got $8000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=77},tag=WritofChallenge] run scoreboard players add @s Money 8800
execute as @s[scores={Temp=77},tag=WritofChallenge] run tellraw @s {"text":"You got $8800 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=77},tag=BlueWritofChallenge] run scoreboard players add @s Money 6720
execute as @s[scores={Temp=77},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $6720 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=77},tag=RedWritofChallenge] run scoreboard players add @s Money 9360
execute as @s[scores={Temp=77},tag=RedWritofChallenge] run tellraw @s {"text":"You got $9360 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=77},tag=BlackWritofChallenge] run scoreboard players add @s Money 10640
execute as @s[scores={Temp=77},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $10640 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=77},tag=GoldWritofInvitation] run scoreboard players add @s Money 12000
execute as @s[scores={Temp=77},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $12000 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=78},tag=NoWrit] run scoreboard players add @s Money 8000
execute as @s[scores={Temp=78},tag=NoWrit] run tellraw @s {"text":"You got $8000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=78},tag=WritofChallenge] run scoreboard players add @s Money 8800
execute as @s[scores={Temp=78},tag=WritofChallenge] run tellraw @s {"text":"You got $8800 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=78},tag=BlueWritofChallenge] run scoreboard players add @s Money 6720
execute as @s[scores={Temp=78},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $6720 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=78},tag=RedWritofChallenge] run scoreboard players add @s Money 9360
execute as @s[scores={Temp=78},tag=RedWritofChallenge] run tellraw @s {"text":"You got $9360 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=78},tag=BlackWritofChallenge] run scoreboard players add @s Money 10640
execute as @s[scores={Temp=78},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $10640 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=78},tag=GoldWritofInvitation] run scoreboard players add @s Money 12000
execute as @s[scores={Temp=78},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $12000 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=79},tag=NoWrit] run scoreboard players add @s Money 11000
execute as @s[scores={Temp=79},tag=NoWrit] run tellraw @s {"text":"You got $11000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=79},tag=WritofChallenge] run scoreboard players add @s Money 12100
execute as @s[scores={Temp=79},tag=WritofChallenge] run tellraw @s {"text":"You got $12100 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=79},tag=BlueWritofChallenge] run scoreboard players add @s Money 9240
execute as @s[scores={Temp=79},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $9240 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=79},tag=RedWritofChallenge] run scoreboard players add @s Money 12870
execute as @s[scores={Temp=79},tag=RedWritofChallenge] run tellraw @s {"text":"You got $12870 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=79},tag=BlackWritofChallenge] run scoreboard players add @s Money 14630
execute as @s[scores={Temp=79},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $14630 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=79},tag=GoldWritofInvitation] run scoreboard players add @s Money 16500
execute as @s[scores={Temp=79},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $16500 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=80},tag=NoWrit] run scoreboard players add @s Money 11000
execute as @s[scores={Temp=80},tag=NoWrit] run tellraw @s {"text":"You got $11000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=80},tag=WritofChallenge] run scoreboard players add @s Money 12100
execute as @s[scores={Temp=80},tag=WritofChallenge] run tellraw @s {"text":"You got $12100 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=80},tag=BlueWritofChallenge] run scoreboard players add @s Money 9240
execute as @s[scores={Temp=80},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $9240 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=80},tag=RedWritofChallenge] run scoreboard players add @s Money 12870
execute as @s[scores={Temp=80},tag=RedWritofChallenge] run tellraw @s {"text":"You got $12870 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=80},tag=BlackWritofChallenge] run scoreboard players add @s Money 14630
execute as @s[scores={Temp=80},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $14630 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=80},tag=GoldWritofInvitation] run scoreboard players add @s Money 16500
execute as @s[scores={Temp=80},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $16500 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=81},tag=NoWrit] run scoreboard players add @s Money 11000
execute as @s[scores={Temp=81},tag=NoWrit] run tellraw @s {"text":"You got $11000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=81},tag=WritofChallenge] run scoreboard players add @s Money 12100
execute as @s[scores={Temp=81},tag=WritofChallenge] run tellraw @s {"text":"You got $12100 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=81},tag=BlueWritofChallenge] run scoreboard players add @s Money 9240
execute as @s[scores={Temp=81},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $9240 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=81},tag=RedWritofChallenge] run scoreboard players add @s Money 12870
execute as @s[scores={Temp=81},tag=RedWritofChallenge] run tellraw @s {"text":"You got $12870 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=81},tag=BlackWritofChallenge] run scoreboard players add @s Money 14630
execute as @s[scores={Temp=81},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $14630 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=81},tag=GoldWritofInvitation] run scoreboard players add @s Money 16500
execute as @s[scores={Temp=81},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $16500 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=82},tag=NoWrit] run scoreboard players add @s Money 11000
execute as @s[scores={Temp=82},tag=NoWrit] run tellraw @s {"text":"You got $11000 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=82},tag=WritofChallenge] run scoreboard players add @s Money 12100
execute as @s[scores={Temp=82},tag=WritofChallenge] run tellraw @s {"text":"You got $12100 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=82},tag=BlueWritofChallenge] run scoreboard players add @s Money 9240
execute as @s[scores={Temp=82},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $9240 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=82},tag=RedWritofChallenge] run scoreboard players add @s Money 12870
execute as @s[scores={Temp=82},tag=RedWritofChallenge] run tellraw @s {"text":"You got $12870 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=82},tag=BlackWritofChallenge] run scoreboard players add @s Money 14630
execute as @s[scores={Temp=82},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $14630 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=82},tag=GoldWritofInvitation] run scoreboard players add @s Money 16500
execute as @s[scores={Temp=82},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $16500 for winning!","italic":true,"color":"gray"}

execute as @s[scores={Temp=83},tag=NoWrit] run scoreboard players add @s Money 14400
execute as @s[scores={Temp=83},tag=NoWrit] run tellraw @s {"text":"You got $14400 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=83},tag=WritofChallenge] run scoreboard players add @s Money 15840
execute as @s[scores={Temp=83},tag=WritofChallenge] run tellraw @s {"text":"You got $15840 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=83},tag=BlueWritofChallenge] run scoreboard players add @s Money 12096
execute as @s[scores={Temp=83},tag=BlueWritofChallenge] run tellraw @s {"text":"You got $12096 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=83},tag=RedWritofChallenge] run scoreboard players add @s Money 16848
execute as @s[scores={Temp=83},tag=RedWritofChallenge] run tellraw @s {"text":"You got $16848 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=83},tag=BlackWritofChallenge] run scoreboard players add @s Money 19152
execute as @s[scores={Temp=83},tag=BlackWritofChallenge] run tellraw @s {"text":"You got $19152 for winning!","italic":true,"color":"gray"}
execute as @s[scores={Temp=83},tag=GoldWritofInvitation] run scoreboard players add @s Money 21600
execute as @s[scores={Temp=83},tag=GoldWritofInvitation] run tellraw @s {"text":"You got $21600 for winning!","italic":true,"color":"gray"}







#------------

#Announces if a player has ranked up
tellraw @s[scores={Gender=1,ChateauRank=6..30},tag=!Viscount] {"text":"You have ranked up to Viscount! Higher-nobility trainers will now begin appearing!","italic":true,"color":"gray"}
tellraw @s[scores={Gender=2,ChateauRank=6..30},tag=!Viscount] {"text":"You have ranked up to Viscountess! Higher-nobility trainers will now begin appearing!","italic":true,"color":"gray"}
playsound minecraft:entity.player.levelup ambient @s[scores={ChateauRank=6..30},tag=!Viscount] ~ ~ ~ 1000 1 1
tag @s[scores={ChateauRank=6..30},tag=!Viscount] add Viscount

tellraw @s[scores={Gender=1,ChateauRank=31..98},tag=!Earl] {"text":"You have ranked up to Earl!","italic":true,"color":"gray"}
tellraw @s[scores={Gender=2,ChateauRank=31..98},tag=!Earl] {"text":"You have ranked up to Countess!","italic":true,"color":"gray"}
playsound minecraft:entity.player.levelup ambient @s[scores={ChateauRank=31..98},tag=!Earl] ~ ~ ~ 1000 1 1
tag @s[scores={ChateauRank=31..98},tag=!Earl] add Earl

tellraw @s[scores={ChateauRank=99..295},tag=!Marquises] {"text":"You have ranked up to Marquises!","italic":true,"color":"gray"}
tellraw @s[scores={ChateauRank=99..295},tag=!Marquises] {"text":"You have ranked up to Marchioness!","italic":true,"color":"gray"}
playsound minecraft:entity.player.levelup ambient @s[scores={ChateauRank=99..295},tag=!Marquises] ~ ~ ~ 1000 1 1
tag @s[scores={ChateauRank=99..295},tag=!Marquises] add Marquises

tellraw @s[scores={Gender=1,ChateauRank=296..},tag=!Duke] {"text":"You have ranked up to Duke!","italic":true,"color":"gray"}
tellraw @s[scores={Gender=2,ChateauRank=296..},tag=!Duke] {"text":"You have ranked up to Duchess!","italic":true,"color":"gray"}
playsound minecraft:entity.player.levelup ambient @s[scores={ChateauRank=296..},tag=!Duke] ~ ~ ~ 1000 1 1
tag @s[scores={ChateauRank=296..},tag=!Duke] add Duke

execute as @s[scores={Gender=1,ChateauRank=296..},tag=Duke] run tellraw @s[tag=GrandDukeGet] {"text":"You have ranked up to Grand Duke!"}
execute as @s[scores={Gender=2,ChateauRank=296..},tag=Duke] run tellraw @s[tag=GrandDukeGet] {"text":"You have ranked up to Grand Duchess!"}
execute as @s[scores={Gender=1..2,ChateauRank=296..},tag=Duke] run playsound minecraft:entity.player.levelup ambient @s[tag=GrandDukeGet] ~ ~ ~ 1000 1 1
execute as @s[scores={Gender=1..2,ChateauRank=296..},tag=Duke] run tag @s[tag=GrandDukeGet] add GrandDuke
execute as @s[scores={Gender=1..2,ChateauRank=296..},tag=GrandDuke] run tag @s remove GrandDukeGet

#Grants advancement when GrandDuke
advancement grant @s[tag=GrandDuke] only kalos:adventurer2





tag @s remove NoWrit
tag @s remove WritofChallenge
tag @s remove BlueWritofChallenge
tag @s remove RedWritofChallenge
tag @s remove BlackWritofChallenge
tag @s remove GoldWritofInvitation


scoreboard players set @s Temp 0