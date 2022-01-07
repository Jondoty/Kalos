#/function world:worldcommands
#-417 101 1389

#---------------------------------------------------------
#List of 20tps commands for reference

#Portals
#execute @a ~ ~ ~ detect ~ ~ ~ pixelmon:warp_plate 0 function world:portals

#Cut Function for sound and kills items
#function custom:berrytags if @a[score_CutUse_min=1]

#Shiny Particles
#execute @e[x=-685,y=100,z=1388,dy=3,tag=Particles,type=armor_stand] ~ ~ ~ execute @e[tag=Shiny,nbt=!{pixelmon:pixelmon}] ~ ~ ~ /particle reddust ~ ~ ~ 0 10 0 1 10 force @a[r=50]

#Restaurant Battle Start Timer
#execute @a[x=-514,y=0,z=64,dx=526,dy=256,dz=436,tag=RunTimer,score_RestaurantBattle_min=1] ~ ~ ~ function custom:restauranttimer

#Mamoswine Route Removes Snow
#execute @e[x=828,y=108,z=-318,dx=150,dy=10,dz=150,tag=Dialogue100] ~ ~-0.5 ~ /execute @e[nbt=!{pixelmon:pixelmon},name=Mamoswine,distance=..2] ~ ~ ~ /fill ~-3 108 ~-3 ~2 112 ~3 air 0 replace minecraft:snow

#---------------------------------------------------------
#Important triggers for functions of map

#Runs constantly-scanning Music switching and area display titles function
execute as @a[scores={TalkTime=0,TrainerClass=0}] run function kalos:world/musictitles


#Runs TalkTrigger if applicable score (used to nest commands)
execute as @a[scores={TalkTrigger=1..}] run function kalos:triggers/talktrigger


#Relog Trigger (player leaves world and joins back)
execute as @a[scores={relog=1..}] run function kalos:triggers/relog


#Photo-Spot Dismissal if player walks away
execute at @e[type=armor_stand,tag=PhotoSpot] run execute as @a[distance=20..50,scores={DialogueTrigger=0,PhotoSpot=1..}] run scoreboard players set @s TalkTrigger 299


#---------------------------

#Randomizer script on a player
execute as @a[tag=RandomizerTemp,limit=1] run function kalos:randomizer/tpscript

#Randomizer trainers function
execute at @e[x=-688,y=100,z=1136,dy=3,tag=Randomizer] run execute at @a run execute as @e[tag=!Randomized,nbt=!{pixelmon:npc_trainer},distance=..30,limit=1] run function kalos:randomizer/trainers

#Randomize evolutions function
execute at @e[x=-688,y=100,z=1136,dy=3,tag=Randomizer] run execute at @s[tag=Evolutions] run execute at @a run execute as @e[distance=..15,nbt=!{pixelmon:pixelmon}] run function kalos:randomizer/speciescheck




#---------------------------------------------------------
#Holo Caster Music

#Music rate: 86 ticks per 60 seconds

#Runs the click trigger if player uses Carrot on a Stick
execute as @a[scores={click=1..},tag=TempDelay] run function kalos:triggers/click
tag @a[scores={click=1..},tag=!TempDelay] add TempDelay


#Runs music for players holding radio
tag @a[scores={MusicCooldown=0},tag=!RadioOff,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}] add TrackSeek
tag @a[scores={MusicCooldown=0},tag=!RadioOff,nbt={Inventory:[{Slot:0b,id:"minecraft:carrot_on_a_stick"}]}] add TrackSeek
tag @a[scores={MusicCooldown=0},tag=!RadioOff,nbt={Inventory:[{Slot:1b,id:"minecraft:carrot_on_a_stick"}]}] add TrackSeek
tag @a[scores={MusicCooldown=0},tag=!RadioOff,nbt={Inventory:[{Slot:2b,id:"minecraft:carrot_on_a_stick"}]}] add TrackSeek
tag @a[scores={MusicCooldown=0},tag=!RadioOff,nbt={Inventory:[{Slot:3b,id:"minecraft:carrot_on_a_stick"}]}] add TrackSeek
tag @a[scores={MusicCooldown=0},tag=!RadioOff,nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"}]}] add TrackSeek
tag @a[scores={MusicCooldown=0},tag=!RadioOff,nbt={Inventory:[{Slot:5b,id:"minecraft:carrot_on_a_stick"}]}] add TrackSeek
tag @a[scores={MusicCooldown=0},tag=!RadioOff,nbt={Inventory:[{Slot:6b,id:"minecraft:carrot_on_a_stick"}]}] add TrackSeek
tag @a[scores={MusicCooldown=0},tag=!RadioOff,nbt={Inventory:[{Slot:7b,id:"minecraft:carrot_on_a_stick"}]}] add TrackSeek
tag @a[scores={MusicCooldown=0},tag=!RadioOff,nbt={Inventory:[{Slot:8b,id:"minecraft:carrot_on_a_stick"}]}] add TrackSeek
execute as @a[tag=TrackSeek,tag=!RadioOff] run function world:music



#Tests for if player is using the old timings from battle music
tag @a[scores={MusicCooldown=300},tag=OldTimings] add Temp
scoreboard players set @a[tag=Temp] MusicCooldown 21
tag @a[tag=Temp] remove OldTimings
tag @a[tag=Temp] remove Temp


#removes MusicCooldown score for music timings
scoreboard players remove @a[scores={MusicCooldown=1..}] MusicCooldown 1



#Click trigger function on Holo Caster
#execute @a[score_click_min=1] ~ ~ ~ /function triggers:click




#Runs trainer music

#Battle Start
#/tedit add BATTLE_START scoreboard players set @pl TrainerClass 1
#/tedit add BATTLE_START scoreboard players tag @pl add BattleStart
execute as @a[tag=BattleStart] run function kalos:trainers/playerstart

#Battle Win (player)
#/tedit add LOSS scoreboard players tag @pl add BattleWin
execute as @a[tag=BattleWin] run function kalos:trainers/playerwin

#Battle Lose (player)
#/tedit add WIN scoreboard players tag @pl add BattleLose
execute as @a[tag=BattleLose] run function kalos:trainers/playerlose

#Battle Forefit (player)
#/tedit add FORFEIT scoreboard players tag @pl add BattleForefit
execute as @a[tag=BattleForefit] run function kalos:trainers/playerforefit





#---------------------------------------------------------
#Important item functions

#Flash
tellraw @a[scores={Flash=1..}] {"text":"You used Flash!","italic":true,"color":"gray"}
give @a[scores={Flash=1..}] minecraft:firework_rocket{display:{Name:"TM70: Flash",Lore:["Illuminates an area to","the user for 10 minutes."]}}
effect give @a[scores={Flash=1..}] minecraft:night_vision 600 1 true
scoreboard players remove @a[scores={Flash=1..}] Flash 1


#Town Map
scoreboard players set @a[nbt={Inventory:[{tag:{display:{Name:"Town Map"}},Slot:0b}],SelectedItemSlot:0}] MapSelect 1
scoreboard players set @a[nbt={Inventory:[{tag:{display:{Name:"Town Map"}},Slot:1b}],SelectedItemSlot:1}] MapSelect 2
scoreboard players set @a[nbt={Inventory:[{tag:{display:{Name:"Town Map"}},Slot:2b}],SelectedItemSlot:2}] MapSelect 3
scoreboard players set @a[nbt={Inventory:[{tag:{display:{Name:"Town Map"}},Slot:3b}],SelectedItemSlot:3}] MapSelect 4
scoreboard players set @a[nbt={Inventory:[{tag:{display:{Name:"Town Map"}},Slot:4b}],SelectedItemSlot:4}] MapSelect 5
scoreboard players set @a[nbt={Inventory:[{tag:{display:{Name:"Town Map"}},Slot:5b}],SelectedItemSlot:5}] MapSelect 6
scoreboard players set @a[nbt={Inventory:[{tag:{display:{Name:"Town Map"}},Slot:6b}],SelectedItemSlot:6}] MapSelect 7
scoreboard players set @a[nbt={Inventory:[{tag:{display:{Name:"Town Map"}},Slot:7b}],SelectedItemSlot:7}] MapSelect 8
scoreboard players set @a[nbt={Inventory:[{tag:{display:{Name:"Town Map"}},Slot:8b}],SelectedItemSlot:8}] MapSelect 9
scoreboard players set @a[nbt={Inventory:[{tag:{display:{Name:"Town Map"}},Slot:-106b}]}] MapSelect 10
execute as @a[scores={MapSelect=1..}] run function kalos:hms/townmap

#Escape Rope
execute as @a[scores={EscapeRopeUse=1..}] run function kalos:hms/escaperope


#Clothing Room Prompts
execute at @e[type=armor_stand,name=ClothingRoom] run tellraw @a[distance=..6,tag=!ClothingTalked] ["",{"text":"It's a fitting room! What do you want to change?\n    ["},{"text":"Hats","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 40"}},{"text":"]    ["},{"text":"Shirts","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 43"}},{"text":"]    ["},{"text":"Pants","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 46"}},{"text":"]    ["},{"text":"Shoes","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 49"}},{"text":"]"}]
execute at @e[type=armor_stand,name=ClothingRoom] run scoreboard players enable @a[distance=..6,tag=!ClothingTalked] TalkTrigger
execute at @e[type=armor_stand,name=ClothingRoom] run tag @a[distance=..6,tag=!ClothingTalked] add ClothingTalked
execute at @e[type=armor_stand,name=ClothingRoom] run tag @a[distance=7..20,tag=ClothingTalked] remove ClothingTalked


#---------------------------------------------------------
#Interactable World Objects and Locations

#Trash Cans
execute as @a[scores={TrashTrigger=1..}] run function kalos:triggers/trashtrigger

#Rock Smash
execute as @a[scores={RockTrigger=1..}] run function kalos:triggers/rocksmashtrigger

#Ambush Encounters
execute at @e[type=armor_stand,tag=AmbushEncounter] run execute at @s[tag=!Bush] run execute as @a[distance=..2] run function kalos:world/ambushencounter
execute at @e[type=armor_stand,tag=AmbushEncounter] run execute at @s[tag=Bush] run execute as @a[distance=..7] run function kalos:world/ambushencounter

#Honey
execute as @a[scores={HoneyUse=1..}] run function kalos:hms/honey


#Runs Berry-Tree gives
execute at @e[type=armor_stand,tag=Berry_Tree] run execute as @a[distance=..5] run function kalos:world/berrygive

#Player jumping in Strength Pits
execute at @e[type=armor_stand,name=StrengthPit] run execute at @a[dx=6,dy=3,dz=6] run function kalos:hms/strengthpit

#Runs Strength function
execute as @a[scores={StrengthTrigger=1..}] run function kalos:hms/strength

#Adds Shiny Particles tag
execute at @a run tag @e[distance=..50,nbt=!{pixelmon:pixelmon},nbt={IsShiny:1b,OwnerUUID:""}] add Shiny

#Particles:
#/execute @e[x=-685,y=100,z=1388,dy=3,tag=Particles,type=armor_stand] ~ ~ ~ execute @e[tag=Shiny,nbt=!{pixelmon:pixelmon}] ~ ~ ~ /particle reddust ~ ~ ~ 0 10 0 1 10 force @a[r=50]

#Battle Maison Wins and Loss Functions
execute as @a[x=1225,y=76,z=1545,distance=..40,tag=MaisonLoss] run function kalos:triggers/battlemaisonlose
execute as @a[x=1225,y=76,z=1545,distance=..40,tag=MaisonWin] run function kalos:triggers/battlemaisonwin

#Battle Maison Aligns Pokemon
execute as @a[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,tag=BattleMaisonMusic] run function kalos:data/maisonalign
execute as @a[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,tag=EliteFourBattleMusic] run function kalos:data/maisonalign

#---------------------------------------------------------
#Adds night vision in specific areas

#Radiant Chamber
effect give @a[x=-1960,y=15,z=1871,dx=110,dy=40,dz=110] minecraft:night_vision 15 1 true

#Flare HQ
effect give @a[x=-2526,y=0,z=-1074,dx=232,dy=95,dz=167] minecraft:night_vision 15 1 true

#Gyms
effect give @a[x=-2027,y=0,z=-2285,dx=1319,dy=256,dz=498] minecraft:night_vision 15 1 true

#Starters rooms
effect give @a[x=-1107,y=99,z=1171,dx=123,dy=30,dz=227] minecraft:night_vision 15 1 true

#Pokeball Factory Interior
#effect @a[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188] minecraft:night_vision 15 1 true
#execute @a[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188] ~ ~ ~ setblock -593 100 1158 redstone_block


#---------------------------------------------------------

#Runs Fly tp
execute as @a[scores={Fly=1..}] run function kalos:hms/fly

#Fly Teleport
execute as @a[x=1489,y=204,z=-1346,distance=..30] run function kalos:hms/flytp


#Adds Fly tags
tag @a[x=-342,y=0,z=-1577,dx=432,dy=256,dz=274,scores={TalkTime=0},tag=!FlyLaverre] add FlyLaverre
tag @a[x=582,y=0,z=-573,dx=152,dy=256,dz=313,scores={TalkTime=0},tag=!FlyDendemille] add FlyDendemille
tag @a[x=1097,y=0,z=-376,dx=334,dy=256,dz=235,scores={TalkTime=0},tag=!FlyAnistar] add FlyAnistar
tag @a[x=1326,y=0,z=132,dx=360,dy=256,dz=198,scores={TalkTime=0},tag=!FlyCouriway] add FlyCouriway
tag @a[x=984,y=0,z=324,dx=341,dy=256,dz=323,scores={TalkTime=0},tag=!FlySnowbelle] add FlySnowbelle
tag @a[x=1027,y=0,z=1434,dx=331,dy=256,dz=266,scores={TalkTime=0},tag=!FlyKiloude] add FlyKiloude
tag @a[x=-2255,y=0,z=1732,dx=629,dy=256,dz=655,scores={TalkTime=0},tag=!FlyPokemonLeague] add FlyPokemonLeague
tag @a[x=-1204,y=0,z=-888,dx=230,dy=256,dz=380,scores={TalkTime=0},tag=!FlyCoumarine] add FlyCoumarine
tag @a[x=-1816,y=0,z=-987,dx=332,dy=256,dz=254,scores={TalkTime=0},tag=!FlyShalour] add FlyShalour
tag @a[x=-2386,y=0,z=-984,dx=273,dy=256,dz=386,scores={TalkTime=0},tag=!FlyGeosenge] add FlyGeosenge
tag @a[x=395,y=0,z=1236,dx=147,dy=256,dz=205,scores={TalkTime=0},tag=!FlyAquacorde] add FlyAquacorde
tag @a[x=93,y=0,z=384,dx=250,dy=256,dz=139,scores={TalkTime=0},tag=!FlySantalune] add FlySantalune
tag @a[x=-181,y=101,z=-390,distance=..395,scores={TalkTime=0},tag=!FlyLumiose] add FlyLumiose
tag @a[x=-1146,y=0,z=-213,dx=182,dy=256,dz=337,scores={TalkTime=0},tag=!FlyCamphrier] add FlyCamphrier
tag @a[x=-2223,y=0,z=-217,dx=354,dy=256,dz=275,scores={TalkTime=0},tag=!FlyCyllage] add FlyCyllage
tag @a[x=-2115,y=0,z=504,dx=240,dy=256,dz=258,scores={TalkTime=0},tag=!FlyAmbrette] add FlyAmbrette


#---------------------------------------------------------
#Legendaries

#Runs clicked legendary spawn function
execute as @a[tag=LegendActivate] run function kalos:triggers/legendspawn

#Resets Mewtwo
execute at @e[x=-501,y=101,z=1238,distance=..2,nbt=!{pixelmon:statue}] run execute as @a[x=809,y=74,z=525,dx=66,dy=14,dz=92,scores={Mewtwo=0}] run tp @e[x=-501,y=101,z=1238,distance=..2,nbt=!{pixelmon:statue}] 845 75 559

#Zygarde
execute at @e[x=-501,y=110,z=1238,distance=..2,nbt=!{pixelmon:statue}] run execute as @a[x=2015,y=61,z=-176,distance=..50,scores={Zygarde=0}] run tp @e[x=-501,y=110,z=1238,distance=..2,nbt=!{pixelmon:statue}] 2015 61 -174

#Diancie
execute at @e[x=-501,y=128,z=1238,distance=..2,nbt=!{pixelmon:statue}] run execute as @a[x=-1707,y=2,z=-437,distance=..50,scores={Diancie=0}] run tp @e[x=-501,y=128,z=1238,distance=..2,nbt=!{pixelmon:statue}] -1707 2 -437

#----------

