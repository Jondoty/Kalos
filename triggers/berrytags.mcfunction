#Despawns Trees
execute at @e[scores={CutUse=1..}] run tag @e[distance=..10,type=item,tag=!Despawn,nbt={Item:{id:"pixelmon:tree"}}] add Despawn
execute at @e[scores={CutUse=1..}] run execute as @e[distance=..10,tag=Despawn,type=item] run data modify entity @s {Lifespan:0}


#Berries
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:roseli_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:roseli_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:jaboca_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:rowap_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:kee_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:maranga_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:starf_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:custap_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:micle_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:enigma_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:pumkin_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:drash_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:eggant_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:yago_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:touga_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:ginema_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:occa_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:passho_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:wacan_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:rindo_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:yache_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:chople_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:kebia_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:shuca_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:coba_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:payapa_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:tanga_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:charti_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:kasib_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:haban_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:colbur_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:babiri_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:chilan_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:pomeg_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:kelpsy_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:qualot_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:hondew_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:grepa_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:tamato_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:cheri_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:chesto_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:pecha_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:rawst_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:aspear_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:leppa_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:persim_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:oran_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:lum_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:sitrus_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:figy_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:wiki_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:mago_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:aguav_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:iapapa_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:liechi_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:ganlon_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:salac_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:petaya_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:apicot_berry"}}] Berry 0
execute as @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,tag=!Berry,nbt={Item:{id:"pixelmon:lansat_berry"}}] Berry 0

#Adds CanPlaceOn Tag
execute at @e[scores={CutUse=1..}] run execute as @e[distance=..10,type=item,scores={Berry=0}] run data modify entity @s {Item:{tag:{CanPlaceOn:["farmland"]}}}
execute at @e[scores={CutUse=1..}] run scoreboard players set @e[distance=..10,type=item,scores={Berry=0}] Berry 1
execute at @e[scores={CutUse=1..}] run tag @e[distance=..10,scores={Berry=1..},tag=!Berry] add Berry


scoreboard players set @a[scores={CutUse=1..}] CutUse 0
