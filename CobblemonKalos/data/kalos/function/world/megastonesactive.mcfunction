#Absolite, Kiloude City
#Moved to Serena Dialogue
execute at @e[name=Absolite,type=armor_stand,x=1229,y=119,z=1461,distance=..2] run particle dust_color_transition{from_color:[1,1,1],to_color:[1,1,1],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[scores={Absolite=0},distance=..30]
execute at @e[name=Absolite,type=armor_stand,x=1229,y=119,z=1461,distance=..2] run give @p[scores={Absolite=0},distance=..2] mega_showdown:absolite 1
execute at @e[name=Absolite,type=armor_stand,x=1229,y=119,z=1461,distance=..2] run playsound megastoneget ambient @p[scores={Absolite=0},distance=..2] ~ ~ ~ 100 1 1
execute at @e[name=Absolite,type=armor_stand,x=1229,y=119,z=1461,distance=..2] run tellraw @p[scores={Absolite=0},distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[name=Absolite,type=armor_stand,x=1229,y=119,z=1461,distance=..2] run scoreboard players set @p[scores={Absolite=0},distance=..2] Absolite 1


#Aggronite, Cyllage Gym
execute at @e[name=Aggronite,type=armor_stand,x=-1700,y=115,z=-1924,distance=..2] run particle dust_color_transition{from_color:[0.4,0.4,0.4],to_color:[0.7,0.7,0.7],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[scores={Aggronite=0},distance=..30]
execute at @e[name=Aggronite,type=armor_stand,x=-1700,y=115,z=-1924,distance=..2] run give @p[scores={Aggronite=0},distance=..2] mega_showdown:aggronite 1
execute at @e[name=Aggronite,type=armor_stand,x=-1700,y=115,z=-1924,distance=..2] run playsound megastoneget ambient @p[scores={Aggronite=0},distance=..2] ~ ~ ~ 100 1 1
execute at @e[name=Aggronite,type=armor_stand,x=-1700,y=115,z=-1924,distance=..2] run tellraw @p[scores={Aggronite=0},distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[name=Aggronite,type=armor_stand,x=-1700,y=115,z=-1924,distance=..2] run scoreboard players set @p[scores={Aggronite=0},distance=..2] Aggronite 1


#Alakazite, Reflection Cave
execute at @e[name=Alakazite,type=armor_stand,x=-1726,y=14,z=-339,distance=..2] run particle dust_color_transition{from_color:[0.89,0.8,0.34],to_color:[0.41,0.35,0.37],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[scores={Alakazite=0},distance=..30]
execute at @e[name=Alakazite,type=armor_stand,x=-1726,y=14,z=-339,distance=..2] run give @p[scores={Alakazite=0},distance=..2] mega_showdown:alakazite 1
execute at @e[name=Alakazite,type=armor_stand,x=-1726,y=14,z=-339,distance=..2] run playsound megastoneget ambient @p[scores={Alakazite=0},distance=..2] ~ ~ ~ 100 1 1
execute at @e[name=Alakazite,type=armor_stand,x=-1726,y=14,z=-339,distance=..2] run tellraw @p[scores={Alakazite=0},distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[name=Alakazite,type=armor_stand,x=-1726,y=14,z=-339,distance=..2] run scoreboard players set @p[scores={Alakazite=0},distance=..2] Alakazite 1


#Banettite, Chamber of Emptiness
execute at @e[name=Banettite,type=armor_stand,x=581,y=72,z=407,distance=..2] run particle dust_color_transition{from_color:[0.33,0.31,0.35],to_color:[0.93,0.79,0.44],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[scores={Banettite=0},distance=..30]
execute at @e[name=Banettite,type=armor_stand,x=581,y=72,z=407,distance=..2] run give @p[scores={Banettite=0},distance=..2] mega_showdown:banettite 1
execute at @e[name=Banettite,type=armor_stand,x=581,y=72,z=407,distance=..2] run playsound megastoneget ambient @p[scores={Banettite=0},distance=..2] ~ ~ ~ 100 1 1
execute at @e[name=Banettite,type=armor_stand,x=581,y=72,z=407,distance=..2] run tellraw @p[scores={Banettite=0},distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[name=Banettite,type=armor_stand,x=581,y=72,z=407,distance=..2] run scoreboard players set @p[scores={Banettite=0},distance=..2] Banettite 1


#Diancite, Reflection Cave Mirror World
execute at @e[name=Diancite,type=armor_stand,x=-1726,y=14,z=-465,distance=..2] run particle dust_color_transition{from_color:[0.88,0.76,0.8],to_color:[0.49,0.47,0.6],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[scores={Diancite=0},distance=..30]
execute at @e[name=Diancite,type=armor_stand,x=-1726,y=14,z=-465,distance=..2] run give @p[scores={Diancite=0},distance=..2] mega_showdown:diancite 1
execute at @e[name=Diancite,type=armor_stand,x=-1726,y=14,z=-465,distance=..2] run playsound megastoneget ambient @p[scores={Diancite=0},distance=..2] ~ ~ ~ 100 1 1
execute at @e[name=Diancite,type=armor_stand,x=-1726,y=14,z=-465,distance=..2] run tellraw @p[scores={Diancite=0},distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[name=Diancite,type=armor_stand,x=-1726,y=14,z=-465,distance=..2] run scoreboard players set @p[scores={Diancite=0},distance=..2] Diancite 1


#Garchompite, Victory Road
execute at @e[name=Garchompite,type=armor_stand,x=2157,y=175,z=2203,distance=..2] run particle dust_color_transition{from_color:[0.95,0.67,0.0],to_color:[0.33,0.32,0.51],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[scores={Garchompite=0},distance=..30]
execute at @e[name=Garchompite,type=armor_stand,x=2157,y=175,z=2203,distance=..2] run give @p[scores={Garchompite=0},distance=..2] mega_showdown:garchompite 1
execute at @e[name=Garchompite,type=armor_stand,x=2157,y=175,z=2203,distance=..2] run playsound megastoneget ambient @p[scores={Garchompite=0},distance=..2] ~ ~ ~ 100 1 1
execute at @e[name=Garchompite,type=armor_stand,x=2157,y=175,z=2203,distance=..2] run tellraw @p[scores={Garchompite=0},distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[name=Garchompite,type=armor_stand,x=2157,y=175,z=2203,distance=..2] run scoreboard players set @p[scores={Garchompite=0},distance=..2] Garchompite 1


#Gyaradosite, Couriway Town
execute at @e[name=Gyaradosite,type=armor_stand,x=1595,y=115,z=235,distance=..2] run particle dust_color_transition{from_color:[0.06,0.26,0.94],to_color:[0.84,0.13,0.19],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[scores={Gyaradosite=0},distance=..30]
execute at @e[name=Gyaradosite,type=armor_stand,x=1595,y=115,z=235,distance=..2] run give @p[scores={Gyaradosite=0},distance=..2] mega_showdown:gyaradosite 1
execute at @e[name=Gyaradosite,type=armor_stand,x=1595,y=115,z=235,distance=..2] run playsound megastoneget ambient @p[scores={Gyaradosite=0},distance=..2] ~ ~ ~ 100 1 1
execute at @e[name=Gyaradosite,type=armor_stand,x=1595,y=115,z=235,distance=..2] run tellraw @p[scores={Gyaradosite=0},distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[name=Gyaradosite,type=armor_stand,x=1595,y=115,z=235,distance=..2] run scoreboard players set @p[scores={Gyaradosite=0},distance=..2] Gyaradosite 1


#Heracronite, Santalune Forest
execute at @e[name=Heracronite,type=armor_stand,x=455,y=100,z=899,distance=..2] run particle dust_color_transition{from_color:[1.0,0.83,0.0],to_color:[0.0,0.38,0.67],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[scores={Heracronite=0},distance=..30]
execute at @e[name=Heracronite,type=armor_stand,x=455,y=100,z=899,distance=..2] run give @p[scores={Heracronite=0},distance=..2] mega_showdown:heracronite 1
execute at @e[name=Heracronite,type=armor_stand,x=455,y=100,z=899,distance=..2] run playsound megastoneget ambient @p[scores={Heracronite=0},distance=..2] ~ ~ ~ 100 1 1
execute at @e[name=Heracronite,type=armor_stand,x=455,y=100,z=899,distance=..2] run tellraw @p[scores={Heracronite=0},distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[name=Heracronite,type=armor_stand,x=455,y=100,z=899,distance=..2] run scoreboard players set @p[scores={Heracronite=0},distance=..2] Heracronite 1


#Houndoominite, Route 16
execute at @e[name=Houndoominite,type=armor_stand,x=526,y=108,z=-251,distance=..2] run particle dust_color_transition{from_color:[0.73,0.59,0.56],to_color:[0.07,0.11,0.12],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[scores={Houndoominite=0},distance=..30]
execute at @e[name=Houndoominite,type=armor_stand,x=526,y=108,z=-251,distance=..2] run give @p[scores={Houndoominite=0},distance=..2] mega_showdown:houndoominite 1
execute at @e[name=Houndoominite,type=armor_stand,x=526,y=108,z=-251,distance=..2] run playsound megastoneget ambient @p[scores={Houndoominite=0},distance=..2] ~ ~ ~ 100 1 1
execute at @e[name=Houndoominite,type=armor_stand,x=526,y=108,z=-251,distance=..2] run tellraw @p[scores={Houndoominite=0},distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[name=Houndoominite,type=armor_stand,x=526,y=108,z=-251,distance=..2] run scoreboard players set @p[scores={Houndoominite=0},distance=..2] Houndoominite 1


#Kangaskhanite, Glittering Cave
execute at @e[name=Kangaskhanite,type=armor_stand,x=-1440,y=148,z=485,distance=..2] run particle dust_color_transition{from_color:[0.5,0.38,0.38],to_color:[0.97,0.85,0.47],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[scores={Kangaskhanite=0},distance=..30]
execute at @e[name=Kangaskhanite,type=armor_stand,x=-1440,y=148,z=485,distance=..2] run give @p[scores={Kangaskhanite=0},distance=..2] mega_showdown:kangaskhanite 1
execute at @e[name=Kangaskhanite,type=armor_stand,x=-1440,y=148,z=485,distance=..2] run playsound megastoneget ambient @p[scores={Kangaskhanite=0},distance=..2] ~ ~ ~ 100 1 1
execute at @e[name=Kangaskhanite,type=armor_stand,x=-1440,y=148,z=485,distance=..2] run tellraw @p[scores={Kangaskhanite=0},distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[name=Kangaskhanite,type=armor_stand,x=-1440,y=148,z=485,distance=..2] run scoreboard players set @p[scores={Kangaskhanite=0},distance=..2] Kangaskhanite 1


#Manectite, Route 16
execute at @e[name=Manectite,type=armor_stand,x=489,y=108,z=-251,distance=..2] run particle dust_color_transition{from_color:[0.98,0.96,0.55],to_color:[0.36,0.71,0.84],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[scores={Manectite=0},distance=..30]
execute at @e[name=Manectite,type=armor_stand,x=489,y=108,z=-251,distance=..2] run give @p[scores={Manectite=0},distance=..2] mega_showdown:manectite 1
execute at @e[name=Manectite,type=armor_stand,x=489,y=108,z=-251,distance=..2] run playsound megastoneget ambient @p[scores={Manectite=0},distance=..2] ~ ~ ~ 100 1 1
execute at @e[name=Manectite,type=armor_stand,x=489,y=108,z=-251,distance=..2] run tellraw @p[scores={Manectite=0},distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[name=Manectite,type=armor_stand,x=489,y=108,z=-251,distance=..2] run scoreboard players set @p[scores={Manectite=0},distance=..2] Manectite 1


#Mawilite, Shabboneau Castle 2F
execute at @e[name=Mawilite,type=armor_stand,x=-1060,y=69,z=-155,distance=..2] run particle dust_color_transition{from_color:[0.95,0.75,0.85],to_color:[0.38,0.37,0.37],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[scores={Mawilite=0},distance=..30]
execute at @e[name=Mawilite,type=armor_stand,x=-1060,y=69,z=-155,distance=..2] run give @p[scores={Mawilite=0},distance=..2] mega_showdown:mawilite 1
execute at @e[name=Mawilite,type=armor_stand,x=-1060,y=69,z=-155,distance=..2] run playsound megastoneget ambient @p[scores={Mawilite=0},distance=..2] ~ ~ ~ 100 1 1
execute at @e[name=Mawilite,type=armor_stand,x=-1060,y=69,z=-155,distance=..2] run tellraw @p[scores={Mawilite=0},distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[name=Mawilite,type=armor_stand,x=-1060,y=69,z=-155,distance=..2] run scoreboard players set @p[scores={Mawilite=0},distance=..2] Mawilite 1


#Medichamite, Laverre City
execute at @e[name=Medichamite,type=armor_stand,x=-126,y=100,z=-1425,distance=..2] run particle dust_color_transition{from_color:[0.47,0.69,0.82],to_color:[0.75,0.13,0.41],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[scores={Medichamite=0},distance=..30]
execute at @e[name=Medichamite,type=armor_stand,x=-126,y=100,z=-1425,distance=..2] run give @p[scores={Medichamite=0},distance=..2] mega_showdown:medichamite 1
execute at @e[name=Medichamite,type=armor_stand,x=-126,y=100,z=-1425,distance=..2] run playsound megastoneget ambient @p[scores={Medichamite=0},distance=..2] ~ ~ ~ 100 1 1
execute at @e[name=Medichamite,type=armor_stand,x=-126,y=100,z=-1425,distance=..2] run tellraw @p[scores={Medichamite=0},distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[name=Medichamite,type=armor_stand,x=-126,y=100,z=-1425,distance=..2] run scoreboard players set @p[scores={Medichamite=0},distance=..2] Medichamite 1


#Mewtwonite_X, Unknown Dungeon
execute at @e[name=Mewtwonite_X,type=armor_stand,x=825,y=75,z=562,distance=..2] run particle dust_color_transition{from_color:[0.93,0.93,0.93],to_color:[0.73,0.6,0.71],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[scores={Mewtwonite_X=0},distance=..30]
execute at @e[name=Mewtwonite_X,type=armor_stand,x=825,y=75,z=562,distance=..2] run give @p[scores={Mewtwonite_X=0},distance=..2] mega_showdown:mewtwonite_x 1
execute at @e[name=Mewtwonite_X,type=armor_stand,x=825,y=75,z=562,distance=..2] run playsound megastoneget ambient @p[scores={Mewtwonite_X=0},distance=..2] ~ ~ ~ 100 1 1
execute at @e[name=Mewtwonite_X,type=armor_stand,x=825,y=75,z=562,distance=..2] run tellraw @p[scores={Mewtwonite_X=0},distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[name=Mewtwonite_X,type=armor_stand,x=825,y=75,z=562,distance=..2] run scoreboard players set @p[scores={Mewtwonite_X=0},distance=..2] Mewtwonite_X 1


#Mewtwonite_Y, Unknown Dungeon
execute at @e[name=Mewtwonite_Y,type=armor_stand,x=865,y=75,z=562,distance=..2] run particle dust_color_transition{from_color:[0.73,0.6,0.71],to_color:[0.94,0.88,0.93],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[scores={Mewtwonite_Y=0},distance=..30]
execute at @e[name=Mewtwonite_Y,type=armor_stand,x=865,y=75,z=562,distance=..2] run give @p[scores={Mewtwonite_Y=0},distance=..2] mega_showdown:mewtwonite_y 1
execute at @e[name=Mewtwonite_Y,type=armor_stand,x=865,y=75,z=562,distance=..2] run playsound megastoneget ambient @p[scores={Mewtwonite_Y=0},distance=..2] ~ ~ ~ 100 1 1
execute at @e[name=Mewtwonite_Y,type=armor_stand,x=865,y=75,z=562,distance=..2] run tellraw @p[scores={Mewtwonite_Y=0},distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[name=Mewtwonite_Y,type=armor_stand,x=865,y=75,z=562,distance=..2] run scoreboard players set @p[scores={Mewtwonite_Y=0},distance=..2] Mewtwonite_Y 1


#Pinsirite, Santalune Forest
execute at @e[name=Pinsirite,type=armor_stand,x=491,y=100,z=899,distance=..2] run particle dust_color_transition{from_color:[0.95,0.89,0.38],to_color:[0.73,0.6,0.53],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[scores={Pinsirite=0},distance=..30]
execute at @e[name=Pinsirite,type=armor_stand,x=491,y=100,z=899,distance=..2] run give @p[scores={Pinsirite=0},distance=..2] mega_showdown:pinsirite 1
execute at @e[name=Pinsirite,type=armor_stand,x=491,y=100,z=899,distance=..2] run playsound megastoneget ambient @p[scores={Pinsirite=0},distance=..2] ~ ~ ~ 100 1 1
execute at @e[name=Pinsirite,type=armor_stand,x=491,y=100,z=899,distance=..2] run tellraw @p[scores={Pinsirite=0},distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[name=Pinsirite,type=armor_stand,x=491,y=100,z=899,distance=..2] run scoreboard players set @p[scores={Pinsirite=0},distance=..2] Pinsirite 1


#Scizorite, Frost Cavern
execute at @e[name=Scizorite,type=armor_stand,x=664,y=85,z=-1371,distance=..2] run particle dust_color_transition{from_color:[0.78,0.9,0.98],to_color:[0.88,0.0,0.07],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[scores={Scizorite=0},distance=..30]
execute at @e[name=Scizorite,type=armor_stand,x=664,y=85,z=-1371,distance=..2] run give @p[scores={Scizorite=0},distance=..2] mega_showdown:scizorite 1
execute at @e[name=Scizorite,type=armor_stand,x=664,y=85,z=-1371,distance=..2] run playsound megastoneget ambient @p[scores={Scizorite=0},distance=..2] ~ ~ ~ 100 1 1
execute at @e[name=Scizorite,type=armor_stand,x=664,y=85,z=-1371,distance=..2] run tellraw @p[scores={Scizorite=0},distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[name=Scizorite,type=armor_stand,x=664,y=85,z=-1371,distance=..2] run scoreboard players set @p[scores={Scizorite=0},distance=..2] Scizorite 1


#Tyranitarite, Cyllage Gym
execute at @e[name=Tyranitarite,type=armor_stand,x=-1660,y=115,z=-1906,distance=..2] run particle dust_color_transition{from_color:[0.5,0.63,0.41],to_color:[0.25,0.25,0.25],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[scores={Tyranitarite=0},distance=..30]
execute at @e[name=Tyranitarite,type=armor_stand,x=-1660,y=115,z=-1906,distance=..2] run give @p[scores={Tyranitarite=0},distance=..2] mega_showdown:tyranitarite 1
execute at @e[name=Tyranitarite,type=armor_stand,x=-1660,y=115,z=-1906,distance=..2] run playsound megastoneget ambient @p[scores={Tyranitarite=0},distance=..2] ~ ~ ~ 100 1 1
execute at @e[name=Tyranitarite,type=armor_stand,x=-1660,y=115,z=-1906,distance=..2] run tellraw @p[scores={Tyranitarite=0},distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[name=Tyranitarite,type=armor_stand,x=-1660,y=115,z=-1906,distance=..2] run scoreboard players set @p[scores={Tyranitarite=0},distance=..2] Tyranitarite 1


#Gives advancement if you find every Mega Stone
advancement grant @a[scores={Aggronite=1..,Alakazite=1..,Banettite=1..,Diancite=1..,Garchompite=1..,Gyaradosite=1..,Heracronite=1..,Houndoominite=1..,Kangaskhanite=1..,Manectite=1..,Mawilite=1..,Medichamite=1..,Mewtwonite_X=1..,Mewtwonite_Y=1..,Pinsirite=1..,Scizorite=1..,Tyranitarite=1..}] only kalos:sidequests/mega3



#Custom ZA Mega Stones

#Raichu X, Santalune Forest
execute at @e[type=armor_stand,x=477,y=100,z=850,distance=..2] run particle dust_color_transition{from_color:[1.0,0.92,0.2],to_color:[1.0,0.55,0.05],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[tag=Dialogue163,tag=!RaichuniteX,distance=..30]
execute at @e[type=armor_stand,x=477,y=100,z=850,distance=..2] run give @p[tag=Dialogue163,tag=!RaichuniteX,distance=..2] mega_showdown:raichunite_x
execute at @e[type=armor_stand,x=477,y=100,z=850,distance=..2] run playsound megastoneget ambient @p[tag=Dialogue163,tag=!RaichuniteX,distance=..2] ~ ~ ~ 100 1 1
execute at @e[type=armor_stand,x=477,y=100,z=850,distance=..2] run tellraw @p[tag=Dialogue163,tag=!RaichuniteX,distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[type=armor_stand,x=477,y=100,z=850,distance=..2] run tag @p[tag=Dialogue163,tag=!RaichuniteX,distance=..2] add RaichuniteX

#Raichu Y, Santalune Forest
execute at @e[type=armor_stand,x=537,y=100,z=773,distance=..2] run particle dust_color_transition{from_color:[1.0,0.92,0.2],to_color:[1.0,0.55,0.05],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[tag=Dialogue163,tag=!RaichuniteY,distance=..30]
execute at @e[type=armor_stand,x=537,y=100,z=773,distance=..2] run give @p[tag=Dialogue163,tag=!RaichuniteY,distance=..2] mega_showdown:raichunite_y
execute at @e[type=armor_stand,x=537,y=100,z=773,distance=..2] run playsound megastoneget ambient @p[tag=Dialogue163,tag=!RaichuniteY,distance=..2] ~ ~ ~ 100 1 1
execute at @e[type=armor_stand,x=537,y=100,z=773,distance=..2] run tellraw @p[tag=Dialogue163,tag=!RaichuniteY,distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[type=armor_stand,x=537,y=100,z=773,distance=..2] run tag @p[tag=Dialogue163,tag=!RaichuniteY,distance=..2] add RaichuniteY

#Victreebel, Route 14
execute at @e[type=armor_stand,x=-218,y=100,z=-1240,distance=..2] run particle dust_color_transition{from_color:[0.3,0.75,0.2],to_color:[0.95,0.8,0.15],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[tag=Dialogue163,tag=!Victreebelite,distance=..30]
execute at @e[type=armor_stand,x=-218,y=100,z=-1240,distance=..2] run give @p[tag=Dialogue163,tag=!Victreebelite,distance=..2] mega_showdown:victreebelite
execute at @e[type=armor_stand,x=-218,y=100,z=-1240,distance=..2] run playsound megastoneget ambient @p[tag=Dialogue163,tag=!Victreebelite,distance=..2] ~ ~ ~ 100 1 1
execute at @e[type=armor_stand,x=-218,y=100,z=-1240,distance=..2] run tellraw @p[tag=Dialogue163,tag=!Victreebelite,distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[type=armor_stand,x=-218,y=100,z=-1240,distance=..2] run tag @p[tag=Dialogue163,tag=!Victreebelite,distance=..2] add Victreebelite

#Starmie, Route 8 (lower)
execute at @e[type=armor_stand,x=-2060,y=100,z=91,distance=..2] run particle dust_color_transition{from_color:[0.6,0.35,0.8],to_color:[0.9,0.1,0.25],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[tag=Dialogue163,tag=!Starminite,distance=..30]
execute at @e[type=armor_stand,x=-2060,y=100,z=91,distance=..2] run give @p[tag=Dialogue163,tag=!Starminite,distance=..2] mega_showdown:starminite
execute at @e[type=armor_stand,x=-2060,y=100,z=91,distance=..2] run playsound megastoneget ambient @p[tag=Dialogue163,tag=!Starminite,distance=..2] ~ ~ ~ 100 1 1
execute at @e[type=armor_stand,x=-2060,y=100,z=91,distance=..2] run tellraw @p[tag=Dialogue163,tag=!Starminite,distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[type=armor_stand,x=-2060,y=100,z=91,distance=..2] run tag @p[tag=Dialogue163,tag=!Starminite,distance=..2] add Starminite

#Absol Z, Route 8 (upper)
execute at @e[type=armor_stand,x=-1994,y=151,z=128,distance=..2] run particle dust_color_transition{from_color:[0.95,0.95,1.0],to_color:[0.75,0.0,0.1],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[tag=Dialogue163,tag=!AbsoliteZ,distance=..30]
execute at @e[type=armor_stand,x=-1994,y=151,z=128,distance=..2] run give @p[tag=Dialogue163,tag=!AbsoliteZ,distance=..2] mega_showdown:absolite_z
execute at @e[type=armor_stand,x=-1994,y=151,z=128,distance=..2] run playsound megastoneget ambient @p[tag=Dialogue163,tag=!AbsoliteZ,distance=..2] ~ ~ ~ 100 1 1
execute at @e[type=armor_stand,x=-1994,y=151,z=128,distance=..2] run tellraw @p[tag=Dialogue163,tag=!AbsoliteZ,distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[type=armor_stand,x=-1994,y=151,z=128,distance=..2] run tag @p[tag=Dialogue163,tag=!AbsoliteZ,distance=..2] add AbsoliteZ

#Staraptor, Route 11
execute at @e[type=armor_stand,x=-1862,y=133,z=-699,distance=..2] run particle dust_color_transition{from_color:[0.6,0.6,0.65],to_color:[0.95,0.95,0.95],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[tag=Dialogue163,tag=!Staraptite,distance=..30]
execute at @e[type=armor_stand,x=-1862,y=133,z=-699,distance=..2] run give @p[tag=Dialogue163,tag=!Staraptite,distance=..2] mega_showdown:staraptite
execute at @e[type=armor_stand,x=-1862,y=133,z=-699,distance=..2] run playsound megastoneget ambient @p[tag=Dialogue163,tag=!Staraptite,distance=..2] ~ ~ ~ 100 1 1
execute at @e[type=armor_stand,x=-1862,y=133,z=-699,distance=..2] run tellraw @p[tag=Dialogue163,tag=!Staraptite,distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[type=armor_stand,x=-1862,y=133,z=-699,distance=..2] run tag @p[tag=Dialogue163,tag=!Staraptite,distance=..2] add Staraptite

#Garchomp Z, Route 13
execute at @e[type=armor_stand,x=-913,y=104,z=-438,distance=..2] run particle dust_color_transition{from_color:[0.2,0.3,0.7],to_color:[0.85,0.1,0.1],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[tag=Dialogue163,tag=!GarchompiteZ,distance=..30]
execute at @e[type=armor_stand,x=-913,y=104,z=-438,distance=..2] run give @p[tag=Dialogue163,tag=!GarchompiteZ,distance=..2] mega_showdown:garchompite_z
execute at @e[type=armor_stand,x=-913,y=104,z=-438,distance=..2] run playsound megastoneget ambient @p[tag=Dialogue163,tag=!GarchompiteZ,distance=..2] ~ ~ ~ 100 1 1
execute at @e[type=armor_stand,x=-913,y=104,z=-438,distance=..2] run tellraw @p[tag=Dialogue163,tag=!GarchompiteZ,distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[type=armor_stand,x=-913,y=104,z=-438,distance=..2] run tag @p[tag=Dialogue163,tag=!GarchompiteZ,distance=..2] add GarchompiteZ

#Lucario Z, Route 22
execute at @e[type=armor_stand,x=442,y=100,z=375,distance=..2] run particle dust_color_transition{from_color:[0.25,0.45,0.95],to_color:[0.95,0.8,0.2],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[tag=Dialogue163,tag=!LucarioniteZ,distance=..30]
execute at @e[type=armor_stand,x=442,y=100,z=375,distance=..2] run give @p[tag=Dialogue163,tag=!LucarioniteZ,distance=..2] mega_showdown:lucarionite_z
execute at @e[type=armor_stand,x=442,y=100,z=375,distance=..2] run playsound megastoneget ambient @p[tag=Dialogue163,tag=!LucarioniteZ,distance=..2] ~ ~ ~ 100 1 1
execute at @e[type=armor_stand,x=442,y=100,z=375,distance=..2] run tellraw @p[tag=Dialogue163,tag=!LucarioniteZ,distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[type=armor_stand,x=442,y=100,z=375,distance=..2] run tag @p[tag=Dialogue163,tag=!LucarioniteZ,distance=..2] add LucarioniteZ

#Scolipede, Route 6
execute at @e[type=armor_stand,x=-1239,y=100,z=-316,distance=..2] run particle dust_color_transition{from_color:[0.55,0.15,0.5],to_color:[0.9,0.85,0.7],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[tag=Dialogue163,tag=!Scolipite,distance=..30]
execute at @e[type=armor_stand,x=-1239,y=100,z=-316,distance=..2] run give @p[tag=Dialogue163,tag=!Scolipite,distance=..2] mega_showdown:scolipite
execute at @e[type=armor_stand,x=-1239,y=100,z=-316,distance=..2] run playsound megastoneget ambient @p[tag=Dialogue163,tag=!Scolipite,distance=..2] ~ ~ ~ 100 1 1
execute at @e[type=armor_stand,x=-1239,y=100,z=-316,distance=..2] run tellraw @p[tag=Dialogue163,tag=!Scolipite,distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[type=armor_stand,x=-1239,y=100,z=-316,distance=..2] run tag @p[tag=Dialogue163,tag=!Scolipite,distance=..2] add Scolipite

#Scrafty, Route 5
execute at @e[type=armor_stand,x=-917,y=102,z=-186,distance=..2] run particle dust_color_transition{from_color:[0.9,0.5,0.1],to_color:[0.85,0.15,0.1],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[tag=Dialogue163,tag=!Scraftinite,distance=..30]
execute at @e[type=armor_stand,x=-917,y=102,z=-186,distance=..2] run give @p[tag=Dialogue163,tag=!Scraftinite,distance=..2] mega_showdown:scraftinite
execute at @e[type=armor_stand,x=-917,y=102,z=-186,distance=..2] run playsound megastoneget ambient @p[tag=Dialogue163,tag=!Scraftinite,distance=..2] ~ ~ ~ 100 1 1
execute at @e[type=armor_stand,x=-917,y=102,z=-186,distance=..2] run tellraw @p[tag=Dialogue163,tag=!Scraftinite,distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[type=armor_stand,x=-917,y=102,z=-186,distance=..2] run tag @p[tag=Dialogue163,tag=!Scraftinite,distance=..2] add Scraftinite

#Chandelure, Lost Hotel
execute at @e[type=armor_stand,x=411,y=92,z=-439,distance=..2] run particle dust_color_transition{from_color:[0.6,0.25,0.85],to_color:[0.3,0.4,1.0],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[tag=Dialogue163,tag=!Chandelurite,distance=..30]
execute at @e[type=armor_stand,x=411,y=92,z=-439,distance=..2] run give @p[tag=Dialogue163,tag=!Chandelurite,distance=..2] mega_showdown:chandelurite
execute at @e[type=armor_stand,x=411,y=92,z=-439,distance=..2] run playsound megastoneget ambient @p[tag=Dialogue163,tag=!Chandelurite,distance=..2] ~ ~ ~ 100 1 1
execute at @e[type=armor_stand,x=411,y=92,z=-439,distance=..2] run tellraw @p[tag=Dialogue163,tag=!Chandelurite,distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[type=armor_stand,x=411,y=92,z=-439,distance=..2] run tag @p[tag=Dialogue163,tag=!Chandelurite,distance=..2] add Chandelurite

#Golurk, Route 10
execute at @e[type=armor_stand,x=-2172,y=104,z=-561,distance=..2] run particle dust_color_transition{from_color:[0.2,0.55,0.5],to_color:[0.95,0.8,0.3],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[tag=Dialogue163,tag=!Golurkite,distance=..30]
execute at @e[type=armor_stand,x=-2172,y=104,z=-561,distance=..2] run give @p[tag=Dialogue163,tag=!Golurkite,distance=..2] mega_showdown:golurkite
execute at @e[type=armor_stand,x=-2172,y=104,z=-561,distance=..2] run playsound megastoneget ambient @p[tag=Dialogue163,tag=!Golurkite,distance=..2] ~ ~ ~ 100 1 1
execute at @e[type=armor_stand,x=-2172,y=104,z=-561,distance=..2] run tellraw @p[tag=Dialogue163,tag=!Golurkite,distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[type=armor_stand,x=-2172,y=104,z=-561,distance=..2] run tag @p[tag=Dialogue163,tag=!Golurkite,distance=..2] add Golurkite

#Pyroar, Route 22
execute at @e[type=armor_stand,x=597,y=104,z=431,distance=..2] run particle dust_color_transition{from_color:[1.0,0.45,0.05],to_color:[0.95,0.15,0.05],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[tag=Dialogue163,tag=!Pyroarite,distance=..30]
execute at @e[type=armor_stand,x=597,y=104,z=431,distance=..2] run give @p[tag=Dialogue163,tag=!Pyroarite,distance=..2] mega_showdown:pyroarite
execute at @e[type=armor_stand,x=597,y=104,z=431,distance=..2] run playsound megastoneget ambient @p[tag=Dialogue163,tag=!Pyroarite,distance=..2] ~ ~ ~ 100 1 1
execute at @e[type=armor_stand,x=597,y=104,z=431,distance=..2] run tellraw @p[tag=Dialogue163,tag=!Pyroarite,distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[type=armor_stand,x=597,y=104,z=431,distance=..2] run tag @p[tag=Dialogue163,tag=!Pyroarite,distance=..2] add Pyroarite

#Meowstic, Route 6
execute at @e[type=armor_stand,x=-1189,y=100,z=-233,distance=..2] run particle dust_color_transition{from_color:[0.3,0.5,0.95],to_color:[0.95,0.95,1.0],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[tag=Dialogue163,tag=!Meowsticite,distance=..30]
execute at @e[type=armor_stand,x=-1189,y=100,z=-233,distance=..2] run give @p[tag=Dialogue163,tag=!Meowsticite,distance=..2] mega_showdown:meowsticite
execute at @e[type=armor_stand,x=-1189,y=100,z=-233,distance=..2] run playsound megastoneget ambient @p[tag=Dialogue163,tag=!Meowsticite,distance=..2] ~ ~ ~ 100 1 1
execute at @e[type=armor_stand,x=-1189,y=100,z=-233,distance=..2] run tellraw @p[tag=Dialogue163,tag=!Meowsticite,distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[type=armor_stand,x=-1189,y=100,z=-233,distance=..2] run tag @p[tag=Dialogue163,tag=!Meowsticite,distance=..2] add Meowsticite

#Malamar, Route 8 (Upper)
execute at @e[type=armor_stand,x=-2018,y=151,z=180,distance=..2] run particle dust_color_transition{from_color:[0.2,0.3,0.7],to_color:[0.9,0.3,0.45],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[tag=Dialogue163,tag=!Malamarite,distance=..30]
execute at @e[type=armor_stand,x=-2018,y=151,z=180,distance=..2] run give @p[tag=Dialogue163,tag=!Malamarite,distance=..2] mega_showdown:malamarite
execute at @e[type=armor_stand,x=-2018,y=151,z=180,distance=..2] run playsound megastoneget ambient @p[tag=Dialogue163,tag=!Malamarite,distance=..2] ~ ~ ~ 100 1 1
execute at @e[type=armor_stand,x=-2018,y=151,z=180,distance=..2] run tellraw @p[tag=Dialogue163,tag=!Malamarite,distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[type=armor_stand,x=-2018,y=151,z=180,distance=..2] run tag @p[tag=Dialogue163,tag=!Malamarite,distance=..2] add Malamarite

#Barbaracle, Azure Bay
execute at @e[type=armor_stand,x=-1237,y=76,z=-789,distance=..2] run particle dust_color_transition{from_color:[0.55,0.4,0.25],to_color:[0.3,0.65,0.5],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[tag=Dialogue163,tag=!Barbaracite,distance=..30]
execute at @e[type=armor_stand,x=-1237,y=76,z=-789,distance=..2] run give @p[tag=Dialogue163,tag=!Barbaracite,distance=..2] mega_showdown:barbaracite
execute at @e[type=armor_stand,x=-1237,y=76,z=-789,distance=..2] run playsound megastoneget ambient @p[tag=Dialogue163,tag=!Barbaracite,distance=..2] ~ ~ ~ 100 1 1
execute at @e[type=armor_stand,x=-1237,y=76,z=-789,distance=..2] run tellraw @p[tag=Dialogue163,tag=!Barbaracite,distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[type=armor_stand,x=-1237,y=76,z=-789,distance=..2] run tag @p[tag=Dialogue163,tag=!Barbaracite,distance=..2] add Barbaracite

#Dragalge, Route 8 (Lower)
execute at @e[type=armor_stand,x=-2067,y=100,z=360,distance=..2] run particle dust_color_transition{from_color:[0.4,0.45,0.15],to_color:[0.6,0.4,0.2],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[tag=Dialogue163,tag=!Dragalgite,distance=..30]
execute at @e[type=armor_stand,x=-2067,y=100,z=360,distance=..2] run give @p[tag=Dialogue163,tag=!Dragalgite,distance=..2] mega_showdown:dragalgite
execute at @e[type=armor_stand,x=-2067,y=100,z=360,distance=..2] run playsound megastoneget ambient @p[tag=Dialogue163,tag=!Dragalgite,distance=..2] ~ ~ ~ 100 1 1
execute at @e[type=armor_stand,x=-2067,y=100,z=360,distance=..2] run tellraw @p[tag=Dialogue163,tag=!Dragalgite,distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[type=armor_stand,x=-2067,y=100,z=360,distance=..2] run tag @p[tag=Dialogue163,tag=!Dragalgite,distance=..2] add Dragalgite

#Hawlucha, Route 10
execute at @e[type=armor_stand,x=-2255,y=104,z=-359,distance=..2] run particle dust_color_transition{from_color:[0.2,0.7,0.3],to_color:[0.9,0.15,0.15],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[tag=Dialogue163,tag=!Hawluchanite,distance=..30]
execute at @e[type=armor_stand,x=-2255,y=104,z=-359,distance=..2] run give @p[tag=Dialogue163,tag=!Hawluchanite,distance=..2] mega_showdown:hawluchanite
execute at @e[type=armor_stand,x=-2255,y=104,z=-359,distance=..2] run playsound megastoneget ambient @p[tag=Dialogue163,tag=!Hawluchanite,distance=..2] ~ ~ ~ 100 1 1
execute at @e[type=armor_stand,x=-2255,y=104,z=-359,distance=..2] run tellraw @p[tag=Dialogue163,tag=!Hawluchanite,distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[type=armor_stand,x=-2255,y=104,z=-359,distance=..2] run tag @p[tag=Dialogue163,tag=!Hawluchanite,distance=..2] add Hawluchanite

#Zygarde, Terminus Cave
#execute at @e[type=armor_stand,x=2018,y=61,z=-179,distance=..2] run particle dust_color_transition{from_color:[0.25,0.85,0.35],to_color:[0.0,0.8,0.8],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[tag=Dialogue163,tag=!Zygardite,distance=..30]
#execute at @e[type=armor_stand,x=2018,y=61,z=-179,distance=..2] run give @p[tag=Dialogue163,tag=!Zygardite,distance=..2] mega_showdown:zygardite
#execute at @e[type=armor_stand,x=2018,y=61,z=-179,distance=..2] run playsound megastoneget ambient @p[tag=Dialogue163,tag=!Zygardite,distance=..2] ~ ~ ~ 100 1 1
#execute at @e[type=armor_stand,x=2018,y=61,z=-179,distance=..2] run tellraw @p[tag=Dialogue163,tag=!Zygardite,distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
#execute at @e[type=armor_stand,x=2018,y=61,z=-179,distance=..2] run tag @p[tag=Dialogue163,tag=!Zygardite,distance=..2] add Zygardite

#Skarmory, Victory Road
execute at @e[type=armor_stand,x=2304,y=177,z=2163,distance=..2] run particle dust_color_transition{from_color:[0.6,0.6,0.65],to_color:[0.95,0.95,0.95],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[tag=Dialogue163,tag=!Skarmorite,distance=..30]
execute at @e[type=armor_stand,x=2304,y=177,z=2163,distance=..2] run give @p[tag=Dialogue163,tag=!Skarmorite,distance=..2] mega_showdown:skarmorite
execute at @e[type=armor_stand,x=2304,y=177,z=2163,distance=..2] run playsound megastoneget ambient @p[tag=Dialogue163,tag=!Skarmorite,distance=..2] ~ ~ ~ 100 1 1
execute at @e[type=armor_stand,x=2304,y=177,z=2163,distance=..2] run tellraw @p[tag=Dialogue163,tag=!Skarmorite,distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[type=armor_stand,x=2304,y=177,z=2163,distance=..2] run tag @p[tag=Dialogue163,tag=!Skarmorite,distance=..2] add Skarmorite

#Dragonite, Route 21
execute at @e[type=armor_stand,x=767,y=100,z=461,distance=..2] run particle dust_color_transition{from_color:[0.55,0.4,0.25],to_color:[0.3,0.65,0.5],scale:1} ~ ~ ~ 1 1 1 0 8 force @a[tag=Dialogue163,tag=!Dragoninite,distance=..30]
execute at @e[type=armor_stand,x=767,y=100,z=461,distance=..2] run give @p[tag=Dialogue163,tag=!Dragoninite,distance=..2] mega_showdown:dragoninite
execute at @e[type=armor_stand,x=767,y=100,z=461,distance=..2] run playsound megastoneget ambient @p[tag=Dialogue163,tag=!Dragoninite,distance=..2] ~ ~ ~ 100 1 1
execute at @e[type=armor_stand,x=767,y=100,z=461,distance=..2] run tellraw @p[tag=Dialogue163,tag=!Dragoninite,distance=..2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute at @e[type=armor_stand,x=767,y=100,z=461,distance=..2] run tag @p[tag=Dialogue163,tag=!Dragoninite,distance=..2] add Dragoninite




#