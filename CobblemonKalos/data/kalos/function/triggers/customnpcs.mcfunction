#Function that manages what specific NPCs say when you click on boxes surroung them.
#Used to have the same NPC say different lines depending on the player's own tags.

#-------------------------------------------------------------
#Legendary Pokemon Triggers
#execute as @e[distance=..3,type=cobblemon:pokemon] at @s run summon minecraft:interaction ~ ~ ~ {width:3,height:5,response:1,Tags:[NPCs]}

#Mewtwo
execute as @s[x=845,y=75,z=559,distance=..10,scores={Mewtwo=0}] run opendialogue mewtwo_encounter @s

#Zygarde
execute as @s[x=2015,y=61,z=-174,distance=..10,scores={Zygarde=0}] run opendialogue zygarde_encounter @s

#Articuno
execute as @s[x=-1335,y=22,z=-1252,distance=..10,scores={Articuno=5,StarterPick=1}] run opendialogue articuno_encounter @s

#Zapdos
execute as @s[x=-1349,y=22,z=-1232,distance=..10,scores={Zapdos=5,StarterPick=2}] run opendialogue zapdos_encounter @s

#Moltres
execute as @s[x=-1313,y=22,z=-1232,distance=..10,scores={Moltres=5,StarterPick=3}] run opendialogue moltres_encounter @s

#Diancie
execute as @s[x=-1707,y=2,z=-437,distance=..10,scores={Diancie=0}] run opendialogue diancie_encounter @s

#Hoopa

#Volcanion



#-------------------------------------------------------------
#General Story NPCs

#Mom



#Santalune City Alexa
execute as @s[x=187,y=100,z=389,distance=..6,tag=!Viola] run opendialogue alexa_block @s
execute as @s[x=187,y=100,z=389,distance=..6,tag=Viola,tag=!Dialogue11] run opendialogue alexa_dialogue11 @s
execute as @s[x=187,y=100,z=389,distance=..6,tag=Viola,tag=Dialogue11] run opendialogue alexa_post @s


#Professor Sycamore
execute as @s[x=-265,y=121,z=90,distance=..6] run opendialogue sycamoreslab_sycamore_interaction @s

#Shalour Hiker with and without stone
execute as @s[x=-1563,y=83,z=-844,distance=..6] unless data entity @s Inventory[{id:"minecraft:prismarine_crystals"}] run opendialogue shalourhiker_default @s
execute as @s[x=-1563,y=83,z=-844,distance=..6] if data entity @s Inventory[{id:"minecraft:prismarine_crystals"}] run opendialogue shalourhiker_stone @s
execute as @s[x=-1563,y=83,z=-844,distance=..6,tag=Dialogue264] run opendialogue shalourhiker_traded @s


#Celosia & Bryony Poke Ball Factory pre-admin-battle
execute as @s[x=-83,y=103,z=-2010,distance=..3,tag=!Dialogue89] run opendialogue pokeballfactory_bryony_prebattle @s
execute as @s[x=-77,y=103,z=-2010,distance=..3,tag=!Dialogue89] run opendialogue pokeballfactory_celosia_prebattle @s

#Ball Factory President 
execute as @s[x=-80,y=103,z=-2016,distance=..3,tag=!Dialogue90] run opendialogue pokeballfactory_president_prebattle @s
execute as @s[x=-80,y=103,z=-2016,distance=..3,tag=Dialogue90] run opendialogue pokeballfactory_president_postbattles @s

#Frost Cavern Mable blocked before grunt battle
execute as @s[x=676,y=85,z=-1361,distance=..5,tag=!Dialogue97] run opendialogue frostcavern_mable_prebattle @s

#Route 19 box blocking Trevor NPC until Tierno is beaten
execute as @s[x=1451,y=98,z=490,distance=..8] run opendialogue route19_tierno_reminder @s

#Victory Road Gate Ace blocking the path without all the badges
execute as @s[x=694,y=106,z=396,distance=..7] run opendialogue route22_acetrainerm_interaction @s

#Diantha Hall of Fame reminder
execute as @s[x=-2005,y=8,z=1952,distance=..7] run opendialogue diantha_dialogue152 @s


#-------------------------------------------------------------

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


#Looker Chapter 5, Mimi's Note
execute as @s[x=-101,y=101,z=384,distance=..5] run opendialogue mimi_dialogue225 @s


#Looker Books
execute as @s[x=-176,y=102,z=380,distance=..5] run opendialogue lookerbook_generic @s
execute as @s[x=-176,y=102,z=380,distance=..5,tag=Dialogue173,tag=!Dialogue175] run opendialogue lookerbook_tickets @s
execute as @s[x=-176,y=102,z=380,distance=..5,tag=Dialogue176] run opendialogue lookerbook_kids @s

#execute positioned -176 102 380 run summon minecraft:interaction ~ ~ ~ {width:0.75,height:0.25,response:1,Tags:[NPCs]}
#execute positioned -176 102 380 run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Invulnerable:true,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":53}}]}


#Lumiose Press Volcanion book
execute as @s[x=-444,y=102,z=207,distance=..6,tag=!Dialogue168] run opendialogue reporter_volcanionmemo_locked @s
execute as @s[x=-444,y=102,z=207,distance=..6,tag=Dialogue168] run opendialogue reporter_volcanionmemo @s


#Xerosic's Notes
#-295 32 284
#-289 32 295
#-290 32 301
#-301 29 313
#-285 29 313
#-286 29 318

