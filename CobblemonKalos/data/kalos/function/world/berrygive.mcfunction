#Oran Berry	Route 5	-777 100 -99
execute as @s[x=-777,y=98,z=-98,distance=..8,tag=OranPickup] run tellraw @s {"text":"The tree is growing berries. Better check back later.","italic":true,"color":"gray"}
execute as @s[x=-777,y=98,z=-98,distance=..8,tag=!OranPickup] run give @s cobblemon:oran_berry[can_place_on={predicates:[{blocks:farmland}]}]
execute as @s[x=-777,y=98,z=-98,distance=..8,tag=!OranPickup] run playsound minecraft:berryget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-777,y=98,z=-98,distance=..8,tag=!OranPickup] run tellraw @s {"text":"You found an Oran Berry!","italic":true,"color":"gray"}
execute as @s[x=-777,y=98,z=-98,distance=..8,tag=!OranPickup] run tag @s add OranPickup


#Persim Berry	Route 7	-1706 106 59
execute as @s[x=-1706,y=104,z=60,distance=..8,tag=PersimPickup] run tellraw @s {"text":"The tree is growing berries. Better check back later.","italic":true,"color":"gray"}
execute as @s[x=-1706,y=104,z=60,distance=..8,tag=!PersimPickup] run give @s cobblemon:persim_berry[can_place_on={predicates:[{blocks:farmland}]}]
execute as @s[x=-1706,y=104,z=60,distance=..8,tag=!PersimPickup] run playsound minecraft:berryget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1706,y=104,z=60,distance=..8,tag=!PersimPickup] run tellraw @s {"text":"You found a Persim Berry!","italic":true,"color":"gray"}
execute as @s[x=-1706,y=104,z=60,distance=..8,tag=!PersimPickup] run tag @s add PersimPickup


#Aguav Berry	Route 6	-1325 100 -209
execute as @s[x=-1325,y=98,z=-208,distance=..8,tag=AguavPickup] run tellraw @s {"text":"The tree is growing berries. Better check back later.","italic":true,"color":"gray"}
execute as @s[x=-1325,y=98,z=-208,distance=..8,tag=!AguavPickup] run give @s cobblemon:aguav_berry[can_place_on={predicates:[{blocks:farmland}]}]
execute as @s[x=-1325,y=98,z=-208,distance=..8,tag=!AguavPickup] run playsound minecraft:berryget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1325,y=98,z=-208,distance=..8,tag=!AguavPickup] run tellraw @s {"text":"You found an Aguav Berry!","italic":true,"color":"gray"}
execute as @s[x=-1325,y=98,z=-208,distance=..8,tag=!AguavPickup] run tag @s add AguavPickup


#Mago Berry	Route 8	-2041 100 379
execute as @s[x=-2041,y=98,z=380,distance=..8,tag=MagoPickup] run tellraw @s {"text":"The tree is growing berries. Better check back later.","italic":true,"color":"gray"}
execute as @s[x=-2041,y=98,z=380,distance=..8,tag=!MagoPickup] run give @s cobblemon:mago_berry[can_place_on={predicates:[{blocks:farmland}]}]
execute as @s[x=-2041,y=98,z=380,distance=..8,tag=!MagoPickup] run playsound minecraft:berryget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2041,y=98,z=380,distance=..8,tag=!MagoPickup] run tellraw @s {"text":"You found a Mago Berry!","italic":true,"color":"gray"}
execute as @s[x=-2041,y=98,z=380,distance=..8,tag=!MagoPickup] run tag @s add MagoPickup


#Iapapa Berry	Route 10	-2099 104 -284
execute as @s[x=-2099,y=102,z=-283,distance=..8,tag=IapapaPickup] run tellraw @s {"text":"The tree is growing berries. Better check back later.","italic":true,"color":"gray"}
execute as @s[x=-2099,y=102,z=-283,distance=..8,tag=!IapapaPickup] run give @s cobblemon:iapapa_berry[can_place_on={predicates:[{blocks:farmland}]}]
execute as @s[x=-2099,y=102,z=-283,distance=..8,tag=!IapapaPickup] run playsound minecraft:berryget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2099,y=102,z=-283,distance=..8,tag=!IapapaPickup] run tellraw @s {"text":"You found an Iapapa Berry!","italic":true,"color":"gray"}
execute as @s[x=-2099,y=102,z=-283,distance=..8,tag=!IapapaPickup] run tag @s add IapapaPickup


