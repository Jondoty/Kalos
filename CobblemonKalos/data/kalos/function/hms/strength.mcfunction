#scoreboard objectives add StrengthTrigger trigger

#Walk up to Strength Rock
#Tellraw asking if player wants to use Strength? [Yes] to confirm
#
#
#
#End Strength sequence, set to


#Route 10 #1 - Testforblock
execute as @s[x=-2107,y=102,z=-322,dx=17,dy=10,dz=13,tag=Strength,scores={StrengthTrigger=1..}] run fill -2096 101 -325 -2100 103 -329 minecraft:polished_diorite
execute as @s[x=-2107,y=102,z=-322,dx=17,dy=10,dz=13,tag=Strength,scores={StrengthTrigger=1..}] run fill -2100 104 -324 -2096 108 -319 air
execute as @s[x=-2107,y=102,z=-322,dx=17,dy=10,dz=13,tag=Strength,scores={StrengthTrigger=1..}] run playsound minecraft:entity.irongolem.hurt ambient @s ~ ~ ~ 10 1 1
tellraw @s[x=-2107,y=102,z=-322,dx=17,dy=10,dz=13,tag=Strength,scores={StrengthTrigger=1..}] {"text":"You used Strength!","italic":true,"color":"gray"}
scoreboard players set @s[x=-2107,y=102,z=-322,dx=17,dy=10,dz=13,tag=Strength,scores={StrengthTrigger=1..}] StrengthTrigger 0

#Route 10 #1 Reset
#fill -2096 104 -319 -2100 108 -324 minecraft:polished_diorite
#fill -2100 99 -325 -2096 103 -329 air



#Route 10 #2 - Testforblock -2087 103 -366
execute as @s[x=-2126,y=105,z=-364,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] run fill -2082 103 -361 -2087 101 -366 minecraft:polished_diorite
execute as @s[x=-2126,y=105,z=-364,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] run fill -2123 104 -366 -2128 108 -361 air
execute as @s[x=-2126,y=105,z=-364,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] run playsound minecraft:entity.irongolem.hurt ambient @s ~ ~ ~ 10 1 1
tellraw @s[x=-2126,y=105,z=-364,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] {"text":"You used Strength!","italic":true,"color":"gray"}
scoreboard players set @s[x=-2126,y=105,z=-364,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] StrengthTrigger 0


#Route 10 #2 Reset
#fill -2123 104 -366 -2128 108 -361 minecraft:polished_diorite
#fill -2082 103 -361 -2087 101 -366 air












#Connecting Cave #1 - Testforblock -1765 43 86
execute as @s[x=-1767,y=43,z=70,dx=6,dy=5,dz=14,tag=Strength,scores={StrengthTrigger=1..}] run fill -1765 44 81 -1761 48 85 air
execute as @s[x=-1767,y=43,z=70,dx=6,dy=5,dz=14,tag=Strength,scores={StrengthTrigger=1..}] run fill -1761 43 86 -1765 42 90 minecraft:polished_diorite
execute as @s[x=-1767,y=43,z=70,dx=6,dy=5,dz=14,tag=Strength,scores={StrengthTrigger=1..}] run playsound minecraft:entity.irongolem.hurt ambient @s ~ ~ ~ 10 1 1
tellraw @s[x=-1767,y=43,z=70,dx=6,dy=5,dz=14,tag=Strength,scores={StrengthTrigger=1..}] {"text":"You used Strength!","italic":true,"color":"gray"}
scoreboard players set @s[x=-1767,y=43,z=70,dx=6,dy=5,dz=14,tag=Strength,scores={StrengthTrigger=1..}] StrengthTrigger 0

#Reset
#/fill -1765 44 81 -1761 48 85 minecraft:polished_diorite
#/fill -1761 43 86 -1765 42 90 air



