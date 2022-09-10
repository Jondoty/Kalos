#Format:
#/tedit add INTERACT /scoreboard players add @pl TrainerLoot1 1
#/tedit add INTERACT /function custom:trainerloot

#/tedit add INTERACT /tellraw @pl {"text":"Nowah!","italic":true,"color":"gray"}


#Mask Pixelmon Commands with following execute:
#execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand,limit=1}] run


#Aquacorde
#Player's Starters
tellraw @a[scores={TrainerLoot0=1}] ["",{"text":"<","color":"white"},{"text":"Serena"},{"text":"> So, which Pokemon do you want?","color":"white"}]
tp @a[scores={TrainerLoot0=1}] -1078 101 1211 180 10
scoreboard players add @a[scores={TrainerLoot0=1}] TrainerLoot0 1

give @a[scores={TrainerLoot2=1}] pixelmon:potion
scoreboard players add @a[scores={TrainerLoot2=1}] TrainerLoot2 1


#Santalune
give @a[scores={TrainerLoot3=1}] pixelmon:x_attack 3
give @a[scores={TrainerLoot3=1}] pixelmon:x_defense 3
scoreboard players add @a[scores={TrainerLoot3=1}] TrainerLoot3 1

give @a[scores={TrainerLoot65=1}] pixelmon:great_ball
scoreboard players add @a[scores={TrainerLoot65=1}] TrainerLoot65 1


#Lumiose - Sycamore Lab
give @a[scores={TrainerLoot5=1}] pixelmon:luxury_ball 5
scoreboard players add @a[scores={TrainerLoot5=1}] TrainerLoot5 1

give @a[scores={TrainerLoot6=1}] pixelmon:tm_gen6{tm:54}
scoreboard players add @a[scores={TrainerLoot6=1}] TrainerLoot6 1


#Lumiose Diantha's Ralts
#moved to ~dialogue164
#tellraw @a[scores={TrainerLoot57=1,score_PokemonLeague=0] ["",{"text":"<Diantha> "},{"selector":"@a[scores={TrainerLoot57=1,score_PokemonLeague=0]"},{"text":", right? Don't your Pokémon look happy? I'm a Trainer myself, in my off time. I look forward to us battling someday!"}]
#scoreboard players set @a[scores={PokemonLeague=0] TrainerLoot57 0

#tellraw @a[scores={TrainerLoot57=1,score_PokemonLeague_min=1}] {"text":"<Diantha> You know, I'd really like to learn more about how a strong Trainer like you raises their Pokémon. This probably feels a bit sudden, but how would you feel about raising my Ralts here?"}
#execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokegive @a[scores={TrainerLoot57=1,score_PokemonLeague_min=1}] Ralts lvl:5 g:female gr:6 n:Modest ab:Synchronize ba:24 ivhp:20 ivatk:20 ivdef:20 ivspatk:31 ivspdef:20 ivspd:31 ot:Diantha
#give @a[scores={TrainerLoot57=1,score_PokemonLeague_min=1}] pixelmon:gardevoirite 1
#scoreboard players add @a[scores={TrainerLoot57=1,score_PokemonLeague_min=1}] TrainerLoot57 1






tellraw @a[scores={TrainerLoot57=3,PokemonLeague_min=1..},x=-492,y=100,z=245,distance=..10] {"text":"<Diantha> Please take good care of Ralts!"}
scoreboard players add @a[scores={TrainerLoot57=1..,PokemonLeague=1..}] TrainerLoot57 1


#Lumiose Poke Ball Boutique
give @a[scores={TrainerLoot64=1}] pixelmon:heal_ball 3
scoreboard players add @a[scores={TrainerLoot64=1}] TrainerLoot64 1

#Lumiose Misc
give @a[scores={TrainerLoot82=1}] pixelmon:wide_lens 1
scoreboard players add @a[scores={TrainerLoot82=1}] TrainerLoot82 1

#Lumiose Office Cafe
give @a[scores={TrainerLoot88=1}] pixelmon:prism_scale 1
scoreboard players add @a[scores={TrainerLoot88=1}] TrainerLoot88 1

