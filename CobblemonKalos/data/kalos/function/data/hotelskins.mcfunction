#Adjusts the hotel guests depending on the day

#Camphrier Town
execute if entity @a[x=-1121,y=70,z=-24,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] run data merge entity @n[x=-1110,y=80,z=0,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:waitress_generic"}
execute if entity @a[x=-1121,y=70,z=-24,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run data merge entity @n[x=-1110,y=80,z=0,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:tourist_generic"}
execute if entity @a[x=-1121,y=70,z=-24,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] run data merge entity @n[x=-1110,y=80,z=0,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:backpacker_generic"}
execute if entity @a[x=-1121,y=70,z=-24,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run data merge entity @n[x=-1110,y=80,z=0,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:hiker_generic"}
execute if entity @a[x=-1121,y=70,z=-24,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] run data merge entity @n[x=-1110,y=80,z=0,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:waiter_generic"}
execute if entity @a[x=-1121,y=70,z=-24,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] run data merge entity @n[x=-1110,y=80,z=0,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:oldlady_generic"}
execute if entity @a[x=-1121,y=70,z=-24,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] run data merge entity @n[x=-1110,y=80,z=0,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:waitress_generic"}

#Ambrette Town
execute if entity @a[x=-2001,y=99,z=622,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] run data merge entity @n[x=-1990,y=109,z=647,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:tourist_generic"}
execute if entity @a[x=-2001,y=99,z=622,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run data merge entity @n[x=-1990,y=109,z=647,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:backpacker_generic"}
execute if entity @a[x=-2001,y=99,z=622,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] run data merge entity @n[x=-1990,y=109,z=647,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:hiker_generic"}
execute if entity @a[x=-2001,y=99,z=622,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run data merge entity @n[x=-1990,y=109,z=647,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:waiter_generic"}
execute if entity @a[x=-2001,y=99,z=622,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] run data merge entity @n[x=-1990,y=109,z=647,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:oldlady_generic"}
execute if entity @a[x=-2001,y=99,z=622,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] run data merge entity @n[x=-1990,y=109,z=647,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:waitress_generic"}
execute if entity @a[x=-2001,y=99,z=622,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] run data merge entity @n[x=-1990,y=109,z=647,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:tourist_generic"}

#Cyllage Town
execute if entity @a[x=-2059,y=55,z=-178,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] run data merge entity @n[x=-2048,y=65,z=-153,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:backpacker_generic"}
execute if entity @a[x=-2059,y=55,z=-178,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run data merge entity @n[x=-2048,y=65,z=-153,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:hiker_generic"}
execute if entity @a[x=-2059,y=55,z=-178,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] run data merge entity @n[x=-2048,y=65,z=-153,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:waiter_generic"}
execute if entity @a[x=-2059,y=55,z=-178,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run data merge entity @n[x=-2048,y=65,z=-153,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:oldlady_generic"}
execute if entity @a[x=-2059,y=55,z=-178,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] run data merge entity @n[x=-2048,y=65,z=-153,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:waitress_generic"}
execute if entity @a[x=-2059,y=55,z=-178,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] run data merge entity @n[x=-2048,y=65,z=-153,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:tourist_generic"}
execute if entity @a[x=-2059,y=55,z=-178,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] run data merge entity @n[x=-2048,y=65,z=-153,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:backpacker_generic"}

#Geosenge Town
execute if entity @a[x=-2201,y=77,z=-661,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] run data merge entity @n[x=-2190,y=87,z=-636,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:hiker_generic"}
execute if entity @a[x=-2201,y=77,z=-661,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run data merge entity @n[x=-2190,y=87,z=-636,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:waiter_generic"}
execute if entity @a[x=-2201,y=77,z=-661,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] run data merge entity @n[x=-2190,y=87,z=-636,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:oldlady_generic"}
execute if entity @a[x=-2201,y=77,z=-661,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run data merge entity @n[x=-2190,y=87,z=-636,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:waitress_generic"}
execute if entity @a[x=-2201,y=77,z=-661,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] run data merge entity @n[x=-2190,y=87,z=-636,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:tourist_generic"}
execute if entity @a[x=-2201,y=77,z=-661,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] run data merge entity @n[x=-2190,y=87,z=-636,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:backpacker_generic"}
execute if entity @a[x=-2201,y=77,z=-661,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] run data merge entity @n[x=-2190,y=87,z=-636,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:hiker_generic"}

#Coumarine Town
execute if entity @a[x=-1066,y=46,z=-835,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] run data merge entity @n[x=-1055,y=56,z=-810,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:waiter_generic"}
execute if entity @a[x=-1066,y=46,z=-835,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run data merge entity @n[x=-1055,y=56,z=-810,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:oldlady_generic"}
execute if entity @a[x=-1066,y=46,z=-835,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] run data merge entity @n[x=-1055,y=56,z=-810,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:waitress_generic"}
execute if entity @a[x=-1066,y=46,z=-835,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run data merge entity @n[x=-1055,y=56,z=-810,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:tourist_generic"}
execute if entity @a[x=-1066,y=46,z=-835,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] run data merge entity @n[x=-1055,y=56,z=-810,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:backpacker_generic"}
execute if entity @a[x=-1066,y=46,z=-835,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] run data merge entity @n[x=-1055,y=56,z=-810,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:hiker_generic"}
execute if entity @a[x=-1066,y=46,z=-835,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] run data merge entity @n[x=-1055,y=56,z=-810,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:waiter_generic"}

#Couriway Town
execute if entity @a[x=1548,y=64,z=242,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] run data merge entity @n[x=1559,y=74,z=267,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:oldlady_generic"}
execute if entity @a[x=1548,y=64,z=242,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run data merge entity @n[x=1559,y=74,z=267,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:waitress_generic"}
execute if entity @a[x=1548,y=64,z=242,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] run data merge entity @n[x=1559,y=74,z=267,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:tourist_generic"}
execute if entity @a[x=1548,y=64,z=242,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run data merge entity @n[x=1559,y=74,z=267,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:backpacker_generic"}
execute if entity @a[x=1548,y=64,z=242,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] run data merge entity @n[x=1559,y=74,z=267,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:hiker_generic"}
execute if entity @a[x=1548,y=64,z=242,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] run data merge entity @n[x=1559,y=74,z=267,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:waiter_generic"}
execute if entity @a[x=1548,y=64,z=242,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] run data merge entity @n[x=1559,y=74,z=267,dy=3,type=cobblemon:npc] {NPCClass:"cobblemon:oldlady_generic"}





#Spawns or despawns Hotel Ribbon NPC nextdoor

#Ambrette Town Alert Ribbon Tourist (Monday)
execute if entity @a[x=-2001,y=99,z=622,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] unless entity @e[x=-1970,y=109,z=647,dy=3,type=cobblemon:npc] run npcspawnat -1970 109 647 ribbontourist_monday
execute if entity @a[x=-2001,y=99,z=622,dx=60,dy=20,dz=46] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] run tp @e[x=-1970,y=109,z=647,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000


#Camphrier Town Shock Ribbon Tourist (Tuesday)
execute if entity @a[x=-1121,y=70,z=-24,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] unless entity @e[x=-1090,y=81,z=1,dy=3,type=cobblemon:npc] run npcspawnat -1090 81 1 ribbontourist_tuesday
execute if entity @a[x=-1121,y=70,z=-24,dx=60,dy=20,dz=46] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run tp @e[x=-1090,y=81,z=1,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000


#Geosenge Town Downcast Ribbon Tourist (Wednesday)
execute if entity @a[x=-2201,y=77,z=-661,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] unless entity @e[x=-2170,y=87,z=-636,dy=3,type=cobblemon:npc] run npcspawnat -2170 87 -636 ribbontourist_wednesday
execute if entity @a[x=-2201,y=77,z=-661,dx=60,dy=20,dz=46] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] run tp @e[x=-2170,y=87,z=-636,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000


#Coumarine Town Careless Ribbon Tourist (Thursday)
execute if entity @a[x=-1066,y=46,z=-835,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] unless entity @e[x=-1035,y=56,z=-810,dy=3,type=cobblemon:npc] run npcspawnat -1035 56 -810 ribbontourist_thursday
execute if entity @a[x=-1066,y=46,z=-835,dx=60,dy=20,dz=46] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run tp @e[x=-1035,y=56,z=-810,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000


#Couriway Town Relax Ribbon Tourist (Friday)
execute if entity @a[x=1548,y=64,z=242,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] unless entity @e[x=1579,y=74,z=267,dy=3,type=cobblemon:npc] run npcspawnat 1579 74 267 ribbontourist_friday
execute if entity @a[x=1548,y=64,z=242,dx=60,dy=20,dz=46] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] run tp @e[x=1579,y=74,z=267,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000


#Cyllage Town Snooze Ribbon Tourist (Saturday)
execute if entity @a[x=-2059,y=55,z=-178,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] unless entity @e[x=-2028,y=65,z=-153,dy=3,type=cobblemon:npc] run npcspawnat -2028 65 -153 ribbontourist_saturday
execute if entity @a[x=-2059,y=55,z=-178,dx=60,dy=20,dz=46] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] run tp @e[x=-2028,y=65,z=-153,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000


#Coumarine Town Careless Ribbon Tourist (Sunday)
execute if entity @a[x=-1066,y=46,z=-835,dx=60,dy=20,dz=46] if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] unless entity @e[x=-1034,y=56,z=-810,dy=3,type=cobblemon:npc] run npcspawnat -1034 56 -810 ribbontourist_sunday
execute if entity @a[x=-1066,y=46,z=-835,dx=60,dy=20,dz=46] unless entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] run tp @e[x=-1034,y=56,z=-810,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000







#