#Connecting Cave #2 - Testforblock -1787 43 33
execute as @s[x=-1801,y=43,z=29,dx=14,dy=5,dz=13,tag=Strength,scores={StrengthTrigger=1..}] run fill -1788 44 37 -1792 48 33 air
execute as @s[x=-1801,y=43,z=29,dx=14,dy=5,dz=13,tag=Strength,scores={StrengthTrigger=1..}] run fill -1787 42 33 -1783 43 37 minecraft:polished_diorite
execute as @s[x=-1801,y=43,z=29,dx=14,dy=5,dz=13,tag=Strength,scores={StrengthTrigger=1..}] run playsound minecraft:entity.irongolem.hurt ambient @s ~ ~ ~ 10 1 1
tellraw @s[x=-1801,y=43,z=29,dx=14,dy=5,dz=13,tag=Strength,scores={StrengthTrigger=1..}] {"text":"You used Strength!","italic":true,"color":"gray"}
scoreboard players set @s[x=-1801,y=43,z=29,dx=14,dy=5,dz=13,tag=Strength,scores={StrengthTrigger=1..}] StrengthTrigger 0

#Reset
#/fill -1788 44 37 -1792 48 33 minecraft:polished_diorite
#/fill -1787 42 33 -1783 43 37 air


#Connecting Cave #3 - Testforblock -1839 47 -23
execute as @s[x=-1842,y=50,z=-21,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] run fill -1839 46 -19 -1835 47 -23 minecraft:polished_diorite
execute as @s[x=-1842,y=50,z=-21,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] run fill -1840 48 -19 -1844 52 -23 air
execute as @s[x=-1842,y=50,z=-21,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] run playsound minecraft:entity.irongolem.hurt ambient @s ~ ~ ~ 10 1 1
tellraw @s[x=-1842,y=50,z=-21,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] {"text":"You used Strength!","italic":true,"color":"gray"}
scoreboard players set @s[x=-1842,y=50,z=-21,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] StrengthTrigger 0

#Reset
#/fill -1839 46 -19 -1835 47 -23 air
#/fill -1840 48 -19 -1844 52 -23 minecraft:polished_diorite






#Route 8 - Testforblock -1939 150 238
execute as @s[x=-1942,y=153,z=238,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] run fill -1939 149 242 -1935 150 238 minecraft:polished_diorite
execute as @s[x=-1942,y=153,z=238,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] run fill -1940 151 238 -1944 155 242 air
execute as @s[x=-1942,y=153,z=238,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] run playsound minecraft:entity.irongolem.hurt ambient @s ~ ~ ~ 10 1 1
tellraw @s[x=-1942,y=153,z=238,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] {"text":"You used Strength!","italic":true,"color":"gray"}
scoreboard players set @s[x=-1942,y=153,z=238,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] StrengthTrigger 0

#Reset
#/fill -1939 149 242 -1935 150 238 air
#/fill -1940 151 238 -1944 155 242 minecraft:polished_diorite





#Reflection Cave - Testforblock -1673 73 -338
execute as @s[x=-1675,y=73,z=-346,dx=18,dy=5,dz=12,tag=Strength,scores={StrengthTrigger=1..}] run fill -1664 74 -338 -1668 78 -334 air
execute as @s[x=-1675,y=73,z=-346,dx=18,dy=5,dz=12,tag=Strength,scores={StrengthTrigger=1..}] run fill -1669 73 -334 -1673 72 -338 minecraft:polished_diorite
execute as @s[x=-1675,y=73,z=-346,dx=18,dy=5,dz=12,tag=Strength,scores={StrengthTrigger=1..}] run playsound minecraft:entity.irongolem.hurt ambient @s ~ ~ ~ 10 1 1
tellraw @s[x=-1675,y=73,z=-346,dx=18,dy=5,dz=12,tag=Strength,scores={StrengthTrigger=1..}] {"text":"You used Strength!","italic":true,"color":"gray"}
scoreboard players set @s[x=-1675,y=73,z=-346,dx=18,dy=5,dz=12,tag=Strength,scores={StrengthTrigger=1..}] StrengthTrigger 0

#Reset
#/fill -1664 74 -338 -1668 78 -334 minecraft:polished_diorite
#/fill -1669 73 -334 -1673 72 -338 air