#Lumiose Hotel Richissime
give @a[scores={TrainerLoot89=1}] pixelmon:tm_gen6{tm:49}
scoreboard players add @a[scores={TrainerLoot89=1}] TrainerLoot89 1

#Lumiose Museum
give @a[scores={TrainerLoot90=1}] pixelmon:tm_gen6{tm:82}
scoreboard players add @a[scores={TrainerLoot90=1}] TrainerLoot90 1

#Lumiose Feeling Study
give @a[scores={TrainerLoot91=1}] pixelmon:miracle_seed 1
scoreboard players add @a[scores={TrainerLoot91=1}] TrainerLoot91 1

give @a[scores={TrainerLoot92=1}] pixelmon:quick_claw 1
scoreboard players add @a[scores={TrainerLoot92=1}] TrainerLoot92 1

give @a[scores={TrainerLoot93=1}] pixelmon:quick_ball 3
scoreboard players add @a[scores={TrainerLoot93=1}] TrainerLoot93 1

give @a[scores={TrainerLoot94=1}] pixelmon:timer_ball 3
scoreboard players add @a[scores={TrainerLoot94=1}] TrainerLoot94 1

#Fighting Dojo
give @a[scores={TrainerLoot95=1}] pixelmon:expert_belt 1
scoreboard players add @a[scores={TrainerLoot95=1}] TrainerLoot95 1

give @a[scores={TrainerLoot96=1}] pixelmon:protein 1
scoreboard players add @a[scores={TrainerLoot96=1}] TrainerLoot96 1



#Camphrier Town
give @a[scores={TrainerLoot66=1}] pixelmon:ultra_ball
scoreboard players add @a[scores={TrainerLoot66=1}] TrainerLoot66 1

give @a[scores={TrainerLoot67=1}] pixelmon:tm_gen6{tm:46}
scoreboard players add @a[scores={TrainerLoot67=1}] TrainerLoot67 1

give @a[scores={TrainerLoot68=1}] pixelmon:berry_juice
scoreboard players add @a[scores={TrainerLoot68=1}] TrainerLoot68 1

give @a[scores={TrainerLoot7=1}] pixelmon:full_heal
scoreboard players add @a[scores={TrainerLoot7=1}] TrainerLoot7 1


#Berry Fields
give @a[scores={TrainerLoot8=1}] pixelmon:oran_berry{CanPlaceOn:[farmland]} 5
give @a[scores={TrainerLoot8=1}] pixelmon:pecha_berry{CanPlaceOn:[farmland]} 5
scoreboard players add @a[scores={TrainerLoot8=1}] TrainerLoot8 1


#Route 8
scoreboard players set @a[scores={TrainerLoot9=1},tag=!Dialogue44] TrainerLoot9 0

give @a[scores={TrainerLoot9=1},tag=Dialogue44] pixelmon:item_finder
scoreboard players add @a[scores={TrainerLoot9=1},tag=Dialogue44] TrainerLoot9 1


#Ambrette
give @a[scores={TrainerLoot53=1}] pixelmon:tm_gen6{tm:94}
tag @a[scores={TrainerLoot53=1}] add RockSmash
tellraw @a[scores={TrainerLoot53=1},tag=RockSmash] {"text":"You can now use Rock Smash on rocks!","italic":true,"color":"gray"}
scoreboard players add @a[scores={TrainerLoot53=1}] TrainerLoot53 1


give @a[scores={TrainerLoot10=1}] pixelmon:tm_gen6{tm:96}
scoreboard players add @a[scores={TrainerLoot10=1}] TrainerLoot10 1

give @a[scores={TrainerLoot11=1}] pixelmon:rocky_helmet
scoreboard players add @a[scores={TrainerLoot11=1}] TrainerLoot11 1

give @a[scores={TrainerLoot17=1}] pixelmon:old_rod
scoreboard players add @a[scores={TrainerLoot17=1}] TrainerLoot17 1


#Connecting Cave
give @a[scores={TrainerLoot63=1}] pixelmon:tm_gen6{tm:21}
scoreboard players add @a[scores={TrainerLoot63=1}] TrainerLoot63 1