#Bird Spawns
execute as @a[tag=!Dialogue167,scores={PokemonLeague=1..,StarterPick=1..}] run execute if block ~ ~ ~ minecraft:grass run scoreboard players set @s Grass 1

#Articuno Activate
scoreboard players set @a[tag=!Dialogue167,scores={Grass=1..,PokemonLeague=1..,TalkTime=0,Articuno=0..4,StarterPick=1}] DialogueTrigger 167

#Zapdos Activate
scoreboard players set @a[tag=!Dialogue167,scores={Grass=1..,PokemonLeague=1..,TalkTime=0,Zapdos=0..4,StarterPick=2}] DialogueTrigger 167

#Moltres Activate
scoreboard players set @a[tag=!Dialogue167,scores={Grass=1..,PokemonLeague=1..,TalkTime=0,Moltres=0..4,StarterPick=3}] DialogueTrigger 167


scoreboard players set @a[tag=!Dialogue167,scores={PokemonLeague=1..,Grass=1..}] Grass 0

#---------------------------------------------------------
#Story Dialogues

#Primary Dialogue function
execute as @a[scores={DialogueTrigger=1..}] run function kalos:dialogue/dialogue

#Holo Caster Calls
execute as @a[scores={HoloCall=1..}] run function kalos:dialogue/holocall

#----------
#Holo Caster Calls

#Holo Call 1
#Camphrier Town Lysandre Labs announcement
scoreboard players set @a[x=-965,y=100,z=-32,distance=..15,tag=!Call1,scores={TalkTime=0,HoloCall=0}] HoloCall 1

#Holo Call 2
#Lumiose City to Route 5 gate Tierno
execute as @a[x=-372,y=101,z=-124,distance=..20,tag=Dialogue22,tag=!Call2,scores={TalkTime=0,HoloCall=0}] run scoreboard players set @s HoloCall 2

#Call 3
#Route 11 Sycamore
scoreboard players set @a[x=-1972,y=113,z=-666,distance=..15,tag=!Call3,scores={TalkTime=0,HoloCall=0}] HoloCall 3

#Holo Call 4
#Courmarine Entrance Serena
scoreboard players set @a[x=-1189,y=79,z=-812,dx=13,dy=10,dz=18,tag=!Call4,scores={TalkTime=0,HoloCall=0}] HoloCall 4


#Holo Call 5
#Courmarine Lysandre
execute as @a[x=-1077,y=115,z=-615,distance=..20,tag=Ramos,scores={TalkTime=0,HoloCall=0}] run scoreboard players set @s[tag=!Call5] HoloCall 5

#Call 7
#Lumiose City Trevor after Lysandre's Cafe
execute as @a[x=-296,y=101,z=-478,distance=..20,tag=Dialogue79,scores={TalkTime=0,HoloCall=0}] run scoreboard players set @s[tag=!Call7] HoloCall 7

#Call 8
#Poke Ball Factory after chasing out Flare
execute as @a[x=-154,y=125,z=-1763,distance=..20,tag=Dialogue90,scores={TalkTime=0,HoloCall=0}] run scoreboard players set @s[tag=!Call8] HoloCall 8

#Call 9
#Route 15 Lysandre
scoreboard players set @a[x=522,y=108,z=-475,distance=..20,tag=!Call9,scores={TalkTime=0,HoloCall=0}] HoloCall 9

#Call 10
#Route 17 Serena
scoreboard players set @a[x=1056,y=108,z=-191,distance=..20,tag=!Call10,scores={TalkTime=0,HoloCall=0}] HoloCall 10

#Route 12
#Anistar City Sycamore
execute as @a[x=1349,y=108,z=-173,distance=..20,tag=!Call12,scores={TalkTime=0,HoloCall=0},tag=Dialogue133] run scoreboard players set @s HoloCall 12

#Call 13
#Looker post-Mega Upgrade in Lumiose City
execute as @a[x=-188,y=101,z=-639,distance=..100,tag=!Call13,scores={TalkTime=0,HoloCall=0,PokemonLeague=1..},tag=Dialogue163] run scoreboard players set @s HoloCall 13

#Call 14
#Lumiose City Looker Chapter 2 Start
execute as @a[x=-181,y=101,z=-390,distance=..395,tag=!Call14,scores={TalkTime=0,HoloCall=0}] run execute as @s[tag=!LookerCooldown,tag=Dialogue175] run scoreboard players set @s HoloCall 14

#Call 15
#Lumiose City Looker Chapter 3 Start
execute as @a[x=-181,y=101,z=-390,distance=..395,tag=!Call15,scores={TalkTime=0,HoloCall=0}] run execute as @s[tag=!LookerCooldown,tag=Dialogue178] run scoreboard players set @s HoloCall 15

#Call 16 Looker Chapter 4 Start
execute as @a[x=-181,y=101,z=-390,distance=..395,tag=!Call16,scores={TalkTime=0,HoloCall=0}] run execute as @s[tag=!LookerCooldown,tag=Dialogue184] run scoreboard players set @s HoloCall 16

#Call 17 & 18
#Malva Newscast and Looker
execute as @a[x=-105,y=101,z=-699,distance=..20,tag=!Call17,scores={TalkTime=0,HoloCall=0},tag=Dialogue187] run scoreboard players set @s HoloCall 17
execute as @a[x=-181,y=101,z=-390,distance=..395,tag=!Call18,scores={TalkTime=0,HoloCall=0},tag=Call17] run scoreboard players set @s HoloCall 18


#Route 19
#Lumiose City Emma after she's read Mimi's note
execute as @a[x=-181,y=101,z=-390,distance=..395,tag=!Call19,scores={TalkTime=0,HoloCall=0},tag=!LookerCooldown,tag=Dialogue225] run scoreboard players set @s HoloCall 19

#Call20
#Lumiose City Post-Xerosic Caught
execute as @a[x=-181,y=101,z=-390,distance=..395,tag=!Call20,scores={TalkTime=0,HoloCall=0},tag=!LookerCooldown,tag=Dialogue213] run scoreboard players set @s HoloCall 20


#Call 21
#Emma calling at Lumiose Museum Exterior
execute as @a[x=-105,y=101,z=-699,distance=..20,tag=!Call21,scores={TalkTime=0,HoloCall=0},tag=Dialogue216] run scoreboard players set @s HoloCall 21










#----------
#Story Dialogues

#Dialogue 1
#Vaniville house, mom's first dialogue
scoreboard players set @a[x=493,y=107,z=1549,dx=18,dy=5,dz=19,scores={TalkTime=0},tag=!Dialogue1] DialogueTrigger 1

#Vaniville Town Doors marker
execute as @a[x=470,y=106,z=1588,distance=..100,tag=!DoorShow] run particle minecraft:end_rod 470.0 110 1588 0 10 0 0.001 10 force @s
tag @a[x=455,y=107,z=1515,dx=29,dy=20,dz=80,tag=!DoorShow] add DoorShow

#Dialogue 3
#Aquacorde friends first group talk
scoreboard players set @a[x=440,y=108,z=1372,distance=..10,scores={TalkTime=0,StarterPick=0},tag=!Dialogue3] DialogueTrigger 3

#Dialogue4
#Aquacorde Friends after Starters
scoreboard players set @a[x=440,y=108,z=1372,distance=..10,scores={TalkTime=0,StarterPick=1..},tag=!Dialogue4] DialogueTrigger 4

#Dialogue5
#Aquacorde Shauna wants to Battle
scoreboard players set @a[x=456,y=107,z=1408,dx=28,dy=5,dz=10,scores={TalkTime=0},tag=!Dialogue5,tag=Dialogue4] DialogueTrigger 5
execute at @a[x=471,y=108,z=1401,distance=..10,scores={StarterPick=1,TalkTime=0},tag=Dialogue5,tag=!Dialogue6] run tp @e[x=-504,y=110,z=1252,dy=3,nbt=!{pixelmon:npc_trainer}] 471 108 1401
execute at @a[x=471,y=108,z=1401,distance=..10,scores={StarterPick=2,TalkTime=0},tag=Dialogue5,tag=!Dialogue6] run tp @e[x=-504,y=110,z=1254,dy=3,nbt=!{pixelmon:npc_trainer}] 471 108 1401
execute at @a[x=471,y=108,z=1401,distance=..10,scores={StarterPick=3,TalkTime=0},tag=Dialogue5,tag=!Dialogue6] run tp @e[x=-504,y=110,z=1256,dy=3,nbt=!{pixelmon:npc_trainer}] 471 108 1401

#Dialogue 8
#Route 3 Friends and adventure rules
scoreboard players set @a[x=392,y=99,z=661,distance=..20,scores={TalkTime=0},tag=!Dialogue8] DialogueTrigger 8

#Dialogue10
#Santalune City Viola's Sister Alexa block and talk
scoreboard players set @a[x=165,y=99,z=375,dx=28,dy=10,dz=14,scores={TalkTime=0},tag=!Dialogue10,tag=!Viola] DialogueTrigger 10
tp @a[x=165,y=99,z=375,dx=28,dy=10,dz=14,tag=!Viola] ~ ~ ~10

#Dialogue11
#Santalune Alexa giving exp share
scoreboard players set @a[x=165,y=99,z=375,dx=28,dy=10,dz=14,scores={TalkTime=0},tag=!Dialogue11,tag=Viola] DialogueTrigger 11

#Dialogue12
#Victory Road & Route 21 Ace Trainer Block
scoreboard players set @a[x=718,y=103,z=399,dx=9,dy=10,dz=16,scores={TalkTime=0},tag=!Dialogue12,tag=!FlySnowbelle] DialogueTrigger 12
tp @a[x=718,y=103,z=399,dx=9,dy=10,dz=16,tag=!FlySnowbelle] ~-10 105 ~

#Dialogue13
#Gym Guide after first badge
scoreboard players set @a[x=-1929,y=137,z=-1908,dx=20,dy=10,dz=20,scores={TalkTime=0},tag=!Dialogue13,tag=Viola] DialogueTrigger 13

#Dialogue 14
#Route 4 Dexio and Sina first Introduction
scoreboard players set @a[x=179,y=100,z=-58,distance=..10,scores={TalkTime=0},tag=!Dialogue14] DialogueTrigger 14

#Dialogue 15
#Route 4 - Lumiose Gate Dexio and Sina
scoreboard players set @a[x=179,y=100,z=-115,distance=..10,scores={TalkTime=0},tag=Dialogue14] DialogueTrigger 15

#Dialogue 16
#Lumiose City Dexio and Sina city Introduction
scoreboard players set @a[x=-15,y=101,z=-135,dx=44,dy=10,dz=23,scores={TalkTime=0},tag=!Dialogue16] DialogueTrigger 16

#Dialogue 18
#Sycamore Lab opening dialogue before battle
scoreboard players set @a[x=-270,y=120,z=82,dx=10,dy=10,dz=16,scores={TalkTime=0},tag=!Dialogue18] DialogueTrigger 18

#Dialogue 19
#Sycamore Lab Switching NPCs
execute as @a[x=-265,y=120,z=91,distance=..10,scores={TalkTime=0},tag=!Dialogue19,tag=Dialogue18] run tp @e[x=-265,y=120,z=91,dy=3,nbt=!{pixelmon:npc_chatting}] -504 136 1252
execute as @a[x=-265,y=120,z=91,distance=..10,scores={TalkTime=0},tag=!Dialogue19,tag=Dialogue18] run tp @e[x=-504,y=135,z=1254,dy=3,nbt=!{pixelmon:npc_trainer}] -265 121 91

#Dialogue 21
#Sycamore Lab Lysandre first meeting
scoreboard players set @a[x=-271,y=99,z=64,dx=36,dy=7,dz=37,scores={TalkTime=0},tag=!Dialogue21,tag=KantoStarters] DialogueTrigger 21

#Dialogue 23
#Route 5 Korrina and Lucario first meet
scoreboard players set @a[x=-624,y=90,z=-172,dx=8,dy=10,dz=25,scores={TalkTime=0},tag=!Dialogue23] DialogueTrigger 23

#Dialogue 24
#Route 5 Trevor and Tierno pre-battle
scoreboard players set @a[x=-757,y=99,z=-134,distance=..10,tag=!Dialogue24,scores={TalkTime=0}] DialogueTrigger 24
execute at @e[x=-504,y=155,z=1254,dy=3,nbt=!{pixelmon:npc_trainer}] run execute as @a[x=-766,y=100,z=-134,distance=..6,tag=Dialogue24,tag=!Dialogue25] run tp @e[x=-504,y=155,z=1254,dy=3,nbt=!{pixelmon:npc_trainer}] -766 100 -134

#Dialogue 26
#Camphrier Town West Block until seeing castle
scoreboard players set @a[x=-1159,y=99,z=-44,dx=12,dy=10,dz=19,tag=!Dialogue26,scores={TalkTime=0},tag=!Dialogue27] DialogueTrigger 26
tp @a[x=-1159,y=99,z=-44,dx=12,dy=10,dz=19,tag=!Dialogue27] ~10 ~ ~

#Dialogue 28
#Route 7 Sleeping Snorlax Intro
scoreboard players set @a[x=-1293,y=100,z=-36,distance=..20,tag=!Dialogue28,scores={TalkTime=0}] DialogueTrigger 28

#Dialogue 30
#Parfum Palace Shauna: Furfrou is this way
scoreboard players set @a[x=-1623,y=100,z=-319,distance=..15,tag=!Dialogue30,scores={TalkTime=0}] DialogueTrigger 30

#Dialogue 31
#Parfum Palace Finding Furfrou
scoreboard players set @a[x=-1691,y=100,z=-317,dx=14,dy=5,dz=7,tag=!Dialogue31,scores={TalkTime=0}] DialogueTrigger 31
execute as @a[x=-1679,y=100,z=-314,distance=..30,scores={TalkTime=0},tag=!Dialogue31] run tp @e[x=-501,y=181,z=1238,dy=3,nbt=!{pixelmon:statue}] -1679 100 -314

#Dialogue 32
#Parfum Palace Firework Show and Flute
execute as @a[x=-1434,y=111,z=-374,distance=..30,tag=!Dialogue32] run tp @e[x=-504,y=175,z=1252,dy=3,nbt=!{pixelmon:npc_chatting}] -1434 111 -374
execute as @a[x=-1436,y=110,z=-401,dx=15,dy=10,dz=54,scores={TalkTime=0},tag=Dialogue31] run scoreboard players set @s[tag=!Dialogue32] DialogueTrigger 32

#Dialogue 33
#Route 7 waking Snorlax
execute as @a[x=-1293,y=100,z=-36,distance=..20,tag=!Dialogue33] run scoreboard players set @s[tag=Dialogue32,scores={TalkTime=0}] DialogueTrigger 33

#Dialogue 34
#Route 7 after Waking Snorlax
execute as @a[x=-1293,y=100,z=-36,distance=..20,tag=Dialogue33] run scoreboard players set @s[tag=!Dialogue34,scores={MusicSteps=1..,TalkTime=0}] DialogueTrigger 34

#Dialogue 35
#Route 7 Friends Double Battle
scoreboard players set @a[x=-1591,y=100,z=-36,distance=..20,tag=!Dialogue35,scores={TalkTime=0}] DialogueTrigger 35
execute as @a[x=-1591,y=100,z=-36,distance=..20,tag=Dialogue35] run execute as @s[x=-1591,y=100,z=-36,distance=..20,tag=!Dialogue36] run tp @e[x=-504,y=180,z=1258,dy=3,nbt=!{pixelmon:npc_trainer}] -1590 100 -34
execute as @a[x=-1591,y=100,z=-36,distance=..20,tag=Dialogue35] run execute as @s[x=-1591,y=100,z=-36,distance=..20,tag=!Dialogue36] run tp @e[x=-504,y=180,z=1260,dy=3,nbt=!{pixelmon:npc_trainer}] -1593 100 -34

execute as @a[x=-1591,y=100,z=-36,distance=..20,tag=Dialogue35] run execute as @s[x=-1591,y=100,z=-36,distance=..20,tag=!Dialogue36,scores={StarterPick=1}] run tp @e[x=-504,y=180,z=1252,dy=3,nbt=!{pixelmon:npc_trainer}] -1593 100 -39
execute as @a[x=-1591,y=100,z=-36,distance=..20,tag=Dialogue35] run execute as @s[x=-1591,y=100,z=-36,distance=..20,tag=!Dialogue36,scores={StarterPick=2}] run tp @e[x=-504,y=180,z=1254,dy=3,nbt=!{pixelmon:npc_trainer}] -1593 100 -39
execute as @a[x=-1591,y=100,z=-36,distance=..20,tag=Dialogue35] run execute as @s[x=-1591,y=100,z=-36,distance=..20,tag=!Dialogue36,scores={StarterPick=3}] run tp @e[x=-504,y=180,z=1256,dy=3,nbt=!{pixelmon:npc_trainer}] -1593 100 -39

