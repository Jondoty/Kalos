#Player enters area, gives score of call area player is in
#Runs the commands if player doesn't have CallX tag
#Plays ring sound, waits for player to look at Caster
#Once caster is selected, replaces item with model of respective person depending on slot
#Dialogue plays, player can switch out of call or go anywhere and dialogue continues. Targets player with both trigger score and !CallX tag
#When dialogue finishes, scans a player's inventory and gives them back a damage 0 Carrot on a Stick
#Gives player CallX tag so call does not repeat


#Sets Holo Score to 0 if DialogueTrigger is active
scoreboard players set @a[scores={DialogueTrigger=1..,HoloCall=1..}] HoloCall 0



#Adds score depending on which slot selected
scoreboard players set @a[scores={HoloCall=1..},nbt={SelectedItemSlot:0,Inventory:[{Slot:0b,id:"minecraft:carrot_on_a_stick"}]}] HoloSelect 1
scoreboard players set @a[scores={HoloCall=1..},nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,id:"minecraft:carrot_on_a_stick"}]}] HoloSelect 2
scoreboard players set @a[scores={HoloCall=1..},nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,id:"minecraft:carrot_on_a_stick"}]}] HoloSelect 3
scoreboard players set @a[scores={HoloCall=1..},nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,id:"minecraft:carrot_on_a_stick"}]}] HoloSelect 4
scoreboard players set @a[scores={HoloCall=1..},nbt={SelectedItemSlot:4,Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"}]}] HoloSelect 5
scoreboard players set @a[scores={HoloCall=1..},nbt={SelectedItemSlot:5,Inventory:[{Slot:5b,id:"minecraft:carrot_on_a_stick"}]}] HoloSelect 6
scoreboard players set @a[scores={HoloCall=1..},nbt={SelectedItemSlot:6,Inventory:[{Slot:6b,id:"minecraft:carrot_on_a_stick"}]}] HoloSelect 7
scoreboard players set @a[scores={HoloCall=1..},nbt={SelectedItemSlot:7,Inventory:[{Slot:7b,id:"minecraft:carrot_on_a_stick"}]}] HoloSelect 8
scoreboard players set @a[scores={HoloCall=1..},nbt={SelectedItemSlot:8,Inventory:[{Slot:8b,id:"minecraft:carrot_on_a_stick"}]}] HoloSelect 9
scoreboard players set @a[scores={HoloCall=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}] HoloSelect 106

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Call1, Holo Caster PSA in Camphrier town
#scoreboard players set @a[x=-965,y=100,z=-32,distance=..15,tag=!Call1,score_HoloCall=0,score_TalkTime=0] HoloCall 1

#Title and ring of incoming call
title @a[scores={HoloSelect=0,HoloCall=1},tag=!Call1,x=-965,y=100,z=-32,distance=..15] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute as @a[scores={HoloSelect=0,HoloCall=1},tag=!Call1,x=-965,y=100,z=-32,distance=..15] run playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1


replaceitem entity @a[scores={HoloSelect=1,HoloCall=1},tag=!Call1,tag=!Replaced] hotbar.0 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=2,HoloCall=1},tag=!Call1,tag=!Replaced] hotbar.1 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=3,HoloCall=1},tag=!Call1,tag=!Replaced] hotbar.2 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=4,HoloCall=1},tag=!Call1,tag=!Replaced] hotbar.3 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=5,HoloCall=1},tag=!Call1,tag=!Replaced] hotbar.4 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=6,HoloCall=1},tag=!Call1,tag=!Replaced] hotbar.5 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=7,HoloCall=1},tag=!Call1,tag=!Replaced] hotbar.6 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=8,HoloCall=1},tag=!Call1,tag=!Replaced] hotbar.7 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=9,HoloCall=1},tag=!Call1,tag=!Replaced] hotbar.8 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=106,HoloCall=1},tag=!Call1,tag=!Replaced] weapon.offhand minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}

tag @a[scores={HoloSelect=1..,HoloCall=1},tag=!Call1,tag=!Replaced,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:1s}]}] add Replaced

scoreboard players add @a[scores={HoloCall=1,HoloSelect=1..},tag=!Call1] TalkTime 1

tellraw @a[scores={HoloCall=1,TalkTime=3,HoloSelect=1..},tag=!Call1] {"text":"<Holo Caster> Thank you for using the Holo Caster."}
tellraw @a[scores={HoloCall=1,TalkTime=10,HoloSelect=1..},tag=!Call1] {"text":"<Holo Caster> Lysandre Labs developed the Holo Caster to make the lives of Pokémon Trainers richer, fuller, and more convenient."}
tellraw @a[scores={HoloCall=1,TalkTime=20,HoloSelect=1..},tag=!Call1] {"text":"<Holo Caster> We hope you'll continue to enjoy the fine services this device provides."}

tag @a[scores={HoloCall=1,HoloSelect=1..,TalkTime=30..}] add EndCall



#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Call2, Tierno
#execute as @a[x=-372,y=101,z=-124,distance=..20,tag=Dialogue22] ~ ~ ~ /scoreboard players set @s[tag=!Call2,score_HoloCall=0] HoloCall 2


#Title and ring of incoming call
title @a[scores={HoloSelect=0,HoloCall=2},tag=!Call2,x=-372,y=101,z=-124,distance=..20] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute as @a[scores={HoloSelect=0,HoloCall=2},tag=!Call2,x=-372,y=101,z=-124,distance=..20] run playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[scores={HoloSelect=1,HoloCall=2},tag=!Call2,tag=!Replaced] hotbar.0 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:6s}
replaceitem entity @a[scores={HoloSelect=2,HoloCall=2},tag=!Call2,tag=!Replaced] hotbar.1 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:6s}
replaceitem entity @a[scores={HoloSelect=3,HoloCall=2},tag=!Call2,tag=!Replaced] hotbar.2 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:6s}
replaceitem entity @a[scores={HoloSelect=4,HoloCall=2},tag=!Call2,tag=!Replaced] hotbar.3 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:6s}
replaceitem entity @a[scores={HoloSelect=5,HoloCall=2},tag=!Call2,tag=!Replaced] hotbar.4 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:6s}
replaceitem entity @a[scores={HoloSelect=6,HoloCall=2},tag=!Call2,tag=!Replaced] hotbar.5 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:6s}
replaceitem entity @a[scores={HoloSelect=7,HoloCall=2},tag=!Call2,tag=!Replaced] hotbar.6 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:6s}
replaceitem entity @a[scores={HoloSelect=8,HoloCall=2},tag=!Call2,tag=!Replaced] hotbar.7 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:6s}
replaceitem entity @a[scores={HoloSelect=9,HoloCall=2},tag=!Call2,tag=!Replaced] hotbar.8 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:6s}
replaceitem entity @a[scores={HoloSelect=106,HoloCall=2},tag=!Call2,tag=!Replaced] weapon.offhand minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:6s}

tag @a[scores={HoloSelect=1..,HoloCall=2},tag=!Call2,tag=!Replaced,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:6s}]}] add Replaced



scoreboard players add @a[scores={HoloCall=2,HoloSelect=1..}] TalkTime 1
tellraw @a[scores={TalkTime=3,HoloSelect=1..,HoloCall=2},tag=!Call2] ["",{"text":"<"},{"text":"Tierno","color":"yellow"},{"text":"> So, check this out! I'm out on Route 5 right now, and it's just hopping with wild Pokémon!"}]
tellraw @a[scores={TalkTime=13,HoloSelect=1..,HoloCall=2},tag=!Call2] ["",{"text":"<"},{"text":"Tierno","color":"yellow"},{"text":"> Hurry and come check it out!"}]

tag @a[scores={TalkTime=20..,HoloCall=2},tag=!Call2] add EndCall
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Call3, Sycamore
#/scoreboard players set @a[x=-1972,y=113,z=-666,distance=..15,tag=!Call3,score_HoloCall=0] HoloCall 3

#Title and ring of incoming call
title @a[scores={HoloSelect=0,HoloCall=3},tag=!Call3,x=-1972,y=113,z=-666,distance=..15] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute as @a[scores={HoloSelect=0,HoloCall=3},tag=!Call3,x=-1972,y=113,z=-666,distance=..15] run playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[scores={HoloSelect=1,HoloCall=3},tag=!Call3,tag=!Replaced] hotbar.0 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:3s}
replaceitem entity @a[scores={HoloSelect=2,HoloCall=3},tag=!Call3,tag=!Replaced] hotbar.1 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:3s}
replaceitem entity @a[scores={HoloSelect=3,HoloCall=3},tag=!Call3,tag=!Replaced] hotbar.2 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:3s}
replaceitem entity @a[scores={HoloSelect=4,HoloCall=3},tag=!Call3,tag=!Replaced] hotbar.3 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:3s}
replaceitem entity @a[scores={HoloSelect=5,HoloCall=3},tag=!Call3,tag=!Replaced] hotbar.4 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:3s}
replaceitem entity @a[scores={HoloSelect=6,HoloCall=3},tag=!Call3,tag=!Replaced] hotbar.5 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:3s}
replaceitem entity @a[scores={HoloSelect=7,HoloCall=3},tag=!Call3,tag=!Replaced] hotbar.6 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:3s}
replaceitem entity @a[scores={HoloSelect=8,HoloCall=3},tag=!Call3,tag=!Replaced] hotbar.7 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:3s}
replaceitem entity @a[scores={HoloSelect=9,HoloCall=3},tag=!Call3,tag=!Replaced] hotbar.8 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:3s}
replaceitem entity @a[scores={HoloSelect=106,HoloCall=3},tag=!Call3,tag=!Replaced] weapon.offhand minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:3s}

tag @a[scores={HoloSelect=1..,HoloCall=3},tag=!Call3,tag=!Replaced,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:3s}]}] add Replaced

