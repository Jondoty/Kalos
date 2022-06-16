#Process brainstorming

#Every 6 minutes, function is ran. Frequency of the function determined by a Writ, if implemented.
#   Writ of Invitation - Every 3 minutes
#   Silver Writ of Invitation - Every 1 minute

#Skips over a trainer return tp-ing if a Pixelmon is found within 5 blocks of them.
#Return tps all NPCs first to clear the floors
#Skip tags armor stands named trainer if an NPC trainer is found within 1 radius of them (would be on top of)
#Counts the number of trainers currently on the floor. If counter is at max value for player's title, add a skip tag to skip the tp-in
#Tps in a random NPCs to !Skip trainer armor stands
#Announce that X trainer has entered the Chateau
#Trainer battles a trainer
#rng idea: Occationally give player a rare sellable item when they win, maybe a 25% chance? Item depending on rank



#Idea for Writs:
#Writs last for one week of in-game days (about 2.3 hours)
#Create a team with a sidebar display showing active Writs.
#When Writ of Invitation is active, increase frequency at which trainers appear
#    Use a 1-minute hopper clock to count down until the function can be ran again using an 'if @e[ChateauCD=0]'
#    Different active writs can lower what amount ChateauCD gets set to
#When Gold Writ of Invitation is active, entitydata the trainers to a higher-value number of money only
#When Writ of Challenges are active, entitydata the trainers to a different-level Pokemon, depending on writ, and increase money. Currently unsure at what % the increase is per level


#Diantha example of money:
#14400 - No Writ
#15600 - Writ (+5 levels, x1.08333333)
#12000 - Blue Writ (-10 levels, x0.833333333)
#16800 - Red Writ (+10 levels, x1.16666667)
#19200 - Black Writ (20+ levels, x1.33333333)
#21600 - Gold Writ (Estimate, x1.5)

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Chateau upper floors
#x=-1589,y=60,z=-140,dx=104,dy=19,dz=97

#Baron/Baroness trainers only
#x=-1561,y=52,z=-85,dx=30,dy=3,type=pixelmon:npc_trainer

#Viscount/Viscountess trainers only
#x=-1561,y=52,z=-79,dx=30,dy=3,type=pixelmon:npc_trainer

#Countress/Earl trainers only
#x=-1561,y=52,z=-73,dx=30,dy=3,type=pixelmon:npc_trainer

#Marquises/Marchioness trainers only
#x=-1561,y=52,z=-67,dx=30,dy=3,type=pixelmon:npc_trainer

#Marquises/Marchioness Gym Leaders
#x=-1561,y=52,z=-61,dx=30,dy=3,type=pixelmon:npc_trainer

#Duke/Duchess trainers only
#x=-1561,y=52,z=-55,dx=30,dy=3,dz=7,type=pixelmon:npc_trainer

#Duke/Duchess gym leaders/Diantha, when champion.
#x=-1561,y=52,z=-49,dx=30,dy=3,type=pixelmon:npc_trainer

#Armor stand to manage the Battle Chateau
#x=-687,y=100,z=1384,dy=3,type=armor_stand


#Add to trainers to add ChateauRank points
#/tedit add LOSS /scoreboard players add @pl ChateauRank 1
#/tedit add LOSS tag @pl add ViolaChateau

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#World command block runs
#scoreboard players remove @e[x=-687,y=100,z=1384,dy=3,type=armor_stand,score_ChateauCD_min=1] ChateauCD 1
#execute @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] ~ ~ ~ function custom:battlechateau if @e[x=-687,y=100,z=1384,dy=3,type=armor_stand,score_ChateauCD=0]


#------------

#Adds Skips for when necessary

#Adds skips to trainers next to Pokemon for no mid-battle tps
execute as @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,type=pixelmon:pixelmon] run tag @e[distance=..5,type=pixelmon:npc_trainer] add Skip

#Adds skips to armor stands with trainers standing on them
execute as @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,type=pixelmon:npc_trainer] run tag @e[distance=..2,name=trainer,type=armor_stand] add Skip

#------------

#Return-tps all trainers who aren't skipped via Pokemon
execute as @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,type=pixelmon:npc_trainer,tag=!Skip] run function kalos:triggers/chateaureturntp

#------------
#Counts current trainers to not go over
#execute @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,type=pixelmon:npc_trainer] ~ ~ ~ scoreboard players add @e[x=-687,y=100,z=1384,dy=3,type=armor_stand] TrainerCount 1

#------------



#Runs writ-specific functions for level or money trainer adjustments

