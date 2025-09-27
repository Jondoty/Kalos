#Primary function that runs events in the Battle Chateau. 
#Runs once the player has picked a gender and has been introduced by Viola.
#This function runs via the MinuteCommands function, when the cooldown has reached 0
#The cooldown is influenced by Writs purchased, and can remove the Cooldown scores quicker if desired.


#------------

#Adds Skips for when necessary

#Adds skips to trainers next to Pokemon for no mid-battle tps
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={BattleStart=1..}] at @s run tag @e[distance=..5,type=cobblemon:npc] add Skip

#Adds skips to armor stands with trainers standing on them
execute as @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,type=cobblemon:npc] at @s run tag @e[distance=..2,name=trainer,type=armor_stand] add Skip


#------------

#Adds a Cooldown score to prevent same trainer or two from going back and fourth
scoreboard players set @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,tag=!Skip] ChateauCD 10

tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_cadette"},tag=!Skip] -1559 54 -85
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_camille"},tag=!Skip] -1557 54 -85
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_estelle"},tag=!Skip] -1555 54 -85
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_francine"},tag=!Skip] -1553 54 -85
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_maelys"},tag=!Skip] -1551 54 -85
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_maryline"},tag=!Skip] -1549 54 -85
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_renee"},tag=!Skip] -1547 54 -85
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_denis"},tag=!Skip] -1545 54 -85
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_evran"},tag=!Skip] -1543 54 -85
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_herisson"},tag=!Skip] -1541 54 -85
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_lyon"},tag=!Skip] -1539 54 -85
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_marseille"},tag=!Skip] -1537 54 -85
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_moray"},tag=!Skip] -1535 54 -85
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_orvault"},tag=!Skip] -1533 54 -85


tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_annelaure"},tag=!Skip] -1559 54 -79
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_ayla"},tag=!Skip] -1557 54 -79
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_beatrice"},tag=!Skip] -1555 54 -79
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_danielle"},tag=!Skip] -1553 54 -79
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_julia"},tag=!Skip] -1551 54 -79
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_mathilde"},tag=!Skip] -1549 54 -79
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_regine"},tag=!Skip] -1547 54 -79
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_ardmore"},tag=!Skip] -1545 54 -79
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_braine"},tag=!Skip] -1543 54 -79
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_cullinan"},tag=!Skip] -1541 54 -79
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_gourdon"},tag=!Skip] -1539 54 -79
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_herault"},tag=!Skip] -1537 54 -79
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_orloff"},tag=!Skip] -1535 54 -79
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_tolkowsky"},tag=!Skip] -1533 54 -79


tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_adele"},tag=!Skip] -1559 54 -73
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_anita"},tag=!Skip] -1557 54 -73
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_edith"},tag=!Skip] -1555 54 -73
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_eliane"},tag=!Skip] -1553 54 -73
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_ida"},tag=!Skip] -1551 54 -73
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_mira"},tag=!Skip] -1549 54 -73
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_patricia"},tag=!Skip] -1547 54 -73
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_glen"},tag=!Skip] -1545 54 -73
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_gruosi"},tag=!Skip] -1543 54 -73
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_lesotho"},tag=!Skip] -1541 54 -73
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_nassak"},tag=!Skip] -1539 54 -73
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_nizam"},tag=!Skip] -1537 54 -73
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_royan"},tag=!Skip] -1535 54 -73
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_sancy"},tag=!Skip] -1533 54 -73


tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_alyssa"},tag=!Skip] -1559 54 -67
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_amandine"},tag=!Skip] -1557 54 -67
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_amelie"},tag=!Skip] -1555 54 -67
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_fiona"},tag=!Skip] -1553 54 -67
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_keira"},tag=!Skip] -1551 54 -67
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_meriel"},tag=!Skip] -1549 54 -67
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_yolande"},tag=!Skip] -1547 54 -67
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_arran"},tag=!Skip] -1545 54 -67
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_caen"},tag=!Skip] -1543 54 -67
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_grisognono"},tag=!Skip] -1541 54 -67


tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_elise"},tag=!Skip] -1559 54 -55
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_ione"},tag=!Skip] -1557 54 -55
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_nicolette"},tag=!Skip] -1555 54 -55
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_odele"},tag=!Skip] -1553 54 -55
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_robin"},tag=!Skip] -1551 54 -55
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_rosalie"},tag=!Skip] -1549 54 -55
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_sabine"},tag=!Skip] -1547 54 -55
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_hennessy"},tag=!Skip] -1545 54 -55
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_lormont"},tag=!Skip] -1543 54 -55
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_turner"},tag=!Skip] -1541 54 -55




