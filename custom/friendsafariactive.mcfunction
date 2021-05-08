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


scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FriendSafari_min=100,score_FriendSafari=100] add NormalActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FriendSafari_min=101,score_FriendSafari=101] add FireActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FriendSafari_min=102,score_FriendSafari=102] add FightingActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FriendSafari_min=103,score_FriendSafari=103] add WaterActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FriendSafari_min=104,score_FriendSafari=104] add FlyingActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FriendSafari_min=105,score_FriendSafari=105] add GrassActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FriendSafari_min=106,score_FriendSafari=106] add PoisonActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FriendSafari_min=107,score_FriendSafari=107] add ElectricActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FriendSafari_min=108,score_FriendSafari=108] add GroundActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FriendSafari_min=109,score_FriendSafari=109] add PsychicActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FriendSafari_min=110,score_FriendSafari=110] add RockActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FriendSafari_min=111,score_FriendSafari=111] add IceActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FriendSafari_min=112,score_FriendSafari=112] add BugActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FriendSafari_min=113,score_FriendSafari=113] add DragonActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FriendSafari_min=114,score_FriendSafari=114] add GhostActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FriendSafari_min=115,score_FriendSafari=115] add DarkActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FriendSafari_min=116,score_FriendSafari=116] add SteelActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FriendSafari_min=117,score_FriendSafari=117] add FairyActive




#Normal
#Names
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=NormalActive] ~ ~ ~ /entitydata @e[x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Hiker Heike"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=NormalActive] ~ ~ ~ /entitydata @e[x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Artist Georgia"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=NormalActive] ~ ~ ~ /entitydata @e[x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Backpacker Joren"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=NormalActive] ~ ~ ~ /entitydata @e[x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Artist Vincent"}

#Team when =0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSNormal1=0,tag=NormalActive] ~ ~ ~ /scoreboard teams join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSNormal2=0,tag=NormalActive] ~ ~ ~ /scoreboard teams join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSNormal3=0,tag=NormalActive] ~ ~ ~ /scoreboard teams join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSNormal4=0,tag=NormalActive] ~ ~ ~ /scoreboard teams join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSNormal1_min=1,tag=NormalActive] ~ ~ ~ /scoreboard teams join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSNormal2_min=1,tag=NormalActive] ~ ~ ~ /scoreboard teams join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSNormal3_min=1,tag=NormalActive] ~ ~ ~ /scoreboard teams join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSNormal4_min=1,tag=NormalActive] ~ ~ ~ /scoreboard teams join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=NormalActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 1"}},{"text":"] - Teddiursa, Loudred, Chansey\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 2"}},{"text":"] - Aipom, Kecleon, Ditto\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 3"}},{"text":"] - Dunsparce, Audino, Eevee\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 4"}},{"text":"] - Lillipup, Minccino, Smeargle"}]




#Fire
#Names
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FireActive] ~ ~ ~ /entitydata @e[x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Hex Maniac Carrie"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FireActive] ~ ~ ~ /entitydata @e[x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Ace Trainer Evan"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FireActive] ~ ~ ~ /entitydata @e[x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Veteran Inga"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FireActive] ~ ~ ~ /entitydata @e[x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Ace Trainer Michele"}

#Team when =0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFire1=0,tag=FireActive] ~ ~ ~ /scoreboard teams join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFire2=0,tag=FireActive] ~ ~ ~ /scoreboard teams join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFire3=0,tag=FireActive] ~ ~ ~ /scoreboard teams join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFire4=0,tag=FireActive] ~ ~ ~ /scoreboard teams join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFire1_min=1,tag=FireActive] ~ ~ ~ /scoreboard teams join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFire2_min=1,tag=FireActive] ~ ~ ~ /scoreboard teams join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFire3_min=1,tag=FireActive] ~ ~ ~ /scoreboard teams join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFire4_min=1,tag=FireActive] ~ ~ ~ /scoreboard teams join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FireActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 5"}},{"text":"] - Growlithe, Charmeleon, Ninetales\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 6"}},{"text":"] - Ponyta, Slugma, Braixen\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 7"}},{"text":"] - Magmar, Larvesta, Braixen\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 8"}},{"text":"] - Pansear, Pyroar, Fletchinder"}]





