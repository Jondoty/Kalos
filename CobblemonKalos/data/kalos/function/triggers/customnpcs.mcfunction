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


advancement revoke @s only kalos:click/npcs

#