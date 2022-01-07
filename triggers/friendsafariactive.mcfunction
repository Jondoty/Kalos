#Logic
#Person enters Friend Safari
#Person uses book to click which type they want
#Armor stands get tagged based on trainer codes collected
#Person gets a tellraw of types
#Person clicks on trainer
#Spawner is cloned in under the Safari
#They walk away into the building and the spawner is set to stone


#Safari Zone Coords @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54]

#Stand 1
#@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]

#Stand 2
#@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]

#Stand 3
#@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]

#Stand 4
#@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]


scoreboard players enable @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54] FriendSafari


tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FriendSafari=100}] add NormalActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FriendSafari=101}] add FireActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FriendSafari=102}] add FightingActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FriendSafari=103}] add WaterActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FriendSafari=104}] add FlyingActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FriendSafari=105}] add GrassActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FriendSafari=106}] add PoisonActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FriendSafari=107}] add ElectricActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FriendSafari=108}] add GroundActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FriendSafari=109}] add PsychicActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FriendSafari=110}] add RockActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FriendSafari=111}] add IceActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FriendSafari=112}] add BugActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FriendSafari=113}] add DragonActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FriendSafari=114}] add GhostActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FriendSafari=115}] add DarkActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FriendSafari=116}] add SteelActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FriendSafari=117}] add FairyActive




#Normal
#Names
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=NormalActive] run data modify entity @e[limit=1,x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Hiker Heike"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=NormalActive] run data modify entity @e[limit=1,x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Artist Georgia"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=NormalActive] run data modify entity @e[limit=1,x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Backpacker Joren"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=NormalActive] run data modify entity @e[limit=1,x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Artist Vincent"}

#Team when =0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSNormal1=0},tag=NormalActive] run team join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSNormal2=0},tag=NormalActive] run team join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSNormal3=0},tag=NormalActive] run team join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSNormal4=0},tag=NormalActive] run team join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSNormal1=1..},tag=NormalActive] run team join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSNormal2=1..},tag=NormalActive] run team join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSNormal3=1..},tag=NormalActive] run team join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSNormal4=1..},tag=NormalActive] run team join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=NormalActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 1"}},{"text":"] - Teddiursa, Loudred, Chansey\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 2"}},{"text":"] - Aipom, Kecleon, Ditto\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 3"}},{"text":"] - Dunsparce, Audino, Eevee\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 4"}},{"text":"] - Lillipup, Minccino, Smeargle"}]




#Fire
#Names
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FireActive] run data modify entity @e[limit=1,x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Hex Maniac Carrie"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FireActive] run data modify entity @e[limit=1,x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Ace Trainer Evan"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FireActive] run data modify entity @e[limit=1,x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Veteran Inga"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FireActive] run data modify entity @e[limit=1,x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Ace Trainer Michele"}

#Team when =0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFire1=0},tag=FireActive] run team join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFire2=0},tag=FireActive] run team join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFire3=0},tag=FireActive] run team join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFire4=0},tag=FireActive] run team join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFire1=1..},tag=FireActive] run team join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFire2=1..},tag=FireActive] run team join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFire3=1..},tag=FireActive] run team join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFire4=1..},tag=FireActive] run team join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FireActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 5"}},{"text":"] - Growlithe, Charmeleon, Ninetales\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 6"}},{"text":"] - Ponyta, Slugma, Braixen\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 7"}},{"text":"] - Magmar, Larvesta, Braixen\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 8"}},{"text":"] - Pansear, Pyroar, Fletchinder"}]





#Fighting
#Names
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FightingActive] run data modify entity @e[limit=1,x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Ace Trainer Adelbert"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FightingActive] run data modify entity @e[limit=1,x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Battle Girl Andrea"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FightingActive] run data modify entity @e[limit=1,x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Battle Girl Gabrielle"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FightingActive] run data modify entity @e[limit=1,x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Black Belt Igor"}

#Team when =0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFighting1=0},tag=FightingActive] run team join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFighting2=0},tag=FightingActive] run team join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFighting3=0},tag=FightingActive] run team join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFighting4=0},tag=FightingActive] run team join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFighting1=1..},tag=FightingActive] run team join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFighting2=1..},tag=FightingActive] run team join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFighting3=1..},tag=FightingActive] run team join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFighting4=1..},tag=FightingActive] run team join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FightingActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 9"}},{"text":"] - Mankey, Throh, Tyrogue\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 10"}},{"text":"] - Machoke, Sawk, Breloom\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 11"}},{"text":"] - Meditite, Pancham, Hariyama\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 12"}},{"text":"] - Mienfoo, Pancham, Riolu"}]