#Route 16 #1 - 377 103 -252
execute as @s[x=377,y=104,z=-247,dx=10,dy=5,dz=10,tag=Strength,scores={StrengthTrigger=1..}] run fill 381 103 -248 377 102 -252 minecraft:polished_diorite
execute as @s[x=377,y=104,z=-247,dx=10,dy=5,dz=10,tag=Strength,scores={StrengthTrigger=1..}] run fill 377 104 -247 381 108 -243 air
execute as @s[x=377,y=104,z=-247,dx=10,dy=5,dz=10,tag=Strength,scores={StrengthTrigger=1..}] run playsound minecraft:entity.irongolem.hurt ambient @s ~ ~ ~ 10 1 1
tellraw @s[x=377,y=104,z=-247,dx=10,dy=5,dz=10,tag=Strength,scores={StrengthTrigger=1..}] {"text":"You used Strength!","italic":true,"color":"gray"}
scoreboard players set @s[x=377,y=104,z=-247,dx=10,dy=5,dz=10,tag=Strength,scores={StrengthTrigger=1..}] StrengthTrigger 0

#Reset
#/fill 381 103 -248 377 102 -252 air
#/fill 377 104 -247 381 108 -243 minecraft:polished_diorite




#Route 16 #2 - 356 99 -212
execute as @s[x=358,y=100,z=-215,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] run fill 360 99 -208 356 98 -212 minecraft:polished_diorite
execute as @s[x=358,y=100,z=-215,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] run fill 360 100 -213 356 104 -217 air
execute as @s[x=358,y=100,z=-215,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] run playsound minecraft:entity.irongolem.hurt ambient @s ~ ~ ~ 10 1 1
tellraw @s[x=358,y=100,z=-215,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] {"text":"You used Strength!","italic":true,"color":"gray"}
scoreboard players set @s[x=358,y=100,z=-215,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] StrengthTrigger 0

#Reset
#/fill 360 99 -208 356 98 -212 air
#/fill 360 100 -213 356 104 -217 minecraft:polished_diorite





#Route 19 - Testfor 1422 74 349
execute as @s[x=1419,y=75,z=351,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] run fill 1417 75 349 1421 79 353 air
execute as @s[x=1419,y=75,z=351,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] run fill 1422 73 349 1426 74 353 minecraft:polished_diorite
execute as @s[x=1419,y=75,z=351,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] run playsound minecraft:entity.irongolem.hurt ambient @s ~ ~ ~ 10 1 1
tellraw @s[x=1419,y=75,z=351,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] {"text":"You used Strength!","italic":true,"color":"gray"}
scoreboard players set @s[x=1419,y=75,z=351,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] StrengthTrigger 0

#Reset
#/fill 1417 75 349 1421 79 353 minecraft:polished_diorite
#/fill 1422 73 349 1426 74 353 air




#Route 21 #1 - Testforblock 899 101 365
execute as @s[x=901,y=103,z=409,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] run fill 903 100 365 899 101 369 minecraft:polished_diorite
execute as @s[x=901,y=103,z=409,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] run fill 899 102 407 903 106 411 air
execute as @s[x=901,y=103,z=409,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] run playsound minecraft:entity.irongolem.hurt ambient @s ~ ~ ~ 10 1 1
tellraw @s[x=901,y=103,z=409,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] {"text":"You used Strength!","italic":true,"color":"gray"}
scoreboard players set @s[x=901,y=103,z=409,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] StrengthTrigger 0

#Reset
#/fill 903 100 365 899 101 369 air
#/fill 899 102 407 903 106 411 minecraft:polished_diorite



#Route 21 #2 - Testforblock 805 99 452
execute as @s[x=802,y=104,z=454,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] run fill 805 99 456 809 98 452 minecraft:polished_diorite
execute as @s[x=802,y=104,z=454,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] run fill 804 100 452 800 104 456 air
execute as @s[x=802,y=104,z=454,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] run playsound minecraft:entity.irongolem.hurt ambient @s ~ ~ ~ 10 1 1
tellraw @s[x=802,y=104,z=454,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] {"text":"You used Strength!","italic":true,"color":"gray"}
scoreboard players set @s[x=802,y=104,z=454,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] StrengthTrigger 0

#Reset
#/fill 805 99 456 809 98 452 air
#/fill 804 100 452 800 104 456 minecraft:polished_diorite



