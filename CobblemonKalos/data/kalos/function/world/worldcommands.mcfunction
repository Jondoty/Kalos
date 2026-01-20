
#---------------------------------------------------------
#Important triggers for functions of map

#Auto reloads the server if function fails to load (should thus fix itself by reloading)
tag @e[x=-563,y=100,z=1241,dy=3,type=armor_stand] remove ReloadCheck
function kalos:triggers/autoreload
execute if entity @e[x=-563,y=100,z=1241,dy=3,type=armor_stand,tag=!ReloadCheck] run reload

#Runs infolist command for non-ops
execute as @a[scores={Info=1..}] run function tools:infolist
execute as @a[scores={info=1..}] run function tools:infolist


#Runs the beginning commands if a player is near spawn without initial tag
execute as @a[x=-552,y=100,z=1257,distance=..25,tag=!InitialTags] run function kalos:triggers/startingcommands

#Aligns and gets rid of nametags on NPCs
execute as @e[type=cobblemon:npc,nbt={PersistenceRequired:0b}] run data merge entity @s {PersistenceRequired:1b,HideNPCNameTag:1b}

#Runs constantly-scanning Music switching and area display titles function
execute as @a run function kalos:world/musictitles

#Road blocks for story and order guidance
execute as @a run function kalos:world/roadblocks

#Runs TalkTrigger if applicable score (used to nest commands)
execute as @a[scores={TalkTrigger=1..}] run function kalos:triggers/talktrigger


#Relog Trigger (player leaves world and joins back)
execute as @a[scores={relog=1..}] run function kalos:triggers/relog

#Runs TriggerCommand Function
execute as @a[scores={TriggerCommand=1..}] run function kalos:triggers/triggercommands

#Photo-Spot Dismissal if player walks away
execute at @e[type=armor_stand,tag=PhotoSpot] run execute as @a[distance=20..50,scores={DialogueTrigger=0,PhotoSpot=1..}] run scoreboard players set @s TalkTrigger 299


#Signs players click on to read
execute as @a[scores={SignRead=..1}] run function kalos:dialogue/signtexts

#Tracks player motion between sprinting/Jumping and walking for a motion-based Cooldown
scoreboard players operation @a[scores={CooldownSprint=1..}] Cooldown += @a[scores={CooldownSprint=1..}] CooldownSprint
scoreboard players add @a[scores={CooldownJump=1..}] Cooldown 500
scoreboard players set @a[scores={CooldownSprint=1..}] CooldownSprint 0
scoreboard players set @a[scores={CooldownJump=1..}] CooldownJump 0
#tellraw @a[x=-488,y=100,z=1414,distance=..3,scores={Cooldown=5000..}] {"text":"Hey this is a test!"}
#scoreboard players set @a[x=-488,y=100,z=1414,distance=..3,scores={Cooldown=5000..}] Cooldown 0


#Runs whiteout function if enabled

#Runs a few dialogues the player is able to lose and progress the story
execute as @a[x=-1635,y=188,z=-1180,distance=..30,tag=Dialogue63,tag=!Dialogue64,tag=Whiteout] run opendialogue korrina_dialogue64 @s
execute as @a[x=1469,y=101,z=-1954,distance=..150,tag=Dialogue155,tag=!Dialogue156,tag=Whiteout] run scoreboard players set @s DialogueTrigger 156

#Exceptions, Battle Maison, Chateau, restaurants, Lumiose Parade, Korrina's Successor battle
execute as @a[x=1182,y=63,z=1511,dx=76,dy=31,dz=94,tag=Whiteout] run tag @s remove Whiteout
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,tag=Whiteout] run tag @s remove Whiteout
execute as @a[x=514,y=100,z=116,dx=346,dy=20,dz=71,tag=Whiteout] run tag @s remove Whiteout
execute as @a[x=1469,y=101,z=-1954,distance=..150,tag=Whiteout] run tag @s remove Whiteout
execute as @a[x=-1635,y=188,z=-1180,distance=..30,tag=Whiteout] run tag @s remove Whiteout

execute as @a[tag=Whiteout] if entity @e[x=-563,y=100,z=1241,dy=3,tag=WhiteoutEnable] run function kalos:triggers/whiteout
execute as @a[tag=Whiteout] run tag @s remove Whiteout


