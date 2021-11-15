#/function world:worldcommands
#-417 101 1389

#---------------------------------------------------------
#List of 20tps commands for reference

#Portals
#execute @a ~ ~ ~ detect ~ ~ ~ pixelmon:warp_plate 0 function world:portals

#Cut Function for sound and kills items
#function custom:berrytags if @a[score_CutUse_min=1]

#Shiny Particles
#execute @e[x=-685,y=100,z=1388,dy=3,tag=Particles,type=armor_stand] ~ ~ ~ execute @e[tag=Shiny,type=pixelmon:pixelmon] ~ ~ ~ /particle reddust ~ ~ ~ 0 10 0 1 10 force @a[r=50]

#Restaurant Battle Start Timer
#execute @a[x=-514,y=0,z=64,dx=526,dy=256,dz=436,tag=RunTimer,score_RestaurantBattle_min=1] ~ ~ ~ function custom:restauranttimer

#Mamoswine Route Removes Snow
#execute @e[x=828,y=108,z=-318,dx=150,dy=10,dz=150,type=player,tag=Dialogue100] ~ ~-0.5 ~ /execute @e[type=pixelmon:pixelmon,name=Mamoswine,r=2] ~ ~ ~ /fill ~-3 108 ~-3 ~2 112 ~3 air 0 replace minecraft:snow

#---------------------------------------------------------
#Important triggers for functions of map

#Runs constantly-scanning Music switching and area display titles function
execute @a[score_TalkTime=0,score_TrainerClass=0] ~ ~ ~ function world:musictitles


#Runs TalkTrigger if applicable score (used to nest commands)
function custom:talktrigger if @a[score_TalkTrigger_min=1]


#Relog Trigger (player leaves world and joins back)
execute @a[score_relog_min=1] ~ ~ ~ function custom:relog


#Photo-Spot Dismissal if player walks away
execute @e[type=armor_stand,tag=PhotoSpot] ~ ~ ~ execute @a[r=50,rm=20,score_DialogueTrigger=0,score_PhotoSpot_min=1] ~ ~ ~ scoreboard players set @s TalkTrigger 299


#---------------------------

#Randomizer script on a player
execute @a[tag=RandomizerTemp,c=1] ~ ~ ~ function randomizer:tpscript

#Randomizer trainers function
execute @e[x=-688,y=100,z=1136,dy=3,tag=Randomizer] ~ ~ ~ execute @a ~ ~ ~ execute @e[tag=!Randomized,type=pixelmon:npc_trainer,r=30,c=1] ~ ~ ~ function randomizer:trainers

#Randomize evolutions function
execute @e[x=-688,y=100,z=1136,dy=3,tag=Randomizer] ~ ~ ~ execute @s[tag=Evolutions] ~ ~ ~ execute @a ~ ~ ~ execute @e[r=15,type=pixelmon:pixelmon] ~ ~ ~ function randomizer:speciescheck




#---------------------------------------------------------
#Holo Caster Music

#Music rate: 86 ticks per 60 seconds

#Runs the click trigger if player uses Carrot on a Stick
execute @a[score_click_min=1,tag=TempDelay] ~ ~ ~ function triggers:click
scoreboard players tag @a[score_click_min=1,tag=!TempDelay] add TempDelay


#Runs music for players holding radio
scoreboard players tag @a[score_MusicCooldown=0,tag=!RadioOff] add TrackSeek {Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}
scoreboard players tag @a[score_MusicCooldown=0,tag=!RadioOff] add TrackSeek {Inventory:[{Slot:0b,id:"minecraft:carrot_on_a_stick"}]}
scoreboard players tag @a[score_MusicCooldown=0,tag=!RadioOff] add TrackSeek {Inventory:[{Slot:1b,id:"minecraft:carrot_on_a_stick"}]}
scoreboard players tag @a[score_MusicCooldown=0,tag=!RadioOff] add TrackSeek {Inventory:[{Slot:2b,id:"minecraft:carrot_on_a_stick"}]}
scoreboard players tag @a[score_MusicCooldown=0,tag=!RadioOff] add TrackSeek {Inventory:[{Slot:3b,id:"minecraft:carrot_on_a_stick"}]}
scoreboard players tag @a[score_MusicCooldown=0,tag=!RadioOff] add TrackSeek {Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"}]}
scoreboard players tag @a[score_MusicCooldown=0,tag=!RadioOff] add TrackSeek {Inventory:[{Slot:5b,id:"minecraft:carrot_on_a_stick"}]}
scoreboard players tag @a[score_MusicCooldown=0,tag=!RadioOff] add TrackSeek {Inventory:[{Slot:6b,id:"minecraft:carrot_on_a_stick"}]}
scoreboard players tag @a[score_MusicCooldown=0,tag=!RadioOff] add TrackSeek {Inventory:[{Slot:7b,id:"minecraft:carrot_on_a_stick"}]}
scoreboard players tag @a[score_MusicCooldown=0,tag=!RadioOff] add TrackSeek {Inventory:[{Slot:8b,id:"minecraft:carrot_on_a_stick"}]}
execute @a[tag=TrackSeek] ~ ~ ~ function world:music if @s[tag=!RadioOff]



#Tests for if player is using the old timings from battle music
scoreboard players tag @a[score_MusicCooldown_min=300,score_MusicCooldown=300,tag=OldTimings] add Temp
scoreboard players set @a[tag=Temp] MusicCooldown 21
scoreboard players tag @a[tag=Temp] remove OldTimings
scoreboard players tag @a[tag=Temp] remove Temp


#removes MusicCooldown score for music timings
scoreboard players remove @a[score_MusicCooldown_min=1] MusicCooldown 1



#Click trigger function on Holo Caster
#execute @a[score_click_min=1] ~ ~ ~ /function triggers:click




#Runs trainer music

#Battle Start
#/tedit add BATTLE_START scoreboard players set @pl TrainerClass 1
#/tedit add BATTLE_START scoreboard players tag @pl add BattleStart
execute @a[tag=BattleStart] ~ ~ ~ function trainers:playerstart

#Battle Win (player)
#/tedit add LOSS scoreboard players tag @pl add BattleWin
execute @a[tag=BattleWin] ~ ~ ~ function trainers:playerwin

#Battle Lose (player)
#/tedit add WIN scoreboard players tag @pl add BattleLose
execute @a[tag=BattleLose] ~ ~ ~ function trainers:playerlose

#Battle Forefit (player)
#/tedit add FORFEIT scoreboard players tag @pl add BattleForefit
execute @a[tag=BattleForefit] ~ ~ ~ function trainers:playerforefit





#---------------------------------------------------------
#Important item functions

#Flash
tellraw @a[score_Flash_min=1] {"text":"You used Flash!","italic":true,"color":"gray"}
give @a[score_Flash_min=1] minecraft:fireworks 1 0 {display:{Name:"TM70: Flash",Lore:["Illuminates an area to","the user for 10 minutes."]}}
effect @a[score_Flash_min=1] minecraft:night_vision 600 1 true
scoreboard players remove @a[score_Flash_min=1] Flash 1


#Town Map
scoreboard players set @a MapSelect 1 {Inventory:[{tag:{display:{Name:"Town Map"}},Slot:0b}],SelectedItemSlot:0}
scoreboard players set @a MapSelect 2 {Inventory:[{tag:{display:{Name:"Town Map"}},Slot:1b}],SelectedItemSlot:1}
scoreboard players set @a MapSelect 3 {Inventory:[{tag:{display:{Name:"Town Map"}},Slot:2b}],SelectedItemSlot:2}
scoreboard players set @a MapSelect 4 {Inventory:[{tag:{display:{Name:"Town Map"}},Slot:3b}],SelectedItemSlot:3}
scoreboard players set @a MapSelect 5 {Inventory:[{tag:{display:{Name:"Town Map"}},Slot:4b}],SelectedItemSlot:4}
scoreboard players set @a MapSelect 6 {Inventory:[{tag:{display:{Name:"Town Map"}},Slot:5b}],SelectedItemSlot:5}
scoreboard players set @a MapSelect 7 {Inventory:[{tag:{display:{Name:"Town Map"}},Slot:6b}],SelectedItemSlot:6}
scoreboard players set @a MapSelect 8 {Inventory:[{tag:{display:{Name:"Town Map"}},Slot:7b}],SelectedItemSlot:7}
scoreboard players set @a MapSelect 9 {Inventory:[{tag:{display:{Name:"Town Map"}},Slot:8b}],SelectedItemSlot:8}
scoreboard players set @a MapSelect 10 {Inventory:[{tag:{display:{Name:"Town Map"}},Slot:-106b}]}
function custom:townmap if @a[score_MapSelect_min=1]

#Escape Rope
function custom:escaperope if @a[score_EscapeRopeUse_min=1]


#Clothing Room Prompts
execute @e[type=armor_stand,name=ClothingRoom] ~ ~ ~ tellraw @a[r=6,tag=!ClothingTalked] ["",{"text":"It's a fitting room! What do you want to change?\n    ["},{"text":"Hats","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 40"}},{"text":"]    ["},{"text":"Shirts","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 43"}},{"text":"]    ["},{"text":"Pants","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 46"}},{"text":"]    ["},{"text":"Shoes","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 49"}},{"text":"]"}]
execute @e[type=armor_stand,name=ClothingRoom] ~ ~ ~ scoreboard players enable @a[r=6,tag=!ClothingTalked] TalkTrigger
execute @e[type=armor_stand,name=ClothingRoom] ~ ~ ~ scoreboard players tag @a[r=6,tag=!ClothingTalked] add ClothingTalked
execute @e[type=armor_stand,name=ClothingRoom] ~ ~ ~ scoreboard players tag @a[rm=7,r=20,tag=ClothingTalked] remove ClothingTalked


#---------------------------------------------------------
#Interactable World Objects and Locations

#Trash Cans
execute @a[score_TrashTrigger_min=1] ~ ~ ~ function custom:trashtrigger

#Rock Smash
execute @a[score_RockTrigger_min=1] ~ ~ ~ function custom:rocksmashtrigger

#Ambush Encounters
execute @e[type=armor_stand,tag=AmbushEncounter] ~ ~ ~ execute @s[tag=!Bush] ~ ~ ~ execute @a[r=2] ~ ~ ~ function custom:ambushencounter
execute @e[type=armor_stand,tag=AmbushEncounter] ~ ~ ~ execute @s[tag=Bush] ~ ~ ~ execute @a[r=7] ~ ~ ~ function custom:ambushencounter

#Honey
execute @a[score_HoneyUse_min=1] ~ ~ ~ function custom:honey


#Runs Berry-Tree gives
execute @e[type=armor_stand,tag=Berry_Tree] ~ ~ ~ /function custom:berrygive if @a[r=5]

#Player jumping in Strength Pits
execute @e[type=armor_stand,name=StrengthPit] ~ ~ ~ /execute @a[dx=6,dy=3,dz=6] ~ ~ ~ /function custom:strengthpit

#Runs Strength function
function custom:strength if @a[score_StrengthTrigger_min=1]

#Adds Shiny Particles tag
execute @a ~ ~ ~ /scoreboard players tag @e[r=50,type=pixelmon:pixelmon] add Shiny {IsShiny:1b,OwnerUUID:""}

#Particles:
#/execute @e[x=-685,y=100,z=1388,dy=3,tag=Particles,type=armor_stand] ~ ~ ~ execute @e[tag=Shiny,type=pixelmon:pixelmon] ~ ~ ~ /particle reddust ~ ~ ~ 0 10 0 1 10 force @a[r=50]

#Battle Maison Wins and Loss Functions
execute @a[x=1225,y=76,z=1545,r=40,tag=MaisonLoss] ~ ~ ~ function custom:battlemaisonlose
execute @a[x=1225,y=76,z=1545,r=40,tag=MaisonWin] ~ ~ ~ function custom:battlemaisonwin

#Battle Maison Aligns Pokemon
function data:maisonalign if @a[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,tag=BattleMaisonMusic]
function data:maisonalign if @a[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,tag=EliteFourBattleMusic]

#---------------------------------------------------------
#Adds night vision in specific areas

#Radiant Chamber
effect @a[x=-1960,y=15,z=1871,dx=110,dy=40,dz=110] minecraft:night_vision 15 1 true

#Flare HQ
effect @a[x=-2526,y=0,z=-1074,dx=232,dy=95,dz=167] minecraft:night_vision 15 1 true

#Gyms
effect @a[x=-2027,y=0,z=-2285,dx=1319,dy=256,dz=498] minecraft:night_vision 15 1 true

#Starters rooms
effect @a[x=-1107,y=99,z=1171,dx=123,dy=30,dz=227] minecraft:night_vision 15 1 true

#Pokeball Factory Interior
#effect @a[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188] minecraft:night_vision 15 1 true
#execute @a[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188] ~ ~ ~ setblock -593 100 1158 redstone_block


#---------------------------------------------------------

#Runs Fly tp
function custom:fly if @a[score_Fly_min=1]


#Fly Teleport
function custom:flytp if @a[x=1489,y=204,z=-1346,r=30]


#Adds Fly tags
scoreboard players tag @a[x=-342,y=0,z=-1577,dx=432,dy=256,dz=274,score_TalkTime=0,tag=!FlyLaverre] add FlyLaverre
scoreboard players tag @a[x=582,y=0,z=-573,dx=152,dy=256,dz=313,score_TalkTime=0,tag=!FlyDendemille] add FlyDendemille
scoreboard players tag @a[x=1097,y=0,z=-376,dx=334,dy=256,dz=235,score_TalkTime=0,tag=!FlyAnistar] add FlyAnistar
scoreboard players tag @a[x=1326,y=0,z=132,dx=360,dy=256,dz=198,score_TalkTime=0,tag=!FlyCouriway] add FlyCouriway
scoreboard players tag @a[x=984,y=0,z=324,dx=341,dy=256,dz=323,score_TalkTime=0,tag=!FlySnowbelle] add FlySnowbelle
scoreboard players tag @a[x=1027,y=0,z=1434,dx=331,dy=256,dz=266,score_TalkTime=0,tag=!FlyKiloude] add FlyKiloude
scoreboard players tag @a[x=-2255,y=0,z=1732,dx=629,dy=256,dz=655,score_TalkTime=0,tag=!FlyPokemonLeague] add FlyPokemonLeague
scoreboard players tag @a[x=-1204,y=0,z=-888,dx=230,dy=256,dz=380,score_TalkTime=0,tag=!FlyCoumarine] add FlyCoumarine
scoreboard players tag @a[x=-1816,y=0,z=-987,dx=332,dy=256,dz=254,score_TalkTime=0,tag=!FlyShalour] add FlyShalour
scoreboard players tag @a[x=-2386,y=0,z=-984,dx=273,dy=256,dz=386,score_TalkTime=0,tag=!FlyGeosenge] add FlyGeosenge
scoreboard players tag @a[x=395,y=0,z=1236,dx=147,dy=256,dz=205,score_TalkTime=0,tag=!FlyAquacorde] add FlyAquacorde
scoreboard players tag @a[x=93,y=0,z=384,dx=250,dy=256,dz=139,score_TalkTime=0,tag=!FlySantalune] add FlySantalune
scoreboard players tag @a[x=-181,y=101,z=-390,r=395,score_TalkTime=0,tag=!FlyLumiose] add FlyLumiose
scoreboard players tag @a[x=-1146,y=0,z=-213,dx=182,dy=256,dz=337,score_TalkTime=0,tag=!FlyCamphrier] add FlyCamphrier
scoreboard players tag @a[x=-2223,y=0,z=-217,dx=354,dy=256,dz=275,score_TalkTime=0,tag=!FlyCyllage] add FlyCyllage
scoreboard players tag @a[x=-2115,y=0,z=504,dx=240,dy=256,dz=258,score_TalkTime=0,tag=!FlyAmbrette] add FlyAmbrette


#---------------------------------------------------------
#Legendaries

#Runs clicked legendary spawn function
function custom:legendspawn if @a[tag=LegendActivate]

#Resets Mewtwo
execute @e[x=-501,y=101,z=1238,r=2,type=pixelmon:statue] ~ ~ ~ /execute @a[x=809,y=74,z=525,dx=66,dy=14,dz=92,score_Mewtwo=0] ~ ~ ~ /tp @e[x=-501,y=101,z=1238,r=2,type=pixelmon:statue] 845 75 559

#Zygarde
execute @e[x=-501,y=110,z=1238,r=2,type=pixelmon:statue] ~ ~ ~ /execute @a[x=2015,y=61,z=-176,r=50,score_Zygarde=0] ~ ~ ~ /tp @e[x=-501,y=110,z=1238,r=2,type=pixelmon:statue] 2015 61 -174

#Diancie
execute @e[x=-501,y=128,z=1238,r=2,type=pixelmon:statue] ~ ~ ~ /execute @a[x=-1707,y=2,z=-437,r=50,score_Diancie=0] ~ ~ ~ /tp @e[x=-501,y=128,z=1238,r=2,type=pixelmon:statue] -1707 2 -437

#----------

#Bird Spawns

#Articuno Activate
execute @a[score_PokemonLeague_min=1,tag=!Dialogue167,score_StarterPick_min=1,score_StarterPick=1] ~ ~ ~ detect ~ ~ ~ tallgrass 1 scoreboard players set @s Grass 1
scoreboard players set @a[score_Grass_min=1,score_PokemonLeague_min=1,score_TalkTime=0,tag=!Dialogue167,score_Articuno_min=0,score_Articuno=4,score_StarterPick_min=1,score_StarterPick=1] DialogueTrigger 167

#Zapdos Activate
execute @a[score_PokemonLeague_min=1,tag=!Dialogue167,score_StarterPick_min=2,score_StarterPick=2] ~ ~ ~ detect ~ ~ ~ tallgrass 1 scoreboard players set @s Grass 1
scoreboard players set @a[score_Grass_min=1,score_PokemonLeague_min=1,score_TalkTime=0,tag=!Dialogue167,score_Zapdos_min=0,score_Zapdos=4,score_StarterPick_min=2,score_StarterPick=2] DialogueTrigger 167