#Parfum Palace
give @a[scores={TrainerLoot83=1}] pixelmon:oran_berry{CanPlaceOn:[farmland]} 1
scoreboard players add @a[scores={TrainerLoot83=1}] TrainerLoot83 1


#Cyllage City
give @a[scores={TrainerLoot12=1}] pixelmon:tm_gen6{tm:44}
scoreboard players add @a[scores={TrainerLoot12=1}] TrainerLoot12 1

give @a[scores={TrainerLoot13=1}] pixelmon:tm_gen6{tm:88}
scoreboard players add @a[scores={TrainerLoot13=1}] TrainerLoot13 1

give @a[scores={TrainerLoot14=1}] pixelmon:destiny_knot
scoreboard players add @a[scores={TrainerLoot14=1}] TrainerLoot14 1

give @a[scores={TrainerLoot23=1}] pixelmon:mach_bike{color:13b} 1
scoreboard players add @a[scores={TrainerLoot23=1}] TrainerLoot23 1

give @a[scores={TrainerLoot69=1}] pixelmon:whipped_dream
give @a[scores={TrainerLoot69=1}] pixelmon:sachet
scoreboard players add @a[scores={TrainerLoot69=1}] TrainerLoot69 1


#Geosenge Town
give @a[scores={TrainerLoot70=1}] pixelmon:tm_gen6{tm:66}
scoreboard players add @a[scores={TrainerLoot70=1}] TrainerLoot70 1

give @a[scores={TrainerLoot71=1}] pixelmon:ever_stone
scoreboard players add @a[scores={TrainerLoot71=1}] TrainerLoot71 1



#Reflection Cave
#give @a[scores={TrainerLoot28=1}] pixelmon:tm70
#give @a[scores={TrainerLoot28=1}] minecraft:fireworks 16 0 {display:{Name:"TM70: Flash",Lore:["Illuminates an area to","the user for 10 minutes."]}}
#scoreboard players add @a[scores={TrainerLoot28=1}] TrainerLoot28 1
#imported to dialogue55


#Shalour City
give @a[scores={TrainerLoot72=1}] pixelmon:soothe_bell
scoreboard players add @a[scores={TrainerLoot72=1}] TrainerLoot72 1

give @a[scores={TrainerLoot73=1}] pixelmon:eviolite
scoreboard players add @a[scores={TrainerLoot73=1}] TrainerLoot73 1

#moved to dialogue264
#give @a[scores={TrainerLoot74=1}] pixelmon:sun_stone
#scoreboard players add @a[scores={TrainerLoot74=1}] TrainerLoot74 1

give @a[scores={TrainerLoot75=1}] pixelmon:hm3
scoreboard players add @a[scores={TrainerLoot75=1}] TrainerLoot75 1



#Route 12 Lapras Lady
execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokegive @a[scores={TrainerLoot31=1}] Lapras lvl:30
scoreboard players add @a[scores={TrainerLoot31=1}] TrainerLoot31 1

#Skiddo rancher
execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokegive @a[scores={TrainerLoot101=1}] Skiddo lvl:25
scoreboard players add @a[scores={TrainerLoot101=1}] TrainerLoot101 1


give @a[scores={TrainerLoot81=1}] pixelmon:tm_gen6{tm:45}
scoreboard players add @a[scores={TrainerLoot81=1}] TrainerLoot81 1


#Route 17 Mamoswine Person
#Moved to Dialogue100
#execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokegive @a[scores={TrainerLoot61=1,tag=Dialogue98] Mamoswine lvl:35 untradeable
#scoreboard players add @a[scores={TrainerLoot61=1,tag=Dialogue98] TrainerLoot61 1
#scoreboard players set @a[scores={TrainerLoot61=1,tag=!Dialogue98] TrainerLoot61 0


#Route 9 Rhyhorn Person
execute as @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokegive @a[scores={TrainerLoot62=1}] Rhyhorn lvl:15 untradeable
scoreboard players add @a[scores={TrainerLoot62=1}] TrainerLoot62 1



#Courmarine City
give @a[scores={TrainerLoot15=1}] pixelmon:silk_scarf
scoreboard players add @a[scores={TrainerLoot15=1}] TrainerLoot15 1