#Route 21 #3 - Testforblock 704 99 498
execute as @s[x=706,y=100,z=513,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] run fill 704 98 502 708 99 498 minecraft:polished_diorite
execute as @s[x=706,y=100,z=513,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] run fill 708 100 507 704 104 503 air
execute as @s[x=706,y=100,z=513,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] run playsound minecraft:entity.irongolem.hurt ambient @s ~ ~ ~ 10 1 1
tellraw @s[x=706,y=100,z=513,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] {"text":"You used Strength!","italic":true,"color":"gray"}
scoreboard players set @s[x=706,y=100,z=513,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] StrengthTrigger 0

#Reset
#/fill 708 100 507 704 104 503 minecraft:polished_diorite
#/fill 704 98 502 708 99 498 air



#Victory Road Floor 1 - 2422 39 1645
execute as @s[x=2419,y=39,z=1630,dx=9,dy=5,dz=12,tag=Strength,scores={StrengthTrigger=1..}] run fill 2422 40 1640 2426 44 1644 air
execute as @s[x=2419,y=39,z=1630,dx=9,dy=5,dz=12,tag=Strength,scores={StrengthTrigger=1..}] run fill 2426 39 1645 2422 38 1649 minecraft:polished_diorite
execute as @s[x=2419,y=39,z=1630,dx=9,dy=5,dz=12,tag=Strength,scores={StrengthTrigger=1..}] run playsound minecraft:entity.irongolem.hurt ambient @s ~ ~ ~ 10 1 1
tellraw @s[x=2419,y=39,z=1630,dx=9,dy=5,dz=12,tag=Strength,scores={StrengthTrigger=1..}] {"text":"You used Strength!","italic":true,"color":"gray"}
scoreboard players set @s[x=2419,y=39,z=1630,dx=9,dy=5,dz=12,tag=Strength,scores={StrengthTrigger=1..}] StrengthTrigger 0

#Reset
#/fill 2422 40 1640 2426 44 1644 minecraft:polished_diorite
#/fill 2426 39 1645 2422 38 1649 air


#Victory Road Inside 2 #1 - 2183 75 1421
execute as @s[x=2230,y=75,z=1416,dx=17,dy=5,dz=15,tag=Strength,scores={StrengthTrigger=1..}] run fill 2183 73 1421 2174 75 1430 minecraft:polished_diorite
execute as @s[x=2230,y=75,z=1416,dx=17,dy=5,dz=15,tag=Strength,scores={StrengthTrigger=1..}] run fill 2222 76 1431 2231 85 1422 air
execute as @s[x=2230,y=75,z=1416,dx=17,dy=5,dz=15,tag=Strength,scores={StrengthTrigger=1..}] run playsound minecraft:entity.irongolem.hurt ambient @s ~ ~ ~ 10 1 1
tellraw @s[x=2230,y=75,z=1416,dx=17,dy=5,dz=15,tag=Strength,scores={StrengthTrigger=1..}] {"text":"You used Strength!","italic":true,"color":"gray"}
scoreboard players set @s[x=2230,y=75,z=1416,dx=17,dy=5,dz=15,tag=Strength,scores={StrengthTrigger=1..}] StrengthTrigger 0

#Reset
#/fill 2183 73 1421 2174 75 1430 air
#/fill 2222 76 1431 2231 85 1422 minecraft:polished_diorite



#Victory Road Inside 2 #2 - 2181 90 1356
execute as @s[x=2188,y=90,z=1358,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] run fill 2181 90 1360 2185 89 1356 minecraft:polished_diorite
execute as @s[x=2188,y=90,z=1358,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] run fill 2186 91 1360 2190 95 1356 air
execute as @s[x=2188,y=90,z=1358,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] run playsound minecraft:entity.irongolem.hurt ambient @s ~ ~ ~ 10 1 1
tellraw @s[x=2188,y=90,z=1358,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] {"text":"You used Strength!","italic":true,"color":"gray"}
scoreboard players set @s[x=2188,y=90,z=1358,distance=..10,tag=Strength,scores={StrengthTrigger=1..}] StrengthTrigger 0

#Reset
#/fill 2181 90 1360 2185 89 1356 air
#/fill 2186 91 1360 2190 95 1356 minecraft:polished_diorite


