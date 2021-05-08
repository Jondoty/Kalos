#Player enters area, gives score of call area player is in
#Runs the commands if player doesn't have CallX tag
#Plays ring sound, waits for player to look at Caster
#Once caster is selected, replaces item with model of respective person depending on slot
#Dialogue plays, player can switch out of call or go anywhere and dialogue continues. Targets player with both trigger score and !CallX tag
#When dialogue finishes, scans a player's inventory and gives them back a damage 0 Carrot on a Stick
#Gives player CallX tag so call does not repeat


#Sets Holo Score to 0 if DialogueTrigger is active
scoreboard players set @a[score_DialogueTrigger_min=1,score_HoloCall_min=1] HoloCall 0



#Adds score depending on which slot selected
scoreboard players set @a[score_HoloCall_min=1] HoloSelect 1 {SelectedItemSlot:0,Inventory:[{Slot:0b,id:"minecraft:carrot_on_a_stick"}]}
scoreboard players set @a[score_HoloCall_min=1] HoloSelect 2 {SelectedItemSlot:1,Inventory:[{Slot:1b,id:"minecraft:carrot_on_a_stick"}]}
scoreboard players set @a[score_HoloCall_min=1] HoloSelect 3 {SelectedItemSlot:2,Inventory:[{Slot:2b,id:"minecraft:carrot_on_a_stick"}]}
scoreboard players set @a[score_HoloCall_min=1] HoloSelect 4 {SelectedItemSlot:3,Inventory:[{Slot:3b,id:"minecraft:carrot_on_a_stick"}]}
scoreboard players set @a[score_HoloCall_min=1] HoloSelect 5 {SelectedItemSlot:4,Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"}]}
scoreboard players set @a[score_HoloCall_min=1] HoloSelect 6 {SelectedItemSlot:5,Inventory:[{Slot:5b,id:"minecraft:carrot_on_a_stick"}]}
scoreboard players set @a[score_HoloCall_min=1] HoloSelect 7 {SelectedItemSlot:6,Inventory:[{Slot:6b,id:"minecraft:carrot_on_a_stick"}]}
scoreboard players set @a[score_HoloCall_min=1] HoloSelect 8 {SelectedItemSlot:7,Inventory:[{Slot:7b,id:"minecraft:carrot_on_a_stick"}]}
scoreboard players set @a[score_HoloCall_min=1] HoloSelect 9 {SelectedItemSlot:8,Inventory:[{Slot:8b,id:"minecraft:carrot_on_a_stick"}]}
scoreboard players set @a[score_HoloCall_min=1] HoloSelect 106 {Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Call1, Holo Caster PSA in Camphrier town
#scoreboard players set @a[x=-965,y=100,z=-32,r=15,tag=!Call1,score_HoloCall=0,score_TalkTime=0] HoloCall 1

#Title and ring of incoming call
title @a[score_HoloSelect=0,score_HoloCall_min=1,score_HoloCall=1,tag=!Call1,x=-965,y=100,z=-32,r=15] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute @a[score_HoloSelect=0,score_HoloCall_min=1,score_HoloCall=1,tag=!Call1,x=-965,y=100,z=-32,r=15] ~ ~ ~ playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1


replaceitem entity @a[score_HoloSelect_min=1,score_HoloSelect=1,score_HoloCall_min=1,score_HoloCall=1,tag=!Call1,tag=!Replaced] slot.hotbar.0 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=2,score_HoloSelect=2,score_HoloCall_min=1,score_HoloCall=1,tag=!Call1,tag=!Replaced] slot.hotbar.1 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=3,score_HoloSelect=3,score_HoloCall_min=1,score_HoloCall=1,tag=!Call1,tag=!Replaced] slot.hotbar.2 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=4,score_HoloSelect=4,score_HoloCall_min=1,score_HoloCall=1,tag=!Call1,tag=!Replaced] slot.hotbar.3 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=5,score_HoloSelect=5,score_HoloCall_min=1,score_HoloCall=1,tag=!Call1,tag=!Replaced] slot.hotbar.4 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=6,score_HoloSelect=6,score_HoloCall_min=1,score_HoloCall=1,tag=!Call1,tag=!Replaced] slot.hotbar.5 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=7,score_HoloSelect=7,score_HoloCall_min=1,score_HoloCall=1,tag=!Call1,tag=!Replaced] slot.hotbar.6 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=8,score_HoloSelect=8,score_HoloCall_min=1,score_HoloCall=1,tag=!Call1,tag=!Replaced] slot.hotbar.7 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=9,score_HoloSelect=9,score_HoloCall_min=1,score_HoloCall=1,tag=!Call1,tag=!Replaced] slot.hotbar.8 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=106,score_HoloSelect=106,score_HoloCall_min=1,score_HoloCall=1,tag=!Call1,tag=!Replaced] slot.weapon.offhand minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}

scoreboard players tag @a[score_HoloSelect_min=1,score_HoloCall_min=1,score_HoloCall=1,tag=!Call1,tag=!Replaced] add Replaced {Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:1s}]}

scoreboard players add @a[score_HoloCall_min=1,score_HoloCall=1,score_HoloSelect_min=1,tag=!Call1] TalkTime 1

tellraw @a[score_TalkTime_min=3,score_TalkTime=3,score_HoloSelect_min=1,score_HoloCall_min=1,score_HoloCall=1,tag=!Call1] {"text":"<Holo Caster> Thank you for using the Holo Caster."}
tellraw @a[score_TalkTime_min=10,score_TalkTime=10,score_HoloSelect_min=1,score_HoloCall_min=1,score_HoloCall=1,tag=!Call1] {"text":"<Holo Caster> Lysandre Labs developed the Holo Caster to make the lives of Pokémon Trainers richer, fuller, and more convenient."}
tellraw @a[score_TalkTime_min=20,score_TalkTime=20,score_HoloSelect_min=1,score_HoloCall_min=1,score_HoloCall=1,tag=!Call1] {"text":"<Holo Caster> We hope you\u2019ll continue to enjoy the fine services this device provides."}

scoreboard players tag @a[score_TalkTime_min=30,score_HoloCall_min=1,score_HoloCall=1,tag=!Call1] add EndCall



#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Call2, Tierno
#execute @a[x=-372,y=101,z=-124,r=20,tag=Dialogue22] ~ ~ ~ /scoreboard players set @s[tag=!Call2,score_HoloCall=0] HoloCall 2


#Title and ring of incoming call
title @a[score_HoloSelect=0,score_HoloCall_min=2,score_HoloCall=2,tag=!Call2,x=-372,y=101,z=-124,r=20] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute @a[score_HoloSelect=0,score_HoloCall_min=2,score_HoloCall=2,tag=!Call2,x=-372,y=101,z=-124,r=20] ~ ~ ~ playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[score_HoloSelect_min=1,score_HoloSelect=1,score_HoloCall_min=2,score_HoloCall=2,tag=!Call2,tag=!Replaced] slot.hotbar.0 minecraft:carrot_on_a_stick 1 6 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=2,score_HoloSelect=2,score_HoloCall_min=2,score_HoloCall=2,tag=!Call2,tag=!Replaced] slot.hotbar.1 minecraft:carrot_on_a_stick 1 6 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=3,score_HoloSelect=3,score_HoloCall_min=2,score_HoloCall=2,tag=!Call2,tag=!Replaced] slot.hotbar.2 minecraft:carrot_on_a_stick 1 6 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=4,score_HoloSelect=4,score_HoloCall_min=2,score_HoloCall=2,tag=!Call2,tag=!Replaced] slot.hotbar.3 minecraft:carrot_on_a_stick 1 6 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=5,score_HoloSelect=5,score_HoloCall_min=2,score_HoloCall=2,tag=!Call2,tag=!Replaced] slot.hotbar.4 minecraft:carrot_on_a_stick 1 6 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=6,score_HoloSelect=6,score_HoloCall_min=2,score_HoloCall=2,tag=!Call2,tag=!Replaced] slot.hotbar.5 minecraft:carrot_on_a_stick 1 6 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=7,score_HoloSelect=7,score_HoloCall_min=2,score_HoloCall=2,tag=!Call2,tag=!Replaced] slot.hotbar.6 minecraft:carrot_on_a_stick 1 6 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=8,score_HoloSelect=8,score_HoloCall_min=2,score_HoloCall=2,tag=!Call2,tag=!Replaced] slot.hotbar.7 minecraft:carrot_on_a_stick 1 6 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=9,score_HoloSelect=9,score_HoloCall_min=2,score_HoloCall=2,tag=!Call2,tag=!Replaced] slot.hotbar.8 minecraft:carrot_on_a_stick 1 6 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=106,score_HoloSelect=106,score_HoloCall_min=2,score_HoloCall=2,tag=!Call2,tag=!Replaced] slot.weapon.offhand minecraft:carrot_on_a_stick 1 6 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}

scoreboard players tag @a[score_HoloSelect_min=1,score_HoloCall_min=2,score_HoloCall=2,tag=!Call2,tag=!Replaced] add Replaced {Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:6s}]}



scoreboard players add @a[score_HoloCall_min=2,score_HoloCall=2,score_HoloSelect_min=1] TalkTime 1
tellraw @a[score_TalkTime_min=3,score_TalkTime=3,score_HoloSelect_min=1,score_HoloCall_min=2,score_HoloCall=2,tag=!Call2] ["",{"text":"<"},{"text":"Tierno","color":"yellow"},{"text":"> So, check this out! I\u2019m out on Route 5 right now, and it\u2019s just hopping with wild Pokémon!"}]
tellraw @a[score_TalkTime_min=13,score_TalkTime=13,score_HoloSelect_min=1,score_HoloCall_min=2,score_HoloCall=2,tag=!Call2] ["",{"text":"<"},{"text":"Tierno","color":"yellow"},{"text":"> Hurry and come check it out!"}]

scoreboard players tag @a[score_TalkTime_min=20,score_HoloCall_min=2,score_HoloCall=2,tag=!Call2] add EndCall
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Call3, Sycamore
#/scoreboard players set @a[x=-1972,y=113,z=-666,r=15,tag=!Call3,score_HoloCall=0] HoloCall 3

#Title and ring of incoming call
title @a[score_HoloSelect=0,score_HoloCall_min=3,score_HoloCall=3,tag=!Call3,x=-1972,y=113,z=-666,r=15] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute @a[score_HoloSelect=0,score_HoloCall_min=3,score_HoloCall=3,tag=!Call3,x=-1972,y=113,z=-666,r=15] ~ ~ ~ playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[score_HoloSelect_min=1,score_HoloSelect=1,score_HoloCall_min=3,score_HoloCall=3,tag=!Call3,tag=!Replaced] slot.hotbar.0 minecraft:carrot_on_a_stick 1 3 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=2,score_HoloSelect=2,score_HoloCall_min=3,score_HoloCall=3,tag=!Call3,tag=!Replaced] slot.hotbar.1 minecraft:carrot_on_a_stick 1 3 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=3,score_HoloSelect=3,score_HoloCall_min=3,score_HoloCall=3,tag=!Call3,tag=!Replaced] slot.hotbar.2 minecraft:carrot_on_a_stick 1 3 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=4,score_HoloSelect=4,score_HoloCall_min=3,score_HoloCall=3,tag=!Call3,tag=!Replaced] slot.hotbar.3 minecraft:carrot_on_a_stick 1 3 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=5,score_HoloSelect=5,score_HoloCall_min=3,score_HoloCall=3,tag=!Call3,tag=!Replaced] slot.hotbar.4 minecraft:carrot_on_a_stick 1 3 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=6,score_HoloSelect=6,score_HoloCall_min=3,score_HoloCall=3,tag=!Call3,tag=!Replaced] slot.hotbar.5 minecraft:carrot_on_a_stick 1 3 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=7,score_HoloSelect=7,score_HoloCall_min=3,score_HoloCall=3,tag=!Call3,tag=!Replaced] slot.hotbar.6 minecraft:carrot_on_a_stick 1 3 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=8,score_HoloSelect=8,score_HoloCall_min=3,score_HoloCall=3,tag=!Call3,tag=!Replaced] slot.hotbar.7 minecraft:carrot_on_a_stick 1 3 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=9,score_HoloSelect=9,score_HoloCall_min=3,score_HoloCall=3,tag=!Call3,tag=!Replaced] slot.hotbar.8 minecraft:carrot_on_a_stick 1 3 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=106,score_HoloSelect=106,score_HoloCall_min=3,score_HoloCall=3,tag=!Call3,tag=!Replaced] slot.weapon.offhand minecraft:carrot_on_a_stick 1 3 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}

scoreboard players tag @a[score_HoloSelect_min=1,score_HoloCall_min=3,score_HoloCall=3,tag=!Call3,tag=!Replaced] add Replaced {Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:3s}]}

