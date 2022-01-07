#scoreboard players tag @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] add WritCheck {Inventory:[{id:"minecraft:paper Writ may take a minute to take effect."}]}
#function custom:writactivate if @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,tag=WritCheck]
#scoreboard players tag @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] remove WritCheck



#Adds specific Writ score to player, execute commands on player
#Adds score of WritCD to specific Writ-tracking armor stands, removed one per day, lasts for a game-week
#Adds tag of specific writ to tracking armor stands to execute on in the battlechateau function
#Runs tellraw for those in the Chateau that writ has been activated, and effect
#Level and money-based writs fun a sub-function assigning trainers a new Pokemon level and or money value, between when tp returned and when tp-d in in the battlechateau function
#   When writ cooldown=0 but tags remain, run a function that sets trainers back to normal values
#clears player of writ count 1, removes tag

#Writ of Inv
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:1b}}]},tag=WritCheck] run scoreboard players add @e[x=-685,y=100,z=1384,dy=3,type=armor_stand] WritCD 7
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:1b}}]},tag=WritCheck] run tag @e[x=-685,y=100,z=1384,dy=3,type=armor_stand] add WritofInvitation
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:1b}}]},tag=WritCheck] run tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] {"text":"A Writ of Invitation has been activated! A new Trainer appears twice as often (once every 3 minutes).","color":"white"}
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:1b}}]},tag=WritCheck] run scoreboard players set @e[x=-687,y=100,z=1384,dy=3,type=armor_stand,scores={ChateauCD=1..}] ChateauCD 0
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:1b}}]},tag=WritCheck] run clear @s minecraft:paper{CUSTOM:1b}

#-----------------------------------------------------------------------

#SilverWritofInv
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:2b}}]},tag=WritCheck] run scoreboard players add @e[x=-683,y=100,z=1384,dy=3,type=armor_stand] WritCD 7
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:2b}}]},tag=WritCheck] run tag @e[x=-683,y=100,z=1384,dy=3,type=armor_stand] add SilverWritofInv
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:2b}}]},tag=WritCheck] run tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] ["",{"text":"A ","color":"white"},{"text":"Silver Writ of Invitation","color":"gray"},{"text":" has been activated! ","color":"white"},{"text":"A new Trainer appears six times as often (once every minute). Writ may take a minute to take effect."}]
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:2b}}]},tag=WritCheck] run scoreboard players set @e[x=-687,y=100,z=1384,dy=3,type=armor_stand,scores={ChateauCD=1..}] ChateauCD 0
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:2b}}]},tag=WritCheck] run clear @s minecraft:paper{CUSTOM:2b}

#-----------------------------------------------------------------------

#GoldWritofInvitation
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:3b}}]},tag=WritCheck] run scoreboard players add @e[x=-681,y=100,z=1384,dy=3,type=armor_stand] WritCD 7
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:3b}}]},tag=WritCheck] run tag @e[x=-681,y=100,z=1384,dy=3,type=armor_stand] add GoldWritofInvitation
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:3b}}]},tag=WritCheck] run tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] ["",{"text":"A ","color":"white"},{"text":"Gold Writ of Invitation","color":"gold"},{"text":" has been activated! ","color":"white"},{"text":"Battle winnings are now increased by 50%. Writ may take a minute to take effect."}]
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:3b}}]},tag=WritCheck] run scoreboard players set @e[x=-687,y=100,z=1384,dy=3,type=armor_stand,scores={ChateauCD=1..}] ChateauCD 0
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:3b}}]},tag=WritCheck] run clear @s minecraft:paper{CUSTOM:3b}

#-----------------------------------------------------------------------

#WritofChallenge
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:4b}}]},tag=WritCheck] run scoreboard players add @e[x=-679,y=100,z=1384,dy=3,type=armor_stand] WritCD 7
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:4b}}]},tag=WritCheck] run tag @e[x=-679,y=100,z=1384,dy=3,type=armor_stand] add WritofChallenge
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:4b}}]},tag=WritCheck] run tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] ["",{"text":"A ","color":"white"},{"text":"Writ of Challenge"},{"text":" has been activated! ","color":"white"},{"text":"Other trainer Pokémon levels are now increased by 5. Writ may take a minute to take effect."}]
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:4b}}]},tag=WritCheck] run scoreboard players set @e[x=-687,y=100,z=1384,dy=3,type=armor_stand,scores={ChateauCD=1..}] ChateauCD 0
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:4b}}]},tag=WritCheck] run clear @s minecraft:paper{CUSTOM:4b}

#-----------------------------------------------------------------------