#Moltres Activate
execute @a[score_PokemonLeague_min=1,tag=!Dialogue167,score_StarterPick_min=3,score_StarterPick=3] ~ ~ ~ detect ~ ~ ~ tallgrass 1 scoreboard players set @s Grass 1
scoreboard players set @a[score_Grass_min=1,score_PokemonLeague_min=1,score_TalkTime=0,tag=!Dialogue167,score_Moltres_min=0,score_Moltres=4,score_StarterPick_min=3,score_StarterPick=3] DialogueTrigger 167
scoreboard players set @a[score_PokemonLeague_min=1,tag=!Dialogue167,score_Grass_min=1] Grass 0

#---------------------------------------------------------
#Story Dialogues

#Primary Dialogue function
function custom:dialogue if @a[score_DialogueTrigger_min=1]

#Holo Caster Calls
function custom:holocall if @a[score_HoloCall_min=1]

#----------
#Holo Caster Calls

#Holo Call 1
#Camphrier Town Lysandre Labs announcement
scoreboard players set @a[x=-965,y=100,z=-32,r=15,tag=!Call1,score_HoloCall=0,score_TalkTime=0] HoloCall 1

#Holo Call 2
#Lumiose City to Route 5 gate Tierno
execute @a[x=-372,y=101,z=-124,r=20,tag=Dialogue22] ~ ~ ~ /scoreboard players set @s[tag=!Call2,score_HoloCall=0] HoloCall 2

#Call 3
#Route 11 Sycamore
scoreboard players set @a[x=-1972,y=113,z=-666,r=15,tag=!Call3,score_HoloCall=0] HoloCall 3

#Holo Call 4
#Courmarine Entrance Serena
scoreboard players set @a[x=-1189,y=79,z=-812,dx=13,dy=10,dz=18,tag=!Call4,score_HoloCall=0] HoloCall 4