#Writ of Challenge function
execute as @e[x=-679,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] run function kalos:data/writofchallenge

#Blue Writ of Challenge, -10 levels and x0.833333333 money
execute as @e[x=-677,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] run function kalos:data/bluewrit

#Red Writ of Challenge, +10 levels, x1.16666667 Money
execute as @e[x=-675,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] run function kalos:data/redwrit

#Black Writ, +20 levels, x1.33333333 money
execute as @e[x=-673,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] run function kalos:data/blackwrit

#Gold Writ, 1.5x Money
execute as @e[x=-681,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] run function kalos:data/goldwrit

#If no writ tags are found, runs to set to default values
execute at @e[x=-679,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run execute as @e[x=-677,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run execute as @e[x=-675,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run execute as @e[x=-673,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run execute as @e[x=-681,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run function kalos:data/nowrit


#------------

#Announces if a player has ranked up
tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={Gender=1,ChateauRank=6..30},tag=!Viscount] {"text":"You have ranked up to Viscount! Higher-nobility trainers will now begin appearing!","italic":true,"color":"gray"}
tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={Gender=2,ChateauRank=6..30},tag=!Viscount] {"text":"You have ranked up to Viscountess! Higher-nobility trainers will now begin appearing!","italic":true,"color":"gray"}
playsound minecraft:entity.player.levelup ambient @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={ChateauRank=6..30},tag=!Viscount] ~ ~ ~ 1000 1 1
tag @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={ChateauRank=6..30},tag=!Viscount] add Viscount

tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={Gender=1,ChateauRank=31..98},tag=!Earl] {"text":"You have ranked up to Earl!","italic":true,"color":"gray"}
tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={Gender=2,ChateauRank=31..98},tag=!Earl] {"text":"You have ranked up to Countess!","italic":true,"color":"gray"}
playsound minecraft:entity.player.levelup ambient @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={ChateauRank=31..98},tag=!Earl] ~ ~ ~ 1000 1 1
tag @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={ChateauRank=31..98},tag=!Earl] add Earl

tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={ChateauRank=99..295},tag=!Marquises] {"text":"You have ranked up to Marquises!","italic":true,"color":"gray"}
tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={ChateauRank=99..295},tag=!Marquises] {"text":"You have ranked up to Marchioness!","italic":true,"color":"gray"}
playsound minecraft:entity.player.levelup ambient @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={ChateauRank=99..295},tag=!Marquises] ~ ~ ~ 1000 1 1
tag @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={ChateauRank=99..295},tag=!Marquises] add Marquises

tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={Gender=1,ChateauRank=296..},tag=!Duke] {"text":"You have ranked up to Duke!","italic":true,"color":"gray"}
tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={Gender=2,ChateauRank=296..},tag=!Duke] {"text":"You have ranked up to Duchess!","italic":true,"color":"gray"}
playsound minecraft:entity.player.levelup ambient @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={ChateauRank=296..},tag=!Duke] ~ ~ ~ 1000 1 1
tag @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={ChateauRank=296..},tag=!Duke] add Duke

execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={Gender=1..1,ChateauRank=296..},tag=Duke] run tellraw @s[tag=GrandDukeGet] {"text":"You have ranked up to Grand Duke!"}
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={Gender=2..2,ChateauRank=296..},tag=Duke] run tellraw @s[tag=GrandDukeGet] {"text":"You have ranked up to Grand Duchess!"}
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={Gender=1..2,ChateauRank=296..},tag=Duke] run playsound minecraft:entity.player.levelup ambient @s[tag=GrandDukeGet] ~ ~ ~ 1000 1 1
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={Gender=1..2,ChateauRank=296..},tag=Duke] run tag @s[tag=GrandDukeGet] add GrandDuke
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={Gender=1..2,ChateauRank=296..},tag=Duke] run
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={Gender=1..2,ChateauRank=296..},tag=GrandDuke] run tag @s remove GrandDukeGet

#Grants advancement when GrandDuke
advancement grant @a[tag=GrandDuke] only kalos:adventurer2

#-----------
#Removes cooldowns for players to not repeat trainers quickly
scoreboard players remove @e[x=-1589,y=53,z=-140,dx=104,dy=19,dz=97,scores={ChateauCD=1..}] ChateauCD 1

#------------

#tps in new trainers depending on player's rank

#Baron/Baroness
execute as @a[limit=1,x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={ChateauRank=1..5}] run tp @e[limit=1,sort=random,x=-1561,y=52,z=-85,dx=30,dy=3,type=pixelmon:npc_trainer,scores={ChateauCD=0}] @e[limit=1,sort=random,x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,type=armor_stand,tag=!Skip]