#Water
#Names
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=WaterActive] run data modify entity @e[limit=1,x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Swimmer Ramses"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=WaterActive] run data modify entity @e[limit=1,x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Fisherman Murray"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=WaterActive] run data modify entity @e[limit=1,x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Pokémon Ranger Silas"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=WaterActive] run data modify entity @e[limit=1,x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Schoolboy Brighton"}

#Team when =0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSWater1=0},tag=WaterActive] run team join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSWater2=0},tag=WaterActive] run team join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSWater3=0},tag=WaterActive] run team join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSWater4=0},tag=WaterActive] run team join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSWater1=1..},tag=WaterActive] run team join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSWater2=1..},tag=WaterActive] run team join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSWater3=1..},tag=WaterActive] run team join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSWater4=1..},tag=WaterActive] run team join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=WaterActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 13"}},{"text":"] - Krabby, Wartortle, Poliwhirl\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 14"}},{"text":"] - Octillery, Gyarados, Azumarill\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 15"}},{"text":"] - Bibarel, Quagsire, Frogadier\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 16"}},{"text":"] - Panpour, Floatzel, Frogadier"}]





#Flying
#Names
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FlyingActive] run data modify entity @e[limit=1,x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Swimmer Genevieve"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FlyingActive] run data modify entity @e[limit=1,x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Backpacker Jerome"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FlyingActive] run data modify entity @e[limit=1,x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Schoolboy Rabbie"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FlyingActive] run data modify entity @e[limit=1,x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Battle Girl Hedvig"}

#Team when =0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFlying1=0},tag=FlyingActive] run team join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFlying2=0},tag=FlyingActive] run team join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFlying3=0},tag=FlyingActive] run team join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFlying4=0},tag=FlyingActive] run team join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFlying1=1..},tag=FlyingActive] run team join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFlying2=1..},tag=FlyingActive] run team join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFlying3=1..},tag=FlyingActive] run team join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFlying4=1..},tag=FlyingActive] run team join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FlyingActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 17"}},{"text":"] - Pidgey, Hoothoot, Tropius\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 18"}},{"text":"] - Spearow, Tranquill, Rufflet\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 19"}},{"text":"] - Farfetch'd, Woobat, Fletchinder\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 20"}},{"text":"] - Doduo, Swanna, Hawlucha"}]





#Grass
#Names
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GrassActive] run data modify entity @e[limit=1,x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Rising Star Rhys"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GrassActive] run data modify entity @e[limit=1,x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Preschooler Mia"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GrassActive] run data modify entity @e[limit=1,x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Sky Trainer Aveza"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GrassActive] run data modify entity @e[limit=1,x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Hex Maniac Josette"}

#Team when =0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSGrass1=0},tag=GrassActive] run team join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSGrass2=0},tag=GrassActive] run team join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSGrass3=0},tag=GrassActive] run team join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSGrass4=0},tag=GrassActive] run team join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSGrass1=1..},tag=GrassActive] run team join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSGrass2=1..},tag=GrassActive] run team join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSGrass3=1..},tag=GrassActive] run team join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSGrass4=1..},tag=GrassActive] run team join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GrassActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 21"}},{"text":"] - Oddish, Ivysaur, Maractus\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 22"}},{"text":"] - Tangela, Swadloon, Quilladin\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 23"}},{"text":"] - Sunkern, Petilil, Gogoat\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 24"}},{"text":"] - Pansage, Sawsbuck, Quilladin"}]





#Poison
#Names
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=PoisonActive] run data modify entity @e[limit=1,x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Punk Girl Jeanne"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=PoisonActive] run data modify entity @e[limit=1,x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Punk Guy Jacques"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=PoisonActive] run data modify entity @e[limit=1,x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Pokémon Ranger Ralf"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=PoisonActive] run data modify entity @e[limit=1,x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Fisherman Wharton"}

#Team when =0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSPoison1=0},tag=PoisonActive] run team join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSPoison2=0},tag=PoisonActive] run team join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSPoison3=0},tag=PoisonActive] run team join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSPoison4=0},tag=PoisonActive] run team join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSPoison1=1..},tag=PoisonActive] run team join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSPoison2=1..},tag=PoisonActive] run team join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSPoison3=1..},tag=PoisonActive] run team join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSPoison4=1..},tag=PoisonActive] run team join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=PoisonActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 25"}},{"text":"] - Kakuna, Venomoth, Muk\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 26"}},{"text":"] - Gloom, Ariados, Drapion\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 27"}},{"text":"] - Cascoon, Swalot, Toxicroak\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 28"}},{"text":"] - Seviper, Garbodor, Whirlipede"}]