#Holo Call 5
#Courmarine Lysandre
execute @a[x=-1077,y=115,z=-615,r=20,tag=Ramos,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ /scoreboard players set @s[tag=!Call5] HoloCall 5

#Call 7
#Lumiose City Trevor after Lysandre's Cafe
execute @a[x=-296,y=101,z=-478,r=20,tag=Dialogue79,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ /scoreboard players set @s[tag=!Call7] HoloCall 7

#Call 8
#Poke Ball Factory after chasing out Flare
execute @a[x=-154,y=125,z=-1763,r=20,tag=Dialogue90,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ /scoreboard players set @s[tag=!Call8] HoloCall 8

#Call 9
#Route 15 Lysandre
scoreboard players set @a[x=522,y=108,z=-475,r=20,tag=!Call9,score_HoloCall=0] HoloCall 9

#Call 10
#Route 17 Serena
scoreboard players set @a[x=1056,y=108,z=-191,r=20,tag=!Call10,score_HoloCall=0] HoloCall 10

#Route 12
#Anistar City Sycamore
execute @a[x=1349,y=108,z=-173,r=20,tag=!Call12,score_HoloCall=0] ~ ~ ~ scoreboard players set @s[tag=Dialogue133] HoloCall 12

#Call 13
#Looker post-Mega Upgrade in Lumiose City
execute @a[x=-188,y=101,z=-639,r=100,tag=!Call13,score_HoloCall=0,score_TalkTime=0,score_PokemonLeague_min=1] ~ ~ ~ scoreboard players set @s[tag=Dialogue163] HoloCall 13

#Call 14
#Lumiose City Looker Chapter 2 Start
execute @a[x=-181,y=101,z=-390,r=395,tag=!Call14,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ execute @s[tag=!LookerCooldown] ~ ~ ~ scoreboard players set @s[tag=Dialogue175] HoloCall 14

#Call 15
#Lumiose City Looker Chapter 3 Start
execute @a[x=-181,y=101,z=-390,r=395,tag=!Call15,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ execute @s[tag=!LookerCooldown] ~ ~ ~ scoreboard players set @s[tag=Dialogue178] HoloCall 15

#Call 16 Looker Chapter 4 Start
execute @a[x=-181,y=101,z=-390,r=395,tag=!Call16,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ execute @s[tag=!LookerCooldown] ~ ~ ~ scoreboard players set @s[tag=Dialogue184] HoloCall 16

#Call 17 & 18
#Malva Newscast and Looker
execute @a[x=-105,y=101,z=-699,r=20,tag=!Call17,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ scoreboard players set @s[tag=Dialogue187] HoloCall 17
execute @a[x=-181,y=101,z=-390,r=395,tag=!Call18,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ scoreboard players set @s[tag=Call17] HoloCall 18


#Route 19
#Lumiose City Emma after she's read Mimi's note
execute @a[x=-181,y=101,z=-390,r=395,tag=!Call19,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ execute @s[tag=!LookerCooldown] ~ ~ ~ scoreboard players set @s[tag=Dialogue225] HoloCall 19

#Call20
#Lumiose City Post-Xerosic Caught
execute @a[x=-181,y=101,z=-390,r=395,tag=!Call20,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ execute @s[tag=!LookerCooldown] ~ ~ ~ scoreboard players set @s[tag=Dialogue213] HoloCall 20


#Call 21
#Emma calling at Lumiose Museum Exterior
execute @a[x=-105,y=101,z=-699,r=20,tag=!Call21,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ scoreboard players set @s[tag=Dialogue216] HoloCall 21










#----------
#Story Dialogues

#Dialogue 1
#Vaniville house, mom's first dialogue
scoreboard players set @a[x=493,y=107,z=1549,dx=18,dy=5,dz=19,score_TalkTime=0,tag=!Dialogue1] DialogueTrigger 1

#Vaniville Town Doors marker
execute @a[x=470,y=106,z=1588,r=100,tag=!DoorShow] ~ ~ ~ /particle endRod 470.0 110 1588 0 10 0 0.001 10 force @s
scoreboard players tag @a[x=455,y=107,z=1515,dx=29,dy=20,dz=80,tag=!DoorShow] add DoorShow

#Dialogue 3
#Aquacorde friends first group talk
scoreboard players set @a[x=440,y=108,z=1372,r=10,score_TalkTime=0,score_StarterPick=0,tag=!Dialogue3] DialogueTrigger 3

#Dialogue4
#Aquacorde Friends after Starters
scoreboard players set @a[x=440,y=108,z=1372,r=10,score_TalkTime=0,score_StarterPick_min=1,tag=!Dialogue4] DialogueTrigger 4

#Dialogue5
#Aquacorde Shauna wants to Battle
scoreboard players set @a[x=456,y=107,z=1408,dx=28,dy=5,dz=10,score_TalkTime=0,tag=!Dialogue5,tag=Dialogue4] DialogueTrigger 5
execute @a[x=471,y=108,z=1401,r=10,score_StarterPick_min=1,score_StarterPick=1,score_TalkTime=0,tag=Dialogue5] ~ ~ ~ execute @s[tag=!Dialogue6] ~ ~ ~ /tp @e[x=-504,y=110,z=1252,dy=3,type=pixelmon:npc_trainer] 471 108 1401
execute @a[x=471,y=108,z=1401,r=10,score_StarterPick_min=2,score_StarterPick=2,score_TalkTime=0,tag=Dialogue5] ~ ~ ~ execute @s[tag=!Dialogue6] ~ ~ ~ /tp @e[x=-504,y=110,z=1254,dy=3,type=pixelmon:npc_trainer] 471 108 1401
execute @a[x=471,y=108,z=1401,r=10,score_StarterPick_min=3,score_StarterPick=3,score_TalkTime=0,tag=Dialogue5] ~ ~ ~ execute @s[tag=!Dialogue6] ~ ~ ~ /tp @e[x=-504,y=110,z=1256,dy=3,type=pixelmon:npc_trainer] 471 108 1401

#Dialogue 8
#Route 3 Friends and adventure rules
scoreboard players set @a[x=392,y=99,z=661,r=20,score_TalkTime=0,tag=!Dialogue8] DialogueTrigger 8

#Dialogue10
#Santalune City Viola's Sister Alexa block and talk
scoreboard players set @a[x=165,y=99,z=375,dx=28,dy=10,dz=14,score_TalkTime=0,tag=!Dialogue10,tag=!Viola] DialogueTrigger 10
tp @a[x=165,y=99,z=375,dx=28,dy=10,dz=14,tag=!Viola] ~ ~ ~10

#Dialogue11
#Santalune Alexa giving exp share
scoreboard players set @a[x=165,y=99,z=375,dx=28,dy=10,dz=14,score_TalkTime=0,tag=!Dialogue11,tag=Viola] DialogueTrigger 11

#Dialogue12
#Victory Road & Route 21 Ace Trainer Block
scoreboard players set @a[x=718,y=103,z=399,dx=9,dy=10,dz=16,score_TalkTime=0,tag=!Dialogue12,tag=!FlySnowbelle] DialogueTrigger 12
tp @a[x=718,y=103,z=399,dx=9,dy=10,dz=16,tag=!FlySnowbelle] ~-10 105 ~

#Dialogue13
#Gym Guide after first badge
scoreboard players set @a[x=-1929,y=137,z=-1908,dx=20,dy=10,dz=20,score_TalkTime=0,tag=!Dialogue13,tag=Viola] DialogueTrigger 13

#Dialogue 14
#Route 4 Dexio and Sina first Introduction
scoreboard players set @a[x=179,y=100,z=-58,r=10,score_TalkTime=0,tag=!Dialogue14] DialogueTrigger 14

#Dialogue 15
#Route 4 - Lumiose Gate Dexio and Sina
scoreboard players set @a[x=179,y=100,z=-115,r=10,score_TalkTime=0,tag=Dialogue14] DialogueTrigger 15

#Dialogue 16
#Lumiose City Dexio and Sina city Introduction
scoreboard players set @a[x=-15,y=101,z=-135,dx=44,dy=10,dz=23,score_TalkTime=0,tag=!Dialogue16] DialogueTrigger 16

#Dialogue 18
#Sycamore Lab opening dialogue before battle
scoreboard players set @a[x=-270,y=120,z=82,dx=10,dy=10,dz=16,score_TalkTime=0,tag=!Dialogue18] DialogueTrigger 18

#Dialogue 19
#Sycamore Lab Switching NPCs
execute @a[x=-265,y=120,z=91,r=10,score_TalkTime=0,tag=!Dialogue19] ~ ~ ~ execute @s[tag=Dialogue18] ~ ~ ~ tp @e[x=-265,y=120,z=91,dy=3,type=pixelmon:npc_chatting] -504 136 1252
execute @a[x=-265,y=120,z=91,r=10,score_TalkTime=0,tag=!Dialogue19] ~ ~ ~ execute @s[tag=Dialogue18] ~ ~ ~ tp @e[x=-504,y=135,z=1254,dy=3,type=pixelmon:npc_trainer] -265 121 91

#Dialogue 21
#Sycamore Lab Lysandre first meeting
scoreboard players set @a[x=-271,y=99,z=64,dx=36,dy=7,dz=37,score_TalkTime=0,tag=!Dialogue21,tag=KantoStarters] DialogueTrigger 21

#Dialogue 23
#Route 5 Korrina and Lucario first meet
scoreboard players set @a[x=-624,y=90,z=-172,dx=8,dy=10,dz=25,score_TalkTime=0,tag=!Dialogue23] DialogueTrigger 23

#Dialogue 24
#Route 5 Trevor and Tierno pre-battle
scoreboard players set @a[x=-757,y=99,z=-134,r=10,tag=!Dialogue24,score_TalkTime=0] DialogueTrigger 24
execute @e[x=-504,y=155,z=1254,dy=3,type=pixelmon:npc_trainer] ~ ~ ~ /execute @a[x=-766,y=100,z=-134,r=6,tag=Dialogue24,tag=!Dialogue25] ~ ~ ~ /tp @e[x=-504,y=155,z=1254,dy=3,type=pixelmon:npc_trainer] -766 100 -134

#Dialogue 26
#Camphrier Town West Block until seeing castle
scoreboard players set @a[x=-1159,y=99,z=-44,dx=12,dy=10,dz=19,tag=!Dialogue26,score_TalkTime=0,tag=!Dialogue27] DialogueTrigger 26
tp @a[x=-1159,y=99,z=-44,dx=12,dy=10,dz=19,tag=!Dialogue27] ~10 ~ ~

#Dialogue 28
#Route 7 Sleeping Snorlax Intro
scoreboard players set @a[x=-1293,y=100,z=-36,r=20,tag=!Dialogue28,score_TalkTime=0] DialogueTrigger 28

#Dialogue 30
#Parfum Palace Shauna: Furfrou is this way
scoreboard players set @a[x=-1623,y=100,z=-319,r=15,tag=!Dialogue30,score_TalkTime=0] DialogueTrigger 30

#Dialogue 31
#Parfum Palace Finding Furfrou
scoreboard players set @a[x=-1691,y=100,z=-317,dx=14,dy=5,dz=7,tag=!Dialogue31,score_TalkTime=0] DialogueTrigger 31
execute @a[x=-1679,y=100,z=-314,r=30,score_TalkTime=0,tag=!Dialogue31] ~ ~ ~ /tp @e[x=-501,y=181,z=1238,dy=3,type=pixelmon:statue] -1679 100 -314

#Dialogue 32
#Parfum Palace Firework Show and Flute
execute @a[x=-1434,y=111,z=-374,r=30,tag=!Dialogue32] ~ ~ ~ tp @e[x=-504,y=175,z=1252,dy=3,type=pixelmon:npc_chatting] -1434 111 -374
execute @a[x=-1436,y=110,z=-401,dx=15,dy=10,dz=54,score_TalkTime=0,tag=Dialogue31] ~ ~ ~ scoreboard players set @s[tag=!Dialogue32] DialogueTrigger 32

#Dialogue 33
#Route 7 waking Snorlax
execute @a[x=-1293,y=100,z=-36,r=20,tag=!Dialogue33] ~ ~ ~ scoreboard players set @s[tag=Dialogue32,score_TalkTime=0] DialogueTrigger 33

#Dialogue 34
#Route 7 after Waking Snorlax
execute @a[x=-1293,y=100,z=-36,r=20,tag=Dialogue33] ~ ~ ~ scoreboard players set @s[tag=!Dialogue34,score_MusicSteps_min=1,score_TalkTime=0] DialogueTrigger 34

#Dialogue 35
#Route 7 Friends Double Battle
scoreboard players set @a[x=-1591,y=100,z=-36,r=20,tag=!Dialogue35,score_TalkTime=0] DialogueTrigger 35
execute @a[x=-1591,y=100,z=-36,r=20,tag=Dialogue35] ~ ~ ~ execute @s[x=-1591,y=100,z=-36,r=20,tag=!Dialogue36] ~ ~ ~ tp @e[x=-504,y=180,z=1258,dy=3,type=pixelmon:npc_trainer] -1590 100 -34
execute @a[x=-1591,y=100,z=-36,r=20,tag=Dialogue35] ~ ~ ~ execute @s[x=-1591,y=100,z=-36,r=20,tag=!Dialogue36] ~ ~ ~ tp @e[x=-504,y=180,z=1260,dy=3,type=pixelmon:npc_trainer] -1593 100 -34

execute @a[x=-1591,y=100,z=-36,r=20,tag=Dialogue35] ~ ~ ~ execute @s[x=-1591,y=100,z=-36,r=20,tag=!Dialogue36,score_StarterPick_min=1,score_StarterPick=1] ~ ~ ~ tp @e[x=-504,y=180,z=1252,dy=3,type=pixelmon:npc_trainer] -1593 100 -39
execute @a[x=-1591,y=100,z=-36,r=20,tag=Dialogue35] ~ ~ ~ execute @s[x=-1591,y=100,z=-36,r=20,tag=!Dialogue36,score_StarterPick_min=2,score_StarterPick=2] ~ ~ ~ tp @e[x=-504,y=180,z=1254,dy=3,type=pixelmon:npc_trainer] -1593 100 -39
execute @a[x=-1591,y=100,z=-36,r=20,tag=Dialogue35] ~ ~ ~ execute @s[x=-1591,y=100,z=-36,r=20,tag=!Dialogue36,score_StarterPick_min=3,score_StarterPick=3] ~ ~ ~ tp @e[x=-504,y=180,z=1256,dy=3,type=pixelmon:npc_trainer] -1593 100 -39

#Dialogue 36
#Route 7 friends 2v2 post-battle
scoreboard players set @a[x=-1591,y=100,z=-36,r=20,tag=Dialogue36,tag=!Dialogue36,score_MusicSteps_min=1,score_TalkTime=0] DialogueTrigger 36

#Dialogue 37
#Route 8 Dexio & Sina
scoreboard players set @a[x=-1942,y=150,z=84,dx=13,dy=10,dz=21,tag=!Dialogue37,score_TalkTime=0] DialogueTrigger 37

#Dialogue 38
#Route 8 Serena
scoreboard players set @a[x=-1937,y=150,z=552,dx=17,dy=10,dz=19,tag=!Dialogue38,score_TalkTime=0] DialogueTrigger 38

#Dialogue 39
#Ambrette Town Fossil Lab
scoreboard players set @a[x=-1949,y=140,z=579,dx=23,dy=10,dz=26,tag=!Dialogue39,score_TalkTime=0] DialogueTrigger 39

#Dialogue 40
#Glittering Cave First Flare encounter
scoreboard players set @a[x=-1437,y=148,z=322,r=15,tag=!Dialogue40,score_TalkTime=0] DialogueTrigger 40
execute @e[x=-504,y=195,z=1252,dy=3,type=pixelmon:npc_trainer] ~ ~ ~ /execute @e[x=-1437,y=148,z=322,r=20,tag=Dialogue40] ~ ~ ~ execute @s[tag=!Dialogue41] ~ ~ ~ /tp @e[x=-504,y=195,z=1252,dy=3,type=pixelmon:npc_trainer] -1437 148 322

#Dialogue 42
#Glittering Cave Serena and Flare double battle
scoreboard players set @a[x=-1434,y=148,z=273,r=10,tag=!Dialogue42,score_TalkTime=0] DialogueTrigger 42
execute @e[x=-504,y=195,z=1262,dy=3,type=pixelmon:npc_trainer] ~ ~ ~ /execute @e[x=-1434,y=148,z=273,r=10,tag=!Dialogue42] ~ ~ ~ /tp @e[x=-504,y=195,z=1262,dy=3,type=pixelmon:npc_trainer] -1437 148 275
execute @e[x=-504,y=195,z=1262,dy=3,type=pixelmon:npc_trainer] ~ ~ ~ /execute @e[x=-1434,y=148,z=273,r=10,tag=!Dialogue42] ~ ~ ~ /tp @e[x=-504,y=195,z=1264,dy=3,type=pixelmon:npc_trainer] -1437 148 271
execute @e[x=-504,y=195,z=1262,dy=3,type=pixelmon:npc_trainer] ~ ~ ~ /execute @e[x=-1434,y=148,z=273,r=10,tag=!Dialogue42,score_StarterPick_min=1,score_StarterPick=1] ~ ~ ~ /tp @e[x=-504,y=195,z=1256,dy=3,type=pixelmon:npc_trainer] -1431 148 271
execute @e[x=-504,y=195,z=1262,dy=3,type=pixelmon:npc_trainer] ~ ~ ~ /execute @e[x=-1434,y=148,z=273,r=10,tag=!Dialogue42,score_StarterPick_min=2,score_StarterPick=2] ~ ~ ~ /tp @e[x=-504,y=195,z=1258,dy=3,type=pixelmon:npc_trainer] -1431 148 271
execute @e[x=-504,y=195,z=1262,dy=3,type=pixelmon:npc_trainer] ~ ~ ~ /execute @e[x=-1434,y=148,z=273,r=10,tag=!Dialogue42,score_StarterPick_min=3,score_StarterPick=3] ~ ~ ~ /tp @e[x=-504,y=195,z=1260,dy=3,type=pixelmon:npc_trainer] -1431 148 271

#Dialogue 43
#Glittering Cave Double Battle tp away
scoreboard players set @a[x=-1434,y=148,z=273,r=10,tag=!Dialogue43,score_MusicSteps_min=1,score_TalkTime=0] DialogueTrigger 43

#Dialogue 44 & 45
#Glittering Cave Fossil Prompt
execute @a[x=-1471,y=147,z=303,r=20,tag=!Dialogue44] ~ ~ ~ tp @e[x=-504,y=200,z=1254,dy=3,type=pixelmon:npc_chatting] -1469 148 305
scoreboard players set @a[x=-1471,y=147,z=303,dx=6,dy=5,dz=11,tag=Dialogue44,tag=!Dialogue44,score_TalkTime=0] DialogueTrigger 44

#Dialogue 46
#Grant outside of Cyllage Gym giving Strength HM
scoreboard players set @a[x=-1938,y=113,z=2,dx=18,dy=10,dz=17,score_TalkTime=0,tag=!Dialogue46] DialogueTrigger 46

#Dialogue 47
#Route 10 Team Flare
execute @a[x=-2208,y=104,z=-450,r=20,score_TalkTime=0,tag=Grant] ~ ~ ~ scoreboard players set @s[tag=!Dialogue47] DialogueTrigger 47

#Dialogues 48-50
#Route 10 tp in grunts
execute @e[x=-504,y=210,z=1252,dy=3,type=pixelmon:npc_trainer] ~ ~ ~ execute @e[x=-2208,y=104,z=-450,r=20,tag=!Dialogue48] ~ ~ ~ execute @s[tag=Dialogue47] ~ ~ ~ execute @s[tag=Grant] ~ ~ ~ tp @e[x=-504,y=210,z=1252,dy=3,type=pixelmon:npc_trainer] -2208 104 -450
execute @e[x=-504,y=210,z=1256,dy=3,type=pixelmon:npc_trainer] ~ ~ ~ execute @a[x=-2190,y=104,z=-522,r=20,tag=!Dialogue49] ~ ~ ~ execute @s[tag=Grant] ~ ~ ~ tp @e[x=-504,y=210,z=1256,dy=3,type=pixelmon:npc_trainer] -2190 104 -522
execute @e[x=-504,y=210,z=1258,dy=3,type=pixelmon:npc_trainer] ~ ~ ~ execute @a[x=-2227,y=104,z=-558,r=20,tag=!Dialogue50] ~ ~ ~ execute @s[tag=Grant] ~ ~ ~ tp @e[x=-504,y=210,z=1258,dy=3,type=pixelmon:npc_trainer] -2227 104 -558

#Dialogue 51
#Geosenge first Flare encounter 1
execute @a[x=-2210,y=104,z=-693,r=30,score_TalkTime=0,tag=Grant] ~ ~ ~ scoreboard players set @s[tag=!Dialogue51] DialogueTrigger 51

#Dialogue 52
#Geosenge Flare encounter 2
execute @a[x=-2278,y=104,z=-815,r=25,score_TalkTime=0,tag=Dialogue51] ~ ~ ~ scoreboard players set @s[tag=!Dialogue52] DialogueTrigger 52

#Dialogue 53
#Geosenge Town Korrina battle
scoreboard players set @a[x=-2109,y=103,z=-703,dx=10,dy=10,dz=26,score_TalkTime=0,tag=!Dialogue53] DialogueTrigger 53
execute @e[x=-504,y=220,z=1252,dy=3,type=pixelmon:npc_trainer] ~ ~ ~ execute @a[x=-2105,y=104,z=-691,r=20,tag=!Dialogue54] ~ ~ ~ execute @s[tag=Dialogue53] ~ ~ ~ tp @e[x=-504,y=220,z=1252,dy=3,type=pixelmon:npc_trainer] -2105 104 -691
execute @a[x=-2105,y=104,z=-691,r=20,tag=Dialogue53,tag=TrainerBattleMusic] ~ ~ ~ /execute @s[tag=!Dialogue54] ~ ~ ~ /effect @e[r=20,name=Lucario,type=pixelmon:statue] minecraft:invisibility 2 1 true

#Dialogue 55
#Reflection Cave Tierno giving Flash
scoreboard players set @a[x=-1580,y=35,z=-220,dx=12,dy=10,dz=17,score_TalkTime=0,tag=!Dialogue55] DialogueTrigger 55
execute @a[x=-1580,y=35,z=-220,r=40,tag=!Dialogue55] ~ ~ ~ /tp @e[x=-504,y=225,z=1252,dy=3,type=pixelmon:npc_chatting] -1575 35 -205

#Dialogue 56
#Shalour City Trevor and Tierno
scoreboard players set @a[x=-1671,y=79,z=-837,dx=23,dy=10,dz=10,score_TalkTime=0,tag=!Dialogue56] DialogueTrigger 56

#Dialogue 57
#Shalour City Gym Guide
execute @a[x=-1770,y=84,z=-898,r=30,tag=Dialogue61] ~ ~ ~ tp @e[x=-1770,y=84,z=-898,dy=3,type=pixelmon:npc_chatting] -504 231 1258
execute @a[x=-1770,y=84,z=-898,r=30,tag=!Dialogue61] ~ ~ ~ tp @e[x=-504,y=230,z=1258,dy=3,type=pixelmon:npc_chatting] -1770 85 -898

#Dialogue 58
#Shalour City Tierno giving Intriguing Stone
scoreboard players set @a[x=-1694,y=76,z=-925,dx=75,dy=10,dz=20,score_TalkTime=0,tag=!Dialogue58] DialogueTrigger 58

#Dialogue 61
#Tower of Mastery Serena
execute @a[x=-1661,y=91,z=-1150,r=30,tag=Dialogue60,score_StarterPick_min=1,score_StarterPick=1] ~ ~ ~ execute @s[tag=!Dialogue61,score_DialogueTrigger=0] ~ ~ ~ tp @e[x=-504,y=245,z=1252,dy=3,type=pixelmon:npc_trainer] -1662 92 -1146
execute @a[x=-1661,y=91,z=-1150,r=30,tag=Dialogue60,score_StarterPick_min=2,score_StarterPick=2] ~ ~ ~ execute @s[tag=!Dialogue61,score_DialogueTrigger=0] ~ ~ ~ tp @e[x=-504,y=245,z=1254,dy=3,type=pixelmon:npc_trainer] -1662 92 -1146
execute @a[x=-1661,y=91,z=-1150,r=30,tag=Dialogue60,score_StarterPick_min=3,score_StarterPick=3] ~ ~ ~ execute @s[tag=!Dialogue61,score_DialogueTrigger=0] ~ ~ ~ tp @e[x=-504,y=245,z=1256,dy=3,type=pixelmon:npc_trainer] -1662 92 -1146

#Dialogue 64
#Tower of Mastery tp in Korrina
execute @a[x=-1635,y=187,z=-1186,r=30,tag=Dialogue63] ~ ~ ~ execute @s[tag=!Dialogue64,score_DialogueTrigger=0] ~ ~ ~ tp @e[x=-504,y=250,z=1252,dy=3,type=pixelmon:npc_trainer] -1635 187.5 -1180
execute @a[x=-1635,y=187,z=-1186,r=30,tag=Dialogue63] ~ ~ ~ execute @s[tag=!Dialogue64,score_DialogueTrigger=0] ~ ~ ~ /tp @e[x=-1635,y=187,z=-1180,dy=3,type=pixelmon:npc_chatting] -504 251 1254
execute @a[x=-1635,y=187,z=-1186,r=30,tag=KorrinaBattleMusic] ~ ~ ~ /effect @e[r=30,name=Lucario,type=pixelmon:statue] minecraft:invisibility 2 1 true

#Dialogue 65
#Shalour City Serena giving Surf
execute @a[x=-1528,y=79,z=-817,dx=15,dy=10,dz=14,score_TalkTime=0,tag=Dialogue64] ~ ~ ~ /scoreboard players set @s[tag=!Dialogue65] DialogueTrigger 65

#Dialogue 66
#Courmarine Sycamore and Diantha
scoreboard players set @a[x=-1059,y=79,z=-799,dx=14,dy=10,dz=14,score_TalkTime=0,tag=!Dialogue66] DialogueTrigger 66

#Dialogue 67
#Courmarine Serena outside of Gym
scoreboard players set @a[x=-1092,y=120,z=-713,dx=35,dy=10,dz=14,score_TalkTime=0,tag=!Dialogue67] DialogueTrigger 67
execute @a[x=-1092,y=120,z=-713,dx=35,dy=10,dz=14,tag=Dialogue67,score_StarterPick_min=1,score_StarterPick=1] ~ ~ ~ execute @s[tag=!Dialogue68,score_TalkTime=0] ~ ~ ~ tp @e[x=-504,y=110,z=1268,dy=3,type=pixelmon:npc_trainer] -1078 121 -709
execute @a[x=-1092,y=120,z=-713,dx=35,dy=10,dz=14,tag=Dialogue67,score_StarterPick_min=2,score_StarterPick=2] ~ ~ ~ execute @s[tag=!Dialogue68,score_TalkTime=0] ~ ~ ~ tp @e[x=-504,y=110,z=1270,dy=3,type=pixelmon:npc_trainer] -1078 121 -709
execute @a[x=-1092,y=120,z=-713,dx=35,dy=10,dz=14,tag=Dialogue67,score_StarterPick_min=3,score_StarterPick=3] ~ ~ ~ execute @s[tag=!Dialogue68,score_TalkTime=0] ~ ~ ~ tp @e[x=-504,y=110,z=1272,dy=3,type=pixelmon:npc_trainer] -1078 121 -709

#Dialogue 69
#Courmarine Dexio and Sina
scoreboard players set @a[x=-1085,y=114,z=-579,dx=20,dy=10,dz=20,tag=!Dialogue69,score_TalkTime=0,score_HoloCall=0] DialogueTrigger 69

#Dialogue 70
#Route 13 Flare Grunt
execute @a[x=-772,y=104,z=-330,r=30,tag=!Dialogue70] ~ ~ ~ execute @s[tag=Ramos] ~ ~ ~ tp @e[x=-504,y=120,z=1268,dy=3,type=pixelmon:npc_trainer] -772 104 -330

#Hidden Power Plant Pass give
#execute @a[x=-779,y=103,z=-347,r=30,tag=Dialogue70] ~ ~ ~ execute @s[tag=!PowerPlantPass] ~ ~ ~ /execute @e[x=-779,y=102,z=-347,dy=3,type=armor_stand] ~ ~ ~ /particle fireworksSpark ~ ~ ~ 1 2 1 0.1 2 normal @a[tag=!PowerPlantPass]
#execute @e[x=-779,y=103,z=-347,dy=3,type=armor_stand] ~ ~ ~ give @a[r=3,tag=!PowerPlantPass] minecraft:prismarine_shard 1 0 {display:{Lore:["This pass serves as an ID","card for gaining access to","the power plant that lies","along Route 13."]},HideFlags:6}
#execute @e[x=-779,y=103,z=-347,dy=3,type=armor_stand] ~ ~ ~ tellraw @a[r=3,tag=!PowerPlantPass] {"text":"You found a Power Plant Pass!","italic":true,"color":"gray"}
#execute @e[x=-779,y=102,z=-347,dy=3,type=armor_stand] ~ ~ ~ playsound pixelmon:pixelmon.block.pokelootobtained ambient @a[r=3,tag=!PowerPlantPass] ~ ~ ~ 10 1 1
#execute @e[x=-779,y=102,z=-347,dy=3,type=armor_stand] ~ ~ ~ scoreboard players tag @a[r=3,tag=!PowerPlantPass] add PowerPlantPass

#Dialogue 71
#Power Plant Flare Grunts first
scoreboard players set @a[x=-954,y=47,z=-361,dx=22,dy=10,dz=16,score_TalkTime=0,tag=!Dialogue71] DialogueTrigger 71
execute @a[x=-954,y=47,z=-361,dx=22,dy=10,dz=16,tag=Dialogue71] ~ ~ ~ /execute @s[tag=!Dialogue72] ~ ~ ~ tp @e[x=-504,y=125,z=1268,dy=3,type=pixelmon:npc_trainer] -949 48 -350

#Power Plant tps in grunts to generator room
execute @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=!Dialogue73] ~ ~ ~ tp @e[x=-504,y=130,z=1268,dy=3,type=pixelmon:npc_trainer] -982 54 -346
execute @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=!Dialogue73] ~ ~ ~ tp @e[x=-504,y=130,z=1270,dy=3,type=pixelmon:npc_trainer] -992 54 -310
execute @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=!Dialogue73] ~ ~ ~ tp @e[x=-504,y=130,z=1272,dy=3,type=pixelmon:npc_trainer] -1029 54 -293
execute @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=!Dialogue73] ~ ~ ~ tp @e[x=-504,y=130,z=1274,dy=3,type=pixelmon:npc_trainer] -1076 54 -336
execute @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=!Dialogue73] ~ ~ ~ tp @e[x=-504,y=130,z=1276,dy=3,type=pixelmon:npc_trainer] -1069 54 -363
execute @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=!Dialogue73] ~ ~ ~ tp @e[x=-504,y=130,z=1278,dy=3,type=pixelmon:npc_trainer] -1029 54 -380
execute @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=!Dialogue73] ~ ~ ~ tp @e[x=-504,y=135,z=1268,dy=3,type=pixelmon:npc_chatting] -1013 58 -335
execute @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=!Dialogue73] ~ ~ ~ tp @e[x=-504,y=135,z=1272,dy=3,type=pixelmon:npc_chatting] -1013 58 -339

#Dialogue 73
#Power Plant Admin and Aliana
scoreboard players set @a[x=-1007,y=57,z=-340,dx=14,dy=5,dz=6,score_TalkTime=0,tag=!Dialogue73] DialogueTrigger 73
execute @a[x=-1013,y=57,z=-339,r=10,tag=Dialogue73,score_TalkTime=0] ~ ~ ~ /execute @s[tag=!Dialogue74] ~ ~ ~ tp @e[x=-504,y=135,z=1270,dy=3,type=pixelmon:npc_trainer] -1013 58 -335
execute @a[x=-1013,y=57,z=-339,r=10,tag=Dialogue74,score_TalkTime=0] ~ ~ ~ /execute @s[tag=!Dialogue75] ~ ~ ~ tp @e[x=-504,y=135,z=1274,dy=3,type=pixelmon:npc_trainer] -1013 58 -339

#Route 76
#Route 13 Az
execute @a[x=-709,y=100,z=-468,r=30,tag=!Dialogue76] ~ ~ ~ execute @s[tag=Dialogue75] ~ ~ ~ tp @e[x=-504,y=140,z=1268,dy=3,type=pixelmon:npc_chatting] -709 100 -468
scoreboard players set @a[x=-719,y=99,z=-474,dx=7,dy=10,dz=12,score_TalkTime=0,tag=!Dialogue76] DialogueTrigger 76

#Dialogue 77
#Lumiose City Shauna at Route 13 entrance
scoreboard players set @a[x=-509,y=101,z=-497,r=20,score_TalkTime=0,tag=!Dialogue77] DialogueTrigger 77

#Dialogue 78
#Prism Tower turning on
scoreboard players set @a[x=-236,y=100,z=-418,dx=15,dy=10,dz=27,score_TalkTime=0,tag=!Dialogue78] DialogueTrigger 78

#Dialogue 80
#Route 14 South Friends
scoreboard players set @a[x=-194,y=99,z=-899,dx=30,dy=5,dz=53,score_TalkTime=0,tag=!Dialogue80] DialogueTrigger 80
execute @a[x=-175,y=100,z=-884,r=15,tag=Dialogue80,score_TalkTime=0,score_StarterPick_min=1,score_StarterPick=1] ~ ~ ~ /execute @s[tag=!Dialogue81] ~ ~ ~ tp @e[x=-504,y=155,z=1270,dy=3,type=pixelmon:npc_trainer] -174 100 -887
execute @a[x=-175,y=100,z=-884,r=15,tag=Dialogue80,score_TalkTime=0,score_StarterPick_min=2,score_StarterPick=2] ~ ~ ~ /execute @s[tag=!Dialogue81] ~ ~ ~ tp @e[x=-504,y=155,z=1272,dy=3,type=pixelmon:npc_trainer] -174 100 -887
execute @a[x=-175,y=100,z=-884,r=15,tag=Dialogue80,score_TalkTime=0,score_StarterPick_min=3,score_StarterPick=3] ~ ~ ~ /execute @s[tag=!Dialogue81] ~ ~ ~ tp @e[x=-504,y=155,z=1274,dy=3,type=pixelmon:npc_trainer] -174 100 -887

#Dialogue 82
#Scary House opening
scoreboard players set @a[x=-231,y=100,z=-1217,r=15,score_TalkTime=0,tag=!Dialogue82] DialogueTrigger 82

#Dialogue 85
#Laverre City Gym ext Shauna and Trevor
execute @a[x=-93,y=100,z=-1458,r=10,score_TalkTime=0,tag=Valerie] ~ ~ ~ scoreboard players set @s[tag=!Dialogue85] DialogueTrigger 85

#Dialogue 86
#Factory Stairs grunt chasing friends
execute @a[x=-172,y=117,z=-1643,r=5,score_TalkTime=0,tag=Valerie] ~ ~ ~ scoreboard players set @s[tag=!Dialogue86] DialogueTrigger 86
execute @a[x=-172,y=117,z=-1643,r=30,tag=Valerie,score_TalkTime=0] ~ ~ ~ execute @s[tag=!Dialogue86] ~ ~ ~ tp @e[x=-504,y=170,z=1268,dy=3,type=pixelmon:npc_chatting] -172 117 -1642
execute @a[x=-172,y=117,z=-1643,r=30,tag=Valerie,score_TalkTime=0] ~ ~ ~ execute @s[tag=!Dialogue86] ~ ~ ~ tp @e[x=-504,y=170,z=1270,dy=3,type=pixelmon:npc_chatting] -172 117 -1645

#Door guard
execute @p[x=-155,y=125,z=-1715,r=30,tag=Dialogue86] ~ ~ ~ /tp @e[x=-158,y=124,z=-1771,dy=3,type=pixelmon:npc_chatting] -504 166 1280
execute @p[x=-155,y=125,z=-1715,r=30,tag=!Dialogue86] ~ ~ ~ /tp @e[x=-504,y=165,z=1280,dy=3,type=pixelmon:npc_chatting] -158 125 -1771

#Dialogue 87
#Factory Floor Serena and Grunt at door
execute @a[x=-157,y=125,z=-1774,dx=6,dy=5,score_TalkTime=0,tag=Dialogue86] ~ ~ ~ scoreboard players set @s[tag=!Dialogue87] DialogueTrigger 87

execute @a[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,tag=!Dialogue88,score_TalkTime=0] ~ ~ ~ tp @e[x=-504,y=180,z=1268,dy=3,type=pixelmon:npc_chatting] -80 104 -2012
execute @a[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,tag=!Dialogue88,score_TalkTime=0] ~ ~ ~ tp @e[x=-504,y=180,z=1272,dy=3,type=pixelmon:npc_chatting] -83 104 -2010
execute @a[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,tag=!Dialogue88,score_TalkTime=0] ~ ~ ~ tp @e[x=-504,y=180,z=1276,dy=3,type=pixelmon:npc_chatting] -77 104 -2010

#Sets up Factory NPCs
execute @a[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,tag=!Dialogue90,score_TalkTime=0] ~ ~ ~ tp @e[x=-504,y=175,z=1272,dy=3,type=pixelmon:npc_trainer] -134 95 -1919
execute @a[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,tag=!Dialogue90,score_TalkTime=0] ~ ~ ~ tp @e[x=-504,y=175,z=1274,dy=3,type=pixelmon:npc_trainer] -209 89 -1938
execute @a[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,tag=!Dialogue90,score_TalkTime=0] ~ ~ ~ tp @e[x=-504,y=175,z=1276,dy=3,type=pixelmon:npc_trainer] -148 89 -1965
execute @a[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,tag=!Dialogue90,score_TalkTime=0] ~ ~ ~ tp @e[x=-504,y=175,z=1278,dy=3,type=pixelmon:npc_trainer] -135 104 -1996

#Dialogue 88
#Factory Admin and Scientists in Presidential building
scoreboard players set @a[x=-92,y=102,z=-2020,dx=24,dy=5,dz=16,score_TalkTime=0,tag=!Dialogue88] DialogueTrigger 88
execute @a[x=-92,y=102,z=-2020,dx=24,dy=5,dz=16,tag=!Dialogue89,score_TalkTime=0] ~ ~ ~ execute @s[tag=Dialogue88] ~ ~ ~ tp @e[x=-504,y=180,z=1270,dy=3,type=pixelmon:npc_trainer] -80 104 -2012

#Dialogue 90
#Factory post-double battle
execute @a[x=-92,y=102,z=-2020,dx=24,dy=5,dz=16,tag=Dialogue89,score_MusicSteps_min=1,score_TalkTime=0] ~ ~ ~ scoreboard players set @s[tag=!Dialogue90] DialogueTrigger 90

#Dialogue 93
#Factory friends at entrance after defeating Flare
execute @a[x=-154,y=89,z=-1852,r=20,tag=!Dialogue93,score_TalkTime=0] ~ ~ ~ /scoreboard players set @s[tag=Dialogue90] DialogueTrigger 93

#Route 15 Gate Flare Grunts
execute @p[x=-27,y=100,z=-1353,r=30,tag=Dialogue90] ~ ~ ~ tp @e[x=41,y=98,z=-1357,dy=3,type=pixelmon:npc_chatting] -504 196 1268
execute @p[x=-27,y=100,z=-1353,r=30,tag=Dialogue90] ~ ~ ~ tp @e[x=41,y=98,z=-1349,dy=3,type=pixelmon:npc_chatting] -504 196 1270
execute @p[x=-27,y=100,z=-1353,r=30,tag=!Dialogue90] ~ ~ ~ tp @e[x=-504,y=195,z=1268,dy=3,type=pixelmon:npc_chatting] 41 100 -1357
execute @p[x=-27,y=100,z=-1353,r=30,tag=!Dialogue90] ~ ~ ~ tp @e[x=-504,y=195,z=1270,dy=3,type=pixelmon:npc_chatting] 41 100 -1349

#Dialogue 94
#Dendemille Sycamore and Dexio
scoreboard players set @a[x=638,y=107,z=-431,dx=15,dy=5,dz=17,tag=!Dialogue94,score_TalkTime=0] DialogueTrigger 94

#Dialogue 95
#Frost Cavern ext Mamoswine has a bad feeling
scoreboard players set @a[x=717,y=117,z=-682,dx=24,dy=10,dz=20,score_TalkTime=0,tag=!Dialogue95] DialogueTrigger 95
execute @p[x=733,y=119,z=-646,r=20,tag=!Dialogue95] ~ ~ ~ execute @s[tag=!Dialogue98] ~ ~ ~ tp @e[x=-504,y=205,z=1268,dy=3,type=pixelmon:npc_chatting] 725 118 -665
execute @p[x=733,y=119,z=-646,r=20,tag=!Dialogue95] ~ ~ ~ execute @s[tag=!Dialogue98] ~ ~ ~ tp @e[x=-501,y=190,z=1238,dy=3,type=pixelmon:statue] 722 118 -666
execute @p[x=719,y=117,z=-682,r=30,tag=Dialogue98] ~ ~ ~ tp @e[x=725,y=117,z=-665,dy=3,type=pixelmon:npc_chatting] -504 206 1268
execute @p[x=719,y=117,z=-682,r=30,tag=Dialogue98] ~ ~ ~ tp @e[x=722,y=117,z=-666,dy=3,type=pixelmon:statue] -501 191 1238

#Dialogue 96
#Frost Cavern Team Flare
scoreboard players set @a[x=672,y=84,z=-1299,dx=18,dy=6,dz=11,score_TalkTime=0,tag=!Dialogue96] DialogueTrigger 96
execute @a[x=676,y=85,z=-1359,r=10,score_TalkTime=0,tag=Dialogue96] ~ ~ ~ execute @s[tag=!Dialogue97] ~ ~ ~ tp @e[x=-504,y=210,z=1280,dy=3,type=pixelmon:npc_trainer] 679 85 -1358
execute @a[x=676,y=85,z=-1359,r=10,score_TalkTime=0,tag=Dialogue97] ~ ~ ~ execute @s[tag=!Dialogue98] ~ ~ ~ tp @e[x=-504,y=210,z=1278,dy=3,type=pixelmon:npc_trainer] 676 85 -1361

#Dialogue 99
#Route 13 Mamoswine is gone if went to here first
execute @a[x=837,y=108,z=-335,r=10,tag=!Dialogue99,score_TalkTime=0] ~ ~ ~ execute @s[tag=!Dialogue98] ~ ~ ~ scoreboard players set @s DialogueTrigger 99
execute @a[x=801,y=107,z=-340,dx=50,dy=10,dz=30,tag=!Dialogue98] ~ ~ ~ /effect @e[type=pixelmon:statue,name=Mamoswine] minecraft:invisibility 5 5 true

#Dialogue 100
#Route 17 Mamoswine has returned
execute @a[x=837,y=108,z=-335,r=10,tag=!Dialogue100,score_TalkTime=0] ~ ~ ~ execute @s[tag=Dialogue98] ~ ~ ~ scoreboard players set @s DialogueTrigger 100

#Dialogue 101
#Anistar City Sina
scoreboard players set @a[x=1187,y=107,z=-196,dx=16,dy=5,dz=17,tag=!Dialogue101,score_TalkTime=0] DialogueTrigger 101

#Dialogue 102
#Anistar Serena Battle
scoreboard players set @a[x=1308,y=107,z=-286,dx=12,dy=5,dz=25,tag=!Dialogue102,score_TalkTime=0] DialogueTrigger 102
execute @a[x=1308,y=107,z=-286,dx=12,dy=5,dz=25,tag=!Dialogue103,score_TalkTime=0,score_StarterPick_min=1,score_StarterPick=1] ~ ~ ~ execute @s[tag=Dialogue102] ~ ~ ~ /tp @e[x=-504,y=215,z=1272,dy=3,type=pixelmon:npc_trainer] 1325 108 -277
execute @a[x=1308,y=107,z=-286,dx=12,dy=5,dz=25,tag=!Dialogue103,score_TalkTime=0,score_StarterPick_min=2,score_StarterPick=2] ~ ~ ~ execute @s[tag=Dialogue102] ~ ~ ~ /tp @e[x=-504,y=215,z=1274,dy=3,type=pixelmon:npc_trainer] 1325 108 -277
execute @a[x=1308,y=107,z=-286,dx=12,dy=5,dz=25,tag=!Dialogue103,score_TalkTime=0,score_StarterPick_min=3,score_StarterPick=3] ~ ~ ~ execute @s[tag=Dialogue102] ~ ~ ~ /tp @e[x=-504,y=215,z=1276,dy=3,type=pixelmon:npc_trainer] 1325 108 -277

#Dialogue 104
#Anistar City Serena gets Lysandre's doom call
execute @a[x=1328,y=108,z=-281,r=20,score_TalkTime=0,tag=Olympia] ~ ~ ~ /scoreboard players set @s[tag=!Dialogue104] DialogueTrigger 104

#Hint-giving grunts
execute @p[x=1303,y=108,z=-267,r=20,tag=Dialogue133] ~ ~ ~ tp @e[x=1353,y=107,z=-283,dy=3,type=pixelmon:npc_chatting] -504 221 1272
execute @p[x=1303,y=108,z=-267,r=20,tag=Dialogue133] ~ ~ ~ tp @e[x=1357,y=107,z=-283,dy=3,type=pixelmon:npc_chatting] -504 221 1274

#Dialogue 107
#Lysandre Labs two Waiters
execute @a[x=-307,y=80,z=425,dx=23,dy=100,dz=28,score_TalkTime=0,tag=Dialogue105] ~ ~ ~ execute @s[tag=Dialogue106] ~ ~ ~ /scoreboard players set @s[tag=!Dialogue107] DialogueTrigger 107
execute @a[x=-307,y=132,z=427,dx=23,dy=9,dz=26,tag=Olympia] ~ ~ ~ execute @s ~ ~ ~ /tp @e[x=-504,y=225,z=1268,dy=3,type=pixelmon:npc_trainer] -298 133 442
execute @a[x=-307,y=132,z=427,dx=23,dy=9,dz=26,tag=Olympia] ~ ~ ~ execute @s ~ ~ ~ /tp @e[x=-504,y=225,z=1270,dy=3,type=pixelmon:npc_trainer] -294 133 431

#Dialogue 108 & 109
#Lysandre Labs Lysandre first floor encounter
scoreboard players set @a[x=-304,y=140,z=388,dx=16,dy=5,dz=12,score_TalkTime=0,tag=!Dialogue108] DialogueTrigger 108
execute @a[x=-304,y=140,z=388,dx=16,dy=5,dz=12,tag=!Dialogue109,score_TalkTime=0] ~ ~ ~ /execute @s[tag=Dialogue108] ~ ~ ~ /tp @e[x=-504,y=230,z=1268,dy=3,type=pixelmon:npc_trainer] -296 141 393

#Sets up Team Flare in Lysandre Labs
execute @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=Dialogue109] ~ ~ ~ execute @s[tag=!ElevatorKey] ~ ~ ~ tp @e[x=-504,y=230,z=1270,dy=3,type=pixelmon:npc_trainer] -321 141 382
execute @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=Dialogue109] ~ ~ ~ execute @s[tag=!ElevatorKey] ~ ~ ~ tp @e[x=-504,y=230,z=1272,dy=3,type=pixelmon:npc_trainer] -333 141 336
execute @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=Dialogue109] ~ ~ ~ execute @s[tag=!ElevatorKey] ~ ~ ~ tp @e[x=-504,y=230,z=1274,dy=3,type=pixelmon:npc_trainer] -318 141 356
execute @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=Dialogue109] ~ ~ ~ execute @s[tag=!ElevatorKey] ~ ~ ~ tp @e[x=-504,y=230,z=1276,dy=3,type=pixelmon:npc_trainer] -301 141 346
execute @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=Dialogue109] ~ ~ ~ execute @s[tag=!ElevatorKey] ~ ~ ~ tp @e[x=-504,y=230,z=1278,dy=3,type=pixelmon:npc_trainer] -254 141 340
execute @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=Dialogue109] ~ ~ ~ execute @s[tag=!ElevatorKey] ~ ~ ~ tp @e[x=-504,y=230,z=1280,dy=3,type=pixelmon:npc_trainer] -256 141 397
execute @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=Dialogue109] ~ ~ ~ execute @s[tag=!ElevatorKey] ~ ~ ~ tp @e[x=-504,y=235,z=1268,dy=3,type=pixelmon:npc_trainer] -275 141 364
execute @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=Dialogue109] ~ ~ ~ execute @s[tag=!ElevatorKey] ~ ~ ~ tp @e[x=-504,y=235,z=1270,dy=3,type=pixelmon:npc_trainer] -233 141 325
execute @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=Dialogue109] ~ ~ ~ execute @s[tag=!ElevatorKey] ~ ~ ~ tp @e[x=-504,y=235,z=1272,dy=3,type=pixelmon:npc_trainer] -355 141 330
execute @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=Dialogue109,score_TalkTime=0] ~ ~ ~ execute @s[tag=!Dialogue111] ~ ~ ~ tp @e[x=-504,y=240,z=1268,dy=3,type=pixelmon:npc_chatting] -264 141 311
execute @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=Dialogue109,score_TalkTime=0] ~ ~ ~ execute @s[tag=!Dialogue111] ~ ~ ~ tp @e[x=-504,y=240,z=1270,dy=3,type=pixelmon:npc_chatting] -260 141 311
execute @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=Dialogue109,score_TalkTime=0] ~ ~ ~ execute @s[tag=!Dialogue114] ~ ~ ~ tp @e[x=-504,y=240,z=1280,dy=3,type=pixelmon:npc_chatting] -216 141 347
execute @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=Dialogue109] ~ ~ ~ execute @s[tag=!Dialogue110] ~ ~ ~ tp @e[x=-504,y=245,z=1276,dy=3,type=pixelmon:npc_chatting] -327 141 302
execute @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=Dialogue109] ~ ~ ~ execute @s[tag=!Dialogue110] ~ ~ ~ tp @e[x=-504,y=245,z=1278,dy=3,type=pixelmon:npc_chatting] -331 141 302