#Runs daily commands, sets time to armor stand based on game time
execute store result score @e[x=-687,y=100,z=1388,dy=4,type=armor_stand] DayTime run time query daytime
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={DayTime=18000..},tag=!DailyExecuted] run function kalos:world/dailycommands
execute if entity @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={DayTime=18000..},tag=!DailyExecuted] run tag @e[x=-687,y=100,z=1388,dy=4,type=armor_stand] add DailyExecuted
tag @e[x=-687,y=100,z=1388,dy=4,type=armor_stand,scores={DayTime=..1000},tag=DailyExecuted] remove DailyExecuted


#Displays the player's Battle Points or Money if in a shop that uses them
title @a[team=shops] actionbar ["",{"text":"Your Money Balance: $"},{"score":{"name":"*","objective":"Money"}}]
title @a[team=battlepoints] actionbar ["",{"text":"Your Battle Points: "},{"score":{"name":"*","objective":"BattlePoints"}}]

#Runs the Rhyhorn-only route, Route 9
execute as @a[x=-1875,y=137,z=560,dx=507,dy=6,dz=202,tag=!RhyhornBypass] run function kalos:world/rhyhornroute

#Integrates Cobblemon-Home compatibility
execute if block -259 111 87 air if entity @p[x=-259,y=111,z=87,distance=..30] run function kalos:spawn/pokemonhome
execute if entity @p[x=-259,y=111,z=87,distance=..6,scores={PokemonLeague=0}] unless entity @e[x=-259,y=111,z=87,distance=..2,type=interaction] run summon minecraft:interaction -259 111 87 {width:1.25,height:1.25,response:1,Tags:[NPCs]} 
execute if entity @p[x=-259,y=111,z=87,distance=..6,scores={PokemonLeague=1..}] run kill @e[x=-259,y=111,z=87,distance=..2,type=interaction]

#---------------------------------------------------------
#HMs/Important item functions

#Flash
#Runs if player can fly
execute as @a[scores={click=1..},nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"HM02: Fly"}],"text":""}'}}}] run scoreboard players set @s Fly 1
execute as @a[scores={click=1..},nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"HM02: Fly"}],"text":""}'}}}] run function kalos:hms/fly
execute as @a[scores={click=1..},nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"HM02: Fly"}],"text":""}'}}}] run scoreboard players set @s click 0

#Activates Flash
execute as @a[scores={click=1..},nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"TM70: Flash"}],"text":""}'}}}] run tellraw @s {"text":"You used Flash!","italic":true,"color":"gray"} 
execute as @a[scores={click=1..},nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"TM70: Flash"}],"text":""}'}}}] run effect give @s minecraft:night_vision 900 1 true
execute as @a[scores={click=1..},nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"TM70: Flash"}],"text":""}'}}}] run playsound minecraft:entity.firework_rocket.launch ambient @s ~ ~ ~ 1 1 1
execute as @a[scores={click=1..},nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"TM70: Flash"}],"text":""}'}}}] run scoreboard players set @s click 0