#Fighting
#Names
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FightingActive] ~ ~ ~ /entitydata @e[x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Ace Trainer Adelbert"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FightingActive] ~ ~ ~ /entitydata @e[x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Battle Girl Andrea"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FightingActive] ~ ~ ~ /entitydata @e[x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Battle Girl Gabrielle"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FightingActive] ~ ~ ~ /entitydata @e[x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Black Belt Igor"}

#Team when =0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFighting1=0,tag=FightingActive] ~ ~ ~ /scoreboard teams join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFighting2=0,tag=FightingActive] ~ ~ ~ /scoreboard teams join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFighting3=0,tag=FightingActive] ~ ~ ~ /scoreboard teams join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFighting4=0,tag=FightingActive] ~ ~ ~ /scoreboard teams join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFighting1_min=1,tag=FightingActive] ~ ~ ~ /scoreboard teams join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFighting2_min=1,tag=FightingActive] ~ ~ ~ /scoreboard teams join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFighting3_min=1,tag=FightingActive] ~ ~ ~ /scoreboard teams join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFighting4_min=1,tag=FightingActive] ~ ~ ~ /scoreboard teams join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FightingActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 9"}},{"text":"] - Mankey, Throh, Tyrogue\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 10"}},{"text":"] - Machoke, Sawk, Breloom\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 11"}},{"text":"] - Meditite, Pancham, Hariyama\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 12"}},{"text":"] - Mienfoo, Pancham, Riolu"}]





#Water
#Names
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=WaterActive] ~ ~ ~ /entitydata @e[x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Swimmer Ramses"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=WaterActive] ~ ~ ~ /entitydata @e[x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Fisherman Murray"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=WaterActive] ~ ~ ~ /entitydata @e[x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Pokémon Ranger Silas"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=WaterActive] ~ ~ ~ /entitydata @e[x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Schoolboy Brighton"}

#Team when =0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSWater1=0,tag=WaterActive] ~ ~ ~ /scoreboard teams join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSWater2=0,tag=WaterActive] ~ ~ ~ /scoreboard teams join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSWater3=0,tag=WaterActive] ~ ~ ~ /scoreboard teams join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSWater4=0,tag=WaterActive] ~ ~ ~ /scoreboard teams join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSWater1_min=1,tag=WaterActive] ~ ~ ~ /scoreboard teams join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSWater2_min=1,tag=WaterActive] ~ ~ ~ /scoreboard teams join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSWater3_min=1,tag=WaterActive] ~ ~ ~ /scoreboard teams join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSWater4_min=1,tag=WaterActive] ~ ~ ~ /scoreboard teams join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=WaterActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 13"}},{"text":"] - Krabby, Wartortle, Poliwhirl\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 14"}},{"text":"] - Octillery, Gyarados, Azumarill\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 15"}},{"text":"] - Bibarel, Quagsire, Frogadier\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 16"}},{"text":"] - Panpour, Floatzel, Frogadier"}]





#Flying
#Names
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FlyingActive] ~ ~ ~ /entitydata @e[x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Swimmer Genevieve"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FlyingActive] ~ ~ ~ /entitydata @e[x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Backpacker Jerome"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FlyingActive] ~ ~ ~ /entitydata @e[x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Schoolboy Rabbie"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FlyingActive] ~ ~ ~ /entitydata @e[x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Battle Girl Hedvig"}

#Team when =0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFlying1=0,tag=FlyingActive] ~ ~ ~ /scoreboard teams join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFlying2=0,tag=FlyingActive] ~ ~ ~ /scoreboard teams join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFlying3=0,tag=FlyingActive] ~ ~ ~ /scoreboard teams join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFlying4=0,tag=FlyingActive] ~ ~ ~ /scoreboard teams join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFlying1_min=1,tag=FlyingActive] ~ ~ ~ /scoreboard teams join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFlying2_min=1,tag=FlyingActive] ~ ~ ~ /scoreboard teams join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFlying3_min=1,tag=FlyingActive] ~ ~ ~ /scoreboard teams join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFlying4_min=1,tag=FlyingActive] ~ ~ ~ /scoreboard teams join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FlyingActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 17"}},{"text":"] - Pidgey, Hoothoot, Tropius\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 18"}},{"text":"] - Spearow, Tranquill, Rufflet\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 19"}},{"text":"] - Farfetch'd, Woobat, Fletchinder\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 20"}},{"text":"] - Doduo, Swanna, Hawlucha"}]