#Dialogue 110
#Lysandre Labs Heroes talk
scoreboard players set @a[x=-339,y=140,z=311,dx=20,dy=10,dz=8,score_TalkTime=0,tag=!Dialogue110] DialogueTrigger 110

#Dialogue 111-113
#Lysandre Lavs Celosia and Bryony
scoreboard players set @a[x=-272,y=140,z=312,dx=20,dy=10,dz=10,score_TalkTime=0,tag=!Dialogue111] DialogueTrigger 111
execute @a[x=-272,y=140,z=312,dx=20,dy=10,dz=10,tag=Dialogue111,score_TalkTime=0] ~ ~ ~ execute @s[tag=!Dialogue112] ~ ~ ~ tp @e[x=-504,y=235,z=1274,dy=3,type=pixelmon:npc_trainer] -264 141 311
execute @a[x=-272,y=140,z=312,dx=20,dy=10,dz=10,tag=Dialogue112,score_TalkTime=0] ~ ~ ~ execute @s[tag=!Dialogue113] ~ ~ ~ tp @e[x=-504,y=235,z=1276,dy=3,type=pixelmon:npc_trainer] -260 141 311

#Dialogue 114 & 115
#Lysandre Labs Mable
scoreboard players set @a[x=-225,y=140,z=348,dx=17,dy=10,dz=10,score_TalkTime=0,tag=!Dialogue114] DialogueTrigger 114
execute @a[x=-225,y=140,z=348,dx=17,dy=10,dz=10,tag=Dialogue114,score_TalkTime=0] ~ ~ ~ execute @s[tag=!Dialogue115] ~ ~ ~ tp @e[x=-504,y=235,z=1278,dy=3,type=pixelmon:npc_trainer] -216 141 347