scoreboard players add @a[score_HoloCall_min=3,score_HoloCall=3,score_HoloSelect_min=1] TalkTime 1
tellraw @a[score_TalkTime_min=3,score_TalkTime=3,score_HoloSelect_min=1,score_HoloCall_min=3,score_HoloCall=3,tag=!Call3] {"text":"<Sycamore> Hello there! Looks like you\u2019ve almost made it to Shalour City!"}
tellraw @a[score_TalkTime_min=13,score_TalkTime=13,score_HoloSelect_min=1,score_HoloCall_min=3,score_HoloCall=3,tag=!Call3] {"text":"<Sycamore> That\u2019s fantastic! It looks like your journey with your Pokémon around the Kalos region is going swimmingly!"}
tellraw @a[score_TalkTime_min=24,score_TalkTime=24,score_HoloSelect_min=1,score_HoloCall_min=3,score_HoloCall=3,tag=!Call3] {"text":"<Sycamore> I wanted to tell you about a person in Shalour who knows a great deal about Mega Evolution."}
tellraw @a[score_TalkTime_min=35,score_TalkTime=35,score_HoloSelect_min=1,score_HoloCall_min=3,score_HoloCall=3,tag=!Call3] {"text":"<Sycamore> People call him the Mega Evolution guru. I\u2019ve told everyone else about him, so if you have a second, you should give him a visit!"}

scoreboard players tag @a[score_TalkTime_min=47,score_HoloCall_min=3,score_HoloCall=3,tag=!Call3] add EndCall

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Call4, Serena entering Courmarine
#/scoreboard players set @a[x=-1189,y=79,z=-812,dx=13,dy=10,dz=18,tag=!Call4,score_HoloCall=0] HoloCall 4

#Title and ring of incoming call
title @a[score_HoloSelect=0,score_HoloCall_min=4,score_HoloCall=4,tag=!Call4,x=-1189,y=79,z=-812,dx=30,dy=10,dz=18] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute @a[score_HoloSelect=0,score_HoloCall_min=4,score_HoloCall=4,tag=!Call4,x=-1189,y=79,z=-812,dx=30,dy=10,dz=18] ~ ~ ~ playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[score_HoloSelect_min=1,score_HoloSelect=1,score_HoloCall_min=4,score_HoloCall=4,tag=!Call4,tag=!Replaced] slot.hotbar.0 minecraft:carrot_on_a_stick 1 5 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=2,score_HoloSelect=2,score_HoloCall_min=4,score_HoloCall=4,tag=!Call4,tag=!Replaced] slot.hotbar.1 minecraft:carrot_on_a_stick 1 5 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=3,score_HoloSelect=3,score_HoloCall_min=4,score_HoloCall=4,tag=!Call4,tag=!Replaced] slot.hotbar.2 minecraft:carrot_on_a_stick 1 5 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=4,score_HoloSelect=4,score_HoloCall_min=4,score_HoloCall=4,tag=!Call4,tag=!Replaced] slot.hotbar.3 minecraft:carrot_on_a_stick 1 5 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=5,score_HoloSelect=5,score_HoloCall_min=4,score_HoloCall=4,tag=!Call4,tag=!Replaced] slot.hotbar.4 minecraft:carrot_on_a_stick 1 5 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=6,score_HoloSelect=6,score_HoloCall_min=4,score_HoloCall=4,tag=!Call4,tag=!Replaced] slot.hotbar.5 minecraft:carrot_on_a_stick 1 5 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=7,score_HoloSelect=7,score_HoloCall_min=4,score_HoloCall=4,tag=!Call4,tag=!Replaced] slot.hotbar.6 minecraft:carrot_on_a_stick 1 5 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=8,score_HoloSelect=8,score_HoloCall_min=4,score_HoloCall=4,tag=!Call4,tag=!Replaced] slot.hotbar.7 minecraft:carrot_on_a_stick 1 5 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=9,score_HoloSelect=9,score_HoloCall_min=4,score_HoloCall=4,tag=!Call4,tag=!Replaced] slot.hotbar.8 minecraft:carrot_on_a_stick 1 5 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=106,score_HoloSelect=106,score_HoloCall_min=4,score_HoloCall=4,tag=!Call4,tag=!Replaced] slot.weapon.offhand minecraft:carrot_on_a_stick 1 5 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}

scoreboard players tag @a[score_HoloSelect_min=1,score_HoloCall_min=4,score_HoloCall=4,tag=!Call4,tag=!Replaced] add Replaced {Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:5s}]}

scoreboard players add @a[score_HoloCall_min=4,score_HoloCall=4,score_HoloSelect_min=1] TalkTime 1
tellraw @a[score_TalkTime_min=3,score_TalkTime=3,score_HoloSelect_min=1,score_HoloCall_min=4,score_HoloCall=4,tag=!Call4] ["",{"text":"<"},{"text":"Serena","color":"gold"},{"text":"> "},{"selector":"@p[score_TalkTime_min=3,score_TalkTime=3,score_HoloSelect_min=1,score_HoloCall_min=4,score_HoloCall=4,tag=!Call4]"},{"text":"! I challenge you to a battle in front of the Gym!"}]
tellraw @a[score_TalkTime_min=10,score_TalkTime=10,score_HoloSelect_min=1,score_HoloCall_min=4,score_HoloCall=4,tag=!Call4] ["",{"text":"<"},{"text":"Serena","color":"gold"},{"text":"> Prepare yourself!"}]

scoreboard players tag @a[score_TalkTime_min=16,score_HoloCall_min=4,score_HoloCall=4,tag=!Call4] add EndCall
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Call5, Lysandre
#execute @a[x=-1077,y=115,z=-615,r=20,tag=Ramos,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ /scoreboard players set @s[tag=!Call5] HoloCall 5

#Title and ring of incoming call
title @a[score_HoloSelect=0,score_HoloCall_min=5,score_HoloCall=5,tag=!Call5,x=-1077,y=115,z=-615,r=20] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute @a[score_HoloSelect=0,score_HoloCall_min=5,score_HoloCall=5,tag=!Call5,x=-1077,y=115,z=-615,r=20] ~ ~ ~ playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[score_HoloSelect_min=1,score_HoloSelect=1,score_HoloCall_min=5,score_HoloCall=5,tag=!Call5,tag=!Replaced] slot.hotbar.0 minecraft:carrot_on_a_stick 1 2 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=2,score_HoloSelect=2,score_HoloCall_min=5,score_HoloCall=5,tag=!Call5,tag=!Replaced] slot.hotbar.1 minecraft:carrot_on_a_stick 1 2 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=3,score_HoloSelect=3,score_HoloCall_min=5,score_HoloCall=5,tag=!Call5,tag=!Replaced] slot.hotbar.2 minecraft:carrot_on_a_stick 1 2 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=4,score_HoloSelect=4,score_HoloCall_min=5,score_HoloCall=5,tag=!Call5,tag=!Replaced] slot.hotbar.3 minecraft:carrot_on_a_stick 1 2 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=5,score_HoloSelect=5,score_HoloCall_min=5,score_HoloCall=5,tag=!Call5,tag=!Replaced] slot.hotbar.4 minecraft:carrot_on_a_stick 1 2 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=6,score_HoloSelect=6,score_HoloCall_min=5,score_HoloCall=5,tag=!Call5,tag=!Replaced] slot.hotbar.5 minecraft:carrot_on_a_stick 1 2 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=7,score_HoloSelect=7,score_HoloCall_min=5,score_HoloCall=5,tag=!Call5,tag=!Replaced] slot.hotbar.6 minecraft:carrot_on_a_stick 1 2 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=8,score_HoloSelect=8,score_HoloCall_min=5,score_HoloCall=5,tag=!Call5,tag=!Replaced] slot.hotbar.7 minecraft:carrot_on_a_stick 1 2 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=9,score_HoloSelect=9,score_HoloCall_min=5,score_HoloCall=5,tag=!Call5,tag=!Replaced] slot.hotbar.8 minecraft:carrot_on_a_stick 1 2 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=106,score_HoloSelect=106,score_HoloCall_min=5,score_HoloCall=5,tag=!Call5,tag=!Replaced] slot.weapon.offhand minecraft:carrot_on_a_stick 1 2 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}

scoreboard players tag @a[score_HoloSelect_min=1,score_HoloCall_min=5,score_HoloCall=5,tag=!Call5,tag=!Replaced] add Replaced {Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:2s}]}

scoreboard players add @a[score_HoloCall_min=5,score_HoloCall=5,score_HoloSelect_min=1] TalkTime 1
tellraw @a[score_TalkTime_min=3,score_TalkTime=3,score_HoloSelect_min=1,score_HoloCall_min=5,score_HoloCall=5,tag=!Call5] ["",{"text":"<"},{"text":"Lysandre","color":"dark_red"},{"text":"> Professor Sycamore told me you can now wield Mega Evolution. That is truly wonderful."}]
tellraw @a[score_TalkTime_min=13,score_TalkTime=13,score_HoloSelect_min=1,score_HoloCall_min=5,score_HoloCall=5,tag=!Call5] ["",{"text":"<"},{"text":"Lysandre","color":"dark_red"},{"text":"> With that power, you can steer your future in a better direction!"}]
tellraw @a[score_TalkTime_min=20,score_TalkTime=20,score_HoloSelect_min=1,score_HoloCall_min=5,score_HoloCall=5,tag=!Call5] ["",{"text":"<"},{"text":"Lysandre","color":"dark_red"},{"text":"> We can't just cover up the old filth with new filth!"}]
tellraw @a[score_TalkTime_min=28,score_TalkTime=28,score_HoloSelect_min=1,score_HoloCall_min=5,score_HoloCall=5,tag=!Call5] ["",{"text":"<"},{"text":"Lysandre","color":"dark_red"},{"text":"> I implore you to consider what we need to do to change the world into a new, beautiful world!"}]

scoreboard players tag @a[score_TalkTime_min=38,score_HoloCall_min=5,score_HoloCall=5,tag=!Call5] add EndCall


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Call6, Sycamore post-Clemont Badge
#triggers in Lumiose Gym portals

#Title and ring of incoming call
title @a[score_HoloSelect=0,score_HoloCall_min=6,score_HoloCall=6,tag=!Call6,x=-181,y=101,z=-390,r=51] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute @a[score_HoloSelect=0,score_HoloCall_min=6,score_HoloCall=6,tag=!Call6,x=-181,y=101,z=-390,r=51] ~ ~ ~ playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[score_HoloSelect_min=1,score_HoloSelect=1,score_HoloCall_min=6,score_HoloCall=6,tag=!Call6,tag=!Replaced] slot.hotbar.0 minecraft:carrot_on_a_stick 1 3 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=2,score_HoloSelect=2,score_HoloCall_min=6,score_HoloCall=6,tag=!Call6,tag=!Replaced] slot.hotbar.1 minecraft:carrot_on_a_stick 1 3 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=3,score_HoloSelect=3,score_HoloCall_min=6,score_HoloCall=6,tag=!Call6,tag=!Replaced] slot.hotbar.2 minecraft:carrot_on_a_stick 1 3 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=4,score_HoloSelect=4,score_HoloCall_min=6,score_HoloCall=6,tag=!Call6,tag=!Replaced] slot.hotbar.3 minecraft:carrot_on_a_stick 1 3 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=5,score_HoloSelect=5,score_HoloCall_min=6,score_HoloCall=6,tag=!Call6,tag=!Replaced] slot.hotbar.4 minecraft:carrot_on_a_stick 1 3 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=6,score_HoloSelect=6,score_HoloCall_min=6,score_HoloCall=6,tag=!Call6,tag=!Replaced] slot.hotbar.5 minecraft:carrot_on_a_stick 1 3 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=7,score_HoloSelect=7,score_HoloCall_min=6,score_HoloCall=6,tag=!Call6,tag=!Replaced] slot.hotbar.6 minecraft:carrot_on_a_stick 1 3 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=8,score_HoloSelect=8,score_HoloCall_min=6,score_HoloCall=6,tag=!Call6,tag=!Replaced] slot.hotbar.7 minecraft:carrot_on_a_stick 1 3 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=9,score_HoloSelect=9,score_HoloCall_min=6,score_HoloCall=6,tag=!Call6,tag=!Replaced] slot.hotbar.8 minecraft:carrot_on_a_stick 1 3 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=106,score_HoloSelect=106,score_HoloCall_min=6,score_HoloCall=6,tag=!Call6,tag=!Replaced] slot.weapon.offhand minecraft:carrot_on_a_stick 1 3 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}

scoreboard players tag @a[score_HoloSelect_min=1,score_HoloCall_min=6,score_HoloCall=6,tag=!Call6,tag=!Replaced] add Replaced {Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:3s}]}

scoreboard players add @a[score_HoloCall_min=6,score_HoloCall=6,score_HoloSelect_min=1] TalkTime 1
tellraw @a[score_TalkTime_min=3,score_TalkTime=3,score_HoloSelect_min=1,score_HoloCall_min=6,score_HoloCall=6,tag=!Call6] {"text":"<Professor Sycamore> Hello there! I wanted to talk to you for a little bit. Could you come to Lysandre Café?"}
tellraw @a[score_TalkTime_min=13,score_TalkTime=13,score_HoloSelect_min=1,score_HoloCall_min=6,score_HoloCall=6,tag=!Call6] {"text":"<Professor Sycamore> Do you know where it is? You can see it from outside the Pokémon Center right by Prism Tower. It\u2019s the red café."}
tellraw @a[score_TalkTime_min=25,score_TalkTime=25,score_HoloSelect_min=1,score_HoloCall_min=6,score_HoloCall=6,tag=!Call6] {"text":"<Professor Sycamore> Just hop in a taxi if you can\u2019t find it. Be seeing you soon!"}

