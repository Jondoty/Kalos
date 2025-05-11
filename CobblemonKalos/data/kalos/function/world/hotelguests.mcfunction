#First runs if player walks in the
#If player is in the hotel, tp in an NPC depending on the day of the week
#If player is in the hotel rooms, skip transitioning the guests
#

#function custom:hotelguests if @a[x=-1121,y=70,z=-24,dx=60,dy=20,dz=46]
#function custom:hotelguests if @a[x=-2001,y=99,z=622,dx=60,dy=20,dz=46]
#function custom:hotelguests if @a[x=-2059,y=55,z=-178,dx=60,dy=20,dz=46]
#function custom:hotelguests if @a[x=-2201,y=77,z=-661,dx=60,dy=20,dz=46]
#function custom:hotelguests if @a[x=-1066,y=46,z=-835,dx=60,dy=20,dz=46]
#function custom:hotelguests if @a[x=1548,y=64,z=242,dx=60,dy=20,dz=46]




#Maid
#/tedit add INTERACT /scoreboard players set @pl TalkTrigger 30

#Tourist
#/tedit add INTERACT /scoreboard players set @pl TalkTrigger 31

#Backpacker
#/tedit add INTERACT /scoreboard players set @pl TalkTrigger 32

#Hiker
#/tedit add INTERACT /scoreboard players set @pl TalkTrigger 33

#Waiter
#/tedit add INTERACT /scoreboard players set @pl TalkTrigger 34

#Madame
#/tedit add INTERACT /scoreboard players set @pl TalkTrigger 35







#----------------------------------------------------------Camphrier Town----------------------------------------------------------
#x=-1121,y=70,z=-24,dx=60,dy=20,dz=46

#Skips if player is found in the Hotel rooms
#x=-1121,y=80,z=-10,dx=60,dy=10,dz=21
execute as @a[x=-1121,y=80,z=-10,dx=60,dy=10,dz=21] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip


#Adds Skip tag if proper NPC is in the room for the day of the week
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] run execute as @e[x=-1110,y=80,z=0,dy=3,type=!player,scores={Weekday=1}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-1110,y=80,z=0,dy=3,type=!player,scores={Weekday=2}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] run execute as @e[x=-1110,y=80,z=0,dy=3,type=!player,scores={Weekday=3}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @e[x=-1110,y=80,z=0,dy=3,type=!player,scores={Weekday=4}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] run execute as @e[x=-1110,y=80,z=0,dy=3,type=!player,scores={Weekday=5}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] run execute as @e[x=-1110,y=80,z=0,dy=3,type=!player,scores={Weekday=6}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] run execute as @e[x=-1110,y=80,z=0,dy=3,type=!player,scores={Weekday=7}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip


#Returns NPCs to spawn
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-1110,y=80,z=0,dy=3,type=!player,scores={Weekday=1}] -477 101 1272
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-1110,y=80,z=0,dy=3,type=!player,scores={Weekday=2}] -477 101 1274
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-1110,y=80,z=0,dy=3,type=!player,scores={Weekday=3}] -477 101 1276
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-1110,y=80,z=0,dy=3,type=!player,scores={Weekday=4}] -477 101 1278
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-1110,y=80,z=0,dy=3,type=!player,scores={Weekday=5}] -477 101 1280
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-1110,y=80,z=0,dy=3,type=!player,scores={Weekday=6}] -477 101 1282
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-1110,y=80,z=0,dy=3,type=!player,scores={Weekday=7}] -477 101 1284