give @a[scores={TrainerLoot16=1}] pixelmon:good_rod
scoreboard players add @a[scores={TrainerLoot16=1}] TrainerLoot16 1

#Moved to Dialogue66
#give @a[scores={TrainerLoot18=1}]

give @a[scores={TrainerLoot19=1}] pixelmon:metronome
scoreboard players add @a[scores={TrainerLoot19=1}] TrainerLoot19 1

give @a[scores={TrainerLoot20=1}] pixelmon:black_sludge
scoreboard players add @a[scores={TrainerLoot20=1}] TrainerLoot20 1

give @a[scores={TrainerLoot76=1}] pixelmon:heart_scale
scoreboard players add @a[scores={TrainerLoot76=1}] TrainerLoot76 1

give @a[scores={TrainerLoot77=1}] pixelmon:lucky_egg
scoreboard players add @a[scores={TrainerLoot77=1}] TrainerLoot77 1



#Power Plant
give @a[scores={TrainerLoot21=1}] pixelmon:tm_gen6{tm:43}
scoreboard players add @a[scores={TrainerLoot21=1}] TrainerLoot21 1

give @a[scores={TrainerLoot22=1}] pixelmon:magnet
scoreboard players add @a[scores={TrainerLoot22=1}] TrainerLoot22 1


#Route 14
give @a[scores={TrainerLoot24=1}] pixelmon:tm_gen6{tm:6}
scoreboard players add @a[scores={TrainerLoot24=1}] TrainerLoot24 1


#Laverre City
give @a[scores={TrainerLoot25=1}] pixelmon:tm_gen6{tm:41}
scoreboard players add @a[scores={TrainerLoot25=1}] TrainerLoot25 1

give @a[scores={TrainerLoot26=1}] pixelmon:dusk_stone
scoreboard players add @a[scores={TrainerLoot26=1}] TrainerLoot26 1


#Poke Ball Factory
give @a[scores={TrainerLoot27=1}] pixelmon:master_ball
give @a[scores={TrainerLoot27=1}] pixelmon:big_nugget
scoreboard players add @a[scores={TrainerLoot27=1}] TrainerLoot27 1




#Lost Hotel
give @a[scores={TrainerLoot29=1}] pixelmon:tm_gen6{tm:56}
scoreboard players add @a[scores={TrainerLoot29=1}] TrainerLoot29 1


#Route 16
give @a[scores={TrainerLoot30=1}] pixelmon:super_rod
give @a[scores={TrainerLoot30=1}] pixelmon:dive_ball 10
scoreboard players add @a[scores={TrainerLoot30=1}] TrainerLoot30 1

give @a[scores={TrainerLoot87=1}] pixelmon:dive_ball 20
scoreboard players add @a[scores={TrainerLoot87=1}] TrainerLoot87 1


#Dendemille Town
give @a[scores={TrainerLoot32=1}] pixelmon:shell_bell
scoreboard players add @a[scores={TrainerLoot32=1}] TrainerLoot32 1

give @a[scores={TrainerLoot33=1}] pixelmon:big_nugget
scoreboard players add @a[scores={TrainerLoot33=1}] TrainerLoot33 1

give @a[scores={TrainerLoot34=1}] pixelmon:tm_gen6{tm:42}
scoreboard players add @a[scores={TrainerLoot34=1}] TrainerLoot34 1

give @a[scores={TrainerLoot78=1}] pixelmon:sitrus_berry{CanPlaceOn:[farmland]}
scoreboard players add @a[scores={TrainerLoot78=1}] TrainerLoot78 1


#Anistar City
give @a[scores={TrainerLoot35=1}] pixelmon:repeat_ball 10
scoreboard players add @a[scores={TrainerLoot35=1}] TrainerLoot35 1

give @a[scores={TrainerLoot41=1}] pixelmon:tm_gen6{tm:10}
scoreboard players add @a[scores={TrainerLoot41=1}] TrainerLoot41 1

execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1..2}] run give @a[scores={TrainerLoot36=1}] pixelmon:tm_gen6{tm:35}
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1..2}] run scoreboard players add @a[scores={TrainerLoot36=1}] TrainerLoot36 1

execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] run give @a[scores={TrainerLoot37=1}] pixelmon:tm_gen6{tm:77}
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] run scoreboard players add @a[scores={TrainerLoot37=1}] TrainerLoot37 1

execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4..5}] run give @a[scores={TrainerLoot38=1}] pixelmon:tm_gen6{tm:90}
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4..5}] run scoreboard players add @a[scores={TrainerLoot38=1}] TrainerLoot38 1

execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6..7}] run give @a[scores={TrainerLoot39=1}] pixelmon:tm_gen6{tm:32}
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6..7}] run scoreboard players add @a[scores={TrainerLoot39=1}] TrainerLoot39 1

scoreboard players set @a[scores={TrainerLoot36=1}] TrainerLoot36 0
scoreboard players set @a[scores={TrainerLoot37=1}] TrainerLoot37 0
scoreboard players set @a[scores={TrainerLoot38=1}] TrainerLoot38 0
scoreboard players set @a[scores={TrainerLoot39=1}] TrainerLoot39 0


#Couriway Town
give @a[scores={TrainerLoot42=1}] pixelmon:tm_gen6{tm:89}
scoreboard players add @a[scores={TrainerLoot42=1}] TrainerLoot42 1

give @a[scores={TrainerLoot43=1}] pixelmon:revive
scoreboard players add @a[scores={TrainerLoot43=1}] TrainerLoot43 1

give @a[scores={TrainerLoot44=1}] pixelmon:tm_gen6{tm:55}
scoreboard players add @a[scores={TrainerLoot44=1}] TrainerLoot44 1

give @a[scores={TrainerLoot79=1,StarterPick=1}] pixelmon:miracle_seed
give @a[scores={TrainerLoot79=1,StarterPick=2}] pixelmon:charcoal
give @a[scores={TrainerLoot79=1,StarterPick=3}] pixelmon:mystic_water
scoreboard players add @a[scores={TrainerLoot79=1}] TrainerLoot79 1


#Route 19
give @a[scores={TrainerLoot45=1}] pixelmon:hm7
scoreboard players add @a[scores={TrainerLoot45=1}] TrainerLoot45 1


#Snowbelle City
give @a[scores={TrainerLoot47=1}] pixelmon:tm_gen6{tm:8}
scoreboard players add @a[scores={TrainerLoot47=1}] TrainerLoot47 1


#Pokemon Village
give @a[scores={TrainerLoot49=1}] pixelmon:chople_berry{CanPlaceOn:[farmland]} 1
scoreboard players add @a[scores={TrainerLoot49=1}] TrainerLoot49 1

give @a[scores={TrainerLoot50=1}] pixelmon:pretty_wing
scoreboard players add @a[scores={TrainerLoot50=1}] TrainerLoot50 1


#Kiloude City
give @a[scores={TrainerLoot51=1}] pixelmon:tm_gen6{tm:91}
scoreboard players add @a[scores={TrainerLoot51=1}] TrainerLoot51 1

give @a[scores={TrainerLoot52=1}] pixelmon:tm_gen6{tm:58}
scoreboard players add @a[scores={TrainerLoot52=1}] TrainerLoot52 1

give @a[scores={TrainerLoot80=1}] pixelmon:max_revive
scoreboard players add @a[scores={TrainerLoot80=1}] TrainerLoot80 1