#Orders of books do not matter, could even read the same book over and over
execute as @s[x=-306,y=28,z=280,dx=22,dy=20,dz=47,tag=!Dialogue202] run opendialogue xerosicsnote_dialogue202 @s
execute as @s[x=-306,y=28,z=280,dx=22,dy=20,dz=47,tag=Dialogue202,tag=!Dialogue203] run opendialogue xerosicsnote_dialogue203 @s
execute as @s[x=-306,y=28,z=280,dx=22,dy=20,dz=47,tag=Dialogue202,tag=Dialogue203,tag=!Dialogue204] run opendialogue xerosicsnote_dialogue204 @s
execute as @s[x=-306,y=28,z=280,dx=22,dy=20,dz=47,tag=Dialogue202,tag=Dialogue203,tag=Dialogue204,tag=!Dialogue205] run opendialogue xerosicsnote_dialogue205 @s
execute as @s[x=-306,y=28,z=280,dx=22,dy=20,dz=47,tag=Dialogue202,tag=Dialogue203,tag=Dialogue204,tag=Dialogue205,tag=!Dialogue206] run opendialogue xerosicsnote_dialogue206 @s
execute as @s[x=-306,y=28,z=280,dx=22,dy=20,dz=47,tag=Dialogue202,tag=Dialogue203,tag=Dialogue204,tag=Dialogue205,tag=Dialogue206,tag=!Dialogue207] run opendialogue xerosicsnote_dialogue207 @s
execute as @s[x=-306,y=28,z=280,dx=22,dy=20,dz=47,tag=Dialogue202,tag=Dialogue203,tag=Dialogue204,tag=Dialogue205,tag=Dialogue206,tag=Dialogue207] run opendialogue xerosicsnote_readall @s






#Restaurants
#Checks if there is currently servers on the floor, if not opens up.
#Le Nah
execute as @s[x=-195,y=101,z=174,distance=..6,tag=!Dialogue245] unless entity @e[x=-185,y=100,z=158,dy=3,type=cobblemon:npc] run opendialogue lenah_frontdesk_first_interaction @s
execute as @s[x=-195,y=101,z=174,distance=..6,tag=Dialogue245] unless entity @e[x=-185,y=100,z=158,dy=3,type=cobblemon:npc] run opendialogue lenah_frontdesk_additional_interaction @s
execute as @s[x=-195,y=101,z=174,distance=..6] if entity @e[x=-185,y=100,z=158,dy=3,type=cobblemon:npc] run opendialogue lenah_frontdesk_busy @s

#Le Yeah
execute as @s[x=-404,y=101,z=174,distance=..6,tag=!Dialogue250] unless entity @e[x=-394,y=100,z=158,dy=3,type=cobblemon:npc] run opendialogue leyeah_frontdesk_first_interaction @s
execute as @s[x=-404,y=101,z=174,distance=..6,tag=Dialogue250] unless entity @e[x=-394,y=100,z=158,dy=3,type=cobblemon:npc] run opendialogue leyeah_frontdesk_additional_interaction @s
execute as @s[x=-404,y=101,z=174,distance=..6] if entity @e[x=-394,y=100,z=158,dy=3,type=cobblemon:npc] run opendialogue leyeah_frontdesk_busy @s

#Le Wow
execute as @s[x=-296,y=101,z=174,distance=..6,tag=!Dialogue256] unless entity @e[x=-287,y=100,z=158,dy=3,type=cobblemon:npc] run opendialogue lewow_frontdesk_first_interaction @s
execute as @s[x=-296,y=101,z=174,distance=..6,tag=Dialogue256] unless entity @e[x=-287,y=100,z=158,dy=3,type=cobblemon:npc] run opendialogue lewow_frontdesk_additional_interaction @s
execute as @s[x=-296,y=101,z=174,distance=..6] if entity @e[x=-287,y=100,z=158,dy=3,type=cobblemon:npc] run opendialogue lewow_frontdesk_busy @s

#Sushi High Roller
execute as @s[x=-491,y=101,z=174,distance=..6,tag=!Dialogue262] unless entity @e[x=-481,y=100,z=158,dy=3,type=cobblemon:npc] run opendialogue highroller_frontdesk_first_interaction @s
execute as @s[x=-491,y=101,z=174,distance=..6,tag=Dialogue262] unless entity @e[x=-481,y=100,z=158,dy=3,type=cobblemon:npc] run opendialogue highroller_frontdesk_additional_interaction @s
execute as @s[x=-491,y=101,z=174,distance=..6] if entity @e[x=-481,y=100,z=158,dy=3,type=cobblemon:npc] run opendialogue highroller_frontdesk_busy @s





#-------------------------------------------------------------
#Cafe NPCs talking about Pokemon

#Tags which NPC the player is talking to
scoreboard players set @s Temp 0

#Counter NPCS (gentleman)
execute as @s[x=-2073,y=85,z=-174,distance=..5] run scoreboard players add @s Temp 1
execute as @s[x=-42,y=86,z=-1524,distance=..5] run scoreboard players add @s Temp 1
execute as @s[x=1292,y=74,z=-339,distance=..5] run scoreboard players add @s Temp 1

#Balcony NPCs (rich man)
execute as @s[x=-2055,y=85,z=-165,distance=..5] run scoreboard players add @s Temp 2
execute as @s[x=-24,y=86,z=-1515,distance=..5] run scoreboard players add @s Temp 2
execute as @s[x=1310,y=74,z=-331,distance=..5] run scoreboard players add @s Temp 2

#Terrace NPCs (lass)
execute as @s[x=-2073,y=85,z=-187,distance=..5] run scoreboard players add @s Temp 3
execute as @s[x=-44,y=86,z=-1537,distance=..5] run scoreboard players add @s Temp 3
execute as @s[x=1292,y=74,z=-352,distance=..5] run scoreboard players add @s Temp 3


#Rolls for talking about a random species
execute if entity @s[scores={Temp=1..}] run scoreboard players set @e[x=-687,y=100,z=1376,dx=2,dy=4,type=armor_stand] rng 0
execute if entity @s[scores={Temp=1..}] run scoreboard players add @e[sort=random,limit=1,x=-687,y=100,z=1376,dx=2,dy=4] rng 1
execute if entity @s[scores={Temp=1..}] run scoreboard players add @e[sort=random,limit=1,x=-687,y=100,z=1376,dx=2,dy=4] rng 2
execute if entity @s[scores={Temp=1..}] run scoreboard players add @e[sort=random,limit=1,x=-687,y=100,z=1376,dx=2,dy=4] rng 4
execute if entity @s[scores={Temp=1..}] run scoreboard players add @e[sort=random,limit=1,x=-687,y=100,z=1376,dx=2,dy=4] rng 8

scoreboard players operation @s[scores={Temp=1..}] rng = @e[x=-687,y=100,z=1376,dy=3,type=armor_stand] rng