#BlueWritofChallenge
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:5b}}]},tag=WritCheck] run scoreboard players add @e[x=-677,y=100,z=1384,dy=3,type=armor_stand] WritCD 7
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:5b}}]},tag=WritCheck] run tag @e[x=-677,y=100,z=1384,dy=3,type=armor_stand] add BlueWritofChallenge
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:5b}}]},tag=WritCheck] run tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] ["",{"text":"A ","color":"white"},{"text":"Blue Writ of Challenge","color":"blue"},{"text":" has been activated! ","color":"white"},{"text":"Other trainer Pokémon levels are now decreased by 10. Writ may take a minute to take effect."}]
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:5b}}]},tag=WritCheck] run scoreboard players set @e[x=-687,y=100,z=1384,dy=3,type=armor_stand,scores={ChateauCD=1..}] ChateauCD 0
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:5b}}]},tag=WritCheck] run clear @s minecraft:paper{CUSTOM:5b}

#-----------------------------------------------------------------------

#RedWritofChallenge
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:6b}}]},tag=WritCheck] run scoreboard players add @e[x=-675,y=100,z=1384,dy=3,type=armor_stand] WritCD 7
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:6b}}]},tag=WritCheck] run tag @e[x=-675,y=100,z=1384,dy=3,type=armor_stand] add RedWritofChallenge
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:6b}}]},tag=WritCheck] run tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] ["",{"text":"A ","color":"white"},{"text":"Red Writ of Challenge","color":"red"},{"text":" has been activated! ","color":"white"},{"text":"Other trainer Pokémon levels are now increased by 10. Writ may take a minute to take effect."}]
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:6b}}]},tag=WritCheck] run scoreboard players set @e[x=-687,y=100,z=1384,dy=3,type=armor_stand,scores={ChateauCD=1..}] ChateauCD 0
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:6b}}]},tag=WritCheck] run clear @s minecraft:paper{CUSTOM:6b}

#-----------------------------------------------------------------------

#BlackWritofChallenge
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:7b}}]},tag=WritCheck] run scoreboard players add @e[x=-673,y=100,z=1384,dy=3,type=armor_stand] WritCD 7
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:7b}}]},tag=WritCheck] run tag @e[x=-673,y=100,z=1384,dy=3,type=armor_stand] add BlackWritofChallenge
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:7b}}]},tag=WritCheck] run tellraw @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97] ["",{"text":"A ","color":"white"},{"text":"Black Writ of Challenge","color":"black"},{"text":" has been activated! ","color":"white"},{"text":"Other trainer Pokémon levels are now increased by 20. Writ may take a minute to take effect."}]
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:7b}}]},tag=WritCheck] run scoreboard players set @e[x=-687,y=100,z=1384,dy=3,type=armor_stand,scores={ChateauCD=1..}] ChateauCD 0
execute as @a[x=-1589,y=60,z=-140,dx=104,dy=19,dz=97,nbt={Inventory:[{id:"minecraft:paper",tag:{CUSTOM:7b}}]},tag=WritCheck] run clear @s minecraft:paper{CUSTOM:7b}

#-----------------------------------------------------------------------




#Removes Writ tags if WritCD=0



#Syncs writ scores to board
scoreboard players operation Writ_of_Invitation Active_Writs = @e[x=-685,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] WritCD
scoreboard players operation Silver_Writ_of_Invitation Active_Writs = @e[x=-683,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] WritCD
scoreboard players operation Gold_Writ_of_Invitation Active_Writs = @e[x=-681,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] WritCD

scoreboard players operation Writ_of_Challenge Active_Writs = @e[x=-679,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] WritCD
scoreboard players operation Blue_Writ_of_Challenge Active_Writs = @e[x=-677,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] WritCD
scoreboard players operation Red_Writ_of_Challenge Active_Writs = @e[x=-675,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] WritCD
scoreboard players operation Black_Writ_of_Challenge Active_Writs = @e[x=-673,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=1..}] WritCD


#Sets sidebar Writ active scores
execute as @e[x=-685,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run scoreboard players reset Writ_of_Invitation
execute as @e[x=-683,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run scoreboard players reset Silver_Writ_of_Invitation
execute as @e[x=-681,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run scoreboard players reset Gold_Writ_of_Invitation

execute as @e[x=-679,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run scoreboard players reset Writ_of_Challenge
execute as @e[x=-677,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run scoreboard players reset Blue_Writ_of_Challenge
execute as @e[x=-675,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run scoreboard players reset Red_Writ_of_Challenge
execute as @e[x=-673,y=100,z=1384,dy=3,type=armor_stand,scores={WritCD=0}] run scoreboard players reset Black_Writ_of_Challenge
















#
