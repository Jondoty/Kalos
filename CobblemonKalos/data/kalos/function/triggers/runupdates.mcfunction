#Runs updates between minor versions, allowing players to only update their datapacks.























#1.0.0 to 1.0.1
execute if entity @p[x=-246,y=111,z=93,distance=..50] if block -246 111 93 air run setblock -244 111 93 mega_showdown:rotom_fridge[facing=south]
execute if entity @p[x=-246,y=111,z=93,distance=..50] if block -246 111 93 air run setblock -243 111 93 mega_showdown:rotom_fan[facing=west]
execute if entity @p[x=-246,y=111,z=93,distance=..50] if block -246 111 93 air run setblock -242 111 93 mega_showdown:rotom_oven[facing=south]
execute if entity @p[x=-246,y=111,z=93,distance=..50] if block -246 111 93 air run setblock -240 111 93 mega_showdown:rotom_washing_machine[facing=south]
execute if entity @p[x=-246,y=111,z=93,distance=..50] if block -246 111 93 air run execute positioned -245 111 93 run function kalos:spawn/itemloot
execute if entity @p[x=-246,y=111,z=93,distance=..50] if block -246 111 93 air run setblock -246 111 93 mega_showdown:rotom_mow[facing=south]







#