#Dialogue 36
#Route 7 friends 2v2 post-battle
scoreboard players set @a[x=-1591,y=100,z=-36,distance=..20,tag=Dialogue36,tag=!Dialogue36,scores={MusicSteps=1..,TalkTime=0}] DialogueTrigger 36

#Dialogue 37
#Route 8 Dexio & Sina
scoreboard players set @a[x=-1942,y=150,z=84,dx=13,dy=10,dz=21,tag=!Dialogue37,scores={TalkTime=0}] DialogueTrigger 37

#Dialogue 38
#Route 8 Serena
scoreboard players set @a[x=-1937,y=150,z=552,dx=17,dy=10,dz=19,tag=!Dialogue38,scores={TalkTime=0}] DialogueTrigger 38

#Dialogue 39
#Ambrette Town Fossil Lab
scoreboard players set @a[x=-1949,y=140,z=579,dx=23,dy=10,dz=26,tag=!Dialogue39,scores={TalkTime=0}] DialogueTrigger 39

#Dialogue 40
#Glittering Cave First Flare encounter
scoreboard players set @a[x=-1437,y=148,z=322,distance=..15,tag=!Dialogue40,scores={TalkTime=0}] DialogueTrigger 40
execute as @e[x=-504,y=195,z=1252,dy=3,nbt=!{pixelmon:npc_trainer}] run execute as @e[x=-1437,y=148,z=322,distance=..20,tag=Dialogue40] run execute as @s[tag=!Dialogue41] run tp @e[x=-504,y=195,z=1252,dy=3,nbt=!{pixelmon:npc_trainer}] -1437 148 322

#Dialogue 42
#Glittering Cave Serena and Flare double battle
scoreboard players set @a[x=-1434,y=148,z=273,distance=..10,tag=!Dialogue42,scores={TalkTime=0}] DialogueTrigger 42
execute at @e[x=-504,y=195,z=1262,dy=3,nbt=!{pixelmon:npc_trainer}] run execute at @e[x=-1434,y=148,z=273,distance=..10,tag=!Dialogue42] run tp @e[x=-504,y=195,z=1262,dy=3,nbt=!{pixelmon:npc_trainer}] -1437 148 275
execute at @e[x=-504,y=195,z=1262,dy=3,nbt=!{pixelmon:npc_trainer}] run execute at @e[x=-1434,y=148,z=273,distance=..10,tag=!Dialogue42] run tp @e[x=-504,y=195,z=1264,dy=3,nbt=!{pixelmon:npc_trainer}] -1437 148 271
execute at @e[x=-504,y=195,z=1262,dy=3,nbt=!{pixelmon:npc_trainer}] run execute at @e[x=-1434,y=148,z=273,distance=..10,tag=!Dialogue42,scores={StarterPick=1}] run tp @e[x=-504,y=195,z=1256,dy=3,nbt=!{pixelmon:npc_trainer}] -1431 148 271
execute at @e[x=-504,y=195,z=1262,dy=3,nbt=!{pixelmon:npc_trainer}] run execute at @e[x=-1434,y=148,z=273,distance=..10,tag=!Dialogue42,scores={StarterPick=2}] run tp @e[x=-504,y=195,z=1258,dy=3,nbt=!{pixelmon:npc_trainer}] -1431 148 271
execute at @e[x=-504,y=195,z=1262,dy=3,nbt=!{pixelmon:npc_trainer}] run execute at @e[x=-1434,y=148,z=273,distance=..10,tag=!Dialogue42,scores={StarterPick=3}] run tp @e[x=-504,y=195,z=1260,dy=3,nbt=!{pixelmon:npc_trainer}] -1431 148 271

#Dialogue 43
#Glittering Cave Double Battle tp away
scoreboard players set @a[x=-1434,y=148,z=273,distance=..10,tag=!Dialogue43,scores={MusicSteps=1..,TalkTime=0}] DialogueTrigger 43

#Dialogue 44 & 45
#Glittering Cave Fossil Prompt
execute as @a[x=-1471,y=147,z=303,distance=..20,tag=!Dialogue44] run tp @e[x=-504,y=200,z=1254,dy=3,nbt=!{pixelmon:npc_chatting}] -1469 148 305
scoreboard players set @a[x=-1471,y=147,z=303,dx=6,dy=5,dz=11,tag=Dialogue44,tag=!Dialogue44,scores={TalkTime=0}] DialogueTrigger 44

#Dialogue 46
#Grant outside of Cyllage Gym giving Strength HM
scoreboard players set @a[x=-1938,y=113,z=2,dx=18,dy=10,dz=17,scores={TalkTime=0},tag=!Dialogue46] DialogueTrigger 46

#Dialogue 47
#Route 10 Team Flare
execute at @a[x=-2208,y=104,z=-450,distance=..20,scores={TalkTime=0},tag=Grant] run scoreboard players set @s[tag=!Dialogue47] DialogueTrigger 47

#Dialogues 48-50
#Route 10 tp in grunts
execute at @e[x=-504,y=210,z=1252,dy=3,nbt=!{pixelmon:npc_trainer}] run execute as @a[x=-2208,y=104,z=-450,distance=..20,tag=!Dialogue48,tag=Grant,tag=Dialogue47] run tp @e[x=-504,y=210,z=1252,dy=3,nbt=!{pixelmon:npc_trainer}] -2208 104 -450
execute at @e[x=-504,y=210,z=1256,dy=3,nbt=!{pixelmon:npc_trainer}] run execute as @a[x=-2190,y=104,z=-522,distance=..20,tag=!Dialogue49,tag=Grant] run tp @e[x=-504,y=210,z=1256,dy=3,nbt=!{pixelmon:npc_trainer}] -2190 104 -522
execute at @e[x=-504,y=210,z=1258,dy=3,nbt=!{pixelmon:npc_trainer}] run execute as @a[x=-2227,y=104,z=-558,distance=..20,tag=!Dialogue50,tag=Grant] run tp @e[x=-504,y=210,z=1258,dy=3,nbt=!{pixelmon:npc_trainer}] -2227 104 -558

#Dialogue 51
#Geosenge first Flare encounter 1
execute as @a[x=-2210,y=104,z=-693,distance=..30,scores={TalkTime=0},tag=Grant] run scoreboard players set @s[tag=!Dialogue51] DialogueTrigger 51

#Dialogue 52
#Geosenge Flare encounter 2
execute as @a[x=-2278,y=104,z=-815,distance=..25,scores={TalkTime=0},tag=Dialogue51] run scoreboard players set @s[tag=!Dialogue52] DialogueTrigger 52

#Dialogue 53
#Geosenge Town Korrina battle
scoreboard players set @a[x=-2109,y=103,z=-703,dx=10,dy=10,dz=26,scores={TalkTime=0},tag=!Dialogue53] DialogueTrigger 53
execute as @e[x=-504,y=220,z=1252,dy=3,nbt=!{pixelmon:npc_trainer}] run execute as @a[x=-2105,y=104,z=-691,distance=..20,tag=Dialogue53,tag=!Dialogue54] run tp @e[x=-504,y=220,z=1252,dy=3,nbt=!{pixelmon:npc_trainer}] -2105 104 -691
execute as @a[x=-2105,y=104,z=-691,distance=..20,tag=Dialogue53,tag=TrainerBattleMusic] run execute as @s[tag=!Dialogue54] run effect give @e[distance=..20,name=Lucario,nbt=!{pixelmon:statue}] minecraft:invisibility 2 1 true

#Dialogue 55
#Reflection Cave Tierno giving Flash
scoreboard players set @a[x=-1580,y=35,z=-220,dx=12,dy=10,dz=17,scores={TalkTime=0},tag=!Dialogue55] DialogueTrigger 55
execute as @a[x=-1580,y=35,z=-220,distance=..40,tag=!Dialogue55] run tp @e[x=-504,y=225,z=1252,dy=3,nbt=!{pixelmon:npc_chatting}] -1575 35 -205

#Dialogue 56
#Shalour City Trevor and Tierno
scoreboard players set @a[x=-1671,y=79,z=-837,dx=23,dy=10,dz=10,scores={TalkTime=0},tag=!Dialogue56] DialogueTrigger 56

#Dialogue 57
#Shalour City Gym Guide
execute as @a[x=-1770,y=84,z=-898,distance=..30,tag=Dialogue61] run tp @e[x=-1770,y=84,z=-898,dy=3,nbt=!{pixelmon:npc_chatting}] -504 231 1258
execute as @a[x=-1770,y=84,z=-898,distance=..30,tag=!Dialogue61] run tp @e[x=-504,y=230,z=1258,dy=3,nbt=!{pixelmon:npc_chatting}] -1770 85 -898

#Dialogue 58
#Shalour City Tierno giving Intriguing Stone
scoreboard players set @a[x=-1694,y=76,z=-925,dx=75,dy=10,dz=20,scores={TalkTime=0},tag=!Dialogue58] DialogueTrigger 58

#Dialogue 61
#Tower of Mastery Serena
execute as @a[x=-1661,y=91,z=-1150,distance=..30,tag=Dialogue60,tag=!Dialogue61,scores={StarterPick=1,DialogueTrigger=0}] run tp @e[x=-504,y=245,z=1252,dy=3,nbt=!{pixelmon:npc_trainer}] -1662 92 -1146
execute as @a[x=-1661,y=91,z=-1150,distance=..30,tag=Dialogue60,tag=!Dialogue61,scores={StarterPick=2,DialogueTrigger=0}] run tp @e[x=-504,y=245,z=1254,dy=3,nbt=!{pixelmon:npc_trainer}] -1662 92 -1146
execute as @a[x=-1661,y=91,z=-1150,distance=..30,tag=Dialogue60,tag=!Dialogue61,scores={StarterPick=3,DialogueTrigger=0}] run tp @e[x=-504,y=245,z=1256,dy=3,nbt=!{pixelmon:npc_trainer}] -1662 92 -1146

#Dialogue 64
#Tower of Mastery tp in Korrina
execute as @a[x=-1635,y=187,z=-1186,distance=..30,tag=Dialogue63,tag=!Dialogue64,scores={DialogueTrigger=0}] run tp @e[x=-504,y=250,z=1252,dy=3,nbt=!{pixelmon:npc_trainer}] -1635 187.5 -1180
execute as @a[x=-1635,y=187,z=-1186,distance=..30,tag=Dialogue63,tag=!Dialogue64,scores={DialogueTrigger=0}] run tp @e[x=-1635,y=187,z=-1180,dy=3,nbt=!{pixelmon:npc_chatting}] -504 251 1254
execute as @a[x=-1635,y=187,z=-1186,distance=..30,tag=KorrinaBattleMusic] run effect give @e[distance=..30,name=Lucario,nbt=!{pixelmon:statue}] minecraft:invisibility 2 1 true

#Dialogue 65
#Shalour City Serena giving Surf
execute as @a[x=-1528,y=79,z=-817,dx=15,dy=10,dz=14,scores={TalkTime=0},tag=Dialogue64,tag=!Dialogue65] run scoreboard players set @s DialogueTrigger 65

#Dialogue 66
#Courmarine Sycamore and Diantha
scoreboard players set @a[x=-1059,y=79,z=-799,dx=14,dy=10,dz=14,scores={TalkTime=0},tag=!Dialogue66] DialogueTrigger 66

#Dialogue 67
#Courmarine Serena outside of Gym
scoreboard players set @a[x=-1092,y=120,z=-713,dx=35,dy=10,dz=14,scores={TalkTime=0},tag=!Dialogue67] DialogueTrigger 67
execute as @a[x=-1092,y=120,z=-713,dx=35,dy=10,dz=14,tag=Dialogue67,tag=!Dialogue68,scores={StarterPick=1,TalkTime=0}] run tp @e[x=-504,y=110,z=1268,dy=3,nbt=!{pixelmon:npc_trainer}] -1078 121 -709
execute as @a[x=-1092,y=120,z=-713,dx=35,dy=10,dz=14,tag=Dialogue67,tag=!Dialogue68,scores={StarterPick=2,TalkTime=0}] run tp @e[x=-504,y=110,z=1270,dy=3,nbt=!{pixelmon:npc_trainer}] -1078 121 -709
execute as @a[x=-1092,y=120,z=-713,dx=35,dy=10,dz=14,tag=Dialogue67,tag=!Dialogue68,scores={StarterPick=3,TalkTime=0}] run tp @e[x=-504,y=110,z=1272,dy=3,nbt=!{pixelmon:npc_trainer}] -1078 121 -709

#Dialogue 69
#Courmarine Dexio and Sina
scoreboard players set @a[x=-1085,y=114,z=-579,dx=20,dy=10,dz=20,tag=!Dialogue69,scores={TalkTime=0,HoloCall=0}] DialogueTrigger 69

#Dialogue 70
#Route 13 Flare Grunt
execute as @a[x=-772,y=104,z=-330,distance=..30,tag=!Dialogue70,tag=Ramos] run tp @e[x=-504,y=120,z=1268,dy=3,nbt=!{pixelmon:npc_trainer}] -772 104 -330

#Hidden Power Plant Pass give
#execute @a[x=-779,y=103,z=-347,distance=..30,tag=Dialogue70,tag=!PowerPlantPass] ~ ~ ~ /execute @e[x=-779,y=102,z=-347,dy=3,type=armor_stand] ~ ~ ~ /particle fireworksSpark ~ ~ ~ 1 2 1 0.1 2 normal @a[tag=!PowerPlantPass]
#execute @e[x=-779,y=103,z=-347,dy=3,type=armor_stand] ~ ~ ~ give @a[r=3,tag=!PowerPlantPass] minecraft:prismarine_shard 1 0 {display:{Lore:["This pass serves as an ID","card for gaining access to","the power plant that lies","along Route 13."]},HideFlags:6}
#execute @e[x=-779,y=103,z=-347,dy=3,type=armor_stand] ~ ~ ~ tellraw @a[r=3,tag=!PowerPlantPass] {"text":"You found a Power Plant Pass!","italic":true,"color":"gray"}
#execute @e[x=-779,y=102,z=-347,dy=3,type=armor_stand] ~ ~ ~ playsound pixelmon:pixelmon.block.pokelootobtained ambient @a[r=3,tag=!PowerPlantPass] ~ ~ ~ 10 1 1
#execute @e[x=-779,y=102,z=-347,dy=3,type=armor_stand] ~ ~ ~ scoreboard players tag @a[r=3,tag=!PowerPlantPass] add PowerPlantPass

#Dialogue 71
#Power Plant Flare Grunts first
scoreboard players set @a[x=-954,y=47,z=-361,dx=22,dy=10,dz=16,scores={TalkTime=0},tag=!Dialogue71] DialogueTrigger 71
execute as @a[x=-954,y=47,z=-361,dx=22,dy=10,dz=16,tag=Dialogue71,tag=!Dialogue72] run tp @e[x=-504,y=125,z=1268,dy=3,nbt=!{pixelmon:npc_trainer}] -949 48 -350

#Power Plant tps in grunts to generator room
execute as @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=!Dialogue73] run tp @e[x=-504,y=130,z=1268,dy=3,nbt=!{pixelmon:npc_trainer}] -982 54 -346
execute as @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=!Dialogue73] run tp @e[x=-504,y=130,z=1270,dy=3,nbt=!{pixelmon:npc_trainer}] -992 54 -310
execute as @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=!Dialogue73] run tp @e[x=-504,y=130,z=1272,dy=3,nbt=!{pixelmon:npc_trainer}] -1029 54 -293
execute as @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=!Dialogue73] run tp @e[x=-504,y=130,z=1274,dy=3,nbt=!{pixelmon:npc_trainer}] -1076 54 -336
execute as @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=!Dialogue73] run tp @e[x=-504,y=130,z=1276,dy=3,nbt=!{pixelmon:npc_trainer}] -1069 54 -363
execute as @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=!Dialogue73] run tp @e[x=-504,y=130,z=1278,dy=3,nbt=!{pixelmon:npc_trainer}] -1029 54 -380
execute as @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=!Dialogue73] run tp @e[x=-504,y=135,z=1268,dy=3,nbt=!{pixelmon:npc_chatting}] -1013 58 -335
execute as @a[x=-1083,y=34,z=-388,dx=109,dy=40,dz=109,tag=!Dialogue73] run tp @e[x=-504,y=135,z=1272,dy=3,nbt=!{pixelmon:npc_chatting}] -1013 58 -339