#Electric
#Names
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=ElectricActive] run data modify entity @e[limit=1,x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Swimmer Isla"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=ElectricActive] run data modify entity @e[limit=1,x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Hiker Orestes"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=ElectricActive] run data modify entity @e[limit=1,x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Poke Fan Gabe"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=ElectricActive] run data modify entity @e[limit=1,x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Sky Trainer Yvette"}

#Team when =0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSElectric1=0},tag=ElectricActive] run team join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSElectric2=0},tag=ElectricActive] run team join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSElectric3=0},tag=ElectricActive] run team join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSElectric4=0},tag=ElectricActive] run team join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSElectric1=1..},tag=ElectricActive] run team join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSElectric2=1..},tag=ElectricActive] run team join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSElectric3=1..},tag=ElectricActive] run team join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSElectric4=1..},tag=ElectricActive] run team join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=ElectricActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 29"}},{"text":"] - Electrode, Pikachu, Manectric\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 30"}},{"text":"] - Pachirisu, Electabuzz, Luxio\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 31"}},{"text":"] - Emolga, Stunfisk, Zebstrika\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 32"}},{"text":"] - Dedenne, Helioptile, Galvantula"}]





#Ground
#Names
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GroundActive] run data modify entity @e[limit=1,x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Fisherman Seward"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GroundActive] run data modify entity @e[limit=1,x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Ace Trainer Neil"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GroundActive] run data modify entity @e[limit=1,x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Hiker Aaron"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GroundActive] run data modify entity @e[limit=1,x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Hiker Ross"}

#Team when =0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSGround1=0},tag=GroundActive] run team join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSGround2=0},tag=GroundActive] run team join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSGround3=0},tag=GroundActive] run team join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSGround4=0},tag=GroundActive] run team join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSGround1=1..},tag=GroundActive] run team join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSGround2=1..},tag=GroundActive] run team join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSGround3=1..},tag=GroundActive] run team join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSGround4=1..},tag=GroundActive] run team join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GroundActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 33"}},{"text":"] - Sandshrew, Dugtrio, Gastrodon\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 34"}},{"text":"] - Wooper, Marowak, Palpitoad\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 35"}},{"text":"] - Phanpy, Nincada, Diggersby\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 36"}},{"text":"] - Trapinch, Camerupt, Diggersby"}]





#Psychic
#Names
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=PsychicActive] run data modify entity @e[limit=1,x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Swimmer Romy"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=PsychicActive] run data modify entity @e[limit=1,x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Psychic Robert"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=PsychicActive] run data modify entity @e[limit=1,x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Psychic William"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=PsychicActive] run data modify entity @e[limit=1,x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Psychic Emanuel"}

#Team when =0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSPsychic1=0},tag=PsychicActive] run team join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSPsychic2=0},tag=PsychicActive] run team join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSPsychic3=0},tag=PsychicActive] run team join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSPsychic4=0},tag=PsychicActive] run team join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSPsychic1=1..},tag=PsychicActive] run team join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSPsychic2=1..},tag=PsychicActive] run team join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSPsychic3=1..},tag=PsychicActive] run team join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSPsychic4=1..},tag=PsychicActive] run team join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=PsychicActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 37"}},{"text":"] - Abra, Wobbuffet, Xatu\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 38"}},{"text":"] - Drowzee, Sigilyph, Girafarig\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 39"}},{"text":"] - Grumpig, Espurr, Gothorita\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 40"}},{"text":"] - Munna, Espurr, Duosion"}]





#Rock
#Names
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=RockActive] run data modify entity @e[limit=1,x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Worker Narek"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=RockActive] run data modify entity @e[limit=1,x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Hiker Alain"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=RockActive] run data modify entity @e[limit=1,x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Hiker Delmon"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=RockActive] run data modify entity @e[limit=1,x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Veteran Louis"}

#Team when =0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSRock1=0},tag=RockActive] run team join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSRock2=0},tag=RockActive] run team join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSRock3=0},tag=RockActive] run team join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSRock4=0},tag=RockActive] run team join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSRock1=1..},tag=RockActive] run team join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSRock2=1..},tag=RockActive] run team join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSRock3=1..},tag=RockActive] run team join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSRock4=1..},tag=RockActive] run team join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=RockActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 41"}},{"text":"] - Nosepass, Onix, Barbaracle\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 42"}},{"text":"] - Boldore, Magcargo, Shuckle\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 43"}},{"text":"] - Dwebble, Corsola, Rhydon\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 44"}},{"text":"] - Dwebble, Pupitar, Barbaracle"}]