#Dialogue 116
#Lysandre Labs Lysandre and AZ
scoreboard players set @a[x=-395,y=110,z=392,dx=18,dy=10,dz=11,score_TalkTime=0,tag=!Dialogue116] DialogueTrigger 116
execute @a[x=-376,y=110,z=396,dx=41,dy=10,dz=7,tag=!Dialogue116] ~ ~ ~ tp @e[x=-504,y=240,z=1274,dy=3,type=pixelmon:npc_chatting] -386 111 390
execute @a[x=-376,y=110,z=396,dx=41,dy=10,dz=7,tag=!Dialogue116] ~ ~ ~ tp @e[x=-504,y=240,z=1276,dy=3,type=pixelmon:npc_chatting] -388 111 394

#Dialogue 117
#Lysandre Labs B3F Xerosic and Lysandre
scoreboard players set @a[x=-319,y=106,z=349,dx=17,dy=5,dz=10,score_TalkTime=0,tag=!Dialogue117] DialogueTrigger 117
execute @a[x=-311,y=110,z=390,r=20,tag=!Dialogue117,score_TalkTime=0] ~ ~ ~ tp @e[x=-504,y=245,z=1268,dy=3,type=pixelmon:npc_chatting] -312 107 326
execute @a[x=-311,y=110,z=390,r=20,tag=!Dialogue117,score_TalkTime=0] ~ ~ ~ tp @e[x=-504,y=245,z=1270,dy=3,type=pixelmon:npc_chatting] -308 107 326
execute @a[x=-308,y=107,z=326,r=10,tag=!Dialogue118,score_TalkTime=0] ~ ~ ~ /execute @s[tag=Dialogue117] ~ ~ ~ tp @e[x=-504,y=245,z=1272,dy=3,type=pixelmon:npc_trainer] -308 107 326

#Dialogue 121
#Geosenge Serena pre-Flare HQ
scoreboard players set @a[x=-1255,y=109,z=1807,r=10,score_TalkTime=0,tag=!Dialogue121] DialogueTrigger 121

#Dialogue 122-123
#Flare HQ Lysandre first battle
scoreboard players set @a[x=-2359,y=69,z=-992,dx=46,dy=10,dz=15,score_TalkTime=0,tag=!Dialogue122] DialogueTrigger 122
execute @a[x=-2359,y=69,z=-992,dx=46,dy=10,dz=15,tag=!Dialogue123,score_TalkTime=0] ~ ~ ~ execute @s[tag=Dialogue122] ~ ~ ~ /tp @e[x=-504,y=100,z=1292,dy=3,type=pixelmon:npc_trainer] -2336 70 -990

#Dialogue 124
#Flare HQ Double Battle No 1
scoreboard players set @a[x=-2400,y=61,z=-965,dx=13,dy=5,dz=13,tag=!Dialogue124,score_TalkTime=0] DialogueTrigger 124

#Dialogue 125
#Flare HQ Double Battle No 2
scoreboard players set @a[x=-2456,y=73,z=-989,dx=13,dy=5,dz=13,tag=!Dialogue125,score_TalkTime=0] DialogueTrigger 125

#Dialogue 126
#Flare HQ Shauna joins the party
scoreboard players set @a[x=-2478,y=76,z=-1005,dx=13,dy=5,dz=13,tag=!Dialogue126,score_TalkTime=0] DialogueTrigger 126

#Dialogue 127
#Flare HQ Double Battle No 3
scoreboard players set @a[x=-2486,y=47,z=-949,dx=13,dy=5,dz=13,tag=!Dialogue127,score_TalkTime=0] DialogueTrigger 127

#Dialogue 128
#Flare HQ outside legendary chamber
scoreboard players set @a[x=-2436,y=27,z=-955,dx=17,dy=6,dz=17,tag=!Dialogue128,score_TalkTime=0] DialogueTrigger 128

#Dialogue 130
#Flare HQ post-Four admins in chamber
execute @a[x=-2526,y=0,z=-1074,dx=232,dy=95,dz=167,score_TalkTime=0,tag=Admin1] ~ ~ ~ execute @s[tag=Admin3] ~ ~ ~ execute @s[tag=Admin4] ~ ~ ~ execute @s[tag=Admin6] ~ ~ ~ scoreboard players set @s[tag=!Dialogue130] DialogueTrigger 130
execute @a[x=-2336,y=42,z=-1007,r=15,tag=Dialogue129,score_TalkTime=0] ~ ~ ~ execute @s[tag=!Dialogue130] ~ ~ ~ tp @e[x=-504,y=125,z=1284,dy=3,type=pixelmon:npc_trainer] -2342 42 -1007
execute @a[x=-2336,y=42,z=-1007,r=15,tag=Dialogue129,score_TalkTime=0] ~ ~ ~ execute @s[tag=!Dialogue130] ~ ~ ~ tp @e[x=-504,y=125,z=1286,dy=3,type=pixelmon:npc_trainer] -2336 42 -1012
execute @a[x=-2336,y=42,z=-1007,r=15,tag=Dialogue129,score_TalkTime=0] ~ ~ ~ execute @s[tag=!Dialogue130] ~ ~ ~ tp @e[x=-504,y=125,z=1288,dy=3,type=pixelmon:npc_trainer] -2336 42 -1007
execute @a[x=-2336,y=42,z=-1007,r=15,tag=Dialogue129,score_TalkTime=0] ~ ~ ~ execute @s[tag=!Dialogue130] ~ ~ ~ tp @e[x=-504,y=125,z=1290,dy=3,type=pixelmon:npc_trainer] -2330 42 -1007

#Dialogue 133
#Flare HQ Chamber Respawns Lysandre trainer
execute @a[x=-2336,y=42,z=-997,r=20,score_TalkTime=0,tag=!Dialogue133] ~ ~ ~ execute @s[tag=Dialogue132] ~ ~ ~ /tp @e[x=-504,y=130,z=1290,dy=3,type=pixelmon:npc_trainer] -2336 42 -997

#Dialogue 134
#Geosenge Town post-destruction with friends
scoreboard players set @a[x=-410,y=109,z=2014,r=20,tag=!Dialogue134,score_TalkTime=0] DialogueTrigger 134

#Dialogue 135 & 136
#Couriway Town Sycamore Battle
scoreboard players set @a[x=1501,y=101,z=253,r=10,score_TalkTime=0,tag=!Dialogue135] DialogueTrigger 135
execute @a[x=1501,y=101,z=253,r=10,tag=Dialogue135,score_TalkTime=0] ~ ~ ~ execute @s[tag=Dialogue!136] ~ ~ ~ tp @e[x=-504,y=140,z=1286,dy=3,type=pixelmon:npc_trainer] 1501 101 253

#Camphrier Town Sycamore's Note
#execute @a[x=1568,y=119,z=163,r=30,tag=Dialogue136] ~ ~ ~ execute @s[tag=!SycamoresNote] ~ ~ ~ /execute @e[x=1568,y=119,z=163,dy=3,type=armor_stand] ~ ~ ~ /particle fireworksSpark ~ ~ ~ 1 2 1 0.1 2 normal @a[tag=!SycamoresNote]
#execute @e[x=1568,y=119,z=163,dy=3,type=armor_stand] ~ ~ ~ /give @a[r=3,tag=!SycamoresNote] written_book 1 0 {pages:["{\"text\":\"To the person reading this:\\n\\nWhat are you like now?\\n\\nDid you become who you wanted to be?\"}","{\"text\":\"For starters, what was the person you wanted to become even like?\"}","{\"text\":\"I don't know, but it would be wonderful if you can boast that you're living each day to the fullest.\"}","{\"text\":\"To future Sycamore.\\n\\nFrom the Sycamore dreaming of the future.\"}"],title:"To future Sycamore",author:"Augustine Sycamore"}
#execute @e[x=1568,y=119,z=163,dy=3,type=armor_stand] ~ ~ ~ /tellraw @a[r=3,tag=!SycamoresNote] {"text":"You found a Sycamore's Note!","italic":true,"color":"gray"}
#execute @e[x=1568,y=119,z=163,dy=3,type=armor_stand] ~ ~ ~ /playsound pixelmon:pixelmon.block.pokelootobtained ambient @a[r=3,tag=!SycamoresNote] ~ ~ ~ 10 1 1
#execute @e[x=1568,y=119,z=163,dy=3,type=armor_stand] ~ ~ ~ /scoreboard players tag @a[r=3,tag=!SycamoresNote] add SycamoresNote

#Dialogue 137-140
#Route 19 Friends on bridge
scoreboard players set @a[x=1452,y=97,z=489,dx=11,dy=10,dz=6,score_TalkTime=0,tag=!Dialogue137] DialogueTrigger 137
execute @e[x=1448,y=98,z=492,r=10,score_TalkTime=0,score_StarterPick_min=1,score_StarterPick=1,tag=Dialogue137] ~ ~ ~ execute @s[tag=!Dialogue138] ~ ~ ~ tp @e[x=-504,y=145,z=1284,dy=3,type=pixelmon:npc_trainer] 1448 98 492
execute @e[x=1448,y=98,z=492,r=10,score_TalkTime=0,score_StarterPick_min=2,score_StarterPick=2,tag=Dialogue137] ~ ~ ~ execute @s[tag=!Dialogue138] ~ ~ ~ tp @e[x=-504,y=145,z=1286,dy=3,type=pixelmon:npc_trainer] 1448 98 492
execute @e[x=1448,y=98,z=492,r=10,score_TalkTime=0,score_StarterPick_min=3,score_StarterPick=3,tag=Dialogue137] ~ ~ ~ execute @s[tag=!Dialogue138] ~ ~ ~ tp @e[x=-504,y=145,z=1288,dy=3,type=pixelmon:npc_trainer] 1448 98 492
execute @e[x=1448,y=98,z=492,r=10,score_TalkTime=0,tag=Dialogue138] ~ ~ ~ execute @s[tag=!Dialogue139] ~ ~ ~ tp @e[x=-504,y=145,z=1292,dy=3,type=pixelmon:npc_trainer] 1451 98 494
execute @e[x=1448,y=98,z=492,r=10,score_TalkTime=0,tag=Dialogue139] ~ ~ ~ execute @s[tag=!Dialogue140] ~ ~ ~ tp @e[x=-504,y=145,z=1290,dy=3,type=pixelmon:npc_trainer] 1451 98 490

#Dialogue 141
#Pokemon Village Wulfric
execute @a[x=951,y=93,z=664,r=20,score_TalkTime=0,tag=!Wulfric] ~ ~ ~ scoreboard players set @s[tag=Dialogue140] DialogueTrigger 141

#Pokemon Village block Mewtwo unless beaten ELite Four
execute @p[x=825,y=95,z=624,r=20,score_PokemonLeague=0] ~ ~ ~ tp @e[x=-504,y=150,z=1288,dy=3,type=pixelmon:npc_chatting] 844 95 610
execute @p[x=825,y=95,z=624,r=20,score_PokemonLeague_min=1] ~ ~ ~ tp @e[x=844,y=94,z=610,dy=3,type=pixelmon:npc_chatting] -504 151 1288

#Dialogue 143
#Snowbelle Wulfric and Gym Guy
execute @a[x=1144,y=95,z=492,r=20,tag=!Dialogue143,score_TalkTime=0] ~ ~ ~ scoreboard players set @s[tag=Wulfric] DialogueTrigger 143

#Dialogue 144-145
#Victory Road gate Ace Trainer battle
execute @a[x=686,y=105,z=379,dx=15,dy=10,dz=25,tag=!Dialogue144] ~ ~ ~ execute @s[tag=Viola] ~ ~ ~ /execute @s[tag=Grant] ~ ~ ~ /execute @s[tag=Korrina] ~ ~ ~ /execute @s[tag=Ramos] ~ ~ ~ /execute @s[tag=Clemont] ~ ~ ~ /execute @s[tag=Valerie] ~ ~ ~ /execute @s[tag=Olympia] ~ ~ ~ /execute @s[tag=Wulfric] ~ ~ ~ /scoreboard players set @s DialogueTrigger 144
execute @a[x=686,y=105,z=379,dx=15,dy=10,dz=25,tag=Dialogue144,score_TalkTime=0] ~ ~ ~ execute @s[tag=!Dialogue145] ~ ~ ~ tp @e[x=-504,y=160,z=1286,dy=3,type=pixelmon:npc_trainer] 694 106 396

#Dialogue 146
#Victory Road Serena 5th battle
scoreboard players set @a[x=2274,y=174,z=2175,dx=20,dy=10,dz=17,score_TalkTime=0,tag=!Dialogue146] DialogueTrigger 146
execute @a[x=2274,y=174,z=2175,dx=20,dy=10,dz=17,tag=Dialogue146,score_Talk=0] ~ ~ ~ execute @s[tag=Dialogue!147,score_StarterPick_min=1,score_StarterPick=1] ~ ~ ~ tp @e[x=-504,y=165,z=1284,dy=3,type=pixelmon:npc_trainer] 2294 175 2184
execute @a[x=2274,y=174,z=2175,dx=20,dy=10,dz=17,tag=Dialogue146,score_Talk=0] ~ ~ ~ execute @s[tag=Dialogue!147,score_StarterPick_min=2,score_StarterPick=2] ~ ~ ~ tp @e[x=-504,y=165,z=1286,dy=3,type=pixelmon:npc_trainer] 2294 175 2184
execute @a[x=2274,y=174,z=2175,dx=20,dy=10,dz=17,tag=Dialogue146,score_Talk=0] ~ ~ ~ execute @s[tag=Dialogue!147,score_StarterPick_min=3,score_StarterPick=3] ~ ~ ~ tp @e[x=-504,y=165,z=1288,dy=3,type=pixelmon:npc_trainer] 2294 175 2184

#Dialogue 149
#Pokemon League Malva Introduction
scoreboard players set @a[x=-1907,y=32,z=2117,r=20,tag=!Dialogue148,score_TalkTime=0] DialogueTrigger 148

#Dialogue 155-156
#Lumiose Parade AZ
scoreboard players set @a[x=1488,y=137,z=-1900,r=20,score_TalkTime=0,tag=!Dialogue155] DialogueTrigger 155
execute @a[x=1469,y=101,z=-1954,r=20,tag=!Dialogue156,score_TalkTime=0] ~ ~ ~ execute @s[tag=Dialogue155] ~ ~ ~ tp @e[x=-504,y=175,z=1284,dy=3,type=pixelmon:npc_trainer] 1469 101 -1954

#Dialogue 157
#Vaniville Town Mom post-League
execute @a[x=493,y=107,z=1549,dx=18,dy=5,dz=19,tag=Dialogue1] ~ ~ ~ scoreboard players set @s[tag=!Dialogue157,score_PokemonLeague_min=1] DialogueTrigger 157

#Dialogue 159
#Lumiose Station Dexio & Sina
scoreboard players set @a[x=1017,y=105,z=1908,r=20,score_TalkTime=0,tag=!Dialogue159,score_PokemonLeague_min=1] DialogueTrigger 159

#Dialogue 160
#Lumiose Station Sycamore
scoreboard players set @a[x=1029,y=105,z=1893,r=6,score_TalkTime=0,tag=!Dialogue160,score_PokemonLeague_min=1] DialogueTrigger 160
execute @a[x=1017,y=105,z=1908,r=20,tag=!Dialogue160,score_PokemonLeague_min=1] ~ ~ ~ tp @e[x=-504,y=185,z=1290,dy=3,type=pixelmon:npc_chatting] 1029 105 1893

#Dialogue 161
#Kilouce City Serena battle
scoreboard players set @a[x=1229,y=119,z=1461,r=6,score_TalkTime=0,tag=!Dialogue161] DialogueTrigger 161
execute @a[x=1229,y=119,z=1461,r=15,score_TalkTime=0,score_StarterPick_min=1,score_StarterPick=1,tag=!Dialogue162] ~ ~ ~ execute @s[tag=Dialogue161] ~ ~ ~ tp @e[x=-504,y=190,z=1288,dy=3,type=pixelmon:npc_trainer] 1229 119 1461
execute @a[x=1229,y=119,z=1461,r=15,score_TalkTime=0,score_StarterPick_min=2,score_StarterPick=2,tag=!Dialogue162] ~ ~ ~ execute @s[tag=Dialogue161] ~ ~ ~ tp @e[x=-504,y=190,z=1290,dy=3,type=pixelmon:npc_trainer] 1229 119 1461
execute @a[x=1229,y=119,z=1461,r=15,score_TalkTime=0,score_StarterPick_min=3,score_StarterPick=3,tag=!Dialogue162] ~ ~ ~ execute @s[tag=Dialogue161] ~ ~ ~ tp @e[x=-504,y=190,z=1292,dy=3,type=pixelmon:npc_trainer] 1229 119 1461
execute @a[x=1221,y=119,z=1497,r=20,tag=!Dialogue161] ~ ~ ~  tp @e[x=-504,y=190,z=1284,dy=3,type=pixelmon:npc_chatting] 1229 119 1461

#Dialogue 163
#Anistar City Sycamore upgrading Mega Ring
execute @a[x=1179,y=110,z=-276,r=20,score_TalkTime=0,tag=Dialogue162] ~ ~ ~ scoreboard players set @s[tag=!Dialogue163] DialogueTrigger 163

#Dialogue 164
#Lumiose Cafe Soleil Diantha giving Ralts
scoreboard players set @a[x=-495,y=100,z=256,r=15,tag=!Dialogue164,score_TalkTime=0,score_PokemonLeague_min=1] DialogueTrigger 164

#Dialogue 165
#Lumiose City Ghost Girl
scoreboard players set @a[x=-162,y=110,z=196,dx=8,dy=5,dz=10,score_TalkTime=0,tag=!Dialogue165] DialogueTrigger 165