#Dialogue 73
#Power Plant Admin and Aliana
scoreboard players set @a[x=-1007,y=57,z=-340,dx=14,dy=5,dz=6,scores={TalkTime=0},tag=!Dialogue73] DialogueTrigger 73
execute as @a[x=-1013,y=57,z=-339,distance=..10,tag=Dialogue73,scores={TalkTime=0},tag=!Dialogue74] run tp @e[x=-504,y=135,z=1270,dy=3,nbt=!{pixelmon:npc_trainer}] -1013 58 -335
execute as @a[x=-1013,y=57,z=-339,distance=..10,tag=Dialogue74,scores={TalkTime=0},tag=!Dialogue75] run tp @e[x=-504,y=135,z=1274,dy=3,nbt=!{pixelmon:npc_trainer}] -1013 58 -339

#Route 76
#Route 13 Az
execute as @a[x=-709,y=100,z=-468,distance=..30,tag=!Dialogue76,tag=Dialogue75] run tp @e[x=-504,y=140,z=1268,dy=3,nbt=!{pixelmon:npc_chatting}] -709 100 -468
scoreboard players set @a[x=-719,y=99,z=-474,dx=7,dy=10,dz=12,scores={TalkTime=0},tag=!Dialogue76] DialogueTrigger 76

#Dialogue 77
#Lumiose City Shauna at Route 13 entrance
scoreboard players set @a[x=-509,y=101,z=-497,distance=..20,scores={TalkTime=0},tag=!Dialogue77] DialogueTrigger 77

#Dialogue 78
#Prism Tower turning on
scoreboard players set @a[x=-236,y=100,z=-418,dx=15,dy=10,dz=27,scores={TalkTime=0},tag=!Dialogue78] DialogueTrigger 78

#Dialogue 80
#Route 14 South Friends
scoreboard players set @a[x=-194,y=99,z=-899,dx=30,dy=5,dz=53,scores={TalkTime=0},tag=!Dialogue80] DialogueTrigger 80
execute as @a[x=-175,y=100,z=-884,distance=..15,tag=Dialogue80,scores={TalkTime=0,StarterPick=1},tag=!Dialogue81] run tp @e[x=-504,y=155,z=1270,dy=3,nbt=!{pixelmon:npc_trainer}] -174 100 -887
execute as @a[x=-175,y=100,z=-884,distance=..15,tag=Dialogue80,scores={TalkTime=0,StarterPick=2},tag=!Dialogue81] run tp @e[x=-504,y=155,z=1272,dy=3,nbt=!{pixelmon:npc_trainer}] -174 100 -887
execute as @a[x=-175,y=100,z=-884,distance=..15,tag=Dialogue80,scores={TalkTime=0,StarterPick=3},tag=!Dialogue81] run tp @e[x=-504,y=155,z=1274,dy=3,nbt=!{pixelmon:npc_trainer}] -174 100 -887

#Dialogue 82
#Scary House opening
scoreboard players set @a[x=-231,y=100,z=-1217,distance=..15,scores={TalkTime=0},tag=!Dialogue82] DialogueTrigger 82

#Dialogue 85
#Laverre City Gym ext Shauna and Trevor
execute as @a[x=-93,y=100,z=-1458,distance=..10,scores={TalkTime=0},tag=Valerie,tag=!Dialogue85] run scoreboard players set @s DialogueTrigger 85

#Dialogue 86
#Factory Stairs grunt chasing friends
execute as @a[x=-172,y=117,z=-1643,distance=..5,scores={TalkTime=0},tag=Valerie,tag=!Dialogue86] run scoreboard players set @s DialogueTrigger 86
execute as @a[x=-172,y=117,z=-1643,distance=..30,tag=Valerie,scores={TalkTime=0},tag=!Dialogue86] run tp @e[x=-504,y=170,z=1268,dy=3,nbt=!{pixelmon:npc_chatting}] -172 117 -1642
execute as @a[x=-172,y=117,z=-1643,distance=..30,tag=Valerie,scores={TalkTime=0},tag=!Dialogue86] run tp @e[x=-504,y=170,z=1270,dy=3,nbt=!{pixelmon:npc_chatting}] -172 117 -1645

#Door guard
execute as @p[x=-155,y=125,z=-1715,distance=..30,tag=Dialogue86] run tp @e[x=-158,y=124,z=-1771,dy=3,nbt=!{pixelmon:npc_chatting}] -504 166 1280
execute as @p[x=-155,y=125,z=-1715,distance=..30,tag=!Dialogue86] run tp @e[x=-504,y=165,z=1280,dy=3,nbt=!{pixelmon:npc_chatting}] -158 125 -1771

#Dialogue 87
#Factory Floor Serena and Grunt at door
execute as @a[x=-157,y=125,z=-1774,dx=6,dy=5,scores={TalkTime=0},tag=Dialogue86,tag=!Dialogue87,] run scoreboard players set @s DialogueTrigger 87

execute as @a[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,tag=!Dialogue88,scores={TalkTime=0}] run tp @e[x=-504,y=180,z=1268,dy=3,nbt=!{pixelmon:npc_chatting}] -80 104 -2012
execute as @a[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,tag=!Dialogue88,scores={TalkTime=0}] run tp @e[x=-504,y=180,z=1272,dy=3,nbt=!{pixelmon:npc_chatting}] -83 104 -2010
execute as @a[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,tag=!Dialogue88,scores={TalkTime=0}] run tp @e[x=-504,y=180,z=1276,dy=3,nbt=!{pixelmon:npc_chatting}] -77 104 -2010

#Sets up Factory NPCs
execute as @a[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,tag=!Dialogue90,scores={TalkTime=0}] run tp @e[x=-504,y=175,z=1272,dy=3,nbt=!{pixelmon:npc_trainer}] -134 95 -1919
execute as @a[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,tag=!Dialogue90,scores={TalkTime=0}] run tp @e[x=-504,y=175,z=1274,dy=3,nbt=!{pixelmon:npc_trainer}] -209 89 -1938
execute as @a[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,tag=!Dialogue90,scores={TalkTime=0}] run tp @e[x=-504,y=175,z=1276,dy=3,nbt=!{pixelmon:npc_trainer}] -148 89 -1965
execute as @a[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188,tag=!Dialogue90,scores={TalkTime=0}] run tp @e[x=-504,y=175,z=1278,dy=3,nbt=!{pixelmon:npc_trainer}] -135 104 -1996

#Dialogue 88
#Factory Admin and Scientists in Presidential building
scoreboard players set @a[x=-92,y=102,z=-2020,dx=24,dy=5,dz=16,scores={TalkTime=0},tag=!Dialogue88] DialogueTrigger 88
execute as @a[x=-92,y=102,z=-2020,dx=24,dy=5,dz=16,tag=!Dialogue89,scores={TalkTime=0},tag=Dialogue88] run tp @e[x=-504,y=180,z=1270,dy=3,nbt=!{pixelmon:npc_trainer}] -80 104 -2012

#Dialogue 90
#Factory post-double battle
execute as @a[x=-92,y=102,z=-2020,dx=24,dy=5,dz=16,tag=Dialogue89,scores={MusicSteps=1..,TalkTime=0},tag=!Dialogue90] run scoreboard players set @s DialogueTrigger 90

#Dialogue 93
#Factory friends at entrance after defeating Flare
execute as @a[x=-154,y=89,z=-1852,distance=..20,tag=Dialogue90,tag=!Dialogue93,scores={TalkTime=0}] run scoreboard players set @s DialogueTrigger 93

#Route 15 Gate Flare Grunts
execute as @p[x=-27,y=100,z=-1353,distance=..30,tag=Dialogue90] run tp @e[x=41,y=98,z=-1357,dy=3,nbt=!{pixelmon:npc_chatting}] -504 196 1268
execute as @p[x=-27,y=100,z=-1353,distance=..30,tag=Dialogue90] run tp @e[x=41,y=98,z=-1349,dy=3,nbt=!{pixelmon:npc_chatting}] -504 196 1270
execute as @p[x=-27,y=100,z=-1353,distance=..30,tag=!Dialogue90] run tp @e[x=-504,y=195,z=1268,dy=3,nbt=!{pixelmon:npc_chatting}] 41 100 -1357
execute as @p[x=-27,y=100,z=-1353,distance=..30,tag=!Dialogue90] run tp @e[x=-504,y=195,z=1270,dy=3,nbt=!{pixelmon:npc_chatting}] 41 100 -1349

#Dialogue 94
#Dendemille Sycamore and Dexio
scoreboard players set @a[x=638,y=107,z=-431,dx=15,dy=5,dz=17,tag=!Dialogue94,scores={TalkTime=0}] DialogueTrigger 94

#Dialogue 95
#Frost Cavern ext Mamoswine has a bad feeling
scoreboard players set @a[x=717,y=117,z=-682,dx=24,dy=10,dz=20,scores={TalkTime=0},tag=!Dialogue95] DialogueTrigger 95
execute as @p[x=733,y=119,z=-646,distance=..20,tag=!Dialogue95,tag=!Dialogue98] run tp @e[x=-504,y=205,z=1268,dy=3,nbt=!{pixelmon:npc_chatting}] 725 118 -665
execute as @p[x=733,y=119,z=-646,distance=..20,tag=!Dialogue95,tag=!Dialogue98] run tp @e[x=-501,y=190,z=1238,dy=3,nbt=!{pixelmon:statue}] 722 118 -666
execute as @p[x=719,y=117,z=-682,distance=..30,tag=Dialogue98] run tp @e[x=725,y=117,z=-665,dy=3,nbt=!{pixelmon:npc_chatting}] -504 206 1268
execute as @p[x=719,y=117,z=-682,distance=..30,tag=Dialogue98] run tp @e[x=722,y=117,z=-666,dy=3,nbt=!{pixelmon:statue}] -501 191 1238

#Dialogue 96
#Frost Cavern Team Flare
scoreboard players set @a[x=672,y=84,z=-1299,dx=18,dy=6,dz=11,scores={TalkTime=0},tag=!Dialogue96] DialogueTrigger 96
execute as @a[x=676,y=85,z=-1359,distance=..10,scores={TalkTime=0},tag=Dialogue96,tag=!Dialogue97] run tp @e[x=-504,y=210,z=1280,dy=3,nbt=!{pixelmon:npc_trainer}] 679 85 -1358
execute as @a[x=676,y=85,z=-1359,distance=..10,scores={TalkTime=0},tag=Dialogue97,tag=!Dialogue98] run tp @e[x=-504,y=210,z=1278,dy=3,nbt=!{pixelmon:npc_trainer}] 676 85 -1361

#Dialogue 99
#Route 13 Mamoswine is gone if went to here first
execute as @a[x=837,y=108,z=-335,distance=..10,tag=!Dialogue99,scores={TalkTime=0},tag=!Dialogue98] run scoreboard players set @s DialogueTrigger 99
execute as @a[x=801,y=107,z=-340,dx=50,dy=10,dz=30,tag=!Dialogue98] run effect give @e[nbt=!{pixelmon:statue},name=Mamoswine] minecraft:invisibility 5 5 true

#Dialogue 100
#Route 17 Mamoswine has returned
execute as @a[x=837,y=108,z=-335,distance=..10,tag=!Dialogue100,scores={TalkTime=0},tag=Dialogue98] run scoreboard players set @s DialogueTrigger 100

#Dialogue 101
#Anistar City Sina
scoreboard players set @a[x=1187,y=107,z=-196,dx=16,dy=5,dz=17,tag=!Dialogue101,scores={TalkTime=0}] DialogueTrigger 101

#Dialogue 102
#Anistar Serena Battle
scoreboard players set @a[x=1308,y=107,z=-286,dx=12,dy=5,dz=25,tag=!Dialogue102,scores={TalkTime=0}] DialogueTrigger 102
execute as @a[x=1308,y=107,z=-286,dx=12,dy=5,dz=25,tag=!Dialogue103,scores={TalkTime=0,StarterPick=1},tag=Dialogue102] run tp @e[x=-504,y=215,z=1272,dy=3,nbt=!{pixelmon:npc_trainer}] 1325 108 -277
execute as @a[x=1308,y=107,z=-286,dx=12,dy=5,dz=25,tag=!Dialogue103,scores={TalkTime=0,StarterPick=2},tag=Dialogue102] run tp @e[x=-504,y=215,z=1274,dy=3,nbt=!{pixelmon:npc_trainer}] 1325 108 -277
execute as @a[x=1308,y=107,z=-286,dx=12,dy=5,dz=25,tag=!Dialogue103,scores={TalkTime=0,StarterPick=3},tag=Dialogue102] run tp @e[x=-504,y=215,z=1276,dy=3,nbt=!{pixelmon:npc_trainer}] 1325 108 -277

#Dialogue 104
#Anistar City Serena gets Lysandre's doom call
execute as @a[x=1328,y=108,z=-281,distance=..20,scores={TalkTime=0},tag=Olympia,tag=!Dialogue104] run scoreboard players set @s DialogueTrigger 104

#Hint-giving grunts
execute as @p[x=1303,y=108,z=-267,distance=..20,tag=Dialogue133] run tp @e[x=1353,y=107,z=-283,dy=3,nbt=!{pixelmon:npc_chatting}] -504 221 1272
execute as @p[x=1303,y=108,z=-267,distance=..20,tag=Dialogue133] run tp @e[x=1357,y=107,z=-283,dy=3,nbt=!{pixelmon:npc_chatting}] -504 221 1274

#Dialogue 107
#Lysandre Labs two Waiters
execute as @a[x=-307,y=80,z=425,dx=23,dy=100,dz=28,scores={TalkTime=0},tag=Dialogue105,tag=Dialogue106] run scoreboard players set @s[tag=!Dialogue107] DialogueTrigger 107
execute as @a[x=-307,y=132,z=427,dx=23,dy=9,dz=26,tag=Olympia] run tp @e[x=-504,y=225,z=1268,dy=3,nbt=!{pixelmon:npc_trainer}] -298 133 442
execute as @a[x=-307,y=132,z=427,dx=23,dy=9,dz=26,tag=Olympia] run tp @e[x=-504,y=225,z=1270,dy=3,nbt=!{pixelmon:npc_trainer}] -294 133 431

#Dialogue 108 & 109
#Lysandre Labs Lysandre first floor encounter
scoreboard players set @a[x=-304,y=140,z=388,dx=16,dy=5,dz=12,scores={TalkTime=0},tag=!Dialogue108] DialogueTrigger 108
execute as @a[x=-304,y=140,z=388,dx=16,dy=5,dz=12,tag=!Dialogue109,scores={TalkTime=0},tag=Dialogue108] run tp @e[x=-504,y=230,z=1268,dy=3,nbt=!{pixelmon:npc_trainer}] -296 141 393

#Sets up Team Flare in Lysandre Labs
execute as @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=Dialogue109,tag=!ElevatorKey] run tp @e[x=-504,y=230,z=1270,dy=3,nbt=!{pixelmon:npc_trainer}] -321 141 382
execute as @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=Dialogue109,tag=!ElevatorKey] run tp @e[x=-504,y=230,z=1272,dy=3,nbt=!{pixelmon:npc_trainer}] -333 141 336
execute as @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=Dialogue109,tag=!ElevatorKey] run tp @e[x=-504,y=230,z=1274,dy=3,nbt=!{pixelmon:npc_trainer}] -318 141 356
execute as @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=Dialogue109,tag=!ElevatorKey] run tp @e[x=-504,y=230,z=1276,dy=3,nbt=!{pixelmon:npc_trainer}] -301 141 346
execute as @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=Dialogue109,tag=!ElevatorKey] run tp @e[x=-504,y=230,z=1278,dy=3,nbt=!{pixelmon:npc_trainer}] -254 141 340
execute as @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=Dialogue109,tag=!ElevatorKey] run tp @e[x=-504,y=230,z=1280,dy=3,nbt=!{pixelmon:npc_trainer}] -256 141 397
execute as @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=Dialogue109,tag=!ElevatorKey] run tp @e[x=-504,y=235,z=1268,dy=3,nbt=!{pixelmon:npc_trainer}] -275 141 364
execute as @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=Dialogue109,tag=!ElevatorKey] run tp @e[x=-504,y=235,z=1270,dy=3,nbt=!{pixelmon:npc_trainer}] -233 141 325
execute as @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=Dialogue109,tag=!ElevatorKey] run tp @e[x=-504,y=235,z=1272,dy=3,nbt=!{pixelmon:npc_trainer}] -355 141 330
execute as @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=Dialogue109,tag=!Dialogue111,scores={TalkTime=0}] run tp @e[x=-504,y=240,z=1268,dy=3,nbt=!{pixelmon:npc_chatting}] -264 141 311
execute as @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=Dialogue109,tag=!Dialogue111,scores={TalkTime=0}] run tp @e[x=-504,y=240,z=1270,dy=3,nbt=!{pixelmon:npc_chatting}] -260 141 311
execute as @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=Dialogue109,tag=!Dialogue114,scores={TalkTime=0}] run tp @e[x=-504,y=240,z=1280,dy=3,nbt=!{pixelmon:npc_chatting}] -216 141 347
execute as @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=Dialogue109,tag=!Dialogue110] run tp @e[x=-504,y=245,z=1276,dy=3,nbt=!{pixelmon:npc_chatting}] -327 141 302
execute as @a[x=-402,y=99,z=277,dx=209,dy=100,dz=148,tag=Dialogue109,tag=!Dialogue110] run tp @e[x=-504,y=245,z=1278,dy=3,nbt=!{pixelmon:npc_chatting}] -331 141 302

