
#Command to activate in tellraws:
#/trigger TriggerCommand set 1
#/scoreboard players enable @p TriggerCommand

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#1 - unlocks all mega stone scoreboards, enables player to find Mega Stones in the evenings
execute as @s[scores={TriggerCommand=1}] run scoreboard players set @s MegaStones 1
execute as @s[scores={TriggerCommand=1}] run scoreboard players set @s Abomasite 0
execute as @s[scores={TriggerCommand=1}] run scoreboard players set @s Aggronite 0
execute as @s[scores={TriggerCommand=1}] run scoreboard players set @s Alakazite 0
execute as @s[scores={TriggerCommand=1}] run scoreboard players set @s Banettite 0
execute as @s[scores={TriggerCommand=1}] run scoreboard players set @s Diancite 0
execute as @s[scores={TriggerCommand=1}] run scoreboard players set @s Garchompite 0
execute as @s[scores={TriggerCommand=1}] run scoreboard players set @s Gyaradosite 0
execute as @s[scores={TriggerCommand=1}] run scoreboard players set @s Heracronite 0
execute as @s[scores={TriggerCommand=1}] run scoreboard players set @s Houndoominite 0
execute as @s[scores={TriggerCommand=1}] run scoreboard players set @s Kangaskhanite 0
execute as @s[scores={TriggerCommand=1}] run scoreboard players set @s Manectite 0
execute as @s[scores={TriggerCommand=1}] run scoreboard players set @s Mawilite 0
execute as @s[scores={TriggerCommand=1}] run scoreboard players set @s Medichamite 0
execute as @s[scores={TriggerCommand=1}] run scoreboard players set @s Mewtwonite_X 0
execute as @s[scores={TriggerCommand=1}] run scoreboard players set @s Mewtwonite_Y 0
execute as @s[scores={TriggerCommand=1}] run scoreboard players set @s Scizorite 0
execute as @s[scores={TriggerCommand=1}] run scoreboard players set @s Tyranitarite 0

execute as @s[scores={TriggerCommand=1}] run advancement grant @s only kalos:mega2

#---------------------

#2-5, common Battle Maison commands
execute as @s[scores={TriggerCommand=2..5}] run pokeheal
execute as @s[scores={TriggerCommand=2..5}] run scoreboard players set @s BattleEnd 3
execute as @s[scores={TriggerCommand=2..5}] run function kalos:triggers/stopsound
execute as @s[scores={TriggerCommand=2..5}] run scoreboard players add @s BattleStreak 1
execute as @s[scores={TriggerCommand=2..5}] run particle cloud 1217 75 1545 1 1 1 1 25
execute as @s[scores={TriggerCommand=2..5}] run tp @e[x=1217,y=75,z=1545,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000
execute as @s[scores={TriggerCommand=2..5}] run function kalos:data/maisonstreak

#Refreshes new NPC
execute as @s[scores={TriggerCommand=2..5,BattleMaison=1}] run npcspawnat 1217 75 1545 battlemaison_single
execute as @s[scores={TriggerCommand=2..5,BattleMaison=2,BattleStreak=..10}] run npcspawnat 1217 75 1545 battlemaison_single_super1
execute as @s[scores={TriggerCommand=2..5,BattleMaison=2,BattleStreak=11..19}] run npcspawnat 1217 75 1545 battlemaison_single_super2
execute as @s[scores={TriggerCommand=2..5,BattleMaison=2,BattleStreak=20..}] run npcspawnat 1217 75 1545 battlemaison_single_super3
#execute as @s[scores={TriggerCommand=2..5,BattleMaison=3}] run 
#execute as @s[scores={TriggerCommand=2..5,BattleMaison=4}] run 


#2 - Awards Battle Points and swaps out Single Mode trainers
execute as @s[scores={TriggerCommand=2,BattleStreak=1..10}] run scoreboard players add @s BattlePoints 1
execute as @s[scores={TriggerCommand=2,BattleStreak=11..19}] run scoreboard players add @s BattlePoints 2
execute as @s[scores={TriggerCommand=2,BattleStreak=20}] run scoreboard players add @s BattlePoints 20
execute as @s[scores={TriggerCommand=2,BattleStreak=21..}] run scoreboard players add @s BattlePoints 3

execute as @s[scores={TriggerCommand=2,BattleStreak=1..10}] run tellraw @s {"text":"You received 1 battle point for winning!","italic":true,"color":"gray"}
execute as @s[scores={TriggerCommand=2,BattleStreak=11..19}] run tellraw @s {"text":"You received 2 battle points for winning!","italic":true,"color":"gray"}
execute as @s[scores={TriggerCommand=2,BattleStreak=20}] run tellraw @s {"text":"You received 20 battle points for winning!","italic":true,"color":"gray"}
execute as @s[scores={TriggerCommand=2,BattleStreak=21..}] run tellraw @s {"text":"You received 3 battle points for winning!","italic":true,"color":"gray"}


#3 - Awards Battle Points and swaps out Single Super trainers
execute as @s[scores={TriggerCommand=3,BattleStreak=1..10}] run scoreboard players add @s BattlePoints 2
execute as @s[scores={TriggerCommand=3,BattleStreak=11..19}] run scoreboard players add @s BattlePoints 4
execute as @s[scores={TriggerCommand=3,BattleStreak=20}] run scoreboard players add @s BattlePoints 50
execute as @s[scores={TriggerCommand=3,BattleStreak=21..}] run scoreboard players add @s BattlePoints 8

execute as @s[scores={TriggerCommand=3,BattleStreak=1..10}] run tellraw @s {"text":"You received 2 battle points!","italic":true,"color":"gray"}
execute as @s[scores={TriggerCommand=3,BattleStreak=11..20}] run tellraw @s {"text":"You received 4 battle points!","italic":true,"color":"gray"}
execute as @s[scores={TriggerCommand=3,BattleStreak=20}] run tellraw @s {"text":"You received 50 battle points!","italic":true,"color":"gray"}
execute as @s[scores={TriggerCommand=3,BattleStreak=21..}] run tellraw @s {"text":"You received 8 battle points!","italic":true,"color":"gray"}



#4 & 5, future double Maison battles



#6 - Losing specifically in the battle maison
execute as @s[scores={TriggerCommand=6,BattleStreak=1..}] run tellraw @s {"text":"Your Battle Streak reset!","italic":true,"color":"gray"}
execute as @s[scores={TriggerCommand=6}] run scoreboard players set @s BattleStreak 0
execute as @s[scores={TriggerCommand=6}] run pokeheal

#---------------------


#37-81, Lumiose Taxis Traveling
execute as @s[scores={TriggerCommand=37..81}] run effect give @s minecraft:blindness 5 1 true

#Service Destinations
execute as @s[scores={TriggerCommand=37}] run tp @s -230 101 -120 -160 -16
execute as @s[scores={TriggerCommand=38}] run tp @s -244 101 -84 20 -18
execute as @s[scores={TriggerCommand=39}] run tp @s -194 101 -215 90 -7
execute as @s[scores={TriggerCommand=40}] run tp @s -371 101 -190 -130 -15
execute as @s[scores={TriggerCommand=41}] run tp @s -357 101 -320 -24 -5
execute as @s[scores={TriggerCommand=42}] run tp @s -146 101 -662 16 3
execute as @s[scores={TriggerCommand=43}] run tp @s -13 101 -662 -158 0
execute as @s[scores={TriggerCommand=44}] run tp @s -257 101 -409 14 -10

#Transportation Destinations
execute as @s[scores={TriggerCommand=45}] run tp @s 13 101 -116 -37 -23
execute as @s[scores={TriggerCommand=46}] run tp @s -376 101 -119 42 -20
execute as @s[scores={TriggerCommand=47}] run tp @s -508 101 -494 118 -24
execute as @s[scores={TriggerCommand=48}] run tp @s -183 101 -744 180 -36
execute as @s[scores={TriggerCommand=49}] run tp @s 153 101 -500 -109 -24
execute as @s[scores={TriggerCommand=50}] run tp @s 129 101 -380 -90 -21

#Facilities Destinations
execute as @s[scores={TriggerCommand=51}] run tp @s -181 101 -66 0 -19
execute as @s[scores={TriggerCommand=52}] run tp @s -325 101 -330 -21 -6
execute as @s[scores={TriggerCommand=53}] run tp @s -181 101 -634 90 -10
execute as @s[scores={TriggerCommand=54}] run tp @s -107 101 -691 -158 -3
execute as @s[scores={TriggerCommand=55}] run tp @s 131 101 -451 -90 -5
execute as @s[scores={TriggerCommand=56}] run tp @s -181 102 -339 180 -23

#Shopping Destinations
execute as @s[scores={TriggerCommand=57}] run tp @s -166 101 -188 -90 -12
execute as @s[scores={TriggerCommand=58}] run tp @s -195 101 -187 90 -11
execute as @s[scores={TriggerCommand=59}] run tp @s -195 101 -166 90 -11
execute as @s[scores={TriggerCommand=60}] run tp @s -286 101 -558 -132 -7

#Dining Destinations
execute as @s[scores={TriggerCommand=61}] run tp @s 38 101 -229 126 -13
execute as @s[scores={TriggerCommand=62}] run tp @s -375 101 -654 141 2
execute as @s[scores={TriggerCommand=63}] run tp @s -260 101 -524 -128 -6
execute as @s[scores={TriggerCommand=64}] run tp @s -273 101 -543 -127 -11
execute as @s[scores={TriggerCommand=65}] run tp @s -91 101 -535 125 -10
execute as @s[scores={TriggerCommand=66}] run tp @s -180 101 -599 -90 -12

#Cafes
execute as @s[scores={TriggerCommand=67}] run tp @s -61 101 -225 -130 -9
execute as @s[scores={TriggerCommand=68}] run tp @s -85 101 -135 150 -13
execute as @s[scores={TriggerCommand=69}] run tp @s -166 101 -217 -90 -8
execute as @s[scores={TriggerCommand=70}] run tp @s -195 101 -236 90 -12
execute as @s[scores={TriggerCommand=71}] run tp @s -395 101 -220 -125 -9
execute as @s[scores={TriggerCommand=72}] run tp @s -423 101 -260 -126 -12
execute as @s[scores={TriggerCommand=73}] run tp @s -369 101 -339 156 -11
execute as @s[scores={TriggerCommand=74}] run tp @s -331 101 -355 162 -6

#Cafes
execute as @s[scores={TriggerCommand=75}] run tp @s -405 101 -548 -57 -14
execute as @s[scores={TriggerCommand=76}] run tp @s -294 101 -475 146 -11
execute as @s[scores={TriggerCommand=77}] run tp @s -317 101 -558 50 -7
execute as @s[scores={TriggerCommand=78}] run tp @s 18 101 -580 53 2
execute as @s[scores={TriggerCommand=79}] run tp @s -65 101 -526 -58 -12
execute as @s[scores={TriggerCommand=80}] run tp @s 72 101 -502 52 0
execute as @s[scores={TriggerCommand=81}] run tp @s 92 101 -399 90 0

execute as @s[scores={TriggerCommand=37..81}] run opendialogue taxi_traveled @s


#Looker Chapter Titles
execute as @s[scores={TriggerCommand=90}] run effect give @s minecraft:blindness 5 1 true
execute as @s[scores={TriggerCommand=90}] run title @s times 20 100 20
execute as @s[scores={TriggerCommand=90}] run title @s subtitle {"text":"That Man's a Real...Looker"}
execute as @s[scores={TriggerCommand=90}] run title @s title {"text":"Chapter 1"}
execute as @s[scores={TriggerCommand=90}] run advancement grant @s only kalos:looker0
execute as @s[scores={TriggerCommand=90}] run function kalos:triggers/stopsound
execute as @s[scores={TriggerCommand=90}] run playsound lookerchapter record @s[tag=!RadioOff] ~ ~ ~ 1 1 1
execute as @s[scores={TriggerCommand=90}] run scoreboard players set @s[tag=!RadioOff] MusicCooldown 10

execute as @s[scores={TriggerCommand=91}] run effect give @s minecraft:blindness 5 1 true
execute as @s[scores={TriggerCommand=91}] run title @s times 20 100 20
execute as @s[scores={TriggerCommand=91}] run title @s subtitle {"text":"In the Back Alleys"}
execute as @s[scores={TriggerCommand=91}] run title @s title {"text":"Chapter 2"}
execute as @s[scores={TriggerCommand=91}] run function kalos:triggers/stopsound
execute as @s[scores={TriggerCommand=91}] run playsound lookerchapter record @s[tag=!RadioOff] ~ ~ ~ 1 1 1
execute as @s[scores={TriggerCommand=91}] run scoreboard players set @s[tag=!RadioOff] MusicCooldown 10

execute as @s[scores={TriggerCommand=92}] run effect give @s minecraft:blindness 5 1 true
execute as @s[scores={TriggerCommand=92}] run title @s times 20 100 20
execute as @s[scores={TriggerCommand=92}] run title @s subtitle {"text":"Detective, Tourist, Gang"}
execute as @s[scores={TriggerCommand=92}] run title @s title {"text":"Chapter 3"}
execute as @s[scores={TriggerCommand=92}] run function kalos:triggers/stopsound
execute as @s[scores={TriggerCommand=92}] run playsound lookerchapter record @s[tag=!RadioOff] ~ ~ ~ 1 1 1
execute as @s[scores={TriggerCommand=92}] run scoreboard players set @s[tag=!RadioOff] MusicCooldown 10

execute as @s[scores={TriggerCommand=93}] run effect give @s minecraft:blindness 5 1 true
execute as @s[scores={TriggerCommand=93}] run title @s times 20 100 20
execute as @s[scores={TriggerCommand=93}] run title @s subtitle {"text":"An Unforgivable Crime"}
execute as @s[scores={TriggerCommand=93}] run title @s title {"text":"Chapter 4"}
execute as @s[scores={TriggerCommand=93}] run function kalos:triggers/stopsound
execute as @s[scores={TriggerCommand=93}] run playsound lookerchapter record @s[tag=!RadioOff] ~ ~ ~ 1 1 1
execute as @s[scores={TriggerCommand=93}] run scoreboard players set @s[tag=!RadioOff] MusicCooldown 10

execute as @s[scores={TriggerCommand=94}] run effect give @s minecraft:blindness 5 1 true
execute as @s[scores={TriggerCommand=94}] run title @s times 20 100 20
execute as @s[scores={TriggerCommand=94}] run title @s subtitle {"text":"A Fiery Woman and the Truth Revealed"}
execute as @s[scores={TriggerCommand=94}] run title @s title {"text":"Chapter 5"}
execute as @s[scores={TriggerCommand=94}] run function kalos:triggers/stopsound
execute as @s[scores={TriggerCommand=94}] run playsound lookerchapter record @s[tag=!RadioOff] ~ ~ ~ 1 1 1
execute as @s[scores={TriggerCommand=94}] run scoreboard players set @s[tag=!RadioOff] MusicCooldown 10

execute as @s[scores={TriggerCommand=95}] run effect give @s minecraft:blindness 5 1 true
execute as @s[scores={TriggerCommand=95}] run title @s times 20 100 20
execute as @s[scores={TriggerCommand=95}] run title @s subtitle {"text":"Here's Lookin' at You, Kid"}
execute as @s[scores={TriggerCommand=95}] run title @s title {"text":"Final Chapter"}
execute as @s[scores={TriggerCommand=95}] run function kalos:triggers/stopsound
execute as @s[scores={TriggerCommand=95}] run playsound lookerchapter record @s[tag=!RadioOff] ~ ~ ~ 1 1 1
execute as @s[scores={TriggerCommand=95}] run scoreboard players set @s[tag=!RadioOff] MusicCooldown 10




#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#100-300, shopkeeper based triggers

#Poke Ball
execute as @a[scores={TriggerCommand=100,Money=..199}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=100,Money=..199}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=100,Money=200..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=100,Money=200..}] run give @s cobblemon:poke_ball 1
execute as @a[scores={TriggerCommand=100,Money=200..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=100,Money=200..}] run scoreboard players remove @s Money 200