#Dialogue 166
#Battle Chateau Viola Introduction
scoreboard players set @a[x=-1533,y=65,z=-68,r=20,score_Gender_min=1,tag=!Dialogue166,score_TalkTime=0] DialogueTrigger 166

#Dialogue 168
#Lumiose Press Volcanion Memo Start
execute @a[x=-444,y=101,z=206,r=6,score_TalkTime=0,tag=VolcanionCatch] ~ ~ ~ scoreboard players set @s[tag=!Dialogue168] DialogueTrigger 168
execute @a[x=-449,y=101,z=215,r=10,score_TalkTime=0,tag=VolcanionCatch] ~ ~ ~ tp @e[x=-442,y=100,z=210,dy=3,type=pixelmon:npc_chatting] -504 211 1286

#----------
#Looker Chapters

#Swaps outdoor sign name
execute @p[x=-188,y=101,z=-639,r=30,tag=Call13] ~ ~ ~ entitydata @e[x=-188,y=100,z=-639,dy=3,type=armor_stand] {CustomName:"Looker Bureau"}
execute @p[x=-188,y=101,z=-639,r=30,tag=!Call13] ~ ~ ~ entitydata @e[x=-188,y=100,z=-639,dy=3,type=armor_stand] {CustomName:"Vacant"}

#Looker Ticket Particles
execute @e[type=armor_stand,tag=LookerTicket] ~ ~ ~ scoreboard players tag @a[r=5,tag=Dialogue174] remove Dialogue174
execute @a[x=-25,y=77,z=348,r=30,tag=Dialogue173] ~ ~ ~ execute @s[tag=!TicketMuseum] ~ ~ ~ /execute @e[x=-25,y=76,z=348,dy=3,type=armor_stand] ~ ~ ~ /particle fireworksSpark ~ ~ ~ 1 2 1 0.1 2 normal @a[tag=!TicketMuseum]
execute @a[x=-433,y=101,z=335,r=30,tag=Dialogue173] ~ ~ ~ execute @s[tag=!TicketHotel] ~ ~ ~ /execute @e[x=-433,y=100,z=335,dy=3,type=armor_stand] ~ ~ ~ /particle fireworksSpark ~ ~ ~ 1 2 1 0.1 2 normal @a[tag=!TicketHotel]
execute @a[x=-286,y=101,z=217,r=30,tag=Dialogue173] ~ ~ ~ execute @s[tag=!TicketHerb] ~ ~ ~ /execute @e[x=-286,y=100,z=217,dy=3,type=armor_stand] ~ ~ ~ /particle fireworksSpark ~ ~ ~ 1 2 1 0.1 2 normal @a[tag=!TicketHerb]
execute @a[x=-1833,y=100,z=-1694,r=30,tag=Dialogue173] ~ ~ ~ execute @s[tag=!TicketGym] ~ ~ ~ /execute @e[x=-1833,y=99,z=-1694,dy=3,type=armor_stand] ~ ~ ~ /particle fireworksSpark ~ ~ ~ 1 2 1 0.1 2 normal @a[tag=!TicketGym]
execute @a[x=-439,y=101,z=439,r=30,tag=Dialogue173] ~ ~ ~ execute @s[tag=!TicketCenter] ~ ~ ~ /execute @e[x=-439,y=100,z=439,dy=3,type=armor_stand] ~ ~ ~ /particle fireworksSpark ~ ~ ~ 1 2 1 0.1 2 normal @a[tag=!TicketCenter]

#Dialogue 174
#Looker Ticket Gives
execute @e[x=-25,y=76,z=348,dy=3,type=armor_stand] ~ ~ ~ execute @a[r=5,score_TalkTime=0,tag=Dialogue173] ~ ~ ~ scoreboard players set @s[tag=!TicketMuseum] DialogueTrigger 174
execute @e[x=-433,y=100,z=335,dy=3,type=armor_stand] ~ ~ ~ execute @a[r=5,score_TalkTime=0,tag=Dialogue173] ~ ~ ~ scoreboard players set @s[tag=!TicketHotel] DialogueTrigger 174
execute @e[x=-286,y=100,z=217,dy=3,type=armor_stand] ~ ~ ~ execute @a[r=5,score_TalkTime=0,tag=Dialogue173] ~ ~ ~ scoreboard players set @s[tag=!TicketHerb] DialogueTrigger 174
execute @e[x=-1833,y=99,z=-1694,dy=3,type=armor_stand] ~ ~ ~ execute @a[r=5,score_TalkTime=0,tag=Dialogue173] ~ ~ ~ scoreboard players set @s[tag=!TicketGym] DialogueTrigger 174
execute @e[x=-439,y=100,z=439,dy=3,type=armor_stand] ~ ~ ~ execute @a[r=5,score_TalkTime=0,tag=Dialogue173] ~ ~ ~ scoreboard players set @s[tag=!TicketCenter] DialogueTrigger 174

#Dialogue 175
#All Looker Tickets obtained
scoreboard players set @a[x=-176,y=100,z=387,r=7,score_TalkTime=0,score_LookerTickets_min=5,tag=!Dialogue175] DialogueTrigger 175

#Set's up Emma's first alley finding her in
execute @a[x=-373,y=101,z=-307,r=40,score_TalkTime=0,tag=Dialogue176] ~ ~ ~ execute @s[tag=!Dialogue177] ~ ~ ~ tp @e[x=-504,y=220,z=1284,dy=3,type=pixelmon:npc_trainer] -375 101 -299
execute @a[x=-373,y=101,z=-307,r=40,score_TalkTime=0,tag=Dialogue176] ~ ~ ~ execute @s[tag=!Dialogue177] ~ ~ ~ tp @e[x=-504,y=220,z=1286,dy=3,type=pixelmon:npc_trainer] -369 101 -297
execute @a[x=-373,y=101,z=-307,r=40,score_TalkTime=0,tag=Dialogue176] ~ ~ ~ execute @s[tag=!Dialogue177] ~ ~ ~ tp @e[x=-504,y=220,z=1288,dy=3,type=pixelmon:npc_trainer] -372 101 -291
execute @a[x=-373,y=101,z=-307,r=40,score_TalkTime=0,tag=Dialogue176] ~ ~ ~ execute @s[tag=!Dialogue177] ~ ~ ~ tp @e[x=-504,y=220,z=1290,dy=3,type=pixelmon:npc_trainer] -366 101 -288

#Dialogue 177
#Finding Emma
execute @a[tag=Dialogue176,score_TalkTime=0] ~ ~ ~ scoreboard players set @a[x=-374,y=101,z=-280,r=6,tag=!Dialogue177] DialogueTrigger 177

#Dialogue 178
#Player finding Mimi
execute @a[x=-428,y=101,z=-363,r=7,score_TalkTime=0,tag=Dialogue177] ~ ~ ~ scoreboard players set @s[tag=!Dialogue178] DialogueTrigger 178
execute @a[x=-405,y=101,z=-370,r=20,tag=Dialogue177] ~ ~ ~ execute @s[tag=!Dialogue178] ~ ~ ~ tp @e[x=-504,y=226,z=1284,dy=3,type=pixelmon:statue] -428 101 -363

#Dialogue 182
#Looker Chapter 3 start
execute @a[x=-161,y=100,z=375,dx=19,dy=15,dz=23,score_TalkTime=0,tag=Dialogue180] ~ ~ ~ scoreboard players set @s[tag=!Dialogue182] DialogueTrigger 182
execute @a[x=-161,y=100,z=375,dx=19,dy=15,dz=23,score_TalkTime=0,tag=Dialogue181] ~ ~ ~ scoreboard players set @s[tag=!Dialogue182] DialogueTrigger 182

#Dialogue 183
#Lumiose Station pre-Nix Battle
scoreboard players set @a[x=1103,y=105,z=2007,r=10,score_TalkTime=0,tag=!Dialogue183] DialogueTrigger 183
execute @a[x=1103,y=105,z=2007,r=50,score_TalkTime=0,tag=!Dialogue183] ~ ~ ~ tp @e[x=-504,y=235,z=1284,dy=3,type=pixelmon:npc_chatting] 1119 105 2007
execute @a[x=1103,y=105,z=2007,r=50,score_TalkTime=0,tag=!Dialogue183] ~ ~ ~ tp @e[x=-504,y=235,z=1286,dy=3,type=pixelmon:npc_chatting] 1124 105 2003
execute @a[x=1103,y=105,z=2007,r=50,score_TalkTime=0,tag=!Dialogue183] ~ ~ ~ tp @e[x=-504,y=235,z=1288,dy=3,type=pixelmon:npc_chatting] 1130 105 2009
execute @a[x=1103,y=105,z=2007,r=50,score_TalkTime=0,tag=!Dialogue183] ~ ~ ~ tp @e[x=-504,y=235,z=1290,dy=3,type=pixelmon:npc_chatting] 1131 105 2005
execute @a[x=1131,y=105,z=2005,r=20,score_TalkTime=0,tag=!Dialogue184] ~ ~ ~ execute @s[tag=Dialogue183] ~ ~ ~ tp @e[x=-504,y=235,z=1296,dy=3,type=pixelmon:npc_trainer] 1131 105 2005

#Dialogue 186
#Museum learning about art piece
execute @a[x=-83,y=77,z=355,r=7,score_TalkTime=0,tag=Dialogue185] ~ ~ ~ scoreboard players set @s[tag=!Dialogue186] DialogueTrigger 186

#Rotates paintings to vandalized
execute @p[x=-79,y=103,z=326,r=15,tag=Dialogue185] ~ ~ ~ execute @s[tag=Dialogue214] ~ ~ ~ entitydata @e[x=-79,y=103,z=326,r=1,type=item_frame] {Item:{id:"minecraft:diamond_hoe",Count:1b,Damage:202s}}
execute @p[x=-79,y=103,z=326,r=15,tag=!Dialogue185] ~ ~ ~ execute @s[tag=!Dialogue214] ~ ~ ~ entitydata @e[x=-79,y=103,z=326,r=1,type=item_frame] {Item:{id:"minecraft:diamond_hoe",Count:1b,Damage:202s}}
execute @p[x=-79,y=103,z=326,r=15,tag=Dialogue185] ~ ~ ~ execute @s[tag=!Dialogue214] ~ ~ ~ entitydata @e[x=-79,y=103,z=326,r=1,type=item_frame] {Item:{id:"minecraft:diamond_hoe",Count:1b,Damage:217s}}

#Dialogue 187
#Museum director vandal talk
execute @a[x=-80,y=100,z=327,dx=9,dy=6,dz=7,score_TalkTime=0,tag=Dialogue185] ~ ~ ~ scoreboard players set @s[tag=!Dialogue187] DialogueTrigger 187

#Dialogue 189
#Lumiose Alley #1 trainer
execute @a[x=-221,y=101,z=-618,r=20,score_TalkTime=0,tag=Dialogue188] ~ ~ ~ execute @s[tag=!Dialogue189] ~ ~ ~ tp @e[x=-504,y=245,z=1284,dy=3,type=pixelmon:npc_trainer] -269 101 -619

#Dialogue 190
#Alley #2 trainer
execute @a[x=-122,y=101,z=-608,r=20,score_TalkTime=0,tag=Dialogue189] ~ ~ ~ execute @s[tag=!Dialogue190] ~ ~ ~ tp @e[x=-504,y=245,z=1292,dy=3,type=pixelmon:npc_trainer] -95 101 -609

#Dialogue 191
#Alley #3 Looker & Black Belt
execute @a[x=11,y=101,z=-533,r=7,score_TalkTime=0,tag=Dialogue190] ~ ~ ~ scoreboard players set @s[tag=!Dialogue191] DialogueTrigger 191
execute @a[x=11,y=101,z=-533,r=30,score_TalkTime=0,tag=Dialogue190] ~ ~ ~ execute @s[tag=!Dialogue191] ~ ~ ~ tp @e[x=-504,y=250,z=1284,dy=3,type=pixelmon:npc_chatting] 11 101 -533

#Alley #4 Trainer
execute @a[x=-391,y=101,z=-275,r=30,score_TalkTime=0,tag=Dialogue191] ~ ~ ~ execute @s[tag=!Dialogue192] ~ ~ ~ tp @e[x=-504,y=250,z=1290,dy=3,type=pixelmon:npc_trainer] -391 101 -275

#Dialogue 194
#Looker Bureau return Butler
execute @a[x=-77,y=100,z=394,r=10,score_TalkTime=0,tag=Dialogue193] ~ ~ ~ execute @s[tag=!Dialogue194] ~ ~ ~ tp @e[x=-504,y=100,z=1302,dy=3,type=pixelmon:npc_trainer] -77 101 394

#Dialogue 195
#Hotel Richissime Malva
execute @a[x=-494,y=143,z=325,dx=6,dy=5,dz=8,score_TalkTime=0,tag=!Dialogue195] ~ ~ ~ scoreboard players set @s[tag=Dialogue194] DialogueTrigger 195
execute @a[x=-490,y=144,z=336,r=20,tag=!Dialogue195] ~ ~ ~ execute @s[tag=Dialogue194] ~ ~ ~ tp @e[x=-504,y=100,z=1306,dy=3,type=pixelmon:npc_trainer] -491 144 316

#Dialogue 197
#Lysandre Labs Malva
execute @a[x=-296,y=81,z=443,r=8,score_TalkTime=0,tag=Dialogue196] ~ ~ ~ scoreboard players set @s[tag=!Dialogue197] DialogueTrigger 197
execute @a[x=-295,y=89,z=393,r=8,score_TalkTime=0,tag=Dialogue197] ~ ~ ~ scoreboard players set @s[tag=!Dialogue198] DialogueTrigger 198

#Dialogue 199
#Lysandre Labs Nix pre-battle
scoreboard players set @a[x=-299,y=28,z=328,dx=7,dy=5,dz=9,score_TalkTime=0,tag=!Dialogue199] DialogueTrigger 199
execute @a[x=-299,y=28,z=328,dx=7,dy=5,dz=9,score_TalkTime=0,tag=!Dialogue200] ~ ~ ~ tp @e[x=-504,y=105,z=1300,dy=3,type=pixelmon:npc_trainer] -296 29 328

#Dialogue 201
#Lysandre Labs Nix talking about Xerosic Notes
execute @a[x=-295,y=29,z=310,r=8,score_TalkTime=0,tag=Dialogue200] ~ ~ ~ scoreboard players set @s[tag=!Dialogue201] DialogueTrigger 201

#Dialogue 208
#Post-reading all Xerosic notes
execute @a[x=-306,y=28,z=280,dx=22,dy=20,dz=47,score_TalkTime=0,tag=Dialogue202] ~ ~ ~ execute @s[tag=Dialogue203] ~ ~ ~ execute @s[tag=Dialogue204] ~ ~ ~ execute @s[tag=Dialogue205] ~ ~ ~ execute @s[tag=Dialogue206] ~ ~ ~ execute @s[tag=Dialogue207] ~ ~ ~ scoreboard players set @s[tag=!Dialogue208] DialogueTrigger 208

#Dialogue 209
#Lysandre Labs Xerosic tping in
execute @a[x=-305,y=28,z=318,dx=20,dy=5,dz=10,score_TalkTime=0,tag=Dialogue208] ~ ~ ~ scoreboard players set @s[tag=!Dialogue209] DialogueTrigger 209

#Dialogue 213
#Lysandre Labs final Essentia tp in if needed
execute @a[x=-295,y=32,z=297,r=15,score_TalkTime=0,tag=Dialogue212] ~ ~ ~ execute @s[tag=!Dialogue213] ~ ~ ~ tp @e[x=-504,y=110,z=1306,dy=3,type=pixelmon:npc_trainer] -295 32 297

#Dialogue 216
#Museum artist follow-up
execute @a[x=-83,y=77,z=355,r=7,score_TalkTime=0,tag=Dialogue214] ~ ~ ~ scoreboard players set @s[tag=!Dialogue216] DialogueTrigger 216


#----------



#Dialogue 264
#Shalour City Intriguing Stone hiker prompt
scoreboard players set @a[x=-1563,y=84,z=-844,r=7,score_TalkTime=0,tag=!Dialogue264] DialogueTrigger 264 {Inventory:[{id:"minecraft:prismarine_crystals"}]}




#---------------------------------------------------------
#Ribbons
#/scoreboard players set @e[type=pixelmon:pixelmon,r=10] RibbonApply 11

#Ribbon Application functions (runs on Pokemon if obtained a RibbonApply score to add new ribbons and keep existing)
execute @a ~ ~ ~ /function world:ribbonapply if @e[type=pixelmon:pixelmon,r=10,score_RibbonApply_min=1]


#scoreboard objectives add RibbonApply dummy
#scoreboard objectives add RibbonApplyCalc dummy

#1 -	KALOS_CHAMPION
#2 -	TRAINING
#3 -	SKILLFUL_BATTLER
#4 -	EXPERT_BATTLER
#5 -	BEST_FRIENDS
#6 -	EFFORT
#7 -	FOOTPRINT
#8 -	ALERT
#9 -	SHOCK
#10 -	DOWNCAST
#11 -	CARELESS
#12 -	RELAX
#13 -	SNOOZE
#14 -	SMILE


#Pokemon League Hall of Fame Room
scoreboard players set @e[x=-2032,y=5,z=1910,dx=68,dy=50,dz=68,type=pixelmon:pixelmon] RibbonApply 1