scoreboard players add @a[scores={HoloCall=3,HoloSelect_min=1..}] TalkTime 1
tellraw @a[scores={TalkTime=3,HoloSelect=1..,HoloCall=3},tag=!Call3] {"text":"<Sycamore> Hello there! Looks like you've almost made it to Shalour City!"}
tellraw @a[scores={TalkTime=13,HoloSelect=1..,HoloCall=3},tag=!Call3] {"text":"<Sycamore> That's fantastic! It looks like your journey with your Pokémon around the Kalos region is going swimmingly!"}
tellraw @a[scores={TalkTime=24,HoloSelect=1..,HoloCall=3},tag=!Call3] {"text":"<Sycamore> I wanted to tell you about a person in Shalour who knows a great deal about Mega Evolution."}
tellraw @a[scores={TalkTime=35,HoloSelect=1..,HoloCall=3},tag=!Call3] {"text":"<Sycamore> People call him the Mega Evolution guru. I've told everyone else about him, so if you have a second, you should give him a visit!"}

tag @a[scores={TalkTime=47..,HoloCall=3},tag=!Call3] add EndCall

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Call4, Serena entering Courmarine
#/scoreboard players set @a[x=-1189,y=79,z=-812,dx=13,dy=10,dz=18,tag=!Call4,score_HoloCall=0] HoloCall 4

#Title and ring of incoming call
title @a[scores={HoloSelect=0,HoloCall=4},tag=!Call4,x=-1189,y=79,z=-812,dx=30,dy=10,dz=18] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute as @a[scores={HoloSelect=0,HoloCall=4},tag=!Call4,x=-1189,y=79,z=-812,dx=30,dy=10,dz=18] run playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[scores={HoloSelect=1,HoloCall=4},tag=!Call4,tag=!Replaced] hotbar.0 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:5s}
replaceitem entity @a[scores={HoloSelect=2,HoloCall=4},tag=!Call4,tag=!Replaced] hotbar.1 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:5s}
replaceitem entity @a[scores={HoloSelect=3,HoloCall=4},tag=!Call4,tag=!Replaced] hotbar.2 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:5s}
replaceitem entity @a[scores={HoloSelect=4,HoloCall=4},tag=!Call4,tag=!Replaced] hotbar.3 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:5s}
replaceitem entity @a[scores={HoloSelect=5,HoloCall=4},tag=!Call4,tag=!Replaced] hotbar.4 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:5s}
replaceitem entity @a[scores={HoloSelect=6,HoloCall=4},tag=!Call4,tag=!Replaced] hotbar.5 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:5s}
replaceitem entity @a[scores={HoloSelect=7,HoloCall=4},tag=!Call4,tag=!Replaced] hotbar.6 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:5s}
replaceitem entity @a[scores={HoloSelect=8,HoloCall=4},tag=!Call4,tag=!Replaced] hotbar.7 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:5s}
replaceitem entity @a[scores={HoloSelect=9,HoloCall=4},tag=!Call4,tag=!Replaced] hotbar.8 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:5s}
replaceitem entity @a[scores={HoloSelect=106,HoloCall=4},tag=!Call4,tag=!Replaced] weapon.offhand minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:5s}

tag @a[scores={HoloSelect=1..,HoloCall=4},tag=!Call4,tag=!Replaced,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:5s}]}] add Replaced

scoreboard players add @a[scores={HoloCall=4,HoloSelect=1..}] TalkTime 1
tellraw @a[scores={TalkTime=3,HoloSelect=1..,HoloCall=4},tag=!Call4] ["",{"text":"<"},{"text":"Serena","color":"gold"},{"text":"> "},{"selector":"@s"},{"text":"! I challenge you to a battle in front of the Gym!"}]
tellraw @a[scores={TalkTime=10,HoloSelect=1..,HoloCall=4},tag=!Call4] ["",{"text":"<"},{"text":"Serena","color":"gold"},{"text":"> Prepare yourself!"}]

tag @a[scores={TalkTime=16,HoloCall=4},tag=!Call4] add EndCall
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Call5, Lysandre
#execute as @a[x=-1077,y=115,z=-615,distance=..20,tag=Ramos,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ /scoreboard players set @s[tag=!Call5] HoloCall 5

#Title and ring of incoming call
title @a[scores={HoloSelect=0,score_HoloCall=5},tag=!Call5,x=-1077,y=115,z=-615,distance=..20] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute as @a[scores={HoloSelect=0,HoloCall=5},tag=!Call5,x=-1077,y=115,z=-615,distance=..20] run playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[scores={HoloSelect=1,HoloCall=5},tag=!Call5,tag=!Replaced] hotbar.0 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:2s}
replaceitem entity @a[scores={HoloSelect=2,HoloCall=5},tag=!Call5,tag=!Replaced] hotbar.1 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:2s}
replaceitem entity @a[scores={HoloSelect=3,HoloCall=5},tag=!Call5,tag=!Replaced] hotbar.2 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:2s}
replaceitem entity @a[scores={HoloSelect=4,HoloCall=5},tag=!Call5,tag=!Replaced] hotbar.3 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:2s}
replaceitem entity @a[scores={HoloSelect=5,HoloCall=5},tag=!Call5,tag=!Replaced] hotbar.4 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:2s}
replaceitem entity @a[scores={HoloSelect=6,HoloCall=5},tag=!Call5,tag=!Replaced] hotbar.5 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:2s}
replaceitem entity @a[scores={HoloSelect=7,HoloCall=5},tag=!Call5,tag=!Replaced] hotbar.6 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:2s}
replaceitem entity @a[scores={HoloSelect=8,HoloCall=5},tag=!Call5,tag=!Replaced] hotbar.7 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:2s}
replaceitem entity @a[scores={HoloSelect=9,HoloCall=5},tag=!Call5,tag=!Replaced] hotbar.8 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:2s}
replaceitem entity @a[scores={HoloSelect=106,HoloCall=5},tag=!Call5,tag=!Replaced] weapon.offhand minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:2s}

tag @a[scores={HoloSelect=1..,HoloCall=5},tag=!Call5,tag=!Replaced,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:2s}]}] add Replaced

scoreboard players add @a[scores={HoloCall=5,HoloSelect=1..}] TalkTime 1
tellraw @a[scores={TalkTime=3,HoloSelect=1..,HoloCall=5},tag=!Call5] ["",{"text":"<"},{"text":"Lysandre","color":"dark_red"},{"text":"> Professor Sycamore told me you can now wield Mega Evolution. That is truly wonderful."}]
tellraw @a[scores={TalkTime=13,HoloSelect=1..,HoloCall=5},tag=!Call5] ["",{"text":"<"},{"text":"Lysandre","color":"dark_red"},{"text":"> With that power, you can steer your future in a better direction!"}]
tellraw @a[scores={TalkTime=20,HoloSelect=1..,HoloCall=5},tag=!Call5] ["",{"text":"<"},{"text":"Lysandre","color":"dark_red"},{"text":"> We can't just cover up the old filth with new filth!"}]
tellraw @a[scores={TalkTime=28,HoloSelect=1..,HoloCall=5},tag=!Call5] ["",{"text":"<"},{"text":"Lysandre","color":"dark_red"},{"text":"> I implore you to consider what we need to do to change the world into a new, beautiful world!"}]

tag @a[scores={TalkTime=38..,HoloCall=5},tag=!Call5] add EndCall


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Call6, Sycamore post-Clemont Badge
#triggers in Lumiose Gym portals

#Title and ring of incoming call
title @a[scores={HoloSelect=0,HoloCall=6},tag=!Call6,x=-181,y=101,z=-390,distance=..51] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute as @a[scores={HoloSelect=0,HoloCall=6},tag=!Call6,x=-181,y=101,z=-390,distance=..51] run playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[scores={HoloSelect=1,HoloCall=6},tag=!Call6,tag=!Replaced] hotbar.0 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:3s}
replaceitem entity @a[scores={HoloSelect=2,HoloCall=6},tag=!Call6,tag=!Replaced] hotbar.1 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:3s}
replaceitem entity @a[scores={HoloSelect=3,HoloCall=6},tag=!Call6,tag=!Replaced] hotbar.2 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:3s}
replaceitem entity @a[scores={HoloSelect=4,HoloCall=6},tag=!Call6,tag=!Replaced] hotbar.3 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:3s}
replaceitem entity @a[scores={HoloSelect=5,HoloCall=6},tag=!Call6,tag=!Replaced] hotbar.4 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:3s}
replaceitem entity @a[scores={HoloSelect=6,HoloCall=6},tag=!Call6,tag=!Replaced] hotbar.5 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:3s}
replaceitem entity @a[scores={HoloSelect=7,HoloCall=6},tag=!Call6,tag=!Replaced] hotbar.6 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:3s}
replaceitem entity @a[scores={HoloSelect=8,HoloCall=6},tag=!Call6,tag=!Replaced] hotbar.7 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:3s}
replaceitem entity @a[scores={HoloSelect=9,HoloCall=6},tag=!Call6,tag=!Replaced] hotbar.8 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:3s}
replaceitem entity @a[scores={HoloSelect=106,HoloCall=6},tag=!Call6,tag=!Replaced] weapon.offhand minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:3s}

tag @a[scores={HoloSelect=1..,HoloCall=6},tag=!Call6,tag=!Replaced,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:3s}]}] add Replaced

scoreboard players add @a[scores={HoloCall=6,HoloSelect=1..}] TalkTime 1
tellraw @a[scores={TalkTime=3,HoloSelect=1..,HoloCall=6},tag=!Call6] {"text":"<Professor Sycamore> Hello there! I wanted to talk to you for a little bit. Could you come to Lysandre Café?"}
tellraw @a[scores={TalkTime=13,HoloSelect=1..,HoloCall=6},tag=!Call6] {"text":"<Professor Sycamore> Do you know where it is? You can see it from outside the Pokémon Center right by Prism Tower. It's the red café."}
tellraw @a[scores={TalkTime=25,HoloSelect=1..,HoloCall=6},tag=!Call6] {"text":"<Professor Sycamore> Just hop in a taxi if you can't find it. Be seeing you soon!"}