#Poke Ball x5
execute as @a[scores={TriggerCommand=101,Money=..999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=101,Money=..999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=101,Money=1000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=101,Money=1000..}] run give @s cobblemon:poke_ball 5
execute as @a[scores={TriggerCommand=101,Money=1000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=101,Money=1000..}] run scoreboard players remove @s Money 1000


#Poke Ball x10
execute as @a[scores={TriggerCommand=102,Money=..1999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=102,Money=..1999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=102,Money=2000..}] run tellraw @s {"text":"You put the items in your inventory. You got an extra Premiere Ball for free!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=102,Money=2000..}] run give @s cobblemon:poke_ball 10
execute as @a[scores={TriggerCommand=102,Money=2000..}] run give @s cobblemon:premier_ball 1
execute as @a[scores={TriggerCommand=102,Money=2000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=102,Money=2000..}] run scoreboard players remove @s Money 2000

#-----------------------------

#Great Ball
execute as @a[scores={TriggerCommand=103,Money=..599}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=103,Money=..599}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=103,Money=600..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=103,Money=600..}] run give @s cobblemon:great_ball 1
execute as @a[scores={TriggerCommand=103,Money=600..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=103,Money=600..}] run scoreboard players remove @s Money 600


#Great Ball x5
execute as @a[scores={TriggerCommand=104,Money=..2999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=104,Money=..2999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=104,Money=3000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=104,Money=3000..}] run give @s cobblemon:great_ball 5
execute as @a[scores={TriggerCommand=104,Money=3000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=104,Money=3000..}] run scoreboard players remove @s Money 3000


#Great Ball x10
execute as @a[scores={TriggerCommand=105,Money=..5999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=105,Money=..5999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=105,Money=6000..}] run tellraw @s {"text":"You put the items in your inventory. You got an extra Premiere Ball for free!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=105,Money=6000..}] run give @s cobblemon:great_ball 10
execute as @a[scores={TriggerCommand=105,Money=6000..}] run give @s cobblemon:premier_ball 1
execute as @a[scores={TriggerCommand=105,Money=6000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=105,Money=6000..}] run scoreboard players remove @s Money 6000

#-----------------------------

#Ultra Ball
execute as @a[scores={TriggerCommand=106,Money=..1199}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=106,Money=..1199}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=106,Money=1200..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=106,Money=1200..}] run give @s cobblemon:ultra_ball 1
execute as @a[scores={TriggerCommand=106,Money=1200..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=106,Money=1200..}] run scoreboard players remove @s Money 1200


#Ultra Ball x5
execute as @a[scores={TriggerCommand=107,Money=..5999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=107,Money=..5999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=107,Money=6000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=107,Money=6000..}] run give @s cobblemon:ultra_ball 5
execute as @a[scores={TriggerCommand=107,Money=6000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=107,Money=6000..}] run scoreboard players remove @s Money 6000


#Ultra Ball x10
execute as @a[scores={TriggerCommand=108,Money=..11999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=108,Money=..11999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=108,Money=12000..}] run tellraw @s {"text":"You put the items in your inventory. You got an extra Premiere Ball for free!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=108,Money=12000..}] run give @s cobblemon:ultra_ball 10
execute as @a[scores={TriggerCommand=108,Money=12000..}] run give @s cobblemon:premier_ball 1
execute as @a[scores={TriggerCommand=108,Money=12000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=108,Money=12000..}] run scoreboard players remove @s Money 12000

#-----------------------------

#Potion x1
execute as @a[scores={TriggerCommand=109,Money=..299}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=109,Money=..299}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=109,Money=300..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=109,Money=300..}] run give @s cobblemon:potion 1
execute as @a[scores={TriggerCommand=109,Money=300..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=109,Money=300..}] run scoreboard players remove @s Money 300


#Potion x5
execute as @a[scores={TriggerCommand=110,Money=..1499}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=110,Money=..1499}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=110,Money=1500..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=110,Money=1500..}] run give @s cobblemon:potion 5
execute as @a[scores={TriggerCommand=110,Money=1500..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=110,Money=1500..}] run scoreboard players remove @s Money 1500

#-----------------------------

#Super Potion x1
execute as @a[scores={TriggerCommand=111,Money=..699}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=111,Money=..699}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=111,Money=700..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=111,Money=700..}] run give @s cobblemon:super_potion 1
execute as @a[scores={TriggerCommand=111,Money=700..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=111,Money=700..}] run scoreboard players remove @s Money 700


#Super Potion x5
execute as @a[scores={TriggerCommand=112,Money=..1499}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=112,Money=..1499}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=112,Money=3500..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=112,Money=3500..}] run give @s cobblemon:super_potion 5
execute as @a[scores={TriggerCommand=112,Money=3500..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=112,Money=3500..}] run scoreboard players remove @s Money 3500

#-----------------------------

#Hyper Potion x1
execute as @a[scores={TriggerCommand=113,Money=..1199}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=113,Money=..1199}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=113,Money=1200..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=113,Money=1200..}] run give @s cobblemon:hyper_potion 1
execute as @a[scores={TriggerCommand=113,Money=1200..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=113,Money=1200..}] run scoreboard players remove @s Money 1200


#Hyper Potion x5
execute as @a[scores={TriggerCommand=114,Money=..5999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=114,Money=..5999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=114,Money=6000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=114,Money=6000..}] run give @s cobblemon:hyper_potion 5
execute as @a[scores={TriggerCommand=114,Money=6000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=114,Money=6000..}] run scoreboard players remove @s Money 6000

#-----------------------------

#Max Potion x1
execute as @a[scores={TriggerCommand=115,Money=..2499}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=115,Money=..2499}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=115,Money=2500..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=115,Money=2500..}] run give @s cobblemon:max_potion 1
execute as @a[scores={TriggerCommand=115,Money=2500..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=115,Money=2500..}] run scoreboard players remove @s Money 1200


#Max Potion x5
execute as @a[scores={TriggerCommand=116,Money=..12499}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=116,Money=..12499}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=116,Money=12500..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=116,Money=12500..}] run give @s cobblemon:max_potion 5
execute as @a[scores={TriggerCommand=116,Money=12500..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=116,Money=12500..}] run scoreboard players remove @s Money 12500

#-----------------------------

#Full Restore x1
execute as @a[scores={TriggerCommand=117,Money=..2999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=117,Money=..2999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=117,Money=3000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=117,Money=3000..}] run give @s cobblemon:full_restore 1
execute as @a[scores={TriggerCommand=117,Money=3000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=117,Money=3000..}] run scoreboard players remove @s Money 3000


#Full Restore x5
execute as @a[scores={TriggerCommand=118,Money=..14999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=118,Money=..14999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=118,Money=15000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=118,Money=15000..}] run give @s cobblemon:full_restore 5
execute as @a[scores={TriggerCommand=118,Money=15000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=118,Money=15000..}] run scoreboard players remove @s Money 15000

#-----------------------------

#Antidote x1
execute as @a[scores={TriggerCommand=119,Money=..99}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=119,Money=..99}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=119,Money=100..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=119,Money=100..}] run give @s cobblemon:antidote 1
execute as @a[scores={TriggerCommand=119,Money=100..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=119,Money=100..}] run scoreboard players remove @s Money 100


#Antidote x5
execute as @a[scores={TriggerCommand=120,Money=..499}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=120,Money=..499}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=120,Money=500..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=120,Money=500..}] run give @s cobblemon:antidote 5
execute as @a[scores={TriggerCommand=120,Money=500..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=120,Money=500..}] run scoreboard players remove @s Money 500

#-----------------------------

#Paralyze Heal x1
execute as @a[scores={TriggerCommand=121,Money=..199}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=121,Money=..199}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=121,Money=200..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=121,Money=200..}] run give @s cobblemon:paralyze_heal 1
execute as @a[scores={TriggerCommand=121,Money=200..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=121,Money=200..}] run scoreboard players remove @s Money 200


#Paralyze Heal x5
execute as @a[scores={TriggerCommand=122,Money=..999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=122,Money=..999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=122,Money=1000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=122,Money=1000..}] run give @s cobblemon:paralyze_heal 5
execute as @a[scores={TriggerCommand=122,Money=1000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=122,Money=1000..}] run scoreboard players remove @s Money 1000

#-----------------------------

#Awakening x1
execute as @a[scores={TriggerCommand=123,Money=..99}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=123,Money=..99}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=123,Money=100..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=123,Money=100..}] run give @s cobblemon:awakening 1
execute as @a[scores={TriggerCommand=123,Money=100..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=123,Money=100..}] run scoreboard players remove @s Money 100


#Awakening x5
execute as @a[scores={TriggerCommand=124,Money=..499}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=124,Money=..499}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=124,Money=500..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=124,Money=500..}] run give @s cobblemon:awakening 5
execute as @a[scores={TriggerCommand=124,Money=500..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=124,Money=500..}] run scoreboard players remove @s Money 500

#-----------------------------

#Burn Heal x1
execute as @a[scores={TriggerCommand=125,Money=..249}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=125,Money=..249}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=125,Money=250..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=125,Money=250..}] run give @s cobblemon:burn_heal 1
execute as @a[scores={TriggerCommand=125,Money=250..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=125,Money=250..}] run scoreboard players remove @s Money 250


#Burn Heal x5
execute as @a[scores={TriggerCommand=126,Money=..1249}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=126,Money=..1249}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=126,Money=1250..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=126,Money=1250..}] run give @s cobblemon:burn_heal 5
execute as @a[scores={TriggerCommand=126,Money=1250..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=126,Money=1250..}] run scoreboard players remove @s Money 1250