#Grass
#Names
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GrassActive] ~ ~ ~ /entitydata @e[x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Rising Star Rhys"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GrassActive] ~ ~ ~ /entitydata @e[x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Preschooler Mia"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GrassActive] ~ ~ ~ /entitydata @e[x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Sky Trainer Aveza"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GrassActive] ~ ~ ~ /entitydata @e[x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Hex Maniac Josette"}

#Team when =0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSGrass1=0,tag=GrassActive] ~ ~ ~ /scoreboard teams join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSGrass2=0,tag=GrassActive] ~ ~ ~ /scoreboard teams join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSGrass3=0,tag=GrassActive] ~ ~ ~ /scoreboard teams join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSGrass4=0,tag=GrassActive] ~ ~ ~ /scoreboard teams join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSGrass1_min=1,tag=GrassActive] ~ ~ ~ /scoreboard teams join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSGrass2_min=1,tag=GrassActive] ~ ~ ~ /scoreboard teams join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSGrass3_min=1,tag=GrassActive] ~ ~ ~ /scoreboard teams join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSGrass4_min=1,tag=GrassActive] ~ ~ ~ /scoreboard teams join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GrassActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 21"}},{"text":"] - Oddish, Ivysaur, Maractus\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 22"}},{"text":"] - Tangela, Swadloon, Quilladin\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 23"}},{"text":"] - Sunkern, Petilil, Gogoat\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 24"}},{"text":"] - Pansage, Sawsbuck, Quilladin"}]





#Poison
#Names
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=PoisonActive] ~ ~ ~ /entitydata @e[x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Punk Girl Jeanne"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=PoisonActive] ~ ~ ~ /entitydata @e[x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Punk Guy Jacques"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=PoisonActive] ~ ~ ~ /entitydata @e[x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Pokémon Ranger Ralf"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=PoisonActive] ~ ~ ~ /entitydata @e[x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Fisherman Wharton"}

#Team when =0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSPoison1=0,tag=PoisonActive] ~ ~ ~ /scoreboard teams join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSPoison2=0,tag=PoisonActive] ~ ~ ~ /scoreboard teams join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSPoison3=0,tag=PoisonActive] ~ ~ ~ /scoreboard teams join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSPoison4=0,tag=PoisonActive] ~ ~ ~ /scoreboard teams join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSPoison1_min=1,tag=PoisonActive] ~ ~ ~ /scoreboard teams join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSPoison2_min=1,tag=PoisonActive] ~ ~ ~ /scoreboard teams join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSPoison3_min=1,tag=PoisonActive] ~ ~ ~ /scoreboard teams join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSPoison4_min=1,tag=PoisonActive] ~ ~ ~ /scoreboard teams join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=PoisonActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 25"}},{"text":"] - Kakuna, Venomoth, Muk\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 26"}},{"text":"] - Gloom, Ariados, Drapion\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 27"}},{"text":"] - Cascoon, Swalot, Toxicroak\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 28"}},{"text":"] - Seviper, Garbodor, Whirlipede"}]





#Electric
#Names
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=ElectricActive] ~ ~ ~ /entitydata @e[x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Swimmer Isla"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=ElectricActive] ~ ~ ~ /entitydata @e[x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Hiker Orestes"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=ElectricActive] ~ ~ ~ /entitydata @e[x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Poke Fan Gabe"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=ElectricActive] ~ ~ ~ /entitydata @e[x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Sky Trainer Yvette"}