tag @a[scores={TalkTime=33..,HoloCall=6},tag=!Call6] add EndCall

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Call7, Trevor after Lysandre's Lab & Sycamore talk
#execute as @a[x=-296,y=101,z=-478,distance=..20,tag=Dialogue79,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ /scoreboard players set @s[tag=!Call7] HoloCall 7

#Title and ring of incoming call
title @a[scores={HoloSelect=0,HoloCall=7},tag=!Call7,x=-296,y=101,z=-478,distance=..20] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute as @a[scores={HoloSelect=0,HoloCall=7},tag=!Call7,x=-296,y=101,z=-478,distance=..20] run playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[scores={HoloSelect=1,HoloCall=7},tag=!Call7,tag=!Replaced] hotbar.0 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:4s}
replaceitem entity @a[scores={HoloSelect=2,HoloCall=7},tag=!Call7,tag=!Replaced] hotbar.1 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:4s}
replaceitem entity @a[scores={HoloSelect=3,HoloCall=7},tag=!Call7,tag=!Replaced] hotbar.2 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:4s}
replaceitem entity @a[scores={HoloSelect=4,HoloCall=7},tag=!Call7,tag=!Replaced] hotbar.3 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:4s}
replaceitem entity @a[scores={HoloSelect=5,HoloCall=7},tag=!Call7,tag=!Replaced] hotbar.4 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:4s}
replaceitem entity @a[scores={HoloSelect=6,HoloCall=7},tag=!Call7,tag=!Replaced] hotbar.5 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:4s}
replaceitem entity @a[scores={HoloSelect=7,HoloCall=7},tag=!Call7,tag=!Replaced] hotbar.6 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:4s}
replaceitem entity @a[scores={HoloSelect=8,HoloCall=7},tag=!Call7,tag=!Replaced] hotbar.7 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:4s}
replaceitem entity @a[scores={HoloSelect=9,HoloCall=7},tag=!Call7,tag=!Replaced] hotbar.8 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:4s}
replaceitem entity @a[scores={HoloSelect=106,HoloCall=7},tag=!Call7,tag=!Replaced] weapon.offhand minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:4s}

tag @a[scores={HoloSelect=1..,HoloCall=7},tag=!Call7,tag=!Replaced,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:4s}]}] add Replaced

scoreboard players add @a[scores={HoloCall=7,HoloSelect=1..}] TalkTime 1

tellraw @a[scores={TalkTime=3,HoloSelect=1..,HoloCall=7},tag=!Call7] ["",{"text":"<"},{"text":"Trevor","color":"green"},{"text":"> Hello. How have you been?"}]
tellraw @a[scores={TalkTime=10,HoloSelect=1..,HoloCall=7},tag=!Call7] ["",{"text":"<"},{"text":"Trevor","color":"green"},{"text":"> I just wanted to let you know we're all going to meet on Route 14. Please come and join us."}]

tag @a[scores={TalkTime=20..,HoloCall=7},tag=!Call7] add EndCall
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Call8, Malva
#execute as @a[x=-154,y=125,z=-1763,distance=..20,tag=Dialogue90,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ /scoreboard players set @s[tag=!Call8] HoloCall 8

#Title and ring of incoming call
title @a[scores={HoloSelect=0,HoloCall=8},tag=!Call8,x=-154,y=125,z=-1763,distance=..20] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute as @a[scores={HoloSelect=0,HoloCall=8},tag=!Call8,x=-154,y=125,z=-1763,distance=..20] run playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[scores={HoloSelect=1,HoloCall=8},tag=!Call8,tag=!Replaced] hotbar.0 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:7s}
replaceitem entity @a[scores={HoloSelect=2,HoloCall=8},tag=!Call8,tag=!Replaced] hotbar.1 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:7s}
replaceitem entity @a[scores={HoloSelect=3,HoloCall=8},tag=!Call8,tag=!Replaced] hotbar.2 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:7s}
replaceitem entity @a[scores={HoloSelect=4,HoloCall=8},tag=!Call8,tag=!Replaced] hotbar.3 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:7s}
replaceitem entity @a[scores={HoloSelect=5,HoloCall=8},tag=!Call8,tag=!Replaced] hotbar.4 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:7s}
replaceitem entity @a[scores={HoloSelect=6,HoloCall=8},tag=!Call8,tag=!Replaced] hotbar.5 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:7s}
replaceitem entity @a[scores={HoloSelect=7,HoloCall=8},tag=!Call8,tag=!Replaced] hotbar.6 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:7s}
replaceitem entity @a[scores={HoloSelect=8,HoloCall=8},tag=!Call8,tag=!Replaced] hotbar.7 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:7s}
replaceitem entity @a[scores={HoloSelect=9,HoloCall=8},tag=!Call8,tag=!Replaced] hotbar.8 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:7s}
replaceitem entity @a[scores={HoloSelect=106,HoloCall=8},tag=!Call8,tag=!Replaced] weapon.offhand minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:7s}

tag @a[scores={HoloSelect=1..,HoloCall=8},tag=!Call8,tag=!Replaced,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:7s}]}] add Replaced



scoreboard players add @a[scores={HoloCall=8,HoloSelect=1..}] TalkTime 1
tellraw @a[scores={TalkTime=3,HoloSelect=1..,HoloCall=8},tag=!Call8] {"text":"Newscast: We're bringing you this special bulletin."}
tellraw @a[scores={TalkTime=10,HoloSelect=1..,HoloCall=8},tag=!Call8] {"text":"Newscast: The Poké Ball Factory in the area around Laverre City has been attacked."}
tellraw @a[scores={TalkTime=20,HoloSelect=1..,HoloCall=8},tag=!Call8] {"text":"Newscast: The identities of those involved are unknown."}
tellraw @a[scores={TalkTime=27,HoloSelect=1..,HoloCall=8},tag=!Call8] {"text":"Newscast: However, this is not expected to have any effect on the sales of Poké Balls..."}

tag @a[scores={TalkTime=35..,HoloCall=8},tag=!Call8] add EndCall
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Call9, Lysandre
#scoreboard players set @a[x=522,y=108,z=-475,distance=..20,tag=!Call9,score_HoloCall=0] HoloCall 9

#Title and ring of incoming call
title @a[scores={HoloSelect=0,HoloCall=9},tag=!Call9,x=522,y=108,z=-475,distance=..20] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute as @a[scores={HoloSelect=0,HoloCall=9},tag=!Call9,x=522,y=108,z=-475,distance=..20] run playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[scores={HoloSelect=1,HoloCall=9},tag=!Call9,tag=!Replaced] hotbar.0 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:2s}
replaceitem entity @a[scores={HoloSelect=2,HoloCall=9},tag=!Call9,tag=!Replaced] hotbar.1 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:2s}
replaceitem entity @a[scores={HoloSelect=3,HoloCall=9},tag=!Call9,tag=!Replaced] hotbar.2 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:2s}
replaceitem entity @a[scores={HoloSelect=4,HoloCall=9},tag=!Call9,tag=!Replaced] hotbar.3 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:2s}
replaceitem entity @a[scores={HoloSelect=5,HoloCall=9},tag=!Call9,tag=!Replaced] hotbar.4 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:2s}
replaceitem entity @a[scores={HoloSelect=6,HoloCall=9},tag=!Call9,tag=!Replaced] hotbar.5 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:2s}
replaceitem entity @a[scores={HoloSelect=7,HoloCall=9},tag=!Call9,tag=!Replaced] hotbar.6 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:2s}
replaceitem entity @a[scores={HoloSelect=8,HoloCall=9},tag=!Call9,tag=!Replaced] hotbar.7 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:2s}
replaceitem entity @a[scores={HoloSelect=9,HoloCall=9},tag=!Call9,tag=!Replaced] hotbar.8 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:2s}
replaceitem entity @a[scores={HoloSelect=106,HoloCall=9},tag=!Call9,tag=!Replaced] weapon.offhand minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:2s}

tag @a[scores={HoloSelect=1..,HoloCall=9},tag=!Call9,tag=!Replaced,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:2s}]}] add Replaced

scoreboard players add @a[scores={HoloCall=9,HoloSelect=1..}] TalkTime 1
tellraw @a[scores={TalkTime=3,HoloSelect=1..,HoloCall=9},tag=!Call9] ["",{"text":"<"},{"text":"Lysandre","color":"dark_red"},{"text":"> According to Professor Sycamore's research, Mega Evolution releases all of a Pokémon's hidden energy at once."}]
tellraw @a[scores={TalkTime=13,HoloSelect=1..,HoloCall=9},tag=!Call9] ["",{"text":"<"},{"text":"Lysandre","color":"dark_red"},{"text":"> The Pokémon then exhibits a level of power it could not attain through ordinary Evolution."}]
tellraw @a[scores={TalkTime=23,HoloSelect=1..,HoloCall=9},tag=!Call9] ["",{"text":"<"},{"text":"Lysandre","color":"dark_red"},{"text":"> What meaning can we draw from this?"}]
tellraw @a[scores={TalkTime=30,HoloSelect=1..,HoloCall=9},tag=!Call9] ["",{"text":"<"},{"text":"Lysandre","color":"dark_red"},{"text":"> Do all people and Pokémon have such potential, or is it hidden within a chosen few?"}]

tag @a[scores={TalkTime=40..,HoloCall=9},tag=!Call9] add EndCall

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Call10, Serena
#scoreboard players set @a[x=1056,y=108,z=-191,distance=..20,tag=!Call10,score_HoloCall=0] HoloCall 10