scoreboard players tag @a[score_TalkTime_min=33,score_HoloCall_min=6,score_HoloCall=6,tag=!Call6] add EndCall

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Call7, Trevor after Lysandre's Lab & Sycamore talk
#execute @a[x=-296,y=101,z=-478,r=20,tag=Dialogue79,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ /scoreboard players set @s[tag=!Call7] HoloCall 7

#Title and ring of incoming call
title @a[score_HoloSelect=0,score_HoloCall_min=7,score_HoloCall=7,tag=!Call7,x=-296,y=101,z=-478,r=20] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute @a[score_HoloSelect=0,score_HoloCall_min=7,score_HoloCall=7,tag=!Call7,x=-296,y=101,z=-478,r=20] ~ ~ ~ playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[score_HoloSelect_min=1,score_HoloSelect=1,score_HoloCall_min=7,score_HoloCall=7,tag=!Call7,tag=!Replaced] slot.hotbar.0 minecraft:carrot_on_a_stick 1 4 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=2,score_HoloSelect=2,score_HoloCall_min=7,score_HoloCall=7,tag=!Call7,tag=!Replaced] slot.hotbar.1 minecraft:carrot_on_a_stick 1 4 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=3,score_HoloSelect=3,score_HoloCall_min=7,score_HoloCall=7,tag=!Call7,tag=!Replaced] slot.hotbar.2 minecraft:carrot_on_a_stick 1 4 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=4,score_HoloSelect=4,score_HoloCall_min=7,score_HoloCall=7,tag=!Call7,tag=!Replaced] slot.hotbar.3 minecraft:carrot_on_a_stick 1 4 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=5,score_HoloSelect=5,score_HoloCall_min=7,score_HoloCall=7,tag=!Call7,tag=!Replaced] slot.hotbar.4 minecraft:carrot_on_a_stick 1 4 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=6,score_HoloSelect=6,score_HoloCall_min=7,score_HoloCall=7,tag=!Call7,tag=!Replaced] slot.hotbar.5 minecraft:carrot_on_a_stick 1 4 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=7,score_HoloSelect=7,score_HoloCall_min=7,score_HoloCall=7,tag=!Call7,tag=!Replaced] slot.hotbar.6 minecraft:carrot_on_a_stick 1 4 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=8,score_HoloSelect=8,score_HoloCall_min=7,score_HoloCall=7,tag=!Call7,tag=!Replaced] slot.hotbar.7 minecraft:carrot_on_a_stick 1 4 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=9,score_HoloSelect=9,score_HoloCall_min=7,score_HoloCall=7,tag=!Call7,tag=!Replaced] slot.hotbar.8 minecraft:carrot_on_a_stick 1 4 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=106,score_HoloSelect=106,score_HoloCall_min=7,score_HoloCall=7,tag=!Call7,tag=!Replaced] slot.weapon.offhand minecraft:carrot_on_a_stick 1 4 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}

scoreboard players tag @a[score_HoloSelect_min=1,score_HoloCall_min=7,score_HoloCall=7,tag=!Call7,tag=!Replaced] add Replaced {Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:4s}]}

scoreboard players add @a[score_HoloCall_min=7,score_HoloCall=7,score_HoloSelect_min=1] TalkTime 1

tellraw @a[score_TalkTime_min=3,score_TalkTime=3,score_HoloSelect_min=1,score_HoloCall_min=7,score_HoloCall=7,tag=!Call7] ["",{"text":"<"},{"text":"Trevor","color":"green"},{"text":"> Hello. How have you been?"}]
tellraw @a[score_TalkTime_min=10,score_TalkTime=10,score_HoloSelect_min=1,score_HoloCall_min=7,score_HoloCall=7,tag=!Call7] ["",{"text":"<"},{"text":"Trevor","color":"green"},{"text":"> I just wanted to let you know we\u2019re all going to meet on Route 14. Please come and join us."}]

scoreboard players tag @a[score_TalkTime_min=20,score_HoloCall_min=7,score_HoloCall=7,tag=!Call7] add EndCall
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Call8, Malva
#execute @a[x=-154,y=125,z=-1763,r=20,tag=Dialogue90,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ /scoreboard players set @s[tag=!Call8] HoloCall 8

#Title and ring of incoming call
title @a[score_HoloSelect=0,score_HoloCall_min=8,score_HoloCall=8,tag=!Call8,x=-154,y=125,z=-1763,r=20] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute @a[score_HoloSelect=0,score_HoloCall_min=8,score_HoloCall=8,tag=!Call8,x=-154,y=125,z=-1763,r=20] ~ ~ ~ playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[score_HoloSelect_min=1,score_HoloSelect=1,score_HoloCall_min=8,score_HoloCall=8,tag=!Call8,tag=!Replaced] slot.hotbar.0 minecraft:carrot_on_a_stick 1 7 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=2,score_HoloSelect=2,score_HoloCall_min=8,score_HoloCall=8,tag=!Call8,tag=!Replaced] slot.hotbar.1 minecraft:carrot_on_a_stick 1 7 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=3,score_HoloSelect=3,score_HoloCall_min=8,score_HoloCall=8,tag=!Call8,tag=!Replaced] slot.hotbar.2 minecraft:carrot_on_a_stick 1 7 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=4,score_HoloSelect=4,score_HoloCall_min=8,score_HoloCall=8,tag=!Call8,tag=!Replaced] slot.hotbar.3 minecraft:carrot_on_a_stick 1 7 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=5,score_HoloSelect=5,score_HoloCall_min=8,score_HoloCall=8,tag=!Call8,tag=!Replaced] slot.hotbar.4 minecraft:carrot_on_a_stick 1 7 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=6,score_HoloSelect=6,score_HoloCall_min=8,score_HoloCall=8,tag=!Call8,tag=!Replaced] slot.hotbar.5 minecraft:carrot_on_a_stick 1 7 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=7,score_HoloSelect=7,score_HoloCall_min=8,score_HoloCall=8,tag=!Call8,tag=!Replaced] slot.hotbar.6 minecraft:carrot_on_a_stick 1 7 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=8,score_HoloSelect=8,score_HoloCall_min=8,score_HoloCall=8,tag=!Call8,tag=!Replaced] slot.hotbar.7 minecraft:carrot_on_a_stick 1 7 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=9,score_HoloSelect=9,score_HoloCall_min=8,score_HoloCall=8,tag=!Call8,tag=!Replaced] slot.hotbar.8 minecraft:carrot_on_a_stick 1 7 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=106,score_HoloSelect=106,score_HoloCall_min=8,score_HoloCall=8,tag=!Call8,tag=!Replaced] slot.weapon.offhand minecraft:carrot_on_a_stick 1 7 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}

scoreboard players tag @a[score_HoloSelect_min=1,score_HoloCall_min=8,score_HoloCall=8,tag=!Call8,tag=!Replaced] add Replaced {Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:7s}]}



scoreboard players add @a[score_HoloCall_min=8,score_HoloCall=8,score_HoloSelect_min=1] TalkTime 1
tellraw @a[score_TalkTime_min=3,score_TalkTime=3,score_HoloSelect_min=1,score_HoloCall_min=8,score_HoloCall=8,tag=!Call8] {"text":"Newscast: We\u2019re bringing you this special bulletin."}
tellraw @a[score_TalkTime_min=10,score_TalkTime=10,score_HoloSelect_min=1,score_HoloCall_min=8,score_HoloCall=8,tag=!Call8] {"text":"Newscast: The Poké Ball Factory in the area around Laverre City has been attacked."}
tellraw @a[score_TalkTime_min=20,score_TalkTime=20,score_HoloSelect_min=1,score_HoloCall_min=8,score_HoloCall=8,tag=!Call8] {"text":"Newscast: The identities of those involved are unknown."}
tellraw @a[score_TalkTime_min=27,score_TalkTime=27,score_HoloSelect_min=1,score_HoloCall_min=8,score_HoloCall=8,tag=!Call8] {"text":"Newscast: However, this is not expected to have any effect on the sales of Poké Balls..."}

scoreboard players tag @a[score_TalkTime_min=35,score_HoloCall_min=8,score_HoloCall=8,tag=!Call8] add EndCall
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Call9, Lysandre
#scoreboard players set @a[x=522,y=108,z=-475,r=20,tag=!Call9,score_HoloCall=0] HoloCall 9

#Title and ring of incoming call
title @a[score_HoloSelect=0,score_HoloCall_min=9,score_HoloCall=9,tag=!Call9,x=522,y=108,z=-475,r=20] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute @a[score_HoloSelect=0,score_HoloCall_min=9,score_HoloCall=9,tag=!Call9,x=522,y=108,z=-475,r=20] ~ ~ ~ playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[score_HoloSelect_min=1,score_HoloSelect=1,score_HoloCall_min=9,score_HoloCall=9,tag=!Call9,tag=!Replaced] slot.hotbar.0 minecraft:carrot_on_a_stick 1 2 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=2,score_HoloSelect=2,score_HoloCall_min=9,score_HoloCall=9,tag=!Call9,tag=!Replaced] slot.hotbar.1 minecraft:carrot_on_a_stick 1 2 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=3,score_HoloSelect=3,score_HoloCall_min=9,score_HoloCall=9,tag=!Call9,tag=!Replaced] slot.hotbar.2 minecraft:carrot_on_a_stick 1 2 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=4,score_HoloSelect=4,score_HoloCall_min=9,score_HoloCall=9,tag=!Call9,tag=!Replaced] slot.hotbar.3 minecraft:carrot_on_a_stick 1 2 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=5,score_HoloSelect=5,score_HoloCall_min=9,score_HoloCall=9,tag=!Call9,tag=!Replaced] slot.hotbar.4 minecraft:carrot_on_a_stick 1 2 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=6,score_HoloSelect=6,score_HoloCall_min=9,score_HoloCall=9,tag=!Call9,tag=!Replaced] slot.hotbar.5 minecraft:carrot_on_a_stick 1 2 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=7,score_HoloSelect=7,score_HoloCall_min=9,score_HoloCall=9,tag=!Call9,tag=!Replaced] slot.hotbar.6 minecraft:carrot_on_a_stick 1 2 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=8,score_HoloSelect=8,score_HoloCall_min=9,score_HoloCall=9,tag=!Call9,tag=!Replaced] slot.hotbar.7 minecraft:carrot_on_a_stick 1 2 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=9,score_HoloSelect=9,score_HoloCall_min=9,score_HoloCall=9,tag=!Call9,tag=!Replaced] slot.hotbar.8 minecraft:carrot_on_a_stick 1 2 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=106,score_HoloSelect=106,score_HoloCall_min=9,score_HoloCall=9,tag=!Call9,tag=!Replaced] slot.weapon.offhand minecraft:carrot_on_a_stick 1 2 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}

scoreboard players tag @a[score_HoloSelect_min=1,score_HoloCall_min=9,score_HoloCall=9,tag=!Call9,tag=!Replaced] add Replaced {Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:2s}]}

scoreboard players add @a[score_HoloCall_min=9,score_HoloCall=9,score_HoloSelect_min=1] TalkTime 1
tellraw @a[score_TalkTime_min=3,score_TalkTime=3,score_HoloSelect_min=1,score_HoloCall_min=9,score_HoloCall=9,tag=!Call9] ["",{"text":"<"},{"text":"Lysandre","color":"dark_red"},{"text":"> According to Professor Sycamore's research, Mega Evolution releases all of a Pokémon's hidden energy at once."}]
tellraw @a[score_TalkTime_min=13,score_TalkTime=13,score_HoloSelect_min=1,score_HoloCall_min=9,score_HoloCall=9,tag=!Call9] ["",{"text":"<"},{"text":"Lysandre","color":"dark_red"},{"text":"> The Pokémon then exhibits a level of power it could not attain through ordinary Evolution."}]
tellraw @a[score_TalkTime_min=23,score_TalkTime=23,score_HoloSelect_min=1,score_HoloCall_min=9,score_HoloCall=9,tag=!Call9] ["",{"text":"<"},{"text":"Lysandre","color":"dark_red"},{"text":"> What meaning can we draw from this?"}]
tellraw @a[score_TalkTime_min=30,score_TalkTime=30,score_HoloSelect_min=1,score_HoloCall_min=9,score_HoloCall=9,tag=!Call9] ["",{"text":"<"},{"text":"Lysandre","color":"dark_red"},{"text":"> Do all people and Pokémon have such potential, or is it hidden within a chosen few?"}]

scoreboard players tag @a[score_TalkTime_min=40,score_HoloCall_min=9,score_HoloCall=9,tag=!Call9] add EndCall

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Call10, Serena
#scoreboard players set @a[x=1056,y=108,z=-191,r=20,tag=!Call10,score_HoloCall=0] HoloCall 10