#Team when =0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSElectric1=0,tag=ElectricActive] ~ ~ ~ /scoreboard teams join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSElectric2=0,tag=ElectricActive] ~ ~ ~ /scoreboard teams join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSElectric3=0,tag=ElectricActive] ~ ~ ~ /scoreboard teams join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSElectric4=0,tag=ElectricActive] ~ ~ ~ /scoreboard teams join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSElectric1_min=1,tag=ElectricActive] ~ ~ ~ /scoreboard teams join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSElectric2_min=1,tag=ElectricActive] ~ ~ ~ /scoreboard teams join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSElectric3_min=1,tag=ElectricActive] ~ ~ ~ /scoreboard teams join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSElectric4_min=1,tag=ElectricActive] ~ ~ ~ /scoreboard teams join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=ElectricActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 29"}},{"text":"] - Electrode, Pikachu, Manectric\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 30"}},{"text":"] - Pachirisu, Electabuzz, Luxio\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 31"}},{"text":"] - Emolga, Stunfisk, Zebstrika\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 32"}},{"text":"] - Dedenne, Helioptile, Galvantula"}]





#Ground
#Names
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GroundActive] ~ ~ ~ /entitydata @e[x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Fisherman Seward"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GroundActive] ~ ~ ~ /entitydata @e[x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Ace Trainer Neil"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GroundActive] ~ ~ ~ /entitydata @e[x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Hiker Aaron"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GroundActive] ~ ~ ~ /entitydata @e[x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Hiker Ross"}

#Team when =0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSGround1=0,tag=GroundActive] ~ ~ ~ /scoreboard teams join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSGround2=0,tag=GroundActive] ~ ~ ~ /scoreboard teams join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSGround3=0,tag=GroundActive] ~ ~ ~ /scoreboard teams join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSGround4=0,tag=GroundActive] ~ ~ ~ /scoreboard teams join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSGround1_min=1,tag=GroundActive] ~ ~ ~ /scoreboard teams join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSGround2_min=1,tag=GroundActive] ~ ~ ~ /scoreboard teams join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSGround3_min=1,tag=GroundActive] ~ ~ ~ /scoreboard teams join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSGround4_min=1,tag=GroundActive] ~ ~ ~ /scoreboard teams join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GroundActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 33"}},{"text":"] - Sandshrew, Dugtrio, Gastrodon\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 34"}},{"text":"] - Wooper, Marowak, Palpitoad\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 35"}},{"text":"] - Phanpy, Nincada, Diggersby\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 36"}},{"text":"] - Trapinch, Camerupt, Diggersby"}]





#Psychic
#Names
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=PsychicActive] ~ ~ ~ /entitydata @e[x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Swimmer Romy"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=PsychicActive] ~ ~ ~ /entitydata @e[x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Psychic Robert"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=PsychicActive] ~ ~ ~ /entitydata @e[x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Psychic William"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=PsychicActive] ~ ~ ~ /entitydata @e[x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Psychic Emanuel"}

#Team when =0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSPsychic1=0,tag=PsychicActive] ~ ~ ~ /scoreboard teams join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSPsychic2=0,tag=PsychicActive] ~ ~ ~ /scoreboard teams join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSPsychic3=0,tag=PsychicActive] ~ ~ ~ /scoreboard teams join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSPsychic4=0,tag=PsychicActive] ~ ~ ~ /scoreboard teams join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSPsychic1_min=1,tag=PsychicActive] ~ ~ ~ /scoreboard teams join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSPsychic2_min=1,tag=PsychicActive] ~ ~ ~ /scoreboard teams join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSPsychic3_min=1,tag=PsychicActive] ~ ~ ~ /scoreboard teams join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSPsychic4_min=1,tag=PsychicActive] ~ ~ ~ /scoreboard teams join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=PsychicActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 37"}},{"text":"] - Abra, Wobbuffet, Xatu\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 38"}},{"text":"] - Drowzee, Sigilyph, Girafarig\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 39"}},{"text":"] - Grumpig, Espurr, Gothorita\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 40"}},{"text":"] - Munna, Espurr, Duosion"}]





#Rock
#Names
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=RockActive] ~ ~ ~ /entitydata @e[x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Worker Narek"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=RockActive] ~ ~ ~ /entitydata @e[x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Hiker Alain"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=RockActive] ~ ~ ~ /entitydata @e[x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Hiker Delmon"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=RockActive] ~ ~ ~ /entitydata @e[x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Veteran Louis"}

