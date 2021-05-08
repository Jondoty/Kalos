#Add to chests to interact
#/tedit add INTERACT /execute @pl ~ ~ ~ function custom:clothingstore
#/entitydata @e[type=pixelmon:statue,r=3,name=Electrode] {CustomTexture:"invisible"}
#tp @e[type=pixelmon:statue,r=3,name=Electrode] ~ ~-1 ~


#Sets player's selected slot
scoreboard players set @s SelectedSlot 1 {SelectedItemSlot:0}
scoreboard players set @s SelectedSlot 2 {SelectedItemSlot:1}
scoreboard players set @s SelectedSlot 3 {SelectedItemSlot:2}
scoreboard players set @s SelectedSlot 4 {SelectedItemSlot:3}
scoreboard players set @s SelectedSlot 5 {SelectedItemSlot:4}
scoreboard players set @s SelectedSlot 6 {SelectedItemSlot:5}
scoreboard players set @s SelectedSlot 7 {SelectedItemSlot:6}
scoreboard players set @s SelectedSlot 8 {SelectedItemSlot:7}
scoreboard players set @s SelectedSlot 9 {SelectedItemSlot:8}

#Runs ItemScore assign function
function data:itemstore






#Adds clear tag if item found and score assigned
scoreboard players tag @s[score_ItemStore_min=1] add Clear


#Sets item slot to air if found
replaceitem entity @s[score_SelectedSlot_min=1,score_SelectedSlot=1,tag=Clear] slot.hotbar.0 air
replaceitem entity @s[score_SelectedSlot_min=2,score_SelectedSlot=2,tag=Clear] slot.hotbar.1 air
replaceitem entity @s[score_SelectedSlot_min=3,score_SelectedSlot=3,tag=Clear] slot.hotbar.2 air
replaceitem entity @s[score_SelectedSlot_min=4,score_SelectedSlot=4,tag=Clear] slot.hotbar.3 air
replaceitem entity @s[score_SelectedSlot_min=5,score_SelectedSlot=5,tag=Clear] slot.hotbar.4 air
replaceitem entity @s[score_SelectedSlot_min=6,score_SelectedSlot=6,tag=Clear] slot.hotbar.5 air
replaceitem entity @s[score_SelectedSlot_min=7,score_SelectedSlot=7,tag=Clear] slot.hotbar.6 air
replaceitem entity @s[score_SelectedSlot_min=8,score_SelectedSlot=8,tag=Clear] slot.hotbar.7 air
replaceitem entity @s[score_SelectedSlot_min=9,score_SelectedSlot=9,tag=Clear] slot.hotbar.8 air

tellraw @s[score_ItemStore_min=1] {"text":"Clothing stored!","italic":true,"color":"gray"}



#If no items are found
tellraw @s[score_ItemStore=0] {"text":"No clothing found! Click with clothes you want to store.","italic":true,"color":"gray"}





#Resets
scoreboard players set @s SelectedSlot 0
scoreboard players set @s ItemStore 0
scoreboard players tag @s remove Clear


#