#Opens dialogue for Counter NPCs
execute as @s[tag=!DailyDex1,scores={Temp=1,rng=0}] run opendialogue cafedex_gentleman_aron @s
execute as @s[tag=!DailyDex1,scores={Temp=1,rng=1}] run opendialogue cafedex_gentleman_nidoqueen @s
execute as @s[tag=!DailyDex1,scores={Temp=1,rng=2}] run opendialogue cafedex_gentleman_nidoking @s
execute as @s[tag=!DailyDex1,scores={Temp=1,rng=3}] run opendialogue cafedex_gentleman_hitmonlee @s
execute as @s[tag=!DailyDex1,scores={Temp=1,rng=4}] run opendialogue cafedex_gentleman_hitmonchan @s
execute as @s[tag=!DailyDex1,scores={Temp=1,rng=5}] run opendialogue cafedex_gentleman_staryu @s
execute as @s[tag=!DailyDex1,scores={Temp=1,rng=6}] run opendialogue cafedex_gentleman_porygon @s
execute as @s[tag=!DailyDex1,scores={Temp=1,rng=7}] run opendialogue cafedex_gentleman_togepi @s
execute as @s[tag=!DailyDex1,scores={Temp=1,rng=8}] run opendialogue cafedex_gentleman_dunsparce @s
execute as @s[tag=!DailyDex1,scores={Temp=1,rng=9}] run opendialogue cafedex_gentleman_hitmontop @s
execute as @s[tag=!DailyDex1,scores={Temp=1,rng=10}] run opendialogue cafedex_gentleman_elekid @s
execute as @s[tag=!DailyDex1,scores={Temp=1,rng=11}] run opendialogue cafedex_gentleman_elgyem @s
execute as @s[tag=!DailyDex1,scores={Temp=1,rng=12}] run opendialogue cafedex_gentleman_larvitar @s
execute as @s[tag=!DailyDex1,scores={Temp=1,rng=13}] run opendialogue cafedex_gentleman_linoone @s
execute as @s[tag=!DailyDex1,scores={Temp=1,rng=14}] run opendialogue cafedex_gentleman_lotad @s
execute as @s[tag=!DailyDex1,scores={Temp=1,rng=15}] run opendialogue cafedex_gentleman_masquerain @s

execute as @s[tag=DailyDex1,scores={Temp=1}] run opendialogue cafedex_gentleman_talked @s


#Balcony NPCs
execute as @s[tag=!DailyDex2,scores={Temp=2,rng=0}] run opendialogue cafedex_richman_lotad @s
execute as @s[tag=!DailyDex2,scores={Temp=2,rng=1}] run opendialogue cafedex_richman_masquerain @s
execute as @s[tag=!DailyDex2,scores={Temp=2,rng=2}] run opendialogue cafedex_richman_aron @s
execute as @s[tag=!DailyDex2,scores={Temp=2,rng=3}] run opendialogue cafedex_richman_carvanha @s
execute as @s[tag=!DailyDex2,scores={Temp=2,rng=4}] run opendialogue cafedex_richman_kecleon @s
execute as @s[tag=!DailyDex2,scores={Temp=2,rng=5}] run opendialogue cafedex_richman_duskull @s
execute as @s[tag=!DailyDex2,scores={Temp=2,rng=6}] run opendialogue cafedex_richman_sealeo @s
execute as @s[tag=!DailyDex2,scores={Temp=2,rng=7}] run opendialogue cafedex_richman_pachirisu @s
execute as @s[tag=!DailyDex2,scores={Temp=2,rng=8}] run opendialogue cafedex_richman_buneary @s
execute as @s[tag=!DailyDex2,scores={Temp=2,rng=9}] run opendialogue cafedex_richman_bonsly @s
execute as @s[tag=!DailyDex2,scores={Temp=2,rng=10}] run opendialogue cafedex_richman_mimejr @s
execute as @s[tag=!DailyDex2,scores={Temp=2,rng=11}] run opendialogue cafedex_richman_happiny @s
execute as @s[tag=!DailyDex2,scores={Temp=2,rng=12}] run opendialogue cafedex_richman_munchlax @s
execute as @s[tag=!DailyDex2,scores={Temp=2,rng=13}] run opendialogue cafedex_richman_patrat @s
execute as @s[tag=!DailyDex2,scores={Temp=2,rng=14}] run opendialogue cafedex_richman_zorua @s
execute as @s[tag=!DailyDex2,scores={Temp=2,rng=15}] run opendialogue cafedex_richman_eelektrik @s

execute as @s[tag=DailyDex2,scores={Temp=2}] run opendialogue cafedex_richman_talked @s



#Terrace NPCs
execute as @s[tag=!DailyDex3,scores={Temp=3,rng=0}] run opendialogue cafedex_lass_hitmontop @s
execute as @s[tag=!DailyDex3,scores={Temp=3,rng=1}] run opendialogue cafedex_lass_metang @s
execute as @s[tag=!DailyDex3,scores={Temp=3,rng=2}] run opendialogue cafedex_lass_raikou @s
execute as @s[tag=!DailyDex3,scores={Temp=3,rng=3}] run opendialogue cafedex_lass_entei @s
execute as @s[tag=!DailyDex3,scores={Temp=3,rng=4}] run opendialogue cafedex_lass_suicune @s
execute as @s[tag=!DailyDex3,scores={Temp=3,rng=5}] run opendialogue cafedex_lass_elgyem @s
execute as @s[tag=!DailyDex3,scores={Temp=3,rng=6}] run opendialogue cafedex_lass_axew @s
execute as @s[tag=!DailyDex3,scores={Temp=3,rng=7}] run opendialogue cafedex_lass_accelgor @s
execute as @s[tag=!DailyDex3,scores={Temp=3,rng=8}] run opendialogue cafedex_lass_dedenne @s
execute as @s[tag=!DailyDex3,scores={Temp=3,rng=9}] run opendialogue cafedex_lass_hitmonlee @s
execute as @s[tag=!DailyDex3,scores={Temp=3,rng=10}] run opendialogue cafedex_lass_hitmonchan @s
execute as @s[tag=!DailyDex3,scores={Temp=3,rng=11}] run opendialogue cafedex_lass_porygon @s
execute as @s[tag=!DailyDex3,scores={Temp=3,rng=12}] run opendialogue cafedex_lass_pachirisu @s
execute as @s[tag=!DailyDex3,scores={Temp=3,rng=13}] run opendialogue cafedex_lass_munchlax @s
execute as @s[tag=!DailyDex3,scores={Temp=3,rng=14}] run opendialogue cafedex_lass_kecleon @s
execute as @s[tag=!DailyDex3,scores={Temp=3,rng=15}] run opendialogue cafedex_lass_magby @s