#Team when =0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSRock1=0,tag=RockActive] ~ ~ ~ /scoreboard teams join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSRock2=0,tag=RockActive] ~ ~ ~ /scoreboard teams join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSRock3=0,tag=RockActive] ~ ~ ~ /scoreboard teams join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSRock4=0,tag=RockActive] ~ ~ ~ /scoreboard teams join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSRock1_min=1,tag=RockActive] ~ ~ ~ /scoreboard teams join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSRock2_min=1,tag=RockActive] ~ ~ ~ /scoreboard teams join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSRock3_min=1,tag=RockActive] ~ ~ ~ /scoreboard teams join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSRock4_min=1,tag=RockActive] ~ ~ ~ /scoreboard teams join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=RockActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 41"}},{"text":"] - Nosepass, Onix, Barbaracle\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 42"}},{"text":"] - Boldore, Magcargo, Shuckle\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 43"}},{"text":"] - Dwebble, Corsola, Rhydon\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 44"}},{"text":"] - Dwebble, Pupitar, Barbaracle"}]





#Ice
#Names
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=IceActive] ~ ~ ~ /entitydata @e[x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Ace Trainer Shannon"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=IceActive] ~ ~ ~ /entitydata @e[x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Sky Trainer Era"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=IceActive] ~ ~ ~ /entitydata @e[x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Pokémon Ranger Shinobu"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=IceActive] ~ ~ ~ /entitydata @e[x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Fisherman Shad"}

#Team when =0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSIce1=0,tag=IceActive] ~ ~ ~ /scoreboard teams join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSIce2=0,tag=IceActive] ~ ~ ~ /scoreboard teams join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSIce3=0,tag=IceActive] ~ ~ ~ /scoreboard teams join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSIce4=0,tag=IceActive] ~ ~ ~ /scoreboard teams join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSIce1_min=1,tag=IceActive] ~ ~ ~ /scoreboard teams join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSIce2_min=1,tag=IceActive] ~ ~ ~ /scoreboard teams join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSIce3_min=1,tag=IceActive] ~ ~ ~ /scoreboard teams join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSIce4_min=1,tag=IceActive] ~ ~ ~ /scoreboard teams join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=IceActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 45"}},{"text":"] - Delibird, Sneasel, Dewgong\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 46"}},{"text":"] - Snorunt, Beartic, Cloyster\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 47"}},{"text":"] - Spheal, Bergmite, Lapras\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 48"}},{"text":"] - Snover, Bergmite, Piloswine"}]





#Bug
#Names
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=BugActive] ~ ~ ~ /entitydata @e[x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Honeymooners Yuu & Ami"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=BugActive] ~ ~ ~ /entitydata @e[x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Sky Trainer Orion"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=BugActive] ~ ~ ~ /entitydata @e[x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Lass Lise"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=BugActive] ~ ~ ~ /entitydata @e[x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Beauty Brigitte"}

#Team when =0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSBug1=0,tag=BugActive] ~ ~ ~ /scoreboard teams join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSBug2=0,tag=BugActive] ~ ~ ~ /scoreboard teams join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSBug3=0,tag=BugActive] ~ ~ ~ /scoreboard teams join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSBug4=0,tag=BugActive] ~ ~ ~ /scoreboard teams join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSBug1_min=1,tag=BugActive] ~ ~ ~ /scoreboard teams join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSBug2_min=1,tag=BugActive] ~ ~ ~ /scoreboard teams join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSBug3_min=1,tag=BugActive] ~ ~ ~ /scoreboard teams join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSBug4_min=1,tag=BugActive] ~ ~ ~ /scoreboard teams join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=BugActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 49"}},{"text":"] - Butterfree, Beautifly, Venomoth\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 50"}},{"text":"] - Paras, Masquerain, Pinsir\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 51"}},{"text":"] - Ledyba, Volbeat, Heracross\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 52"}},{"text":"] - Combee, Illumise, Vivillon"}]





#Dragon
#Names
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=DragonActive] ~ ~ ~ /entitydata @e[x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Pokémon Ranger Nash"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=DragonActive] ~ ~ ~ /entitydata @e[x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Pokémon Ranger Keith"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=DragonActive] ~ ~ ~ /entitydata @e[x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Pokémon Ranger Bjorn"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=DragonActive] ~ ~ ~ /entitydata @e[x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Backpacker Farid"}

