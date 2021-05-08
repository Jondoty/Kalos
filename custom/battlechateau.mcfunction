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
#/tedit add LOSS scoreboard players tag @pl add ViolaChateau

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#World command block runs
#scoreboard players remove @e[x=-687,y=100,z=1384,dy=3,type=armor_stand,score_ChateauCD_min=1] ChateauCD 1
#execute @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] ~ ~ ~ function custom:battlechateau if @e[x=-687,y=100,z=1384,dy=3,type=armor_stand,score_ChateauCD=0]


#------------

#Adds Skips for when necessary

#Adds skips to trainers next to Pokemon for no mid-battle tps
execute @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,type=pixelmon:pixelmon] ~ ~ ~ scoreboard players tag @e[r=5,type=pixelmon:npc_trainer] add Skip

#Adds skips to armor stands with trainers standing on them
execute @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,type=pixelmon:npc_trainer] ~ ~ ~ scoreboard players tag @e[r=2,name=trainer,type=armor_stand] add Skip

#------------

#Return-tps all trainers who aren't skipped via Pokemon
function custom:chateaureturntp if @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,type=pixelmon:npc_trainer,tag=!Skip]

#------------
#Counts current trainers to not go over
#execute @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,type=pixelmon:npc_trainer] ~ ~ ~ scoreboard players add @e[x=-687,y=100,z=1384,dy=3,type=armor_stand] TrainerCount 1

#------------



#Runs writ-specific functions for level or money trainer adjustments

#Writ of Challenge function
function data:writofchallenge if @e[x=-679,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1]

#Blue Writ of Challenge, -10 levels and x0.833333333 money
function data:bluewrit if @e[x=-677,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1]

#Red Writ of Challenge, +10 levels, x1.16666667 Money
function data:redwrit if @e[x=-675,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1]

#Black Writ, +20 levels, x1.33333333 money
function data:blackwrit if @e[x=-673,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1]

#Gold Writ, 1.5x Money
function data:goldwrit if @e[x=-681,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1]

#If no writ tags are found, runs to set to default values
execute @e[x=-679,y=100,z=1384,dy=3,type=armor_stand,score_WritCD=0] ~ ~ ~ execute @e[x=-677,y=100,z=1384,dy=3,type=armor_stand,score_WritCD=0] ~ ~ ~ execute @e[x=-675,y=100,z=1384,dy=3,type=armor_stand,score_WritCD=0] ~ ~ ~ execute @e[x=-673,y=100,z=1384,dy=3,type=armor_stand,score_WritCD=0] ~ ~ ~ execute @e[x=-681,y=100,z=1384,dy=3,type=armor_stand,score_WritCD=0] ~ ~ ~ function data:nowrit


#------------

#Announces if a player has ranked up
tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_Gender_min=1,score_Gender=1,score_ChateauRank_min=6,score_ChateauRank=30,tag=!Viscount] {"text":"You have ranked up to Viscount! Higher-nobility trainers will now begin appearing!","italic":true,"color":"gray"}
tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_Gender_min=2,score_Gender=2,score_ChateauRank_min=6,score_ChateauRank=30,tag=!Viscount] {"text":"You have ranked up to Viscountess! Higher-nobility trainers will now begin appearing!","italic":true,"color":"gray"}
playsound minecraft:entity.player.levelup ambient @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_ChateauRank_min=6,score_ChateauRank=30,tag=!Viscount] ~ ~ ~ 1000 1 1
scoreboard players tag @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_Gender_min=1,score_Gender=2,score_ChateauRank_min=6,score_ChateauRank=30,tag=!Viscount] add Viscount

tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_Gender_min=1,score_Gender=1,score_ChateauRank_min=31,score_ChateauRank=98,tag=!Earl] {"text":"You have ranked up to Earl!","italic":true,"color":"gray"}
tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_Gender_min=2,score_Gender=2,score_ChateauRank_min=31,score_ChateauRank=98,tag=!Earl] {"text":"You have ranked up to Countess!,"italic":true,"color":"gray""}
playsound minecraft:entity.player.levelup ambient @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_ChateauRank_min=31,score_ChateauRank=98,tag=!Earl] ~ ~ ~ 1000 1 1
scoreboard players tag @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_Gender_min=1,score_Gender=2,score_ChateauRank_min=31,score_ChateauRank=98,tag=!Earl] add Earl

tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_Gender_min=1,score_Gender=1,score_ChateauRank_min=99,score_ChateauRank=295,tag=!Marquises] {"text":"You have ranked up to Marquises!","italic":true,"color":"gray"}
tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_Gender_min=2,score_Gender=2,score_ChateauRank_min=99,score_ChateauRank=295,tag=!Marquises] {"text":"You have ranked up to Marchioness!","italic":true,"color":"gray"}
playsound minecraft:entity.player.levelup ambient @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_Gender_min=1,score_Gender=2,score_ChateauRank_min=99,score_ChateauRank=295,tag=!Marquises] ~ ~ ~ 1000 1 1
scoreboard players tag @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_Gender_min=1,score_Gender=2,score_ChateauRank_min=99,score_ChateauRank=295,tag=!Marquises] add Marquises

tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_Gender_min=1,score_Gender=1,score_ChateauRank_min=296,tag=!Duke] {"text":"You have ranked up to Duke!","italic":true,"color":"gray"}
tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_Gender_min=2,score_Gender=2,score_ChateauRank_min=296,tag=!Duke] {"text":"You have ranked up to Duchess!","italic":true,"color":"gray"}
playsound minecraft:entity.player.levelup ambient @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_ChateauRank_min=296,tag=!Duke] ~ ~ ~ 1000 1 1
scoreboard players tag @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_Gender_min=1,score_Gender=2,score_ChateauRank_min=296,tag=!Duke] add Duke

execute @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_Gender_min=1,score_Gender=1,score_ChateauRank_min=296,tag=Duke] ~ ~ ~ tellraw @s[tag=GrandDukeGet] {"text":"You have ranked up to Grand Duke!"}
execute @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_Gender_min=2,score_Gender=2,score_ChateauRank_min=296,tag=Duke] ~ ~ ~ tellraw @s[tag=GrandDukeGet] {"text":"You have ranked up to Grand Duchess!"}
execute @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_Gender_min=1,score_Gender=2,score_ChateauRank_min=296,tag=Duke] ~ ~ ~ playsound minecraft:entity.player.levelup ambient @s[tag=GrandDukeGet] ~ ~ ~ 1000 1 1
execute @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_Gender_min=1,score_Gender=2,score_ChateauRank_min=296,tag=Duke] ~ ~ ~ scoreboard players tag @s[tag=GrandDukeGet] add GrandDuke
execute @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_Gender_min=1,score_Gender=2,score_ChateauRank_min=296,tag=Duke] ~ ~ ~
execute @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_Gender_min=1,score_Gender=2,score_ChateauRank_min=296,tag=GrandDuke] ~ ~ ~ scoreboard players tag @s remove GrandDukeGet

#Grants advancement when GrandDuke
advancement grant @a[tag=GrandDuke] only kalos:adventurer2

#-----------
#Removes cooldowns for players to not repeat trainers quickly
scoreboard players remove @e[x=-1589,y=53,z=-140,dx=104,dy=19,dz=97,score_ChateauCD_min=1] ChateauCD 1

#------------

#tps in new trainers depending on player's rank

#Baron/Baroness
execute @a[c=1,x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_ChateauRank_min=1,score_ChateauRank=5] ~ ~ ~ tp @r[x=-1561,y=52,z=-85,dx=30,dy=3,type=pixelmon:npc_trainer,score_ChateauCD=0] @r[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,type=armor_stand,tag=!Skip]

