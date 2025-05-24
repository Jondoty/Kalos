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

#Lumiose City North Main
execute as @s[x=-478,y=101,z=432,distance=..6,scores={Temp=0}] run opendialogue 0_badges_shop_interaction @s
execute as @s[x=-478,y=101,z=432,distance=..6,scores={Temp=1}] run opendialogue 1_badges_shop_interaction @s
execute as @s[x=-478,y=101,z=432,distance=..6,scores={Temp=2}] run opendialogue 2_badges_shop_interaction @s
execute as @s[x=-478,y=101,z=432,distance=..6,scores={Temp=3}] run opendialogue 3_badges_shop_interaction @s
execute as @s[x=-478,y=101,z=432,distance=..6,scores={Temp=4}] run opendialogue 4_badges_shop_interaction @s
execute as @s[x=-478,y=101,z=432,distance=..6,scores={Temp=5..}] run opendialogue 5_badges_shop_interaction @s

#Lumiose City South Main
execute as @s[x=-367,y=101,z=432,distance=..6,scores={Temp=0}] run opendialogue 0_badges_shop_interaction @s
execute as @s[x=-367,y=101,z=432,distance=..6,scores={Temp=1}] run opendialogue 1_badges_shop_interaction @s
execute as @s[x=-367,y=101,z=432,distance=..6,scores={Temp=2}] run opendialogue 2_badges_shop_interaction @s
execute as @s[x=-367,y=101,z=432,distance=..6,scores={Temp=3}] run opendialogue 3_badges_shop_interaction @s
execute as @s[x=-367,y=101,z=432,distance=..6,scores={Temp=4}] run opendialogue 4_badges_shop_interaction @s
execute as @s[x=-367,y=101,z=432,distance=..6,scores={Temp=5..}] run opendialogue 5_badges_shop_interaction @s

#Lumiose City Mid Main
execute as @s[x=-421,y=101,z=432,distance=..6,scores={Temp=0}] run opendialogue 0_badges_shop_interaction @s
execute as @s[x=-421,y=101,z=432,distance=..6,scores={Temp=1}] run opendialogue 1_badges_shop_interaction @s
execute as @s[x=-421,y=101,z=432,distance=..6,scores={Temp=2}] run opendialogue 2_badges_shop_interaction @s
execute as @s[x=-421,y=101,z=432,distance=..6,scores={Temp=3}] run opendialogue 3_badges_shop_interaction @s
execute as @s[x=-421,y=101,z=432,distance=..6,scores={Temp=4}] run opendialogue 4_badges_shop_interaction @s
execute as @s[x=-421,y=101,z=432,distance=..6,scores={Temp=5..}] run opendialogue 5_badges_shop_interaction @s

#Camphrier Town
execute as @s[x=-1004,y=80,z=-14,distance=..6,scores={Temp=0}] run opendialogue 0_badges_shop_interaction @s
execute as @s[x=-1004,y=80,z=-14,distance=..6,scores={Temp=1}] run opendialogue 1_badges_shop_interaction @s
execute as @s[x=-1004,y=80,z=-14,distance=..6,scores={Temp=2}] run opendialogue 2_badges_shop_interaction @s
execute as @s[x=-1004,y=80,z=-14,distance=..6,scores={Temp=3}] run opendialogue 3_badges_shop_interaction @s
execute as @s[x=-1004,y=80,z=-14,distance=..6,scores={Temp=4}] run opendialogue 4_badges_shop_interaction @s
execute as @s[x=-1004,y=80,z=-14,distance=..6,scores={Temp=5..}] run opendialogue 5_badges_shop_interaction @s

#Ambrette Town
execute as @s[x=-1952,y=103,z=530,distance=..6,scores={Temp=0}] run opendialogue 0_badges_shop_interaction @s
execute as @s[x=-1952,y=103,z=530,distance=..6,scores={Temp=1}] run opendialogue 1_badges_shop_interaction @s
execute as @s[x=-1952,y=103,z=530,distance=..6,scores={Temp=2}] run opendialogue 2_badges_shop_interaction @s
execute as @s[x=-1952,y=103,z=530,distance=..6,scores={Temp=3}] run opendialogue 3_badges_shop_interaction @s
execute as @s[x=-1952,y=103,z=530,distance=..6,scores={Temp=4}] run opendialogue 4_badges_shop_interaction @s
execute as @s[x=-1952,y=103,z=530,distance=..6,scores={Temp=5..}] run opendialogue 5_badges_shop_interaction @s

