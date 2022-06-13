#Add to chests to interact
#/tedit add INTERACT /execute @pl ~ ~ ~ function custom:clothingstore
#/entitydata @e[type=pixelmon:statue,r=3,name=Electrode] {CustomTexture:"invisible"}
#tp @e[type=pixelmon:statue,r=3,name=Electrode] ~ ~-1 ~


#Sets player's selected slot
scoreboard players set @s[nbt={SelectedItemSlot:0}] SelectedSlot 1
scoreboard players set @s[nbt={SelectedItemSlot:1}] SelectedSlot 2
scoreboard players set @s[nbt={SelectedItemSlot:2}] SelectedSlot 3
scoreboard players set @s[nbt={SelectedItemSlot:3}] SelectedSlot 4
scoreboard players set @s[nbt={SelectedItemSlot:4}] SelectedSlot 5
scoreboard players set @s[nbt={SelectedItemSlot:5}] SelectedSlot 6
scoreboard players set @s[nbt={SelectedItemSlot:6}] SelectedSlot 7
scoreboard players set @s[nbt={SelectedItemSlot:7}] SelectedSlot 8
scoreboard players set @s[nbt={SelectedItemSlot:8}] SelectedSlot 9

#Runs ItemScore assign function
function kalos:data/itemstore






#Adds clear tag if item found and score assigned
tag @s[scores={ItemStore=1..}] add Clear


#Sets item slot to air if found
replaceitem entity @s[scores={SelectedSlot=1},tag=Clear] hotbar.0 air
replaceitem entity @s[scores={SelectedSlot=2},tag=Clear] hotbar.1 air
replaceitem entity @s[scores={SelectedSlot=3},tag=Clear] hotbar.2 air
replaceitem entity @s[scores={SelectedSlot=4},tag=Clear] hotbar.3 air
replaceitem entity @s[scores={SelectedSlot=5},tag=Clear] hotbar.4 air
replaceitem entity @s[scores={SelectedSlot=6},tag=Clear] hotbar.5 air
replaceitem entity @s[scores={SelectedSlot=7},tag=Clear] hotbar.6 air
replaceitem entity @s[scores={SelectedSlot=8},tag=Clear] hotbar.7 air
replaceitem entity @s[scores={SelectedSlot=9},tag=Clear] hotbar.8 air

tellraw @s[scores={ItemStore=1..}] {"text":"Clothing stored!","italic":true,"color":"gray"}



#If no items are found
tellraw @s[scores={ItemStore=0}] {"text":"No clothing found! Click with clothes you want to store.","italic":true,"color":"gray"}





#Resets
scoreboard players set @s SelectedSlot 0
scoreboard players set @s ItemStore 0
tag @s remove Clear


#