execute as @s[tag=DailyDex3,scores={Temp=3}] run opendialogue cafedex_lass_talked @s




tag @s[scores={Temp=1}] add DailyDex1
tag @s[scores={Temp=2}] add DailyDex2
tag @s[scores={Temp=3}] add DailyDex3


#-------------------------------------------------------------
#Misc World Ribbon Tests

#Footprint Ribbon, Shalour
#If the Pokemon's level is above 70
execute as @s[x=-1700,y=80,z=-827,distance=..5] run function kalos:data/calculatelevels
execute as @s[x=-1700,y=80,z=-827,distance=..5,scores={Temp2=0..30}] run opendialogue shalour_footprintribbon_low @s
execute as @s[x=-1700,y=80,z=-827,distance=..5,scores={Temp2=31..50}] run opendialogue shalour_footprintribbon_medium @s
execute as @s[x=-1700,y=80,z=-827,distance=..5,scores={Temp2=51..69}] run opendialogue shalour_footprintribbon_high @s
execute as @s[x=-1700,y=80,z=-827,distance=..5,scores={Temp2=70..}] run opendialogue shalour_footprintribbon_max @s


#Effort Ribbon, Laverre Town
execute as @s[x=-201,y=89,z=-1520,distance=..5] run function kalos:data/calculateevtotal
execute as @s[x=-201,y=89,z=-1520,distance=..5,scores={Temp2=0..150}] run opendialogue laverre_effortribbon_low @s
execute as @s[x=-201,y=89,z=-1520,distance=..5,scores={Temp2=151..333}] run opendialogue laverre_effortribbon_medium @s
execute as @s[x=-201,y=89,z=-1520,distance=..5,scores={Temp2=334..509}] run opendialogue laverre_effortribbon_high @s
execute as @s[x=-201,y=89,z=-1520,distance=..5,scores={Temp2=510..}] run opendialogue laverre_effortribbon_max @s


#Best Friends Ribbon, Lumiose Gym
execute as @s[x=-1819,y=100,z=-1698,distance=..5] run function kalos:data/calculatefriendship
execute as @s[x=-1819,y=100,z=-1698,distance=..5,scores={Temp2=0..50}] run opendialogue lumiose_friendshipribbon_lowest @s
execute as @s[x=-1819,y=100,z=-1698,distance=..5,scores={Temp2=51..100}] run opendialogue lumiose_friendshipribbon_low @s
execute as @s[x=-1819,y=100,z=-1698,distance=..5,scores={Temp2=101..150}] run opendialogue lumiose_friendshipribbon_medium @s
execute as @s[x=-1819,y=100,z=-1698,distance=..5,scores={Temp2=151..200}] run opendialogue lumiose_friendshipribbon_high @s
execute as @s[x=-1819,y=100,z=-1698,distance=..5,scores={Temp2=200..254}] run opendialogue lumiose_friendshipribbon_higher @s
execute as @s[x=-1819,y=100,z=-1698,distance=..5,scores={Temp2=255..}] run opendialogue lumiose_friendshipribbon_max @s




#-------------------------------------------------------------
#Hotel Guest Dynamic dialogues
#Dependent on the day of the week it is for which NPC you talk to
#as well as how many times you've talked to the NPC in past days.
#Counts up in the daily commands function and you have the cooldown that you've spoken to them before.

#Camphrier Town
#-1110 81 0

#Mon
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] as @s[x=-1110,y=81,z=0,distance=..5] run opendialogue hotel_maid1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] as @s[x=-1110,y=81,z=0,distance=..5,scores={HotelGuest1=1}] run opendialogue hotel_maid2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] as @s[x=-1110,y=81,z=0,distance=..5,scores={HotelGuest1=2}] run opendialogue hotel_maid3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] as @s[x=-1110,y=81,z=0,distance=..5,scores={HotelGuest1=3}] run opendialogue hotel_maid4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] as @s[x=-1110,y=81,z=0,distance=..5,scores={HotelGuest1=4..}] run opendialogue hotel_maid5 @s

#Tues
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[x=-1110,y=81,z=0,distance=..5] run opendialogue hotel_tourist1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[x=-1110,y=81,z=0,distance=..5,scores={HotelGuest3=1}] run opendialogue hotel_tourist2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[x=-1110,y=81,z=0,distance=..5,scores={HotelGuest3=2}] run opendialogue hotel_tourist3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[x=-1110,y=81,z=0,distance=..5,scores={HotelGuest3=3..}] run opendialogue hotel_tourist4 @s

#Wed
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] as @s[x=-1110,y=81,z=0,distance=..5] run opendialogue hotel_backpacker1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] as @s[x=-1110,y=81,z=0,distance=..5,scores={HotelGuest2=1}] run opendialogue hotel_backpacker2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] as @s[x=-1110,y=81,z=0,distance=..5,scores={HotelGuest2=2}] run opendialogue hotel_backpacker3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] as @s[x=-1110,y=81,z=0,distance=..5,scores={HotelGuest2=3}] run opendialogue hotel_backpacker4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] as @s[x=-1110,y=81,z=0,distance=..5,scores={HotelGuest2=4..}] run opendialogue hotel_backpacker5 @s

#Thurs
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[x=-1110,y=81,z=0,distance=..5] run opendialogue hotel_hiker1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[x=-1110,y=81,z=0,distance=..5,scores={HotelGuest4=1}] run opendialogue hotel_hiker2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[x=-1110,y=81,z=0,distance=..5,scores={HotelGuest4=2}] run opendialogue hotel_hiker3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[x=-1110,y=81,z=0,distance=..5,scores={HotelGuest4=3}] run opendialogue hotel_hiker4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[x=-1110,y=81,z=0,distance=..5,scores={HotelGuest4=4..}] run opendialogue hotel_hiker5 @s