#Viscount/Viscountess
execute @a[c=1,x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_ChateauRank_min=6,score_ChateauRank=30] ~ ~ ~ tp @r[x=-1561,y=52,z=-85,dx=30,dy=3,dz=6,type=pixelmon:npc_trainer,score_ChateauCD=0] @r[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,type=armor_stand,tag=!Skip]



#Marquises/Marchioness
execute @a[c=1,x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_ChateauRank_min=31,score_ChateauRank=98] ~ ~ ~ tp @r[x=-1561,y=52,z=-85,dx=30,dy=3,dz=12,type=pixelmon:npc_trainer,score_ChateauCD=0] @r[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,type=armor_stand,tag=!Skip]

#Duke/Duchess
execute @a[c=1,x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_ChateauRank_min=99,score_ChateauRank=295] ~ ~ ~ tp @r[x=-1561,y=52,z=-85,dx=30,dy=3,dz=18,type=pixelmon:npc_trainer,score_ChateauCD=0] @r[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,type=armor_stand,tag=!Skip]

#Duke/Duchess gym leaders without Diantha
execute @a[c=1,x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_ChateauRank_min=296,tag=!GrandDuke] ~ ~ ~ tp @r[x=-1560,y=52,z=-49,dx=30,dy=3,type=pixelmon:npc_trainer,name=!Diantha,score_ChateauCD=0] @r[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,type=armor_stand,tag=!Skip]

#With Diantha, after player has beaten other royal members
execute @a[c=1,x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_ChateauRank_min=296,score_PokemonLeague_min=1,tag=!GrandDuke] ~ ~ ~ execute @s[tag=GDTrainer1] ~ ~ ~ execute @s[tag=GDTrainer2] ~ ~ ~ execute @s[tag=GDTrainer3] ~ ~ ~ execute @s[tag=GDTrainer4] ~ ~ ~ execute @s[tag=GDTrainer5] ~ ~ ~ execute @s[tag=GDTrainer6] ~ ~ ~ execute @s[tag=GDTrainer7] ~ ~ ~ execute @s[tag=GDTrainer8] ~ ~ ~ execute @s[tag=GDTrainer9] ~ ~ ~ execute @s[tag=GDTrainer10] ~ ~ ~ execute @s[tag=GDTrainer11] ~ ~ ~ execute @s[tag=GDTrainer12] ~ ~ ~ tp @e[x=-1535,y=51,z=-49,dy=3,type=pixelmon:npc_trainer] @r[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,type=armor_stand,tag=!Skip]


#Everything (active after player becomes the Grant Duke/Duchess)
execute @a[c=1,x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_ChateauRank_min=296,tag=GrandDuke] ~ ~ ~ tp @r[x=-1560,y=52,z=-86,dx=28,dy=3,dz=38,type=pixelmon:npc_trainer] @r[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,type=armor_stand,tag=!Skip]


#Tags armor stand for which trainer is spawning in
execute @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,c=1,type=pixelmon:npc_trainer,tag=!Skip] ~ ~ ~ execute @s[tag=Baron] ~ ~ ~ entitydata @e[x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"Baron"}
execute @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,c=1,type=pixelmon:npc_trainer,tag=!Skip] ~ ~ ~ execute @s[tag=Baroness] ~ ~ ~ entitydata @e[x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"Baroness"}

execute @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,c=1,type=pixelmon:npc_trainer,tag=!Skip] ~ ~ ~ execute @s[tag=Viscount] ~ ~ ~ entitydata @e[x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"Viscount"}
execute @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,c=1,type=pixelmon:npc_trainer,tag=!Skip] ~ ~ ~ execute @s[tag=Viscountess] ~ ~ ~ entitydata @e[x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"Viscountess"}

execute @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,c=1,type=pixelmon:npc_trainer,tag=!Skip] ~ ~ ~ execute @s[tag=Earl] ~ ~ ~ entitydata @e[x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"Earl"}
execute @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,c=1,type=pixelmon:npc_trainer,tag=!Skip] ~ ~ ~ execute @s[tag=Countess] ~ ~ ~ entitydata @e[x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"Countess"}