#-----------------------------

#Ice Heal x1
execute as @a[scores={TriggerCommand=127,Money=..249}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=127,Money=..249}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=127,Money=250..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=127,Money=250..}] run give @s cobblemon:ice_heal 1
execute as @a[scores={TriggerCommand=127,Money=250..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=127,Money=250..}] run scoreboard players remove @s Money 250


#Ice Heal x5
execute as @a[scores={TriggerCommand=128,Money=..1249}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=128,Money=..1249}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=128,Money=1250..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=128,Money=1250..}] run give @s cobblemon:ice_heal 5
execute as @a[scores={TriggerCommand=128,Money=1250..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=128,Money=1250..}] run scoreboard players remove @s Money 1250

#-----------------------------

#Escape Rope x1
execute as @a[scores={TriggerCommand=129,Money=..549}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=129,Money=..549}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=129,Money=550..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=129,Money=550..}] run function kalos:spawn/escaperope
execute as @a[scores={TriggerCommand=129,Money=550..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=129,Money=550..}] run scoreboard players remove @s Money 550


#Escape Rope x5
execute as @a[scores={TriggerCommand=130,Money=..2749}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=130,Money=..2749}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=130,Money=2750..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=130,Money=2750..}] run function kalos:spawn/escaperope
execute as @a[scores={TriggerCommand=130,Money=2750..}] run function kalos:spawn/escaperope
execute as @a[scores={TriggerCommand=130,Money=2750..}] run function kalos:spawn/escaperope
execute as @a[scores={TriggerCommand=130,Money=2750..}] run function kalos:spawn/escaperope
execute as @a[scores={TriggerCommand=130,Money=2750..}] run function kalos:spawn/escaperope
execute as @a[scores={TriggerCommand=130,Money=2750..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=130,Money=2750..}] run scoreboard players remove @s Money 2750

#-----------------------------

#Heal Ball
execute as @a[scores={TriggerCommand=131,Money=..299}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=131,Money=..299}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=131,Money=300..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=131,Money=300..}] run give @s cobblemon:heal_ball 1
execute as @a[scores={TriggerCommand=131,Money=300..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=131,Money=300..}] run scoreboard players remove @s Money 200


#Heal Ball x5
execute as @a[scores={TriggerCommand=132,Money=..1499}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=132,Money=..1499}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=132,Money=1500..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=132,Money=1500..}] run give @s cobblemon:heal_ball 5
execute as @a[scores={TriggerCommand=132,Money=1500..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=132,Money=1500..}] run scoreboard players remove @s Money 1500


#Heal Ball x10
execute as @a[scores={TriggerCommand=133,Money=..2999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=133,Money=..2999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=133,Money=3000..}] run tellraw @s {"text":"You put the items in your inventory. You got an extra Premiere Ball for free!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=133,Money=3000..}] run give @s cobblemon:heal_ball 10
execute as @a[scores={TriggerCommand=133,Money=3000..}] run give @s cobblemon:premier_ball 1
execute as @a[scores={TriggerCommand=133,Money=3000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=133,Money=3000..}] run scoreboard players remove @s Money 3000

#-----------------------------

#Net Ball
execute as @a[scores={TriggerCommand=134,Money=..999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=134,Money=..999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=134,Money=1000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=134,Money=1000..}] run give @s cobblemon:net_ball 1
execute as @a[scores={TriggerCommand=134,Money=1000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=134,Money=1000..}] run scoreboard players remove @s Money 1000


#Net Ball x5
execute as @a[scores={TriggerCommand=135,Money=..4999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=135,Money=..4999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=135,Money=5000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=135,Money=5000..}] run give @s cobblemon:net_ball 5
execute as @a[scores={TriggerCommand=135,Money=5000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=135,Money=5000..}] run scoreboard players remove @s Money 5000


#Net Ball x10
execute as @a[scores={TriggerCommand=136,Money=..9999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=136,Money=..9999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=136,Money=10000..}] run tellraw @s {"text":"You put the items in your inventory. You got an extra Premiere Ball for free!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=136,Money=10000..}] run give @s cobblemon:net_ball 10
execute as @a[scores={TriggerCommand=136,Money=10000..}] run give @s cobblemon:premier_ball 1
execute as @a[scores={TriggerCommand=136,Money=10000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=136,Money=10000..}] run scoreboard players remove @s Money 10000

#-----------------------------

#Dusk Ball
execute as @a[scores={TriggerCommand=137,Money=..999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=137,Money=..999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=137,Money=1000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=137,Money=1000..}] run give @s cobblemon:dusk_ball 1
execute as @a[scores={TriggerCommand=137,Money=1000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=137,Money=1000..}] run scoreboard players remove @s Money 1000


#Dusk Ball x5
execute as @a[scores={TriggerCommand=138,Money=..4999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=138,Money=..4999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=138,Money=5000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=138,Money=5000..}] run give @s cobblemon:dusk_ball 5
execute as @a[scores={TriggerCommand=138,Money=5000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=138,Money=5000..}] run scoreboard players remove @s Money 5000


#Dusk Ball x10
execute as @a[scores={TriggerCommand=139,Money=..9999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=139,Money=..9999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=139,Money=10000..}] run tellraw @s {"text":"You put the items in your inventory. You got an extra Premiere Ball for free!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=139,Money=10000..}] run give @s cobblemon:dusk_ball 10
execute as @a[scores={TriggerCommand=139,Money=10000..}] run give @s cobblemon:premier_ball 1
execute as @a[scores={TriggerCommand=139,Money=10000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=139,Money=10000..}] run scoreboard players remove @s Money 10000


#-----------------------------

#Quick Ball
execute as @a[scores={TriggerCommand=140,Money=..999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=140,Money=..999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=140,Money=1000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=140,Money=1000..}] run give @s cobblemon:quick_ball 1
execute as @a[scores={TriggerCommand=140,Money=1000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=140,Money=1000..}] run scoreboard players remove @s Money 1000


#Quick Ball x5
execute as @a[scores={TriggerCommand=141,Money=..4999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=141,Money=..4999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=141,Money=5000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=141,Money=5000..}] run give @s cobblemon:quick_ball 5
execute as @a[scores={TriggerCommand=141,Money=5000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=141,Money=5000..}] run scoreboard players remove @s Money 5000


#Quick Ball x10
execute as @a[scores={TriggerCommand=142,Money=..9999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=142,Money=..9999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=142,Money=10000..}] run tellraw @s {"text":"You put the items in your inventory. You got an extra Premiere Ball for free!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=142,Money=10000..}] run give @s cobblemon:quick_ball 10
execute as @a[scores={TriggerCommand=142,Money=10000..}] run give @s cobblemon:premier_ball 1
execute as @a[scores={TriggerCommand=142,Money=10000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=142,Money=10000..}] run scoreboard players remove @s Money 10000

#-----------------------------

#Nest Ball
execute as @a[scores={TriggerCommand=143,Money=..999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=143,Money=..999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=143,Money=1000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=143,Money=1000..}] run give @s cobblemon:nest_ball 1
execute as @a[scores={TriggerCommand=143,Money=1000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=143,Money=1000..}] run scoreboard players remove @s Money 1000


#Nest Ball x5
execute as @a[scores={TriggerCommand=144,Money=..4999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=144,Money=..4999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=144,Money=5000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=144,Money=5000..}] run give @s cobblemon:nest_ball 5
execute as @a[scores={TriggerCommand=144,Money=5000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=144,Money=5000..}] run scoreboard players remove @s Money 5000


#Nest Ball x10
execute as @a[scores={TriggerCommand=145,Money=..9999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=145,Money=..9999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=145,Money=10000..}] run tellraw @s {"text":"You put the items in your inventory. You got an extra Premiere Ball for free!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=145,Money=10000..}] run give @s cobblemon:nest_ball 10
execute as @a[scores={TriggerCommand=145,Money=10000..}] run give @s cobblemon:premier_ball 1
execute as @a[scores={TriggerCommand=145,Money=10000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=145,Money=10000..}] run scoreboard players remove @s Money 10000

#-----------------------------

#Full Heal
execute as @a[scores={TriggerCommand=146,Money=..599}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=146,Money=..599}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=146,Money=600..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=146,Money=600..}] run give @s cobblemon:full_heal 1
execute as @a[scores={TriggerCommand=146,Money=600..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=146,Money=600..}] run scoreboard players remove @s Money 600


#Full Heal x5
execute as @a[scores={TriggerCommand=147,Money=..2999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=147,Money=..2999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=147,Money=3000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=147,Money=3000..}] run give @s cobblemon:full_heal 5
execute as @a[scores={TriggerCommand=147,Money=3000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=147,Money=3000..}] run scoreboard players remove @s Money 3000

#-----------------------------

#Protein
execute as @a[scores={TriggerCommand=148,Money=..9799}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=148,Money=..9799}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=148,Money=9800..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=148,Money=9800..}] run give @s cobblemon:protein 1
execute as @a[scores={TriggerCommand=148,Money=9800..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=148,Money=9800..}] run scoreboard players remove @s Money 9800

#-----------------------------

#Iron
execute as @a[scores={TriggerCommand=149,Money=..9799}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=149,Money=..9799}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=149,Money=9800..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=149,Money=9800..}] run give @s cobblemon:iron 1
execute as @a[scores={TriggerCommand=149,Money=9800..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=149,Money=9800..}] run scoreboard players remove @s Money 9800

#-----------------------------

#Calcium
execute as @a[scores={TriggerCommand=150,Money=..9799}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=150,Money=..9799}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=150,Money=9800..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=150,Money=9800..}] run give @s cobblemon:calcium 1
execute as @a[scores={TriggerCommand=150,Money=9800..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=150,Money=9800..}] run scoreboard players remove @s Money 9800

#-----------------------------

#Zinc
execute as @a[scores={TriggerCommand=151,Money=..9799}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=151,Money=..9799}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=151,Money=9800..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=151,Money=9800..}] run give @s cobblemon:zinc 1
execute as @a[scores={TriggerCommand=151,Money=9800..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=151,Money=9800..}] run scoreboard players remove @s Money 9800

#-----------------------------

#Carbos
execute as @a[scores={TriggerCommand=152,Money=..9799}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=152,Money=..9799}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=152,Money=9800..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=152,Money=9800..}] run give @s cobblemon:carbos 1
execute as @a[scores={TriggerCommand=152,Money=9800..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=152,Money=9800..}] run scoreboard players remove @s Money 9800

#-----------------------------

#HP Up
execute as @a[scores={TriggerCommand=153,Money=..9799}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=153,Money=..9799}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=153,Money=9800..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=153,Money=9800..}] run give @s cobblemon:hp_up 1
execute as @a[scores={TriggerCommand=153,Money=9800..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=153,Money=9800..}] run scoreboard players remove @s Money 9800

#-----------------------------

#X Speed
execute as @a[scores={TriggerCommand=154,Money=..249}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=154,Money=..249}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=154,Money=250..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=154,Money=250..}] run give @s cobblemon:x_speed 1
execute as @a[scores={TriggerCommand=154,Money=250..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=154,Money=250..}] run scoreboard players remove @s Money 250

#-----------------------------

#X Attack
execute as @a[scores={TriggerCommand=155,Money=..499}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=155,Money=..499}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=155,Money=500..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=155,Money=500..}] run give @s cobblemon:x_attack 1
execute as @a[scores={TriggerCommand=155,Money=500..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=155,Money=500..}] run scoreboard players remove @s Money 500

#-----------------------------

#X Defend
execute as @a[scores={TriggerCommand=156,Money=..549}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=156,Money=..549}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=156,Money=550..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=156,Money=550..}] run give @s cobblemon:x_defence 1
execute as @a[scores={TriggerCommand=156,Money=550..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=156,Money=550..}] run scoreboard players remove @s Money 550

#-----------------------------

#Guard Spec
execute as @a[scores={TriggerCommand=157,Money=..699}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=157,Money=..699}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=157,Money=700..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=157,Money=700..}] run give @s cobblemon:guard_spec 1
execute as @a[scores={TriggerCommand=157,Money=700..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=157,Money=700..}] run scoreboard players remove @s Money 700

#-----------------------------

#Dire Hit
execute as @a[scores={TriggerCommand=158,Money=..649}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=158,Money=..649}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=158,Money=650..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=158,Money=650..}] run give @s cobblemon:dire_hit 1
execute as @a[scores={TriggerCommand=158,Money=650..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=158,Money=650..}] run scoreboard players remove @s Money 650

#-----------------------------

#X Accuracy
execute as @a[scores={TriggerCommand=159,Money=..949}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=159,Money=..949}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=159,Money=950..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=159,Money=950..}] run give @s cobblemon:x_accuracy 1
execute as @a[scores={TriggerCommand=159,Money=950..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=159,Money=950..}] run scoreboard players remove @s Money 950