#Fri
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] as @s[x=-1110,y=81,z=0,distance=..5] run opendialogue hotel_waiter1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] as @s[x=-1110,y=81,z=0,distance=..5,scores={HotelGuest5=1}] run opendialogue hotel_waiter2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] as @s[x=-1110,y=81,z=0,distance=..5,scores={HotelGuest5=2}] run opendialogue hotel_waiter3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] as @s[x=-1110,y=81,z=0,distance=..5,scores={HotelGuest5=3}] run opendialogue hotel_waiter4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] as @s[x=-1110,y=81,z=0,distance=..5,scores={HotelGuest5=4..}] run opendialogue hotel_waiter5 @s

#Sat
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] as @s[x=-1110,y=81,z=0,distance=..5] run opendialogue hotel_madame1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] as @s[x=-1110,y=81,z=0,distance=..5,scores={HotelGuest6=1}] run opendialogue hotel_madame2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] as @s[x=-1110,y=81,z=0,distance=..5,scores={HotelGuest6=2}] run opendialogue hotel_madame3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] as @s[x=-1110,y=81,z=0,distance=..5,scores={HotelGuest6=3}] run opendialogue hotel_madame4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] as @s[x=-1110,y=81,z=0,distance=..5,scores={HotelGuest6=4..}] run opendialogue hotel_madame5 @s

#Sun
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] as @s[x=-1110,y=81,z=0,distance=..5] run opendialogue hotel_maid1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] as @s[x=-1110,y=81,z=0,distance=..5,scores={HotelGuest1=1}] run opendialogue hotel_maid2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] as @s[x=-1110,y=81,z=0,distance=..5,scores={HotelGuest1=2}] run opendialogue hotel_maid3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] as @s[x=-1110,y=81,z=0,distance=..5,scores={HotelGuest1=3}] run opendialogue hotel_maid4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] as @s[x=-1110,y=81,z=0,distance=..5,scores={HotelGuest1=4..}] run opendialogue hotel_maid5 @s




#Ambrette Town
#-1990 109 647

#Mon
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] as @s[x=-1990,y=109,z=647,distance=..5] run opendialogue hotel_tourist1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] as @s[x=-1990,y=109,z=647,distance=..5,scores={HotelGuest3=1}] run opendialogue hotel_tourist2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] as @s[x=-1990,y=109,z=647,distance=..5,scores={HotelGuest3=2}] run opendialogue hotel_tourist3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] as @s[x=-1990,y=109,z=647,distance=..5,scores={HotelGuest3=3..}] run opendialogue hotel_tourist4 @s

#Tues
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[x=-1990,y=109,z=647,distance=..5] run opendialogue hotel_backpacker1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[x=-1990,y=109,z=647,distance=..5,scores={HotelGuest2=1}] run opendialogue hotel_backpacker2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[x=-1990,y=109,z=647,distance=..5,scores={HotelGuest2=2}] run opendialogue hotel_backpacker3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[x=-1990,y=109,z=647,distance=..5,scores={HotelGuest2=3}] run opendialogue hotel_backpacker4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[x=-1990,y=109,z=647,distance=..5,scores={HotelGuest2=4..}] run opendialogue hotel_backpacker5 @s

#Wed
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] as @s[x=-1990,y=109,z=647,distance=..5] run opendialogue hotel_hiker1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] as @s[x=-1990,y=109,z=647,distance=..5,scores={HotelGuest4=1}] run opendialogue hotel_hiker2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] as @s[x=-1990,y=109,z=647,distance=..5,scores={HotelGuest4=2}] run opendialogue hotel_hiker3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] as @s[x=-1990,y=109,z=647,distance=..5,scores={HotelGuest4=3}] run opendialogue hotel_hiker4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] as @s[x=-1990,y=109,z=647,distance=..5,scores={HotelGuest4=4..}] run opendialogue hotel_hiker5 @s

#Thurs
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[x=-1990,y=109,z=647,distance=..5] run opendialogue hotel_waiter1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[x=-1990,y=109,z=647,distance=..5,scores={HotelGuest5=1}] run opendialogue hotel_waiter2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[x=-1990,y=109,z=647,distance=..5,scores={HotelGuest5=2}] run opendialogue hotel_waiter3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[x=-1990,y=109,z=647,distance=..5,scores={HotelGuest5=3}] run opendialogue hotel_waiter4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[x=-1990,y=109,z=647,distance=..5,scores={HotelGuest5=4..}] run opendialogue hotel_waiter5 @s

#Fri
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] as @s[x=-1990,y=109,z=647,distance=..5] run opendialogue hotel_madame1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] as @s[x=-1990,y=109,z=647,distance=..5,scores={HotelGuest6=1}] run opendialogue hotel_madame2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] as @s[x=-1990,y=109,z=647,distance=..5,scores={HotelGuest6=2}] run opendialogue hotel_madame3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] as @s[x=-1990,y=109,z=647,distance=..5,scores={HotelGuest6=3}] run opendialogue hotel_madame4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] as @s[x=-1990,y=109,z=647,distance=..5,scores={HotelGuest6=4..}] run opendialogue hotel_madame5 @s

#Sat
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] as @s[x=-1990,y=109,z=647,distance=..5] run opendialogue hotel_maid1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] as @s[x=-1990,y=109,z=647,distance=..5,scores={HotelGuest1=1}] run opendialogue hotel_maid2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] as @s[x=-1990,y=109,z=647,distance=..5,scores={HotelGuest1=2}] run opendialogue hotel_maid3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] as @s[x=-1990,y=109,z=647,distance=..5,scores={HotelGuest1=3}] run opendialogue hotel_maid4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] as @s[x=-1990,y=109,z=647,distance=..5,scores={HotelGuest1=4..}] run opendialogue hotel_maid5 @s