#tp NPC in
#[Day of the Week] ~ ~ ~ [If player is in the hotel] ~ ~ ~ [Testfor skip tag] ~ ~ ~ [TPs in proper NPC for the day of the week]
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] run execute as @a[x=-1121,y=70,z=-24,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-477,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=1}] -1110 81 0
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @a[x=-1121,y=70,z=-24,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-477,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=2}] -1110 81 0
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] run execute as @a[x=-1121,y=70,z=-24,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-477,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=3}] -1110 81 0
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @a[x=-1121,y=70,z=-24,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-477,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=4}] -1110 81 0
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] run execute as @a[x=-1121,y=70,z=-24,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-477,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=5}] -1110 81 0
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] run execute as @a[x=-1121,y=70,z=-24,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-477,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=6}] -1110 81 0
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] run execute as @a[x=-1121,y=70,z=-24,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-477,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=7}] -1110 81 0



#Removes Skip tag if present
tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=Skip] remove Skip





#----------------------------------------------------------Ambrette Town----------------------------------------------------------
#x=-2001,y=99,z=622,dx=60,dy=20,dz=46

#Skips if player is found in the Hotel rooms
#x=-2001,y=109,z=636,dx=60,dy=10,dz=21
execute as @a[x=-2001,y=109,z=636,dx=60,dy=10,dz=21] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip


#Adds Skip tag if proper NPC is in the room for the day of the week
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] run execute as @e[x=-1990,y=108,z=647,dy=3,type=!player,scores={Weekday=1}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-1990,y=108,z=647,dy=3,type=!player,scores={Weekday=2}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] run execute as @e[x=-1990,y=108,z=647,dy=3,type=!player,scores={Weekday=3}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @e[x=-1990,y=108,z=647,dy=3,type=!player,scores={Weekday=4}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] run execute as @e[x=-1990,y=108,z=647,dy=3,type=!player,scores={Weekday=5}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] run execute as @e[x=-1990,y=108,z=647,dy=3,type=!player,scores={Weekday=6}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] run execute as @e[x=-1990,y=108,z=647,dy=3,type=!player,scores={Weekday=7}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip


#Returns NPCs to spawn
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-1990,y=108,z=647,dy=3,type=!player,scores={Weekday=1}] -475 101 1272
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-1990,y=108,z=647,dy=3,type=!player,scores={Weekday=2}] -475 101 1274
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-1990,y=108,z=647,dy=3,type=!player,scores={Weekday=3}] -475 101 1276
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-1990,y=108,z=647,dy=3,type=!player,scores={Weekday=4}] -475 101 1278
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-1990,y=108,z=647,dy=3,type=!player,scores={Weekday=5}] -475 101 1280
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-1990,y=108,z=647,dy=3,type=!player,scores={Weekday=6}] -475 101 1282
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-1990,y=108,z=647,dy=3,type=!player,scores={Weekday=7}] -475 101 1284



#tp NPC in
#[Day of the Week] ~ ~ ~ [If player is in the hotel] ~ ~ ~ [Testfor skip tag] ~ ~ ~ [TPs in proper NPC for the day of the week]
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] run execute as @a[x=-2001,y=99,z=622,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-475,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=1}] -1990 109 647
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @a[x=-2001,y=99,z=622,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-475,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=2}] -1990 109 647
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] run execute as @a[x=-2001,y=99,z=622,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-475,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=3}] -1990 109 647
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @a[x=-2001,y=99,z=622,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-475,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=4}] -1990 109 647
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] run execute as @a[x=-2001,y=99,z=622,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-475,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=5}] -1990 109 647
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] run execute as @a[x=-2001,y=99,z=622,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-475,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=6}] -1990 109 647
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] run execute as @a[x=-2001,y=99,z=622,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-475,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=7}] -1990 109 647



#Removes Skip tag if present
tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=Skip] remove Skip





#----------------------------------------------------------Cyllage Town----------------------------------------------------------
#x=-2059,y=55,z=-178,dx=60,dy=20,dz=46

#Skips if player is found in the Hotel rooms
#x=-2059,y=65,z=-164,dx=60,dy=10,dz=21
execute as @a[x=-2059,y=65,z=-164,dx=60,dy=10,dz=21] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip


#Adds Skip tag if proper NPC is in the room for the day of the week
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] run execute as @e[x=-2048,y=64,z=-153,dy=3,type=!player,scores={Weekday=1}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-2048,y=64,z=-153,dy=3,type=!player,scores={Weekday=2}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] run execute as @e[x=-2048,y=64,z=-153,dy=3,type=!player,scores={Weekday=3}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @e[x=-2048,y=64,z=-153,dy=3,type=!player,scores={Weekday=4}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] run execute as @e[x=-2048,y=64,z=-153,dy=3,type=!player,scores={Weekday=5}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] run execute as @e[x=-2048,y=64,z=-153,dy=3,type=!player,scores={Weekday=6}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] run execute as @e[x=-2048,y=64,z=-153,dy=3,type=!player,scores={Weekday=7}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip


#Returns NPCs to spawn
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-2048,y=64,z=-153,dy=3,type=!player,scores={Weekday=1}] -473 101 1272
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-2048,y=64,z=-153,dy=3,type=!player,scores={Weekday=2}] -473 101 1274
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-2048,y=64,z=-153,dy=3,type=!player,scores={Weekday=3}] -473 101 1276
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-2048,y=64,z=-153,dy=3,type=!player,scores={Weekday=4}] -473 101 1278
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-2048,y=64,z=-153,dy=3,type=!player,scores={Weekday=5}] -473 101 1280
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-2048,y=64,z=-153,dy=3,type=!player,scores={Weekday=6}] -473 101 1282
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-2048,y=64,z=-153,dy=3,type=!player,scores={Weekday=7}] -473 101 1284


#tp NPC in
#[Day of the Week] ~ ~ ~ [If player is in the hotel] ~ ~ ~ [Testfor skip tag] ~ ~ ~ [TPs in proper NPC for the day of the week]
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] run execute as @a[x=-2059,y=55,z=-178,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-473,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=1}] -2048 65 -153
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @a[x=-2059,y=55,z=-178,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-473,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=2}] -2048 65 -153
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] run execute as @a[x=-2059,y=55,z=-178,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-473,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=3}] -2048 65 -153
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @a[x=-2059,y=55,z=-178,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-473,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=4}] -2048 65 -153
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] run execute as @a[x=-2059,y=55,z=-178,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-473,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=5}] -2048 65 -153
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] run execute as @a[x=-2059,y=55,z=-178,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-473,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=6}] -2048 65 -153
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] run execute as @a[x=-2059,y=55,z=-178,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-473,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=7}] -2048 65 -153



#Removes Skip tag if present
tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=Skip] remove Skip






#----------------------------------------------------------Geosenge Town----------------------------------------------------------
#x=-2201,y=77,z=-661,dx=60,dy=20,dz=46

#Skips if player is found in the Hotel rooms
#x=-2201,y=87,z=-647,dx=60,dy=10,dz=21
execute as @a[x=-2201,y=87,z=-647,dx=60,dy=10,dz=21] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip


#Adds Skip tag if proper NPC is in the room for the day of the week
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] run execute as @e[x=-2190,y=86,z=-636,dy=3,type=!player,scores={Weekday=1}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-2190,y=86,z=-636,dy=3,type=!player,scores={Weekday=2}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] run execute as @e[x=-2190,y=86,z=-636,dy=3,type=!player,scores={Weekday=3}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @e[x=-2190,y=86,z=-636,dy=3,type=!player,scores={Weekday=4}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] run execute as @e[x=-2190,y=86,z=-636,dy=3,type=!player,scores={Weekday=5}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] run execute as @e[x=-2190,y=86,z=-636,dy=3,type=!player,scores={Weekday=6}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] run execute as @e[x=-2190,y=86,z=-636,dy=3,type=!player,scores={Weekday=7}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip


#Returns NPCs to spawn
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-2190,y=86,z=-636,dy=3,type=!player,scores={Weekday=1}] -471 101 1272
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-2190,y=86,z=-636,dy=3,type=!player,scores={Weekday=2}] -471 101 1274
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-2190,y=86,z=-636,dy=3,type=!player,scores={Weekday=3}] -471 101 1276
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-2190,y=86,z=-636,dy=3,type=!player,scores={Weekday=4}] -471 101 1278
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-2190,y=86,z=-636,dy=3,type=!player,scores={Weekday=5}] -471 101 1280
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-2190,y=86,z=-636,dy=3,type=!player,scores={Weekday=6}] -471 101 1282
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-2190,y=86,z=-636,dy=3,type=!player,scores={Weekday=7}] -471 101 1284