#Viscount/Viscountess
execute as @a[limit=1,x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={ChateauRank=6..30}] run tp @e[limit=1,sort=random,x=-1561,y=52,z=-85,dx=30,dy=3,dz=6,type=pixelmon:npc_trainer,scores={ChateauCD=0}] @e[limit=1,sort=random,x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,type=armor_stand,tag=!Skip]



#Marquises/Marchioness
execute as @a[limit=1,x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={ChateauRank=31..98}] run tp @e[limit=1,sort=random,x=-1561,y=52,z=-85,dx=30,dy=3,dz=12,type=pixelmon:npc_trainer,scores={ChateauCD=0}] @e[limit=1,sort=random,x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,type=armor_stand,tag=!Skip]

#Duke/Duchess
execute as @a[limit=1,x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={ChateauRank=99..295}] run tp @e[limit=1,sort=random,x=-1561,y=52,z=-85,dx=30,dy=3,dz=18,type=pixelmon:npc_trainer,scores={ChateauCD=0}] @e[limit=1,sort=random,x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,type=armor_stand,tag=!Skip]

#Duke/Duchess gym leaders without Diantha
execute as @a[limit=1,x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={ChateauRank=296..},tag=!GrandDuke] run tp @e[limit=1,sort=random,x=-1560,y=52,z=-49,dx=30,dy=3,type=pixelmon:npc_trainer,name=!Diantha,scores={ChateauCD=0}] @e[limit=1,sort=random,x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,type=armor_stand,tag=!Skip]

#With Diantha, after player has beaten other royal members
execute as @a[limit=1,x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={ChateauRank=296..,PokemonLeague=1..},tag=!GrandDuke] run execute as @s[tag=GDTrainer1] run execute as @s[tag=GDTrainer2] run execute as @s[tag=GDTrainer3] run execute as @s[tag=GDTrainer4] run execute as @s[tag=GDTrainer5] run execute as @s[tag=GDTrainer6] run execute as @s[tag=GDTrainer7] run execute as @s[tag=GDTrainer8] run execute as @s[tag=GDTrainer9] run execute as @s[tag=GDTrainer10] run execute as @s[tag=GDTrainer11] run execute as @s[tag=GDTrainer12] run tp @e[x=-1535,y=51,z=-49,dy=3,type=pixelmon:npc_trainer] @e[limit=1,sort=random,x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,type=armor_stand,tag=!Skip]


#Everything (active after player becomes the Grant Duke/Duchess)
execute as @a[limit=1,x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={ChateauRank=296..},tag=GrandDuke] run tp @e[limit=1,sort=random,x=-1560,y=52,z=-86,dx=28,dy=3,dz=38,type=pixelmon:npc_trainer] @e[limit=1,sort=random,x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,type=armor_stand,tag=!Skip]


#Tags armor stand for which trainer is spawning in
execute as @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,limit=1,type=pixelmon:npc_trainer,tag=!Skip,tag=Baron] run data modify entity @e[limit=1,x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"Baron"}
execute as @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,limit=1,type=pixelmon:npc_trainer,tag=!Skip,tag=Baroness] run data modify entity @e[limit=1,x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"Baroness"}

execute as @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,limit=1,type=pixelmon:npc_trainer,tag=!Skip,tag=Viscount] run data modify entity @e[limit=1,x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"Viscount"}
execute as @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,limit=1,type=pixelmon:npc_trainer,tag=!Skip,tag=Viscountess] run data modify entity @e[limit=1,x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"Viscountess"}

execute as @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,limit=1,type=pixelmon:npc_trainer,tag=!Skip,tag=Earl] run data modify entity @e[limit=1,x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"Earl"}
execute as @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,limit=1,type=pixelmon:npc_trainer,tag=!Skip,tag=Countess] run data modify entity @e[limit=1,x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"Countess"}

execute as @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,limit=1,type=pixelmon:npc_trainer,tag=!Skip,tag=Marquises] run data modify entity @e[limit=1,x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"Marquises"}
execute as @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,limit=1,type=pixelmon:npc_trainer,tag=!Skip,tag=Marchioness] run data modify entity @e[limit=1,x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"Marchioness"}

execute as @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,limit=1,type=pixelmon:npc_trainer,tag=!Skip,tag=Duke] run data modify entity @e[limit=1,x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"Duke"}
execute as @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,limit=1,type=pixelmon:npc_trainer,tag=!Skip,tag=Duchess] run data modify entity @e[limit=1,x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"Duchess"}