#Sun
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] as @s[x=-1990,y=109,z=647,distance=..5] run opendialogue hotel_tourist1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] as @s[x=-1990,y=109,z=647,distance=..5,scores={HotelGuest3=1}] run opendialogue hotel_tourist2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] as @s[x=-1990,y=109,z=647,distance=..5,scores={HotelGuest3=2}] run opendialogue hotel_tourist3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] as @s[x=-1990,y=109,z=647,distance=..5,scores={HotelGuest3=3..}] run opendialogue hotel_tourist4 @s






#Cyllage Town
#-2048 65 -153

#Mon
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] as @s[x=-2048,y=65,z=-153,distance=..5] run opendialogue hotel_backpacker1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] as @s[x=-2048,y=65,z=-153,distance=..5,scores={HotelGuest2=1}] run opendialogue hotel_backpacker2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] as @s[x=-2048,y=65,z=-153,distance=..5,scores={HotelGuest2=2}] run opendialogue hotel_backpacker3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] as @s[x=-2048,y=65,z=-153,distance=..5,scores={HotelGuest2=3}] run opendialogue hotel_backpacker4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] as @s[x=-2048,y=65,z=-153,distance=..5,scores={HotelGuest2=4..}] run opendialogue hotel_backpacker5 @s

#Tues
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[x=-2048,y=65,z=-153,distance=..5] run opendialogue hotel_hiker1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[x=-2048,y=65,z=-153,distance=..5,scores={HotelGuest4=1}] run opendialogue hotel_hiker2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[x=-2048,y=65,z=-153,distance=..5,scores={HotelGuest4=2}] run opendialogue hotel_hiker3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[x=-2048,y=65,z=-153,distance=..5,scores={HotelGuest4=3}] run opendialogue hotel_hiker4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[x=-2048,y=65,z=-153,distance=..5,scores={HotelGuest4=4..}] run opendialogue hotel_hiker5 @s

#Wed
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] as @s[x=-2048,y=65,z=-153,distance=..5] run opendialogue hotel_waiter1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] as @s[x=-2048,y=65,z=-153,distance=..5,scores={HotelGuest5=1}] run opendialogue hotel_waiter2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] as @s[x=-2048,y=65,z=-153,distance=..5,scores={HotelGuest5=2}] run opendialogue hotel_waiter3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] as @s[x=-2048,y=65,z=-153,distance=..5,scores={HotelGuest5=3}] run opendialogue hotel_waiter4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] as @s[x=-2048,y=65,z=-153,distance=..5,scores={HotelGuest5=4..}] run opendialogue hotel_waiter5 @s

#Thurs
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[x=-2048,y=65,z=-153,distance=..5] run opendialogue hotel_madame1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[x=-2048,y=65,z=-153,distance=..5,scores={HotelGuest6=1}] run opendialogue hotel_madame2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[x=-2048,y=65,z=-153,distance=..5,scores={HotelGuest6=2}] run opendialogue hotel_madame3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[x=-2048,y=65,z=-153,distance=..5,scores={HotelGuest6=3}] run opendialogue hotel_madame4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[x=-2048,y=65,z=-153,distance=..5,scores={HotelGuest6=4..}] run opendialogue hotel_madame5 @s

#Fri
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] as @s[x=-2048,y=65,z=-153,distance=..5] run opendialogue hotel_maid1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] as @s[x=-2048,y=65,z=-153,distance=..5,scores={HotelGuest1=1}] run opendialogue hotel_maid2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] as @s[x=-2048,y=65,z=-153,distance=..5,scores={HotelGuest1=2}] run opendialogue hotel_maid3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] as @s[x=-2048,y=65,z=-153,distance=..5,scores={HotelGuest1=3}] run opendialogue hotel_maid4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] as @s[x=-2048,y=65,z=-153,distance=..5,scores={HotelGuest1=4..}] run opendialogue hotel_maid5 @s

#Sat
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] as @s[x=-2048,y=65,z=-153,distance=..5] run opendialogue hotel_tourist1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] as @s[x=-2048,y=65,z=-153,distance=..5,scores={HotelGuest3=1}] run opendialogue hotel_tourist2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] as @s[x=-2048,y=65,z=-153,distance=..5,scores={HotelGuest3=2}] run opendialogue hotel_tourist3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] as @s[x=-2048,y=65,z=-153,distance=..5,scores={HotelGuest3=3..}] run opendialogue hotel_tourist4 @s

#Sun
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] as @s[x=-2048,y=65,z=-153,distance=..5] run opendialogue hotel_backpacker1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] as @s[x=-2048,y=65,z=-153,distance=..5,scores={HotelGuest2=1}] run opendialogue hotel_backpacker2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] as @s[x=-2048,y=65,z=-153,distance=..5,scores={HotelGuest2=2}] run opendialogue hotel_backpacker3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] as @s[x=-2048,y=65,z=-153,distance=..5,scores={HotelGuest2=3}] run opendialogue hotel_backpacker4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] as @s[x=-2048,y=65,z=-153,distance=..5,scores={HotelGuest2=4..}] run opendialogue hotel_backpacker5 @s



#Geosenge Town
#-2190 87 -636

#Mon
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] as @s[x=-2190,y=87,z=-636,distance=..5] run opendialogue hotel_hiker1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] as @s[x=-2190,y=87,z=-636,distance=..5,scores={HotelGuest4=1}] run opendialogue hotel_hiker2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] as @s[x=-2190,y=87,z=-636,distance=..5,scores={HotelGuest4=2}] run opendialogue hotel_hiker3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] as @s[x=-2190,y=87,z=-636,distance=..5,scores={HotelGuest4=3}] run opendialogue hotel_hiker4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] as @s[x=-2190,y=87,z=-636,distance=..5,scores={HotelGuest4=4..}] run opendialogue hotel_hiker5 @s

#Tues
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[x=-2190,y=87,z=-636,distance=..5] run opendialogue hotel_waiter1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[x=-2190,y=87,z=-636,distance=..5,scores={HotelGuest5=1}] run opendialogue hotel_waiter2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[x=-2190,y=87,z=-636,distance=..5,scores={HotelGuest5=2}] run opendialogue hotel_waiter3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[x=-2190,y=87,z=-636,distance=..5,scores={HotelGuest5=3}] run opendialogue hotel_waiter4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[x=-2190,y=87,z=-636,distance=..5,scores={HotelGuest5=4..}] run opendialogue hotel_waiter5 @s

