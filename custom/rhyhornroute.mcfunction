scoreboard players tag @a[x=-1875,y=0,z=560,dx=507,dy=256,dz=202,tag=Riding] remove Riding

#Zones give player back Riding Score
execute @e[x=-1613,y=135,z=601,dx=83,dy=20,dz=43,type=pixelmon:pixelmon,name=Rhyhorn] ~ ~ ~ /execute @a[type=player,r=1] ~ ~ ~ /scoreboard players tag @s add Riding
execute @e[x=-1529,y=135,z=618,dx=20,dy=20,dz=28,type=pixelmon:pixelmon,name=Rhyhorn] ~ ~ ~ /execute @a[type=player,r=1] ~ ~ ~ /scoreboard players tag @s add Riding
execute @e[x=-1508,y=135,z=613,dx=30,dy=20,dz=35,type=pixelmon:pixelmon,name=Rhyhorn] ~ ~ ~ /execute @a[type=player,r=1] ~ ~ ~ /scoreboard players tag @s add Riding
execute @e[x=-1645,y=135,z=637,dx=31,dy=20,dz=7,type=pixelmon:pixelmon,name=Rhyhorn] ~ ~ ~ /execute @a[type=player,r=1] ~ ~ ~ /scoreboard players tag @s add Riding
execute @e[x=-1777,y=135,z=645,dx=208,dy=20,dz=42,type=pixelmon:pixelmon,name=Rhyhorn] ~ ~ ~ /execute @a[type=player,r=1] ~ ~ ~ /scoreboard players tag @s add Riding
execute @e[x=-1777,y=135,z=629,dx=131,dy=20,dz=15,type=pixelmon:pixelmon,name=Rhyhorn] ~ ~ ~ /execute @a[type=player,r=1] ~ ~ ~ /scoreboard players tag @s add Riding

execute @e[x=-1613,y=135,z=601,dx=83,dy=20,dz=43,type=pixelmon:pixelmon,name=Rhydon] ~ ~ ~ /execute @a[type=player,r=1] ~ ~ ~ /scoreboard players tag @s add Riding
execute @e[x=-1529,y=135,z=618,dx=20,dy=20,dz=28,type=pixelmon:pixelmon,name=Rhydon] ~ ~ ~ /execute @a[type=player,r=1] ~ ~ ~ /scoreboard players tag @s add Riding
execute @e[x=-1508,y=135,z=613,dx=30,dy=20,dz=35,type=pixelmon:pixelmon,name=Rhydon] ~ ~ ~ /execute @a[type=player,r=1] ~ ~ ~ /scoreboard players tag @s add Riding
execute @e[x=-1645,y=135,z=637,dx=31,dy=20,dz=7,type=pixelmon:pixelmon,name=Rhydon] ~ ~ ~ /execute @a[type=player,r=1] ~ ~ ~ /scoreboard players tag @s add Riding
execute @e[x=-1777,y=135,z=645,dx=208,dy=20,dz=42,type=pixelmon:pixelmon,name=Rhydon] ~ ~ ~ /execute @a[type=player,r=1] ~ ~ ~ /scoreboard players tag @s add Riding
execute @e[x=-1777,y=135,z=629,dx=131,dy=20,dz=15,type=pixelmon:pixelmon,name=Rhydon] ~ ~ ~ /execute @a[type=player,r=1] ~ ~ ~ /scoreboard players tag @s add Riding

execute @e[x=-1613,y=135,z=601,dx=83,dy=20,dz=43,type=pixelmon:pixelmon,name=Rhyperior] ~ ~ ~ /execute @a[type=player,r=1] ~ ~ ~ /scoreboard players tag @s add Riding
execute @e[x=-1529,y=135,z=618,dx=20,dy=20,dz=28,type=pixelmon:pixelmon,name=Rhyperior] ~ ~ ~ /execute @a[type=player,r=1] ~ ~ ~ /scoreboard players tag @s add Riding
execute @e[x=-1508,y=135,z=613,dx=30,dy=20,dz=35,type=pixelmon:pixelmon,name=Rhyperior] ~ ~ ~ /execute @a[type=player,r=1] ~ ~ ~ /scoreboard players tag @s add Riding
execute @e[x=-1645,y=135,z=637,dx=31,dy=20,dz=7,type=pixelmon:pixelmon,name=Rhyperior] ~ ~ ~ /execute @a[type=player,r=1] ~ ~ ~ /scoreboard players tag @s add Riding
execute @e[x=-1777,y=135,z=645,dx=208,dy=20,dz=42,type=pixelmon:pixelmon,name=Rhyperior] ~ ~ ~ /execute @a[type=player,r=1] ~ ~ ~ /scoreboard players tag @s add Riding
execute @e[x=-1777,y=135,z=629,dx=131,dy=20,dz=15,type=pixelmon:pixelmon,name=Rhyperior] ~ ~ ~ /execute @a[type=player,r=1] ~ ~ ~ /scoreboard players tag @s add Riding

#Tellraw if player is in zone without Rhyhorn
tellraw @a[x=-1777,y=135,z=629,dx=131,dy=20,dz=15,tag=!Riding] {"text":"You need to ride a Rhyhorn to traverse this route!","italic":true,"color":"gray"}
tellraw @a[x=-1777,y=135,z=645,dx=208,dy=20,dz=42,tag=!Riding] {"text":"You need to ride a Rhyhorn to traverse this route!","italic":true,"color":"gray"}
tellraw @a[x=-1645,y=135,z=637,dx=31,dy=20,dz=7,tag=!Riding] {"text":"You need to ride a Rhyhorn to traverse this route!","italic":true,"color":"gray"}
tellraw @a[x=-1613,y=135,z=601,dx=83,dy=20,dz=43,tag=!Riding] {"text":"You need to ride a Rhyhorn to traverse this route!","italic":true,"color":"gray"}
tellraw @a[x=-1529,y=135,z=618,dx=20,dy=20,dz=28,tag=!Riding] {"text":"You need to ride a Rhyhorn to traverse this route!","italic":true,"color":"gray"}
tellraw @a[x=-1508,y=135,z=613,dx=30,dy=20,dz=35,tag=!Riding] {"text":"You need to ride a Rhyhorn to traverse this route!","italic":true,"color":"gray"}


tp @a[x=-1777,y=135,z=629,dx=131,dy=20,dz=15,tag=!Riding,type=player] -1784 139 654
tp @a[x=-1777,y=135,z=645,dx=208,dy=20,dz=42,tag=!Riding,type=player] -1784 139 654
tp @a[x=-1645,y=135,z=637,dx=31,dy=20,dz=7,tag=!Riding,type=player] -1632 139 628
tp @a[x=-1613,y=135,z=601,dx=83,dy=20,dz=43,tag=!Riding,type=player] -1513 139 602
tp @a[x=-1529,y=135,z=618,dx=20,dy=20,dz=28,tag=!Riding,type=player] -1513 139 602
tp @a[x=-1508,y=135,z=613,dx=30,dy=20,dz=35,tag=!Riding,type=player] -1470 139 634