#Team when =0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSDragon1=0,tag=DragonActive] ~ ~ ~ /scoreboard teams join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSDragon2=0,tag=DragonActive] ~ ~ ~ /scoreboard teams join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSDragon3=0,tag=DragonActive] ~ ~ ~ /scoreboard teams join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSDragon4=0,tag=DragonActive] ~ ~ ~ /scoreboard teams join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSDragon1_min=1,tag=DragonActive] ~ ~ ~ /scoreboard teams join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSDragon2_min=1,tag=DragonActive] ~ ~ ~ /scoreboard teams join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSDragon3_min=1,tag=DragonActive] ~ ~ ~ /scoreboard teams join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSDragon4_min=1,tag=DragonActive] ~ ~ ~ /scoreboard teams join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=DragonActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 53"}},{"text":"] - Gabite, Dragonair, Druddigon\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 54"}},{"text":"] - Gabite, Noibat, Sliggoo\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 55"}},{"text":"] - Fraxure, Noibat, Druddigon\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 56"}},{"text":"] - Fraxure, Shelgon, Sliggoo"}]





#Ghost
#Names
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GhostActive] ~ ~ ~ /entitydata @e[x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Hex Maniac Anina"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GhostActive] ~ ~ ~ /entitydata @e[x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Hex Maniac Osanna"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GhostActive] ~ ~ ~ /entitydata @e[x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Hex Maniac Desdemona"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GhostActive] ~ ~ ~ /entitydata @e[x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Hex Maniac Raziah"}

#Team when =0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSGhost1=0,tag=GhostActive] ~ ~ ~ /scoreboard teams join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSGhost2=0,tag=GhostActive] ~ ~ ~ /scoreboard teams join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSGhost3=0,tag=GhostActive] ~ ~ ~ /scoreboard teams join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSGhost4=0,tag=GhostActive] ~ ~ ~ /scoreboard teams join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSGhost1_min=1,tag=GhostActive] ~ ~ ~ /scoreboard teams join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSGhost2_min=1,tag=GhostActive] ~ ~ ~ /scoreboard teams join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSGhost3_min=1,tag=GhostActive] ~ ~ ~ /scoreboard teams join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSGhost4_min=1,tag=GhostActive] ~ ~ ~ /scoreboard teams join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GhostActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 57"}},{"text":"] - Shuppet, Pumpkaboo, Dusclops\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 58"}},{"text":"] - Lampent, Pumpkaboo, Drifblim\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 59"}},{"text":"] - Shuppet, Phantump, Spiritomb\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 60"}},{"text":"] - Lampent, Phantump, Golurk"}]





#Dark
#Names
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=DarkActive] ~ ~ ~ /entitydata @e[x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Punk Girl Cecile"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=DarkActive] ~ ~ ~ /entitydata @e[x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Punk Guy Sid"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=DarkActive] ~ ~ ~ /entitydata @e[x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Fisherman Ewan"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=DarkActive] ~ ~ ~ /entitydata @e[x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Ace Trainer Hilde"}

#Team when =0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSDark1=0,tag=DarkActive] ~ ~ ~ /scoreboard teams join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSDark2=0,tag=DarkActive] ~ ~ ~ /scoreboard teams join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSDark3=0,tag=DarkActive] ~ ~ ~ /scoreboard teams join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSDark4=0,tag=DarkActive] ~ ~ ~ /scoreboard teams join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSDark1_min=1,tag=DarkActive] ~ ~ ~ /scoreboard teams join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSDark2_min=1,tag=DarkActive] ~ ~ ~ /scoreboard teams join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSDark3_min=1,tag=DarkActive] ~ ~ ~ /scoreboard teams join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSDark4_min=1,tag=DarkActive] ~ ~ ~ /scoreboard teams join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=DarkActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 61"}},{"text":"] - Mightyena, Sneasel, Sableye\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 62"}},{"text":"] - Nuzleaf, Cacturne, Absol\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 63"}},{"text":"] - Pawniard, Crawdaunt, Liepard\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 64"}},{"text":"] - Vullaby, Sandile, Inkay"}]





#Steel
#Names
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=SteelActive] ~ ~ ~ /entitydata @e[x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Worker Yusif"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=SteelActive] ~ ~ ~ /entitydata @e[x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Ace Trainer Bence"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=SteelActive] ~ ~ ~ /entitydata @e[x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Hiker Brent"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=SteelActive] ~ ~ ~ /entitydata @e[x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Hiker Bergin"}