#Wed
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] as @s[x=-2190,y=87,z=-636,distance=..5] run opendialogue hotel_madame1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] as @s[x=-2190,y=87,z=-636,distance=..5,scores={HotelGuest6=1}] run opendialogue hotel_madame2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] as @s[x=-2190,y=87,z=-636,distance=..5,scores={HotelGuest6=2}] run opendialogue hotel_madame3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] as @s[x=-2190,y=87,z=-636,distance=..5,scores={HotelGuest6=3}] run opendialogue hotel_madame4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] as @s[x=-2190,y=87,z=-636,distance=..5,scores={HotelGuest6=4..}] run opendialogue hotel_madame5 @s

#Thurs
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[x=-2190,y=87,z=-636,distance=..5] run opendialogue hotel_maid1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[x=-2190,y=87,z=-636,distance=..5,scores={HotelGuest1=1}] run opendialogue hotel_maid2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[x=-2190,y=87,z=-636,distance=..5,scores={HotelGuest1=2}] run opendialogue hotel_maid3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[x=-2190,y=87,z=-636,distance=..5,scores={HotelGuest1=3}] run opendialogue hotel_maid4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[x=-2190,y=87,z=-636,distance=..5,scores={HotelGuest1=4..}] run opendialogue hotel_maid5 @s

#Fri
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] as @s[x=-2190,y=87,z=-636,distance=..5] run opendialogue hotel_tourist1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] as @s[x=-2190,y=87,z=-636,distance=..5,scores={HotelGuest3=1}] run opendialogue hotel_tourist2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] as @s[x=-2190,y=87,z=-636,distance=..5,scores={HotelGuest3=2}] run opendialogue hotel_tourist3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] as @s[x=-2190,y=87,z=-636,distance=..5,scores={HotelGuest3=3..}] run opendialogue hotel_tourist4 @s

#Sat
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] as @s[x=-2190,y=87,z=-636,distance=..5] run opendialogue hotel_backpacker1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] as @s[x=-2190,y=87,z=-636,distance=..5,scores={HotelGuest2=1}] run opendialogue hotel_backpacker2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] as @s[x=-2190,y=87,z=-636,distance=..5,scores={HotelGuest2=2}] run opendialogue hotel_backpacker3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] as @s[x=-2190,y=87,z=-636,distance=..5,scores={HotelGuest2=3}] run opendialogue hotel_backpacker4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] as @s[x=-2190,y=87,z=-636,distance=..5,scores={HotelGuest2=4..}] run opendialogue hotel_backpacker5 @s

#Sun
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] as @s[x=-2190,y=87,z=-636,distance=..5] run opendialogue hotel_hiker1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] as @s[x=-2190,y=87,z=-636,distance=..5,scores={HotelGuest4=1}] run opendialogue hotel_hiker2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] as @s[x=-2190,y=87,z=-636,distance=..5,scores={HotelGuest4=2}] run opendialogue hotel_hiker3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] as @s[x=-2190,y=87,z=-636,distance=..5,scores={HotelGuest4=3}] run opendialogue hotel_hiker4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] as @s[x=-2190,y=87,z=-636,distance=..5,scores={HotelGuest4=4..}] run opendialogue hotel_hiker5 @s



#Coumarine Town
#-1055 56 -810

#Mon
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] as @s[x=-1055,y=56,z=-810,distance=..5] run opendialogue hotel_waiter1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] as @s[x=-1055,y=56,z=-810,distance=..5,scores={HotelGuest5=1}] run opendialogue hotel_waiter2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] as @s[x=-1055,y=56,z=-810,distance=..5,scores={HotelGuest5=2}] run opendialogue hotel_waiter3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] as @s[x=-1055,y=56,z=-810,distance=..5,scores={HotelGuest5=3}] run opendialogue hotel_waiter4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] as @s[x=-1055,y=56,z=-810,distance=..5,scores={HotelGuest5=4..}] run opendialogue hotel_waiter5 @s

#Tues
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[x=-1055,y=56,z=-810,distance=..5] run opendialogue hotel_madame1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[x=-1055,y=56,z=-810,distance=..5,scores={HotelGuest6=1}] run opendialogue hotel_madame2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[x=-1055,y=56,z=-810,distance=..5,scores={HotelGuest6=2}] run opendialogue hotel_madame3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[x=-1055,y=56,z=-810,distance=..5,scores={HotelGuest6=3}] run opendialogue hotel_madame4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[x=-1055,y=56,z=-810,distance=..5,scores={HotelGuest6=4..}] run opendialogue hotel_madame5 @s

#Wed
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] as @s[x=-1055,y=56,z=-810,distance=..5] run opendialogue hotel_maid1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] as @s[x=-1055,y=56,z=-810,distance=..5,scores={HotelGuest1=1}] run opendialogue hotel_maid2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] as @s[x=-1055,y=56,z=-810,distance=..5,scores={HotelGuest1=2}] run opendialogue hotel_maid3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] as @s[x=-1055,y=56,z=-810,distance=..5,scores={HotelGuest1=3}] run opendialogue hotel_maid4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] as @s[x=-1055,y=56,z=-810,distance=..5,scores={HotelGuest1=4..}] run opendialogue hotel_maid5 @s

#Thurs
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[x=-1055,y=56,z=-810,distance=..5] run opendialogue hotel_tourist1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[x=-1055,y=56,z=-810,distance=..5,scores={HotelGuest3=1}] run opendialogue hotel_tourist2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[x=-1055,y=56,z=-810,distance=..5,scores={HotelGuest3=2}] run opendialogue hotel_tourist3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[x=-1055,y=56,z=-810,distance=..5,scores={HotelGuest3=3..}] run opendialogue hotel_tourist4 @s

#Fri
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] as @s[x=-1055,y=56,z=-810,distance=..5] run opendialogue hotel_backpacker1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] as @s[x=-1055,y=56,z=-810,distance=..5,scores={HotelGuest2=1}] run opendialogue hotel_backpacker2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] as @s[x=-1055,y=56,z=-810,distance=..5,scores={HotelGuest2=2}] run opendialogue hotel_backpacker3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] as @s[x=-1055,y=56,z=-810,distance=..5,scores={HotelGuest2=3}] run opendialogue hotel_backpacker4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] as @s[x=-1055,y=56,z=-810,distance=..5,scores={HotelGuest2=4..}] run opendialogue hotel_backpacker5 @s