#Dialogue 110
#Lysandre Labs Heroes talk
scoreboard players set @a[x=-339,y=140,z=311,dx=20,dy=10,dz=8,scores={TalkTime=0},tag=!Dialogue110] DialogueTrigger 110

#Dialogue 111-113
#Lysandre Lavs Celosia and Bryony
scoreboard players set @a[x=-272,y=140,z=312,dx=20,dy=10,dz=10,scores={TalkTime=0},tag=!Dialogue111] DialogueTrigger 111
execute as @a[x=-272,y=140,z=312,dx=20,dy=10,dz=10,tag=Dialogue111,scores={TalkTime=0},tag=!Dialogue112] run tp @e[x=-504,y=235,z=1274,dy=3,nbt=!{pixelmon:npc_trainer}] -264 141 311
execute as @a[x=-272,y=140,z=312,dx=20,dy=10,dz=10,tag=Dialogue112,scores={TalkTime=0},tag=!Dialogue113] run tp @e[x=-504,y=235,z=1276,dy=3,nbt=!{pixelmon:npc_trainer}] -260 141 311

#Dialogue 114 & 115
#Lysandre Labs Mable
scoreboard players set @a[x=-225,y=140,z=348,dx=17,dy=10,dz=10,scores={TalkTime=0},tag=!Dialogue114] DialogueTrigger 114
execute as @a[x=-225,y=140,z=348,dx=17,dy=10,dz=10,tag=Dialogue114,scores={TalkTime=0},tag=!Dialogue115] run tp @e[x=-504,y=235,z=1278,dy=3,nbt=!{pixelmon:npc_trainer}] -216 141 347

#Dialogue 116
#Lysandre Labs Lysandre and AZ
scoreboard players set @a[x=-395,y=110,z=392,dx=18,dy=10,dz=11,scores={TalkTime=0},tag=!Dialogue116] DialogueTrigger 116
execute as @a[x=-376,y=110,z=396,dx=41,dy=10,dz=7,tag=!Dialogue116] run tp @e[x=-504,y=240,z=1274,dy=3,nbt=!{pixelmon:npc_chatting}] -386 111 390
execute as @a[x=-376,y=110,z=396,dx=41,dy=10,dz=7,tag=!Dialogue116] run tp @e[x=-504,y=240,z=1276,dy=3,nbt=!{pixelmon:npc_chatting}] -388 111 394

#Dialogue 117
#Lysandre Labs B3F Xerosic and Lysandre
scoreboard players set @a[x=-319,y=106,z=349,dx=17,dy=5,dz=10,scores={TalkTime=0},tag=!Dialogue117] DialogueTrigger 117
execute as @a[x=-311,y=110,z=390,distance=..20,tag=!Dialogue117,scores={TalkTime=0}] run tp @e[x=-504,y=245,z=1268,dy=3,nbt=!{pixelmon:npc_chatting}] -312 107 326
execute as @a[x=-311,y=110,z=390,distance=..20,tag=!Dialogue117,scores={TalkTime=0}] run tp @e[x=-504,y=245,z=1270,dy=3,nbt=!{pixelmon:npc_chatting}] -308 107 326
execute as @a[x=-308,y=107,z=326,distance=..10,tag=!Dialogue118,scores={TalkTime=0},tag=Dialogue117] run tp @e[x=-504,y=245,z=1272,dy=3,nbt=!{pixelmon:npc_trainer}] -308 107 326

#Dialogue 121
#Geosenge Serena pre-Flare HQ
scoreboard players set @a[x=-1255,y=109,z=1807,distance=..10,scores={TalkTime=0},tag=!Dialogue121] DialogueTrigger 121

#Dialogue 122-123
#Flare HQ Lysandre first battle
scoreboard players set @a[x=-2359,y=69,z=-992,dx=46,dy=10,dz=15,scores={TalkTime=0},tag=!Dialogue122] DialogueTrigger 122
execute as @a[x=-2359,y=69,z=-992,dx=46,dy=10,dz=15,tag=!Dialogue123,scores={TalkTime=0},tag=Dialogue122] run tp @e[x=-504,y=100,z=1292,dy=3,nbt=!{pixelmon:npc_trainer}] -2336 70 -990

#Dialogue 124
#Flare HQ Double Battle No 1
scoreboard players set @a[x=-2400,y=61,z=-965,dx=13,dy=5,dz=13,tag=!Dialogue124,scores={TalkTime=0}] DialogueTrigger 124

#Dialogue 125
#Flare HQ Double Battle No 2
scoreboard players set @a[x=-2456,y=73,z=-989,dx=13,dy=5,dz=13,tag=!Dialogue125,scores={TalkTime=0}] DialogueTrigger 125

#Dialogue 126
#Flare HQ Shauna joins the party
scoreboard players set @a[x=-2478,y=76,z=-1005,dx=13,dy=5,dz=13,tag=!Dialogue126,scores={TalkTime=0}] DialogueTrigger 126

#Dialogue 127
#Flare HQ Double Battle No 3
scoreboard players set @a[x=-2486,y=47,z=-949,dx=13,dy=5,dz=13,tag=!Dialogue127,scores={TalkTime=0}] DialogueTrigger 127

#Dialogue 128
#Flare HQ outside legendary chamber
scoreboard players set @a[x=-2436,y=27,z=-955,dx=17,dy=6,dz=17,tag=!Dialogue128,scores={TalkTime=0}] DialogueTrigger 128

#Dialogue 130
#Flare HQ post-Four admins in chamber
execute as @a[x=-2526,y=0,z=-1074,dx=232,dy=95,dz=167,scores={TalkTime=0},tag=Admin1,tag=Admin3,tag=Admin4,tag=Admin6] run scoreboard players set @s[tag=!Dialogue130] DialogueTrigger 130
execute as @a[x=-2336,y=42,z=-1007,distance=..15,tag=Dialogue129,scores={TalkTime=0},tag=!Dialogue130] run tp @e[x=-504,y=125,z=1284,dy=3,nbt=!{pixelmon:npc_trainer}] -2342 42 -1007
execute as @a[x=-2336,y=42,z=-1007,distance=..15,tag=Dialogue129,scores={TalkTime=0},tag=!Dialogue130] run tp @e[x=-504,y=125,z=1286,dy=3,nbt=!{pixelmon:npc_trainer}] -2336 42 -1012
execute as @a[x=-2336,y=42,z=-1007,distance=..15,tag=Dialogue129,scores={TalkTime=0},tag=!Dialogue130] run tp @e[x=-504,y=125,z=1288,dy=3,nbt=!{pixelmon:npc_trainer}] -2336 42 -1007
execute as @a[x=-2336,y=42,z=-1007,distance=..15,tag=Dialogue129,scores={TalkTime=0},tag=!Dialogue130] run tp @e[x=-504,y=125,z=1290,dy=3,nbt=!{pixelmon:npc_trainer}] -2330 42 -1007

#Dialogue 133
#Flare HQ Chamber Respawns Lysandre trainer
execute as @a[x=-2336,y=42,z=-997,distance=..20,scores={TalkTime=0},tag=!Dialogue133,tag=Dialogue132] run tp @e[x=-504,y=130,z=1290,dy=3,nbt=!{pixelmon:npc_trainer}] -2336 42 -997

#Dialogue 134
#Geosenge Town post-destruction with friends
scoreboard players set @a[x=-410,y=109,z=2014,distance=..20,tag=!Dialogue134,scores={TalkTime=0}] DialogueTrigger 134

#Dialogue 135 & 136
#Couriway Town Sycamore Battle
scoreboard players set @a[x=1501,y=101,z=253,distance=..10,scores={TalkTime=0},tag=!Dialogue135] DialogueTrigger 135
execute as @a[x=1501,y=101,z=253,distance=..10,tag=Dialogue135,tag=!Dialogue136,scores={TalkTime=0}] run tp @e[x=-504,y=140,z=1286,dy=3,nbt=!{pixelmon:npc_trainer}] 1501 101 253

#Camphrier Town Sycamore's Note
#execute @a[x=1568,y=119,z=163,distance=..30,tag=Dialogue136,tag=!SycamoresNote] ~ ~ ~ /execute @e[x=1568,y=119,z=163,dy=3,type=armor_stand] ~ ~ ~ /particle fireworksSpark ~ ~ ~ 1 2 1 0.1 2 normal @a[tag=!SycamoresNote]
#execute @e[x=1568,y=119,z=163,dy=3,type=armor_stand] ~ ~ ~ /give @a[r=3,tag=!SycamoresNote] written_book 1 0 {pages:["{\"text\":\"To the person reading this:\\n\\nWhat are you like now?\\n\\nDid you become who you wanted to be?\"}","{\"text\":\"For starters, what was the person you wanted to become even like?\"}","{\"text\":\"I don't know, but it would be wonderful if you can boast that you're living each day to the fullest.\"}","{\"text\":\"To future Sycamore.\\n\\nFrom the Sycamore dreaming of the future.\"}"],title:"To future Sycamore",author:"Augustine Sycamore"}
#execute @e[x=1568,y=119,z=163,dy=3,type=armor_stand] ~ ~ ~ /tellraw @a[r=3,tag=!SycamoresNote] {"text":"You found a Sycamore's Note!","italic":true,"color":"gray"}
#execute @e[x=1568,y=119,z=163,dy=3,type=armor_stand] ~ ~ ~ /playsound pixelmon:pixelmon.block.pokelootobtained ambient @a[r=3,tag=!SycamoresNote] ~ ~ ~ 10 1 1
#execute @e[x=1568,y=119,z=163,dy=3,type=armor_stand] ~ ~ ~ /scoreboard players tag @a[r=3,tag=!SycamoresNote] add SycamoresNote

#Dialogue 137-140
#Route 19 Friends on bridge
scoreboard players set @a[x=1452,y=97,z=489,dx=11,dy=10,dz=6,scores={TalkTime=0},tag=!Dialogue137] DialogueTrigger 137
execute as @e[x=1448,y=98,z=492,distance=..10,scores={TalkTime=0,StarterPick=1},tag=Dialogue137,tag=!Dialogue138] run tp @e[x=-504,y=145,z=1284,dy=3,nbt=!{pixelmon:npc_trainer}] 1448 98 492
execute as @e[x=1448,y=98,z=492,distance=..10,scores={TalkTime=0,StarterPick=2},tag=Dialogue137,tag=!Dialogue138] run tp @e[x=-504,y=145,z=1286,dy=3,nbt=!{pixelmon:npc_trainer}] 1448 98 492
execute as @e[x=1448,y=98,z=492,distance=..10,scores={TalkTime=0,StarterPick=3},tag=Dialogue137,tag=!Dialogue138] run tp @e[x=-504,y=145,z=1288,dy=3,nbt=!{pixelmon:npc_trainer}] 1448 98 492
execute as @e[x=1448,y=98,z=492,distance=..10,scores={TalkTime=0},tag=Dialogue138,tag=!Dialogue139] run tp @e[x=-504,y=145,z=1292,dy=3,nbt=!{pixelmon:npc_trainer}] 1451 98 494
execute as @e[x=1448,y=98,z=492,distance=..10,scores={TalkTime=0},tag=Dialogue139,tag=!Dialogue140] run tp @e[x=-504,y=145,z=1290,dy=3,nbt=!{pixelmon:npc_trainer}] 1451 98 490

#Dialogue 141
#Pokemon Village Wulfric
execute as @a[x=951,y=93,z=664,distance=..20,scores={TalkTime=0},tag=!Wulfric] run scoreboard players set @s[tag=Dialogue140] DialogueTrigger 141

#Pokemon Village block Mewtwo unless beaten ELite Four
execute as @p[x=825,y=95,z=624,distance=..20,scores={PokemonLeague=0}] run tp @e[x=-504,y=150,z=1288,dy=3,nbt=!{pixelmon:npc_chatting}] 844 95 610
execute as @p[x=825,y=95,z=624,distance=..20,scores={PokemonLeague=1..}] run tp @e[x=844,y=94,z=610,dy=3,nbt=!{pixelmon:npc_chatting}] -504 151 1288

#Dialogue 143
#Snowbelle Wulfric and Gym Guy
execute as @a[x=1144,y=95,z=492,distance=..20,tag=!Dialogue143,scores={TalkTime=0}] run scoreboard players set @s[tag=Wulfric] DialogueTrigger 143

#Dialogue 144-145
#Victory Road gate Ace Trainer battle
execute as @a[x=686,y=105,z=379,dx=15,dy=10,dz=25,tag=!Dialogue144,tag=Viola,tag=Grant,tag=Korrina,tag=Ramos,tag=Clemont,tag=Valerie,tag=Olympia,tag=Wulfric] run scoreboard players set @s DialogueTrigger 144
execute as @a[x=686,y=105,z=379,dx=15,dy=10,dz=25,tag=Dialogue144,scores={TalkTime=0},tag=!Dialogue145] run tp @e[x=-504,y=160,z=1286,dy=3,nbt=!{pixelmon:npc_trainer}] 694 106 396

#Dialogue 146
#Victory Road Serena 5th battle
scoreboard players set @a[x=2274,y=174,z=2175,dx=20,dy=10,dz=17,scores={TalkTime=0},tag=!Dialogue146] DialogueTrigger 146
execute as @a[x=2274,y=174,z=2175,dx=20,dy=10,dz=17,tag=Dialogue146,tag=!Dialogue147,scores={TalkTime=0,StarterPick=1}] run tp @e[x=-504,y=165,z=1284,dy=3,nbt=!{pixelmon:npc_trainer}] 2294 175 2184
execute as @a[x=2274,y=174,z=2175,dx=20,dy=10,dz=17,tag=Dialogue146,tag=!Dialogue147,scores={TalkTime=0,StarterPick=2}] run tp @e[x=-504,y=165,z=1286,dy=3,nbt=!{pixelmon:npc_trainer}] 2294 175 2184
execute as @a[x=2274,y=174,z=2175,dx=20,dy=10,dz=17,tag=Dialogue146,tag=!Dialogue147,scores={TalkTime=0,StarterPick=3}] run tp @e[x=-504,y=165,z=1288,dy=3,nbt=!{pixelmon:npc_trainer}] 2294 175 2184

#Dialogue 149
#Pokemon League Malva Introduction
scoreboard players set @a[x=-1907,y=32,z=2117,distance=..20,tag=!Dialogue148,scores={TalkTime=0}] DialogueTrigger 148

#Dialogue 155-156
#Lumiose Parade AZ
scoreboard players set @a[x=1488,y=137,z=-1900,distance=..20,scores={TalkTime=0},tag=!Dialogue155] DialogueTrigger 155
execute as @a[x=1469,y=101,z=-1954,distance=..20,tag=!Dialogue156,scores={TalkTime=0},tag=Dialogue155] run tp @e[x=-504,y=175,z=1284,dy=3,nbt=!{pixelmon:npc_trainer}] 1469 101 -1954

#Dialogue 157
#Vaniville Town Mom post-League
scoreboard players set @s[x=493,y=107,z=1549,dx=18,dy=5,dz=19,tag=Dialogue1,tag=!Dialogue157,scores={PokemonLeague=1..,TalkTime=0}] DialogueTrigger 157

#Dialogue 159
#Lumiose Station Dexio & Sina
scoreboard players set @a[x=1017,y=105,z=1908,distance=..20,scores={PokemonLeague=1..,TalkTime=0},tag=!Dialogue159] DialogueTrigger 159

#Dialogue 160
#Lumiose Station Sycamore
scoreboard players set @a[x=1029,y=105,z=1893,distance=..6,tag=!Dialogue160,scores={TalkTime=0,PokemonLeague=1..}] DialogueTrigger 160
execute as @a[x=1017,y=105,z=1908,distance=..20,tag=!Dialogue160,scores={PokemonLeague=1..}] run tp @e[x=-504,y=185,z=1290,dy=3,nbt=!{pixelmon:npc_chatting}] 1029 105 1893