execute as @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,limit=1,type=pixelmon:npc_trainer,tag=!Skip,tag=GrandDuchess] run data modify entity @e[limit=1,x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"Grand Duchess"}


#Tags the location of the trainer depending on which armor stand they spawn to
execute as @e[x=-1569,y=64,z=-92,dx=9,dy=5,dz=33,limit=1,type=pixelmon:npc_trainer,tag=!Skip] run data modify entity @e[limit=1,x=-685,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"West hallway"}
execute as @e[x=-1505,y=63,z=-94,dx=10,dy=5,dz=35,limit=1,type=pixelmon:npc_trainer,tag=!Skip] run data modify entity @e[limit=1,x=-685,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"East hallway"}
execute as @e[x=-1512,y=65,z=-132,dx=25,dy=5,dz=27,limit=1,type=pixelmon:npc_trainer,tag=!Skip] run data modify entity @e[limit=1,x=-685,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"back room"}
execute as @e[x=-1547,y=64,z=-78,dx=28,dy=5,dz=10,limit=1,type=pixelmon:npc_trainer,tag=!Skip] run data modify entity @e[limit=1,x=-685,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"front entrance"}
execute as @e[x=-1587,y=65,z=-134,dx=25,dy=5,dz=26,limit=1,type=pixelmon:npc_trainer,tag=!Skip] run data modify entity @e[limit=1,x=-685,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"left room"}
execute as @e[x=-1544,y=65,z=-134,dx=25,dy=5,dz=26,limit=1,type=pixelmon:npc_trainer,tag=!Skip] run data modify entity @e[limit=1,x=-685,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"right room"}


tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={ChateauRank=1..}] ["",{"text":"Now entering, "},{"selector":"@e[x=-687,y=100,z=1384,dy=3,type=armor_stand]"},{"text":" "},{"selector":"@e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,limit=1,type=pixelmon:npc_trainer,tag=!Skip]"},{"text":", in the "},{"selector":"@e[x=-685,y=100,z=1384,dy=3,type=armor_stand]"},{"text":"."}]

#------------



#Swaps out the Writ Shopkeeper to the rank of the closest player

#tps out
execute as @p[x=-1525,y=64,z=-58,distance=..50,team=Chateau] run tp @e[x=-1525,y=64,z=-58,dy=3,type=pixelmon:npc_shopkeeper,tag=Baroness] -1559 53 -91
execute as @p[x=-1525,y=64,z=-58,distance=..50,team=Chateau] run tp @e[x=-1525,y=64,z=-58,dy=3,type=pixelmon:npc_shopkeeper,tag=Viscountess] -1557 53 -91
execute as @p[x=-1525,y=64,z=-58,distance=..50,team=Chateau] run tp @e[x=-1525,y=64,z=-58,dy=3,type=pixelmon:npc_shopkeeper,tag=Countess] -1555 53 -91
execute as @p[x=-1525,y=64,z=-58,distance=..50,team=Chateau] run tp @e[x=-1525,y=64,z=-58,dy=3,type=pixelmon:npc_shopkeeper,tag=Marchioness] -1553 53 -91
execute as @p[x=-1525,y=64,z=-58,distance=..50,team=Chateau] run tp @e[x=-1525,y=64,z=-58,dy=3,type=pixelmon:npc_shopkeeper,tag=Duchess] -1551 53 -91
execute as @p[x=-1525,y=64,z=-58,distance=..50,team=Chateau] run tp @e[x=-1525,y=64,z=-58,dy=3,type=pixelmon:npc_shopkeeper,tag=GrandDuchess] -1549 53 -91


#tps in
#-1525 65 -58

