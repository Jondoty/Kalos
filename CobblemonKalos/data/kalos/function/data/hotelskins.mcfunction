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

#Cyllage Town
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
