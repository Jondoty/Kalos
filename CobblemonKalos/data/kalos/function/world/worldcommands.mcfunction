
#---------------------------------------------------------
#Important triggers for functions of map

#Runs the beginning commands if a player is near spawn without initial tag
execute as @a[x=-552,y=100,z=1257,distance=..25,tag=!InitialTags] run function kalos:triggers/startingcommands


#Runs constantly-scanning Music switching and area display titles function
execute as @a[scores={TalkTime=0,TrainerClass=0}] run function kalos:world/musictitles


#Runs TalkTrigger if applicable score (used to nest commands)
execute as @a[scores={TalkTrigger=1..}] run function kalos:triggers/talktrigger


#Relog Trigger (player leaves world and joins back)
execute as @a[scores={relog=1..}] run function kalos:triggers/relog


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



#------------------------------------------------------------------------------
#Music commands
#Music rate: 86 ticks per 60 seconds (~1 second x 1.4)

#Runs battle music and post-battle events
#Battle endings
execute as @a[scores={BattleEnd=1..}] run function kalos:battles/battleend


#Battle start and music
execute as @a[scores={BattleStart=1..,MusicCooldown=0},tag=BattleMusicCooldown] run tag @s remove BattleMusicCooldown
execute as @a[scores={BattleStart=1..},tag=!BattleMusicCooldown] run function kanto:triggers/battles/battlestart


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

