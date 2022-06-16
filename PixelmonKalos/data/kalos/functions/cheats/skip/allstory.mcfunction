#Important Items
#Town Map
give @s minecraft:diamond_hoe{display:{Name:"Town Map",Lore:["A map of the Kalos region."]},HideFlags:6,Unbreakable:1,Damage:1s}
give @s pixelmon:exp_all 1
give @s pixelmon:tm_gen6{tm:27}
give @s pixelmon:tm_gen6{tm:17}
give @s pixelmon:jaw_fossil
give @s pixelmon:sail_fossil
give @s pixelmon:hm4
give @s pixelmon:tm_gen6{tm:70}
function kalos:spawn/flashhm
give @s minecraft:prismarine_crystals{display:{Lore:["A rather curious stone that","might appear to be valuable","to some. It's all in the","eye of the beholder."]},HideFlags:6}
execute at @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run megaring @a[tag=Temp]
execute at @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokegive @a[tag=Temp] Lucario lvl:32 ab:Stradyfast gr:6 ivhp:26+ ivatk:29+ ivdef:26+ ivspatk:26+ ivspdef:26+ ivhp:26+
give @s pixelmon:lucarionite
give @s pixelmon:hm3
function kalos:spawn/flyhm
give @s pixelmon:full_restore 2
give @s pixelmon:kings_rock
give @s pixelmon:master_ball
give @s pixelmon:big_nugget
give @s pixelmon:abomasite
execute at @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] run pokegive @a[tag=Temp] Mamoswine lvl:35 untradeable gr:7
give @s pixelmon:repeat_ball 10
give @s pixelmon:revive 3
give @s minecraft:iron_horse_armor{display:{Lore:["A card key that activates the","elevator in Lysandre Labs.","It is emblazoned with Team","Flare's logo."]},HideFlags:6}
give @s pixelmon:hm7
give @s minecraft:diamond_horse_armor{display:{Lore:["A precious symbol that is awarded","only to an individual who has done","great things for the Kalos region."]},HideFlags:6}
give @s minecraft:golden_horse_armor{display:{Lore:["A commuter pass that allows","the holder to ride the TMV","between Lumiose City and","Kiloude City at any time."]},HideFlags:6}
give @s pixelmon:absolite




#Fly Spots visited
tag @s add FlyAquacorde
tag @s add FlySantalune
tag @s add FlyLumiose
tag @s add FlyCouriway
tag @s add FlyAmbrette
tag @s add FlyCyllage
tag @s add FlyGeosenge
tag @s add FlyShalour
tag @s add FlyCoumarine
tag @s add FlyLaverre
tag @s add FlyDendemille
tag @s add FlyAnistar
tag @s add FlyCamphrier
tag @s add FlySnowbelle

tag @s add FlyKiloude
tag @s add FlyPokemonLeague





#Gym Leader Tags
tag @s add Viola
tag @s add Grant
tag @s add Korrina
tag @s add Ramos
tag @s add Clemont
tag @s add Valerie
tag @s add Olympia
tag @s add Wulfric




#Advancements
advancement grant @s only kalos:flare1
advancement grant @s only kalos:mega1
advancement grant @s only kalos:flare2
advancement grant @s only kalos:flare3
advancement grant @s only kalos:flare4
advancement grant @s only kalos:flare5
advancement grant @s only kalos:flare6
advancement grant @s only kalos:flare8
advancement grant @s only kalos:flare9
advancement grant @s only kalos:champion
advancement grant @s only kalos:legendroot
advancement grant @s only kalos:mythicalroot
advancement grant @s only kalos:mega2