#/scoreboard players remove @e[x=-1561,y=52,z=-49,dx=27,dy=3,score_ChateauCD_min=1] ChateauCD 1

tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_viola"},tag=!Skip] -1559 54 -49
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_grant"},tag=!Skip] -1557 54 -49
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_korrina"},tag=!Skip] -1555 54 -49
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_ramos"},tag=!Skip] -1553 54 -49
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_clemont"},tag=!Skip] -1551 54 -49
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_valerie"},tag=!Skip] -1549 54 -49
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_olympia"},tag=!Skip] -1547 54 -49
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_wulfric"},tag=!Skip] -1545 54 -49


tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_viola_postgame"},tag=!Skip] -1559 54 -61
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_grant_postgame"},tag=!Skip] -1557 54 -61
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_korrina_postgame"},tag=!Skip] -1555 54 -61
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_ramos_postgame"},tag=!Skip] -1553 54 -61
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_clemont_postgame"},tag=!Skip] -1551 54 -61
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_valerie_postgame"},tag=!Skip] -1549 54 -61
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_olympia_postgame"},tag=!Skip] -1547 54 -61
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_wulfric_postgame"},tag=!Skip] -1545 54 -61


tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_malva"},tag=!Skip] -1543 54 -49
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_siebold"},tag=!Skip] -1541 54 -49
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_wikstrom"},tag=!Skip] -1539 54 -49
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_drasna"},tag=!Skip] -1537 54 -49
tp @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={NPCClass:"cobblemon:chateau_diantha"},tag=!Skip] -1535 54 -49




#------------

#tps in new trainers depending on player's rank

#Baron/Baroness
execute as @a[limit=1,x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={ChateauRank=1..5}] run tp @e[limit=1,sort=random,x=-1561,y=52,z=-85,dx=30,dy=3,type=cobblemon:npc] @e[limit=1,sort=random,x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,type=armor_stand,tag=!Skip]

#Viscount/Viscountess
execute as @p[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={ChateauRank=6..30}] run tp @e[limit=1,sort=random,x=-1561,y=52,z=-85,dx=30,dy=3,dz=6,type=cobblemon:npc] @e[limit=1,sort=random,x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,type=armor_stand,tag=!Skip]



#Marquises/Marchioness
execute as @p[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={ChateauRank=31..98}] run tp @e[limit=1,sort=random,x=-1561,y=52,z=-85,dx=30,dy=3,dz=12,type=cobblemon:npc] @e[limit=1,sort=random,x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,type=armor_stand,tag=!Skip]

#Duke/Duchess
execute as @p[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={ChateauRank=99..295}] run tp @e[limit=1,sort=random,x=-1561,y=52,z=-85,dx=30,dy=3,dz=18,type=cobblemon:npc] @e[limit=1,sort=random,x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,type=armor_stand,tag=!Skip]

#Duke/Duchess gym leaders without Diantha
execute as @p[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={ChateauRank=296..},tag=!GrandDuke] run tp @e[limit=1,sort=random,x=-1560,y=52,z=-49,dx=30,dy=3,type=cobblemon:npc,name=!"Grand Duchess Diantha"] @e[limit=1,sort=random,x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,type=armor_stand,tag=!Skip]

#With Diantha, after player has beaten other royal members
execute as @p[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={ChateauRank=296..,PokemonLeague=1..},tag=!GrandDuke] run execute as @s[tag=GDTrainer1] run execute as @s[tag=GDTrainer2] run execute as @s[tag=GDTrainer3] run execute as @s[tag=GDTrainer4] run execute as @s[tag=GDTrainer5] run execute as @s[tag=GDTrainer6] run execute as @s[tag=GDTrainer7] run execute as @s[tag=GDTrainer8] run execute as @s[tag=GDTrainer9] run execute as @s[tag=GDTrainer10] run execute as @s[tag=GDTrainer11] run execute as @s[tag=GDTrainer12] run tp @e[x=-1535,y=51,z=-49,dy=3,type=cobblemon:npc] @e[limit=1,sort=random,x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,type=armor_stand,tag=!Skip]


#Everything (active after player becomes the Grant Duke/Duchess)
execute as @p[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={ChateauRank=296..},tag=GrandDuke] run tp @e[limit=1,sort=random,x=-1560,y=52,z=-86,dx=28,dy=3,dz=38,type=cobblemon:npc] @e[limit=1,sort=random,x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,type=armor_stand,tag=!Skip]


#Tags armor stand for which trainer is spawning in
execute as @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,limit=1,type=cobblemon:npc,tag=!Skip,tag=Baron] run data merge entity @e[limit=1,x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:'{"text":"Baron"}'}
execute as @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,limit=1,type=cobblemon:npc,tag=!Skip,tag=Baroness] run data merge entity @e[limit=1,x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:'{"text":"Baroness"}'}