#Title and ring of incoming call
title @a[score_HoloSelect=0,score_HoloCall_min=10,score_HoloCall=10,tag=!Call10,x=1056,y=108,z=-191,r=20] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute @a[score_HoloSelect=0,score_HoloCall_min=10,score_HoloCall=10,tag=!Call10,x=1056,y=108,z=-191,r=20] ~ ~ ~ playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[score_HoloSelect_min=1,score_HoloSelect=1,score_HoloCall_min=10,score_HoloCall=10,tag=!Call10,tag=!Replaced] slot.hotbar.0 minecraft:carrot_on_a_stick 1 5 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=2,score_HoloSelect=2,score_HoloCall_min=10,score_HoloCall=10,tag=!Call10,tag=!Replaced] slot.hotbar.1 minecraft:carrot_on_a_stick 1 5 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=3,score_HoloSelect=3,score_HoloCall_min=10,score_HoloCall=10,tag=!Call10,tag=!Replaced] slot.hotbar.2 minecraft:carrot_on_a_stick 1 5 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=4,score_HoloSelect=4,score_HoloCall_min=10,score_HoloCall=10,tag=!Call10,tag=!Replaced] slot.hotbar.3 minecraft:carrot_on_a_stick 1 5 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=5,score_HoloSelect=5,score_HoloCall_min=10,score_HoloCall=10,tag=!Call10,tag=!Replaced] slot.hotbar.4 minecraft:carrot_on_a_stick 1 5 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=6,score_HoloSelect=6,score_HoloCall_min=10,score_HoloCall=10,tag=!Call10,tag=!Replaced] slot.hotbar.5 minecraft:carrot_on_a_stick 1 5 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=7,score_HoloSelect=7,score_HoloCall_min=10,score_HoloCall=10,tag=!Call10,tag=!Replaced] slot.hotbar.6 minecraft:carrot_on_a_stick 1 5 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=8,score_HoloSelect=8,score_HoloCall_min=10,score_HoloCall=10,tag=!Call10,tag=!Replaced] slot.hotbar.7 minecraft:carrot_on_a_stick 1 5 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=9,score_HoloSelect=9,score_HoloCall_min=10,score_HoloCall=10,tag=!Call10,tag=!Replaced] slot.hotbar.8 minecraft:carrot_on_a_stick 1 5 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=106,score_HoloSelect=106,score_HoloCall_min=10,score_HoloCall=10,tag=!Call10,tag=!Replaced] slot.weapon.offhand minecraft:carrot_on_a_stick 1 5 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}

scoreboard players tag @a[score_HoloSelect_min=1,score_HoloCall_min=10,score_HoloCall=10,tag=!Call10,tag=!Replaced] add Replaced {Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:5s}]}

scoreboard players add @a[score_HoloCall_min=10,score_HoloCall=10,score_HoloSelect_min=1] TalkTime 1
tellraw @a[score_TalkTime_min=3,score_TalkTime=3,score_HoloSelect_min=1,score_HoloCall_min=10,score_HoloCall=10,tag=!Call10] ["",{"text":"<"},{"text":"Serena","color":"gold"},{"text":"> "},{"selector":"@p[score_TalkTime_min=3,score_TalkTime=3,score_HoloSelect_min=1,score_HoloCall_min=10,score_HoloCall=10,tag=!Call10]"},{"text":". This time, I challenge you to a battle in front of Anistar City's Gym! "}]
tellraw @a[score_TalkTime_min=11,score_TalkTime=11,score_HoloSelect_min=1,score_HoloCall_min=10,score_HoloCall=10,tag=!Call10] ["",{"text":"<"},{"text":"Serena","color":"gold"},{"text":"> Prepare yourself!"}]

scoreboard players tag @a[score_TalkTime_min=17,score_HoloCall_min=10,score_HoloCall=10,tag=!Call10] add EndCall

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Call11, Lysandre
#Integrated into dialogue in case player doesn't have a caster
#tellraw @a {"text":"<Lysandre> Pokémon Trainers. I come to you by the Holo Caster to make an important announcement."}
#tellraw @a {"text":"<Lysandre> Listen well. Team Flare will revive the ultimate weapon, eliminate everyone who isn\u2019t in our group, and return the world to a beautiful, natural state."}
#tellraw @a {"text":"<Lysandre> Unproductive fools are consuming our future..."}
#tellraw @a {"text":"<Lysandre> If nothing changes, the world will become ugly and conflicts will raze the land from end to end."}
#tellraw @a {"text":"<Lysandre> I repeat. We will use the ultimate weapon and wipe the slate clean."}
#tellraw @a {"text":"<Lysandre> I\u2019m sorry, those of you who are not members of Team Flare, but this is adieu to you all."}


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Call12, Sycamore
#execute @a[x=1349,y=108,z=-173,r=20,tag=!Call12,score_HoloCall=0] ~ ~ ~ scoreboard players set @s[tag=Dialogue133] HoloCall 12

#Title and ring of incoming call
title @a[score_HoloSelect=0,score_HoloCall_min=12,score_HoloCall=12,tag=!Call12,x=1349,y=108,z=-173,r=20] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute @a[score_HoloSelect=0,score_HoloCall_min=12,score_HoloCall=12,tag=!Call12,x=1349,y=108,z=-173,r=20] ~ ~ ~ playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[score_HoloSelect_min=1,score_HoloSelect=1,score_HoloCall_min=12,score_HoloCall=12,tag=!Call12,tag=!Replaced] slot.hotbar.0 minecraft:carrot_on_a_stick 1 3 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=2,score_HoloSelect=2,score_HoloCall_min=12,score_HoloCall=12,tag=!Call12,tag=!Replaced] slot.hotbar.1 minecraft:carrot_on_a_stick 1 3 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=3,score_HoloSelect=3,score_HoloCall_min=12,score_HoloCall=12,tag=!Call12,tag=!Replaced] slot.hotbar.2 minecraft:carrot_on_a_stick 1 3 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=4,score_HoloSelect=4,score_HoloCall_min=12,score_HoloCall=12,tag=!Call12,tag=!Replaced] slot.hotbar.3 minecraft:carrot_on_a_stick 1 3 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=5,score_HoloSelect=5,score_HoloCall_min=12,score_HoloCall=12,tag=!Call12,tag=!Replaced] slot.hotbar.4 minecraft:carrot_on_a_stick 1 3 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=6,score_HoloSelect=6,score_HoloCall_min=12,score_HoloCall=12,tag=!Call12,tag=!Replaced] slot.hotbar.5 minecraft:carrot_on_a_stick 1 3 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=7,score_HoloSelect=7,score_HoloCall_min=12,score_HoloCall=12,tag=!Call12,tag=!Replaced] slot.hotbar.6 minecraft:carrot_on_a_stick 1 3 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=8,score_HoloSelect=8,score_HoloCall_min=12,score_HoloCall=12,tag=!Call12,tag=!Replaced] slot.hotbar.7 minecraft:carrot_on_a_stick 1 3 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=9,score_HoloSelect=9,score_HoloCall_min=12,score_HoloCall=12,tag=!Call12,tag=!Replaced] slot.hotbar.8 minecraft:carrot_on_a_stick 1 3 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=106,score_HoloSelect=106,score_HoloCall_min=12,score_HoloCall=12,tag=!Call12,tag=!Replaced] slot.weapon.offhand minecraft:carrot_on_a_stick 1 3 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}

scoreboard players tag @a[score_HoloSelect_min=1,score_HoloCall_min=12,score_HoloCall=12,tag=!Call12,tag=!Replaced] add Replaced {Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:3s}]}


scoreboard players add @a[score_HoloCall_min=12,score_HoloCall=12,score_HoloSelect_min=1] TalkTime 1
tellraw @a[score_TalkTime_min=3,score_TalkTime=3,score_HoloSelect_min=1,score_HoloCall_min=12,score_HoloCall=12,tag=!Call12] ["",{"text":"<"},{"text":"Sycamore","color":"aqua"},{"text":"> Do you have a minute? I'd like to talk to you face-to-face."}]
tellraw @a[score_TalkTime_min=12,score_TalkTime=12,score_HoloSelect_min=1,score_HoloCall_min=12,score_HoloCall=12,tag=!Call12] ["",{"text":"<"},{"text":"Sycamore","color":"aqua"},{"text":"> Let's meet in Couriway Town!"}]

scoreboard players tag @a[score_TalkTime_min=20,score_HoloCall_min=12,score_HoloCall=12,tag=!Call12] add EndCall

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Call 13 - Looker post-Pokemon League

#execute @a[x=-188,y=101,z=-639,r=100,tag=!Call13,score_HoloCall=0,score_TalkTime=0,score_PokemonLeague_min=1] ~ ~ ~ scoreboard players set @s[tag=Dialogue163] HoloCall 13

#Title and ring of incoming call
title @a[score_HoloSelect=0,score_HoloCall_min=13,score_HoloCall=13,tag=!Call13,x=-181,y=101,z=-390,r=395] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute @a[score_HoloSelect=0,score_HoloCall_min=13,score_HoloCall=13,tag=!Call13,x=-181,y=101,z=-390,r=395] ~ ~ ~ playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1


replaceitem entity @a[score_HoloSelect_min=1,score_HoloSelect=1,score_HoloCall_min=13,score_HoloCall=13,tag=!Call13,tag=!Replaced] slot.hotbar.0 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=2,score_HoloSelect=2,score_HoloCall_min=13,score_HoloCall=13,tag=!Call13,tag=!Replaced] slot.hotbar.1 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=3,score_HoloSelect=3,score_HoloCall_min=13,score_HoloCall=13,tag=!Call13,tag=!Replaced] slot.hotbar.2 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=4,score_HoloSelect=4,score_HoloCall_min=13,score_HoloCall=13,tag=!Call13,tag=!Replaced] slot.hotbar.3 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=5,score_HoloSelect=5,score_HoloCall_min=13,score_HoloCall=13,tag=!Call13,tag=!Replaced] slot.hotbar.4 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=6,score_HoloSelect=6,score_HoloCall_min=13,score_HoloCall=13,tag=!Call13,tag=!Replaced] slot.hotbar.5 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=7,score_HoloSelect=7,score_HoloCall_min=13,score_HoloCall=13,tag=!Call13,tag=!Replaced] slot.hotbar.6 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=8,score_HoloSelect=8,score_HoloCall_min=13,score_HoloCall=13,tag=!Call13,tag=!Replaced] slot.hotbar.7 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=9,score_HoloSelect=9,score_HoloCall_min=13,score_HoloCall=13,tag=!Call13,tag=!Replaced] slot.hotbar.8 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=106,score_HoloSelect=106,score_HoloCall_min=13,score_HoloCall=13,tag=!Call13,tag=!Replaced] slot.weapon.offhand minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}

scoreboard players tag @a[score_HoloSelect_min=1,score_HoloCall_min=13,score_HoloCall=13,tag=!Call13,tag=!Replaced] add Replaced {Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:1s}]}

scoreboard players add @a[score_HoloCall_min=13,score_HoloCall=13,score_HoloSelect_min=1,tag=!Call13] TalkTime 1

execute @a[score_TalkTime_min=1,score_TalkTime=1,score_HoloSelect_min=1,score_HoloCall_min=13,score_HoloCall=13,tag=!Call13] ~ ~ ~ scoreboard players set @s click 1
tellraw @a[score_TalkTime_min=3,score_TalkTime=3,score_HoloSelect_min=1,score_HoloCall_min=13,score_HoloCall=13,tag=!Call13] ["",{"text":"<"},{"text":"...","color":"gray"},{"text":"> Ahem... "},{"selector":"@p[score_TalkTime_min=3,score_TalkTime=3,score_HoloSelect_min=1,score_HoloCall_min=13,score_HoloCall=13,tag=!Call13]"},{"text":". Please excuse me. I only need a moment. Or perhaps three."}]
tellraw @a[score_TalkTime_min=13,score_TalkTime=13,score_HoloSelect_min=1,score_HoloCall_min=13,score_HoloCall=13,tag=!Call13] ["",{"text":"<"},{"text":"...","color":"gray"},{"text":"> There is something I really need to talk about with you. Please come to the Looker Bureau."}]
tellraw @a[score_TalkTime_min=23,score_TalkTime=23,score_HoloSelect_min=1,score_HoloCall_min=13,score_HoloCall=13,tag=!Call13] ["",{"text":"<"},{"text":"...","color":"gray"},{"text":"> The building is close to Rouge Plaza, South of the Route 14 gate."}]
tellraw @a[score_TalkTime_min=30,score_TalkTime=30,score_HoloSelect_min=1,score_HoloCall_min=13,score_HoloCall=13,tag=!Call13] ["",{"text":"<"},{"text":"...","color":"gray"},{"text":"> I can\u2019t say any more right now. I will expect to see you soon."}]


#Blinds player

execute @a[score_TalkTime_min=40,score_TalkTime=43,score_HoloSelect_min=1,score_HoloCall_min=13,score_HoloCall=13,tag=!Call13] ~ ~ ~ /effect @s minecraft:blindness 5 1 true

execute @a[score_TalkTime_min=41,score_TalkTime=41,score_HoloSelect_min=1,score_HoloCall_min=13,score_HoloCall=13,tag=!Call13] ~ ~ ~ scoreboard players set @s click 1
execute @a[score_TalkTime_min=41,score_TalkTime=41,score_HoloSelect_min=1,score_HoloCall_min=13,score_HoloCall=13,tag=!Call13] ~ ~ ~ title @s times 20 100 20
execute @a[score_TalkTime_min=41,score_TalkTime=41,score_HoloSelect_min=1,score_HoloCall_min=13,score_HoloCall=13,tag=!Call13] ~ ~ ~ title @s subtitle {"text":"That Man\u2019s a Real...Looker"}
execute @a[score_TalkTime_min=41,score_TalkTime=41,score_HoloSelect_min=1,score_HoloCall_min=13,score_HoloCall=13,tag=!Call13] ~ ~ ~ title @s title {"text":"Chapter 1"}
execute @a[score_TalkTime_min=41,score_TalkTime=41,score_HoloSelect_min=1,score_HoloCall_min=13,score_HoloCall=13,tag=!Call13] ~ ~ ~ advancement grant @s only kalos:looker0