execute @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,c=1,type=pixelmon:npc_trainer,tag=!Skip] ~ ~ ~ execute @s[tag=Marquises] ~ ~ ~ entitydata @e[x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"Marquises"}
execute @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,c=1,type=pixelmon:npc_trainer,tag=!Skip] ~ ~ ~ execute @s[tag=Marchioness] ~ ~ ~ entitydata @e[x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"Marchioness"}

execute @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,c=1,type=pixelmon:npc_trainer,tag=!Skip] ~ ~ ~ execute @s[tag=Duke] ~ ~ ~ entitydata @e[x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"Duke"}
execute @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,c=1,type=pixelmon:npc_trainer,tag=!Skip] ~ ~ ~ execute @s[tag=Duchess] ~ ~ ~ entitydata @e[x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"Duchess"}

execute @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,c=1,type=pixelmon:npc_trainer,tag=!Skip] ~ ~ ~ execute @s[tag=GrandDuchess] ~ ~ ~ entitydata @e[x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"Grand Duchess"}


#Tags the location of the trainer depending on which armor stand they spawn to
execute @e[x=-1569,y=64,z=-92,dx=9,dy=5,dz=33,c=1,type=pixelmon:npc_trainer,tag=!Skip] ~ ~ ~ entitydata @e[x=-685,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"West hallway"}
execute @e[x=-1505,y=63,z=-94,dx=10,dy=5,dz=35,c=1,type=pixelmon:npc_trainer,tag=!Skip] ~ ~ ~ entitydata @e[x=-685,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"East hallway"}
execute @e[x=-1512,y=65,z=-132,dx=25,dy=5,dz=27,c=1,type=pixelmon:npc_trainer,tag=!Skip] ~ ~ ~ entitydata @e[x=-685,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"back room"}
execute @e[x=-1547,y=64,z=-78,dx=28,dy=5,dz=10,c=1,type=pixelmon:npc_trainer,tag=!Skip] ~ ~ ~ entitydata @e[x=-685,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"front entrance"}
execute @e[x=-1587,y=65,z=-134,dx=25,dy=5,dz=26,c=1,type=pixelmon:npc_trainer,tag=!Skip] ~ ~ ~ entitydata @e[x=-685,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"left room"}
execute @e[x=-1544,y=65,z=-134,dx=25,dy=5,dz=26,c=1,type=pixelmon:npc_trainer,tag=!Skip] ~ ~ ~ entitydata @e[x=-685,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"right room"}


tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,score_ChateauRank_min=1] ["",{"text":"Now entering, "},{"selector":"@e[x=-687,y=100,z=1384,dy=3,type=armor_stand]"},{"text":" "},{"selector":"@e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,c=1,type=pixelmon:npc_trainer,tag=!Skip]"},{"text":", in the "},{"selector":"@e[x=-685,y=100,z=1384,dy=3,type=armor_stand]"},{"text":"."}]

#------------



#Swaps out the Writ Shopkeeper to the rank of the closest player

#tps out
execute @p[x=-1525,y=64,z=-58,r=50,team=Chateau] ~ ~ ~ tp @e[x=-1525,y=64,z=-58,dy=3,type=pixelmon:npc_shopkeeper,tag=Baroness] -1559 53 -91
execute @p[x=-1525,y=64,z=-58,r=50,team=Chateau] ~ ~ ~ tp @e[x=-1525,y=64,z=-58,dy=3,type=pixelmon:npc_shopkeeper,tag=Viscountess] -1557 53 -91
execute @p[x=-1525,y=64,z=-58,r=50,team=Chateau] ~ ~ ~ tp @e[x=-1525,y=64,z=-58,dy=3,type=pixelmon:npc_shopkeeper,tag=Countess] -1555 53 -91
execute @p[x=-1525,y=64,z=-58,r=50,team=Chateau] ~ ~ ~ tp @e[x=-1525,y=64,z=-58,dy=3,type=pixelmon:npc_shopkeeper,tag=Marchioness] -1553 53 -91
execute @p[x=-1525,y=64,z=-58,r=50,team=Chateau] ~ ~ ~ tp @e[x=-1525,y=64,z=-58,dy=3,type=pixelmon:npc_shopkeeper,tag=Duchess] -1551 53 -91
execute @p[x=-1525,y=64,z=-58,r=50,team=Chateau] ~ ~ ~ tp @e[x=-1525,y=64,z=-58,dy=3,type=pixelmon:npc_shopkeeper,tag=GrandDuchess] -1549 53 -91