#Ice
#Names
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=IceActive] run data modify entity @e[limit=1,x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Ace Trainer Shannon"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=IceActive] run data modify entity @e[limit=1,x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Sky Trainer Era"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=IceActive] run data modify entity @e[limit=1,x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Pokémon Ranger Shinobu"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=IceActive] run data modify entity @e[limit=1,x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Fisherman Shad"}

#Team when =0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSIce1=0},tag=IceActive] run team join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSIce2=0},tag=IceActive] run team join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSIce3=0},tag=IceActive] run team join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSIce4=0},tag=IceActive] run team join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSIce1=1..},tag=IceActive] run team join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSIce2=1..},tag=IceActive] run team join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSIce3=1..},tag=IceActive] run team join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSIce4=1..},tag=IceActive] run team join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=IceActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 45"}},{"text":"] - Delibird, Sneasel, Dewgong\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 46"}},{"text":"] - Snorunt, Beartic, Cloyster\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 47"}},{"text":"] - Spheal, Bergmite, Lapras\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 48"}},{"text":"] - Snover, Bergmite, Piloswine"}]





#Bug
#Names
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=BugActive] run data modify entity @e[limit=1,x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Honeymooners Yuu & Ami"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=BugActive] run data modify entity @e[limit=1,x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Sky Trainer Orion"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=BugActive] run data modify entity @e[limit=1,x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Lass Lise"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=BugActive] run data modify entity @e[limit=1,x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Beauty Brigitte"}

#Team when =0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSBug1=0},tag=BugActive] run team join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSBug2=0},tag=BugActive] run team join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSBug3=0},tag=BugActive] run team join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSBug4=0},tag=BugActive] run team join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSBug1=1..},tag=BugActive] run team join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSBug2=1..},tag=BugActive] run team join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSBug3=1..},tag=BugActive] run team join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSBug4=1..},tag=BugActive] run team join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=BugActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 49"}},{"text":"] - Butterfree, Beautifly, Venomoth\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 50"}},{"text":"] - Paras, Masquerain, Pinsir\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 51"}},{"text":"] - Ledyba, Volbeat, Heracross\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 52"}},{"text":"] - Combee, Illumise, Vivillon"}]





#Dragon
#Names
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=DragonActive] run data modify entity @e[limit=1,x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Pokémon Ranger Nash"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=DragonActive] run data modify entity @e[limit=1,x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Pokémon Ranger Keith"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=DragonActive] run data modify entity @e[limit=1,x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Pokémon Ranger Bjorn"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=DragonActive] run data modify entity @e[limit=1,x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Backpacker Farid"}

#Team when =0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSDragon1=0},tag=DragonActive] run team join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSDragon2=0},tag=DragonActive] run team join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSDragon3=0},tag=DragonActive] run team join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSDragon4=0},tag=DragonActive] run team join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSDragon1=1..},tag=DragonActive] run team join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSDragon2=1..},tag=DragonActive] run team join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSDragon3=1..},tag=DragonActive] run team join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSDragon4=1..},tag=DragonActive] run team join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=DragonActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 53"}},{"text":"] - Gabite, Dragonair, Druddigon\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 54"}},{"text":"] - Gabite, Noibat, Sliggoo\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 55"}},{"text":"] - Fraxure, Noibat, Druddigon\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 56"}},{"text":"] - Fraxure, Shelgon, Sliggoo"}]





#Ghost
#Names
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GhostActive] run data modify entity @e[limit=1,x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Hex Maniac Anina"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GhostActive] run data modify entity @e[limit=1,x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Hex Maniac Osanna"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GhostActive] run data modify entity @e[limit=1,x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Hex Maniac Desdemona"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GhostActive] run data modify entity @e[limit=1,x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Hex Maniac Raziah"}

#Team when =0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSGhost1=0},tag=GhostActive] run team join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSGhost2=0},tag=GhostActive] run team join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSGhost3=0},tag=GhostActive] run team join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSGhost4=0},tag=GhostActive] run team join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSGhost1=1..},tag=GhostActive] run team join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSGhost2=1..},tag=GhostActive] run team join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSGhost3=1..},tag=GhostActive] run team join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSGhost4=1..},tag=GhostActive] run team join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GhostActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 57"}},{"text":"] - Shuppet, Pumpkaboo, Dusclops\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 58"}},{"text":"] - Lampent, Pumpkaboo, Drifblim\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 59"}},{"text":"] - Shuppet, Phantump, Spiritomb\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 60"}},{"text":"] - Lampent, Phantump, Golurk"}]