scoreboard players tag @a[score_TalkTime_min=43,score_HoloCall_min=13,score_HoloCall=13,tag=!Call13] add EndCall

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#https://youtu.be/rrMxYkXdKC8?t=773
#Looker Holo Call after leaving the Beaureu

#Call14, Looker
#execute @a[x=-181,y=101,z=-390,r=395,tag=!Call14,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ execute @s[tag=!LookerCooldown] ~ ~ ~ scoreboard players set @s[tag=Dialogue175] HoloCall 14

#Title and ring of incoming call
title @a[score_HoloSelect=0,score_HoloCall_min=14,score_HoloCall=14,tag=!Call14] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute @a[score_HoloSelect=0,score_HoloCall_min=14,score_HoloCall=14,tag=!Call14] ~ ~ ~ playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[score_HoloSelect_min=1,score_HoloSelect=1,score_HoloCall_min=14,score_HoloCall=14,tag=!Call14,tag=!Replaced] slot.hotbar.0 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=2,score_HoloSelect=2,score_HoloCall_min=14,score_HoloCall=14,tag=!Call14,tag=!Replaced] slot.hotbar.1 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=3,score_HoloSelect=3,score_HoloCall_min=14,score_HoloCall=14,tag=!Call14,tag=!Replaced] slot.hotbar.2 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=4,score_HoloSelect=4,score_HoloCall_min=14,score_HoloCall=14,tag=!Call14,tag=!Replaced] slot.hotbar.3 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=5,score_HoloSelect=5,score_HoloCall_min=14,score_HoloCall=14,tag=!Call14,tag=!Replaced] slot.hotbar.4 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=6,score_HoloSelect=6,score_HoloCall_min=14,score_HoloCall=14,tag=!Call14,tag=!Replaced] slot.hotbar.5 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=7,score_HoloSelect=7,score_HoloCall_min=14,score_HoloCall=14,tag=!Call14,tag=!Replaced] slot.hotbar.6 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=8,score_HoloSelect=8,score_HoloCall_min=14,score_HoloCall=14,tag=!Call14,tag=!Replaced] slot.hotbar.7 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=9,score_HoloSelect=9,score_HoloCall_min=14,score_HoloCall=14,tag=!Call14,tag=!Replaced] slot.hotbar.8 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=106,score_HoloSelect=106,score_HoloCall_min=14,score_HoloCall=14,tag=!Call14,tag=!Replaced] slot.weapon.offhand minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}

scoreboard players tag @a[score_HoloSelect_min=1,score_HoloCall_min=14,score_HoloCall=14,tag=!Call14,tag=!Replaced] add Replaced {Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:1s}]}


scoreboard players add @a[score_HoloCall_min=14,score_HoloCall=14,score_HoloSelect_min=1] TalkTime 1
tellraw @a[score_TalkTime_min=3,score_TalkTime=3,score_HoloSelect_min=1,score_HoloCall_min=14,score_HoloCall=14,tag=!Call14] ["",{"text":"<"},{"text":"Looker","color":"gray"},{"text":"> "},{"selector":"@p[score_TalkTime_min=3,score_TalkTime=3,score_HoloSelect_min=1,score_HoloCall_min=14,score_HoloCall=14,tag=!Call14]"},{"text":"! It is I! Looker!"}]
tellraw @a[score_TalkTime_min=11,score_TalkTime=11,score_HoloSelect_min=1,score_HoloCall_min=14,score_HoloCall=14,tag=!Call14] ["",{"text":"<"},{"text":"Looker","color":"gray"},{"text":"> I want to talk to you about something important! Could you come to the Looker Bureau, please?"}]

scoreboard players tag @a[score_TalkTime_min=20,score_HoloCall_min=14,score_HoloCall=14,tag=!Call14] add EndCall

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Call15, Looker
#execute @a[x=-181,y=101,z=-390,r=395,tag=!Call15,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ execute @s[tag=!LookerCooldown] ~ ~ ~ scoreboard players set @s[tag=Dialogue178] HoloCall 15

#Title and ring of incoming call
title @a[score_HoloSelect=0,score_HoloCall_min=15,score_HoloCall=15,tag=!Call15] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute @a[score_HoloSelect=0,score_HoloCall_min=15,score_HoloCall=15,tag=!Call15] ~ ~ ~ playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[score_HoloSelect_min=1,score_HoloSelect=1,score_HoloCall_min=15,score_HoloCall=15,tag=!Call15,tag=!Replaced] slot.hotbar.0 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=2,score_HoloSelect=2,score_HoloCall_min=15,score_HoloCall=15,tag=!Call15,tag=!Replaced] slot.hotbar.1 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=3,score_HoloSelect=3,score_HoloCall_min=15,score_HoloCall=15,tag=!Call15,tag=!Replaced] slot.hotbar.2 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=4,score_HoloSelect=4,score_HoloCall_min=15,score_HoloCall=15,tag=!Call15,tag=!Replaced] slot.hotbar.3 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=5,score_HoloSelect=5,score_HoloCall_min=15,score_HoloCall=15,tag=!Call15,tag=!Replaced] slot.hotbar.4 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=6,score_HoloSelect=6,score_HoloCall_min=15,score_HoloCall=15,tag=!Call15,tag=!Replaced] slot.hotbar.5 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=7,score_HoloSelect=7,score_HoloCall_min=15,score_HoloCall=15,tag=!Call15,tag=!Replaced] slot.hotbar.6 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=8,score_HoloSelect=8,score_HoloCall_min=15,score_HoloCall=15,tag=!Call15,tag=!Replaced] slot.hotbar.7 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=9,score_HoloSelect=9,score_HoloCall_min=15,score_HoloCall=15,tag=!Call15,tag=!Replaced] slot.hotbar.8 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=106,score_HoloSelect=106,score_HoloCall_min=15,score_HoloCall=15,tag=!Call15,tag=!Replaced] slot.weapon.offhand minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}

scoreboard players tag @a[score_HoloSelect_min=1,score_HoloCall_min=15,score_HoloCall=15,tag=!Call15,tag=!Replaced] add Replaced {Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:1s}]}

scoreboard players add @a[score_HoloCall_min=15,score_HoloCall=15,score_HoloSelect_min=1] TalkTime 1
tellraw @a[score_TalkTime_min=3,score_TalkTime=3,score_HoloSelect_min=1,score_HoloCall_min=15,score_HoloCall=15,tag=!Call15] ["",{"text":"<"},{"text":"Looker","color":"gray"},{"text":"> "},{"selector":"@p[score_TalkTime_min=3,score_TalkTime=3,score_HoloSelect_min=1,score_HoloCall_min=15,score_HoloCall=15,tag=!Call15]"},{"text":"! It\u2019s me! Looker!"}]
tellraw @a[score_TalkTime_min=11,score_TalkTime=11,score_HoloSelect_min=1,score_HoloCall_min=15,score_HoloCall=15,tag=!Call15] ["",{"text":"<"},{"text":"Looker","color":"gray"},{"text":"> I want to talk to you about something important!"}]
tellraw @a[score_TalkTime_min=19,score_TalkTime=19,score_HoloSelect_min=1,score_HoloCall_min=15,score_HoloCall=15,tag=!Call15] ["",{"text":"<"},{"text":"Looker","color":"gray"},{"text":"> Could you come to the Looker Bureau, please?"}]

scoreboard players tag @a[score_TalkTime_min=25,score_HoloCall_min=15,score_HoloCall=15,tag=!Call15] add EndCall

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Call16, Looker Chapter 4 Start
#execute @a[x=-181,y=101,z=-390,r=395,tag=!Call16,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ execute @s[tag=!LookerCooldown] ~ ~ ~ scoreboard players set @s[tag=Dialogue184] HoloCall 16

#Title and ring of incoming call
title @a[score_HoloSelect=0,score_HoloCall_min=16,score_HoloCall=16,tag=!Call16] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute @a[score_HoloSelect=0,score_HoloCall_min=16,score_HoloCall=16,tag=!Call16] ~ ~ ~ playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[score_HoloSelect_min=1,score_HoloSelect=1,score_HoloCall_min=16,score_HoloCall=16,tag=!Call16,tag=!Replaced] slot.hotbar.0 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=2,score_HoloSelect=2,score_HoloCall_min=16,score_HoloCall=16,tag=!Call16,tag=!Replaced] slot.hotbar.1 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=3,score_HoloSelect=3,score_HoloCall_min=16,score_HoloCall=16,tag=!Call16,tag=!Replaced] slot.hotbar.2 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=4,score_HoloSelect=4,score_HoloCall_min=16,score_HoloCall=16,tag=!Call16,tag=!Replaced] slot.hotbar.3 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=5,score_HoloSelect=5,score_HoloCall_min=16,score_HoloCall=16,tag=!Call16,tag=!Replaced] slot.hotbar.4 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=6,score_HoloSelect=6,score_HoloCall_min=16,score_HoloCall=16,tag=!Call16,tag=!Replaced] slot.hotbar.5 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=7,score_HoloSelect=7,score_HoloCall_min=16,score_HoloCall=16,tag=!Call16,tag=!Replaced] slot.hotbar.6 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=8,score_HoloSelect=8,score_HoloCall_min=16,score_HoloCall=16,tag=!Call16,tag=!Replaced] slot.hotbar.7 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=9,score_HoloSelect=9,score_HoloCall_min=16,score_HoloCall=16,tag=!Call16,tag=!Replaced] slot.hotbar.8 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=106,score_HoloSelect=106,score_HoloCall_min=16,score_HoloCall=16,tag=!Call16,tag=!Replaced] slot.weapon.offhand minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}

scoreboard players tag @a[score_HoloSelect_min=1,score_HoloCall_min=16,score_HoloCall=16,tag=!Call16,tag=!Replaced] add Replaced {Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:1s}]}

scoreboard players add @a[score_HoloCall_min=16,score_HoloCall=16,score_HoloSelect_min=1] TalkTime 1
tellraw @a[score_TalkTime_min=3,score_TalkTime=3,score_HoloSelect_min=1,score_HoloCall_min=16,score_HoloCall=16,tag=!Call16] ["",{"text":"<"},{"text":"Looker","color":"gray"},{"text":"> "},{"selector":"@p[score_TalkTime_min=3,score_TalkTime=3,score_HoloSelect_min=1,score_HoloCall_min=16,score_HoloCall=16,tag=!Call16]"},{"text":"! It's me. Looker..."}]
tellraw @a[score_TalkTime_min=11,score_TalkTime=11,score_HoloSelect_min=1,score_HoloCall_min=16,score_HoloCall=16,tag=!Call16] ["",{"text":"<"},{"text":"Looker","color":"gray"},{"text":"> I apologize for the interruption, but could you make haste to the Looker Bureau?"}]
tellraw @a[score_TalkTime_min=19,score_TalkTime=19,score_HoloSelect_min=1,score_HoloCall_min=16,score_HoloCall=16,tag=!Call16] ["",{"text":"<"},{"text":"Looker","color":"gray"},{"text":"> There’s a bit of a situation. I could use your help."}]

scoreboard players tag @a[score_TalkTime_min=25,score_HoloCall_min=16,score_HoloCall=16,tag=!Call16] add EndCall


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Call17, Malva Call after investigating grafiti
#execute @a[x=-105,y=101,z=-699,r=20,tag=!Call17,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ scoreboard players set @s[tag=Dialogue187] HoloCall 17

#Title and ring of incoming call
title @a[score_HoloSelect=0,score_HoloCall_min=17,score_HoloCall=17,tag=!Call17] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute @a[score_HoloSelect=0,score_HoloCall_min=17,score_HoloCall=17,tag=!Call17] ~ ~ ~ playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[score_HoloSelect_min=1,score_HoloSelect=1,score_HoloCall_min=17,score_HoloCall=17,tag=!Call17,tag=!Replaced] slot.hotbar.0 minecraft:carrot_on_a_stick 1 7 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=2,score_HoloSelect=2,score_HoloCall_min=17,score_HoloCall=17,tag=!Call17,tag=!Replaced] slot.hotbar.1 minecraft:carrot_on_a_stick 1 7 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=3,score_HoloSelect=3,score_HoloCall_min=17,score_HoloCall=17,tag=!Call17,tag=!Replaced] slot.hotbar.2 minecraft:carrot_on_a_stick 1 7 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=4,score_HoloSelect=4,score_HoloCall_min=17,score_HoloCall=17,tag=!Call17,tag=!Replaced] slot.hotbar.3 minecraft:carrot_on_a_stick 1 7 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=5,score_HoloSelect=5,score_HoloCall_min=17,score_HoloCall=17,tag=!Call17,tag=!Replaced] slot.hotbar.4 minecraft:carrot_on_a_stick 1 7 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=6,score_HoloSelect=6,score_HoloCall_min=17,score_HoloCall=17,tag=!Call17,tag=!Replaced] slot.hotbar.5 minecraft:carrot_on_a_stick 1 7 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=7,score_HoloSelect=7,score_HoloCall_min=17,score_HoloCall=17,tag=!Call17,tag=!Replaced] slot.hotbar.6 minecraft:carrot_on_a_stick 1 7 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=8,score_HoloSelect=8,score_HoloCall_min=17,score_HoloCall=17,tag=!Call17,tag=!Replaced] slot.hotbar.7 minecraft:carrot_on_a_stick 1 7 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=9,score_HoloSelect=9,score_HoloCall_min=17,score_HoloCall=17,tag=!Call17,tag=!Replaced] slot.hotbar.8 minecraft:carrot_on_a_stick 1 7 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=106,score_HoloSelect=106,score_HoloCall_min=17,score_HoloCall=17,tag=!Call17,tag=!Replaced] slot.weapon.offhand minecraft:carrot_on_a_stick 1 7 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}