#Footprint Ribbon
execute @e[x=-1700,y=80,z=-827,r=10,type=pixelmon:pixelmon] ~ ~ ~ function data:calculatelevels
execute @e[x=-1700,y=80,z=-827,r=10,type=pixelmon:pixelmon,score_Temp_min=0,score_Temp=30] ~ ~ ~ tellraw @a[r=10] {"text":"<Ace Trainer> ...Hmmm. It's hard to tell..."}
execute @e[x=-1700,y=80,z=-827,r=10,type=pixelmon:pixelmon,score_Temp_min=31,score_Temp=50] ~ ~ ~ tellraw @a[r=10] {"text":"<Ace Trainer> if you travel with your Pokémon from now on, I’m sure it will grow!"}
execute @e[x=-1700,y=80,z=-827,r=10,type=pixelmon:pixelmon,score_Temp_min=51,score_Temp=69] ~ ~ ~ tellraw @a {"text":"<Ace Trainer> You've raised it quite well. I feel your love for this Pokémon."}
#Applies ribbon if high-enough level
scoreboard players set @e[x=-1700,y=80,z=-827,r=10,type=pixelmon:pixelmon,score_Temp_min=70] RibbonApply 7
#Returns to Poke Ball if under level 70
execute @e[x=-1700,y=80,z=-827,r=10,type=pixelmon:pixelmon,score_Temp_min=0,score_Temp=69] ~ ~ ~ entitydata @s {Dimension:1}



#Best Friends Ribbon, Lumiose Gym
scoreboard players set @e[x=-1827,y=99,z=-1705,dx=23,dy=8,dz=20,type=pixelmon:pixelmon,score_Temp_min=1] Temp 0
execute @e[x=-1827,y=99,z=-1705,dx=23,dy=8,dz=20,type=pixelmon:pixelmon] ~ ~ ~ function data:calculatefriendship

execute @e[x=-1827,y=99,z=-1705,dx=23,dy=8,dz=20,type=pixelmon:pixelmon,score_Temp_min=0,score_Temp=50] ~ ~ ~ tellraw @a[r=10] {"text":"<Bonnie> Sort of friends, perhaps? Am I right?"}
execute @e[x=-1827,y=99,z=-1705,dx=23,dy=8,dz=20,type=pixelmon:pixelmon,score_Temp_min=51,score_Temp=100] ~ ~ ~ tellraw @a[r=10] {"text":"<Bonnie> Becoming good friends! I can tell!"}
execute @e[x=-1827,y=99,z=-1705,dx=23,dy=8,dz=20,type=pixelmon:pixelmon,score_Temp_min=101,score_Temp=150] ~ ~ ~ tellraw @a[r=10] {"text":"<Bonnie> Pretty good friends! Can I pet it?"}
execute @e[x=-1827,y=99,z=-1705,dx=23,dy=8,dz=20,type=pixelmon:pixelmon,score_Temp_min=151,score_Temp=200] ~ ~ ~ tellraw @a[r=10] {"text":"<Bonnie> Really good friends! I want to play with it!"}
execute @e[x=-1827,y=99,z=-1705,dx=23,dy=8,dz=20,type=pixelmon:pixelmon,score_Temp_min=200,score_Temp=254] ~ ~ ~ tellraw @a[r=10] {"text":"<Bonnie> Really, really good friends! I want to give it Poké Puffs and play with it!"}
scoreboard players set @e[x=-1827,y=99,z=-1705,dx=23,dy=8,dz=20,type=pixelmon:pixelmon,score_Temp_min=255,score_Temp=255] RibbonApply 5

execute @e[x=-1827,y=99,z=-1705,dx=23,dy=8,dz=20,type=pixelmon:pixelmon,score_Temp_min=0,score_Temp=254] ~ ~ ~ entitydata @s {Dimension:1}




#Effort Ribbon, Laverre Town

scoreboard players set @e[x=-201,y=89,z=-1520,r=10,type=pixelmon:pixelmon,score_Temp_min=1] Temp 0
execute @e[x=-201,y=89,z=-1520,r=10,type=pixelmon:pixelmon] ~ ~ ~ function data:calculateevtotal

execute @e[x=-201,y=89,z=-1520,r=10,type=pixelmon:pixelmon,score_Temp_min=0,score_Temp=509] ~ ~ ~ tellraw @a[r=10] {"text":"<Fan Club Head> Mm-hmm! It is definitely making an effort! However, it will have to work a little harder if it wants to get a special something from me!"}
scoreboard players set @e[x=-201,y=89,z=-1520,r=10,type=pixelmon:pixelmon,score_Temp_min=510,score_Temp=510] RibbonApply 6

execute @e[x=-201,y=89,z=-1520,r=10,type=pixelmon:pixelmon,score_Temp_min=0,score_Temp=509] ~ ~ ~ entitydata @s {Dimension:1}





#Hotel guest Ribbons

#Ribbon Gives
#Executes on armor stand for day of the week
#Executes to player with talked dialogue but not ribbon obtained dialogue
#Executes on a Pokemon waiting to obtain ribbon
#Runs ribbon apply function on Pokemon
#Gives player second dialogue for their ribbon

#Ambrette Town Ribbon Tourist (Monday)
#Room x=-1980,y=108,z=640,dx=16,dy=6,dz=16
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=1,score_Weekday=1] ~ ~ ~ scoreboard players tag @a[x=-1980,y=108,z=640,dx=16,dy=6,dz=16,type=player,tag=Dialouge269,tag=!Dialogue270,score_TalkTime=0] add Temp
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=1,score_Weekday=1] ~ ~ ~ execute @a[tag=Temp] ~ ~ ~ execute @e[x=-1980,y=108,z=640,dx=16,dy=6,dz=16,type=pixelmon:pixelmon] ~ ~ ~ scoreboard players set @a[tag=Temp] DialogueTrigger 270
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=1,score_Weekday=1] ~ ~ ~ execute @a[tag=Temp] ~ ~ ~ scoreboard players set @e[x=-1980,y=108,z=640,dx=16,dy=6,dz=16,type=pixelmon:pixelmon] RibbonApply 8
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=1,score_Weekday=1] ~ ~ ~ scoreboard players tag @a[tag=Temp] remove Temp

#tps NPC
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=1,score_Weekday=1] ~ ~ ~ tp @e[x=-477,y=100,z=1296,dy=3,type=pixelmon:npc_chatting] -1970 109 647
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2] ~ ~ ~ tp @e[x=-1970,y=108,z=647,dy=3,type=pixelmon:npc_chatting] -477 101 1296



#Camphrier Town Ribbon Tourist (Tuesday)
#Room x=-1100,y=80,z=-6,dx=16,dy=6,dz=16
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ scoreboard players tag @a[x=-1100,y=80,z=-6,dx=16,dy=6,dz=16,type=player,tag=Dialouge271,tag=!Dialogue272,score_TalkTime=0] add Temp
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @a[tag=Temp] ~ ~ ~ execute @e[x=-1100,y=80,z=-6,dx=16,dy=6,dz=16,type=pixelmon:pixelmon] ~ ~ ~ scoreboard players set @a[tag=Temp] DialogueTrigger 272
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ execute @a[tag=Temp] ~ ~ ~ scoreboard players set @e[x=-1100,y=80,z=-6,dx=16,dy=6,dz=16,type=pixelmon:pixelmon] RibbonApply 9
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ scoreboard players tag @a[tag=Temp] remove Temp

#tps NPC
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=2,score_Weekday=2] ~ ~ ~ tp @e[x=-475,y=100,z=1296,dy=3,type=pixelmon:npc_chatting] -1090 81 1
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=1,score_Weekday=1] ~ ~ ~ tp @e[x=-1090,y=80,z=1,dy=3,type=pixelmon:npc_chatting] -475 101 1296
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=3] ~ ~ ~ tp @e[x=-1090,y=80,z=1,dy=3,type=pixelmon:npc_chatting] -475 101 1296



#Geosenge Town Ribbon Tourist (Wednesday)
#Room x=-2180,y=86,z=-643,dx=16,dy=6,dz=16
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=3,score_Weekday=3] ~ ~ ~ scoreboard players tag @a[x=-2180,y=86,z=-643,dx=16,dy=6,dz=16,type=player,tag=Dialouge273,tag=!Dialogue274,score_TalkTime=0] add Temp
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=3,score_Weekday=3] ~ ~ ~ execute @a[tag=Temp] ~ ~ ~ execute @e[x=-2180,y=86,z=-643,dx=16,dy=6,dz=16,type=pixelmon:pixelmon] ~ ~ ~ scoreboard players set @a[tag=Temp] DialogueTrigger 274
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=3,score_Weekday=3] ~ ~ ~ execute @a[tag=Temp] ~ ~ ~ scoreboard players set @e[x=-2180,y=86,z=-643,dx=16,dy=6,dz=16,type=pixelmon:pixelmon] RibbonApply 10
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=3,score_Weekday=3] ~ ~ ~ scoreboard players tag @a[tag=Temp] remove Temp

#tps NPC
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=3,score_Weekday=3] ~ ~ ~ tp @e[x=-473,y=100,z=1296,dy=3,type=pixelmon:npc_chatting] -2170 87 -636
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=1,score_Weekday=2] ~ ~ ~ tp @e[x=-2170,y=86,z=-636,dy=3,type=pixelmon:npc_chatting] -473 101 1296
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4] ~ ~ ~ tp @e[x=-2170,y=86,z=-636,dy=3,type=pixelmon:npc_chatting] -473 101 1296



#Coumarine Town Ribbon Tourist (Thursday)
#Room x=-1045,y=55,z=-817,dx=16,dy=6,dz=16
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ scoreboard players tag @a[x=-1045,y=55,z=-817,dx=16,dy=6,dz=16,type=player,tag=Dialouge275,tag=!Dialogue276,score_TalkTime=0] add Temp
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ execute @a[tag=Temp] ~ ~ ~ execute @e[x=-1045,y=55,z=-817,dx=16,dy=6,dz=16,type=pixelmon:pixelmon] ~ ~ ~ scoreboard players set @a[tag=Temp] DialogueTrigger 276
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ execute @a[tag=Temp] ~ ~ ~ scoreboard players set @e[x=-1045,y=55,z=-817,dx=16,dy=6,dz=16,type=pixelmon:pixelmon] RibbonApply 11
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ scoreboard players tag @a[tag=Temp] remove Temp

#tps NPC
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=4,score_Weekday=4] ~ ~ ~ tp @e[x=-471,y=100,z=1296,dy=3,type=pixelmon:npc_chatting,tag=Thursday] -1035 56 -810
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=1,score_Weekday=3] ~ ~ ~ tp @e[x=-1035,y=55,z=-810,dy=3,type=pixelmon:npc_chatting,tag=Thursday] -471 101 1296
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=5] ~ ~ ~ tp @e[x=-1035,y=55,z=-810,dy=3,type=pixelmon:npc_chatting,tag=Thursday] -471 101 1296



#Couriway Town Ribbon Tourist (Friday)
#Room x=1569,y=73,z=260,dx=16,dy=6,dz=16
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=5,score_Weekday=5] ~ ~ ~ scoreboard players tag @a[x=1569,y=73,z=260,dx=16,dy=6,dz=16,type=player,tag=Dialouge277,tag=!Dialogue278,score_TalkTime=0] add Temp
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=5,score_Weekday=5] ~ ~ ~ execute @a[tag=Temp] ~ ~ ~ execute @e[x=1569,y=73,z=260,dx=16,dy=6,dz=16,type=pixelmon:pixelmon] ~ ~ ~ scoreboard players set @a[tag=Temp] DialogueTrigger 278
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=5,score_Weekday=5] ~ ~ ~ execute @a[tag=Temp] ~ ~ ~ scoreboard players set @e[x=1569,y=73,z=260,dx=16,dy=6,dz=16,type=pixelmon:pixelmon] RibbonApply 12
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=5,score_Weekday=5] ~ ~ ~ scoreboard players tag @a[tag=Temp] remove Temp

#tps NPC
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=5,score_Weekday=5] ~ ~ ~ tp @e[x=-469,y=100,z=1296,dy=3,type=pixelmon:npc_chatting] 1579 74 267
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=1,score_Weekday=4] ~ ~ ~ tp @e[x=1579,y=73,z=267,dy=3,type=pixelmon:npc_chatting] -469 101 1296
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=6] ~ ~ ~ tp @e[x=1579,y=73,z=267,dy=3,type=pixelmon:npc_chatting] -469 101 1296



#Cyllage Town Ribbon Tourist (Saturday)
#Room x=-2038,y=64,z=-160,dx=16,dy=6,dz=16
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=6,score_Weekday=6] ~ ~ ~ scoreboard players tag @a[x=-2038,y=64,z=-160,dx=16,dy=6,dz=16,type=player,tag=Dialouge279,tag=!Dialogue280,score_TalkTime=0] add Temp
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=6,score_Weekday=6] ~ ~ ~ execute @a[tag=Temp] ~ ~ ~ execute @e[x=-2038,y=64,z=-160,dx=16,dy=6,dz=16,type=pixelmon:pixelmon] ~ ~ ~ scoreboard players set @a[tag=Temp] DialogueTrigger 280
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=6,score_Weekday=6] ~ ~ ~ execute @a[tag=Temp] ~ ~ ~ scoreboard players set @e[x=-2038,y=64,z=-160,dx=16,dy=6,dz=16,type=pixelmon:pixelmon] RibbonApply 13
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=6,score_Weekday=6] ~ ~ ~ scoreboard players tag @a[tag=Temp] remove Temp

#tps NPC
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=6,score_Weekday=6] ~ ~ ~ tp @e[x=-467,y=100,z=1296,dy=3,type=pixelmon:npc_chatting] -2028 65 -153
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=1,score_Weekday=5] ~ ~ ~ tp @e[x=-2028,y=65,z=-153,dy=3,type=pixelmon:npc_chatting] -467 101 1296
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=7] ~ ~ ~ tp @e[x=-2028,y=65,z=-153,dy=3,type=pixelmon:npc_chatting] -467 101 1296


#Coumarine Town Ribbon Tourist (Sunday)
#Room x=-1045,y=55,z=-817,dx=16,dy=6,dz=16
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=7,score_Weekday=7] ~ ~ ~ scoreboard players tag @a[x=-1045,y=55,z=-817,dx=16,dy=6,dz=16,type=player,tag=Dialouge281,tag=!Dialogue282,score_TalkTime=0] add Temp
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=7,score_Weekday=7] ~ ~ ~ execute @a[tag=Temp] ~ ~ ~ execute @e[x=-1045,y=55,z=-817,dx=16,dy=6,dz=16,type=pixelmon:pixelmon] ~ ~ ~ scoreboard players set @a[tag=Temp] DialogueTrigger 282
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=7,score_Weekday=7] ~ ~ ~ execute @a[tag=Temp] ~ ~ ~ scoreboard players set @e[x=-1045,y=55,z=-817,dx=16,dy=6,dz=16,type=pixelmon:pixelmon] RibbonApply 14
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=7,score_Weekday=7] ~ ~ ~ scoreboard players tag @a[tag=Temp] remove Temp

#tps NPC
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=7,score_Weekday=7] ~ ~ ~ tp @e[x=-465,y=100,z=1296,dy=3,type=pixelmon:npc_chatting,tag=Sunday] -1035 56 -810
execute @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,score_Weekday_min=1,score_Weekday=6] ~ ~ ~ tp @e[x=-1035,y=55,z=-810,dy=3,type=pixelmon:npc_chatting,tag=Sunday] -465 101 1296












#---------------------------------------------------------
#World Barriers

#Adds skip condition for if player is in the randomizer function

#Aquacorde pre-starter
tellraw @a[x=460,y=101,z=1361,dx=20,dy=10,dz=15,score_StarterPick=0,score_TalkTime=0] ["",{"text":"<"},{"text":"Serena","color":"gold"},{"text":"> "},{"selector":"@p[x=460,y=101,z=1361,dx=20,dy=10,dz=15,score_StarterPick=0]"},{"text":"! This way! Over here!"}]
tp @a[x=460,y=101,z=1361,dx=20,dy=10,dz=15,score_StarterPick=0] ~ 108 ~10

#Aquacorde Mom's Letter
tellraw @a[x=460,y=101,z=1361,dx=20,dy=10,dz=15,tag=!Dialogue7,score_StarterPick_min=1] {"text":"Deliver the Prof's Letter to your mom!","italic":true,"color":"gray"}
tp @a[x=460,y=101,z=1361,dx=20,dy=10,dz=15,tag=!Dialogue7,score_StarterPick_min=1] ~ 108 ~10

#----------------

#Lumisose Blackout Southern Blvd
tellraw @a[x=64,y=101,z=-287,dx=75,dy=10,dz=20,tag=!LumiosePower] {"text":"<Worker> I\u2019m sorry. There\u2019s a blackout. You can\u2019t go any farther until it\u2019s fixed."}
tp @a[x=64,y=101,z=-287,dx=75,dy=10,dz=20,tag=!LumiosePower,type=player] ~-9 ~ ~10

#Vert Plaza Blackout
tellraw @a[x=-30,y=101,z=-181,r=10,tag=!LumiosePower] {"text":"<Worker> I\u2019m sorry. There\u2019s a blackout. You can\u2019t go any farther until it\u2019s fixed."}
tp @a[x=-30,y=101,z=-181,r=10,tag=!LumiosePower,type=player] ~8 ~ ~10

#Vernal Ave
tellraw @a[x=-204,y=100,z=-149,dx=46,dy=10,dz=20,tag=!LumiosePower] {"text":"<Worker> I\u2019m sorry. There\u2019s a blackout. You can\u2019t go any farther until it\u2019s fixed."}
tp @a[x=-204,y=100,z=-149,dx=46,dy=10,dz=20,tag=!LumiosePower,type=player] ~ ~ ~10

#Bleu Plaz
tellraw @a[x=-331,y=101,z=-183,r=10,tag=!LumiosePower] {"text":"<Worker> I\u2019m sorry. There\u2019s a blackout. You can\u2019t go any farther until it\u2019s fixed."}
tp @a[x=-331,y=101,z=-183,r=10,tag=!LumiosePower,type=player] ~-8 ~ ~10

#Northern Blvd
tellraw @a[x=-504,y=100,z=-437,dx=62,dy=10,dz=27,tag=!LumiosePower] {"text":"<Worker> I\u2019m sorry. There\u2019s a blackout. You can\u2019t go any farther until it\u2019s fixed."}
tp @a[x=-504,y=100,z=-437,dx=62,dy=10,dz=27,tag=!LumiosePower,type=player] ~ ~ ~10