#Title and ring of incoming call
title @a[scores={HoloSelect=0,HoloCall=10},tag=!Call10,x=1056,y=108,z=-191,distance=..20] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute as @a[scores={HoloSelect=0,HoloCall=10},tag=!Call10,x=1056,y=108,z=-191,distance=..20] run playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[scores={HoloSelect=1,HoloCall=10},tag=!Call10,tag=!Replaced] hotbar.0 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:5s}
replaceitem entity @a[scores={HoloSelect=2,HoloCall=10},tag=!Call10,tag=!Replaced] hotbar.1 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:5s}
replaceitem entity @a[scores={HoloSelect=3,HoloCall=10},tag=!Call10,tag=!Replaced] hotbar.2 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:5s}
replaceitem entity @a[scores={HoloSelect=4,HoloCall=10},tag=!Call10,tag=!Replaced] hotbar.3 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:5s}
replaceitem entity @a[scores={HoloSelect=5,HoloCall=10},tag=!Call10,tag=!Replaced] hotbar.4 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:5s}
replaceitem entity @a[scores={HoloSelect=6,HoloCall=10},tag=!Call10,tag=!Replaced] hotbar.5 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:5s}
replaceitem entity @a[scores={HoloSelect=7,HoloCall=10},tag=!Call10,tag=!Replaced] hotbar.6 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:5s}
replaceitem entity @a[scores={HoloSelect=8,HoloCall=10},tag=!Call10,tag=!Replaced] hotbar.7 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:5s}
replaceitem entity @a[scores={HoloSelect=9,HoloCall=10},tag=!Call10,tag=!Replaced] hotbar.8 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:5s}
replaceitem entity @a[scores={HoloSelect=106,HoloCall=10},tag=!Call10,tag=!Replaced] weapon.offhand minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:5s}

tag @a[scores={HoloSelect=1..,HoloCall=10},tag=!Call10,tag=!Replaced,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:5s}]}] add Replaced

scoreboard players add @a[scores={HoloCall=10,HoloSelect=1..}] TalkTime 1
tellraw @a[scores={TalkTime=3,HoloSelect=1..,HoloCall=10},tag=!Call10] ["",{"text":"<"},{"text":"Serena","color":"gold"},{"text":"> "},{"selector":"@s"},{"text":". This time, I challenge you to a battle in front of Anistar City's Gym! "}]
tellraw @a[scores={TalkTime=11,HoloSelect=1..,HoloCall=10},tag=!Call10] ["",{"text":"<"},{"text":"Serena","color":"gold"},{"text":"> Prepare yourself!"}]

tag @a[scores={TalkTime=17..,HoloCall=10},tag=!Call10] add EndCall

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Call11, Lysandre
#Integrated into dialogue in case player doesn't have a caster
#tellraw @a {"text":"<Lysandre> Pokémon Trainers. I come to you by the Holo Caster to make an important announcement."}
#tellraw @a {"text":"<Lysandre> Listen well. Team Flare will revive the ultimate weapon, eliminate everyone who isn't in our group, and return the world to a beautiful, natural state."}
#tellraw @a {"text":"<Lysandre> Unproductive fools are consuming our future..."}
#tellraw @a {"text":"<Lysandre> If nothing changes, the world will become ugly and conflicts will raze the land from end to end."}
#tellraw @a {"text":"<Lysandre> I repeat. We will use the ultimate weapon and wipe the slate clean."}
#tellraw @a {"text":"<Lysandre> I'm sorry, those of you who are not members of Team Flare, but this is adieu to you all."}


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Call12, Sycamore
#execute as @a[x=1349,y=108,z=-173,distance=..20,tag=!Call12,score_HoloCall=0] ~ ~ ~ scoreboard players set @s[tag=Dialogue133] HoloCall 12

#Title and ring of incoming call
title @a[scores={HoloSelect=0,HoloCall=12},tag=!Call12,x=1349,y=108,z=-173,distance=..20] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute as @a[scores={HoloSelect=0,HoloCall=12},tag=!Call12,x=1349,y=108,z=-173,distance=..20] run playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[scores={HoloSelect=1,HoloCall=12},tag=!Call12,tag=!Replaced] hotbar.0 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:3s}
replaceitem entity @a[scores={HoloSelect=2,HoloCall=12},tag=!Call12,tag=!Replaced] hotbar.1 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:3s}
replaceitem entity @a[scores={HoloSelect=3,HoloCall=12},tag=!Call12,tag=!Replaced] hotbar.2 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:3s}
replaceitem entity @a[scores={HoloSelect=4,HoloCall=12},tag=!Call12,tag=!Replaced] hotbar.3 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:3s}
replaceitem entity @a[scores={HoloSelect=5,HoloCall=12},tag=!Call12,tag=!Replaced] hotbar.4 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:3s}
replaceitem entity @a[scores={HoloSelect=6,HoloCall=12},tag=!Call12,tag=!Replaced] hotbar.5 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:3s}
replaceitem entity @a[scores={HoloSelect=7,HoloCall=12},tag=!Call12,tag=!Replaced] hotbar.6 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:3s}
replaceitem entity @a[scores={HoloSelect=8,HoloCall=12},tag=!Call12,tag=!Replaced] hotbar.7 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:3s}
replaceitem entity @a[scores={HoloSelect=9,HoloCall=12},tag=!Call12,tag=!Replaced] hotbar.8 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:3s}
replaceitem entity @a[scores={HoloSelect=106,HoloCall=12},tag=!Call12,tag=!Replaced] weapon.offhand minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:3s}

tag @a[scores={HoloSelect=1..,HoloCall=12},tag=!Call12,tag=!Replaced,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:3s}]}] add Replaced


scoreboard players add @a[scores={HoloCall=12,HoloSelect=1..}] TalkTime 1
tellraw @a[scores={TalkTime=3,HoloSelect=1..,HoloCall=12},tag=!Call12] ["",{"text":"<"},{"text":"Sycamore","color":"aqua"},{"text":"> Do you have a minute? I'd like to talk to you face-to-face."}]
tellraw @a[scores={TalkTime=12,HoloSelect=1..,HoloCall=12},tag=!Call12] ["",{"text":"<"},{"text":"Sycamore","color":"aqua"},{"text":"> Let's meet in Couriway Town!"}]

tag @a[scores={TalkTime=20..,HoloCall=12},tag=!Call12] add EndCall

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Call 13 - Looker post-Pokemon League

#execute as @a[x=-188,y=101,z=-639,distance=..100,tag=!Call13,score_HoloCall=0,score_TalkTime=0,score_PokemonLeague_min=1] ~ ~ ~ scoreboard players set @s[tag=Dialogue163] HoloCall 13

#Title and ring of incoming call
title @a[scores={HoloSelect=0,HoloCall=13},tag=!Call13,x=-181,y=101,z=-390,distance=..395] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute as @a[scores={HoloSelect=0,HoloCall=13},tag=!Call13,x=-181,y=101,z=-390,distance=..395] run playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1


replaceitem entity @a[scores={HoloSelect=1,HoloCall=13},tag=!Call13,tag=!Replaced] hotbar.0 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=2,HoloCall=13},tag=!Call13,tag=!Replaced] hotbar.1 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=3,HoloCall=13},tag=!Call13,tag=!Replaced] hotbar.2 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=4,HoloCall=13},tag=!Call13,tag=!Replaced] hotbar.3 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=5,HoloCall=13},tag=!Call13,tag=!Replaced] hotbar.4 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=6,HoloCall=13},tag=!Call13,tag=!Replaced] hotbar.5 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=7,HoloCall=13},tag=!Call13,tag=!Replaced] hotbar.6 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=8,HoloCall=13},tag=!Call13,tag=!Replaced] hotbar.7 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=9,HoloCall=13},tag=!Call13,tag=!Replaced] hotbar.8 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=106,HoloCall=13},tag=!Call13,tag=!Replaced] weapon.offhand minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}

tag @a[scores={HoloSelect=1..,HoloCall=13},tag=!Call13,tag=!Replaced,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:1s}]}] add Replaced

scoreboard players add @a[scores={HoloCall=13,HoloSelect=1..},tag=!Call13] TalkTime 1

execute as @a[scores={TalkTime=1,HoloSelect=1..,HoloCall=13},tag=!Call13] run scoreboard players set @s click 1
tellraw @a[scores={TalkTime=3,HoloSelect=1..,HoloCall=13},tag=!Call13] ["",{"text":"<"},{"text":"...","color":"gray"},{"text":"> Ahem... "},{"selector":"@s"},{"text":". Please excuse me. I only need a moment. Or perhaps three."}]
tellraw @a[scores={TalkTime=13,HoloSelect=1..,HoloCall=13},tag=!Call13] ["",{"text":"<"},{"text":"...","color":"gray"},{"text":"> There is something I really need to talk about with you. Please come to the Looker Bureau."}]
tellraw @a[scores={TalkTime=23,HoloSelect=1..,HoloCall=13},tag=!Call13] ["",{"text":"<"},{"text":"...","color":"gray"},{"text":"> The building is close to Rouge Plaza, South of the Route 14 gate."}]
tellraw @a[scores={TalkTime=30,HoloSelect=1..,HoloCall=13},tag=!Call13] ["",{"text":"<"},{"text":"...","color":"gray"},{"text":"> I can't say any more right now. I will expect to see you soon."}]


#Blinds player

execute as @a[scores={TalkTime=43,HoloSelect=1..,HoloCall=13},tag=!Call13] run effect give @s minecraft:blindness 5 1 true

execute as @a[scores={TalkTime=41,HoloSelect=1..,HoloCall=13},tag=!Call13] run scoreboard players set @s click 1
execute as @a[scores={TalkTime=41,HoloSelect=1..,HoloCall=13},tag=!Call13] run title @s times 20 100 20
execute as @a[scores={TalkTime=41,HoloSelect=1..,HoloCall=13},tag=!Call13] run title @s subtitle {"text":"That Man's a Real...Looker"}
execute as @a[scores={TalkTime=41,HoloSelect=1..,HoloCall=13},tag=!Call13] run title @s title {"text":"Chapter 1"}
execute as @a[scores={TalkTime=41,HoloSelect=1..,HoloCall=13},tag=!Call13] run advancement grant @s only kalos:looker0