#Sitrus Berry	Route 11	-2032 104 -667
execute as @s[x=-2032,y=102,z=-666,distance=..8,tag=SitrusPickup] run tellraw @s {"text":"The tree is growing berries. Better check back later.","italic":true,"color":"gray"}
execute as @s[x=-2032,y=102,z=-666,distance=..8,tag=!SitrusPickup] run give @s cobblemon:sitrus_berry[can_place_on={predicates:[{blocks:farmland}]}]
execute as @s[x=-2032,y=102,z=-666,distance=..8,tag=!SitrusPickup] run playsound minecraft:berryget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-2032,y=102,z=-666,distance=..8,tag=!SitrusPickup] run tellraw @s {"text":"You found a Sitrus Berry!","italic":true,"color":"gray"}
execute as @s[x=-2032,y=102,z=-666,distance=..8,tag=!SitrusPickup] run tag @s add SitrusPickup


#Aspear Berry	Route 12	-1433 80 -783
execute as @s[x=-1433,y=78,z=-782,distance=..8,tag=AspearPickup] run tellraw @s {"text":"The tree is growing berries. Better check back later.","italic":true,"color":"gray"}
execute as @s[x=-1433,y=78,z=-782,distance=..8,tag=!AspearPickup] run give @s cobblemon:aspear_berry[can_place_on={predicates:[{blocks:farmland}]}]
execute as @s[x=-1433,y=78,z=-782,distance=..8,tag=!AspearPickup] run playsound minecraft:berryget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-1433,y=78,z=-782,distance=..8,tag=!AspearPickup] run tellraw @s {"text":"You found an Aspear Berry!","italic":true,"color":"gray"}
execute as @s[x=-1433,y=78,z=-782,distance=..8,tag=!AspearPickup] run tag @s add AspearPickup


#Roseli Berry	Route 14	-57 100 -1202
execute as @s[x=-57,y=98,z=-1201,distance=..8,tag=RoseliPickup] run tellraw @s {"text":"The tree is growing berries. Better check back later.","italic":true,"color":"gray"}
execute as @s[x=-57,y=98,z=-1201,distance=..8,tag=!RoseliPickup] run give @s cobblemon:roseli_berry[can_place_on={predicates:[{blocks:farmland}]}]
execute as @s[x=-57,y=98,z=-1201,distance=..8,tag=!RoseliPickup] run playsound minecraft:berryget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=-57,y=98,z=-1201,distance=..8,tag=!RoseliPickup] run tellraw @s {"text":"You found a Roseli Berry!","italic":true,"color":"gray"}
execute as @s[x=-57,y=98,z=-1201,distance=..8,tag=!RoseliPickup] run tag @s add RoseliPickup


#Leppa Berry	Route 15	389 108 -581
execute as @s[x=389,y=106,z=-580,distance=..8,tag=LeppaPickup] run tellraw @s {"text":"The tree is growing berries. Better check back later.","italic":true,"color":"gray"}
execute as @s[x=389,y=106,z=-580,distance=..8,tag=!LeppaPickup] run give @s cobblemon:leppa_berry[can_place_on={predicates:[{blocks:farmland}]}]
execute as @s[x=389,y=106,z=-580,distance=..8,tag=!LeppaPickup] run playsound minecraft:berryget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=389,y=106,z=-580,distance=..8,tag=!LeppaPickup] run tellraw @s {"text":"You found a Leppa Berry!","italic":true,"color":"gray"}
execute as @s[x=389,y=106,z=-580,distance=..8,tag=!LeppaPickup] run tag @s add LeppaPickup