#tps in
#-1525 65 -58

execute @p[x=-1525,y=64,z=-58,r=50,team=Chateau,score_ChateauRank_min=0,score_ChateauRank=5] ~ ~ ~ tp @e[x=-1559,y=52,z=-91,dy=3,type=pixelmon:npc_shopkeeper] -1525 65 -58
execute @p[x=-1525,y=64,z=-58,r=50,team=Chateau,score_ChateauRank_min=6,score_ChateauRank=30] ~ ~ ~ tp @e[x=-1557,y=52,z=-91,dy=3,type=pixelmon:npc_shopkeeper] -1525 65 -58
execute @p[x=-1525,y=64,z=-58,r=50,team=Chateau,score_ChateauRank_min=31,score_ChateauRank=98] ~ ~ ~ tp @e[x=-1555,y=52,z=-91,dy=3,type=pixelmon:npc_shopkeeper] -1525 65 -58
execute @p[x=-1525,y=64,z=-58,r=50,team=Chateau,score_ChateauRank_min=99,score_ChateauRank=295] ~ ~ ~ tp @e[x=-1553,y=52,z=-91,dy=3,type=pixelmon:npc_shopkeeper] -1525 65 -58
execute @p[x=-1525,y=64,z=-58,r=50,team=Chateau,score_ChateauRank_min=296,tag=Duke] ~ ~ ~ execute @s[tag=!GrandDuke] ~ ~ ~ tp @e[x=-1551,y=52,z=-91,dy=3,type=pixelmon:npc_shopkeeper] -1525 65 -58
execute @p[x=-1525,y=64,z=-58,r=50,team=Chateau,score_ChateauRank_min=296,tag=GrandDuke] ~ ~ ~ tp @e[x=-1549,y=52,z=-91,dy=3,type=pixelmon:npc_shopkeeper] -1525 65 -58










#------------


#Removes Skip tags
#Chateau entities
scoreboard players tag @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,tag=Skip] remove Skip
scoreboard players tag @e[x=-687,y=100,z=1384,dy=3,type=armor_stand] remove Skip
entitydata @e[x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:"Battle Chateau"}






#Sets ChateauCD depending on active writ (refresh rates)

#Invitation Writs (Speeds up refresh rate)
execute @e[x=-685,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1] ~ ~ ~ scoreboard players add @e[x=-687,y=100,z=1384,dy=3,type=armor_stand] ChateauCD 3
execute @e[x=-683,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1] ~ ~ ~ scoreboard players set @e[x=-687,y=100,z=1384,dy=3,type=armor_stand] ChateauCD 0

#No writs
execute @e[x=-685,y=100,z=1384,dy=3,type=armor_stand,score_WritCD=0] ~ ~ ~ execute @e[x=-683,y=100,z=1384,dy=3,type=armor_stand,score_WritCD=0] ~ ~ ~ scoreboard players add @e[x=-687,y=100,z=1384,dy=3,type=armor_stand] ChateauCD 6