scoreboard players tag @a[score_HoloSelect_min=1,score_HoloCall_min=17,score_HoloCall=17,tag=!Call17,tag=!Replaced] add Replaced {Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:1s}]}

scoreboard players add @a[score_HoloCall_min=17,score_HoloCall=17,score_HoloSelect_min=1] TalkTime 1
execute @a[score_TalkTime_min=1,score_TalkTime=1,score_HoloSelect_min=1,score_HoloCall_min=17,score_HoloCall=17,tag=!Call17] ~ ~ ~ scoreboard players set @s click 1
tellraw @a[score_TalkTime_min=3,score_TalkTime=3,score_HoloSelect_min=1,score_HoloCall_min=17,score_HoloCall=17,tag=!Call17] {"text":"Newscaster: We have another special bulletin."}
tellraw @a[score_TalkTime_min=10,score_TalkTime=10,score_HoloSelect_min=1,score_HoloCall_min=17,score_HoloCall=17,tag=!Call17] {"text":"Newscaster: Poké Ball thefts are rampant in Lumiose City."}
tellraw @a[score_TalkTime_min=17,score_TalkTime=17,score_HoloSelect_min=1,score_HoloCall_min=17,score_HoloCall=17,tag=!Call17] {"text":"Newscaster: The thief strikes directly after Pokémon battles, when Trainers let their guard down."}
tellraw @a[score_TalkTime_min=27,score_TalkTime=27,score_HoloSelect_min=1,score_HoloCall_min=17,score_HoloCall=17,tag=!Call17] {"text":"Newscaster: These crimes are thought to be the work of a single individual,"}
tellraw @a[score_TalkTime_min=35,score_TalkTime=35,score_HoloSelect_min=1,score_HoloCall_min=17,score_HoloCall=17,tag=!Call17] {"text":"Newscaster: but reports on the suspect\u2019s features vary greatly, so authorities are struggling to identify him--or her."}
tellraw @a[score_TalkTime_min=46,score_TalkTime=46,score_HoloSelect_min=1,score_HoloCall_min=17,score_HoloCall=17,tag=!Call17] {"text":"Newscaster: These crimes are occurring in back alleys and in other places where there are few people around."}
tellraw @a[score_TalkTime_min=56,score_TalkTime=56,score_HoloSelect_min=1,score_HoloCall_min=17,score_HoloCall=17,tag=!Call17] {"text":"Newscaster: Residents of Lumiose City should exercise caution."}
execute @a[score_TalkTime_min=66,score_TalkTime=66,score_HoloSelect_min=1,score_HoloCall_min=17,score_HoloCall=17,tag=!Call17] ~ ~ ~ scoreboard players set @s click 1

scoreboard players tag @a[score_TalkTime_min=66,score_HoloCall_min=17,score_HoloCall=17,tag=!Call17] add EndCall


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Call18, Looker after Malva call, saying to visit Bureau
#execute @a[x=-181,y=101,z=-390,r=395,tag=!Call18,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ scoreboard players set @s[tag=Call17] HoloCall 18

#Title and ring of incoming call
title @a[score_HoloSelect=0,score_HoloCall_min=18,score_HoloCall=18,tag=!Call18] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute @a[score_HoloSelect=0,score_HoloCall_min=18,score_HoloCall=18,tag=!Call18] ~ ~ ~ playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[score_HoloSelect_min=1,score_HoloSelect=1,score_HoloCall_min=18,score_HoloCall=18,tag=!Call18,tag=!Replaced] slot.hotbar.0 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=2,score_HoloSelect=2,score_HoloCall_min=18,score_HoloCall=18,tag=!Call18,tag=!Replaced] slot.hotbar.1 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=3,score_HoloSelect=3,score_HoloCall_min=18,score_HoloCall=18,tag=!Call18,tag=!Replaced] slot.hotbar.2 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=4,score_HoloSelect=4,score_HoloCall_min=18,score_HoloCall=18,tag=!Call18,tag=!Replaced] slot.hotbar.3 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=5,score_HoloSelect=5,score_HoloCall_min=18,score_HoloCall=18,tag=!Call18,tag=!Replaced] slot.hotbar.4 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=6,score_HoloSelect=6,score_HoloCall_min=18,score_HoloCall=18,tag=!Call18,tag=!Replaced] slot.hotbar.5 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=7,score_HoloSelect=7,score_HoloCall_min=18,score_HoloCall=18,tag=!Call18,tag=!Replaced] slot.hotbar.6 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=8,score_HoloSelect=8,score_HoloCall_min=18,score_HoloCall=18,tag=!Call18,tag=!Replaced] slot.hotbar.7 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=9,score_HoloSelect=9,score_HoloCall_min=18,score_HoloCall=18,tag=!Call18,tag=!Replaced] slot.hotbar.8 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=106,score_HoloSelect=106,score_HoloCall_min=18,score_HoloCall=18,tag=!Call18,tag=!Replaced] slot.weapon.offhand minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}

scoreboard players tag @a[score_HoloSelect_min=1,score_HoloCall_min=18,score_HoloCall=18,tag=!Call18,tag=!Replaced] add Replaced {Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:1s}]}

scoreboard players add @a[score_HoloCall_min=18,score_HoloCall=18,score_HoloSelect_min=1] TalkTime 1
tellraw @a[score_TalkTime_min=3,score_TalkTime=3,score_HoloSelect_min=1,score_HoloCall_min=18,score_HoloCall=18,tag=!Call18] ["",{"text":"<"},{"text":"Looker","color":"gray"},{"text":"> It's me! Looker!"}]
tellraw @a[score_TalkTime_min=10,score_TalkTime=10,score_HoloSelect_min=1,score_HoloCall_min=18,score_HoloCall=18,tag=!Call18] ["",{"text":"<"},{"text":"Looker","color":"gray"},{"text":"> "},{"selector":"@p[score_TalkTime_min=10,score_TalkTime=10,score_HoloSelect_min=1,score_HoloCall_min=18,score_HoloCall=18,tag=!Call18]"},{"text":"! Would you kindly return to the Looker Bureau posthaste?"}]

scoreboard players tag @a[score_TalkTime_min=20,score_HoloCall_min=18,score_HoloCall=18,tag=!Call18] add EndCall

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Call19, Emma calling in while Looker is away
#execute @a[x=-181,y=101,z=-390,r=395,tag=!Call19,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ execute @s[tag=!LookerCooldown] ~ ~ ~ scoreboard players set @s[tag=Dialogue225] HoloCall 19

#Title and ring of incoming call
title @a[score_HoloSelect=0,score_HoloCall_min=19,score_HoloCall=19,tag=!Call19] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute @a[score_HoloSelect=0,score_HoloCall_min=19,score_HoloCall=19,tag=!Call19] ~ ~ ~ playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[score_HoloSelect_min=1,score_HoloSelect=1,score_HoloCall_min=19,score_HoloCall=19,tag=!Call19,tag=!Replaced] slot.hotbar.0 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=2,score_HoloSelect=2,score_HoloCall_min=19,score_HoloCall=19,tag=!Call19,tag=!Replaced] slot.hotbar.1 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=3,score_HoloSelect=3,score_HoloCall_min=19,score_HoloCall=19,tag=!Call19,tag=!Replaced] slot.hotbar.2 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=4,score_HoloSelect=4,score_HoloCall_min=19,score_HoloCall=19,tag=!Call19,tag=!Replaced] slot.hotbar.3 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=5,score_HoloSelect=5,score_HoloCall_min=19,score_HoloCall=19,tag=!Call19,tag=!Replaced] slot.hotbar.4 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=6,score_HoloSelect=6,score_HoloCall_min=19,score_HoloCall=19,tag=!Call19,tag=!Replaced] slot.hotbar.5 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=7,score_HoloSelect=7,score_HoloCall_min=19,score_HoloCall=19,tag=!Call19,tag=!Replaced] slot.hotbar.6 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=8,score_HoloSelect=8,score_HoloCall_min=19,score_HoloCall=19,tag=!Call19,tag=!Replaced] slot.hotbar.7 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=9,score_HoloSelect=9,score_HoloCall_min=19,score_HoloCall=19,tag=!Call19,tag=!Replaced] slot.hotbar.8 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=106,score_HoloSelect=106,score_HoloCall_min=19,score_HoloCall=19,tag=!Call19,tag=!Replaced] slot.weapon.offhand minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}

scoreboard players tag @a[score_HoloSelect_min=1,score_HoloCall_min=19,score_HoloCall=19,tag=!Call19,tag=!Replaced] add Replaced {Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:1s}]}

scoreboard players add @a[score_HoloCall_min=19,score_HoloCall=19,score_HoloSelect_min=1] TalkTime 1
tellraw @a[score_TalkTime_min=3,score_TalkTime=3,score_HoloSelect_min=1,score_HoloCall_min=19,score_HoloCall=19,tag=!Call19] ["",{"text":"<"},{"text":"Emma","color":"gold"},{"text":"> Um... Hello? "},{"selector":"@p[score_TalkTime_min=3,score_TalkTime=3,score_HoloSelect_min=1,score_HoloCall_min=19,score_HoloCall=19,tag=!Call19]"},{"text":"?"}]
tellraw @a[score_TalkTime_min=11,score_TalkTime=11,score_HoloSelect_min=1,score_HoloCall_min=19,score_HoloCall=19,tag=!Call19] ["",{"text":"<"},{"text":"Emma","color":"gold"},{"text":"> Er, it\u2019s me...Emma. I received this Holo Caster thing, so I thought I\u2019d try sending a message."}]
tellraw @a[score_TalkTime_min=23,score_TalkTime=23,score_HoloSelect_min=1,score_HoloCall_min=19,score_HoloCall=19,tag=!Call19] ["",{"text":"<"},{"text":"Emma","color":"gold"},{"text":"> I hope it reaches you."}]
tellraw @a[score_TalkTime_min=30,score_TalkTime=30,score_HoloSelect_min=1,score_HoloCall_min=19,score_HoloCall=19,tag=!Call19] ["",{"text":"<"},{"text":"Emma","color":"gold"},{"text":"> I have something I want to ask you, so please come to the Looker Bureau when you have time."}]

scoreboard players tag @a[score_TalkTime_min=37,score_HoloCall_min=19,score_HoloCall=19,tag=!Call19] add EndCall

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#https://youtu.be/qEms9_nJ7M0?t=70246
#Call20, Emma after Xerosic is caught
#execute @a[x=-181,y=101,z=-390,r=395,tag=!Call20,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ execute @s[tag=!LookerCooldown] ~ ~ ~ scoreboard players set @s[tag=Dialogue213] HoloCall 20

#Title and ring of incoming call
title @a[score_HoloSelect=0,score_HoloCall_min=20,score_HoloCall=20,tag=!Call20] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute @a[score_HoloSelect=0,score_HoloCall_min=20,score_HoloCall=20,tag=!Call20] ~ ~ ~ playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[score_HoloSelect_min=1,score_HoloSelect=1,score_HoloCall_min=20,score_HoloCall=20,tag=!Call20,tag=!Replaced] slot.hotbar.0 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=2,score_HoloSelect=2,score_HoloCall_min=20,score_HoloCall=20,tag=!Call20,tag=!Replaced] slot.hotbar.1 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=3,score_HoloSelect=3,score_HoloCall_min=20,score_HoloCall=20,tag=!Call20,tag=!Replaced] slot.hotbar.2 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=4,score_HoloSelect=4,score_HoloCall_min=20,score_HoloCall=20,tag=!Call20,tag=!Replaced] slot.hotbar.3 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=5,score_HoloSelect=5,score_HoloCall_min=20,score_HoloCall=20,tag=!Call20,tag=!Replaced] slot.hotbar.4 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=6,score_HoloSelect=6,score_HoloCall_min=20,score_HoloCall=20,tag=!Call20,tag=!Replaced] slot.hotbar.5 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=7,score_HoloSelect=7,score_HoloCall_min=20,score_HoloCall=20,tag=!Call20,tag=!Replaced] slot.hotbar.6 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=8,score_HoloSelect=8,score_HoloCall_min=20,score_HoloCall=20,tag=!Call20,tag=!Replaced] slot.hotbar.7 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=9,score_HoloSelect=9,score_HoloCall_min=20,score_HoloCall=20,tag=!Call20,tag=!Replaced] slot.hotbar.8 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=106,score_HoloSelect=106,score_HoloCall_min=20,score_HoloCall=20,tag=!Call20,tag=!Replaced] slot.weapon.offhand minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}

scoreboard players tag @a[score_HoloSelect_min=1,score_HoloCall_min=20,score_HoloCall=20,tag=!Call20,tag=!Replaced] add Replaced {Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:1s}]}