#Dialogue 161
#Kilouce City Serena battle
scoreboard players set @a[x=1229,y=119,z=1461,distance=..6,scores={TalkTime=0},tag=!Dialogue161] DialogueTrigger 161
execute as @a[x=1229,y=119,z=1461,distance=..15,scores={TalkTime=0,StarterPick=1},tag=Dialogue161,tag=!Dialogue162] run tp @e[x=-504,y=190,z=1288,dy=3,nbt=!{pixelmon:npc_trainer}] 1229 119 1461
execute as @a[x=1229,y=119,z=1461,distance=..15,scores={TalkTime=0,StarterPick=2},tag=Dialogue161,tag=!Dialogue162] run tp @e[x=-504,y=190,z=1290,dy=3,nbt=!{pixelmon:npc_trainer}] 1229 119 1461
execute as @a[x=1229,y=119,z=1461,distance=..15,scores={TalkTime=0,StarterPick=3},tag=Dialogue161,tag=!Dialogue162] run tp @e[x=-504,y=190,z=1292,dy=3,nbt=!{pixelmon:npc_trainer}] 1229 119 1461
execute as @a[x=1221,y=119,z=1497,distance=..20,tag=!Dialogue161] run tp @e[x=-504,y=190,z=1284,dy=3,nbt=!{pixelmon:npc_chatting}] 1229 119 1461

#Dialogue 163
#Anistar City Sycamore upgrading Mega Ring
execute as @a[x=1179,y=110,z=-276,distance=..20,scores={TalkTime=0},tag=Dialogue162,tag=!Dialogue163] run scoreboard players set @s DialogueTrigger 163

#Dialogue 164
#Lumiose Cafe Soleil Diantha giving Ralts
scoreboard players set @a[x=-495,y=100,z=256,distance=..15,tag=!Dialogue164,scores={TalkTime=0,PokemonLeague=1..}] DialogueTrigger 164

#Dialogue 165
#Lumiose City Ghost Girl
scoreboard players set @a[x=-162,y=110,z=196,dx=8,dy=5,dz=10,scores={TalkTime=0},tag=!Dialogue165] DialogueTrigger 165

#Dialogue 166
#Battle Chateau Viola Introduction
scoreboard players set @a[x=-1533,y=65,z=-68,distance=..20,tag=!Dialogue166,scores={Gender_min=1..,TalkTime=0}] DialogueTrigger 166

#Dialogue 168
#Lumiose Press Volcanion Memo Start
execute as @a[x=-444,y=101,z=206,distance=..6,scores={TalkTime=0},tag=VolcanionCatch] run scoreboard players set @s[tag=!Dialogue168] DialogueTrigger 168
execute as @a[x=-449,y=101,z=215,distance=..10,scores={TalkTime=0},tag=VolcanionCatch] run tp @e[x=-442,y=100,z=210,dy=3,nbt=!{pixelmon:npc_chatting}] -504 211 1286

#----------
#Looker Chapters

#Swaps outdoor sign name
execute at @p[x=-188,y=101,z=-639,distance=..30,tag=Call13] run execute as @e[x=-188,y=100,z=-639,dy=3,type=armor_stand] run data modify entity @s {CustomName:"Looker Bureau"}
execute at @p[x=-188,y=101,z=-639,distance=..30,tag=!Call13] run execute as @e[x=-188,y=100,z=-639,dy=3,type=armor_stand] run data modify entity @s {CustomName:"Vacant"}

#Looker Ticket Particles
execute as @e[type=armor_stand,tag=LookerTicket] run tag @a[distance=..5,tag=Dialogue174] remove Dialogue174
execute as @a[x=-25,y=77,z=348,distance=..30,tag=Dialogue173,tag=!TicketMuseum] run execute as @e[x=-25,y=76,z=348,dy=3,type=armor_stand] run particle minecraft:firework ~ ~ ~ 1 2 1 0.1 2 normal @a[tag=!TicketMuseum]
execute as @a[x=-433,y=101,z=335,distance=..30,tag=Dialogue173,tag=!TicketHotel] run execute as @e[x=-433,y=100,z=335,dy=3,type=armor_stand] run particle minecraft:firework ~ ~ ~ 1 2 1 0.1 2 normal @a[tag=!TicketHotel]
execute as @a[x=-286,y=101,z=217,distance=..30,tag=Dialogue173,tag=!TicketHerb] run execute as @e[x=-286,y=100,z=217,dy=3,type=armor_stand] run particle minecraft:firework ~ ~ ~ 1 2 1 0.1 2 normal @a[tag=!TicketHerb]
execute as @a[x=-1833,y=100,z=-1694,distance=..30,tag=Dialogue173,tag=!TicketGym] run execute as @e[x=-1833,y=99,z=-1694,dy=3,type=armor_stand] run particle minecraft:firework ~ ~ ~ 1 2 1 0.1 2 normal @a[tag=!TicketGym]
execute as @a[x=-439,y=101,z=439,distance=..30,tag=Dialogue173,tag=!TicketCenter] run execute as @e[x=-439,y=100,z=439,dy=3,type=armor_stand] run particle minecraft:firework ~ ~ ~ 1 2 1 0.1 2 normal @a[tag=!TicketCenter]

#Dialogue 174
#Looker Ticket Gives
execute as @e[x=-25,y=76,z=348,dy=3,type=armor_stand] run execute as @a[distance=..5,scores={TalkTime=0},tag=Dialogue173] run scoreboard players set @s[tag=!TicketMuseum] DialogueTrigger 174
execute as @e[x=-433,y=100,z=335,dy=3,type=armor_stand] run execute as @a[distance=..5,scores={TalkTime=0},tag=Dialogue173] run scoreboard players set @s[tag=!TicketHotel] DialogueTrigger 174
execute as @e[x=-286,y=100,z=217,dy=3,type=armor_stand] run execute as @a[distance=..5,scores={TalkTime=0},tag=Dialogue173] run scoreboard players set @s[tag=!TicketHerb] DialogueTrigger 174
execute as @e[x=-1833,y=99,z=-1694,dy=3,type=armor_stand] run execute as @a[distance=..5,scores={TalkTime=0},tag=Dialogue173] run scoreboard players set @s[tag=!TicketGym] DialogueTrigger 174
execute as @e[x=-439,y=100,z=439,dy=3,type=armor_stand] run execute as @a[distance=..5,scores={TalkTime=0},tag=Dialogue173] run scoreboard players set @s[tag=!TicketCenter] DialogueTrigger 174

#Dialogue 175
#All Looker Tickets obtained
scoreboard players set @a[x=-176,y=100,z=387,distance=..7,scores={TalkTime=0,LookerTickets=5..},tag=!Dialogue175] DialogueTrigger 175

#Set's up Emma's first alley finding her in
execute as @a[x=-373,y=101,z=-307,distance=..40,scores={TalkTime=0},tag=Dialogue176,tag=!Dialogue177] run tp @e[x=-504,y=220,z=1284,dy=3,nbt=!{pixelmon:npc_trainer}] -375 101 -299
execute as @a[x=-373,y=101,z=-307,distance=..40,scores={TalkTime=0},tag=Dialogue176,tag=!Dialogue177] run tp @e[x=-504,y=220,z=1286,dy=3,nbt=!{pixelmon:npc_trainer}] -369 101 -297
execute as @a[x=-373,y=101,z=-307,distance=..40,scores={TalkTime=0},tag=Dialogue176,tag=!Dialogue177] run tp @e[x=-504,y=220,z=1288,dy=3,nbt=!{pixelmon:npc_trainer}] -372 101 -291
execute as @a[x=-373,y=101,z=-307,distance=..40,scores={TalkTime=0},tag=Dialogue176,tag=!Dialogue177] run tp @e[x=-504,y=220,z=1290,dy=3,nbt=!{pixelmon:npc_trainer}] -366 101 -288

#Dialogue 177
#Finding Emma
execute as @a[x=-374,y=101,z=-280,distance=..6,tag=Dialogue176,tag=!Dialogue177,scores={TalkTime=0}] run scoreboard players set @s DialogueTrigger 177

#Dialogue 178
#Player finding Mimi
execute as @a[x=-428,y=101,z=-363,distance=..7,scores={TalkTime=0},tag=Dialogue177] run scoreboard players set @s[tag=!Dialogue178] DialogueTrigger 178
execute as @a[x=-405,y=101,z=-370,distance=..20,tag=Dialogue177,tag=!Dialogue178] run tp @e[x=-504,y=226,z=1284,dy=3,nbt=!{pixelmon:statue}] -428 101 -363

#Dialogue 182
#Looker Chapter 3 start
execute as @a[x=-161,y=100,z=375,dx=19,dy=15,dz=23,scores={TalkTime=0},tag=Dialogue180,tag=!Dialogue182] run scoreboard players set @s DialogueTrigger 182
execute as @a[x=-161,y=100,z=375,dx=19,dy=15,dz=23,scores={TalkTime=0},tag=Dialogue181,tag=!Dialogue182] run scoreboard players set @s DialogueTrigger 182

#Dialogue 183
#Lumiose Station pre-Nix Battle
scoreboard players set @a[x=1103,y=105,z=2007,distance=..10,scores={TalkTime=0},tag=!Dialogue183] DialogueTrigger 183
execute as @a[x=1103,y=105,z=2007,distance=..50,scores={TalkTime=0},tag=!Dialogue183] run tp @e[x=-504,y=235,z=1284,dy=3,nbt=!{pixelmon:npc_chatting}] 1119 105 2007
execute as @a[x=1103,y=105,z=2007,distance=..50,scores={TalkTime=0},tag=!Dialogue183] run tp @e[x=-504,y=235,z=1286,dy=3,nbt=!{pixelmon:npc_chatting}] 1124 105 2003
execute as @a[x=1103,y=105,z=2007,distance=..50,scores={TalkTime=0},tag=!Dialogue183] run tp @e[x=-504,y=235,z=1288,dy=3,nbt=!{pixelmon:npc_chatting}] 1130 105 2009
execute as @a[x=1103,y=105,z=2007,distance=..50,scores={TalkTime=0},tag=!Dialogue183] run tp @e[x=-504,y=235,z=1290,dy=3,nbt=!{pixelmon:npc_chatting}] 1131 105 2005
execute as @a[x=1131,y=105,z=2005,distance=..20,scores={TalkTime=0},tag=Dialogue183,tag=!Dialogue184] run tp @e[x=-504,y=235,z=1296,dy=3,nbt=!{pixelmon:npc_trainer}] 1131 105 2005

#Dialogue 186
#Museum learning about art piece
execute as @a[x=-83,y=77,z=355,distance=..7,scores={TalkTime=0},tag=Dialogue185,tag=!Dialogue186] run scoreboard players set @s DialogueTrigger 186

#Rotates paintings to vandalized
execute as @p[x=-79,y=103,z=326,distance=..15,tag=Dialogue185,tag=Dialogue214] run execute as @e[x=-79,y=103,z=326,distance=..1,type=item_frame] run data modify entity @s {Item:{id:"minecraft:diamond_hoe",Count:1b,Damage:202s}}
execute as @p[x=-79,y=103,z=326,distance=..15,tag=!Dialogue185,tag=!Dialogue214] run execute as @e[x=-79,y=103,z=326,distance=..1,type=item_frame] run data modify entity @s {Item:{id:"minecraft:diamond_hoe",Count:1b,Damage:202s}}
execute as @p[x=-79,y=103,z=326,distance=..15,tag=Dialogue185,tag=!Dialogue214] run execute as @e[x=-79,y=103,z=326,distance=..1,type=item_frame] run data modify entity @s {Item:{id:"minecraft:diamond_hoe",Count:1b,Damage:217s}}

#Dialogue 187
#Museum director vandal talk
execute as @a[x=-80,y=100,z=327,dx=9,dy=6,dz=7,scores={TalkTime=0},tag=Dialogue185] run scoreboard players set @s[tag=!Dialogue187] DialogueTrigger 187

#Dialogue 189
#Lumiose Alley #1 trainer
execute as @a[x=-221,y=101,z=-618,distance=..20,scores={TalkTime=0},tag=Dialogue188,tag=!Dialogue189] run tp @e[x=-504,y=245,z=1284,dy=3,nbt=!{pixelmon:npc_trainer}] -269 101 -619

#Dialogue 190
#Alley #2 trainer
execute as @a[x=-122,y=101,z=-608,distance=..20,scores={TalkTime=0},tag=Dialogue189,tag=!Dialogue190] run tp @e[x=-504,y=245,z=1292,dy=3,nbt=!{pixelmon:npc_trainer}] -95 101 -609

#Dialogue 191
#Alley #3 Looker & Black Belt
execute as @a[x=11,y=101,z=-533,distance=..7,scores={TalkTime=0},tag=Dialogue190,tag=!Dialogue191] run scoreboard players set @s DialogueTrigger 191
execute as @a[x=11,y=101,z=-533,distance=..30,scores={TalkTime=0},tag=Dialogue190,tag=!Dialogue191] run tp @e[x=-504,y=250,z=1284,dy=3,nbt=!{pixelmon:npc_chatting}] 11 101 -533

#Alley #4 Trainer
execute as @a[x=-391,y=101,z=-275,distance=..30,scores={TalkTime=0},tag=Dialogue191,tag=!Dialogue192] run tp @e[x=-504,y=250,z=1290,dy=3,nbt=!{pixelmon:npc_trainer}] -391 101 -275

#Dialogue 194
#Looker Bureau return Butler
execute as @a[x=-77,y=100,z=394,distance=..10,scores={TalkTime=0},tag=Dialogue193,tag=!Dialogue194] run tp @e[x=-504,y=100,z=1302,dy=3,nbt=!{pixelmon:npc_trainer}] -77 101 394

#Dialogue 195
#Hotel Richissime Malva
execute as @a[x=-494,y=143,z=325,dx=6,dy=5,dz=8,scores={TalkTime=0},tag=Dialogue194,tag=!Dialogue195] run scoreboard players set @s DialogueTrigger 195
execute as @a[x=-490,y=144,z=336,distance=..20,tag=!Dialogue195,tag=Dialogue194] run tp @e[x=-504,y=100,z=1306,dy=3,nbt=!{pixelmon:npc_trainer}] -491 144 316

#Dialogue 197
#Lysandre Labs Malva
execute as @a[x=-296,y=81,z=443,distance=..8,scores={TalkTime=0},tag=Dialogue196,tag=!Dialogue197] run scoreboard players set @s DialogueTrigger 197
execute as @a[x=-295,y=89,z=393,distance=..8,scores={TalkTime=0},tag=Dialogue197,tag=!Dialogue198] run scoreboard players set @s DialogueTrigger 198

#Dialogue 199
#Lysandre Labs Nix pre-battle
scoreboard players set @a[x=-299,y=28,z=328,dx=7,dy=5,dz=9,scores={TalkTime=0},tag=!Dialogue199] DialogueTrigger 199
execute as @a[x=-299,y=28,z=328,dx=7,dy=5,dz=9,scores={TalkTime=0},tag=!Dialogue200] run tp @e[x=-504,y=105,z=1300,dy=3,nbt=!{pixelmon:npc_trainer}] -296 29 328

#Dialogue 201
#Lysandre Labs Nix talking about Xerosic Notes
execute as @a[x=-295,y=29,z=310,distance=..8,scores={TalkTime=0},tag=Dialogue200,tag=!Dialogue201] run scoreboard players set @s DialogueTrigger 201

#Dialogue 208
#Post-reading all Xerosic notes
execute as @a[x=-306,y=28,z=280,dx=22,dy=20,dz=47,scores={TalkTime=0},tag=Dialogue202,tag=Dialogue203,tag=Dialogue204,tag=Dialogue205,tag=Dialogue206,tag=Dialogue207,tag=!Dialogue208] run scoreboard players set @s DialogueTrigger 208

#Dialogue 209
#Lysandre Labs Xerosic tping in
execute as @a[x=-305,y=28,z=318,dx=20,dy=5,dz=10,scores={TalkTime=0},tag=Dialogue208,tag=!Dialogue209] run scoreboard players set @s DialogueTrigger 209

#Dialogue 213
#Lysandre Labs final Essentia tp in if needed
execute as @a[x=-295,y=32,z=297,distance=..15,scores={TalkTime=0},tag=Dialogue212,tag=!Dialogue213] run tp @e[x=-504,y=110,z=1306,dy=3,nbt=!{pixelmon:npc_trainer}] -295 32 297

#Dialogue 216
#Museum artist follow-up
execute as @a[x=-83,y=77,z=355,distance=..7,scores={TalkTime=0},tag=Dialogue214,tag=!Dialogue216] run scoreboard players set @s DialogueTrigger 216


#----------



#Dialogue 264
#Shalour City Intriguing Stone hiker prompt
scoreboard players set @a[x=-1563,y=84,z=-844,distance=..7,scores={TalkTime=0},tag=!Dialogue264,nbt={Inventory:[{id:"minecraft:prismarine_crystals"}]}] DialogueTrigger 264




#---------------------------------------------------------
#Ribbons
#/scoreboard players set @e[nbt=!{pixelmon:pixelmon},distance=..10] RibbonApply 11