tag @a[scores={TalkTime=43..,HoloCall=13},tag=!Call13] add EndCall

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#https://youtu.be/rrMxYkXdKC8?t=773
#Looker Holo Call after leaving the Beaureu

#Call14, Looker
#execute as @a[x=-181,y=101,z=-390,distance=..395,tag=!Call14,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ execute @s[tag=!LookerCooldown] ~ ~ ~ scoreboard players set @s[tag=Dialogue175] HoloCall 14

#Title and ring of incoming call
title @a[scores={HoloSelect=0,HoloCall=14},tag=!Call14] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute as @a[scores={HoloSelect=0,HoloCall=14},tag=!Call14] run playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[scores={HoloSelect=1,HoloCall=14},tag=!Call14,tag=!Replaced] hotbar.0 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=2,HoloCall=14},tag=!Call14,tag=!Replaced] hotbar.1 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=3,HoloCall=14},tag=!Call14,tag=!Replaced] hotbar.2 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=4,HoloCall=14},tag=!Call14,tag=!Replaced] hotbar.3 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=5,HoloCall=14},tag=!Call14,tag=!Replaced] hotbar.4 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=6,HoloCall=14},tag=!Call14,tag=!Replaced] hotbar.5 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=7,HoloCall=14},tag=!Call14,tag=!Replaced] hotbar.6 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=8,HoloCall=14},tag=!Call14,tag=!Replaced] hotbar.7 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=9,HoloCall=14},tag=!Call14,tag=!Replaced] hotbar.8 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=106,HoloCall=14},tag=!Call14,tag=!Replaced] weapon.offhand minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}

tag @a[scores={HoloSelect=1..,HoloCall=14},tag=!Call14,tag=!Replaced,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:1s}]}] add Replaced


scoreboard players add @a[scores={HoloCall=14,HoloSelect=1..}] TalkTime 1
tellraw @a[scores={TalkTime=3,HoloSelect=1..,HoloCall=14},tag=!Call14] ["",{"text":"<"},{"text":"Looker","color":"gray"},{"text":"> "},{"selector":"@s"},{"text":"! It is I! Looker!"}]
tellraw @a[scores={TalkTime=11,HoloSelect=1..,HoloCall=14},tag=!Call14] ["",{"text":"<"},{"text":"Looker","color":"gray"},{"text":"> I want to talk to you about something important! Could you come to the Looker Bureau, please?"}]

tag @a[scores={TalkTime=20..,HoloCall=14},tag=!Call14] add EndCall

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Call15, Looker
#execute as @a[x=-181,y=101,z=-390,distance=..395,tag=!Call15,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ execute @s[tag=!LookerCooldown] ~ ~ ~ scoreboard players set @s[tag=Dialogue178] HoloCall 15

#Title and ring of incoming call
title @a[scores={HoloSelect=0,HoloCall=15},tag=!Call15] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute as @a[scores={HoloSelect=0,HoloCall=15},tag=!Call15] run playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[scores={HoloSelect=1,HoloCall=15},tag=!Call15,tag=!Replaced] hotbar.0 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=2,HoloCall=15},tag=!Call15,tag=!Replaced] hotbar.1 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=3,HoloCall=15},tag=!Call15,tag=!Replaced] hotbar.2 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=4,HoloCall=15},tag=!Call15,tag=!Replaced] hotbar.3 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=5,HoloCall=15},tag=!Call15,tag=!Replaced] hotbar.4 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=6,HoloCall=15},tag=!Call15,tag=!Replaced] hotbar.5 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=7,HoloCall=15},tag=!Call15,tag=!Replaced] hotbar.6 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=8,HoloCall=15},tag=!Call15,tag=!Replaced] hotbar.7 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=9,HoloCall=15},tag=!Call15,tag=!Replaced] hotbar.8 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=106,HoloCall=15},tag=!Call15,tag=!Replaced] weapon.offhand minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}

tag @a[scores={HoloSelect=1..,HoloCall=15},tag=!Call15,tag=!Replaced,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:1s}]}] add Replaced

scoreboard players add @a[scores={HoloCall=15,HoloSelect=1..}] TalkTime 1
tellraw @a[scores={TalkTime=3,HoloSelect=1..,HoloCall=15},tag=!Call15] ["",{"text":"<"},{"text":"Looker","color":"gray"},{"text":"> "},{"selector":"@p[score_TalkTime_min=3,score_TalkTime=3,score_HoloSelect_min=1,score_HoloCall_min=15,score_HoloCall=15,tag=!Call15]"},{"text":"! It's me! Looker!"}]
tellraw @a[scores={TalkTime=11,HoloSelect=1..,HoloCall=15},tag=!Call15] ["",{"text":"<"},{"text":"Looker","color":"gray"},{"text":"> I want to talk to you about something important!"}]
tellraw @a[scores={TalkTime=19,HoloSelect=1..,HoloCall=15},tag=!Call15] ["",{"text":"<"},{"text":"Looker","color":"gray"},{"text":"> Could you come to the Looker Bureau, please?"}]

tag @a[scores={TalkTime=25..,HoloCall=15},tag=!Call15] add EndCall

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Call16, Looker Chapter 4 Start
#execute as @a[x=-181,y=101,z=-390,distance=..395,tag=!Call16,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ execute @s[tag=!LookerCooldown] ~ ~ ~ scoreboard players set @s[tag=Dialogue184] HoloCall 16

#Title and ring of incoming call
title @a[scores={HoloSelect=0,HoloCall=16},tag=!Call16] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute as @a[scores={HoloSelect=0,HoloCall=16},tag=!Call16] run playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[scores={HoloSelect=1,HoloCall=16},tag=!Call16,tag=!Replaced] hotbar.0 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=2,HoloCall=16},tag=!Call16,tag=!Replaced] hotbar.1 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=3,HoloCall=16},tag=!Call16,tag=!Replaced] hotbar.2 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=4,HoloCall=16},tag=!Call16,tag=!Replaced] hotbar.3 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=5,HoloCall=16},tag=!Call16,tag=!Replaced] hotbar.4 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=6,HoloCall=16},tag=!Call16,tag=!Replaced] hotbar.5 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=7,HoloCall=16},tag=!Call16,tag=!Replaced] hotbar.6 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=8,HoloCall=16},tag=!Call16,tag=!Replaced] hotbar.7 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=9,HoloCall=16},tag=!Call16,tag=!Replaced] hotbar.8 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=106,HoloCall=16},tag=!Call16,tag=!Replaced] weapon.offhand minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}

tag @a[scores={HoloSelect=1..,HoloCall=16},tag=!Call16,tag=!Replaced,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:1s}]}] add Replaced

scoreboard players add @a[scores={HoloCall=16,HoloSelect=1..}] TalkTime 1
tellraw @a[scores={TalkTime=3,HoloSelect=1..,HoloCall=16},tag=!Call16] ["",{"text":"<"},{"text":"Looker","color":"gray"},{"text":"> "},{"selector":"@s"},{"text":"! It's me. Looker..."}]
tellraw @a[scores={TalkTime=11,HoloSelect=1..,HoloCall=16},tag=!Call16] ["",{"text":"<"},{"text":"Looker","color":"gray"},{"text":"> I apologize for the interruption, but could you make haste to the Looker Bureau?"}]
tellraw @a[scores={TalkTime=19,HoloSelect=1..,HoloCall=16},tag=!Call16] ["",{"text":"<"},{"text":"Looker","color":"gray"},{"text":"> There’s a bit of a situation. I could use your help."}]

tag @a[scores={TalkTime=25..,HoloCall=16},tag=!Call16] add EndCall


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Call17, Malva Call after investigating grafiti
#execute as @a[x=-105,y=101,z=-699,distance=..20,tag=!Call17,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ scoreboard players set @s[tag=Dialogue187] HoloCall 17

#Title and ring of incoming call
title @a[scores={HoloSelect=0,HoloCall=17},tag=!Call17] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute as @a[scores={HoloSelect=0,HoloCall=17},tag=!Call17] run playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[scores={HoloSelect=1,HoloCall=17},tag=!Call17,tag=!Replaced] hotbar.0 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:7s}
replaceitem entity @a[scores={HoloSelect=2,HoloCall=17},tag=!Call17,tag=!Replaced] hotbar.1 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:7s}
replaceitem entity @a[scores={HoloSelect=3,HoloCall=17},tag=!Call17,tag=!Replaced] hotbar.2 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:7s}
replaceitem entity @a[scores={HoloSelect=4,HoloCall=17},tag=!Call17,tag=!Replaced] hotbar.3 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:7s}
replaceitem entity @a[scores={HoloSelect=5,HoloCall=17},tag=!Call17,tag=!Replaced] hotbar.4 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:7s}
replaceitem entity @a[scores={HoloSelect=6,HoloCall=17},tag=!Call17,tag=!Replaced] hotbar.5 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:7s}
replaceitem entity @a[scores={HoloSelect=7,HoloCall=17},tag=!Call17,tag=!Replaced] hotbar.6 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:7s}
replaceitem entity @a[scores={HoloSelect=8,HoloCall=17},tag=!Call17,tag=!Replaced] hotbar.7 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:7s}
replaceitem entity @a[scores={HoloSelect=9,HoloCall=17},tag=!Call17,tag=!Replaced] hotbar.8 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:7s}
replaceitem entity @a[scores={HoloSelect=106,HoloCall=17},tag=!Call17,tag=!Replaced] weapon.offhand minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:7s}

tag @a[scores={HoloSelect=1..,HoloCall=17},tag=!Call17,tag=!Replaced,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:1s}]}] add Replaced

