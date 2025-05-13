#Function that is assigned a score from when NPCs are engaged with
#Depending on the number, can play pre-battle music and then battle music

#1-24, intro music for specific trainer classes

#1 - Ace Trainer
execute as @s[tag=!RadioOff,scores={BattleStart=1}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleStart=1}] run playsound introacetrainer record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleStart=1}] run scoreboard players set @s MusicCooldown 44

#2 - Black Belt
execute as @s[tag=!RadioOff,scores={BattleStart=2}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleStart=2}] run playsound introblackbelt record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleStart=2}] run scoreboard players set @s MusicCooldown 43

#3 - Butler
execute as @s[tag=!RadioOff,scores={BattleStart=3}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleStart=3}] run playsound introbutler record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleStart=3}] run scoreboard players set @s MusicCooldown 30

#4 - Team Flare
execute as @s[tag=!RadioOff,scores={BattleStart=4}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleStart=4}] run playsound introflare record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleStart=4}] run scoreboard players set @s MusicCooldown 67

#5 - Furisode
execute as @s[tag=!RadioOff,scores={BattleStart=5}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleStart=5}] run playsound introfurisode record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleStart=5}] run scoreboard players set @s MusicCooldown 63

#6 - Hiker
execute as @s[tag=!RadioOff,scores={BattleStart=6}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleStart=6}] run playsound introhiker record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleStart=6}] run scoreboard players set @s MusicCooldown 32

#7 - Honeymooners
execute as @s[tag=!RadioOff,scores={BattleStart=7}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleStart=7}] run playsound introhoneymooners record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleStart=7}] run scoreboard players set @s MusicCooldown 44

#8 - Lass
execute as @s[tag=!RadioOff,scores={BattleStart=8}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleStart=8}] run playsound introlass record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleStart=8}] run scoreboard players set @s MusicCooldown 25

#9 - Maid
execute as @s[tag=!RadioOff,scores={BattleStart=9}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleStart=9}] run playsound intromaid record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleStart=9}] run scoreboard players set @s MusicCooldown 42

#10 - PokeFan
execute as @s[tag=!RadioOff,scores={BattleStart=10}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleStart=10}] run playsound intropokefan record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleStart=10}] run scoreboard players set @s MusicCooldown 29

#11 - Psychic
execute as @s[tag=!RadioOff,scores={BattleStart=11}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleStart=11}] run playsound intropsychic record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleStart=11}] run scoreboard players set @s MusicCooldown 78

#12 - Punk Guy
execute as @s[tag=!RadioOff,scores={BattleStart=12}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleStart=12}] run playsound intropunkguy record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleStart=12}] run scoreboard players set @s MusicCooldown 65

#13 - Rollerskater
execute as @s[tag=!RadioOff,scores={BattleStart=13}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleStart=13}] run playsound introrollerskater record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleStart=13}] run scoreboard players set @s MusicCooldown 53

#14 - Swimmer F
execute as @s[tag=!RadioOff,scores={BattleStart=14}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleStart=14}] run playsound introswimmerf record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleStart=14}] run scoreboard players set @s MusicCooldown 33

#15 - Swimmer M
execute as @s[tag=!RadioOff,scores={BattleStart=15}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleStart=15}] run playsound introswimmerm record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleStart=15}] run scoreboard players set @s MusicCooldown 48

#16 - Tourist
execute as @s[tag=!RadioOff,scores={BattleStart=16}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleStart=16}] run playsound introtourist record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleStart=16}] run scoreboard players set @s MusicCooldown 36

#17 - Twins
execute as @s[tag=!RadioOff,scores={BattleStart=17}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleStart=17}] run playsound introtwins record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleStart=17}] run scoreboard players set @s MusicCooldown 26

#18 - Youngster
execute as @s[tag=!RadioOff,scores={BattleStart=18}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleStart=18}] run playsound introyoungster record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleStart=18}] run scoreboard players set @s MusicCooldown 26






#25-40, battle music

#25 - Elite Four battle
execute as @s[tag=!RadioOff,scores={BattleStart=25}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleStart=25}] run playsound elitefourbattle record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleStart=25}] run scoreboard players set @s MusicCooldown 386

#26 - Diantha Battle
execute as @s[tag=!RadioOff,scores={BattleStart=26}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleStart=26}] run playsound elitefourbattlechamp record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleStart=26}] run scoreboard players set @s MusicCooldown 259

#27 - Friends Battle
execute as @s[tag=!RadioOff,scores={BattleStart=27}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleStart=27}] run playsound friendbattle record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleStart=27}] run scoreboard players set @s MusicCooldown 198

#28 - Team Flare Grunts/Admins Battle
execute as @s[tag=!RadioOff,scores={BattleStart=28}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleStart=28}] run playsound flarebattle record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleStart=28}] run scoreboard players set @s MusicCooldown 165

#29 - Gym Leader Battle
execute as @s[tag=!RadioOff,scores={BattleStart=29}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleStart=29}] run playsound gymleaderbattle record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleStart=29}] run scoreboard players set @s MusicCooldown 362

#30 - Legendary battle
execute as @s[tag=!RadioOff,scores={BattleStart=30}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleStart=30}] run playsound legendarybattlexy record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleStart=30}] run scoreboard players set @s MusicCooldown 224

#31 - Lysandre Battle
execute as @s[tag=!RadioOff,scores={BattleStart=31}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleStart=31}] run playsound lysandrebattle record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleStart=31}] run scoreboard players set @s MusicCooldown 243

#32 - Mewtwo Battle
execute as @s[tag=!RadioOff,scores={BattleStart=32}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleStart=32}] run playsound mewtwobattle record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleStart=32}] run scoreboard players set @s MusicCooldown 259

#33 - Successor Battle (Korinna)
execute as @s[tag=!RadioOff,scores={BattleStart=33}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleStart=33}] run playsound successorbattle record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleStart=33}] run scoreboard players set @s MusicCooldown 316

#34 - Generic Trainer Battle
execute as @s[tag=!RadioOff,scores={BattleStart=34}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleStart=34}] run playsound trainerbattle record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleStart=34}] run scoreboard players set @s MusicCooldown 226

#35 - Wild Pokemon
execute as @s[tag=!RadioOff,scores={BattleStart=35}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleStart=35}] run playsound wildpokemonbattle record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleStart=35}] run scoreboard players set @s MusicCooldown 123

#36 - World Champ Battle Music
execute as @s[tag=!RadioOff,scores={BattleStart=36}] run stopsound @s record
execute as @s[tag=!RadioOff,scores={BattleStart=36}] run playsound worldchampionships record @s ~ ~ ~ 1 1 1
execute as @s[tag=!RadioOff,scores={BattleStart=36}] run scoreboard players set @s MusicCooldown 259






#Adds a cooldown tag to not loop until player hits MusicCooldown 0 again
tag @s add BattleMusicCooldown
























































#