#Team when =0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSSteel1=0,tag=SteelActive] ~ ~ ~ /scoreboard teams join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSSteel2=0,tag=SteelActive] ~ ~ ~ /scoreboard teams join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSSteel3=0,tag=SteelActive] ~ ~ ~ /scoreboard teams join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSSteel4=0,tag=SteelActive] ~ ~ ~ /scoreboard teams join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSSteel1_min=1,tag=SteelActive] ~ ~ ~ /scoreboard teams join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSSteel2_min=1,tag=SteelActive] ~ ~ ~ /scoreboard teams join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSSteel3_min=1,tag=SteelActive] ~ ~ ~ /scoreboard teams join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSSteel4_min=1,tag=SteelActive] ~ ~ ~ /scoreboard teams join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=SteelActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 65"}},{"text":"] - Magneton, Forretress, Klefki\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 66"}},{"text":"] - Mawile, Skarmory, Bronzong\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 67"}},{"text":"] - Ferroseed, Metang, Excadrill\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 68"}},{"text":"] - Ferroseed, Klang, Klefki"}]





#Fairy
#Names
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FairyActive] ~ ~ ~ /entitydata @e[x=-687,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Poké Fan Roisin"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FairyActive] ~ ~ ~ /entitydata @e[x=-685,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Fairy Tale Girl Alice"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FairyActive] ~ ~ ~ /entitydata @e[x=-683,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Roller Skater Jet"}
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FairyActive] ~ ~ ~ /entitydata @e[x=-681,y=100,z=1390,dy=5,type=armor_stand] {CustomName:"Lass Sara"}

#Team when =0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFairy1=0,tag=FairyActive] ~ ~ ~ /scoreboard teams join red @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFairy2=0,tag=FairyActive] ~ ~ ~ /scoreboard teams join red @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFairy3=0,tag=FairyActive] ~ ~ ~ /scoreboard teams join red @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFairy4=0,tag=FairyActive] ~ ~ ~ /scoreboard teams join red @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Team when >0
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFairy1_min=1,tag=FairyActive] ~ ~ ~ /scoreboard teams join green @e[x=-687,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFairy2_min=1,tag=FairyActive] ~ ~ ~ /scoreboard teams join green @e[x=-685,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFairy3_min=1,tag=FairyActive] ~ ~ ~ /scoreboard teams join green @e[x=-683,y=100,z=1390,dy=5,type=armor_stand]
execute @a[c=1,x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FSFairy4_min=1,tag=FairyActive] ~ ~ ~ /scoreboard teams join green @e[x=-681,y=100,z=1390,dy=5,type=armor_stand]

#Tellraw
tellraw @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FairyActive] ["",{"text":"Which friend's Pokemon would you like to activate?\n["},{"selector":"@e[x=-687,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 69"}},{"text":"] - Togepi, Jigglypuff, Clefairy\n["},{"selector":"@e[x=-685,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 70"}},{"text":"] - Snubbull, Mawile, Floette Blue\n["},{"selector":"@e[x=-683,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 71"}},{"text":"] - Kirlia, Spritzee, Floette Red\n["},{"selector":"@e[x=-681,y=100,z=1390,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger FriendSafari set 72"}},{"text":"] - Dedenne, Swirlix, Floette Yellow"}]






#Removes any previous tags
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=NormalActive] remove NormalActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FireActive] remove FireActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FightingActive] remove FightingActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=WaterActive] remove WaterActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FlyingActive] remove FlyingActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GrassActive] remove GrassActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=PoisonActive] remove PoisonActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=ElectricActive] remove ElectricActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GroundActive] remove GroundActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=PsychicActive] remove PsychicActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=RockActive] remove RockActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=IceActive] remove IceActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=BugActive] remove BugActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=DragonActive] remove DragonActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=GhostActive] remove GhostActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=DarkActive] remove DarkActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=SteelActive] remove SteelActive
scoreboard players tag @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,tag=FairyActive] remove FairyActive


scoreboard players set @a[x=1286,y=110,z=1466,dx=42,dy=20,dz=54,score_FriendSafari_min=1,score_FriendSafari=118] FriendSafari 0
