#Function that manages what specific NPCs say when you click on boxes surroung them.
#Used to have the same NPC say different lines depending on the player's own tags.

#Dynamic Shop NPCs
scoreboard players set @s Temp 0
execute as @s[tag=Viola] run scoreboard players add @s Temp 1
execute as @s[tag=Grant] run scoreboard players add @s Temp 1
execute as @s[tag=Korrina] run scoreboard players add @s Temp 1
execute as @s[tag=Ramos] run scoreboard players add @s Temp 1
execute as @s[tag=Clemont] run scoreboard players add @s Temp 1
execute as @s[tag=Valerie] run scoreboard players add @s Temp 1
execute as @s[tag=Olympia] run scoreboard players add @s Temp 1
execute as @s[tag=Wulfric] run scoreboard players add @s Temp 1

#Santalune
execute as @s[x=305,y=68,z=462,distance=..6,scores={Temp=0}] run opendialogue 0_badges_shop_interaction @s
execute as @s[x=305,y=68,z=462,distance=..6,scores={Temp=1}] run opendialogue 1_badges_shop_interaction @s
execute as @s[x=305,y=68,z=462,distance=..6,scores={Temp=2}] run opendialogue 2_badges_shop_interaction @s
execute as @s[x=305,y=68,z=462,distance=..6,scores={Temp=3}] run opendialogue 3_badges_shop_interaction @s
execute as @s[x=305,y=68,z=462,distance=..6,scores={Temp=4}] run opendialogue 4_badges_shop_interaction @s
execute as @s[x=305,y=68,z=462,distance=..6,scores={Temp=5..}] run opendialogue 5_badges_shop_interaction @s



advancement revoke @s only kalos:click/npcs

#