give @a[scores={TrainerLoot60=1}] written_book{pages:["[\"\",{\"text\":\"Click what type you want to explore!\\n\\n[\"},{\"text\":\"Normal\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 100\"}},{\"text\":\"]\\n[\"},{\"text\":\"Fire\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 101\"}},{\"text\":\"]\\n[\"},{\"text\":\"Fighting\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 102\"}},{\"text\":\"]\\n[\"},{\"text\":\"Water\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 103\"}},{\"text\":\"]\\n[\"},{\"text\":\"Flying\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 104\"}},{\"text\":\"]\\n[\"},{\"text\":\"Grass\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 105\"}},{\"text\":\"]\\n[\"},{\"text\":\"Poison\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 106\"}},{\"text\":\"]\\n[\"},{\"text\":\"Electric\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 107\"}},{\"text\":\"]\\n[\"},{\"text\":\"Ground\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 108\"}},{\"text\":\"]\\n[\"},{\"text\":\"Psychic\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 109\"}},{\"text\":\"]\\n\\n \"}]","[\"\",{\"text\":\"[\"},{\"text\":\"Rock\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 110\"}},{\"text\":\"]\\n[\"},{\"text\":\"Ice\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 111\"}},{\"text\":\"]\\n[\"},{\"text\":\"Bug\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 112\"}},{\"text\":\"]\\n[\"},{\"text\":\"Dragon\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 113\"}},{\"text\":\"]\\n[\"},{\"text\":\"Ghost\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 114\"}},{\"text\":\"]\\n[\"},{\"text\":\"Dark\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 115\"}},{\"text\":\"]\\n[\"},{\"text\":\"Steel\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 116\"}},{\"text\":\"]\\n[\"},{\"text\":\"Fairy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger FriendSafari set 117\"}},{\"text\":\"]\\n \"}]"],title:"Friend Safari",author:"",display:{Lore:["A tool to activate your","Friend Safari codes!"]}}
scoreboard players add @a[scores={TrainerLoot60=1}] TrainerLoot60 1


#Mega Stones
#moved Abomasite to dialogue
#give @a[scores={TrainerLoot54=1}] pixelmon:abomasite
#playsound pixelmon:pixelmon.mob.abomasnow ambient @a[scores={TrainerLoot54=1}] ~ ~ ~ 10 1 1
#tellraw @a[scores={TrainerLoot54=1}] {"text":"Whooo whooon!!","italic":true,"color":"gray"}
#scoreboard players add @a[scores={TrainerLoot54=1}] TrainerLoot54 1

give @a[scores={TrainerLoot55=1}] pixelmon:aerodactylite
scoreboard players add @a[scores={TrainerLoot55=1}] TrainerLoot55 1

give @a[scores={TrainerLoot56=1}] pixelmon:ampharosite
scoreboard players add @a[scores={TrainerLoot56=1}] TrainerLoot56 1

give @a[scores={TrainerLoot58=1}] pixelmon:gengarite
scoreboard players add @a[scores={TrainerLoot58=1}] TrainerLoot58 1

#Korrina's Lucario
#Moved to Dialogue63
#give @a[scores={TrainerLoot59=1}] pixelmon:lucarionite
#scoreboard players add @a[scores={TrainerLoot59=1}] TrainerLoot59 1


#Mega Ring and unlocks wild Mega Stones
#Moved to Dialogue64 for Lucario
#Moved Unlocking hidden stones until Sycamore's Mega Ring Upgrade (Dialogue~163)
#execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /megaring @a[scores={TrainerLoot86=1}]
#execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokegive @a[scores={TrainerLoot86=1}] Lucario lvl:32 gr:7 ab:Steadfast

#scoreboard players set @a[scores={TrainerLoot86=1}] MegaStones 1
#scoreboard players set @a[scores={TrainerLoot86=1}] Abomasite 0
#scoreboard players set @a[scores={TrainerLoot86=1}] Absolite 0
#scoreboard players set @a[scores={TrainerLoot86=1}] Aggronite 0
#scoreboard players set @a[scores={TraizerLoot86=1}] Alakazite 0
#scoreboard players set @a[scores={TrainerLoot86=1}] Banettite 0
#scoreboard players set @a[scores={TrainerLoot86=1}] Diancite 0
#scoreboard players set @a[scores={TrainerLoot86=1}] Garchompite 0
#scoreboard players set @a[scores={TrainerLoot86=1}] Gyaradosite 0
#scoreboard players set @a[scores={TrainerLoot86=1}] Heracronite 0
#scoreboard players set @a[scores={TrainerLoot86=1}] Houndoominite 0
#scoreboard players set @a[scores={TrainerLoot86=1}] Kangaskhanite 0
#scoreboard players set @a[scores={TrainerLoot86=1}] Manectite 0
#scoreboard players set @a[scores={TrainerLoot86=1}] Mawilite 0
#scoreboard players set @a[scores={TrainerLoot86=1}] Medichamite 0
#scoreboard players set @a[scores={TrainerLoot86=1}] Mewtwonite_X 0
#scoreboard players set @a[scores={TrainerLoot86=1}] Mewtwonite_Y 0
#scoreboard players set @a[scores={TrainerLoot86=1}] Pinsirite 0
#scoreboard players set @a[scores={TrainerLoot86=1}] Scizorite 0
#scoreboard players set @a[scores={TrainerLoot86=1}] Tyranitarite 0
#tellraw @a[scores={TrainerLoot86=1}] {"text":"You can now find Mega Stones scattered throughout Kalos!","italic":true,"color":"gray"}
#scoreboard players add @a[scores={TrainerLoot86=1}] TrainerLoot86 1