#Sat
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] as @s[x=-1055,y=56,z=-810,distance=..5] run opendialogue hotel_hiker1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] as @s[x=-1055,y=56,z=-810,distance=..5,scores={HotelGuest4=1}] run opendialogue hotel_hiker2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] as @s[x=-1055,y=56,z=-810,distance=..5,scores={HotelGuest4=2}] run opendialogue hotel_hiker3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] as @s[x=-1055,y=56,z=-810,distance=..5,scores={HotelGuest4=3}] run opendialogue hotel_hiker4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] as @s[x=-1055,y=56,z=-810,distance=..5,scores={HotelGuest4=4..}] run opendialogue hotel_hiker5 @s

#Sun
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] as @s[x=-1055,y=56,z=-810,distance=..5] run opendialogue hotel_waiter1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] as @s[x=-1055,y=56,z=-810,distance=..5,scores={HotelGuest5=1}] run opendialogue hotel_waiter2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] as @s[x=-1055,y=56,z=-810,distance=..5,scores={HotelGuest5=2}] run opendialogue hotel_waiter3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] as @s[x=-1055,y=56,z=-810,distance=..5,scores={HotelGuest5=3}] run opendialogue hotel_waiter4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] as @s[x=-1055,y=56,z=-810,distance=..5,scores={HotelGuest5=4..}] run opendialogue hotel_waiter5 @s



#Couriway Town
#1559 74 267

#Mon
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] as @s[x=1559,y=74,z=267,distance=..5] run opendialogue hotel_madame1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] as @s[x=1559,y=74,z=267,distance=..5,scores={HotelGuest6=1}] run opendialogue hotel_madame2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] as @s[x=1559,y=74,z=267,distance=..5,scores={HotelGuest6=2}] run opendialogue hotel_madame3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] as @s[x=1559,y=74,z=267,distance=..5,scores={HotelGuest6=3}] run opendialogue hotel_madame4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] as @s[x=1559,y=74,z=267,distance=..5,scores={HotelGuest6=4..}] run opendialogue hotel_madame5 @s

#Tues
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[x=1559,y=74,z=267,distance=..5] run opendialogue hotel_maid1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[x=1559,y=74,z=267,distance=..5,scores={HotelGuest1=1}] run opendialogue hotel_maid2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[x=1559,y=74,z=267,distance=..5,scores={HotelGuest1=2}] run opendialogue hotel_maid3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[x=1559,y=74,z=267,distance=..5,scores={HotelGuest1=3}] run opendialogue hotel_maid4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] as @s[x=1559,y=74,z=267,distance=..5,scores={HotelGuest1=4..}] run opendialogue hotel_maid5 @s

#Wed
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] as @s[x=1559,y=74,z=267,distance=..5] run opendialogue hotel_tourist1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] as @s[x=1559,y=74,z=267,distance=..5,scores={HotelGuest3=1}] run opendialogue hotel_tourist2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] as @s[x=1559,y=74,z=267,distance=..5,scores={HotelGuest3=2}] run opendialogue hotel_tourist3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] as @s[x=1559,y=74,z=267,distance=..5,scores={HotelGuest3=3..}] run opendialogue hotel_tourist4 @s

#Thurs
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[x=1559,y=74,z=267,distance=..5] run opendialogue hotel_backpacker1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[x=1559,y=74,z=267,distance=..5,scores={HotelGuest2=1}] run opendialogue hotel_backpacker2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[x=1559,y=74,z=267,distance=..5,scores={HotelGuest2=2}] run opendialogue hotel_backpacker3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[x=1559,y=74,z=267,distance=..5,scores={HotelGuest2=3}] run opendialogue hotel_backpacker4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] as @s[x=1559,y=74,z=267,distance=..5,scores={HotelGuest2=4..}] run opendialogue hotel_backpacker5 @s

#Fri
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] as @s[x=1559,y=74,z=267,distance=..5] run opendialogue hotel_hiker1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] as @s[x=1559,y=74,z=267,distance=..5,scores={HotelGuest4=1}] run opendialogue hotel_hiker2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] as @s[x=1559,y=74,z=267,distance=..5,scores={HotelGuest4=2}] run opendialogue hotel_hiker3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] as @s[x=1559,y=74,z=267,distance=..5,scores={HotelGuest4=3}] run opendialogue hotel_hiker4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] as @s[x=1559,y=74,z=267,distance=..5,scores={HotelGuest4=4..}] run opendialogue hotel_hiker5 @s

#Sat
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] as @s[x=1559,y=74,z=267,distance=..5] run opendialogue hotel_waiter1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] as @s[x=1559,y=74,z=267,distance=..5,scores={HotelGuest5=1}] run opendialogue hotel_waiter2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] as @s[x=1559,y=74,z=267,distance=..5,scores={HotelGuest5=2}] run opendialogue hotel_waiter3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] as @s[x=1559,y=74,z=267,distance=..5,scores={HotelGuest5=3}] run opendialogue hotel_waiter4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] as @s[x=1559,y=74,z=267,distance=..5,scores={HotelGuest5=4..}] run opendialogue hotel_waiter5 @s

#Sun
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] as @s[x=1559,y=74,z=267,distance=..5] run opendialogue hotel_madame1 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] as @s[x=1559,y=74,z=267,distance=..5,scores={HotelGuest6=1}] run opendialogue hotel_madame2 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] as @s[x=1559,y=74,z=267,distance=..5,scores={HotelGuest6=2}] run opendialogue hotel_madame3 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] as @s[x=1559,y=74,z=267,distance=..5,scores={HotelGuest6=3}] run opendialogue hotel_madame4 @s
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] as @s[x=1559,y=74,z=267,distance=..5,scores={HotelGuest6=4..}] run opendialogue hotel_madame5 @s





#-------------------------------------------------------------


advancement revoke @s only kalos:click/npcs

#