#tp NPC in
#[Day of the Week] ~ ~ ~ [If player is in the hotel] ~ ~ ~ [Testfor skip tag] ~ ~ ~ [TPs in proper NPC for the day of the week]
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] run execute as @a[x=-2201,y=77,z=-661,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-471,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=1}] -2190 87 -636
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @a[x=-2201,y=77,z=-661,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-471,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=2}] -2190 87 -636
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] run execute as @a[x=-2201,y=77,z=-661,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-471,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=3}] -2190 87 -636
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @a[x=-2201,y=77,z=-661,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-471,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=4}] -2190 87 -636
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] run execute as @a[x=-2201,y=77,z=-661,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-471,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=5}] -2190 87 -636
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] run execute as @a[x=-2201,y=77,z=-661,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-471,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=6}] -2190 87 -636
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] run execute as @a[x=-2201,y=77,z=-661,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-471,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=7}] -2190 87 -636



#Removes Skip tag if present
tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=Skip] remove Skip




#----------------------------------------------------------Coumarine Town----------------------------------------------------------
#x=-1066,y=46,z=-835,dx=60,dy=20,dz=46

#Skips if player is found in the Hotel rooms
#x=-1066,y=56,z=-821,dx=60,dy=10,dz=21
execute as @a[x=-1066,y=56,z=-821,dx=60,dy=10,dz=21] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip


#Adds Skip tag if proper NPC is in the room for the day of the week
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] run execute as @e[x=-1055,y=55,z=-810,dy=3,type=!player,scores={Weekday=1}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=-1055,y=55,z=-810,dy=3,type=!player,scores={Weekday=2}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] run execute as @e[x=-1055,y=55,z=-810,dy=3,type=!player,scores={Weekday=3}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @e[x=-1055,y=55,z=-810,dy=3,type=!player,scores={Weekday=4}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] run execute as @e[x=-1055,y=55,z=-810,dy=3,type=!player,scores={Weekday=5}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] run execute as @e[x=-1055,y=55,z=-810,dy=3,type=!player,scores={Weekday=6}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] run execute as @e[x=-1055,y=55,z=-810,dy=3,type=!player,scores={Weekday=7}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip


#Returns NPCs to spawn
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-1055,y=55,z=-810,dy=3,type=!player,scores={Weekday=1}] -469 101 1272
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-1055,y=55,z=-810,dy=3,type=!player,scores={Weekday=2}] -469 101 1274
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-1055,y=55,z=-810,dy=3,type=!player,scores={Weekday=3}] -469 101 1276
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-1055,y=55,z=-810,dy=3,type=!player,scores={Weekday=4}] -469 101 1278
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-1055,y=55,z=-810,dy=3,type=!player,scores={Weekday=5}] -469 101 1280
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-1055,y=55,z=-810,dy=3,type=!player,scores={Weekday=6}] -469 101 1282
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-1055,y=55,z=-810,dy=3,type=!player,scores={Weekday=7}] -469 101 1284


