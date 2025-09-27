#Gives money based on the Temp score the player recieves from the end of the trainer battle.
#Writs will adjust the winnings based on found tags


#Adds to the player's Chateau Ranks Point
execute as @s[scores={Temp=1..14}] run scoreboard players add @s ChateauRank 1
execute as @s[scores={Temp=15..28}] run scoreboard players add @s ChateauRank 2
execute as @s[scores={Temp=29..42}] run scoreboard players add @s ChateauRank 3
execute as @s[scores={Temp=43..62}] run scoreboard players add @s ChateauRank 4
execute as @s[scores={Temp=63..}] run scoreboard players add @s ChateauRank 5



#Money
execute as @s[scores={Temp=1}] run scoreboard players add @s Money 1800
execute as @s[scores={Temp=1}] run tellraw @s {"text":"You got $1800 for winning!","italic":true,"color":"gray"}










































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






scoreboard players set @s Temp 0