#Ribbon Application functions (runs on Pokemon if obtained a RibbonApply score to add new ribbons and keep existing)
execute at @a run execute as @e[nbt=!{pixelmon:pixelmon},distance=..10,scores={RibbonApply=1..}] run function world:ribbonapply


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
scoreboard players set @e[x=-2032,y=5,z=1910,dx=68,dy=50,dz=68,nbt=!{pixelmon:pixelmon}] RibbonApply 1

#Footprint Ribbon
execute as @e[x=-1700,y=80,z=-827,distance=..10,nbt=!{pixelmon:pixelmon}] run function kalos:data/calculatelevels
execute as @e[x=-1700,y=80,z=-827,distance=..10,nbt=!{pixelmon:pixelmon},scores={Temp=0..30}] run tellraw @a[distance=..10] {"text":"<Ace Trainer> ...Hmmm. It's hard to tell..."}
execute as @e[x=-1700,y=80,z=-827,distance=..10,nbt=!{pixelmon:pixelmon},scores={Temp=31..50}] run tellraw @a[distance=..10] {"text":"<Ace Trainer> if you travel with your Pokémon from now on, I’m sure it will grow!"}
execute as @e[x=-1700,y=80,z=-827,distance=..10,nbt=!{pixelmon:pixelmon},scores={Temp=51..69}] run tellraw @a {"text":"<Ace Trainer> You've raised it quite well. I feel your love for this Pokémon."}
#Applies ribbon if high-enough level
scoreboard players set @e[x=-1700,y=80,z=-827,distance=..10,nbt=!{pixelmon:pixelmon},scores={Temp=70..}] RibbonApply 7
#Returns to Poke Ball if under level 70
execute as @e[x=-1700,y=80,z=-827,distance=..10,nbt=!{pixelmon:pixelmon},scores={Temp=0..69}] run data modify entity @s {Dimension:1}



#Best Friends Ribbon, Lumiose Gym
scoreboard players set @e[x=-1827,y=99,z=-1705,dx=23,dy=8,dz=20,nbt=!{pixelmon:pixelmon},scores={Temp=1..}] Temp 0
execute as @e[x=-1827,y=99,z=-1705,dx=23,dy=8,dz=20,nbt=!{pixelmon:pixelmon}] run function kalos:data/calculatefriendship

execute as @e[x=-1827,y=99,z=-1705,dx=23,dy=8,dz=20,nbt=!{pixelmon:pixelmon},scores={Temp=0..50}] run tellraw @a[distance=..10] {"text":"<Bonnie> Sort of friends, perhaps? Am I right?"}
execute as @e[x=-1827,y=99,z=-1705,dx=23,dy=8,dz=20,nbt=!{pixelmon:pixelmon},scores={Temp=51..100}] run tellraw @a[distance=..10] {"text":"<Bonnie> Becoming good friends! I can tell!"}
execute as @e[x=-1827,y=99,z=-1705,dx=23,dy=8,dz=20,nbt=!{pixelmon:pixelmon},scores={Temp=101..150}] run tellraw @a[distance=..10] {"text":"<Bonnie> Pretty good friends! Can I pet it?"}
execute as @e[x=-1827,y=99,z=-1705,dx=23,dy=8,dz=20,nbt=!{pixelmon:pixelmon},scores={Temp=151..200}] run tellraw @a[distance=..10] {"text":"<Bonnie> Really good friends! I want to play with it!"}
execute as @e[x=-1827,y=99,z=-1705,dx=23,dy=8,dz=20,nbt=!{pixelmon:pixelmon},scores={Temp=200..254}] run tellraw @a[distance=..10] {"text":"<Bonnie> Really, really good friends! I want to give it Poké Puffs and play with it!"}
scoreboard players set @e[x=-1827,y=99,z=-1705,dx=23,dy=8,dz=20,nbt=!{pixelmon:pixelmon},scores={Temp=255}] RibbonApply 5

execute as @e[x=-1827,y=99,z=-1705,dx=23,dy=8,dz=20,nbt=!{pixelmon:pixelmon},scores={Temp=0..254}] run data modify entity @s {Dimension:1}




#Effort Ribbon, Laverre Town

scoreboard players set @e[x=-201,y=89,z=-1520,distance=..10,nbt=!{pixelmon:pixelmon},scores={Temp=1..}] Temp 0
execute as @e[x=-201,y=89,z=-1520,distance=..10,nbt=!{pixelmon:pixelmon}] run function kalos:data/calculateevtotal

execute as @e[x=-201,y=89,z=-1520,distance=..10,nbt=!{pixelmon:pixelmon},scores={Temp=0..509}] run tellraw @a[distance=..10] {"text":"<Fan Club Head> Mm-hmm! It is definitely making an effort! However, it will have to work a little harder if it wants to get a special something from me!"}
scoreboard players set @e[x=-201,y=89,z=-1520,distance=..10,nbt=!{pixelmon:pixelmon},scores={Temp=510..510}] RibbonApply 6

execute as @e[x=-201,y=89,z=-1520,distance=..10,nbt=!{pixelmon:pixelmon},scores={Temp=0..509}] run data modify entity @s {Dimension:1}





#Hotel guest Ribbons

#Ribbon Gives
#Executes on armor stand for day of the week
#Executes to player with talked dialogue but not ribbon obtained dialogue
#Executes on a Pokemon waiting to obtain ribbon
#Runs ribbon apply function on Pokemon
#Gives player second dialogue for their ribbon

#Ambrette Town Ribbon Tourist (Monday)
#Room x=-1980,y=108,z=640,dx=16,dy=6,dz=16
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] run tag @a[x=-1980,y=108,z=640,dx=16,dy=6,dz=16,tag=Dialouge269,tag=!Dialogue270,scores={TalkTime=0}] add Temp
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] run execute as @a[tag=Temp] run execute as @e[x=-1980,y=108,z=640,dx=16,dy=6,dz=16,nbt=!{pixelmon:pixelmon}] run scoreboard players set @a[tag=Temp] DialogueTrigger 270
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] run execute as @a[tag=Temp] run scoreboard players set @e[x=-1980,y=108,z=640,dx=16,dy=6,dz=16,nbt=!{pixelmon:pixelmon}] RibbonApply 8
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] run tag @a[tag=Temp] remove Temp

#tps NPC
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] run tp @e[x=-477,y=100,z=1296,dy=3,nbt=!{pixelmon:npc_chatting}] -1970 109 647
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2..}] run tp @e[x=-1970,y=108,z=647,dy=3,nbt=!{pixelmon:npc_chatting}] -477 101 1296



#Camphrier Town Ribbon Tourist (Tuesday)
#Room x=-1100,y=80,z=-6,dx=16,dy=6,dz=16
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run tag @a[x=-1100,y=80,z=-6,dx=16,dy=6,dz=16,tag=Dialouge271,tag=!Dialogue272,scores={TalkTime=0}] add Temp
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @a[tag=Temp] run execute as @e[x=-1100,y=80,z=-6,dx=16,dy=6,dz=16,nbt=!{pixelmon:pixelmon}] run scoreboard players set @a[tag=Temp] DialogueTrigger 272
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run execute as @a[tag=Temp] run scoreboard players set @e[x=-1100,y=80,z=-6,dx=16,dy=6,dz=16,nbt=!{pixelmon:pixelmon}] RibbonApply 9
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run tag @a[tag=Temp] remove Temp

#tps NPC
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=2}] run tp @e[x=-475,y=100,z=1296,dy=3,nbt=!{pixelmon:npc_chatting}] -1090 81 1
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1}] run tp @e[x=-1090,y=80,z=1,dy=3,nbt=!{pixelmon:npc_chatting}] -475 101 1296
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3..}] run tp @e[x=-1090,y=80,z=1,dy=3,nbt=!{pixelmon:npc_chatting}] -475 101 1296



#Geosenge Town Ribbon Tourist (Wednesday)
#Room x=-2180,y=86,z=-643,dx=16,dy=6,dz=16
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] run tag @a[x=-2180,y=86,z=-643,dx=16,dy=6,dz=16,tag=Dialouge273,tag=!Dialogue274,scores={TalkTime=0}] add Temp
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] run execute as @a[tag=Temp] run execute as @e[x=-2180,y=86,z=-643,dx=16,dy=6,dz=16,nbt=!{pixelmon:pixelmon}] run scoreboard players set @a[tag=Temp] DialogueTrigger 274
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] run execute as @a[tag=Temp] run scoreboard players set @e[x=-2180,y=86,z=-643,dx=16,dy=6,dz=16,nbt=!{pixelmon:pixelmon}] RibbonApply 10
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] run tag @a[tag=Temp] remove Temp

#tps NPC
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=3}] run tp @e[x=-473,y=100,z=1296,dy=3,nbt=!{pixelmon:npc_chatting}] -2170 87 -636
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1..2}] run tp @e[x=-2170,y=86,z=-636,dy=3,nbt=!{pixelmon:npc_chatting}] -473 101 1296
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4..}] run tp @e[x=-2170,y=86,z=-636,dy=3,nbt=!{pixelmon:npc_chatting}] -473 101 1296



#Coumarine Town Ribbon Tourist (Thursday)
#Room x=-1045,y=55,z=-817,dx=16,dy=6,dz=16
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run tag @a[x=-1045,y=55,z=-817,dx=16,dy=6,dz=16,tag=Dialouge275,tag=!Dialogue276,scores={TalkTime=0}] add Temp
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @a[tag=Temp] run execute as @e[x=-1045,y=55,z=-817,dx=16,dy=6,dz=16,nbt=!{pixelmon:pixelmon}] run scoreboard players set @a[tag=Temp] DialogueTrigger 276
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run execute as @a[tag=Temp] run scoreboard players set @e[x=-1045,y=55,z=-817,dx=16,dy=6,dz=16,nbt=!{pixelmon:pixelmon}] RibbonApply 11
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run tag @a[tag=Temp] remove Temp

#tps NPC
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=4}] run tp @e[x=-471,y=100,z=1296,dy=3,nbt=!{pixelmon:npc_chatting},tag=Thursday] -1035 56 -810
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1..3}] run tp @e[x=-1035,y=55,z=-810,dy=3,nbt=!{pixelmon:npc_chatting},tag=Thursday] -471 101 1296
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] run tp @e[x=-1035,y=55,z=-810,dy=3,nbt=!{pixelmon:npc_chatting},tag=Thursday] -471 101 1296



#Couriway Town Ribbon Tourist (Friday)
#Room x=1569,y=73,z=260,dx=16,dy=6,dz=16
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] run tag @a[x=1569,y=73,z=260,dx=16,dy=6,dz=16,tag=Dialouge277,tag=!Dialogue278,scores={TalkTime=0}] add Temp
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] run execute as @a[tag=Temp] run execute as @e[x=1569,y=73,z=260,dx=16,dy=6,dz=16,nbt=!{pixelmon:pixelmon}] run scoreboard players set @a[tag=Temp] DialogueTrigger 278
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] run execute as @a[tag=Temp] run scoreboard players set @e[x=1569,y=73,z=260,dx=16,dy=6,dz=16,nbt=!{pixelmon:pixelmon}] RibbonApply 12
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] run tag @a[tag=Temp] remove Temp

#tps NPC
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=5}] run tp @e[x=-469,y=100,z=1296,dy=3,nbt=!{pixelmon:npc_chatting}] 1579 74 267
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1..4}] run tp @e[x=1579,y=73,z=267,dy=3,nbt=!{pixelmon:npc_chatting}] -469 101 1296
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6..}] run tp @e[x=1579,y=73,z=267,dy=3,nbt=!{pixelmon:npc_chatting}] -469 101 1296



#Cyllage Town Ribbon Tourist (Saturday)
#Room x=-2038,y=64,z=-160,dx=16,dy=6,dz=16
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] run tag @a[x=-2038,y=64,z=-160,dx=16,dy=6,dz=16,tag=Dialouge279,tag=!Dialogue280,scores={TalkTime=0}] add Temp
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] run execute as @a[tag=Temp] run execute as @e[x=-2038,y=64,z=-160,dx=16,dy=6,dz=16,nbt=!{pixelmon:pixelmon}] run scoreboard players set @a[tag=Temp] DialogueTrigger 280
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] run execute as @a[tag=Temp] run scoreboard players set @e[x=-2038,y=64,z=-160,dx=16,dy=6,dz=16,nbt=!{pixelmon:pixelmon}] RibbonApply 13
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] run tag @a[tag=Temp] remove Temp

#tps NPC
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=6}] run tp @e[x=-467,y=100,z=1296,dy=3,nbt=!{pixelmon:npc_chatting}] -2028 65 -153
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1..5}] run tp @e[x=-2028,y=65,z=-153,dy=3,nbt=!{pixelmon:npc_chatting}] -467 101 1296
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] run tp @e[x=-2028,y=65,z=-153,dy=3,nbt=!{pixelmon:npc_chatting}] -467 101 1296


#Coumarine Town Ribbon Tourist (Sunday)
#Room x=-1045,y=55,z=-817,dx=16,dy=6,dz=16
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] run tag @a[x=-1045,y=55,z=-817,dx=16,dy=6,dz=16,tag=Dialouge281,tag=!Dialogue282,scores={TalkTime=0}] add Temp
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] run execute as @a[tag=Temp] run execute as @e[x=-1045,y=55,z=-817,dx=16,dy=6,dz=16,nbt=!{pixelmon:pixelmon}] run scoreboard players set @a[tag=Temp] DialogueTrigger 282
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] run execute as @a[tag=Temp] run scoreboard players set @e[x=-1045,y=55,z=-817,dx=16,dy=6,dz=16,nbt=!{pixelmon:pixelmon}] RibbonApply 14
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] run tag @a[tag=Temp] remove Temp

#tps NPC
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=7}] run tp @e[x=-465,y=100,z=1296,dy=3,nbt=!{pixelmon:npc_chatting},tag=Sunday] -1035 56 -810
execute as @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={Weekday=1..6}] run tp @e[x=-1035,y=55,z=-810,dy=3,nbt=!{pixelmon:npc_chatting},tag=Sunday] -465 101 1296












#---------------------------------------------------------
#World Barriers

#Adds skip condition for if player is in the randomizer function

#Aquacorde pre-starter
tellraw @a[x=460,y=101,z=1361,dx=20,dy=10,dz=15,scores={StarterPick=0,TalkTime=0}] ["",{"text":"<"},{"text":"Serena","color":"gold"},{"text":"> "},{"selector":"@p[x=460,y=101,z=1361,dx=20,dy=10,dz=15,score_StarterPick=0]"},{"text":"! This way! Over here!"}]
tp @a[x=460,y=101,z=1361,dx=20,dy=10,dz=15,scores={StarterPick=0}] ~ 108 ~10

#Aquacorde Mom's Letter
tellraw @a[x=460,y=101,z=1361,dx=20,dy=10,dz=15,tag=!Dialogue7,scores={StarterPick=1..}] {"text":"Deliver the Prof's Letter to your mom!","italic":true,"color":"gray"}
tp @a[x=460,y=101,z=1361,dx=20,dy=10,dz=15,tag=!Dialogue7,scores={StarterPick=1..}] ~ 108 ~10

#----------------

#Lumisose Blackout Southern Blvd
tellraw @a[x=64,y=101,z=-287,dx=75,dy=10,dz=20,tag=!LumiosePower] {"text":"<Worker> I\u2019m sorry. There\u2019s a blackout. You can\u2019t go any farther until it\u2019s fixed."}
tp @a[x=64,y=101,z=-287,dx=75,dy=10,dz=20,tag=!LumiosePower] ~-9 ~ ~10

#Vert Plaza Blackout
tellraw @a[x=-30,y=101,z=-181,distance=..10,tag=!LumiosePower] {"text":"<Worker> I\u2019m sorry. There\u2019s a blackout. You can\u2019t go any farther until it\u2019s fixed."}
tp @a[x=-30,y=101,z=-181,distance=..10,tag=!LumiosePower] ~8 ~ ~10

#Vernal Ave
tellraw @a[x=-204,y=100,z=-149,dx=46,dy=10,dz=20,tag=!LumiosePower] {"text":"<Worker> I\u2019m sorry. There\u2019s a blackout. You can\u2019t go any farther until it\u2019s fixed."}
tp @a[x=-204,y=100,z=-149,dx=46,dy=10,dz=20,tag=!LumiosePower] ~ ~ ~10

#Bleu Plaz
tellraw @a[x=-331,y=101,z=-183,distance=..10,tag=!LumiosePower] {"text":"<Worker> I\u2019m sorry. There\u2019s a blackout. You can\u2019t go any farther until it\u2019s fixed."}
tp @a[x=-331,y=101,z=-183,distance=..10,tag=!LumiosePower] ~-8 ~ ~10