scoreboard players add @a[scores={HoloCall=17,HoloSelect=1..}] TalkTime 1
execute as @a[scores={TalkTime=1,HoloSelect=1..,HoloCall=17},tag=!Call17] run scoreboard players set @s click 1
tellraw @a[scores={TalkTime=3,HoloSelect=1..,HoloCall=17},tag=!Call17] {"text":"Newscaster: We have another special bulletin."}
tellraw @a[scores={TalkTime=10,HoloSelect=1..,HoloCall=17},tag=!Call17] {"text":"Newscaster: Poké Ball thefts are rampant in Lumiose City."}
tellraw @a[scores={TalkTime=17,HoloSelect=1..,HoloCall=17},tag=!Call17] {"text":"Newscaster: The thief strikes directly after Pokémon battles, when Trainers let their guard down."}
tellraw @a[scores={TalkTime=27,HoloSelect=1..,HoloCall=17},tag=!Call17] {"text":"Newscaster: These crimes are thought to be the work of a single individual,"}
tellraw @a[scores={TalkTime=35,HoloSelect=1..,HoloCall=17},tag=!Call17] {"text":"Newscaster: but reports on the suspect's features vary greatly, so authorities are struggling to identify him--or her."}
tellraw @a[scores={TalkTime=46,HoloSelect=1..,HoloCall=17},tag=!Call17] {"text":"Newscaster: These crimes are occurring in back alleys and in other places where there are few people around."}
tellraw @a[scores={TalkTime=56,HoloSelect=1..,HoloCall=17},tag=!Call17] {"text":"Newscaster: Residents of Lumiose City should exercise caution."}
execute as @a[scores={TalkTime=66,HoloSelect=1..,HoloCall=17},tag=!Call17] run scoreboard players set @s click 1

tag @a[scores={TalkTime=66..,HoloCall=17},tag=!Call17] add EndCall


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Call18, Looker after Malva call, saying to visit Bureau
#execute as @a[x=-181,y=101,z=-390,distance=..395,tag=!Call18,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ scoreboard players set @s[tag=Call17] HoloCall 18

#Title and ring of incoming call
title @a[scores={HoloSelect=0,HoloCall=18},tag=!Call18] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute as @a[scores={HoloSelect=0,HoloCall=18},tag=!Call18] run playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[scores={HoloSelect=1,HoloCall=18},tag=!Call18,tag=!Replaced] hotbar.0 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=2,HoloCall=18},tag=!Call18,tag=!Replaced] hotbar.1 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=3,HoloCall=18},tag=!Call18,tag=!Replaced] hotbar.2 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=4,HoloCall=18},tag=!Call18,tag=!Replaced] hotbar.3 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=5,HoloCall=18},tag=!Call18,tag=!Replaced] hotbar.4 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=6,HoloCall=18},tag=!Call18,tag=!Replaced] hotbar.5 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=7,HoloCall=18},tag=!Call18,tag=!Replaced] hotbar.6 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=8,HoloCall=18},tag=!Call18,tag=!Replaced] hotbar.7 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=9,HoloCall=18},tag=!Call18,tag=!Replaced] hotbar.8 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=106,HoloCall=18},tag=!Call18,tag=!Replaced] weapon.offhand minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}

tag @a[scores={HoloSelect=1..,HoloCall=18},tag=!Call18,tag=!Replaced,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:1s}]}] add Replaced

scoreboard players add @a[scores={HoloCall=18,HoloSelect=1..}] TalkTime 1
tellraw @a[scores={TalkTime=3,HoloSelect=1..,HoloCall=18},tag=!Call18] ["",{"text":"<"},{"text":"Looker","color":"gray"},{"text":"> It's me! Looker!"}]
tellraw @a[scores={TalkTime=10,HoloSelect=1..,HoloCall=18},tag=!Call18] ["",{"text":"<"},{"text":"Looker","color":"gray"},{"text":"> "},{"selector":"@s"},{"text":"! Would you kindly return to the Looker Bureau posthaste?"}]

tag @a[scores={TalkTime=20..,HoloCall=18},tag=!Call18] add EndCall

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Call19, Emma calling in while Looker is away
#execute as @a[x=-181,y=101,z=-390,distance=..395,tag=!Call19,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ execute @s[tag=!LookerCooldown] ~ ~ ~ scoreboard players set @s[tag=Dialogue225] HoloCall 19

#Title and ring of incoming call
title @a[scores={HoloSelect=0,HoloCall=19},tag=!Call19] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute as @a[scores={HoloSelect=0,HoloCall=19},tag=!Call19] run playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[scores={HoloSelect=1,HoloCall=19},tag=!Call19,tag=!Replaced] hotbar.0 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=2,HoloCall=19},tag=!Call19,tag=!Replaced] hotbar.1 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=3,HoloCall=19},tag=!Call19,tag=!Replaced] hotbar.2 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=4,HoloCall=19},tag=!Call19,tag=!Replaced] hotbar.3 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=5,HoloCall=19},tag=!Call19,tag=!Replaced] hotbar.4 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=6,HoloCall=19},tag=!Call19,tag=!Replaced] hotbar.5 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=7,HoloCall=19},tag=!Call19,tag=!Replaced] hotbar.6 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=8,HoloCall=19},tag=!Call19,tag=!Replaced] hotbar.7 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=9,HoloCall=19},tag=!Call19,tag=!Replaced] hotbar.8 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=106,HoloCall=19},tag=!Call19,tag=!Replaced] weapon.offhand minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}

tag @a[scores={HoloSelect=1..,HoloCall=19},tag=!Call19,tag=!Replaced,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:1s}]}] add Replaced

scoreboard players add @a[scores={HoloCall=19,HoloSelect=1..}] TalkTime 1
tellraw @a[scores={TalkTime=3,HoloSelect=1..,HoloCall=19},tag=!Call19] ["",{"text":"<"},{"text":"Emma","color":"gold"},{"text":"> Um... Hello? "},{"selector":"@s"},{"text":"?"}]
tellraw @a[scores={TalkTime=11,HoloSelect=1..,HoloCall=19},tag=!Call19] ["",{"text":"<"},{"text":"Emma","color":"gold"},{"text":"> Er, it's me...Emma. I received this Holo Caster thing, so I thought I'd try sending a message."}]
tellraw @a[scores={TalkTime=23,HoloSelect=1..,HoloCall=19},tag=!Call19] ["",{"text":"<"},{"text":"Emma","color":"gold"},{"text":"> I hope it reaches you."}]
tellraw @a[scores={TalkTime=30,HoloSelect=1..,HoloCall=19},tag=!Call19] ["",{"text":"<"},{"text":"Emma","color":"gold"},{"text":"> I have something I want to ask you, so please come to the Looker Bureau when you have time."}]

tag @a[scores={TalkTime=37..,HoloCall=19},tag=!Call19] add EndCall

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#https://youtu.be/qEms9_nJ7M0?t=70246
#Call20, Emma after Xerosic is caught
#execute as @a[x=-181,y=101,z=-390,distance=..395,tag=!Call20,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ execute @s[tag=!LookerCooldown] ~ ~ ~ scoreboard players set @s[tag=Dialogue213] HoloCall 20

#Title and ring of incoming call
title @a[scores={HoloSelect=0,HoloCall=20},tag=!Call20] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute as @a[scores={HoloSelect=0,HoloCall=20},tag=!Call20] run playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[scores={HoloSelect=1,HoloCall=20},tag=!Call20,tag=!Replaced] hotbar.0 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=2,HoloCall=20},tag=!Call20,tag=!Replaced] hotbar.1 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=3,HoloCall=20},tag=!Call20,tag=!Replaced] hotbar.2 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=4,HoloCall=20},tag=!Call20,tag=!Replaced] hotbar.3 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=5,HoloCall=20},tag=!Call20,tag=!Replaced] hotbar.4 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=6,HoloCall=20},tag=!Call20,tag=!Replaced] hotbar.5 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=7,HoloCall=20},tag=!Call20,tag=!Replaced] hotbar.6 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=8,HoloCall=20},tag=!Call20,tag=!Replaced] hotbar.7 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=9,HoloCall=20},tag=!Call20,tag=!Replaced] hotbar.8 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=106,HoloCall=20},tag=!Call20,tag=!Replaced] weapon.offhand minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}

tag @a[scores={HoloSelect=1..,HoloCall=20},tag=!Call20,tag=!Replaced,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:1s}]}] add Replaced

scoreboard players add @a[scores={HoloCall=20,HoloSelect=1..}] TalkTime 1
tellraw @a[scores={TalkTime=3,HoloSelect=1..,HoloCall=20},tag=!Call20] ["",{"text":"<"},{"text":"Emma","color":"gold"},{"text":"> Hello, "},{"selector":"@p"},{"text":". Can you hear me?"}]
tellraw @a[scores={TalkTime=11,HoloSelect=1..,HoloCall=20},tag=!Call20] ["",{"text":"<"},{"text":"Emma","color":"gold"},{"text":"> It's me, Emma. I have incredible news for you, so please come to the Looker Bureau!"}]

execute as @a[scores={TalkTime=20,HoloSelect=1..,HoloCall=20},tag=!Call20] run effect give @s minecraft:blindness 5 1 true
execute as @a[scores={TalkTime=21,HoloSelect=1..,HoloCall=20},tag=!Call20] run scoreboard players set @s click 1
execute as @a[scores={TalkTime=21,HoloSelect=1..,HoloCall=20},tag=!Call20] run title @s times 20 100 20
execute as @a[scores={TalkTime=21,HoloSelect=1..,HoloCall=20},tag=!Call20] run title @s subtitle {"text":"Here's Lookin' at You, Kid"}
execute as @a[scores={TalkTime=21,HoloSelect=1..,HoloCall=20},tag=!Call20] run title @s title {"text":"Final Chapter"}

tag @a[scores={TalkTime=26..,HoloCall=20},tag=!Call20] add EndCall


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Holo Call after you investigate for Looker, Museum exterior
#execute as @a[x=-105,y=101,z=-699,distance=..20,tag=!Call21,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ scoreboard players set @s[tag=Dialogue216] HoloCall 21