#-----------------------------

#X Special Attack
execute as @a[scores={TriggerCommand=160,Money=..349}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=160,Money=..349}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=160,Money=350..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=160,Money=350..}] run give @s cobblemon:x_special_attack 1
execute as @a[scores={TriggerCommand=160,Money=350..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=160,Money=350..}] run scoreboard players remove @s Money 350

#-----------------------------

#X Special Defense
execute as @a[scores={TriggerCommand=161,Money=..349}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=161,Money=..349}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=161,Money=350..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=161,Money=350..}] run give @s cobblemon:x_special_defence 1
execute as @a[scores={TriggerCommand=161,Money=350..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=161,Money=350..}] run scoreboard players remove @s Money 350

#-----------------------------

#Fire Stone
execute as @a[scores={TriggerCommand=162,Money=..2999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=162,Money=..2999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=162,Money=3000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=162,Money=3000..}] run give @s cobblemon:fire_stone 1
execute as @a[scores={TriggerCommand=162,Money=3000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=162,Money=3000..}] run scoreboard players remove @s Money 3000

#-----------------------------

#Water Stone
execute as @a[scores={TriggerCommand=163,Money=..2999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=163,Money=..2999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=163,Money=3000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=163,Money=3000..}] run give @s cobblemon:water_stone 1
execute as @a[scores={TriggerCommand=163,Money=3000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=163,Money=3000..}] run scoreboard players remove @s Money 3000

#-----------------------------

#Thunder Stone
execute as @a[scores={TriggerCommand=164,Money=..2999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=164,Money=..2999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=164,Money=3000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=164,Money=3000..}] run give @s cobblemon:thunder_stone 1
execute as @a[scores={TriggerCommand=164,Money=3000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=164,Money=3000..}] run scoreboard players remove @s Money 3000

#-----------------------------

#Leaf Stone
execute as @a[scores={TriggerCommand=165,Money=..2999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=165,Money=..2999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=165,Money=3000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=165,Money=3000..}] run give @s cobblemon:leaf_stone 1
execute as @a[scores={TriggerCommand=165,Money=3000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=165,Money=3000..}] run scoreboard players remove @s Money 3000

#-----------------------------

#Moon Stone
execute as @a[scores={TriggerCommand=166,Money=..2999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=166,Money=..2999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=166,Money=3000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=166,Money=3000..}] run give @s cobblemon:moon_stone 1
execute as @a[scores={TriggerCommand=166,Money=3000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=166,Money=3000..}] run scoreboard players remove @s Money 3000

#-----------------------------

#Sun Stone
execute as @a[scores={TriggerCommand=167,Money=..2999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=167,Money=..2999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=167,Money=3000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=167,Money=3000..}] run give @s cobblemon:sun_stone 1
execute as @a[scores={TriggerCommand=167,Money=3000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=167,Money=3000..}] run scoreboard players remove @s Money 3000

#-----------------------------

#Dawn Stone
execute as @a[scores={TriggerCommand=168,Money=..2999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=168,Money=..2999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=168,Money=3000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=168,Money=3000..}] run give @s cobblemon:dawn_stone 1
execute as @a[scores={TriggerCommand=168,Money=3000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=168,Money=3000..}] run scoreboard players remove @s Money 3000

#-----------------------------

#Dusk Stone
execute as @a[scores={TriggerCommand=169,Money=..2999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=169,Money=..2999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=169,Money=3000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=169,Money=3000..}] run give @s cobblemon:dusk_stone 1
execute as @a[scores={TriggerCommand=169,Money=3000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=169,Money=3000..}] run scoreboard players remove @s Money 3000

#-----------------------------

#Shiny Stone
execute as @a[scores={TriggerCommand=170,Money=..2999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=170,Money=..2999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=170,Money=3000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=170,Money=3000..}] run give @s cobblemon:shiny_stone 1
execute as @a[scores={TriggerCommand=170,Money=3000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=170,Money=3000..}] run scoreboard players remove @s Money 3000

#-----------------------------

#Everstone
execute as @a[scores={TriggerCommand=171,Money=..999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=171,Money=..999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=171,Money=1000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=171,Money=1000..}] run give @s cobblemon:everstone 1
execute as @a[scores={TriggerCommand=171,Money=1000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=171,Money=1000..}] run scoreboard players remove @s Money 1000

#-----------------------------

#Dubious Disc
execute as @a[scores={TriggerCommand=172,Money=..2999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=172,Money=..2999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=172,Money=3000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=172,Money=3000..}] run give @s cobblemon:dubious_disc 1
execute as @a[scores={TriggerCommand=172,Money=3000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=172,Money=3000..}] run scoreboard players remove @s Money 3000

#-----------------------------

#Electirizer
execute as @a[scores={TriggerCommand=173,Money=..2999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=173,Money=..2999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=173,Money=3000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=173,Money=3000..}] run give @s cobblemon:electirizer 1
execute as @a[scores={TriggerCommand=173,Money=3000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=173,Money=3000..}] run scoreboard players remove @s Money 3000

#-----------------------------

#Kings Rock
execute as @a[scores={TriggerCommand=174,Money=..2999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=174,Money=..2999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=174,Money=3000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=174,Money=3000..}] run give @s cobblemon:kings_rock 1
execute as @a[scores={TriggerCommand=174,Money=3000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=174,Money=3000..}] run scoreboard players remove @s Money 3000

#-----------------------------

#Magmarizer
execute as @a[scores={TriggerCommand=175,Money=..2999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=175,Money=..2999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=175,Money=3000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=175,Money=3000..}] run give @s cobblemon:magmarizer 1
execute as @a[scores={TriggerCommand=175,Money=3000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=175,Money=3000..}] run scoreboard players remove @s Money 3000

#-----------------------------

#Metal Coat
execute as @a[scores={TriggerCommand=176,Money=..2999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=176,Money=..2999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=176,Money=3000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=176,Money=3000..}] run give @s cobblemon:metal_coat 1
execute as @a[scores={TriggerCommand=176,Money=3000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=176,Money=3000..}] run scoreboard players remove @s Money 3000

#-----------------------------

#Protector
execute as @a[scores={TriggerCommand=177,Money=..2999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=177,Money=..2999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=177,Money=3000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=177,Money=3000..}] run give @s cobblemon:protector 1
execute as @a[scores={TriggerCommand=177,Money=3000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=177,Money=3000..}] run scoreboard players remove @s Money 3000

#-----------------------------

#Up-Grade
execute as @a[scores={TriggerCommand=178,Money=..2999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=178,Money=..2999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=178,Money=3000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=178,Money=3000..}] run give @s cobblemon:upgrade 1
execute as @a[scores={TriggerCommand=178,Money=3000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=178,Money=3000..}] run scoreboard players remove @s Money 3000

#-----------------------------

#Dragon Scale
execute as @a[scores={TriggerCommand=179,Money=..2999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=179,Money=..2999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=179,Money=3000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=179,Money=3000..}] run give @s cobblemon:dragon_scale 1
execute as @a[scores={TriggerCommand=179,Money=3000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=179,Money=3000..}] run scoreboard players remove @s Money 3000

#-----------------------------

#Razor Fang
execute as @a[scores={TriggerCommand=180,Money=..2999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=180,Money=..2999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=180,Money=3000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=180,Money=3000..}] run give @s cobblemon:razor_fang 1
execute as @a[scores={TriggerCommand=180,Money=3000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=180,Money=3000..}] run scoreboard players remove @s Money 3000

#-----------------------------

#Razor Claw
execute as @a[scores={TriggerCommand=181,Money=..2999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=181,Money=..2999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=181,Money=3000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=181,Money=3000..}] run give @s cobblemon:razor_claw 1
execute as @a[scores={TriggerCommand=181,Money=3000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=181,Money=3000..}] run scoreboard players remove @s Money 3000

#-----------------------------

#Moomoo Milk
#execute as @a[scores={TriggerCommand=182,Money=..499}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
#execute as @a[scores={TriggerCommand=182,Money=..499}] run scoreboard players set @s TriggerCommand 0
#
#execute as @a[scores={TriggerCommand=182,Money=500..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
#execute as @a[scores={TriggerCommand=182,Money=500..}] run give @s cobblemon:moomoo_milk 1
#execute as @a[scores={TriggerCommand=182,Money=500..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
#execute as @a[scores={TriggerCommand=182,Money=500..}] run scoreboard players remove @s Money 500

#-----------------------------

#Revive
execute as @a[scores={TriggerCommand=183,Money=..1499}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=183,Money=..1499}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=183,Money=1500..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=183,Money=1500..}] run give @s cobblemon:revive 1
execute as @a[scores={TriggerCommand=183,Money=1500..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=183,Money=1500..}] run scoreboard players remove @s Money 1500


#Revive x5
execute as @a[scores={TriggerCommand=184,Money=..7499}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=184,Money=..7499}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=184,Money=7500..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=184,Money=7500..}] run give @s cobblemon:revive 5
execute as @a[scores={TriggerCommand=184,Money=7500..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=184,Money=7500..}] run scoreboard players remove @s Money 7500

#-----------------------------

#Premier Ball
execute as @a[scores={TriggerCommand=185,Money=..199}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=185,Money=..199}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=185,Money=200..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=185,Money=200..}] run give @s cobblemon:premier_ball 1
execute as @a[scores={TriggerCommand=185,Money=200..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=185,Money=200..}] run scoreboard players remove @s Money 200


#Premier Ball x5
execute as @a[scores={TriggerCommand=186,Money=..999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=186,Money=..999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=186,Money=1000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=186,Money=1000..}] run give @s cobblemon:premier_ball 5
execute as @a[scores={TriggerCommand=186,Money=1000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=186,Money=1000..}] run scoreboard players remove @s Money 1000