#Lysandre's Lab
#Team Flare Grunt
give @a[scores={TrainerLoot97=1}] pixelmon:tm_gen6{tm:12}
scoreboard players add @a[scores={TrainerLoot97=1}] TrainerLoot97 1



#Red and blue buttons moved to TalkTrigger and Dialogue118-120

#Blue Button (Xerneas)
#scoreboard players set @a[scores={TrainerLoot85=1,score_Yveltal_min=1,score_Yveltal=1] Yveltal 0
#scoreboard players set @a[scores={TrainerLoot85=1,score_Xerneas=0] Xerneas 1
#execute @a[scores={TrainerLoot85=1] ~ ~ ~ /entitydata @e[x=-319,y=106,z=314,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:31s}]}
#execute @a[scores={TrainerLoot85=1] ~ ~ ~ /entitydata @e[x=-302,y=106,z=314,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:32s}]}
#tellraw @a[scores={TrainerLoot85=1,score_Xerneas_min=0,score_Xerneas=1] {"text":"You pressed the blue button... A signal was sent to Geosenge somewhere...","italic":true,"color":"gray"}
#tellraw @a[scores={TrainerLoot85=1,score_Xerneas_min=2] {"text":"You pressed the blue button... but nothing happened!","italic":true,"color":"gray"}
#scoreboard players set @a[scores={TrainerLoot85=1] TrainerLoot85 0

#Red Button (Yveltal)
#scoreboard players set @a[scores={TrainerLoot84=1,Xerneas=1}] Xerneas 0
#scoreboard players set @a[scores={TrainerLoot84=1,Yveltal=0}] Yveltal 1
#execute @a[scores={TrainerLoot84=1] ~ ~ ~ /entitydata @e[x=-319,y=106,z=314,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:33s}]}
#execute @a[scores={TrainerLoot84=1] ~ ~ ~ /entitydata @e[x=-302,y=106,z=314,distance=..3,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:30s}]}
#tellraw @a[scores={TrainerLoot84=1,score_Yveltal_min=0,score_Yveltal=1] {"text":"You pressed the red button... A signal was sent to Geosenge somewhere...","italic":true,"color":"gray"}
#tellraw @a[scores={TrainerLoot84=1,score_Yveltal_min=2] {"text":"You pressed the red button... but nothing happened!","italic":true,"color":"gray"}
#scoreboard players set @a[scores={TrainerLoot84=1] TrainerLoot84 0





#NPCs wanting to see Pokemon
#Genesect
execute if entity @e[x=-1947,y=140,z=594,distance=..15,nbt={ndex:649s},type=pixelmon:pixelmon,limit=1] run tellraw @a[scores={TrainerLoot98=1}] {"text":"<Hiker> Is that Pokémon with you... Genesect?! Well then, why don\u2019t I give you these four drives?"}
execute if entity @e[x=-1947,y=140,z=594,distance=..15,nbt={ndex:649s},type=pixelmon:pixelmon,limit=1] run give @a[scores={TrainerLoot98=1}] pixelmon:shock_drive
execute if entity @e[x=-1947,y=140,z=594,distance=..15,nbt={ndex:649s},type=pixelmon:pixelmon,limit=1] run give @a[scores={TrainerLoot98=1}] pixelmon:burn_drive
execute if entity @e[x=-1947,y=140,z=594,distance=..15,nbt={ndex:649s},type=pixelmon:pixelmon,limit=1] run give @a[scores={TrainerLoot98=1}] pixelmon:douse_drive
execute if entity @e[x=-1947,y=140,z=594,distance=..15,nbt={ndex:649s},type=pixelmon:pixelmon,limit=1] run give @a[scores={TrainerLoot98=1}] pixelmon:chill_drive
execute if entity @e[x=-1947,y=140,z=594,distance=..15,nbt={ndex:649s},type=pixelmon:pixelmon,limit=1] run scoreboard players add @a[scores={TrainerLoot98=1}] TrainerLoot98 1
scoreboard players set @a[scores={TrainerLoot98=1}] TrainerLoot98 0