#Lum Berry	Route 16	471 108 -210
execute as @s[x=471,y=106,z=-209,distance=..8,tag=LumPickup] run tellraw @s {"text":"The tree is growing berries. Better check back later.","italic":true,"color":"gray"}
execute as @s[x=471,y=106,z=-209,distance=..8,tag=!LumPickup] run give @s cobblemon:lum_berry[can_place_on={predicates:[{blocks:farmland}]}]
execute as @s[x=471,y=106,z=-209,distance=..8,tag=!LumPickup] run playsound minecraft:berryget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=471,y=106,z=-209,distance=..8,tag=!LumPickup] run tellraw @s {"text":"You found a Lum Berry!","italic":true,"color":"gray"}
execute as @s[x=471,y=106,z=-209,distance=..8,tag=!LumPickup] run tag @s add LumPickup


#Wacan Berry	Route 18	1409 108 -100
execute as @s[x=1409,y=106,z=-99,distance=..8,tag=WacanPickup] run tellraw @s {"text":"The tree is growing berries. Better check back later.","italic":true,"color":"gray"}
execute as @s[x=1409,y=106,z=-99,distance=..8,tag=!WacanPickup] run give @s cobblemon:wacan_berry[can_place_on={predicates:[{blocks:farmland}]}]
execute as @s[x=1409,y=106,z=-99,distance=..8,tag=!WacanPickup] run playsound minecraft:berryget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1409,y=106,z=-99,distance=..8,tag=!WacanPickup] run tellraw @s {"text":"You found a Wacan Berry!","italic":true,"color":"gray"}
execute as @s[x=1409,y=106,z=-99,distance=..8,tag=!WacanPickup] run tag @s add WacanPickup


#Yache Berry	Route 19	1448 87 396
execute as @s[x=1448,y=85,z=397,distance=..8,tag=YachePickup] run tellraw @s {"text":"The tree is growing berries. Better check back later.","italic":true,"color":"gray"}
execute as @s[x=1448,y=85,z=397,distance=..8,tag=!YachePickup] run give @s cobblemon:yache_berry[can_place_on={predicates:[{blocks:farmland}]}]
execute as @s[x=1448,y=85,z=397,distance=..8,tag=!YachePickup] run playsound minecraft:berryget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1448,y=85,z=397,distance=..8,tag=!YachePickup] run tellraw @s {"text":"You found a Yache Berry!","italic":true,"color":"gray"}
execute as @s[x=1448,y=85,z=397,distance=..8,tag=!YachePickup] run tag @s add YachePickup


#Kasib Berry	Route 20	1381 100 782
execute as @s[x=1381,y=98,z=783,distance=..8,tag=KasibPickup] run tellraw @s {"text":"The tree is growing berries. Better check back later.","italic":true,"color":"gray"}
execute as @s[x=1381,y=98,z=783,distance=..8,tag=!KasibPickup] run give @s cobblemon:kasib_berry[can_place_on={predicates:[{blocks:farmland}]}]
execute as @s[x=1381,y=98,z=783,distance=..8,tag=!KasibPickup] run playsound minecraft:berryget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=1381,y=98,z=783,distance=..8,tag=!KasibPickup] run tellraw @s {"text":"You found a Kasib Berry!","italic":true,"color":"gray"}
execute as @s[x=1381,y=98,z=783,distance=..8,tag=!KasibPickup] run tag @s add KasibPickup


#Figy Berry	Route 22	794 104 299
execute as @s[x=794,y=102,z=300,distance=..8,tag=FigyPickup] run tellraw @s {"text":"The tree is growing berries. Better check back later.","italic":true,"color":"gray"}
execute as @s[x=794,y=102,z=300,distance=..8,tag=!FigyPickup] run give @s cobblemon:figy_berry[can_place_on={predicates:[{blocks:farmland}]}]
execute as @s[x=794,y=102,z=300,distance=..8,tag=!FigyPickup] run playsound minecraft:berryget ambient @s ~ ~ ~ 1 1 1
execute as @s[x=794,y=102,z=300,distance=..8,tag=!FigyPickup] run tellraw @s {"text":"You found a Figy Berry!","italic":true,"color":"gray"}
execute as @s[x=794,y=102,z=300,distance=..8,tag=!FigyPickup] run tag @s add FigyPickup

advancement revoke @s only kalos:click/berrytrees