#Premier Ball x10
execute as @a[scores={TriggerCommand=187,Money=..1999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=187,Money=..1999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=187,Money=2000..}] run tellraw @s {"text":"You put the items in your inventory. You got an extra Premiere Ball for free!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=187,Money=2000..}] run give @s cobblemon:premier_ball 11
execute as @a[scores={TriggerCommand=187,Money=2000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=187,Money=2000..}] run scoreboard players remove @s Money 2000

#-----------------------------

#Link Cable
execute as @a[scores={TriggerCommand=188,Money=..2999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=188,Money=..2999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=188,Money=3000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=188,Money=3000..}] run give @s cobblemon:link_cable 1
execute as @a[scores={TriggerCommand=188,Money=3000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=188,Money=3000..}] run scoreboard players remove @s Money 3000


#-----------------------------

#Dive Ball
execute as @a[scores={TriggerCommand=189,Money=..999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=189,Money=..999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=189,Money=1000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=189,Money=1000..}] run give @s cobblemon:dive_ball 1
execute as @a[scores={TriggerCommand=189,Money=1000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=189,Money=1000..}] run scoreboard players remove @s Money 1000


#Dive Ball x5
execute as @a[scores={TriggerCommand=190,Money=..4999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=190,Money=..4999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=190,Money=5000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=190,Money=5000..}] run give @s cobblemon:dive_ball 5
execute as @a[scores={TriggerCommand=190,Money=5000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=190,Money=5000..}] run scoreboard players remove @s Money 5000


#Dive Ball x10
execute as @a[scores={TriggerCommand=191,Money=..9999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=191,Money=..9999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=191,Money=10000..}] run tellraw @s {"text":"You put the items in your inventory. You got an extra Premiere Ball for free!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=191,Money=10000..}] run give @s cobblemon:dive_ball 10
execute as @a[scores={TriggerCommand=191,Money=10000..}] run give @s cobblemon:premier_ball 1
execute as @a[scores={TriggerCommand=191,Money=10000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=191,Money=10000..}] run scoreboard players remove @s Money 10000

#-----------------------------

#Timer Ball
execute as @a[scores={TriggerCommand=192,Money=..999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=192,Money=..999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=192,Money=1000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=192,Money=1000..}] run give @s cobblemon:timer_ball 1
execute as @a[scores={TriggerCommand=192,Money=1000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=192,Money=1000..}] run scoreboard players remove @s Money 1000


#Timer Ball x5
execute as @a[scores={TriggerCommand=193,Money=..4999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=193,Money=..4999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=193,Money=5000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=193,Money=5000..}] run give @s cobblemon:timer_ball 5
execute as @a[scores={TriggerCommand=193,Money=5000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=193,Money=5000..}] run scoreboard players remove @s Money 5000


#Timer Ball x10
execute as @a[scores={TriggerCommand=194,Money=..9999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=194,Money=..9999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=194,Money=10000..}] run tellraw @s {"text":"You put the items in your inventory. You got an extra Premiere Ball for free!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=194,Money=10000..}] run give @s cobblemon:timer_ball 10
execute as @a[scores={TriggerCommand=194,Money=10000..}] run give @s cobblemon:premier_ball 1
execute as @a[scores={TriggerCommand=194,Money=10000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=194,Money=10000..}] run scoreboard players remove @s Money 10000

#-----------------------------

#Repeat Ball
execute as @a[scores={TriggerCommand=195,Money=..999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=195,Money=..999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=195,Money=1000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=195,Money=1000..}] run give @s cobblemon:repeat_ball 1
execute as @a[scores={TriggerCommand=195,Money=1000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=195,Money=1000..}] run scoreboard players remove @s Money 1000


#Repeat Ball x5
execute as @a[scores={TriggerCommand=196,Money=..4999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=196,Money=..4999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=196,Money=5000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=196,Money=5000..}] run give @s cobblemon:repeat_ball 5
execute as @a[scores={TriggerCommand=196,Money=5000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=196,Money=5000..}] run scoreboard players remove @s Money 5000


#Repeat Ball x10
execute as @a[scores={TriggerCommand=197,Money=..9999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=197,Money=..9999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=197,Money=10000..}] run tellraw @s {"text":"You put the items in your inventory. You got an extra Premiere Ball for free!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=197,Money=10000..}] run give @s cobblemon:repeat_ball 10
execute as @a[scores={TriggerCommand=197,Money=10000..}] run give @s cobblemon:premier_ball 1
execute as @a[scores={TriggerCommand=197,Money=10000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=197,Money=10000..}] run scoreboard players remove @s Money 10000

#-----------------------------

#Luxury Ball
execute as @a[scores={TriggerCommand=198,Money=..999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=198,Money=..999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=198,Money=1000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=198,Money=1000..}] run give @s cobblemon:luxury_ball 1
execute as @a[scores={TriggerCommand=198,Money=1000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=198,Money=1000..}] run scoreboard players remove @s Money 1000


#Luxury Ball x5
execute as @a[scores={TriggerCommand=199,Money=..4999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=199,Money=..4999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=199,Money=5000..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=199,Money=5000..}] run give @s cobblemon:luxury_ball 5
execute as @a[scores={TriggerCommand=199,Money=5000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=199,Money=5000..}] run scoreboard players remove @s Money 5000


#Luxury Ball x10
execute as @a[scores={TriggerCommand=200,Money=..9999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=200,Money=..9999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=200,Money=10000..}] run tellraw @s {"text":"You put the items in your inventory. You got an extra Premiere Ball for free!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=200,Money=10000..}] run give @s cobblemon:luxury_ball 10
execute as @a[scores={TriggerCommand=200,Money=10000..}] run give @s cobblemon:premier_ball 1
execute as @a[scores={TriggerCommand=200,Money=10000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=200,Money=10000..}] run scoreboard players remove @s Money 10000

#-----------------------------
#Herboriste Shop

#Heal Powder
execute as @a[scores={TriggerCommand=201,Money=..449}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=201,Money=..449}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=201,Money=459..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=201,Money=459..}] run give @s cobblemon:heal_powder 1
execute as @a[scores={TriggerCommand=201,Money=459..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=201,Money=459..}] run scoreboard players remove @s Money 450


#Energypowder, not in mod
execute as @a[scores={TriggerCommand=202,Money=..499}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=202,Money=..499}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=202,Money=500..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=202,Money=500..}] run give @s cobblemon:heal_powder 1
execute as @a[scores={TriggerCommand=202,Money=500..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=202,Money=500..}] run scoreboard players remove @s Money 500

#Energy Root
execute as @a[scores={TriggerCommand=203,Money=..799}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=203,Money=..799}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=203,Money=800..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=203,Money=800..}] run give @s cobblemon:energy_root 1
execute as @a[scores={TriggerCommand=203,Money=800..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=203,Money=800..}] run scoreboard players remove @s Money 800

#Revival Herb
execute as @a[scores={TriggerCommand=204,Money=..2799}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=204,Money=..2799}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=204,Money=2800..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=204,Money=2800..}] run give @s cobblemon:revival_herb 1
execute as @a[scores={TriggerCommand=204,Money=2800..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=204,Money=2800..}] run scoreboard players remove @s Money 2800

#-----------------------------
#Stone Emporium Mega Stones

#Altarianite
execute as @a[scores={TriggerCommand=205,Money=..29999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=205,Money=..29999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=205,Money=30000..}] run tellraw @s {"text":"You put the stone in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=205,Money=30000..}] run give @s mega_showdown:altarianite 1
execute as @a[scores={TriggerCommand=205,Money=30000..}] run playsound minecraft:megastoneget ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=205,Money=30000..}] run scoreboard players remove @s Money 30000


#Audinite
execute as @a[scores={TriggerCommand=206,Money=..29999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=206,Money=..29999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=206,Money=30000..}] run tellraw @s {"text":"You put the stone in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=206,Money=30000..}] run give @s mega_showdown:audinite 1
execute as @a[scores={TriggerCommand=206,Money=30000..}] run playsound minecraft:megastoneget ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=206,Money=30000..}] run scoreboard players remove @s Money 30000

#Beedrillite
execute as @a[scores={TriggerCommand=207,Money=..29999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=207,Money=..29999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=207,Money=30000..}] run tellraw @s {"text":"You put the stone in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=207,Money=30000..}] run give @s mega_showdown:beedrillite 1
execute as @a[scores={TriggerCommand=207,Money=30000..}] run playsound minecraft:megastoneget ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=207,Money=30000..}] run scoreboard players remove @s Money 30000

#Blazikenite
execute as @a[scores={TriggerCommand=208,Money=..29999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=208,Money=..29999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=208,Money=30000..}] run tellraw @s {"text":"You put the stone in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=208,Money=30000..}] run give @s mega_showdown:blazikenite 1
execute as @a[scores={TriggerCommand=208,Money=30000..}] run playsound minecraft:megastoneget ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=208,Money=30000..}] run scoreboard players remove @s Money 30000

#Cameruptite
execute as @a[scores={TriggerCommand=209,Money=..29999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=209,Money=..29999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=209,Money=30000..}] run tellraw @s {"text":"You put the stone in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=209,Money=30000..}] run give @s mega_showdown:cameruptite 1
execute as @a[scores={TriggerCommand=209,Money=30000..}] run playsound minecraft:megastoneget ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=209,Money=30000..}] run scoreboard players remove @s Money 30000

#Galladite
execute as @a[scores={TriggerCommand=210,Money=..29999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=210,Money=..29999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=210,Money=30000..}] run tellraw @s {"text":"You put the stone in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=210,Money=30000..}] run give @s mega_showdown:galladite 1
execute as @a[scores={TriggerCommand=210,Money=30000..}] run playsound minecraft:megastoneget ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=210,Money=30000..}] run scoreboard players remove @s Money 30000

#Glalitite
execute as @a[scores={TriggerCommand=211,Money=..29999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=211,Money=..29999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=211,Money=30000..}] run tellraw @s {"text":"You put the stone in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=211,Money=30000..}] run give @s mega_showdown:glalitite 1
execute as @a[scores={TriggerCommand=211,Money=30000..}] run playsound minecraft:megastoneget ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=211,Money=30000..}] run scoreboard players remove @s Money 30000

#Latiasite
execute as @a[scores={TriggerCommand=212,Money=..29999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=212,Money=..29999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=212,Money=30000..}] run tellraw @s {"text":"You put the stone in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=212,Money=30000..}] run give @s mega_showdown:latiasite 1
execute as @a[scores={TriggerCommand=212,Money=30000..}] run playsound minecraft:megastoneget ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=212,Money=30000..}] run scoreboard players remove @s Money 30000

#Latiosite
execute as @a[scores={TriggerCommand=213,Money=..29999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=213,Money=..29999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=213,Money=30000..}] run tellraw @s {"text":"You put the stone in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=213,Money=30000..}] run give @s mega_showdown:latiosite 1
execute as @a[scores={TriggerCommand=213,Money=30000..}] run playsound minecraft:megastoneget ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=213,Money=30000..}] run scoreboard players remove @s Money 30000

#Lopunnite
execute as @a[scores={TriggerCommand=214,Money=..29999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=214,Money=..29999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=214,Money=30000..}] run tellraw @s {"text":"You put the stone in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=214,Money=30000..}] run give @s mega_showdown:lopunnite 1
execute as @a[scores={TriggerCommand=214,Money=30000..}] run playsound minecraft:megastoneget ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=214,Money=30000..}] run scoreboard players remove @s Money 30000

#Metagrossite
execute as @a[scores={TriggerCommand=215,Money=..29999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=215,Money=..29999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=215,Money=30000..}] run tellraw @s {"text":"You put the stone in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=215,Money=30000..}] run give @s mega_showdown:metagrossite 1
execute as @a[scores={TriggerCommand=215,Money=30000..}] run playsound minecraft:megastoneget ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=215,Money=30000..}] run scoreboard players remove @s Money 30000

#Pidgeotite
execute as @a[scores={TriggerCommand=216,Money=..29999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=216,Money=..29999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=216,Money=30000..}] run tellraw @s {"text":"You put the stone in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=216,Money=30000..}] run give @s mega_showdown:pidgeotite 1
execute as @a[scores={TriggerCommand=216,Money=30000..}] run playsound minecraft:megastoneget ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=216,Money=30000..}] run scoreboard players remove @s Money 30000

#Sablenite
execute as @a[scores={TriggerCommand=217,Money=..29999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=217,Money=..29999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=217,Money=30000..}] run tellraw @s {"text":"You put the stone in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=217,Money=30000..}] run give @s mega_showdown:sablenite 1
execute as @a[scores={TriggerCommand=217,Money=30000..}] run playsound minecraft:megastoneget ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=217,Money=30000..}] run scoreboard players remove @s Money 30000

#Salamencite
execute as @a[scores={TriggerCommand=218,Money=..29999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=218,Money=..29999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=218,Money=30000..}] run tellraw @s {"text":"You put the stone in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=218,Money=30000..}] run give @s mega_showdown:salamencite 1
execute as @a[scores={TriggerCommand=218,Money=30000..}] run playsound minecraft:megastoneget ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=218,Money=30000..}] run scoreboard players remove @s Money 30000

#Sceptilite
execute as @a[scores={TriggerCommand=219,Money=..29999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=219,Money=..29999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=219,Money=30000..}] run tellraw @s {"text":"You put the stone in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=219,Money=30000..}] run give @s mega_showdown:sceptilite 1
execute as @a[scores={TriggerCommand=219,Money=30000..}] run playsound minecraft:megastoneget ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=219,Money=30000..}] run scoreboard players remove @s Money 30000

#Sharpedonite
execute as @a[scores={TriggerCommand=220,Money=..29999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=220,Money=..29999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=220,Money=30000..}] run tellraw @s {"text":"You put the stone in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=220,Money=30000..}] run give @s mega_showdown:sharpedonite 1
execute as @a[scores={TriggerCommand=220,Money=30000..}] run playsound minecraft:megastoneget ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=220,Money=30000..}] run scoreboard players remove @s Money 30000

#Slowbronite
execute as @a[scores={TriggerCommand=221,Money=..29999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=221,Money=..29999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=221,Money=30000..}] run tellraw @s {"text":"You put the stone in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=221,Money=30000..}] run give @s mega_showdown:slowbronite 1
execute as @a[scores={TriggerCommand=221,Money=30000..}] run playsound minecraft:megastoneget ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=221,Money=30000..}] run scoreboard players remove @s Money 30000

#Steelixite
execute as @a[scores={TriggerCommand=222,Money=..29999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=222,Money=..29999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=222,Money=30000..}] run tellraw @s {"text":"You put the stone in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=222,Money=30000..}] run give @s mega_showdown:steelixite 1
execute as @a[scores={TriggerCommand=222,Money=30000..}] run playsound minecraft:megastoneget ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=222,Money=30000..}] run scoreboard players remove @s Money 30000

#Swampertite
execute as @a[scores={TriggerCommand=223,Money=..29999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=223,Money=..29999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=223,Money=30000..}] run tellraw @s {"text":"You put the stone in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=223,Money=30000..}] run give @s mega_showdown:swampertite 1
execute as @a[scores={TriggerCommand=223,Money=30000..}] run playsound minecraft:megastoneget ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=223,Money=30000..}] run scoreboard players remove @s Money 30000

#-----------------------------
#Furfrou Trims
execute as @a[scores={TriggerCommand=224,Money=..500}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=224,Money=..500}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=224,Money=500..,Temp=1}] run pokeedit 1 poodle_trim=heart
execute as @a[scores={TriggerCommand=224,Money=500..,Temp=2}] run pokeedit 2 poodle_trim=heart
execute as @a[scores={TriggerCommand=224,Money=500..,Temp=3}] run pokeedit 3 poodle_trim=heart
execute as @a[scores={TriggerCommand=224,Money=500..,Temp=4}] run pokeedit 4 poodle_trim=heart
execute as @a[scores={TriggerCommand=224,Money=500..,Temp=5}] run pokeedit 5 poodle_trim=heart
execute as @a[scores={TriggerCommand=224,Money=500..,Temp=6}] run pokeedit 6 poodle_trim=heart
execute as @a[scores={TriggerCommand=224,Money=500..}] run playsound minecraft:entity.sheep.shear ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=224,Money=500..}] run scoreboard players remove @s Money 500


