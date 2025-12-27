tag @s[x=-1875,y=137,z=560,dx=507,dy=6,dz=202,tag=Riding] remove Riding

#Zones give player back Riding Score
execute as @s at @s if entity @e[type=cobblemon:pokemon,nbt={Pokemon:{Species:"cobblemon:rhyhorn"}},distance=..5] run tag @s add Riding
execute as @s at @s if entity @e[type=cobblemon:pokemon,nbt={Pokemon:{Species:"cobblemon:rhydon"}},distance=..5] run tag @s add Riding
execute as @s at @s if entity @e[type=cobblemon:pokemon,nbt={Pokemon:{Species:"cobblemon:rhyperior"}},distance=..5] run tag @s add Riding

#Tellraw if player is in zone without Rhyhorn
tellraw @s[x=-1777,y=135,z=629,dx=131,dy=20,dz=15,tag=!Riding] {"text":"You need to ride a Rhyhorn to traverse this route!","italic":true,"color":"gray"}
tellraw @s[x=-1777,y=135,z=645,dx=208,dy=20,dz=42,tag=!Riding] {"text":"You need to ride a Rhyhorn to traverse this route!","italic":true,"color":"gray"}
tellraw @s[x=-1645,y=135,z=637,dx=31,dy=20,dz=7,tag=!Riding] {"text":"You need to ride a Rhyhorn to traverse this route!","italic":true,"color":"gray"}
tellraw @s[x=-1613,y=135,z=601,dx=83,dy=20,dz=43,tag=!Riding] {"text":"You need to ride a Rhyhorn to traverse this route!","italic":true,"color":"gray"}
tellraw @s[x=-1529,y=135,z=618,dx=20,dy=20,dz=28,tag=!Riding] {"text":"You need to ride a Rhyhorn to traverse this route!","italic":true,"color":"gray"}
tellraw @s[x=-1508,y=135,z=613,dx=30,dy=20,dz=35,tag=!Riding] {"text":"You need to ride a Rhyhorn to traverse this route!","italic":true,"color":"gray"}


tp @s[x=-1777,y=135,z=629,dx=131,dy=20,dz=15,tag=!Riding] -1784 139 654
tp @s[x=-1777,y=135,z=645,dx=208,dy=20,dz=42,tag=!Riding] -1784 139 654
tp @s[x=-1645,y=135,z=637,dx=31,dy=20,dz=7,tag=!Riding] -1632 139 628
tp @s[x=-1613,y=135,z=601,dx=83,dy=20,dz=43,tag=!Riding] -1513 139 602
tp @s[x=-1529,y=135,z=618,dx=20,dy=20,dz=28,tag=!Riding] -1513 139 602
tp @s[x=-1508,y=135,z=613,dx=30,dy=20,dz=35,tag=!Riding] -1470 139 634