#Town Map
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Town Map"}],"text":""}'}}}] run function kalos:hms/townmap
execute as @a[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Town Map"}],"text":""}'}}]}] run function kalos:hms/townmap

execute as @a[scores={MapSelect=1..}] run function kalos:hms/townmap

#Escape Rope
execute as @a[scores={EscapeRopeUse=1..}] run function kalos:hms/escaperope

#Honey
execute as @a[scores={HoneyUse=1..}] run function kalos:hms/honey

#Escape Rope
execute as @a[scores={EscapeRopeUse=1..}] run function kalos:hms/escaperope


#Saves players that fall into Strength Pits
execute as @a run function kalos:hms/strengthpit


#HM Surf giving faster swimming and water breathing
execute as @a[tag=Surf] at @s if block ~ ~ ~ minecraft:water run effect give @s minecraft:water_breathing 10 255 true
execute as @a[tag=Surf] at @s if block ~ ~ ~ minecraft:water run effect give @s minecraft:dolphins_grace 10 2 true


#Running Shoe and Bike Speed Effects
execute as @a unless entity @s[tag=Cycling] run attribute @s minecraft:generic.movement_speed base set 0.15
execute as @a unless entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:golden_boots"}]}] run attribute @s minecraft:generic.movement_speed base set 0.15

execute as @a[nbt={Inventory:[{Slot:100b,id:"minecraft:golden_boots"}]}] run attribute @s minecraft:generic.movement_speed base set 0.225
execute as @a[tag=Cycling] run attribute @s[nbt={Inventory:[{Slot:103b,components:{"minecraft:custom_name":'{"extra":[{"color":"red","italic":false,"text":"Bicycle"}],"text":""}'}}]}] minecraft:generic.movement_speed base set 0.3




#Bicycle

#If player has an item on their head, prevents clearing it
execute as @a[scores={click=1..},nbt={SelectedItem:{components:{"minecraft:custom_name": '{"extra":[{"color":"red","italic":false,"text":"Bicycle"}],"text":""}'}}}] if entity @s[nbt={Inventory:[{count:1,Slot:103b}]}] run tellraw @s {"text":"You have a cosmetic item equipped on your head, dequip to use the bikes!","italic":true,"color":"gray"}
execute as @a[scores={click=1..},nbt={SelectedItem:{components:{"minecraft:custom_name": '{"extra":[{"color":"red","italic":false,"text":"Bicycle"}],"text":""}'}}}] if entity @s[nbt={Inventory:[{count:1,Slot:103b}]}] run scoreboard players set @s click 0

#Equips and dequips bikes
execute as @a[scores={click=1..},nbt={SelectedItem:{components:{"minecraft:custom_name": '{"extra":[{"color":"red","italic":false,"text":"Bicycle"}],"text":""}'}}}] run tag @s add BikeEquip

execute as @a[tag=BikeEquip] run clear @s minecraft:carrot_on_a_stick[custom_name='["",{"text":"Bicycle","italic":false,"color":"red"}]',lore=['["",{"text":"A folding Bicycle that enables a rider to get around","italic":false}]','[{"text":"much faster than a pair of Running Shoes will allow.","italic":false}]'],custom_model_data=5]
execute as @a[tag=BikeEquip] run item replace entity @s armor.head with carrot_on_a_stick[custom_name='["",{"text":"Bicycle","italic":false,"color":"red"}]',lore=['["",{"text":"A folding Bicycle that enables a rider to get around","italic":false}]','[{"text":"much faster than a pair of Running Shoes will allow.","italic":false}]'],custom_model_data=5]
execute as @a[tag=BikeEquip] run function kalos:triggers/stopsound
execute as @a[tag=BikeEquip] run playsound minecraft:item.armor.equip_iron ambient @s

execute as @a[tag=BikeEquip] run scoreboard players set @s click 0
tag @a[tag=BikeEquip] remove BikeEquip


#Checks if the player has the cycles equiped for music & cycling features
tag @a[nbt={Inventory:[{Slot:103b,components:{"minecraft:custom_name": '{"extra":[{"color":"red","italic":false,"text":"Bicycle"}],"text":""}'}}]}] add Cycling

#Removes if cycling tag is found, but bike is not
execute as @a[tag=Cycling] unless entity @s[nbt={Inventory:[{Slot:103b,components:{"minecraft:custom_name":'{"extra":[{"color":"red","italic":false,"text":"Bicycle"}],"text":""}'}}]}] run tag @s remove Cycling

#Stops music if players dequips cycle
execute as @a[tag=CyclingMusic] unless entity @s[tag=Cycling] run function kalos:triggers/stopsound
execute as @a[tag=CyclingMusic] unless entity @s[tag=Cycling] run tag @s remove CyclingMusic


#Starts Skiddo music
execute as @a[tag=!SkiddoMusic] at @s if entity @e[distance=..1.5,type=cobblemon:pokemon,nbt={Pokemon:{Species:"cobblemon:skiddo"}}] run function kalos:triggers/stopsound
execute as @a[tag=!SkiddoMusic] at @s if entity @e[distance=..1.5,type=cobblemon:pokemon,nbt={Pokemon:{Species:"cobblemon:skiddo"}}] run tag @s add SkiddoMusic

#Stops Skiddo music if players dismounts a Skiddo
execute as @a[tag=SkiddoMusic] at @s unless entity @e[distance=..1.5,type=cobblemon:pokemon,nbt={Pokemon:{Species:"cobblemon:skiddo"}}] run function kalos:triggers/stopsound
execute as @a[tag=SkiddoMusic] at @s unless entity @e[distance=..1.5,type=cobblemon:pokemon,nbt={Pokemon:{Species:"cobblemon:skiddo"}}] run tag @s remove SkiddoMusic

#---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Story Dialogues

#Dialogue Trigger conditions
execute as @a[tag=!InDialogue] run function kalos:dialogue/dialoguetriggers

#Primary Dialogue function
execute as @a[scores={DialogueTrigger=1..265}] run function kalos:dialogue/dialogue

#Holo Caster Calls
execute as @a[tag=!InDialogue,scores={HoloCall=1..}] run function kalos:dialogue/holocall

#------------------------------------------------------------------------------
#Music commands
#Music rate: 86 ticks per 60 seconds (~1 second x 1.4)

#Runs battle music and post-battle events
#Battle endings
execute as @a[scores={BattleEnd=1..}] run function kalos:battles/battleend


#Battle start and music
execute as @a[scores={BattleStart=1..,MusicCooldown=0},tag=BattleMusicCooldown] run tag @s remove BattleMusicCooldown
execute as @a[scores={BattleStart=1..},tag=!BattleMusicCooldown] run function kalos:battles/battlestart


#Runs the click trigger if player uses Carrot on a Stick
execute as @a[scores={click=1..},tag=TempDelay] run function kalos:triggers/click
tag @a[scores={click=1..},tag=!TempDelay] add TempDelay


#Runs music for players holding radio
tag @a[scores={MusicCooldown=0},tag=!RadioOff,nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}]}] add TrackSeek
tag @a[scores={MusicCooldown=0},tag=!RadioOff,nbt={Inventory:[{Slot:0b,components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}]}] add TrackSeek
tag @a[scores={MusicCooldown=0},tag=!RadioOff,nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}]}] add TrackSeek
tag @a[scores={MusicCooldown=0},tag=!RadioOff,nbt={Inventory:[{Slot:2b,components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}]}] add TrackSeek
tag @a[scores={MusicCooldown=0},tag=!RadioOff,nbt={Inventory:[{Slot:3b,components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}]}] add TrackSeek
tag @a[scores={MusicCooldown=0},tag=!RadioOff,nbt={Inventory:[{Slot:4b,components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}]}] add TrackSeek
tag @a[scores={MusicCooldown=0},tag=!RadioOff,nbt={Inventory:[{Slot:5b,components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}]}] add TrackSeek
tag @a[scores={MusicCooldown=0},tag=!RadioOff,nbt={Inventory:[{Slot:6b,components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}]}] add TrackSeek
tag @a[scores={MusicCooldown=0},tag=!RadioOff,nbt={Inventory:[{Slot:7b,components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}]}] add TrackSeek
tag @a[scores={MusicCooldown=0},tag=!RadioOff,nbt={Inventory:[{Slot:8b,components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Holo Caster"}],"text":""}'}}]}] add TrackSeek
execute as @a[tag=TrackSeek,tag=!RadioOff] run function kalos:world/music


#removes MusicCooldown score for music timings
scoreboard players remove @a[scores={MusicCooldown=1..}] MusicCooldown 1

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
effect give @a[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188] minecraft:night_vision 15 1 true
execute if entity @a[x=-242,y=91,z=-2026,dx=180,dy=3,dz=188,limit=1] run setblock -600 101 1154 minecraft:iron_block
execute unless entity @a[x=-242,y=91,z=-2026,dx=180,dy=3,dz=188,limit=1] if block -600 101 1154 minecraft:iron_block run setblock -600 101 1154 minecraft:redstone_block


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
#Misc Random Events

#Vaniville Animated Door
execute if entity @a[x=455,y=107,z=1515,dx=29,dy=20,dz=80] run setblock -676 100 1172 minecraft:redstone_block
execute unless entity @a[x=455,y=107,z=1515,dx=29,dy=20,dz=80] run setblock -676 100 1172 minecraft:iron_block

#Poke Ball Factory reversing conveyor belt
#Determines the conveyer's current state
execute if block -218 96 -1902 stone_button[powered=true] as @e[x=-681,y=100,z=1388,dy=3,type=armor_stand,tag=!Reverse] run tag @s add Temp1
execute if block -218 96 -1902 stone_button[powered=true] as @e[x=-681,y=100,z=1388,dy=3,type=armor_stand,tag=Reverse] run tag @s add Temp2

#Inverts the state by adding or removing tag
execute if block -218 96 -1902 stone_button[powered=true] as @e[x=-681,y=100,z=1388,dy=3,type=armor_stand,tag=Temp1] run tag @s add Reverse
execute if block -218 96 -1902 stone_button[powered=true] as @e[x=-681,y=100,z=1388,dy=3,type=armor_stand,tag=Temp2] run tag @s remove Reverse

#Common ending
execute if block -218 96 -1902 stone_button[powered=true] as @e[x=-681,y=100,z=1388,dy=3,type=armor_stand] run tag @s remove Temp1
execute if block -218 96 -1902 stone_button[powered=true] as @e[x=-681,y=100,z=1388,dy=3,type=armor_stand] run tag @s remove Temp2

execute if block -218 96 -1902 stone_button[powered=true] run tellraw @a[x=-242,y=87,z=-2026,dx=180,dy=30,dz=188] {"text":"The belts changed direction!","italic":true,"color":"gray"}
execute if block -218 96 -1902 stone_button[powered=true] run setblock -218 96 -1902 minecraft:stone_button[facing=south,face=wall,powered=false]


#Elite Four Chambers levetation effects
#Fire
effect clear @a[x=-2028,y=44,z=2112,dx=4,dy=5,dz=4] minecraft:levitation
tp @a[x=-2028,y=44,z=2112,dx=4,dy=5,dz=4] -2040 30 2048 180 ~
effect give @a[x=-2028,y=6,z=2112,dx=4,dy=50,dz=4] minecraft:levitation 5 5 true

#Water
effect clear @a[x=-1972,y=44,z=2110,dx=4,dy=5,dz=4] minecraft:levitation
tp @a[x=-1972,y=44,z=2110,dx=4,dy=5,dz=4] -1951 30 2048 180 ~
effect give @a[x=-1972,y=6,z=2110,dx=4,dy=50,dz=4] minecraft:levitation 5 5 true

#Iron
effect clear @a[x=-1839,y=44,z=2111,dx=4,dy=5,dz=4] minecraft:levitation
tp @a[x=-1839,y=44,z=2111,dx=4,dy=5,dz=4] -1862 30 2048 180 ~
effect give @a[x=-1839,y=6,z=2111,dx=4,dy=50,dz=4] minecraft:levitation 5 5 true

#Dragon
effect clear @a[x=-1786,y=44,z=2111,dx=4,dy=5,dz=4] minecraft:levitation
tp @a[x=-1786,y=44,z=2111,dx=4,dy=5,dz=4] -1773 30 2048 180 ~
effect give @a[x=-1786,y=6,z=2111,dx=4,dy=50,dz=4] minecraft:levitation 5 5 true




#Helps convert armor stand model data to newer formats
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":1},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":1}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":2},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":2}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":3},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":3}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":4},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":4}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":5},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":5}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":6},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":6}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":7},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":7}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":8},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":8}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":9},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":9}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":10},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":10}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":11},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":11}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":12},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":12}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":13},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":13}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":14},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":14}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":15},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":15}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":16},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":16}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":17},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":17}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":18},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":18}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":19},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":19}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":20},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":20}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":21},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":21}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":22},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":22}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":23},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":23}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":24},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":24}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":25},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":25}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":26},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":26}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":27},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":27}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":28},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":28}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":29},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":29}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":30},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":30}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":31},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":31}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":32},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":32}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":33},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":33}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":34},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":34}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":35},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":35}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":36},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":36}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":37},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":37}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":38},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":38}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":39},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":39}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":40},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":40}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":41},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":41}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":42},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":42}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":43},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":43}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":44},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":44}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":45},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":45}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":46},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":46}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":47},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":47}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":48},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":48}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":49},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":49}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":50},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":50}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":51},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":51}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":52},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":52}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":53},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":53}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":54},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":54}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":55},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":55}}]}
execute as @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{components:{"minecraft:damage":56},count:1,id:"minecraft:iron_hoe"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":56}}]}




#