execute as @a[scores={TriggerCommand=225,Money=..500}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=225,Money=..500}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=225,Money=500..,Temp=1}] run pokeedit 1 poodle_trim=star
execute as @a[scores={TriggerCommand=225,Money=500..,Temp=2}] run pokeedit 2 poodle_trim=star
execute as @a[scores={TriggerCommand=225,Money=500..,Temp=3}] run pokeedit 3 poodle_trim=star
execute as @a[scores={TriggerCommand=225,Money=500..,Temp=4}] run pokeedit 4 poodle_trim=star
execute as @a[scores={TriggerCommand=225,Money=500..,Temp=5}] run pokeedit 5 poodle_trim=star
execute as @a[scores={TriggerCommand=225,Money=500..,Temp=6}] run pokeedit 6 poodle_trim=star
execute as @a[scores={TriggerCommand=225,Money=500..}] run playsound minecraft:entity.sheep.shear ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=225,Money=500..}] run scoreboard players remove @s Money 500


execute as @a[scores={TriggerCommand=226,Money=..500}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=226,Money=..500}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=226,Money=500..,Temp=1}] run pokeedit 1 poodle_trim=diamond
execute as @a[scores={TriggerCommand=226,Money=500..,Temp=2}] run pokeedit 2 poodle_trim=diamond
execute as @a[scores={TriggerCommand=226,Money=500..,Temp=3}] run pokeedit 3 poodle_trim=diamond
execute as @a[scores={TriggerCommand=226,Money=500..,Temp=4}] run pokeedit 4 poodle_trim=diamond
execute as @a[scores={TriggerCommand=226,Money=500..,Temp=5}] run pokeedit 5 poodle_trim=diamond
execute as @a[scores={TriggerCommand=226,Money=500..,Temp=6}] run pokeedit 6 poodle_trim=diamond
execute as @a[scores={TriggerCommand=226,Money=500..}] run playsound minecraft:entity.sheep.shear ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=226,Money=500..}] run scoreboard players remove @s Money 500


execute as @a[scores={TriggerCommand=227,Money=..500}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=227,Money=..500}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=227,Money=500..,Temp=1}] run pokeedit 1 poodle_trim=debutante
execute as @a[scores={TriggerCommand=227,Money=500..,Temp=2}] run pokeedit 2 poodle_trim=debutante
execute as @a[scores={TriggerCommand=227,Money=500..,Temp=3}] run pokeedit 3 poodle_trim=debutante
execute as @a[scores={TriggerCommand=227,Money=500..,Temp=4}] run pokeedit 4 poodle_trim=debutante
execute as @a[scores={TriggerCommand=227,Money=500..,Temp=5}] run pokeedit 5 poodle_trim=debutante
execute as @a[scores={TriggerCommand=227,Money=500..,Temp=6}] run pokeedit 6 poodle_trim=debutante
execute as @a[scores={TriggerCommand=227,Money=500..}] run playsound minecraft:entity.sheep.shear ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=227,Money=500..}] run scoreboard players remove @s Money 500


execute as @a[scores={TriggerCommand=228,Money=..500}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=228,Money=..500}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=228,Money=500..,Temp=1}] run pokeedit 1 poodle_trim=matron
execute as @a[scores={TriggerCommand=228,Money=500..,Temp=2}] run pokeedit 2 poodle_trim=matron
execute as @a[scores={TriggerCommand=228,Money=500..,Temp=3}] run pokeedit 3 poodle_trim=matron
execute as @a[scores={TriggerCommand=228,Money=500..,Temp=4}] run pokeedit 4 poodle_trim=matron
execute as @a[scores={TriggerCommand=228,Money=500..,Temp=5}] run pokeedit 5 poodle_trim=matron
execute as @a[scores={TriggerCommand=228,Money=500..,Temp=6}] run pokeedit 6 poodle_trim=matron
execute as @a[scores={TriggerCommand=228,Money=500..}] run playsound minecraft:entity.sheep.shear ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=228,Money=500..}] run scoreboard players remove @s Money 500


execute as @a[scores={TriggerCommand=229,Money=..500}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=229,Money=..500}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=229,Money=500..,Temp=1}] run pokeedit 1 poodle_trim=dandy
execute as @a[scores={TriggerCommand=229,Money=500..,Temp=2}] run pokeedit 2 poodle_trim=dandy
execute as @a[scores={TriggerCommand=229,Money=500..,Temp=3}] run pokeedit 3 poodle_trim=dandy
execute as @a[scores={TriggerCommand=229,Money=500..,Temp=4}] run pokeedit 4 poodle_trim=dandy
execute as @a[scores={TriggerCommand=229,Money=500..,Temp=5}] run pokeedit 5 poodle_trim=dandy
execute as @a[scores={TriggerCommand=229,Money=500..,Temp=6}] run pokeedit 6 poodle_trim=dandy
execute as @a[scores={TriggerCommand=229,Money=500..}] run playsound minecraft:entity.sheep.shear ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=229,Money=500..}] run scoreboard players remove @s Money 500


execute as @a[scores={TriggerCommand=230,Money=..500}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=230,Money=..500}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=230,Money=500..,Temp=1}] run pokeedit 1 poodle_trim=la_reine
execute as @a[scores={TriggerCommand=230,Money=500..,Temp=2}] run pokeedit 2 poodle_trim=la_reine
execute as @a[scores={TriggerCommand=230,Money=500..,Temp=3}] run pokeedit 3 poodle_trim=la_reine
execute as @a[scores={TriggerCommand=230,Money=500..,Temp=4}] run pokeedit 4 poodle_trim=la_reine
execute as @a[scores={TriggerCommand=230,Money=500..,Temp=5}] run pokeedit 5 poodle_trim=la_reine
execute as @a[scores={TriggerCommand=230,Money=500..,Temp=6}] run pokeedit 6 poodle_trim=la_reine
execute as @a[scores={TriggerCommand=230,Money=500..}] run playsound minecraft:entity.sheep.shear ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=230,Money=500..}] run scoreboard players remove @s Money 500


execute as @a[scores={TriggerCommand=231,Money=..500}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=231,Money=..500}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=231,Money=500..,Temp=1}] run pokeedit 1 poodle_trim=kabuki
execute as @a[scores={TriggerCommand=231,Money=500..,Temp=2}] run pokeedit 2 poodle_trim=kabuki
execute as @a[scores={TriggerCommand=231,Money=500..,Temp=3}] run pokeedit 3 poodle_trim=kabuki
execute as @a[scores={TriggerCommand=231,Money=500..,Temp=4}] run pokeedit 4 poodle_trim=kabuki
execute as @a[scores={TriggerCommand=231,Money=500..,Temp=5}] run pokeedit 5 poodle_trim=kabuki
execute as @a[scores={TriggerCommand=231,Money=500..,Temp=6}] run pokeedit 6 poodle_trim=kabuki
execute as @a[scores={TriggerCommand=231,Money=500..}] run playsound minecraft:entity.sheep.shear ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=231,Money=500..}] run scoreboard players remove @s Money 500


execute as @a[scores={TriggerCommand=232,Money=..500}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=232,Money=..500}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=232,Money=500..,Temp=1}] run pokeedit 1 poodle_trim=pharaoh
execute as @a[scores={TriggerCommand=232,Money=500..,Temp=2}] run pokeedit 2 poodle_trim=pharaoh
execute as @a[scores={TriggerCommand=232,Money=500..,Temp=3}] run pokeedit 3 poodle_trim=pharaoh
execute as @a[scores={TriggerCommand=232,Money=500..,Temp=4}] run pokeedit 4 poodle_trim=pharaoh
execute as @a[scores={TriggerCommand=232,Money=500..,Temp=5}] run pokeedit 5 poodle_trim=pharaoh
execute as @a[scores={TriggerCommand=232,Money=500..,Temp=6}] run pokeedit 6 poodle_trim=pharaoh
execute as @a[scores={TriggerCommand=232,Money=500..}] run playsound minecraft:entity.sheep.shear ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=232,Money=500..}] run scoreboard players remove @s Money 500


execute as @a[scores={TriggerCommand=233,Money=..500}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=233,Money=..500}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=233,Money=500..,Temp=1}] run pokeedit 1 poodle_trim=natural
execute as @a[scores={TriggerCommand=233,Money=500..,Temp=2}] run pokeedit 2 poodle_trim=natural
execute as @a[scores={TriggerCommand=233,Money=500..,Temp=3}] run pokeedit 3 poodle_trim=natural
execute as @a[scores={TriggerCommand=233,Money=500..,Temp=4}] run pokeedit 4 poodle_trim=natural
execute as @a[scores={TriggerCommand=233,Money=500..,Temp=5}] run pokeedit 5 poodle_trim=natural
execute as @a[scores={TriggerCommand=233,Money=500..,Temp=6}] run pokeedit 6 poodle_trim=natural
execute as @a[scores={TriggerCommand=233,Money=500..}] run playsound minecraft:entity.sheep.shear ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=233,Money=500..}] run scoreboard players remove @s Money 500

scoreboard players set @a[scores={TriggerCommand=224..233}] Temp 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Battle Maison Shop Items
#Protein
execute as @a[scores={TriggerCommand=235,BattlePoint=..2}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=235,BattlePoint=..2}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=235,BattlePoint=2..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=235,BattlePoint=2..}] run give @s cobblemon:protein 1
execute as @a[scores={TriggerCommand=235,BattlePoint=2..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=235,BattlePoint=2..}] run scoreboard players remove @s BattlePoint 2

#Calcium
execute as @a[scores={TriggerCommand=236,BattlePoint=..2}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=236,BattlePoint=..2}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=236,BattlePoint=2..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=236,BattlePoint=2..}] run give @s cobblemon:calcium 1
execute as @a[scores={TriggerCommand=236,BattlePoint=2..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=236,BattlePoint=2..}] run scoreboard players remove @s BattlePoint 2

#Iron
execute as @a[scores={TriggerCommand=237,BattlePoint=..2}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=237,BattlePoint=..2}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=237,BattlePoint=2..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=237,BattlePoint=2..}] run give @s cobblemon:iron 1
execute as @a[scores={TriggerCommand=237,BattlePoint=2..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=237,BattlePoint=2..}] run scoreboard players remove @s BattlePoint 2

#Zinc
execute as @a[scores={TriggerCommand=238,BattlePoint=..2}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=238,BattlePoint=..2}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=238,BattlePoint=2..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=238,BattlePoint=2..}] run give @s cobblemon:zinc 1
execute as @a[scores={TriggerCommand=238,BattlePoint=2..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=238,BattlePoint=2..}] run scoreboard players remove @s BattlePoint 2

#Carbos
execute as @a[scores={TriggerCommand=239,BattlePoint=..2}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=239,BattlePoint=..2}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=239,BattlePoint=2..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=239,BattlePoint=2..}] run give @s cobblemon:carbos 1
execute as @a[scores={TriggerCommand=239,BattlePoint=2..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=239,BattlePoint=2..}] run scoreboard players remove @s BattlePoint 2

#HP Up
execute as @a[scores={TriggerCommand=240,BattlePoint=..2}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=240,BattlePoint=..2}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=240,BattlePoint=2..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=240,BattlePoint=2..}] run give @s cobblemon:hp_up 1
execute as @a[scores={TriggerCommand=240,BattlePoint=2..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=240,BattlePoint=2..}] run scoreboard players remove @s BattlePoint 2

#Power Bracer
execute as @a[scores={TriggerCommand=241,BattlePoint=..16}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=241,BattlePoint=..16}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=241,BattlePoint=16..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=241,BattlePoint=16..}] run give @s cobblemon:power_bracer 1
execute as @a[scores={TriggerCommand=241,BattlePoint=16..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=241,BattlePoint=16..}] run scoreboard players remove @s BattlePoint 16

#Power Belt
execute as @a[scores={TriggerCommand=242,BattlePoint=..16}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=242,BattlePoint=..16}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=242,BattlePoint=16..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=242,BattlePoint=16..}] run give @s cobblemon:power_belt 1
execute as @a[scores={TriggerCommand=242,BattlePoint=16..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=242,BattlePoint=16..}] run scoreboard players remove @s BattlePoint 16

#Power Lens
execute as @a[scores={TriggerCommand=243,BattlePoint=..16}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=243,BattlePoint=..16}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=243,BattlePoint=16..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=243,BattlePoint=16..}] run give @s cobblemon:power_lens 1
execute as @a[scores={TriggerCommand=243,BattlePoint=16..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=243,BattlePoint=16..}] run scoreboard players remove @s BattlePoint 16