scoreboard players add @a[score_HoloCall_min=20,score_HoloCall=20,score_HoloSelect_min=1] TalkTime 1
tellraw @a[score_TalkTime_min=3,score_TalkTime=3,score_HoloSelect_min=1,score_HoloCall_min=20,score_HoloCall=20,tag=!Call20] ["",{"text":"<"},{"text":"Emma","color":"gold"},{"text":"> Hello, "},{"selector":"@p"},{"text":". Can you hear me?"}]
tellraw @a[score_TalkTime_min=11,score_TalkTime=11,score_HoloSelect_min=1,score_HoloCall_min=20,score_HoloCall=20,tag=!Call20] ["",{"text":"<"},{"text":"Emma","color":"gold"},{"text":"> It\u2019s me, Emma. I have incredible news for you, so please come to the Looker Bureau!"}]

execute @a[score_TalkTime_min=20,score_TalkTime=20,score_HoloSelect_min=1,score_HoloCall_min=20,score_HoloCall=20,tag=!Call20] ~ ~ ~ /effect @s minecraft:blindness 5 1 true
execute @a[score_TalkTime_min=21,score_TalkTime=21,score_HoloSelect_min=1,score_HoloCall_min=20,score_HoloCall=20,tag=!Call20] ~ ~ ~ scoreboard players set @s click 1
execute @a[score_TalkTime_min=21,score_TalkTime=21,score_HoloSelect_min=1,score_HoloCall_min=20,score_HoloCall=20,tag=!Call20] ~ ~ ~ title @s times 20 100 20
execute @a[score_TalkTime_min=21,score_TalkTime=21,score_HoloSelect_min=1,score_HoloCall_min=20,score_HoloCall=20,tag=!Call20] ~ ~ ~ title @s subtitle {"text":"Here's Lookin' at You, Kid"}
execute @a[score_TalkTime_min=21,score_TalkTime=21,score_HoloSelect_min=1,score_HoloCall_min=20,score_HoloCall=20,tag=!Call20] ~ ~ ~ title @s title {"text":"Final Chapter"}

scoreboard players tag @a[score_TalkTime_min=26,score_HoloCall_min=20,score_HoloCall=20,tag=!Call20] add EndCall


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Holo Call after you investigate for Looker, Museum exterior
#execute @a[x=-105,y=101,z=-699,r=20,tag=!Call21,score_HoloCall=0,score_TalkTime=0] ~ ~ ~ scoreboard players set @s[tag=Dialogue216] HoloCall 21

#Title and ring of incoming call
title @a[score_HoloSelect=0,score_HoloCall_min=21,score_HoloCall=21,tag=!Call21] actionbar {"text":"Incoming call... Select Holo Caster to answer!"}
execute @a[score_HoloSelect=0,score_HoloCall_min=21,score_HoloCall=21,tag=!Call21] ~ ~ ~ playsound minecraft:block.note.chime ambient @s ~ ~ ~ 10 1

replaceitem entity @a[score_HoloSelect_min=1,score_HoloSelect=1,score_HoloCall_min=21,score_HoloCall=21,tag=!Call21,tag=!Replaced] slot.hotbar.0 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=2,score_HoloSelect=2,score_HoloCall_min=21,score_HoloCall=21,tag=!Call21,tag=!Replaced] slot.hotbar.1 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=3,score_HoloSelect=3,score_HoloCall_min=21,score_HoloCall=21,tag=!Call21,tag=!Replaced] slot.hotbar.2 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=4,score_HoloSelect=4,score_HoloCall_min=21,score_HoloCall=21,tag=!Call21,tag=!Replaced] slot.hotbar.3 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=5,score_HoloSelect=5,score_HoloCall_min=21,score_HoloCall=21,tag=!Call21,tag=!Replaced] slot.hotbar.4 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=6,score_HoloSelect=6,score_HoloCall_min=21,score_HoloCall=21,tag=!Call21,tag=!Replaced] slot.hotbar.5 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=7,score_HoloSelect=7,score_HoloCall_min=21,score_HoloCall=21,tag=!Call21,tag=!Replaced] slot.hotbar.6 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=8,score_HoloSelect=8,score_HoloCall_min=21,score_HoloCall=21,tag=!Call21,tag=!Replaced] slot.hotbar.7 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=9,score_HoloSelect=9,score_HoloCall_min=21,score_HoloCall=21,tag=!Call21,tag=!Replaced] slot.hotbar.8 minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=106,score_HoloSelect=106,score_HoloCall_min=21,score_HoloCall=21,tag=!Call21,tag=!Replaced] slot.weapon.offhand minecraft:carrot_on_a_stick 1 1 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}

scoreboard players tag @a[score_HoloSelect_min=1,score_HoloCall_min=21,score_HoloCall=21,tag=!Call21,tag=!Replaced] add Replaced {Inventory:[{id:"minecraft:carrot_on_a_stick",Damage:1s}]}

scoreboard players add @a[score_HoloCall_min=21,score_HoloCall=21,score_HoloSelect_min=1] TalkTime 1
tellraw @a[score_TalkTime_min=3,score_TalkTime=3,score_HoloSelect_min=1,score_HoloCall_min=21,score_HoloCall=21,tag=!Call21] ["",{"text":"<"},{"text":"Emma","color":"gold"},{"text":"> "},{"selector":"@p[score_TalkTime_min=3,score_TalkTime=3,score_HoloSelect_min=1,score_HoloCall_min=21,score_HoloCall=21,tag=!Call21]"},{"text":"! I just got a message from Xerosic!"}]
tellraw @a[score_TalkTime_min=11,score_TalkTime=11,score_HoloSelect_min=1,score_HoloCall_min=21,score_HoloCall=21,tag=!Call21] ["",{"text":"<"},{"text":"Emma","color":"gold"},{"text":"> He\u2019s with Looker at Lysandre Café!"}]
tellraw @a[score_TalkTime_min=19,score_TalkTime=19,score_HoloSelect_min=1,score_HoloCall_min=21,score_HoloCall=21,tag=!Call21] ["",{"text":"<"},{"text":"Emma","color":"gold"},{"text":"> I\u2019m going to take Mimi there! Hurry over and join us!"}]

scoreboard players tag @a[score_TalkTime_min=26,score_HoloCall_min=21,score_HoloCall=21,tag=!Call21] add EndCall

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------





















#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



#Turns call Holograms to regular Holo Casters if thrown from a player's inventory
execute @a[score_HoloCall_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=item,tag=!Holocaster] add HoloCaster {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1,HideFlags:6,display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]}},Damage:1s}}
execute @a[score_HoloCall_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=item,tag=!Holocaster] add HoloCaster {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1,HideFlags:6,display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]}},Damage:2s}}
execute @a[score_HoloCall_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=item,tag=!Holocaster] add HoloCaster {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1,HideFlags:6,display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]}},Damage:3s}}
execute @a[score_HoloCall_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=item,tag=!Holocaster] add HoloCaster {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1,HideFlags:6,display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]}},Damage:4s}}
execute @a[score_HoloCall_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=item,tag=!Holocaster] add HoloCaster {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1,HideFlags:6,display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]}},Damage:5s}}
execute @a[score_HoloCall_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=item,tag=!Holocaster] add HoloCaster {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1,HideFlags:6,display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]}},Damage:6s}}
execute @a[score_HoloCall_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=item,tag=!Holocaster] add HoloCaster {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1,HideFlags:6,display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]}},Damage:7s}}
execute @a[score_HoloCall_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=item,tag=!Holocaster] add HoloCaster {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1,HideFlags:6,display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]}},Damage:8s}}
execute @a[score_HoloCall_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=item,tag=!Holocaster] add HoloCaster {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1,HideFlags:6,display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]}},Damage:9s}}
execute @a[score_HoloCall_min=1] ~ ~ ~ /entitydata @e[tag=HoloCaster,type=item,r=10] {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1,HideFlags:6,display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]}},Damage:0s}}
execute @a[score_HoloCall_min=1] ~ ~ ~ /scoreboard players tag @e[r=10,type=item,tag=Holocaster] remove HoloCaster





#Gives player with EndCall tag call complete scores
scoreboard players tag @a[tag=EndCall,score_HoloCall_min=1,score_HoloCall=1] add Call1
scoreboard players tag @a[tag=EndCall,score_HoloCall_min=2,score_HoloCall=2] add Call2
scoreboard players tag @a[tag=EndCall,score_HoloCall_min=3,score_HoloCall=3] add Call3
scoreboard players tag @a[tag=EndCall,score_HoloCall_min=4,score_HoloCall=4] add Call4
scoreboard players tag @a[tag=EndCall,score_HoloCall_min=5,score_HoloCall=5] add Call5
scoreboard players tag @a[tag=EndCall,score_HoloCall_min=6,score_HoloCall=6] add Call6
scoreboard players tag @a[tag=EndCall,score_HoloCall_min=7,score_HoloCall=7] add Call7
scoreboard players tag @a[tag=EndCall,score_HoloCall_min=8,score_HoloCall=8] add Call8
scoreboard players tag @a[tag=EndCall,score_HoloCall_min=9,score_HoloCall=9] add Call9
scoreboard players tag @a[tag=EndCall,score_HoloCall_min=10,score_HoloCall=10] add Call10
scoreboard players tag @a[tag=EndCall,score_HoloCall_min=11,score_HoloCall=11] add Call11
scoreboard players tag @a[tag=EndCall,score_HoloCall_min=12,score_HoloCall=12] add Call12
scoreboard players tag @a[tag=EndCall,score_HoloCall_min=13,score_HoloCall=13] add Call13
scoreboard players tag @a[tag=EndCall,score_HoloCall_min=14,score_HoloCall=14] add Call14
scoreboard players tag @a[tag=EndCall,score_HoloCall_min=15,score_HoloCall=15] add Call15
scoreboard players tag @a[tag=EndCall,score_HoloCall_min=16,score_HoloCall=16] add Call16
scoreboard players tag @a[tag=EndCall,score_HoloCall_min=17,score_HoloCall=17] add Call17
scoreboard players tag @a[tag=EndCall,score_HoloCall_min=18,score_HoloCall=18] add Call18
scoreboard players tag @a[tag=EndCall,score_HoloCall_min=19,score_HoloCall=19] add Call19
scoreboard players tag @a[tag=EndCall,score_HoloCall_min=20,score_HoloCall=20] add Call20
scoreboard players tag @a[tag=EndCall,score_HoloCall_min=21,score_HoloCall=21] add Call21
scoreboard players tag @a[tag=EndCall,score_HoloCall_min=22,score_HoloCall=22] add Call22
scoreboard players tag @a[tag=EndCall,score_HoloCall_min=23,score_HoloCall=23] add Call23
scoreboard players tag @a[tag=EndCall,score_HoloCall_min=24,score_HoloCall=24] add Call24
scoreboard players tag @a[tag=EndCall,score_HoloCall_min=25,score_HoloCall=25] add Call25
scoreboard players tag @a[tag=EndCall,score_HoloCall_min=26,score_HoloCall=26] add Call26
scoreboard players tag @a[tag=EndCall,score_HoloCall_min=27,score_HoloCall=27] add Call27
scoreboard players tag @a[tag=EndCall,score_HoloCall_min=28,score_HoloCall=28] add Call28
scoreboard players tag @a[tag=EndCall,score_HoloCall_min=29,score_HoloCall=29] add Call29
scoreboard players tag @a[tag=EndCall,score_HoloCall_min=30,score_HoloCall=30] add Call30

#Returns normal Holo Caster model to player
replaceitem entity @a[score_HoloSelect_min=1,score_HoloSelect=1,tag=EndCall] slot.hotbar.0 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=2,score_HoloSelect=2,tag=EndCall] slot.hotbar.1 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=3,score_HoloSelect=3,tag=EndCall] slot.hotbar.2 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=4,score_HoloSelect=4,tag=EndCall] slot.hotbar.3 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=5,score_HoloSelect=5,tag=EndCall] slot.hotbar.4 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=6,score_HoloSelect=6,tag=EndCall] slot.hotbar.5 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=7,score_HoloSelect=7,tag=EndCall] slot.hotbar.6 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=8,score_HoloSelect=8,tag=EndCall] slot.hotbar.7 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=9,score_HoloSelect=9,tag=EndCall] slot.hotbar.8 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloSelect_min=106,score_HoloSelect=106,tag=EndCall] slot.weapon.offhand minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}

scoreboard players set @a[tag=EndCall,score_HoloSelect_min=1] HoloSelect 0
scoreboard players set @a[tag=EndCall,score_HoloInventory_min=1] HoloSelect 0
scoreboard players set @a[tag=EndCall,score_HoloCall_min=1] HoloCall 0
scoreboard players set @a[tag=EndCall,score_TalkTime_min=1] TalkTime 0
scoreboard players tag @a[tag=EndCall] remove Replaced
scoreboard players tag @a[tag=EndCall] remove EndCall