execute as @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,limit=1,type=cobblemon:npc,tag=!Skip,tag=Viscount] run data merge entity @e[limit=1,x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:'{"text":"Viscount"}'}
execute as @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,limit=1,type=cobblemon:npc,tag=!Skip,tag=Viscountess] run data merge entity @e[limit=1,x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:'{"text":"Viscountess"}'}

execute as @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,limit=1,type=cobblemon:npc,tag=!Skip,tag=Earl] run data merge entity @e[limit=1,x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:'{"text":"Earl"}'}
execute as @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,limit=1,type=cobblemon:npc,tag=!Skip,tag=Countess] run data merge entity @e[limit=1,x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:'{"text":"Countess"}'}

execute as @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,limit=1,type=cobblemon:npc,tag=!Skip,tag=Marquises] run data merge entity @e[limit=1,x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:'{"text":"Marquises"}'}
execute as @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,limit=1,type=cobblemon:npc,tag=!Skip,tag=Marchioness] run data merge entity @e[limit=1,x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:'{"text":"Marchioness"}'}

execute as @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,limit=1,type=cobblemon:npc,tag=!Skip,tag=Duke] run data merge entity @e[limit=1,x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:'{"text":"Duke"}'}
execute as @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,limit=1,type=cobblemon:npc,tag=!Skip,tag=Duchess] run data merge entity @e[limit=1,x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:'{"text":"Duchess"}'}

execute as @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,limit=1,type=cobblemon:npc,tag=!Skip,tag=GrandDuchess] run data merge entity @e[limit=1,x=-687,y=100,z=1384,dy=3,type=armor_stand] {CustomName:'{"text":"Grand Duchess"}'}


#Tags the location of the trainer depending on which armor stand they spawn to
execute as @e[x=-1569,y=64,z=-92,dx=9,dy=5,dz=33,type=armor_stand,tag=!Skip] at @s if entity @e[type=cobblemon:npc,distance=..5,tag=!Skip] run data merge entity @e[limit=1,x=-685,y=100,z=1384,dy=3,type=armor_stand] {CustomName:'{"text":"West hallway"}'}
execute as @e[x=-1505,y=63,z=-94,dx=10,dy=5,dz=35,type=armor_stand,tag=!Skip] at @s if entity @e[type=cobblemon:npc,distance=..5,tag=!Skip] run data merge entity @e[limit=1,x=-685,y=100,z=1384,dy=3,type=armor_stand] {CustomName:'{"text":"East hallway"}'}
execute as @e[x=-1512,y=65,z=-132,dx=25,dy=5,dz=27,type=armor_stand,tag=!Skip] at @s if entity @e[type=cobblemon:npc,distance=..5,tag=!Skip] run data merge entity @e[limit=1,x=-685,y=100,z=1384,dy=3,type=armor_stand] {CustomName:'{"text":"back room"}'}
execute as @e[x=-1547,y=64,z=-78,dx=28,dy=5,dz=10,type=armor_stand,tag=!Skip] at @s if entity @e[type=cobblemon:npc,distance=..5,tag=!Skip] run data merge entity @e[limit=1,x=-685,y=100,z=1384,dy=3,type=armor_stand] {CustomName:'{"text":"front entrance"}'}
execute as @e[x=-1587,y=65,z=-134,dx=25,dy=5,dz=26,type=armor_stand,tag=!Skip] at @s if entity @e[type=cobblemon:npc,distance=..5,tag=!Skip] run data merge entity @e[limit=1,x=-685,y=100,z=1384,dy=3,type=armor_stand] {CustomName:'{"text":"left room"}'}
execute as @e[x=-1544,y=65,z=-134,dx=25,dy=5,dz=26,type=armor_stand,tag=!Skip] at @s if entity @e[type=cobblemon:npc,distance=..5,tag=!Skip] run data merge entity @e[limit=1,x=-685,y=100,z=1384,dy=3,type=armor_stand] {CustomName:'{"text":"right room"}'}

tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,scores={ChateauRank=1..}] ["",{"text":"Now entering, "},{"selector":"@e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,limit=1,type=cobblemon:npc,tag=!Skip]"},{"text":", in the "},{"selector":"@e[x=-685,y=100,z=1384,dy=3,type=armor_stand]"},{"text":"."}]





















































#Removes Skip tags
#Chateau entities
tag @e[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,tag=Skip] remove Skip
tag @e[x=-687,y=100,z=1384,dy=3,type=armor_stand] remove Skip





#