#Story-related dialogues
tag @s add Dialogue1
tag @s add Dialogue2
#Gives starter
#tag @s add Dialogue3
tag @s add Dialogue4
tag @s add Dialogue5
tag @s add Dialogue6
tag @s add Dialogue7
tag @s add Dialogue8
tag @s add Dialogue9
tag @s add Dialogue10
tag @s add Dialogue11
tag @s add Dialogue12
tag @s add Dialogue13
tag @s add Dialogue14
tag @s add Dialogue15
tag @s add Dialogue16
tag @s add Dialogue17
#Needs to pick a Kanto starter
#tag @s add Dialogue18
#tag @s add Dialogue19
#tag @s add Dialogue20
tag @s add Dialogue21
tag @s add Dialogue22
tag @s add Dialogue23
tag @s add Dialogue24
tag @s add Dialogue25
tag @s add Dialogue26
tag @s add Dialogue27
tag @s add Dialogue28
tag @s add Dialogue29
tag @s add Dialogue30
tag @s add Dialogue31
tag @s add Dialogue32
tag @s add Dialogue33
tag @s add Dialogue34
tag @s add Dialogue35
tag @s add Dialogue36
tag @s add Dialogue37
tag @s add Dialogue38
tag @s add Dialogue39
tag @s add Dialogue40
tag @s add Dialogue41
tag @s add Dialogue42
tag @s add Dialogue43
tag @s add Dialogue44
tag @s add Dialogue45
tag @s add Dialogue46
tag @s add Dialogue47
tag @s add Dialogue48
tag @s add Dialogue49
tag @s add Dialogue50
tag @s add Dialogue51
tag @s add Dialogue52
tag @s add Dialogue53
tag @s add Dialogue54
tag @s add Dialogue55
tag @s add Dialogue56
tag @s add Dialogue57
tag @s add Dialogue58
tag @s add Dialogue59
tag @s add Dialogue60
tag @s add Dialogue61
tag @s add Dialogue62
tag @s add Dialogue63
tag @s add Dialogue64
tag @s add Dialogue65
tag @s add Dialogue66
tag @s add Dialogue67
tag @s add Dialogue68
tag @s add Dialogue69
tag @s add Dialogue70
tag @s add PowerPlantPass
tag @s add Dialogue71
tag @s add Dialogue72
tag @s add Dialogue73
tag @s add Dialogue74
tag @s add Dialogue75
tag @s add Dialogue76
tag @s add Dialogue77
tag @s add Dialogue78
tag @s add LumiosePower
tag @s add Dialogue79
tag @s add Dialogue80
tag @s add Dialogue81
tag @s add Dialogue82
tag @s add Dialogue83
tag @s add Dialogue84
tag @s add Dialogue85
tag @s add Dialogue86
tag @s add Dialogue87
tag @s add Dialogue88
tag @s add Dialogue89
tag @s add Dialogue90
tag @s add Dialogue91
tag @s add Dialogue92
tag @s add Dialogue93
tag @s add Dialogue94
tag @s add Dialogue95
tag @s add Dialogue96
tag @s add Dialogue97
tag @s add Dialogue98
tag @s add Dialogue99
tag @s add Dialogue100
tag @s add Dialogue101
tag @s add Dialogue102
tag @s add Dialogue103
tag @s add Dialogue104
tag @s add Dialogue105
tag @s add Dialogue106
tag @s add Dialogue107
tag @s add Dialogue108
tag @s add Dialogue109
tag @s add Dialogue110
tag @s add Dialogue111
tag @s add Dialogue112
tag @s add Dialogue113
tag @s add Dialogue114
tag @s add Dialogue115
tag @s add ElevatorKey
tag @s add Dialogue116
tag @s add Dialogue117
#Picks your legend
#tag @s add Dialogue118
#tag @s add Dialogue119
#tag @s add Dialogue120
tag @s add Dialogue121
tag @s add Dialogue122
tag @s add Dialogue123
tag @s add Dialogue124
tag @s add Dialogue125
tag @s add Dialogue126
tag @s add Dialogue127
tag @s add Dialogue128
tag @s add Dialogue129
tag @s add Admin1
tag @s add Admin3
tag @s add Admin4
tag @s add Admin6
tag @s add Dialogue130
#Spawns your legend
#tag @s add Dialogue131
tag @s add Dialogue132
tag @s add Dialogue133
scoreboard players set @s Geosenge 2
tag @s add Dialogue134
tag @s add Dialogue135
tag @s add Dialogue136
tag @s add Dialogue137
tag @s add Dialogue138
tag @s add Dialogue139
tag @s add Dialogue140
tag @s add Dialogue141
tag @s add Dialogue143
tag @s add Dialogue144
tag @s add Dialogue145
tag @s add Dialogue146
tag @s add Dialogue147
tag @s add Dialogue148
tag @s add Dialogue149
tag @s add Dialogue150
tag @s add Dialogue151
tag @s add Dialogue152
tag @s add Dialogue153
tag @s add Dialogue154
scoreboard players add @s PokemonLeague 1
tag @s add Dialogue155
tag @s add Dialogue156
tag @s add Dialogue157
#Shauna Gives player an extra starter
#tag @s add Dialogue158
tag @s add Dialogue159
tag @s add Dialogue160
tag @s add TMVPass
tag @s add Dialogue161
tag @s add Dialogue162
tag @s add Dialogue163

scoreboard players set @s MegaStones 1
scoreboard players set @s Abomasite 0
scoreboard players set @s Aggronite 0
scoreboard players set @s Alakazite 0
scoreboard players set @s Banettite 0
scoreboard players set @s Diancite 0
scoreboard players set @s Garchompite 0
scoreboard players set @s Gyaradosite 0
scoreboard players set @s Heracronite 0
scoreboard players set @s Houndoominite 0
scoreboard players set @s Kangaskhanite 0
scoreboard players set @s Manectite 0
scoreboard players set @s Mawilite 0
scoreboard players set @s Medichamite 0
scoreboard players set @s Mewtwonite_X 0
scoreboard players set @s Mewtwonite_Y 0
scoreboard players set @s Scizorite 0
scoreboard players set @s Tyranitarite 0

tag @s add Dialogue164
#Looker remains, player can just skip that all




#Holo Calls
tag @s add Call1
tag @s add Call2
tag @s add Call3
tag @s add Call4
tag @s add Call5
tag @s add Call6
tag @s add Call7
tag @s add Call8
tag @s add Call9
tag @s add Call10
tag @s add Call11
tag @s add Call12




tag @s remove Temp

#