#Replaces Caster if player puts it in their main inventory while in call
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 9 {Inventory:[{Slot:9b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 10 {Inventory:[{Slot:10b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 11 {Inventory:[{Slot:11b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 12 {Inventory:[{Slot:12b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 13 {Inventory:[{Slot:13b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 14 {Inventory:[{Slot:14b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 15 {Inventory:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 16 {Inventory:[{Slot:16b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 17 {Inventory:[{Slot:17b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 18 {Inventory:[{Slot:18b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 19 {Inventory:[{Slot:19b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 20 {Inventory:[{Slot:20b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 21 {Inventory:[{Slot:21b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 22 {Inventory:[{Slot:22b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 23 {Inventory:[{Slot:23b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 24 {Inventory:[{Slot:24b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 25 {Inventory:[{Slot:25b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 26 {Inventory:[{Slot:26b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 27 {Inventory:[{Slot:27b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 28 {Inventory:[{Slot:28b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 29 {Inventory:[{Slot:29b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 30 {Inventory:[{Slot:30b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 31 {Inventory:[{Slot:31b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 32 {Inventory:[{Slot:32b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 33 {Inventory:[{Slot:33b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 34 {Inventory:[{Slot:34b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 35 {Inventory:[{Slot:35b,id:"minecraft:carrot_on_a_stick",Damage:1s}]}

scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 9 {Inventory:[{Slot:9b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 10 {Inventory:[{Slot:10b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 11 {Inventory:[{Slot:11b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 12 {Inventory:[{Slot:12b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 13 {Inventory:[{Slot:13b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 14 {Inventory:[{Slot:14b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 15 {Inventory:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 16 {Inventory:[{Slot:16b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 17 {Inventory:[{Slot:17b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 18 {Inventory:[{Slot:18b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 19 {Inventory:[{Slot:19b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 20 {Inventory:[{Slot:20b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 21 {Inventory:[{Slot:21b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 22 {Inventory:[{Slot:22b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 23 {Inventory:[{Slot:23b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 24 {Inventory:[{Slot:24b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 25 {Inventory:[{Slot:25b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 26 {Inventory:[{Slot:26b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 27 {Inventory:[{Slot:27b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 28 {Inventory:[{Slot:28b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 29 {Inventory:[{Slot:29b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 30 {Inventory:[{Slot:30b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 31 {Inventory:[{Slot:31b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 32 {Inventory:[{Slot:32b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 33 {Inventory:[{Slot:33b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 34 {Inventory:[{Slot:34b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 35 {Inventory:[{Slot:35b,id:"minecraft:carrot_on_a_stick",Damage:2s}]}

scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 9 {Inventory:[{Slot:9b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 10 {Inventory:[{Slot:10b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 11 {Inventory:[{Slot:11b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 12 {Inventory:[{Slot:12b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 13 {Inventory:[{Slot:13b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 14 {Inventory:[{Slot:14b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 15 {Inventory:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 16 {Inventory:[{Slot:16b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 17 {Inventory:[{Slot:17b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 18 {Inventory:[{Slot:18b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 19 {Inventory:[{Slot:19b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 20 {Inventory:[{Slot:20b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 21 {Inventory:[{Slot:21b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 22 {Inventory:[{Slot:22b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 23 {Inventory:[{Slot:23b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 24 {Inventory:[{Slot:24b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 25 {Inventory:[{Slot:25b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 26 {Inventory:[{Slot:26b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 27 {Inventory:[{Slot:27b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 28 {Inventory:[{Slot:28b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 29 {Inventory:[{Slot:29b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 30 {Inventory:[{Slot:30b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 31 {Inventory:[{Slot:31b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 32 {Inventory:[{Slot:32b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 33 {Inventory:[{Slot:33b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 34 {Inventory:[{Slot:34b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 35 {Inventory:[{Slot:35b,id:"minecraft:carrot_on_a_stick",Damage:3s}]}

scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 9 {Inventory:[{Slot:9b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 10 {Inventory:[{Slot:10b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 11 {Inventory:[{Slot:11b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 12 {Inventory:[{Slot:12b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 13 {Inventory:[{Slot:13b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 14 {Inventory:[{Slot:14b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 15 {Inventory:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 16 {Inventory:[{Slot:16b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 17 {Inventory:[{Slot:17b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 18 {Inventory:[{Slot:18b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 19 {Inventory:[{Slot:19b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 20 {Inventory:[{Slot:20b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 21 {Inventory:[{Slot:21b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 22 {Inventory:[{Slot:22b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 23 {Inventory:[{Slot:23b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 24 {Inventory:[{Slot:24b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 25 {Inventory:[{Slot:25b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 26 {Inventory:[{Slot:26b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 27 {Inventory:[{Slot:27b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 28 {Inventory:[{Slot:28b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 29 {Inventory:[{Slot:29b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 30 {Inventory:[{Slot:30b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 31 {Inventory:[{Slot:31b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 32 {Inventory:[{Slot:32b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 33 {Inventory:[{Slot:33b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 34 {Inventory:[{Slot:34b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 35 {Inventory:[{Slot:35b,id:"minecraft:carrot_on_a_stick",Damage:4s}]}

scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 9 {Inventory:[{Slot:9b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 10 {Inventory:[{Slot:10b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 11 {Inventory:[{Slot:11b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 12 {Inventory:[{Slot:12b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 13 {Inventory:[{Slot:13b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 14 {Inventory:[{Slot:14b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 15 {Inventory:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 16 {Inventory:[{Slot:16b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 17 {Inventory:[{Slot:17b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 18 {Inventory:[{Slot:18b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 19 {Inventory:[{Slot:19b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 20 {Inventory:[{Slot:20b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 21 {Inventory:[{Slot:21b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 22 {Inventory:[{Slot:22b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 23 {Inventory:[{Slot:23b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 24 {Inventory:[{Slot:24b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 25 {Inventory:[{Slot:25b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 26 {Inventory:[{Slot:26b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 27 {Inventory:[{Slot:27b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 28 {Inventory:[{Slot:28b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 29 {Inventory:[{Slot:29b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 30 {Inventory:[{Slot:30b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 31 {Inventory:[{Slot:31b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 32 {Inventory:[{Slot:32b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 33 {Inventory:[{Slot:33b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 34 {Inventory:[{Slot:34b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 35 {Inventory:[{Slot:35b,id:"minecraft:carrot_on_a_stick",Damage:5s}]}

scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 9 {Inventory:[{Slot:9b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 10 {Inventory:[{Slot:10b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 11 {Inventory:[{Slot:11b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 12 {Inventory:[{Slot:12b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 13 {Inventory:[{Slot:13b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 14 {Inventory:[{Slot:14b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 15 {Inventory:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 16 {Inventory:[{Slot:16b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 17 {Inventory:[{Slot:17b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 18 {Inventory:[{Slot:18b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 19 {Inventory:[{Slot:19b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 20 {Inventory:[{Slot:20b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 21 {Inventory:[{Slot:21b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 22 {Inventory:[{Slot:22b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 23 {Inventory:[{Slot:23b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 24 {Inventory:[{Slot:24b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 25 {Inventory:[{Slot:25b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 26 {Inventory:[{Slot:26b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 27 {Inventory:[{Slot:27b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 28 {Inventory:[{Slot:28b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 29 {Inventory:[{Slot:29b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 30 {Inventory:[{Slot:30b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 31 {Inventory:[{Slot:31b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 32 {Inventory:[{Slot:32b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 33 {Inventory:[{Slot:33b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 34 {Inventory:[{Slot:34b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 35 {Inventory:[{Slot:35b,id:"minecraft:carrot_on_a_stick",Damage:6s}]}

scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 9 {Inventory:[{Slot:9b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 10 {Inventory:[{Slot:10b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 11 {Inventory:[{Slot:11b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 12 {Inventory:[{Slot:12b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 13 {Inventory:[{Slot:13b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 14 {Inventory:[{Slot:14b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 15 {Inventory:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 16 {Inventory:[{Slot:16b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 17 {Inventory:[{Slot:17b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 18 {Inventory:[{Slot:18b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 19 {Inventory:[{Slot:19b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 20 {Inventory:[{Slot:20b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 21 {Inventory:[{Slot:21b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 22 {Inventory:[{Slot:22b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 23 {Inventory:[{Slot:23b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 24 {Inventory:[{Slot:24b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 25 {Inventory:[{Slot:25b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 26 {Inventory:[{Slot:26b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 27 {Inventory:[{Slot:27b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 28 {Inventory:[{Slot:28b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 29 {Inventory:[{Slot:29b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 30 {Inventory:[{Slot:30b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 31 {Inventory:[{Slot:31b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 32 {Inventory:[{Slot:32b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 33 {Inventory:[{Slot:33b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 34 {Inventory:[{Slot:34b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 35 {Inventory:[{Slot:35b,id:"minecraft:carrot_on_a_stick",Damage:7s}]}

scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 9 {Inventory:[{Slot:9b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 10 {Inventory:[{Slot:10b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 11 {Inventory:[{Slot:11b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 12 {Inventory:[{Slot:12b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 13 {Inventory:[{Slot:13b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 14 {Inventory:[{Slot:14b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 15 {Inventory:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 16 {Inventory:[{Slot:16b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 17 {Inventory:[{Slot:17b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 18 {Inventory:[{Slot:18b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 19 {Inventory:[{Slot:19b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 20 {Inventory:[{Slot:20b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 21 {Inventory:[{Slot:21b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 22 {Inventory:[{Slot:22b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 23 {Inventory:[{Slot:23b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 24 {Inventory:[{Slot:24b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 25 {Inventory:[{Slot:25b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 26 {Inventory:[{Slot:26b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 27 {Inventory:[{Slot:27b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 28 {Inventory:[{Slot:28b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 29 {Inventory:[{Slot:29b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 30 {Inventory:[{Slot:30b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 31 {Inventory:[{Slot:31b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 32 {Inventory:[{Slot:32b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 33 {Inventory:[{Slot:33b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 34 {Inventory:[{Slot:34b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 35 {Inventory:[{Slot:35b,id:"minecraft:carrot_on_a_stick",Damage:8s}]}

scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 9 {Inventory:[{Slot:9b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 10 {Inventory:[{Slot:10b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 11 {Inventory:[{Slot:11b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 12 {Inventory:[{Slot:12b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 13 {Inventory:[{Slot:13b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 14 {Inventory:[{Slot:14b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 15 {Inventory:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 16 {Inventory:[{Slot:16b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 17 {Inventory:[{Slot:17b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 18 {Inventory:[{Slot:18b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 19 {Inventory:[{Slot:19b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 20 {Inventory:[{Slot:20b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 21 {Inventory:[{Slot:21b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 22 {Inventory:[{Slot:22b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 23 {Inventory:[{Slot:23b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 24 {Inventory:[{Slot:24b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 25 {Inventory:[{Slot:25b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 26 {Inventory:[{Slot:26b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 27 {Inventory:[{Slot:27b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 28 {Inventory:[{Slot:28b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 29 {Inventory:[{Slot:29b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 30 {Inventory:[{Slot:30b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 31 {Inventory:[{Slot:31b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 32 {Inventory:[{Slot:32b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 33 {Inventory:[{Slot:33b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 34 {Inventory:[{Slot:34b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}
scoreboard players set @a[score_HoloCall_min=1,tag=Replaced] HoloInventory 35 {Inventory:[{Slot:35b,id:"minecraft:carrot_on_a_stick",Damage:9s}]}


replaceitem entity @a[score_HoloInventory_min=9,score_HoloInventory=9] slot.inventory.0 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloInventory_min=10,score_HoloInventory=10] slot.inventory.1 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloInventory_min=11,score_HoloInventory=11] slot.inventory.2 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloInventory_min=12,score_HoloInventory=12] slot.inventory.3 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloInventory_min=13,score_HoloInventory=13] slot.inventory.4 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloInventory_min=14,score_HoloInventory=14] slot.inventory.5 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloInventory_min=15,score_HoloInventory=15] slot.inventory.6 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloInventory_min=16,score_HoloInventory=16] slot.inventory.7 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloInventory_min=17,score_HoloInventory=17] slot.inventory.8 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloInventory_min=18,score_HoloInventory=18] slot.inventory.9 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloInventory_min=19,score_HoloInventory=19] slot.inventory.10 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloInventory_min=20,score_HoloInventory=20] slot.inventory.11 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloInventory_min=21,score_HoloInventory=21] slot.inventory.12 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloInventory_min=22,score_HoloInventory=22] slot.inventory.13 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloInventory_min=23,score_HoloInventory=23] slot.inventory.14 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloInventory_min=24,score_HoloInventory=24] slot.inventory.15 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloInventory_min=25,score_HoloInventory=25] slot.inventory.16 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloInventory_min=26,score_HoloInventory=26] slot.inventory.17 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloInventory_min=27,score_HoloInventory=27] slot.inventory.18 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloInventory_min=28,score_HoloInventory=28] slot.inventory.19 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloInventory_min=29,score_HoloInventory=29] slot.inventory.20 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloInventory_min=30,score_HoloInventory=30] slot.inventory.21 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloInventory_min=31,score_HoloInventory=31] slot.inventory.22 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloInventory_min=32,score_HoloInventory=32] slot.inventory.23 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloInventory_min=33,score_HoloInventory=33] slot.inventory.24 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloInventory_min=34,score_HoloInventory=34] slot.inventory.25 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}
replaceitem entity @a[score_HoloInventory_min=35,score_HoloInventory=35] slot.inventory.26 minecraft:carrot_on_a_stick 1 0 {display:{Lore:["A device that allows users","to receive hologram clips.","","It is also used to listen","to music while in your off-hand."]},HideFlags:6,Unbreakable:1}

scoreboard players set @a[score_HoloInventory_min=1,score_HoloSelect_min=1] HoloSelect 1000
scoreboard players set @a[score_HoloInventory_min=1] HoloInventory 0