#Estival
tellraw @a[x=-427,y=100,z=-335,dx=11,dy=10,dz=49,tag=!LumiosePower] {"text":"<Worker> I\u2019m sorry. There\u2019s a blackout. You can\u2019t go any farther until it\u2019s fixed."}
tp @a[x=-427,y=100,z=-335,dx=11,dy=10,dz=49,tag=!LumiosePower,type=player] ~-10 ~ ~10

#Magenta Plaza
tellraw @a[x=-321,y=101,z=-399,r=10,tag=!LumiosePower,score_TalkTime=0] {"text":"<Worker> I\u2019m sorry. There\u2019s a blackout. You can\u2019t go any farther until it\u2019s fixed."}
tp @a[x=-321,y=101,z=-399,r=10,tag=!LumiosePower,type=player] ~-5 ~ ~-10

#Autumnal Ave
tellraw @a[x=-282,y=101,z=-484,r=10,tag=!LumiosePower,score_TalkTime=0] {"text":"<Worker> I\u2019m sorry. There\u2019s a blackout. You can\u2019t go any farther until it\u2019s fixed."}
tp @a[x=-282,y=101,z=-484,r=10,tag=!LumiosePower,type=player] ~-6 ~ ~5

#Northn Blvd to Shauna
tellraw @a[x=-489,y=100,z=-520,dx=69,dy=6,dz=15,tag=!LumiosePower,score_TalkTime=0] ["",{"text":"<"},{"text":"Shauna","color":"light_purple"},{"text":"> Hey! What are you doing? Let\u2019s go see Prism Tower!"}]
tp @a[x=-489,y=100,z=-520,dx=69,dy=6,dz=15,tag=!LumiosePower] -454 101 -492 -36 ~

tellraw @a[x=-502,y=100,z=-463,dx=60,dy=6,dz=10,tag=!LumiosePower,score_TalkTime=0] ["",{"text":"<"},{"text":"Shauna","color":"light_purple"},{"text":"> Hey! What are you doing? Let\u2019s go see Prism Tower!"}]
tp @a[x=-502,y=100,z=-463,dx=60,dy=6,dz=10,tag=!LumiosePower] ~ ~ ~-10

#----------------

#Route 7, Route 6 block before Snorlax talk
tellraw @a[x=-1207,y=100,z=-55,dx=31,dy=10,dz=11,tag=!Dialogue28,score_TalkTime=0] ["",{"text":"<"},{"text":"Shauna","color":"light_purple"},{"text":"> "},{"selector":"@p[x=-1207,y=100,z=-55,dx=31,dy=10,dz=11,tag=!Dialogue28,type=player]"},{"text":"! They said they were going this way!"}]
tp @a[x=-1207,y=100,z=-55,dx=31,dy=10,dz=11,tag=!Dialogue28,type=player] ~ ~ ~10

#Ambrette Talk to Fossil Lab
tellraw @a[x=-1908,y=140,z=618,dx=10,dy=10,dz=14,score_TalkTime=0,tag=!Dialogue39] ["",{"text":"<"},{"text":"Serena","color":"gold"},{"text":"> Hey "},{"selector":"@a[x=-1908,y=140,z=618,dx=10,dy=10,dz=14,score_TalkTime=0,tag=!Dialogue39]"},{"text":"! The Fossil Lab is this way!"}]
tp @a[x=-1908,y=140,z=618,dx=10,dy=10,dz=14,tag=!Dialogue39] ~-10 ~ ~

#Glittering Cave first Team Flare grunt pulling player back
tellraw @a[x=-1423,y=147,z=309,dx=10,dy=5,dz=4,tag=!Dialogue41,score_TalkTime=0] {"text":"<Team Flare Grunt> Get back here!"}

#Glittering Cave Double Flare block
tp @a[x=-1442,y=147,z=269,dx=6,dy=5,dz=8,type=player,tag=!Dialogue43] ~6 ~ ~

#Route 8 Pre-Fossil block
tellraw @a[x=-2234,y=83,z=337,dx=283,dy=30,dz=5,type=player,tag=!Dialogue44] {"text":"<...> W-w-wait! Stop! I dropped the Fossil I was taking to the Fossil Lab in Ambrette Town. I\u2019m really sorry, but could you wait a little bit until I find it?"}
tp @a[x=-2234,y=83,z=337,dx=283,dy=30,dz=5,type=player,tag=!Dialogue44] -1971 100 355 ~ ~

#Geosenge Town Battle Korrina to continue
tellraw @a[x=-2088,y=103,z=-703,dx=10,dy=10,dz=26,tag=!Dialogue54,score_TalkTime=0] {"text":"Win against Korrina to continue!","italic":true,"color":"gray"}
tp @a[x=-2088,y=103,z=-703,dx=10,dy=10,dz=26,tag=!Dialogue54] ~-10 ~ ~

#Shalour City Hiker directing to Trevor and Tierno
tellraw @a[x=-1578,y=80,z=-853,dx=13,dy=12,dz=8,tag=!Dialogue56,score_TalkTime=0] {"text":"<Hiker> I\u2019m really sorry, but I\u2019m looking for something."}
tp @a[x=-1578,y=80,z=-853,dx=13,dy=12,dz=8,tag=!Dialogue56] ~ ~ ~10

#Tower of Mastery pre-Korrina gym
tellraw @a[x=-1705,y=96,z=-1202,dx=13,dy=10,dz=10,tag=!Korrina,score_TalkTime=0] {"text":"<Tower Guard> Only those who have been approved may climb the Tower of Mastery!"}
tp @a[x=-1705,y=96,z=-1202,dx=13,dy=10,dz=10,tag=!Korrina] -1692 93 -1207

#Route 14 Defeat Serena to continue
tellraw @a[x=-193,y=99,z=-933,dx=18,dy=10,dz=11,tag=!Dialogue81,score_TalkTime=0] ["",{"text":"<"},{"text":"Serena","color":"gold"},{"text":"> Come on! Let's battle."}]
tp @a[x=-193,y=99,z=-933,dx=18,dy=10,dz=11,tag=!Dialogue81] ~ ~ ~10

#Route 14 visit Scary House
tellraw @a[x=-195,y=99,z=-1243,dx=23,dy=5,dz=15,tag=!Dialogue84,score_TalkTime=0] ["",{"text":"<"},{"text":"Shauna","color":"light_purple"},{"text":"> C'mon! This way!"}]
tp @a[x=-195,y=99,z=-1243,dx=23,dy=5,dz=15,tag=!Dialogue84] ~ ~ ~10

#Poke Ball Interior Flare Blocks
tp @a[x=-136,y=94,z=-1927,dx=4,dy=5,dz=8,type=player,tag=!Dialogue90] ~ ~ ~8
tp @a[x=-134,y=104,z=-1998,dx=6,dy=5,dz=5,type=player,tag=!Dialogue90] ~-7 ~ ~

#Anistar City South Exit
tellraw @a[x=1342,y=107,z=-122,dx=14,dy=6,dz=15,tag=!Dialogue133,score_TalkTime=0] {"text":"<Worker> Stop! The road up ahead was all torn up by the Durant, and we\u2019re still trying to fix it."}
tp @a[x=1342,y=107,z=-122,dx=14,dy=6,dz=15,tag=!Dialogue133] ~ ~ ~-10

#Route 19 Defeat Friends
tellraw @a[x=1404,y=99,z=489,dx=15,dy=10,dz=6,tag=!Dialogue140,score_TalkTime=0] {"text":"Battle your friends on the bridge!","italic":true,"color":"gray"}
tp @a[x=1404,y=99,z=489,dx=15,dy=10,dz=6,tag=!Dialogue140] ~10 ~ ~

#Terminus Cave block Zygarde before Champion
tellraw @a[x=2023,y=41,z=-100,dx=12,dy=20,dz=5,score_PokemonLeague=0] {"text":"<Ace Trainer> It must be dangerous to go further ahead unless you're as strong as the Champion."}
tp @a[x=2023,y=41,z=-100,dx=12,dy=20,dz=5,score_PokemonLeague=0] 2043 41 -98

#Victory Road Western Waterfall
tp @a[x=1599,y=100,z=2327,dx=19,dy=156,dz=13] ~10 ~ ~

#Northern Waterfall
tp @a[x=1615,y=100,z=2183,dx=50,dy=156,dz=24] ~10 ~ ~

#East Waterfall
tp @a[x=1760,y=100,z=2335,dx=15,dy=156,dz=28] ~-10 ~ ~

#Southern Waterfall
tp @a[x=1627,y=100,z=2415,dx=22,dy=156,dz=36] ~ ~ ~-10

#Geosenge Town Eastern block until talk with Team Flare grunt twice
tp @a[x=-2116,y=103,z=-702,dx=10,dy=10,dz=23,type=player,tag=!Dialogue52] ~-10 ~ ~
execute @a[x=-2124,y=104,z=-691,r=20,tag=!Dialogue52] ~ ~ ~ /tp @e[x=-504,y=215,z=1254,dy=3,type=pixelmon:npc_chatting,c=1] -2116 104 -698
execute @a[x=-2124,y=104,z=-691,r=20,tag=!Dialogue52] ~ ~ ~ /tp @e[x=-504,y=215,z=1254,dy=3,type=pixelmon:npc_chatting,c=1] -2116 104 -696
execute @a[x=-2124,y=104,z=-691,r=20,tag=!Dialogue52] ~ ~ ~ /tp @e[x=-504,y=215,z=1254,dy=3,type=pixelmon:npc_chatting,c=1] -2116 104 -694
execute @a[x=-2124,y=104,z=-691,r=20,tag=!Dialogue52] ~ ~ ~ /tp @e[x=-504,y=215,z=1254,dy=3,type=pixelmon:npc_chatting,c=1] -2116 104 -692
execute @a[x=-2124,y=104,z=-691,r=20,tag=!Dialogue52] ~ ~ ~ /tp @e[x=-504,y=215,z=1254,dy=3,type=pixelmon:npc_chatting,c=1] -2116 104 -689
execute @a[x=-2124,y=104,z=-691,r=20,tag=!Dialogue52] ~ ~ ~ /tp @e[x=-504,y=215,z=1254,dy=3,type=pixelmon:npc_chatting,c=1] -2116 104 -687
execute @a[x=-2124,y=104,z=-691,r=20,tag=!Dialogue52] ~ ~ ~ /tp @e[x=-504,y=215,z=1254,dy=3,type=pixelmon:npc_chatting,c=1] -2116 104 -685
execute @a[x=-2124,y=104,z=-691,r=20,tag=!Dialogue52] ~ ~ ~ /tp @e[x=-504,y=215,z=1254,dy=3,type=pixelmon:npc_chatting,c=1] -2116 104 -683
execute @a[x=-2124,y=104,z=-691,r=20,tag=!Dialogue52] ~ ~ ~ /tp @e[x=-504,y=215,z=1252,dy=3,type=pixelmon:npc_chatting] -2120 104 -690.0
execute @a[x=-2124,y=104,z=-691,r=20,tag=!Dialogue52] ~ ~ ~ tp @a[x=-2116,y=103,z=-702,dx=10,dy=10,dz=23,type=player,tag=!Dialogue52] ~-10 ~ ~

execute @a[x=-2124,y=104,z=-691,r=30,tag=Dialogue52] ~ ~ ~ tp @e[x=-2120,y=103,z=-691,dy=3,dz=1,type=pixelmon:npc_chatting] -504 216 1252
execute @a[x=-2124,y=104,z=-691,r=30,tag=Dialogue52] ~ ~ ~ tp @e[x=-2116,y=103,z=-699,dy=3,dz=17,type=pixelmon:npc_chatting] -504 216 1254

#Route 12 block pre-Surf
tellraw @a[x=-1423,y=71,z=-850,dx=20,dy=20,dz=41,tag=!Korrina] {"text":"You need the Rumble Badge to use Surf outside of battle!","italic":true,"color":"gray"}
tp @a[x=-1423,y=71,z=-850,dx=20,dy=20,dz=41,tag=!Korrina] -1440 76 -809

#Route 12 block Surf
tellraw @a[x=-1418,y=71,z=-807,dx=10,dy=20,dz=20,tag=!Korrina] {"text":"You need the Rumble Badge to use Surf outside of battle!","italic":true,"color":"gray"}
tp @a[x=-1418,y=71,z=-807,dx=10,dy=20,dz=20,tag=!Korrina] -1440 76 -809

#Route 12 block until beaten Successor battle
tellraw @a[x=-1448,y=70,z=-814,dx=9,dy=12,dz=8,tag=!Dialogue64] {"text":"<Poke Breeder> Hey, Trainer! Not a good idea to leave the city when you still have pending matters with Korrina."}
tp @a[x=-1448,y=70,z=-814,dx=9,dy=12,dz=8,tag=!Dialogue64] ~-10 80 ~

#Route 13 stairs to Lumiose blocked while Flare occupied Power Plant
tellraw @a[x=-728,y=102,z=-474,dx=10,dy=10,dz=12,tag=!Dialogue75,score_TalkTime=0] {"text":"<Worker> Is the power not getting here? The gate to Lumiose won\u2019t open... The Power Plant is running, so what could be going on?"}
tp @a[x=-728,y=102,z=-474,dx=10,dy=10,dz=12,tag=!Dialogue75] ~-10 ~ ~

#Power Plant before defeating first Flare Grunt
tellraw @a[x=-981,y=53,z=-340,dx=7,dy=8,dz=5,tag=!Dialogue72,score_TalkTime=0] {"text":"Defeat the Team Flare Grunts!","italic":true,"color":"gray"}
tp @a[x=-981,y=53,z=-340,dx=7,dy=8,dz=5,tag=!Dialogue72] ~10 ~ ~

#Power Plant blocking right path of generator room
tellraw @a[x=-984,y=53,z=-352,dx=5,dy=5,dz=3,tag=!Dialogue75,score_TalkTime=0] ["",{"text":"<Team Flare Grunt> ","color":"white"},{"text":"Now I\u2019m mad! I told you I was persistent! I refuse to budge from this spot! Not an inch!"}]
tp @a[x=-984,y=53,z=-352,dx=5,dy=5,dz=3,tag=!Dialogue75] ~ ~ ~7

#Lysandre Labs Nix blocking the way until after battle
tp @a[x=-305,y=28,z=318,dx=20,dy=5,dz=10,tag=!Dialogue200] -297 29 331

#Flare HQ Battle Lysandre to exit lobby
tellraw @a[x=-2372,y=69,z=-987,dx=13,dy=5,dz=4,score_TalkTime=0,tag=!Dialogue123] {"text":"Defeat Lysandre!","italic":true,"color":"gray"}
tp @a[x=-2372,y=69,z=-987,dx=13,dy=5,dz=4,tag=!Dialogue123] ~10 ~ ~

#Geosenge version portal managers

#C-K
execute @a[x=-2130,y=103,z=-702,dx=14,dy=10,dz=23,score_Geosenge_min=2,score_Geosenge=2] ~ ~ ~ tp @e[r=3,type=pixelmon:bike] -317 109 2030
tp @a[x=-2130,y=103,z=-702,dx=14,dy=10,dz=23,score_Geosenge_min=2,score_Geosenge=2] -317 109 2030

#A-I
execute @a[x=-2224,y=103,z=-612,dx=26,dy=10,dz=13,score_Geosenge_min=2,score_Geosenge=2] ~ ~ ~ tp @e[r=3,type=pixelmon:bike] -411 109 2118
tp @a[x=-2224,y=103,z=-612,dx=26,dy=10,dz=13,score_Geosenge_min=2,score_Geosenge=2] -411 109 2118

#J-B
execute @a[x=-423,y=108,z=2123,dx=25,dy=10,dz=15,score_Geosenge_min=2,score_Geosenge=2] ~ ~ ~ tp @e[r=3,type=pixelmon:bike] -2210 104 -593
tp @a[x=-423,y=108,z=2123,dx=25,dy=10,dz=15,score_Geosenge_min=2,score_Geosenge=2] -2210 104 -593

#L-D
execute @a[x=-314,y=108,z=2018,dx=18,dy=10,dz=23,score_Geosenge_min=2,score_Geosenge=2] ~ ~ ~ tp @e[r=3,type=pixelmon:bike] -2112 104 -690
tp @a[x=-314,y=108,z=2018,dx=18,dy=10,dz=23,score_Geosenge_min=2,score_Geosenge=2] -2112 104 -690

#C-G
execute @a[x=-2130,y=103,z=-702,dx=14,dy=10,dz=23,score_Geosenge_min=1,score_Geosenge=1] ~ ~ ~ tp @e[r=3,type=pixelmon:bike] -1040 109 2030
tp @a[x=-2130,y=103,z=-702,dx=14,dy=10,dz=23,score_Geosenge_min=1,score_Geosenge=1] -1040 109 2030

#A-E
execute @a[x=-2224,y=103,z=-612,dx=26,dy=10,dz=13,score_Geosenge_min=1,score_Geosenge=1] ~ ~ ~ tp @e[r=3,type=pixelmon:bike] -1131 109 2117
tp @a[x=-2224,y=103,z=-612,dx=26,dy=10,dz=13,score_Geosenge_min=1,score_Geosenge=1] -1131 109 2117

#F-B
execute @a[x=-1143,y=108,z=2123,dx=25,dy=10,dz=15,score_Geosenge_min=1,score_Geosenge=1] ~ ~ ~ tp @e[r=3,type=pixelmon:bike] -2210 104 -593
tp @a[x=-1143,y=108,z=2123,dx=25,dy=10,dz=15,score_Geosenge_min=1,score_Geosenge=1] -2210 104 -593

#H-D
execute @a[x=-1034,y=108,z=2018,dx=18,dy=10,dz=23,score_Geosenge_min=1,score_Geosenge=1] ~ ~ ~ tp @e[r=3,type=pixelmon:bike] -2112 104 -690
tp @a[x=-1034,y=108,z=2018,dx=18,dy=10,dz=23,score_Geosenge_min=1,score_Geosenge=1] -2112 104 -690


#---------------------------------------------------------