#Northern Blvd
tellraw @a[x=-504,y=100,z=-437,dx=62,dy=10,dz=27,tag=!LumiosePower] {"text":"<Worker> I\u2019m sorry. There\u2019s a blackout. You can\u2019t go any farther until it\u2019s fixed."}
tp @a[x=-504,y=100,z=-437,dx=62,dy=10,dz=27,tag=!LumiosePower] ~ ~ ~10

#Estival
tellraw @a[x=-427,y=100,z=-335,dx=11,dy=10,dz=49,tag=!LumiosePower] {"text":"<Worker> I\u2019m sorry. There\u2019s a blackout. You can\u2019t go any farther until it\u2019s fixed."}
tp @a[x=-427,y=100,z=-335,dx=11,dy=10,dz=49,tag=!LumiosePower] ~-10 ~ ~10

#Magenta Plaza
tellraw @a[x=-321,y=101,z=-399,distance=..10,tag=!LumiosePower,scores={TalkTime=0}] {"text":"<Worker> I\u2019m sorry. There\u2019s a blackout. You can\u2019t go any farther until it\u2019s fixed."}
tp @a[x=-321,y=101,z=-399,distance=..10,tag=!LumiosePower] ~-5 ~ ~-10

#Autumnal Ave
tellraw @a[x=-282,y=101,z=-484,distance=..10,tag=!LumiosePower,scores={TalkTime=0}] {"text":"<Worker> I\u2019m sorry. There\u2019s a blackout. You can\u2019t go any farther until it\u2019s fixed."}
tp @a[x=-282,y=101,z=-484,distance=..10,tag=!LumiosePower] ~-6 ~ ~5

#Northn Blvd to Shauna
tellraw @a[x=-489,y=100,z=-520,dx=69,dy=6,dz=15,tag=!LumiosePower,scores={TalkTime=0}] ["",{"text":"<"},{"text":"Shauna","color":"light_purple"},{"text":"> Hey! What are you doing? Let\u2019s go see Prism Tower!"}]
tp @a[x=-489,y=100,z=-520,dx=69,dy=6,dz=15,tag=!LumiosePower] -454 101 -492 -36 ~

tellraw @a[x=-502,y=100,z=-463,dx=60,dy=6,dz=10,tag=!LumiosePower,scores={TalkTime=0}] ["",{"text":"<"},{"text":"Shauna","color":"light_purple"},{"text":"> Hey! What are you doing? Let\u2019s go see Prism Tower!"}]
tp @a[x=-502,y=100,z=-463,dx=60,dy=6,dz=10,tag=!LumiosePower] ~ ~ ~-10

#----------------

#Route 7, Route 6 block before Snorlax talk
tellraw @a[x=-1207,y=100,z=-55,dx=31,dy=10,dz=11,tag=!Dialogue28,scores={TalkTime=0}] ["",{"text":"<"},{"text":"Shauna","color":"light_purple"},{"text":"> "},{"selector":"@p[x=-1207,y=100,z=-55,dx=31,dy=10,dz=11,tag=!Dialogue28]"},{"text":"! They said they were going this way!"}]
tp @a[x=-1207,y=100,z=-55,dx=31,dy=10,dz=11,tag=!Dialogue28] ~ ~ ~10

#Ambrette Talk to Fossil Lab
tellraw @a[x=-1908,y=140,z=618,dx=10,dy=10,dz=14,tag=!Dialogue39,scores={TalkTime=0}] ["",{"text":"<"},{"text":"Serena","color":"gold"},{"text":"> Hey "},{"selector":"@a[x=-1908,y=140,z=618,dx=10,dy=10,dz=14,score_TalkTime=0,tag=!Dialogue39]"},{"text":"! The Fossil Lab is this way!"}]
tp @a[x=-1908,y=140,z=618,dx=10,dy=10,dz=14,tag=!Dialogue39] ~-10 ~ ~

#Glittering Cave first Team Flare grunt pulling player back
tellraw @a[x=-1423,y=147,z=309,dx=10,dy=5,dz=4,tag=!Dialogue41,scores={TalkTime=0}] {"text":"<Team Flare Grunt> Get back here!"}

#Glittering Cave Double Flare block
tp @a[x=-1442,y=147,z=269,dx=6,dy=5,dz=8,tag=!Dialogue43] ~6 ~ ~

#Route 8 Pre-Fossil block
tellraw @a[x=-2234,y=83,z=337,dx=283,dy=30,dz=5,tag=!Dialogue44] {"text":"<...> W-w-wait! Stop! I dropped the Fossil I was taking to the Fossil Lab in Ambrette Town. I\u2019m really sorry, but could you wait a little bit until I find it?"}
tp @a[x=-2234,y=83,z=337,dx=283,dy=30,dz=5,tag=!Dialogue44] -1971 100 355 ~ ~

#Geosenge Town Battle Korrina to continue
tellraw @a[x=-2088,y=103,z=-703,dx=10,dy=10,dz=26,tag=!Dialogue54,scores={TalkTime=0}] {"text":"Win against Korrina to continue!","italic":true,"color":"gray"}
tp @a[x=-2088,y=103,z=-703,dx=10,dy=10,dz=26,tag=!Dialogue54] ~-10 ~ ~

#Shalour City Hiker directing to Trevor and Tierno
tellraw @a[x=-1578,y=80,z=-853,dx=13,dy=12,dz=8,tag=!Dialogue56,scores={TalkTime=0}] {"text":"<Hiker> I\u2019m really sorry, but I\u2019m looking for something."}
tp @a[x=-1578,y=80,z=-853,dx=13,dy=12,dz=8,tag=!Dialogue56] ~ ~ ~10

#Tower of Mastery pre-Korrina gym
tellraw @a[x=-1705,y=96,z=-1202,dx=13,dy=10,dz=10,tag=!Korrina,scores={TalkTime=0}] {"text":"<Tower Guard> Only those who have been approved may climb the Tower of Mastery!"}
tp @a[x=-1705,y=96,z=-1202,dx=13,dy=10,dz=10,tag=!Korrina] -1692 93 -1207

#Route 14 Defeat Serena to continue
tellraw @a[x=-193,y=99,z=-933,dx=18,dy=10,dz=11,tag=!Dialogue81,scores={TalkTime=0}] ["",{"text":"<"},{"text":"Serena","color":"gold"},{"text":"> Come on! Let's battle."}]
tp @a[x=-193,y=99,z=-933,dx=18,dy=10,dz=11,tag=!Dialogue81] ~ ~ ~10

#Route 14 visit Scary House
tellraw @a[x=-195,y=99,z=-1243,dx=23,dy=5,dz=15,tag=!Dialogue84,scores={TalkTime=0}] ["",{"text":"<"},{"text":"Shauna","color":"light_purple"},{"text":"> C'mon! This way!"}]
tp @a[x=-195,y=99,z=-1243,dx=23,dy=5,dz=15,tag=!Dialogue84] ~ ~ ~10

#Poke Ball Interior Flare Blocks
tp @a[x=-136,y=94,z=-1927,dx=4,dy=5,dz=8,tag=!Dialogue90] ~ ~ ~8
tp @a[x=-134,y=104,z=-1998,dx=6,dy=5,dz=5,tag=!Dialogue90] ~-7 ~ ~

#Anistar City South Exit
tellraw @a[x=1342,y=107,z=-122,dx=14,dy=6,dz=15,tag=!Dialogue133,scores={TalkTime=0}] {"text":"<Worker> Stop! The road up ahead was all torn up by the Durant, and we\u2019re still trying to fix it."}
tp @a[x=1342,y=107,z=-122,dx=14,dy=6,dz=15,tag=!Dialogue133] ~ ~ ~-10

#Route 19 Defeat Friends
tellraw @a[x=1404,y=99,z=489,dx=15,dy=10,dz=6,tag=!Dialogue140,scores={TalkTime=0}] {"text":"Battle your friends on the bridge!","italic":true,"color":"gray"}
tp @a[x=1404,y=99,z=489,dx=15,dy=10,dz=6,tag=!Dialogue140] ~10 ~ ~

#Terminus Cave block Zygarde before Champion
tellraw @a[x=2023,y=41,z=-100,dx=12,dy=20,dz=5,scores={PokemonLeague=0}] {"text":"<Ace Trainer> It must be dangerous to go further ahead unless you're as strong as the Champion."}
tp @a[x=2023,y=41,z=-100,dx=12,dy=20,dz=5,scores={PokemonLeague=0}] 2043 41 -98

#Victory Road Western Waterfall
tp @a[x=1599,y=100,z=2327,dx=19,dy=156,dz=13] ~10 ~ ~

#Northern Waterfall
tp @a[x=1615,y=100,z=2183,dx=50,dy=156,dz=24] ~10 ~ ~

#East Waterfall
tp @a[x=1760,y=100,z=2335,dx=15,dy=156,dz=28] ~-10 ~ ~

#Southern Waterfall
tp @a[x=1627,y=100,z=2415,dx=22,dy=156,dz=36] ~ ~ ~-10

#Geosenge Town Eastern block until talk with Team Flare grunt twice
tp @a[x=-2116,y=103,z=-702,dx=10,dy=10,dz=23,tag=!Dialogue52] ~-10 ~ ~
execute as @a[x=-2124,y=104,z=-691,distance=..20,tag=!Dialogue52] run tp @e[x=-504,y=215,z=1254,dy=3,nbt=!{pixelmon:npc_chatting},limit=1] -2116 104 -698
execute as @a[x=-2124,y=104,z=-691,distance=..20,tag=!Dialogue52] run tp @e[x=-504,y=215,z=1254,dy=3,nbt=!{pixelmon:npc_chatting},limit=1] -2116 104 -696
execute as @a[x=-2124,y=104,z=-691,distance=..20,tag=!Dialogue52] run tp @e[x=-504,y=215,z=1254,dy=3,nbt=!{pixelmon:npc_chatting},limit=1] -2116 104 -694
execute as @a[x=-2124,y=104,z=-691,distance=..20,tag=!Dialogue52] run tp @e[x=-504,y=215,z=1254,dy=3,nbt=!{pixelmon:npc_chatting},limit=1] -2116 104 -692
execute as @a[x=-2124,y=104,z=-691,distance=..20,tag=!Dialogue52] run tp @e[x=-504,y=215,z=1254,dy=3,nbt=!{pixelmon:npc_chatting},limit=1] -2116 104 -689
execute as @a[x=-2124,y=104,z=-691,distance=..20,tag=!Dialogue52] run tp @e[x=-504,y=215,z=1254,dy=3,nbt=!{pixelmon:npc_chatting},limit=1] -2116 104 -687
execute as @a[x=-2124,y=104,z=-691,distance=..20,tag=!Dialogue52] run tp @e[x=-504,y=215,z=1254,dy=3,nbt=!{pixelmon:npc_chatting},limit=1] -2116 104 -685
execute as @a[x=-2124,y=104,z=-691,distance=..20,tag=!Dialogue52] run tp @e[x=-504,y=215,z=1254,dy=3,nbt=!{pixelmon:npc_chatting},limit=1] -2116 104 -683
execute as @a[x=-2124,y=104,z=-691,distance=..20,tag=!Dialogue52] run tp @e[x=-504,y=215,z=1252,dy=3,nbt=!{pixelmon:npc_chatting}] -2120 104 -690.0
execute as @a[x=-2124,y=104,z=-691,distance=..20,tag=!Dialogue52] run tp @a[x=-2116,y=103,z=-702,dx=10,dy=10,dz=23,tag=!Dialogue52] ~-10 ~ ~

execute as @a[x=-2124,y=104,z=-691,distance=..30,tag=Dialogue52] run tp @e[x=-2120,y=103,z=-691,dy=3,dz=1,nbt=!{pixelmon:npc_chatting}] -504 216 1252
execute as @a[x=-2124,y=104,z=-691,distance=..30,tag=Dialogue52] run tp @e[x=-2116,y=103,z=-699,dy=3,dz=17,nbt=!{pixelmon:npc_chatting}] -504 216 1254

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
tellraw @a[x=-728,y=102,z=-474,dx=10,dy=10,dz=12,tag=!Dialogue75,scores={TalkTime=0}] {"text":"<Worker> Is the power not getting here? The gate to Lumiose won\u2019t open... The Power Plant is running, so what could be going on?"}
tp @a[x=-728,y=102,z=-474,dx=10,dy=10,dz=12,tag=!Dialogue75] ~-10 ~ ~

#Power Plant before defeating first Flare Grunt
tellraw @a[x=-981,y=53,z=-340,dx=7,dy=8,dz=5,tag=!Dialogue72,scores={TalkTime=0}] {"text":"Defeat the Team Flare Grunts!","italic":true,"color":"gray"}
tp @a[x=-981,y=53,z=-340,dx=7,dy=8,dz=5,tag=!Dialogue72] ~10 ~ ~

#Power Plant blocking right path of generator room
tellraw @a[x=-984,y=53,z=-352,dx=5,dy=5,dz=3,tag=!Dialogue75,scores={TalkTime=0}] ["",{"text":"<Team Flare Grunt> ","color":"white"},{"text":"Now I\u2019m mad! I told you I was persistent! I refuse to budge from this spot! Not an inch!"}]
tp @a[x=-984,y=53,z=-352,dx=5,dy=5,dz=3,tag=!Dialogue75] ~ ~ ~7

#Lysandre Labs Nix blocking the way until after battle
tp @a[x=-305,y=28,z=318,dx=20,dy=5,dz=10,tag=!Dialogue200] -297 29 331

#Flare HQ Battle Lysandre to exit lobby
tellraw @a[x=-2372,y=69,z=-987,dx=13,dy=5,dz=4,tag=!Dialogue123,scores={TalkTime=0}] {"text":"Defeat Lysandre!","italic":true,"color":"gray"}
tp @a[x=-2372,y=69,z=-987,dx=13,dy=5,dz=4,tag=!Dialogue123] ~10 ~ ~

#Geosenge version portal managers

#C-K
execute as @a[x=-2130,y=103,z=-702,dx=14,dy=10,dz=23,scores={Geosenge=2}] run tp @e[distance=..3,nbt=!{pixelmon:bike}] -317 109 2030
tp @a[x=-2130,y=103,z=-702,dx=14,dy=10,dz=23,scores={Geosenge=2}] -317 109 2030

#A-I
execute as @a[x=-2224,y=103,z=-612,dx=26,dy=10,dz=13,scores={Geosenge=2}] run tp @e[distance=..3,nbt=!{pixelmon:bike}] -411 109 2118
tp @a[x=-2224,y=103,z=-612,dx=26,dy=10,dz=13,scores={Geosenge=2}] -411 109 2118

#J-B
execute as @a[x=-423,y=108,z=2123,dx=25,dy=10,dz=15,scores={Geosenge=2}] run tp @e[distance=..3,nbt=!{pixelmon:bike}] -2210 104 -593
tp @a[x=-423,y=108,z=2123,dx=25,dy=10,dz=15,scores={Geosenge=2}] -2210 104 -593

#L-D
execute as @a[x=-314,y=108,z=2018,dx=18,dy=10,dz=23,scores={Geosenge=2}] run tp @e[distance=..3,nbt=!{pixelmon:bike}] -2112 104 -690
tp @a[x=-314,y=108,z=2018,dx=18,dy=10,dz=23,scores={Geosenge=2}] -2112 104 -690

#C-G
execute as @a[x=-2130,y=103,z=-702,dx=14,dy=10,dz=23,scores={Geosenge=1}] run tp @e[distance=..3,nbt=!{pixelmon:bike}] -1040 109 2030
tp @a[x=-2130,y=103,z=-702,dx=14,dy=10,dz=23,scores={Geosenge=1}] -1040 109 2030

#A-E
execute as @a[x=-2224,y=103,z=-612,dx=26,dy=10,dz=13,scores={Geosenge=1}] run tp @e[distance=..3,nbt=!{pixelmon:bike}] -1131 109 2117
tp @a[x=-2224,y=103,z=-612,dx=26,dy=10,dz=13,scores={Geosenge=1}] -1131 109 2117

#F-B
execute as @a[x=-1143,y=108,z=2123,dx=25,dy=10,dz=15,scores={Geosenge=1}] run tp @e[distance=..3,nbt=!{pixelmon:bike}] -2210 104 -593
tp @a[x=-1143,y=108,z=2123,dx=25,dy=10,dz=15,scores={Geosenge=1}] -2210 104 -593

#H-D
execute as @a[x=-1034,y=108,z=2018,dx=18,dy=10,dz=23,scores={Geosenge=1}] run tp @e[distance=..3,nbt=!{pixelmon:bike}] -2112 104 -690
tp @a[x=-1034,y=108,z=2018,dx=18,dy=10,dz=23,scores={Geosenge=1}] -2112 104 -690


#---------------------------------------------------------
