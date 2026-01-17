#Integrates a Cobblemon Home portal in the Professor's Lab, only accessible in the post-game.
setblock -259 111 87 cobblemon_home:home_storage_terminal[facing=east]
execute unless entity @e[x=-259,y=111,z=87,distance=..2,type=interaction] run summon minecraft:interaction -259 111 87 {width:1.25,height:1.25,response:1,Tags:[NPCs]}


#