#Ambrette Town
execute as @s[x=-2028,y=78,z=-86,distance=..6,scores={Temp=0}] run opendialogue 0_badges_shop_interaction @s
execute as @s[x=-2028,y=78,z=-86,distance=..6,scores={Temp=1}] run opendialogue 1_badges_shop_interaction @s
execute as @s[x=-2028,y=78,z=-86,distance=..6,scores={Temp=2}] run opendialogue 2_badges_shop_interaction @s
execute as @s[x=-2028,y=78,z=-86,distance=..6,scores={Temp=3}] run opendialogue 3_badges_shop_interaction @s
execute as @s[x=-2028,y=78,z=-86,distance=..6,scores={Temp=4}] run opendialogue 4_badges_shop_interaction @s
execute as @s[x=-2028,y=78,z=-86,distance=..6,scores={Temp=5..}] run opendialogue 5_badges_shop_interaction @s

#Geosenge Town
execute as @s[x=-2232,y=79,z=-650,distance=..6,scores={Temp=0}] run opendialogue 0_badges_shop_interaction @s
execute as @s[x=-2232,y=79,z=-650,distance=..6,scores={Temp=1}] run opendialogue 1_badges_shop_interaction @s
execute as @s[x=-2232,y=79,z=-650,distance=..6,scores={Temp=2}] run opendialogue 2_badges_shop_interaction @s
execute as @s[x=-2232,y=79,z=-650,distance=..6,scores={Temp=3}] run opendialogue 3_badges_shop_interaction @s
execute as @s[x=-2232,y=79,z=-650,distance=..6,scores={Temp=4}] run opendialogue 4_badges_shop_interaction @s
execute as @s[x=-2232,y=79,z=-650,distance=..6,scores={Temp=5..}] run opendialogue 5_badges_shop_interaction @s

#Shalour City
execute as @s[x=-1611,y=57,z=-843,distance=..6,scores={Temp=0}] run opendialogue 0_badges_shop_interaction @s
execute as @s[x=-1611,y=57,z=-843,distance=..6,scores={Temp=1}] run opendialogue 1_badges_shop_interaction @s
execute as @s[x=-1611,y=57,z=-843,distance=..6,scores={Temp=2}] run opendialogue 2_badges_shop_interaction @s
execute as @s[x=-1611,y=57,z=-843,distance=..6,scores={Temp=3}] run opendialogue 3_badges_shop_interaction @s
execute as @s[x=-1611,y=57,z=-843,distance=..6,scores={Temp=4}] run opendialogue 4_badges_shop_interaction @s
execute as @s[x=-1611,y=57,z=-843,distance=..6,scores={Temp=5..}] run opendialogue 5_badges_shop_interaction @s

#Coumarine City
execute as @s[x=-1018,y=89,z=-684,distance=..6,scores={Temp=0}] run opendialogue 0_badges_shop_interaction @s
execute as @s[x=-1018,y=89,z=-684,distance=..6,scores={Temp=1}] run opendialogue 1_badges_shop_interaction @s
execute as @s[x=-1018,y=89,z=-684,distance=..6,scores={Temp=2}] run opendialogue 2_badges_shop_interaction @s
execute as @s[x=-1018,y=89,z=-684,distance=..6,scores={Temp=3}] run opendialogue 3_badges_shop_interaction @s
execute as @s[x=-1018,y=89,z=-684,distance=..6,scores={Temp=4}] run opendialogue 4_badges_shop_interaction @s
execute as @s[x=-1018,y=89,z=-684,distance=..6,scores={Temp=5..}] run opendialogue 5_badges_shop_interaction @s




#Hall of Fame dialogue trigger
execute as @s[x=-1998,y=12,z=1915,distance=..6] run tag @s remove Dialogue154
execute as @s[x=-1998,y=12,z=1915,distance=..6] run scoreboard players set @s DialogueTrigger 154













advancement revoke @s only kalos:click/npcs

#