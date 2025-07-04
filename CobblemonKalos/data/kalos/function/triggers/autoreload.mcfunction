#A function that seeks to auto reload the server when this function fails to load.
#Some Cobblemon commands only work when a server is reloaded


#tags the armor stand for a ReloadCheck.
tag @e[x=-563,y=100,z=1241,dy=3] add ReloadCheck

#Purposeful command that errors out unless reloaded
execute as @p[x=-504,y=101,z=1229,distance=..5] unless entity @e[x=-504,y=101,z=1229,dy=2,type=cobblemon:npc] run npcspawnat -504 101 1229 lobby_testnpc 1