#Power Band
execute as @a[scores={TriggerCommand=244,BattlePoint=..16}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=244,BattlePoint=..16}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=244,BattlePoint=16..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=244,BattlePoint=16..}] run give @s cobblemon:power_band 1
execute as @a[scores={TriggerCommand=244,BattlePoint=16..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=244,BattlePoint=16..}] run scoreboard players remove @s BattlePoint 16

#Power Anklet
execute as @a[scores={TriggerCommand=245,BattlePoint=..16}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=245,BattlePoint=..16}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=245,BattlePoint=16..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=245,BattlePoint=16..}] run give @s cobblemon:power_anklet 1
execute as @a[scores={TriggerCommand=245,BattlePoint=16..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=245,BattlePoint=16..}] run scoreboard players remove @s BattlePoint 16

#Power Weight
execute as @a[scores={TriggerCommand=246,BattlePoint=..16}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=246,BattlePoint=..16}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=246,BattlePoint=16..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=246,BattlePoint=16..}] run give @s cobblemon:power_weight 1
execute as @a[scores={TriggerCommand=246,BattlePoint=16..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=246,BattlePoint=16..}] run scoreboard players remove @s BattlePoint 16

#Toxic Orb
execute as @a[scores={TriggerCommand=247,BattlePoint=..16}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=247,BattlePoint=..16}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=247,BattlePoint=16..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=247,BattlePoint=16..}] run give @s cobblemon:toxic_orb 1
execute as @a[scores={TriggerCommand=247,BattlePoint=16..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=247,BattlePoint=16..}] run scoreboard players remove @s BattlePoint 16

#Flame Orb
execute as @a[scores={TriggerCommand=248,BattlePoint=..16}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=248,BattlePoint=..16}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=248,BattlePoint=16..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=248,BattlePoint=16..}] run give @s cobblemon:flame_orb 1
execute as @a[scores={TriggerCommand=248,BattlePoint=16..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=248,BattlePoint=16..}] run scoreboard players remove @s BattlePoint 16

#White Herb
execute as @a[scores={TriggerCommand=249,BattlePoint=..32}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=249,BattlePoint=..32}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=249,BattlePoint=32..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=249,BattlePoint=32..}] run give @s cobblemon:white_herb 1
execute as @a[scores={TriggerCommand=249,BattlePoint=32..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=249,BattlePoint=32..}] run scoreboard players remove @s BattlePoint 32

#Power Herb
execute as @a[scores={TriggerCommand=250,BattlePoint=..32}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=250,BattlePoint=..32}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=250,BattlePoint=32..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=250,BattlePoint=32..}] run give @s cobblemon:power_herb 1
execute as @a[scores={TriggerCommand=250,BattlePoint=32..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=250,BattlePoint=32..}] run scoreboard players remove @s BattlePoint 32

#Absorb Bulb
execute as @a[scores={TriggerCommand=251,BattlePoint=..32}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=251,BattlePoint=..32}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=251,BattlePoint=32..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=251,BattlePoint=32..}] run give @s cobblemon:absorb_bulb 1
execute as @a[scores={TriggerCommand=251,BattlePoint=32..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=251,BattlePoint=32..}] run scoreboard players remove @s BattlePoint 32

#Cell Battery
execute as @a[scores={TriggerCommand=252,BattlePoint=..32}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=252,BattlePoint=..32}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=252,BattlePoint=32..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=252,BattlePoint=32..}] run give @s cobblemon:cell_battery 1
execute as @a[scores={TriggerCommand=252,BattlePoint=32..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=252,BattlePoint=32..}] run scoreboard players remove @s BattlePoint 32

#Red Card
execute as @a[scores={TriggerCommand=253,BattlePoint=..32}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=253,BattlePoint=..32}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=253,BattlePoint=32..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=253,BattlePoint=32..}] run give @s cobblemon:red_card 1
execute as @a[scores={TriggerCommand=253,BattlePoint=32..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=253,BattlePoint=32..}] run scoreboard players remove @s BattlePoint 32

#Eject Button
execute as @a[scores={TriggerCommand=254,BattlePoint=..32}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=254,BattlePoint=..32}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=254,BattlePoint=32..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=254,BattlePoint=32..}] run give @s cobblemon:eject_button 1
execute as @a[scores={TriggerCommand=254,BattlePoint=32..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=254,BattlePoint=32..}] run scoreboard players remove @s BattlePoint 32

#Weakness Policy
execute as @a[scores={TriggerCommand=255,BattlePoint=..32}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=255,BattlePoint=..32}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=255,BattlePoint=32..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=255,BattlePoint=32..}] run give @s cobblemon:weakness_policy 1
execute as @a[scores={TriggerCommand=255,BattlePoint=32..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=255,BattlePoint=32..}] run scoreboard players remove @s BattlePoint 32

#Ring Target
execute as @a[scores={TriggerCommand=256,BattlePoint=..32}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=256,BattlePoint=..32}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=256,BattlePoint=32..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=256,BattlePoint=32..}] run give @s cobblemon:ring_target 1
execute as @a[scores={TriggerCommand=256,BattlePoint=32..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=256,BattlePoint=32..}] run scoreboard players remove @s BattlePoint 32

#Protector
execute as @a[scores={TriggerCommand=257,BattlePoint=..32}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=257,BattlePoint=..32}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=257,BattlePoint=32..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=257,BattlePoint=32..}] run give @s cobblemon:protector 1
execute as @a[scores={TriggerCommand=257,BattlePoint=32..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=257,BattlePoint=32..}] run scoreboard players remove @s BattlePoint 32

#Whipped Dream
execute as @a[scores={TriggerCommand=258,BattlePoint=..32}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=258,BattlePoint=..32}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=258,BattlePoint=32..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=258,BattlePoint=32..}] run give @s cobblemon:whipped_dream 1
execute as @a[scores={TriggerCommand=258,BattlePoint=32..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=258,BattlePoint=32..}] run scoreboard players remove @s BattlePoint 32

#Sachet
execute as @a[scores={TriggerCommand=259,BattlePoint=..32}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=259,BattlePoint=..32}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=259,BattlePoint=32..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=259,BattlePoint=32..}] run give @s cobblemon:sachet 1
execute as @a[scores={TriggerCommand=259,BattlePoint=32..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=259,BattlePoint=32..}] run scoreboard players remove @s BattlePoint 32

#Electirizer
execute as @a[scores={TriggerCommand=260,BattlePoint=..32}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=260,BattlePoint=..32}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=260,BattlePoint=32..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=260,BattlePoint=32..}] run give @s cobblemon:electirizer 1
execute as @a[scores={TriggerCommand=260,BattlePoint=32..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=260,BattlePoint=32..}] run scoreboard players remove @s BattlePoint 32

#Magmarizer
execute as @a[scores={TriggerCommand=261,BattlePoint=..32}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=261,BattlePoint=..32}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=261,BattlePoint=32..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=261,BattlePoint=32..}] run give @s cobblemon:magmarizer 1
execute as @a[scores={TriggerCommand=261,BattlePoint=32..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=261,BattlePoint=32..}] run scoreboard players remove @s BattlePoint 32

#Reaper Cloth
execute as @a[scores={TriggerCommand=262,BattlePoint=..32}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=262,BattlePoint=..32}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=262,BattlePoint=32..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=262,BattlePoint=32..}] run give @s cobblemon:reaper_cloth 1
execute as @a[scores={TriggerCommand=262,BattlePoint=32..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=262,BattlePoint=32..}] run scoreboard players remove @s BattlePoint 32

#Up-Grade
execute as @a[scores={TriggerCommand=263,BattlePoint=..32}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=263,BattlePoint=..32}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=263,BattlePoint=32..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=263,BattlePoint=32..}] run give @s cobblemon:upgrade 1
execute as @a[scores={TriggerCommand=263,BattlePoint=32..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=263,BattlePoint=32..}] run scoreboard players remove @s BattlePoint 32

#Dubious Disc
execute as @a[scores={TriggerCommand=264,BattlePoint=..32}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=264,BattlePoint=..32}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=264,BattlePoint=32..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=264,BattlePoint=32..}] run give @s cobblemon:dubious_disc 1
execute as @a[scores={TriggerCommand=264,BattlePoint=32..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=264,BattlePoint=32..}] run scoreboard players remove @s BattlePoint 32

#Wise Glasses
execute as @a[scores={TriggerCommand=265,BattlePoint=..48}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=265,BattlePoint=..48}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=265,BattlePoint=48..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=265,BattlePoint=48..}] run give @s cobblemon:wise_glasses 1
execute as @a[scores={TriggerCommand=265,BattlePoint=48..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=265,BattlePoint=48..}] run scoreboard players remove @s BattlePoint 48

#Choice Specs
execute as @a[scores={TriggerCommand=266,BattlePoint=..48}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=266,BattlePoint=..48}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=266,BattlePoint=48..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=266,BattlePoint=48..}] run give @s cobblemon:choice_specs 1
execute as @a[scores={TriggerCommand=266,BattlePoint=48..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=266,BattlePoint=48..}] run scoreboard players remove @s BattlePoint 48

#Scope Lens
execute as @a[scores={TriggerCommand=267,BattlePoint=..48}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=267,BattlePoint=..48}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=267,BattlePoint=48..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=267,BattlePoint=48..}] run give @s cobblemon:scope_lens 1
execute as @a[scores={TriggerCommand=267,BattlePoint=48..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=267,BattlePoint=48..}] run scoreboard players remove @s BattlePoint 48

#Zoom Lens
execute as @a[scores={TriggerCommand=268,BattlePoint=..48}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=268,BattlePoint=..48}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=268,BattlePoint=48..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=268,BattlePoint=48..}] run give @s cobblemon:zoom_lens 1
execute as @a[scores={TriggerCommand=268,BattlePoint=48..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=268,BattlePoint=48..}] run scoreboard players remove @s BattlePoint 48

#Wide Lens
execute as @a[scores={TriggerCommand=269,BattlePoint=..48}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=269,BattlePoint=..48}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=269,BattlePoint=48..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=269,BattlePoint=48..}] run give @s cobblemon:wide_lens 1
execute as @a[scores={TriggerCommand=269,BattlePoint=48..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=269,BattlePoint=48..}] run scoreboard players remove @s BattlePoint 48

#Muscle Band
execute as @a[scores={TriggerCommand=270,BattlePoint=..48}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=270,BattlePoint=..48}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=270,BattlePoint=48..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=270,BattlePoint=48..}] run give @s cobblemon:muscle_band 1
execute as @a[scores={TriggerCommand=270,BattlePoint=48..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=270,BattlePoint=48..}] run scoreboard players remove @s BattlePoint 48

#Focus Band
execute as @a[scores={TriggerCommand=271,BattlePoint=..48}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=271,BattlePoint=..48}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=271,BattlePoint=48..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=271,BattlePoint=48..}] run give @s cobblemon:focus_band 1
execute as @a[scores={TriggerCommand=271,BattlePoint=48..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=271,BattlePoint=48..}] run scoreboard players remove @s BattlePoint 48

#Choice Band
execute as @a[scores={TriggerCommand=272,BattlePoint=..48}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=272,BattlePoint=..48}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=272,BattlePoint=48..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=272,BattlePoint=48..}] run give @s cobblemon:choice_band 1
execute as @a[scores={TriggerCommand=272,BattlePoint=48..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=272,BattlePoint=48..}] run scoreboard players remove @s BattlePoint 48

#Choice Scarf
execute as @a[scores={TriggerCommand=273,BattlePoint=..48}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=273,BattlePoint=..48}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=273,BattlePoint=48..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=273,BattlePoint=48..}] run give @s cobblemon:choice_scarf 1
execute as @a[scores={TriggerCommand=273,BattlePoint=48..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=273,BattlePoint=48..}] run scoreboard players remove @s BattlePoint 48

#Assault Vest
execute as @a[scores={TriggerCommand=274,BattlePoint=..48}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=274,BattlePoint=..48}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=274,BattlePoint=48..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=274,BattlePoint=48..}] run give @s cobblemon:assault_vest 1
execute as @a[scores={TriggerCommand=274,BattlePoint=48..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=274,BattlePoint=48..}] run scoreboard players remove @s BattlePoint 48

#Focus Sash
execute as @a[scores={TriggerCommand=275,BattlePoint=..48}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=275,BattlePoint=..48}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=275,BattlePoint=48..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=275,BattlePoint=48..}] run give @s cobblemon:focus_sash 1
execute as @a[scores={TriggerCommand=275,BattlePoint=48..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=275,BattlePoint=48..}] run scoreboard players remove @s BattlePoint 48