#Removes Writ tags if WritCD=0
#WritCD removed one point per day
scoreboard players tag @e[x=-685,y=100,z=1384,dy=3,type=armor_stand,score_WritCD=0] remove WritofInv
scoreboard players tag @e[x=-683,y=100,z=1384,dy=3,type=armor_stand,score_WritCD=0] remove SilverWritofInv
scoreboard players tag @e[x=-681,y=100,z=1384,dy=3,type=armor_stand,score_WritCD=0] remove GoldWritofInv

scoreboard players tag @e[x=-679,y=100,z=1384,dy=3,type=armor_stand,score_WritCD=0] remove WritofChallenge
scoreboard players tag @e[x=-677,y=100,z=1384,dy=3,type=armor_stand,score_WritCD=0] remove BlueWritofChal
scoreboard players tag @e[x=-675,y=100,z=1384,dy=3,type=armor_stand,score_WritCD=0] remove RedWritofChal
scoreboard players tag @e[x=-673,y=100,z=1384,dy=3,type=armor_stand,score_WritCD=0] remove BlackWritofChal




#Sets sidebar Writ active scores
execute @e[x=-685,y=100,z=1384,dy=3,type=armor_stand,score_WritCD=0] ~ ~ ~ scoreboard players reset Writ_of_Invitation
execute @e[x=-683,y=100,z=1384,dy=3,type=armor_stand,score_WritCD=0] ~ ~ ~ scoreboard players reset Silver_Writ_of_Invitation
execute @e[x=-681,y=100,z=1384,dy=3,type=armor_stand,score_WritCD=0] ~ ~ ~ scoreboard players reset Gold_Writ_of_Invitation

execute @e[x=-679,y=100,z=1384,dy=3,type=armor_stand,score_WritCD=0] ~ ~ ~ scoreboard players reset Writ_of_Challenge
execute @e[x=-677,y=100,z=1384,dy=3,type=armor_stand,score_WritCD=0] ~ ~ ~ scoreboard players reset Blue_Writ_of_Challenge
execute @e[x=-675,y=100,z=1384,dy=3,type=armor_stand,score_WritCD=0] ~ ~ ~ scoreboard players reset Red_Writ_of_Challenge
execute @e[x=-673,y=100,z=1384,dy=3,type=armor_stand,score_WritCD=0] ~ ~ ~ scoreboard players reset Black_Writ_of_Challenge


#execute @e[x=-685,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1] ~ ~ ~ scoreboard players set Writ_of_Invitation Active_Writs 1
#execute @e[x=-683,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1] ~ ~ ~ scoreboard players set Silver_Writ_of_Invitation Active_Writs 1
#execute @e[x=-681,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1] ~ ~ ~ scoreboard players set Gold_Writ_of_Invitation Active_Writs 1

#execute @e[x=-679,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1] ~ ~ ~ scoreboard players set Writ_of_Challenge Active_Writs 1
#execute @e[x=-677,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1] ~ ~ ~ scoreboard players set Blue_Writ_of_Challenge Active_Writs 1
#execute @e[x=-675,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1] ~ ~ ~ scoreboard players set Red_Writ_of_Challenge Active_Writs 1
#execute @e[x=-673,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1] ~ ~ ~ scoreboard players set Black_Writ_of_Challenge Active_Writs 1



scoreboard players operation Writ_of_Invitation Active_Writs = @e[x=-685,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1] WritCD
scoreboard players operation Silver_Writ_of_Invitation Active_Writs = @e[x=-683,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1] WritCD
scoreboard players operation Gold_Writ_of_Invitation Active_Writs = @e[x=-681,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1] WritCD

scoreboard players operation Writ_of_Challenge Active_Writs = @e[x=-679,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1] WritCD
scoreboard players operation Blue_Writ_of_Challenge Active_Writs = @e[x=-677,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1] WritCD
scoreboard players operation Red_Writ_of_Challenge Active_Writs = @e[x=-675,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1] WritCD
scoreboard players operation Black_Writ_of_Challenge Active_Writs = @e[x=-673,y=100,z=1384,dy=3,type=armor_stand,score_WritCD_min=1] WritCD


#