#tp NPC in
#[Day of the Week] ~ ~ ~ [If player is in the hotel] ~ ~ ~ [Testfor skip tag] ~ ~ ~ [TPs in proper NPC for the day of the week]
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] run execute as @a[x=-1066,y=46,z=-835,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-469,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=1}] -1055 56 -810
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @a[x=-1066,y=46,z=-835,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-469,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=2}] -1055 56 -810
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] run execute as @a[x=-1066,y=46,z=-835,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-469,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=3}] -1055 56 -810
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @a[x=-1066,y=46,z=-835,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-469,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=4}] -1055 56 -810
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] run execute as @a[x=-1066,y=46,z=-835,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-469,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=5}] -1055 56 -810
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] run execute as @a[x=-1066,y=46,z=-835,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-469,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=6}] -1055 56 -810
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] run execute as @a[x=-1066,y=46,z=-835,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-469,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=7}] -1055 56 -810



#Removes Skip tag if present
tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=Skip] remove Skip




#----------------------------------------------------------Couriway Town----------------------------------------------------------
#x=1548,y=64,z=242,dx=60,dy=20,dz=46

#Skips if player is found in the Hotel rooms
#x=1548,y=74,z=256,dx=60,dy=10,dz=21
execute as @a[x=1548,y=74,z=256,dx=60,dy=10,dz=21] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip


#Adds Skip tag if proper NPC is in the room for the day of the week
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] run execute as @e[x=1559,y=73,z=267,dy=3,type=!player,scores={Weekday=1}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @e[x=1559,y=73,z=267,dy=3,type=!player,scores={Weekday=2}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] run execute as @e[x=1559,y=73,z=267,dy=3,type=!player,scores={Weekday=3}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @e[x=1559,y=73,z=267,dy=3,type=!player,scores={Weekday=4}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] run execute as @e[x=1559,y=73,z=267,dy=3,type=!player,scores={Weekday=5}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] run execute as @e[x=1559,y=73,z=267,dy=3,type=!player,scores={Weekday=6}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] run execute as @e[x=1559,y=73,z=267,dy=3,type=!player,scores={Weekday=7}] run tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand] add Skip


#Returns NPCs to spawn
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=1559,y=73,z=267,dy=3,type=!player,scores={Weekday=1}] -467 101 1272
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=1559,y=73,z=267,dy=3,type=!player,scores={Weekday=2}] -467 101 1274
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=1559,y=73,z=267,dy=3,type=!player,scores={Weekday=3}] -467 101 1276
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=1559,y=73,z=267,dy=3,type=!player,scores={Weekday=4}] -467 101 1278
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=1559,y=73,z=267,dy=3,type=!player,scores={Weekday=5}] -467 101 1280
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=1559,y=73,z=267,dy=3,type=!player,scores={Weekday=6}] -467 101 1282
execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=1559,y=73,z=267,dy=3,type=!player,scores={Weekday=7}] -467 101 1284


#tp NPC in
#[Day of the Week] ~ ~ ~ [If player is in the hotel] ~ ~ ~ [Testfor skip tag] ~ ~ ~ [TPs in proper NPC for the day of the week]
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] run execute as @a[x=1548,y=64,z=242,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-467,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=1}] 1559 74 267
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @a[x=1548,y=64,z=242,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-467,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=2}] 1559 74 267
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] run execute as @a[x=1548,y=64,z=242,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-467,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=3}] 1559 74 267
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @a[x=1548,y=64,z=242,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-467,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=4}] 1559 74 267
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] run execute as @a[x=1548,y=64,z=242,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-467,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=5}] 1559 74 267
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] run execute as @a[x=1548,y=64,z=242,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-467,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=6}] 1559 74 267
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] run execute as @a[x=1548,y=64,z=242,dx=60,dy=20,dz=46] run execute as @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-467,y=100,z=1272,dy=3,dz=12,tag=!player,scores={Weekday=7}] 1559 74 267



#Removes Skip tag if present
tag @e[x=-687,y=100,z=1386,dy=3,type=armor_stand,tag=Skip] remove Skip

#---------------------------------------------------------------------------------------------------------------------------------















#