execute as @p[x=-1525,y=64,z=-58,distance=..50,team=Chateau,scores={ChateauRank=0..5}] run tp @e[x=-1559,y=52,z=-91,dy=3,type=pixelmon:npc_shopkeeper] -1525 65 -58
execute as @p[x=-1525,y=64,z=-58,distance=..50,team=Chateau,scores={ChateauRank=6..30}] run tp @e[x=-1557,y=52,z=-91,dy=3,type=pixelmon:npc_shopkeeper] -1525 65 -58
execute as @p[x=-1525,y=64,z=-58,distance=..50,team=Chateau,scores={ChateauRank=31..98}] run tp @e[x=-1555,y=52,z=-91,dy=3,type=pixelmon:npc_shopkeeper] -1525 65 -58
execute as @p[x=-1525,y=64,z=-58,distance=..50,team=Chateau,scores={ChateauRank=99..295}] run tp @e[x=-1553,y=52,z=-91,dy=3,type=pixelmon:npc_shopkeeper] -1525 65 -58
execute as @p[x=-1525,y=64,z=-58,distance=..50,team=Chateau,scores={ChateauRank=296..},tag=Duke,tag=!GrandDuke] run tp @e[x=-1551,y=52,z=-91,dy=3,type=pixelmon:npc_shopkeeper] -1525 65 -58
execute as @p[x=-1525,y=64,z=-58,distance=..50,team=Chateau,scores={ChateauRank=296..},tag=GrandDuke] run tp @e[x=-1549,y=52,z=-91,dy=3,type=pixelmon:npc_shopkeeper] -1525 65 -58










#------------


#Removes Skip tags
#Chateau entities
tag @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,tag=Skip] remove Skip
tag @e[x=-687,y=100,z=1384,dy=3,type=armor_stand] remove Skip
data modify entity @e[limit=1,x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"Battle Chateau"}






#Sets ChateauCD depending on active writ (refresh rates)

#Invitation Writs (Speeds up refresh rate)
execute as @e[x=-685,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] run scoreboard players add @e[x=-687,y=100,z=1384,dy=3,type=armor_stand] ChateauCD 3
execute as @e[x=-683,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] run scoreboard players set @e[x=-687,y=100,z=1384,dy=3,type=armor_stand] ChateauCD 0

#No writs
execute as @e[x=-685,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run execute as @e[x=-683,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run scoreboard players add @e[x=-687,y=100,z=1384,dy=3,type=armor_stand] ChateauCD 6



#Removes Writ tags if WritCD=0
#WritCD removed one point per day
tag @e[x=-685,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] remove WritofInv
tag @e[x=-683,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] remove SilverWritofInv
tag @e[x=-681,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] remove GoldWritofInv

tag @e[x=-679,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] remove WritofChallenge
tag @e[x=-677,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] remove BlueWritofChal
tag @e[x=-675,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] remove RedWritofChal
tag @e[x=-673,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] remove BlackWritofChal




#Sets sidebar Writ active scores
execute as @e[x=-685,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run scoreboard players reset Writ_of_Invitation
execute as @e[x=-683,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run scoreboard players reset Silver_Writ_of_Invitation
execute as @e[x=-681,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run scoreboard players reset Gold_Writ_of_Invitation

execute as @e[x=-679,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run scoreboard players reset Writ_of_Challenge
execute as @e[x=-677,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run scoreboard players reset Blue_Writ_of_Challenge
execute as @e[x=-675,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run scoreboard players reset Red_Writ_of_Challenge
execute as @e[x=-673,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run scoreboard players reset Black_Writ_of_Challenge


#execute @e[x=-685,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1] ~ ~ ~ scoreboard players set Writ_of_Invitation Active_Writs 1
#execute @e[x=-683,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1] ~ ~ ~ scoreboard players set Silver_Writ_of_Invitation Active_Writs 1
#execute @e[x=-681,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1] ~ ~ ~ scoreboard players set Gold_Writ_of_Invitation Active_Writs 1

#execute @e[x=-679,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1] ~ ~ ~ scoreboard players set Writ_of_Challenge Active_Writs 1
#execute @e[x=-677,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1] ~ ~ ~ scoreboard players set Blue_Writ_of_Challenge Active_Writs 1
#execute @e[x=-675,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1] ~ ~ ~ scoreboard players set Red_Writ_of_Challenge Active_Writs 1
#execute @e[x=-673,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1] ~ ~ ~ scoreboard players set Black_Writ_of_Challenge Active_Writs 1



scoreboard players operation Writ_of_Invitation Active_Writs = @e[x=-685,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] WritCD
scoreboard players operation Silver_Writ_of_Invitation Active_Writs = @e[x=-683,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] WritCD
scoreboard players operation Gold_Writ_of_Invitation Active_Writs = @e[x=-681,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] WritCD

scoreboard players operation Writ_of_Challenge Active_Writs = @e[x=-679,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] WritCD
scoreboard players operation Blue_Writ_of_Challenge Active_Writs = @e[x=-677,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] WritCD
scoreboard players operation Red_Writ_of_Challenge Active_Writs = @e[x=-675,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] WritCD
scoreboard players operation Black_Writ_of_Challenge Active_Writs = @e[x=-673,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] WritCD


#