#Genie Trio
tag @e[x=-1697,y=69,z=-345,distance=..20,type=pixelmon:pixelmon,tag=!Genie,nbt={ndex:642s}] add Genie
tag @e[x=-1697,y=69,z=-345,distance=..20,type=pixelmon:pixelmon,tag=!Genie,nbt={ndex:642s}] add Genie
tag @e[x=-1697,y=69,z=-345,distance=..20,type=pixelmon:pixelmon,tag=!Genie,nbt={ndex:642s}] add Genie
execute as @e[tag=Genie,type=pixelmon:pixelmon,limit=1] run tellraw @a[scores={TrainerLoot99=1}] ["",{"text":"<Scientist Marie> Oh! That Pokémon with you! That is the "},{"selector":"@e[x=-1697,y=69,z=-345,distance=..20,type=pixelmon:pixelmon,tag=Genie]"},{"text":" of legend! Then take this, won\u2019t you?"}]
execute as @e[tag=Genie,type=pixelmon:pixelmon,limit=1] run give @a[scores={TrainerLoot99=1}] pixelmon:reveal_glass
execute as @e[tag=Genie,type=pixelmon:pixelmon,limit=1] run scoreboard players add @a[scores={TrainerLoot99=1}] TrainerLoot99 1
scoreboard players set @a[scores={TrainerLoot99=1}] TrainerLoot99 0

#Shaymin
execute if entity @e[x=1195,y=74,z=472,dx=50,dy=10,dz=50,nbt={ndex:492s},type=pixelmon:pixelmon,limit=1] run tellraw @a[x=1195,y=74,z=472,dx=50,dy=10,dz=50,scores={TrainerLoot46=1}] {"text":"<Lass Amy> Oh, wow! It's Shaymin! When I see Shaymin, the first thing that comes to mind is the Gracidea flower! And it just so happens that I have a bunch. I'd be happy to share with you!"}
execute if entity @e[x=1195,y=74,z=472,dx=50,dy=10,dz=50,nbt={ndex:492s},type=pixelmon:pixelmon,limit=1] run give @a[scores={TrainerLoot46=1}] pixelmon:gracidea
execute if entity @e[x=1195,y=74,z=472,dx=50,dy=10,dz=50,nbt={ndex:492s},type=pixelmon:pixelmon,limit=1] run scoreboard players add @a[scores={TrainerLoot46=1}] TrainerLoot46 1
scoreboard players set @a[scores={TrainerLoot46=1}] TrainerLoot46 0

#Deoxys
#it's just a rock







#Kyurem
execute if entity @e[x=1143,y=65,z=1512,dx=39,dy=10,dz=26,nbt={ndex:646s},type=pixelmon:pixelmon,limit=1] run tellraw @a[x=1143,y=65,z=1512,dx=39,dy=10,dz=26,scores={TrainerLoot100=1}] {"text":"<Punk Girl> That's Kyurem! Then, take these... The great Pokémon Kyurem can use those DNA Splicers... Then it can absofuse with Reshiram or Zekrom!"}
execute if entity @e[x=1143,y=65,z=1512,dx=39,dy=10,dz=26,nbt={ndex:646s},type=pixelmon:pixelmon,limit=1] run give @a[scores={TrainerLoot100=1}] pixelmon:dna_splicers
execute if entity @e[x=1143,y=65,z=1512,dx=39,dy=10,dz=26,nbt={ndex:646s},type=pixelmon:pixelmon,limit=1] run scoreboard players add @a[scores={TrainerLoot100=1}] TrainerLoot100 1
scoreboard players set @a[scores={TrainerLoot100=1}] TrainerLoot100 0