#Victory Road Outside 3 #1 - 2219 174 2284
execute as @s[x=2215,y=174,z=2265,dx=8,dy=5,dz=12,tag=Strength,scores={StrengthTrigger=1..}] run fill 2219 174 2288 2223 173 2284 minecraft:polished_diorite
execute as @s[x=2215,y=174,z=2265,dx=8,dy=5,dz=12,tag=Strength,scores={StrengthTrigger=1..}] run fill 2223 175 2277 2219 179 2273 air
execute as @s[x=2215,y=174,z=2265,dx=8,dy=5,dz=12,tag=Strength,scores={StrengthTrigger=1..}] run playsound minecraft:entity.irongolem.hurt ambient @s ~ ~ ~ 10 1 1
tellraw @s[x=2215,y=174,z=2265,dx=8,dy=5,dz=12,tag=Strength,scores={StrengthTrigger=1..}] {"text":"You used Strength!","italic":true,"color":"gray"}
scoreboard players set @s[x=2215,y=174,z=2265,dx=8,dy=5,dz=12,tag=Strength,scores={StrengthTrigger=1..}] StrengthTrigger 0

#Reset
#/fill 2219 174 2288 2223 173 2284 air
#/fill 2223 175 2277 2219 179 2273 minecraft:polished_diorite


#Victory Road Outside 3 #2 - 2231 174 2297
execute as @s[x=2235,y=174,z=2289,dx=14,dy=5,dz=19,tag=Strength,scores={StrengthTrigger=1..}] run fill 2231 173 2297 2235 174 2301 minecraft:polished_diorite
execute as @s[x=2235,y=174,z=2289,dx=14,dy=5,dz=19,tag=Strength,scores={StrengthTrigger=1..}] run fill 2239 175 2301 2243 179 2297 air
execute as @s[x=2235,y=174,z=2289,dx=14,dy=5,dz=19,tag=Strength,scores={StrengthTrigger=1..}] run playsound minecraft:entity.irongolem.hurt ambient @s ~ ~ ~ 10 1 1
tellraw @s[x=2235,y=174,z=2289,dx=14,dy=5,dz=19,tag=Strength,scores={StrengthTrigger=1..}] {"text":"You used Strength!","italic":true,"color":"gray"}
scoreboard players set @s[x=2235,y=174,z=2289,dx=14,dy=5,dz=19,tag=Strength,scores={StrengthTrigger=1..}] StrengthTrigger 0

#Reset
#/fill 2231 173 2297 2235 174 2301 air
#/fill 2239 175 2301 2243 179 2297 minecraft:polished_diorite



#Victory Road Inside 3 - 2012 101 1486
execute as @s[x=2011,y=101,z=1473,dx=11,dy=5,dz=12,tag=Strength,scores={StrengthTrigger=1..}] run fill 2016 101 1490 2012 98 1486 minecraft:polished_diorite
execute as @s[x=2011,y=101,z=1473,dx=11,dy=5,dz=12,tag=Strength,scores={StrengthTrigger=1..}] run fill 2012 102 1485 2016 106 1481 air
execute as @s[x=2011,y=101,z=1473,dx=11,dy=5,dz=12,tag=Strength,scores={StrengthTrigger=1..}] run playsound minecraft:entity.irongolem.hurt ambient @s ~ ~ ~ 10 1 1
tellraw @s[x=2011,y=101,z=1473,dx=11,dy=5,dz=12,tag=Strength,scores={StrengthTrigger=1..}] {"text":"You used Strength!","italic":true,"color":"gray"}
scoreboard players set @s[x=2011,y=101,z=1473,dx=11,dy=5,dz=12,tag=Strength,scores={StrengthTrigger=1..}] StrengthTrigger 0

#Reset
#/fill 2016 101 1490 2012 98 1486 air
#/fill 2012 102 1485 2016 106 1481 minecraft:polished_diorite








#Tellraw
tellraw @s[tag=Strength,scores={StrengthTrigger=1..100}] {"text":"Move closer to a strength boulder!","italic":true,"color":"gray"}
scoreboard players set @s[tag=Strength,scores={StrengthTrigger=1..100}] StrengthTrigger 0