#Title and ring of incoming call
title @a[scores={HoloSelect=0,HoloCall=21},tag=!Call21] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute as @a[scores={HoloSelect=0,HoloCall=21},tag=!Call21] run playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[scores={HoloSelect=1,HoloCall=21},tag=!Call21,tag=!Replaced] hotbar.0 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=2,HoloCall=21},tag=!Call21,tag=!Replaced] hotbar.1 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=3,HoloCall=21},tag=!Call21,tag=!Replaced] hotbar.2 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=4,HoloCall=21},tag=!Call21,tag=!Replaced] hotbar.3 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=5,HoloCall=21},tag=!Call21,tag=!Replaced] hotbar.4 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=6,HoloCall=21},tag=!Call21,tag=!Replaced] hotbar.5 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=7,HoloCall=21},tag=!Call21,tag=!Replaced] hotbar.6 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=8,HoloCall=21},tag=!Call21,tag=!Replaced] hotbar.7 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=9,HoloCall=21},tag=!Call21,tag=!Replaced] hotbar.8 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}
replaceitem entity @a[scores={HoloSelect=106,HoloCall=21},tag=!Call21,tag=!Replaced] weapon.offhand minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:1s}

tag @a[scores={HoloSelect=1..,HoloCall=21},tag=!Call21,tag=!Replaced,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:1s}]}] add Replaced

scoreboard players add @a[scores={HoloCall=21,HoloSelect=1..}] TalkTime 1
tellraw @a[scores={TalkTime=3,HoloSelect=1..,HoloCall=21},tag=!Call21] ["",{"text":"<"},{"text":"Emma","color":"gold"},{"text":"> "},{"selector":"@s"},{"text":"! I just got a message from Xerosic!"}]
tellraw @a[scores={TalkTime=11,HoloSelect=1..,HoloCall=21},tag=!Call21] ["",{"text":"<"},{"text":"Emma","color":"gold"},{"text":"> He's with Looker at Lysandre Café!"}]
tellraw @a[scores={TalkTime=19,HoloSelect=1..,HoloCall=21},tag=!Call21] ["",{"text":"<"},{"text":"Emma","color":"gold"},{"text":"> I'm going to take Mimi there! Hurry over and join us!"}]

tag @a[scores={TalkTime=26..,HoloCall=21},tag=!Call21] add EndCall

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------





















#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



#Turns call Holograms to regular Holo Casters if thrown from a player's inventory
execute as @a[scores={HoloCall=1..}] run tag @e[distance=..10,type=minecraft:item,tag=!Holocaster,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1,HideFlags:6,display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]}},Damage:1s}}] add HoloCaster
execute as @a[scores={HoloCall=1..}] run tag @e[distance=..10,type=minecraft:item,tag=!Holocaster,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1,HideFlags:6,display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]}},Damage:2s}}] add HoloCaster
execute as @a[scores={HoloCall=1..}] run tag @e[distance=..10,type=minecraft:item,tag=!Holocaster,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1,HideFlags:6,display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]}},Damage:3s}}] add HoloCaster
execute as @a[scores={HoloCall=1..}] run tag @e[distance=..10,type=minecraft:item,tag=!Holocaster,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1,HideFlags:6,display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]}},Damage:4s}}] add HoloCaster
execute as @a[scores={HoloCall=1..}] run tag @e[distance=..10,type=minecraft:item,tag=!Holocaster,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1,HideFlags:6,display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]}},Damage:5s}}] add HoloCaster
execute as @a[scores={HoloCall=1..}] run tag @e[distance=..10,type=minecraft:item,tag=!Holocaster,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1,HideFlags:6,display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]}},Damage:6s}}] add HoloCaster
execute as @a[scores={HoloCall=1..}] run tag @e[distance=..10,type=minecraft:item,tag=!Holocaster,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1,HideFlags:6,display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]}},Damage:7s}}] add HoloCaster
execute as @a[scores={HoloCall=1..}] run tag @e[distance=..10,type=minecraft:item,tag=!Holocaster,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1,HideFlags:6,display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]}},Damage:8s}}] add HoloCaster
execute as @a[scores={HoloCall=1..}] run tag @e[distance=..10,type=minecraft:item,tag=!Holocaster,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1,HideFlags:6,display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]}},Damage:9s}}] add HoloCaster
execute as @a[scores={HoloCall=1..}] run execute as @e[tag=HoloCaster,type=item,distance=..10] run data modify entity @s {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1,HideFlags:6,display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]}},Damage:0s}}
execute as @a[scores={HoloCall=1..}] run tag @e[distance=..10,type=item,tag=Holocaster] remove HoloCaster





#Gives player with EndCall tag call complete scores
tag @a[tag=EndCall,scores={HoloCall=1}] add Call1
tag @a[tag=EndCall,scores={HoloCall=2}] add Call2
tag @a[tag=EndCall,scores={HoloCall=3}] add Call3
tag @a[tag=EndCall,scores={HoloCall=4}] add Call4
tag @a[tag=EndCall,scores={HoloCall=5}] add Call5
tag @a[tag=EndCall,scores={HoloCall=6}] add Call6
tag @a[tag=EndCall,scores={HoloCall=7}] add Call7
tag @a[tag=EndCall,scores={HoloCall=8}] add Call8
tag @a[tag=EndCall,scores={HoloCall=9}] add Call9
tag @a[tag=EndCall,scores={HoloCall=10}] add Call10
tag @a[tag=EndCall,scores={HoloCall=11}] add Call11
tag @a[tag=EndCall,scores={HoloCall=12}] add Call12
tag @a[tag=EndCall,scores={HoloCall=13}] add Call13
tag @a[tag=EndCall,scores={HoloCall=14}] add Call14
tag @a[tag=EndCall,scores={HoloCall=15}] add Call15
tag @a[tag=EndCall,scores={HoloCall=16}] add Call16
tag @a[tag=EndCall,scores={HoloCall=17}] add Call17
tag @a[tag=EndCall,scores={HoloCall=18}] add Call18
tag @a[tag=EndCall,scores={HoloCall=19}] add Call19
tag @a[tag=EndCall,scores={HoloCall=20}] add Call20
tag @a[tag=EndCall,scores={HoloCall=21}] add Call21
tag @a[tag=EndCall,scores={HoloCall=22}] add Call22
tag @a[tag=EndCall,scores={HoloCall=23}] add Call23
tag @a[tag=EndCall,scores={HoloCall=24}] add Call24
tag @a[tag=EndCall,scores={HoloCall=25}] add Call25
tag @a[tag=EndCall,scores={HoloCall=26}] add Call26
tag @a[tag=EndCall,scores={HoloCall=27}] add Call27
tag @a[tag=EndCall,scores={HoloCall=28}] add Call28
tag @a[tag=EndCall,scores={HoloCall=29}] add Call29
tag @a[tag=EndCall,scores={HoloCall=30}] add Call30

#Returns normal Holo Caster model to player
replaceitem entity @a[scores={HoloSelect=1},tag=EndCall] hotbar.0 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:0s}
replaceitem entity @a[scores={HoloSelect=2},tag=EndCall] hotbar.1 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:0s}
replaceitem entity @a[scores={HoloSelect=3},tag=EndCall] hotbar.2 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:0s}
replaceitem entity @a[scores={HoloSelect=4},tag=EndCall] hotbar.3 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:0s}
replaceitem entity @a[scores={HoloSelect=5},tag=EndCall] hotbar.4 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:0s}
replaceitem entity @a[scores={HoloSelect=6},tag=EndCall] hotbar.5 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:0s}
replaceitem entity @a[scores={HoloSelect=7},tag=EndCall] hotbar.6 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:0s}
replaceitem entity @a[scores={HoloSelect=8},tag=EndCall] hotbar.7 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:0s}
replaceitem entity @a[scores={HoloSelect=9},tag=EndCall] hotbar.8 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:0s}
replaceitem entity @a[scores={HoloSelect=106},tag=EndCall] weapon.offhand minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1,Damage:0s}

scoreboard players set @a[tag=EndCall,scores={HoloSelect=1..}] HoloSelect 0
scoreboard players set @a[tag=EndCall,scores={HoloInventory=1..}] HoloSelect 0
scoreboard players set @a[tag=EndCall,scores={HoloCall=1..}] HoloCall 0
scoreboard players set @a[tag=EndCall,scores={TalkTime=1..}] TalkTime 0
tag @a[tag=EndCall] remove Replaced
tag @a[tag=EndCall] remove EndCall












#Replaces Caster if player puts it in their main inventory while in call
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:9b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}] HoloInventory 9
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:10b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}] HoloInventory 10
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:11b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}] HoloInventory 11
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:12b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}] HoloInventory 12
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:13b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}] HoloInventory 13
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:14b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}] HoloInventory 14
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}] HoloInventory 15
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:16b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}] HoloInventory 16
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:17b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}] HoloInventory 17
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:18b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}] HoloInventory 18
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:19b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}] HoloInventory 19
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:20b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}] HoloInventory 20
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:21b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}] HoloInventory 21
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:22b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}] HoloInventory 22
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:23b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}] HoloInventory 23
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:24b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}] HoloInventory 24
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:25b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}] HoloInventory 25
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:26b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}] HoloInventory 26
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:27b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}] HoloInventory 27
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:28b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}] HoloInventory 28
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:29b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}] HoloInventory 29
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:30b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}] HoloInventory 30
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:31b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}] HoloInventory 31
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:32b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}] HoloInventory 32
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:33b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}] HoloInventory 33
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:34b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}] HoloInventory 34
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:35b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}] HoloInventory 35

scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:9b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}] HoloInventory 9
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:10b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}] HoloInventory 10
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:11b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}] HoloInventory 11
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:12b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}] HoloInventory 12
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:13b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}] HoloInventory 13
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:14b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}] HoloInventory 14
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}] HoloInventory 15
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:16b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}] HoloInventory 16
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:17b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}] HoloInventory 17
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:18b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}] HoloInventory 18
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:19b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}] HoloInventory 19
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:20b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}] HoloInventory 20
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:21b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}] HoloInventory 21
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:22b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}] HoloInventory 22
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:23b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}] HoloInventory 23
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:24b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}] HoloInventory 24
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:25b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}] HoloInventory 25
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:26b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}] HoloInventory 26
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:27b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}] HoloInventory 27
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:28b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}] HoloInventory 28
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:29b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}] HoloInventory 29
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:30b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}] HoloInventory 30
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:31b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}] HoloInventory 31
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:32b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}] HoloInventory 32
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:33b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}] HoloInventory 33
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:34b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}] HoloInventory 34
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:35b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}] HoloInventory 35

scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:9b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}] HoloInventory 9
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:10b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}] HoloInventory 10
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:11b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}] HoloInventory 11
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:12b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}] HoloInventory 12
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:13b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}] HoloInventory 13
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:14b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}] HoloInventory 14
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}] HoloInventory 15
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:16b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}] HoloInventory 16
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:17b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}] HoloInventory 17
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:18b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}] HoloInventory 18
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:19b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}] HoloInventory 19
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:20b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}] HoloInventory 20
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:21b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}] HoloInventory 21
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:22b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}] HoloInventory 22
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:23b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}] HoloInventory 23
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:24b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}] HoloInventory 24
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:25b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}] HoloInventory 25
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:26b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}] HoloInventory 26
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:27b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}] HoloInventory 27
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:28b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}] HoloInventory 28
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:29b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}] HoloInventory 29
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:30b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}] HoloInventory 30
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:31b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}] HoloInventory 31
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:32b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}] HoloInventory 32
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:33b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}] HoloInventory 33
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:34b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}] HoloInventory 34
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:35b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}] HoloInventory 35

scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:9b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}] HoloInventory 9
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:10b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}] HoloInventory 10
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:11b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}] HoloInventory 11
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:12b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}] HoloInventory 12
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:13b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}] HoloInventory 13
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:14b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}] HoloInventory 14
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}] HoloInventory 15
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:16b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}] HoloInventory 16
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:17b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}] HoloInventory 17
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:18b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}] HoloInventory 18
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:19b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}] HoloInventory 19
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:20b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}] HoloInventory 20
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:21b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}] HoloInventory 21
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:22b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}] HoloInventory 22
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:23b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}] HoloInventory 23
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:24b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}] HoloInventory 24
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:25b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}] HoloInventory 25
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:26b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}] HoloInventory 26
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:27b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}] HoloInventory 27
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:28b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}] HoloInventory 28
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:29b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}] HoloInventory 29
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:30b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}] HoloInventory 30
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:31b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}] HoloInventory 31
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:32b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}] HoloInventory 32
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:33b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}] HoloInventory 33
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:34b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}] HoloInventory 34
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:35b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}] HoloInventory 35

scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:9b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}] HoloInventory 9
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:10b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}] HoloInventory 10
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:11b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}] HoloInventory 11
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:12b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}] HoloInventory 12
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:13b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}] HoloInventory 13
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:14b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}] HoloInventory 14
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}] HoloInventory 15
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:16b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}] HoloInventory 16
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:17b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}] HoloInventory 17
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:18b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}] HoloInventory 18
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:19b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}] HoloInventory 19
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:20b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}] HoloInventory 20
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:21b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}] HoloInventory 21
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:22b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}] HoloInventory 22
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:23b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}] HoloInventory 23
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:24b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}] HoloInventory 24
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:25b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}] HoloInventory 25
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:26b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}] HoloInventory 26
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:27b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}] HoloInventory 27
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:28b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}] HoloInventory 28
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:29b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}] HoloInventory 29
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:30b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}] HoloInventory 30
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:31b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}] HoloInventory 31
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:32b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}] HoloInventory 32
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:33b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}] HoloInventory 33
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:34b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}] HoloInventory 34
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:35b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}] HoloInventory 35

scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:9b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}] HoloInventory 9
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:10b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}] HoloInventory 10
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:11b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}] HoloInventory 11
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:12b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}] HoloInventory 12
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:13b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}] HoloInventory 13
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:14b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}] HoloInventory 14
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}] HoloInventory 15
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:16b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}] HoloInventory 16
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:17b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}] HoloInventory 17
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:18b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}] HoloInventory 18
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:19b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}] HoloInventory 19
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:20b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}] HoloInventory 20
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:21b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}] HoloInventory 21
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:22b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}] HoloInventory 22
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:23b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}] HoloInventory 23
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:24b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}] HoloInventory 24
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:25b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}] HoloInventory 25
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:26b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}] HoloInventory 26
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:27b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}] HoloInventory 27
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:28b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}] HoloInventory 28
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:29b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}] HoloInventory 29
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:30b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}] HoloInventory 30
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:31b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}] HoloInventory 31
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:32b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}] HoloInventory 32
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:33b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}] HoloInventory 33
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:34b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}] HoloInventory 34
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:35b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}] HoloInventory 35

scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:9b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}] HoloInventory 9
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:10b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}] HoloInventory 10
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:11b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}] HoloInventory 11
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:12b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}] HoloInventory 12
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:13b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}] HoloInventory 13
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:14b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}] HoloInventory 14
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}] HoloInventory 15
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:16b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}] HoloInventory 16
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:17b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}] HoloInventory 17
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:18b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}] HoloInventory 18
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:19b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}] HoloInventory 19
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:20b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}] HoloInventory 20
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:21b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}] HoloInventory 21
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:22b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}] HoloInventory 22
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:23b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}] HoloInventory 23
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:24b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}] HoloInventory 24
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:25b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}] HoloInventory 25
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:26b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}] HoloInventory 26
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:27b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}] HoloInventory 27
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:28b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}] HoloInventory 28
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:29b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}] HoloInventory 29
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:30b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}] HoloInventory 30
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:31b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}] HoloInventory 31
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:32b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}] HoloInventory 32
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:33b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}] HoloInventory 33
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:34b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}] HoloInventory 34
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:35b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}] HoloInventory 35

scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:9b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}] HoloInventory 9
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:10b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}] HoloInventory 10
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:11b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}] HoloInventory 11
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:12b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}] HoloInventory 12
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:13b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}] HoloInventory 13
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:14b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}] HoloInventory 14
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}] HoloInventory 15
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:16b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}] HoloInventory 16
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:17b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}] HoloInventory 17
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:18b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}] HoloInventory 18
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:19b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}] HoloInventory 19
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:20b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}] HoloInventory 20
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:21b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}] HoloInventory 21
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:22b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}] HoloInventory 22
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:23b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}] HoloInventory 23
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:24b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}] HoloInventory 24
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:25b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}] HoloInventory 25
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:26b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}] HoloInventory 26
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:27b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}] HoloInventory 27
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:28b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}] HoloInventory 28
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:29b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}] HoloInventory 29
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:30b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}] HoloInventory 30
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:31b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}] HoloInventory 31
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:32b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}] HoloInventory 32
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:33b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}] HoloInventory 33
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:34b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}] HoloInventory 34
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:35b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}] HoloInventory 35

scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:9b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}] HoloInventory 9
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:10b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}] HoloInventory 10
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:11b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}] HoloInventory 11
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:12b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}] HoloInventory 12
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:13b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}] HoloInventory 13
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:14b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}] HoloInventory 14
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}] HoloInventory 15
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:16b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}] HoloInventory 16
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:17b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}] HoloInventory 17
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:18b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}] HoloInventory 18
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:19b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}] HoloInventory 19
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:20b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}] HoloInventory 20
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:21b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}] HoloInventory 21
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:22b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}] HoloInventory 22
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:23b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}] HoloInventory 23
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:24b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}] HoloInventory 24
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:25b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}] HoloInventory 25
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:26b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}] HoloInventory 26
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:27b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}] HoloInventory 27
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:28b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}] HoloInventory 28
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:29b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}] HoloInventory 29
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:30b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}] HoloInventory 30
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:31b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}] HoloInventory 31
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:32b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}] HoloInventory 32
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:33b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}] HoloInventory 33
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:34b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}] HoloInventory 34
scoreboard players set @a[scores={HoloCall=1..},tag=Replaced,nbt={Inventory:[{Slot:35b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}] HoloInventory 35


replaceitem entity @a[scores={HoloInventory=9}] inventory.0 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[scores={HoloInventory=10}] inventory.1 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[scores={HoloInventory=11}] inventory.2 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[scores={HoloInventory=12}] inventory.3 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[scores={HoloInventory=13}] inventory.4 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[scores={HoloInventory=14}] inventory.5 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[scores={HoloInventory=15}] inventory.6 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[scores={HoloInventory=16}] inventory.7 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[scores={HoloInventory=17}] inventory.8 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[scores={HoloInventory=18}] inventory.9 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[scores={HoloInventory=19}] inventory.10 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[scores={HoloInventory=20}] inventory.11 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[scores={HoloInventory=21}] inventory.12 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[scores={HoloInventory=22}] inventory.13 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[scores={HoloInventory=23}] inventory.14 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[scores={HoloInventory=24}] inventory.15 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[scores={HoloInventory=25}] inventory.16 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[scores={HoloInventory=26}] inventory.17 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[scores={HoloInventory=27}] inventory.18 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[scores={HoloInventory=28}] inventory.19 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[scores={HoloInventory=29}] inventory.20 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[scores={HoloInventory=30}] inventory.21 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[scores={HoloInventory=31}] inventory.22 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[scores={HoloInventory=32}] inventory.23 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[scores={HoloInventory=33}] inventory.24 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[scores={HoloInventory=34}] inventory.25 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[scores={HoloInventory=35}] inventory.26 minecraft:carrot_on_a_stick{display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}

scoreboard players set @a[scores={HoloInventory=1..,HoloSelect=1..}] HoloSelect 1000
scoreboard players set @a[scores={HoloInventory=1..}] HoloInventory 0