#Razor Claw
execute as @a[scores={TriggerCommand=276,BattlePoint=..48}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=276,BattlePoint=..48}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=276,BattlePoint=48..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=276,BattlePoint=48..}] run give @s cobblemon:razor_claw 1
execute as @a[scores={TriggerCommand=276,BattlePoint=48..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=276,BattlePoint=48..}] run scoreboard players remove @s BattlePoint 48

#Razor Fang
execute as @a[scores={TriggerCommand=277,BattlePoint=..48}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=277,BattlePoint=..48}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=277,BattlePoint=48..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=277,BattlePoint=48..}] run give @s cobblemon:razor_fang 1
execute as @a[scores={TriggerCommand=277,BattlePoint=48..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=277,BattlePoint=48..}] run scoreboard players remove @s BattlePoint 48

#Bright Powder
execute as @a[scores={TriggerCommand=278,BattlePoint=..48}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=278,BattlePoint=..48}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=278,BattlePoint=48..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=278,BattlePoint=48..}] run give @s cobblemon:bright_powder 1
execute as @a[scores={TriggerCommand=278,BattlePoint=48..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=278,BattlePoint=48..}] run scoreboard players remove @s BattlePoint 48

#Life Orb
execute as @a[scores={TriggerCommand=279,BattlePoint=..48}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=279,BattlePoint=..48}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=279,BattlePoint=48..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=279,BattlePoint=48..}] run give @s cobblemon:life_orb 1
execute as @a[scores={TriggerCommand=279,BattlePoint=48..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=279,BattlePoint=48..}] run scoreboard players remove @s BattlePoint 48

#Iron Ball
execute as @a[scores={TriggerCommand=280,BattlePoint=..48}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=280,BattlePoint=..48}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=280,BattlePoint=48..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=280,BattlePoint=48..}] run give @s cobblemon:iron_ball 1
execute as @a[scores={TriggerCommand=280,BattlePoint=48..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=280,BattlePoint=48..}] run scoreboard players remove @s BattlePoint 48

#Air Balloon
execute as @a[scores={TriggerCommand=281,BattlePoint=..48}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=281,BattlePoint=..48}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=281,BattlePoint=48..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=281,BattlePoint=48..}] run give @s cobblemon:air_balloon 1
execute as @a[scores={TriggerCommand=281,BattlePoint=48..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=281,BattlePoint=48..}] run scoreboard players remove @s BattlePoint 48

#Binding Band
execute as @a[scores={TriggerCommand=282,BattlePoint=..48}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=282,BattlePoint=..48}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=282,BattlePoint=48..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=282,BattlePoint=48..}] run give @s cobblemon:binding_band 1
execute as @a[scores={TriggerCommand=282,BattlePoint=48..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=282,BattlePoint=48..}] run scoreboard players remove @s BattlePoint 48

#Safety Goggles
execute as @a[scores={TriggerCommand=283,BattlePoint=..48}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=283,BattlePoint=..48}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=283,BattlePoint=48..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=283,BattlePoint=48..}] run give @s cobblemon:safety_goggles 1
execute as @a[scores={TriggerCommand=283,BattlePoint=48..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=283,BattlePoint=48..}] run scoreboard players remove @s BattlePoint 48

#Rare Candy
execute as @a[scores={TriggerCommand=284,BattlePoint=..48}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=284,BattlePoint=..48}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=284,BattlePoint=48..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=284,BattlePoint=48..}] run give @s cobblemon:rare_candy 1
execute as @a[scores={TriggerCommand=284,BattlePoint=48..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=284,BattlePoint=48..}] run scoreboard players remove @s BattlePoint 48

#Ability Capsule
execute as @a[scores={TriggerCommand=285,BattlePoint=..200}] run tellraw @s {"text":"You don't have enough Battle Points for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=285,BattlePoint=..200}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=285,BattlePoint=200..}] run tellraw @s {"text":"You put the items in your inventory.","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=285,BattlePoint=200..}] run give @s cobblemon:ability_capsule 1
execute as @a[scores={TriggerCommand=285,BattlePoint=200..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=285,BattlePoint=200..}] run scoreboard players remove @s BattlePoint 200


#TMs not included, but numbers reserved
#286-297



#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Battle Chateau Writs

#WritofInvitation
execute as @a[scores={TriggerCommand=298,Money=..4999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=298,Money=..4999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=298,Money=5000..}] run tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] {"text":"A Writ of Invitation has been activated! A new Trainer appears twice as often (once every 3 minutes).","color":"white"}
execute as @a[scores={TriggerCommand=298,Money=5000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=298,Money=5000..}] run tag @e[x=-685,y=100,z=1384,dy=3,type=armor_stand] add WritofInvitation
execute as @a[scores={TriggerCommand=298,Money=5000..}] run scoreboard players add @e[x=-685,y=100,z=1384,dy=3,type=armor_stand] WritCD 7
execute as @a[scores={TriggerCommand=298,Money=5000..}] run scoreboard players remove @s Money 5000


#SilverWritofInvitation
execute as @a[scores={TriggerCommand=299,Money=..9999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=299,Money=..9999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=299,Money=10000..}] run tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] ["",{"text":"A ","color":"white"},{"text":"Silver Writ of Invitation","color":"gray"},{"text":" has been activated! ","color":"white"},{"text":"A new Trainer appears six times as often (once every minute). Writ may take a minute to take effect."}]
execute as @a[scores={TriggerCommand=299,Money=10000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=299,Money=10000..}] run tag @e[x=-683,y=100,z=1384,dy=3,type=armor_stand] add SilverWritofInv
execute as @a[scores={TriggerCommand=299,Money=10000..}] run scoreboard players add @e[x=-683,y=100,z=1384,dy=3,type=armor_stand] WritCD 7
execute as @a[scores={TriggerCommand=299,Money=10000..}] run scoreboard players remove @s Money 10000


#GoldWritofInvitation
execute as @a[scores={TriggerCommand=300,Money=..9999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=300,Money=..9999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=300,Money=10000..}] run tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] ["",{"text":"A ","color":"white"},{"text":"Gold Writ of Invitation","color":"gold"},{"text":" has been activated! ","color":"white"},{"text":"Battle winnings are now increased by 50%. Writ may take a minute to take effect."}]
execute as @a[scores={TriggerCommand=300,Money=10000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=300,Money=10000..}] run tag @e[x=-681,y=100,z=1384,dy=3,type=armor_stand] add GoldWritofInvitation
execute as @a[scores={TriggerCommand=300,Money=10000..}] run scoreboard players add @e[x=-681,y=100,z=1384,dy=3,type=armor_stand] WritCD 7
execute as @a[scores={TriggerCommand=300,Money=10000..}] run scoreboard players remove @s Money 10000


#WritofChallenge
execute as @a[scores={TriggerCommand=301,Money=..4999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=301,Money=..4999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=301,Money=5000..}] run tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] ["",{"text":"A ","color":"white"},{"text":"Writ of Challenge"},{"text":" has been activated! ","color":"white"},{"text":"Other trainer Pokémon levels are now increased by 5. Writ may take a minute to take effect."}]
execute as @a[scores={TriggerCommand=301,Money=5000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=301,Money=5000..}] run tag @e[x=-679,y=100,z=1384,dy=3,type=armor_stand] add WritofChallenge
execute as @a[scores={TriggerCommand=301,Money=5000..}] run scoreboard players add @e[x=-679,y=100,z=1384,dy=3,type=armor_stand] WritCD 7
execute as @a[scores={TriggerCommand=301,Money=5000..}] run scoreboard players remove @s Money 5000


#BlueWritofChallenge
execute as @a[scores={TriggerCommand=302,Money=..999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=302,Money=..999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=302,Money=1000..}] run tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] ["",{"text":"A ","color":"white"},{"text":"Blue Writ of Challenge","color":"blue"},{"text":" has been activated! ","color":"white"},{"text":"Other trainer Pokémon levels are now decreased by 10. Writ may take a minute to take effect."}]
execute as @a[scores={TriggerCommand=302,Money=1000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=302,Money=1000..}] run tag @e[x=-677,y=100,z=1384,dy=3,type=armor_stand] add BlueWritofChallenge
execute as @a[scores={TriggerCommand=302,Money=1000..}] run scoreboard players add @e[x=-677,y=100,z=1384,dy=3,type=armor_stand] WritCD 7
execute as @a[scores={TriggerCommand=302,Money=1000..}] run scoreboard players remove @s Money 1000


#RedWritofChallenge
execute as @a[scores={TriggerCommand=303,Money=..9999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=303,Money=..9999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=303,Money=10000..}] run tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] ["",{"text":"A ","color":"white"},{"text":"Red Writ of Challenge","color":"red"},{"text":" has been activated! ","color":"white"},{"text":"Other trainer Pokémon levels are now increased by 10. Writ may take a minute to take effect."}]
execute as @a[scores={TriggerCommand=303,Money=10000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=303,Money=10000..}] run tag @e[x=-675,y=100,z=1384,dy=3,type=armor_stand] add RedWritofChallenge
execute as @a[scores={TriggerCommand=303,Money=10000..}] run scoreboard players add @e[x=-675,y=100,z=1384,dy=3,type=armor_stand] WritCD 7
execute as @a[scores={TriggerCommand=303,Money=10000..}] run scoreboard players remove @s Money 10000


#BlackWritofChallenge
execute as @a[scores={TriggerCommand=304,Money=..29999}] run tellraw @s {"text":"You don't have enough money for that!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=304,Money=..29999}] run scoreboard players set @s TriggerCommand 0

execute as @a[scores={TriggerCommand=304,Money=30000..}] run tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] ["",{"text":"A ","color":"white"},{"text":"Black Writ of Challenge","color":"black"},{"text":" has been activated! ","color":"white"},{"text":"Other trainer Pokémon levels are now increased by 20. Writ may take a minute to take effect."}]
execute as @a[scores={TriggerCommand=304,Money=30000..}] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={TriggerCommand=304,Money=30000..}] run tag @e[x=-673,y=100,z=1384,dy=3,type=armor_stand] add BlackWritofChallenge
execute as @a[scores={TriggerCommand=304,Money=30000..}] run scoreboard players add @e[x=-673,y=100,z=1384,dy=3,type=armor_stand] WritCD 7
execute as @a[scores={TriggerCommand=304,Money=30000..}] run scoreboard players remove @s Money 30000

#Resets Cooldowns
execute as @s[scores={TriggerCommand=298..304}] run scoreboard players set @e[x=-687,y=100,z=1384,dy=3,type=armor_stand,scores={ChateauCD=1..}] ChateauCD 0

#Syncs Writs with sidebar
execute as @s[scores={TriggerCommand=298..304}] run scoreboard players operation Writ_of_Invitation Active_Writs = @e[x=-685,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] WritCD
execute as @s[scores={TriggerCommand=298..304}] run scoreboard players operation Silver_Writ_of_Invitation Active_Writs = @e[x=-683,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] WritCD
execute as @s[scores={TriggerCommand=298..304}] run scoreboard players operation Gold_Writ_of_Invitation Active_Writs = @e[x=-681,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] WritCD

execute as @s[scores={TriggerCommand=298..304}] run scoreboard players operation Writ_of_Challenge Active_Writs = @e[x=-679,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] WritCD
execute as @s[scores={TriggerCommand=298..304}] run scoreboard players operation Blue_Writ_of_Challenge Active_Writs = @e[x=-677,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] WritCD
execute as @s[scores={TriggerCommand=298..304}] run scoreboard players operation Red_Writ_of_Challenge Active_Writs = @e[x=-675,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] WritCD
execute as @s[scores={TriggerCommand=298..304}] run scoreboard players operation Black_Writ_of_Challenge Active_Writs = @e[x=-673,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] WritCD


#Sets sidebar Writ active scores
execute as @s[scores={TriggerCommand=298..304}] run execute as @e[x=-685,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run scoreboard players reset Writ_of_Invitation
execute as @s[scores={TriggerCommand=298..304}] run execute as @e[x=-683,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run scoreboard players reset Silver_Writ_of_Invitation
execute as @s[scores={TriggerCommand=298..304}] run execute as @e[x=-681,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run scoreboard players reset Gold_Writ_of_Invitation

execute as @s[scores={TriggerCommand=298..304}] run execute as @e[x=-679,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run scoreboard players reset Writ_of_Challenge
execute as @s[scores={TriggerCommand=298..304}] run execute as @e[x=-677,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run scoreboard players reset Blue_Writ_of_Challenge
execute as @s[scores={TriggerCommand=298..304}] run execute as @e[x=-675,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run scoreboard players reset Red_Writ_of_Challenge
execute as @s[scores={TriggerCommand=298..304}] run execute as @e[x=-673,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run scoreboard players reset Black_Writ_of_Challenge


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#If score is left behind, not to be used for longer store of data.
scoreboard players set @s TriggerCommand 0




#