#Dark
#Names
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=DarkActive] run data modify entity @e[limit=1,x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Punk Girl Cecile"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=DarkActive] run data modify entity @e[limit=1,x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Punk Guy Sid"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=DarkActive] run data modify entity @e[limit=1,x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Fisherman Ewan"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=DarkActive] run data modify entity @e[limit=1,x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Ace Trainer Hilde"}

#Team when =0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSDark1=0},tag=DarkActive] run team join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSDark2=0},tag=DarkActive] run team join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSDark3=0},tag=DarkActive] run team join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSDark4=0},tag=DarkActive] run team join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSDark1=1..},tag=DarkActive] run team join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSDark2=1..},tag=DarkActive] run team join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSDark3=1..},tag=DarkActive] run team join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSDark4=1..},tag=DarkActive] run team join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=DarkActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 61"}},{"text":"] - Mightyena, Sneasel, Sableye\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 62"}},{"text":"] - Nuzleaf, Cacturne, Absol\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 63"}},{"text":"] - Pawniard, Crawdaunt, Liepard\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 64"}},{"text":"] - Vullaby, Sandile, Inkay"}]





#Steel
#Names
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=SteelActive] run data modify entity @e[limit=1,x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Worker Yusif"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=SteelActive] run data modify entity @e[limit=1,x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Ace Trainer Bence"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=SteelActive] run data modify entity @e[limit=1,x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Hiker Brent"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=SteelActive] run data modify entity @e[limit=1,x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Hiker Bergin"}

#Team when =0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSSteel1=0},tag=SteelActive] run team join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSSteel2=0},tag=SteelActive] run team join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSSteel3=0},tag=SteelActive] run team join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSSteel4=0},tag=SteelActive] run team join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSSteel1=1..},tag=SteelActive] run team join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSSteel2=1..},tag=SteelActive] run team join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSSteel3=1..},tag=SteelActive] run team join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSSteel4=1..},tag=SteelActive] run team join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=SteelActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 65"}},{"text":"] - Magneton, Forretress, Klefki\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 66"}},{"text":"] - Mawile, Skarmory, Bronzong\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 67"}},{"text":"] - Ferroseed, Metang, Excadrill\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 68"}},{"text":"] - Ferroseed, Klang, Klefki"}]





#Fairy
#Names
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FairyActive] run data modify entity @e[limit=1,x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Poké Fan Roisin"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FairyActive] run data modify entity @e[limit=1,x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Fairy Tale Girl Alice"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FairyActive] run data modify entity @e[limit=1,x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Roller Skater Jet"}
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FairyActive] run data modify entity @e[limit=1,x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Lass Sara"}

#Team when =0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFairy1=0},tag=FairyActive] run team join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFairy2=0},tag=FairyActive] run team join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFairy3=0},tag=FairyActive] run team join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFairy4=0},tag=FairyActive] run team join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFairy1=1..},tag=FairyActive] run team join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFairy2=1..},tag=FairyActive] run team join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFairy3=1..},tag=FairyActive] run team join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute as @a[limit=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FSFairy4=1..},tag=FairyActive] run team join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FairyActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 69"}},{"text":"] - Togepi, Jigglypuff, Clefairy\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 70"}},{"text":"] - Snubbull, Mawile, Floette Blue\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 71"}},{"text":"] - Kirlia, Spritzee, Floette Red\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 72"}},{"text":"] - Dedenne, Swirlix, Floette Yellow"}]






#Removes any previous tags
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=NormalActive] remove NormalActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FireActive] remove FireActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FightingActive] remove FightingActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=WaterActive] remove WaterActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FlyingActive] remove FlyingActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GrassActive] remove GrassActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=PoisonActive] remove PoisonActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=ElectricActive] remove ElectricActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GroundActive] remove GroundActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=PsychicActive] remove PsychicActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=RockActive] remove RockActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=IceActive] remove IceActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=BugActive] remove BugActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=DragonActive] remove DragonActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GhostActive] remove GhostActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=DarkActive] remove DarkActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=SteelActive] remove SteelActive
tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FairyActive] remove FairyActive


scoreboard players set @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,scores={FriendSafari=1..118}] FriendSafari 0
