
#/summon armor_stand ~ ~2 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,CustomName:"ClothingRoom",DisabledSlots:2039583}

#execute @e[type=armor_stand,name=ClothingRoom] ~ ~ ~ tellraw @a[r=6,tag=!ClothingTalked] ["",{"text":"It's a fitting room! What do you want to change?\n    ["},{"text":"Hats","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 40"}},{"text":"]    ["},{"text":"Shirts","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 43"}},{"text":"]    ["},{"text":"Pants","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 46"}},{"text":"]    ["},{"text":"Shoes","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 49"}},{"text":"]"}]
#execute @e[type=armor_stand,name=ClothingRoom] ~ ~ ~ scoreboard players enable @a[r=6,tag=!ClothingTalked] TalkTrigger
#execute @e[type=armor_stand,name=ClothingRoom] ~ ~ ~ scoreboard players tag @a[r=6,tag=!ClothingTalked] add ClothingTalked
#execute @e[type=armor_stand,name=ClothingRoom] ~ ~ ~ scoreboard players tag @a[rm=7,r=20,tag=ClothingTalked] remove ClothingTalked


#tellraw @a ["",{"text":"It's a fitting room! What do you want to change?\n    ["},{"text":"Hats","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 40"}},{"text":"]    ["},{"text":"Shirts","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 43"}},{"text":"]    ["},{"text":"Pants","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 46"}},{"text":"]    ["},{"text":"Shoes","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 49"}},{"text":"]"}]


#40 - Hats page 1
#41 - Hats page 2
#42 - Hats page 3
#52-71 - Hat gives

#43 - Shirts page 1
#44 - Shirts page 2
#45 - Shirts page 3
#72-91 Shirt gives

#46 - Pants page 1
#47 - Pants page 2
#48 - Pants page 3
#92-111 - Pants give

#49 - Shoes page 1
#50 - Shoes page 2
#51 - Shoes page 3
#112-131 - Shoes give



#Allows player to pick
scoreboard players enable @a[scores={TalkTrigger=40..,TalkTrigger=131}] TalkTrigger


#Hats Page 1
#Renames reference armor stands before showing player
execute as @a[scores={TalkTrigger=40}] run data modify entity @e[limit=1,x=-687,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Leather Helmet"}
execute as @a[scores={TalkTrigger=40}] run data modify entity @e[limit=1,x=-685,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Chainmail Helmet"}
execute as @a[scores={TalkTrigger=40}] run data modify entity @e[limit=1,x=-683,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Iron Helmet"}
execute as @a[scores={TalkTrigger=40}] run data modify entity @e[limit=1,x=-681,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Diamond Helmet"}
execute as @a[scores={TalkTrigger=40}] run data modify entity @e[limit=1,x=-679,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Golden Helmet"}
execute as @a[scores={TalkTrigger=40}] run data modify entity @e[limit=1,x=-677,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Ruby Helmet"}
execute as @a[scores={TalkTrigger=40}] run data modify entity @e[limit=1,x=-675,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Sapphire Helmet"}

#Joins armor stand teams if player has item, red by default
execute as @a[scores={TalkTrigger=40}] run team join red @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=40}] run team join red @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=40}] run team join red @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=40}] run team join red @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=40}] run team join red @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=40}] run team join red @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=40}] run team join red @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]

execute as @a[scores={TalkTrigger=40,Hat1=1..}] run team join green @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=40,Hat2=1..}] run team join green @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=40,Hat3=1..}] run team join green @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=40,Hat4=1..}] run team join green @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=40,Hat5=1..}] run team join green @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=40,Hat6=1..}] run team join green @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=40,Hat7=1..}] run team join green @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]


#Tellraw Hats Page 1
tellraw @a[scores={TalkTrigger=40}] ["",{"text":"["},{"selector":"@e[x=-687,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 52"}},{"text":"]\n["},{"selector":"@e[x=-685,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 53"}},{"text":"]\n["},{"selector":"@e[x=-683,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 54"}},{"text":"]\n["},{"selector":"@e[x=-681,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 55"}},{"text":"]\n["},{"selector":"@e[x=-679,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 56"}},{"text":"]\n["},{"selector":"@e[x=-677,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 57"}},{"text":"]\n["},{"selector":"@e[x=-675,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 58"}},{"text":"]\n["},{"text":"Next Page >>","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 41"}},{"text":"]"}]




#Hats Page 2
#Renames reference armor stands before showing player
execute as @a[scores={TalkTrigger=41}] run data modify entity @e[limit=1,x=-687,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Plasma Helmet"}
execute as @a[scores={TalkTrigger=41}] run data modify entity @e[limit=1,x=-685,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Galactic Helmet"}
execute as @a[scores={TalkTrigger=41}] run data modify entity @e[limit=1,x=-683,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Neo Plasma Helmet"}
execute as @a[scores={TalkTrigger=41}] run data modify entity @e[limit=1,x=-681,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Rocket Helmet"}
execute as @a[scores={TalkTrigger=41}] run data modify entity @e[limit=1,x=-679,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Fire Stone Helmet"}
execute as @a[scores={TalkTrigger=41}] run data modify entity @e[limit=1,x=-677,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Water Stone Helmet"}
execute as @a[scores={TalkTrigger=41}] run data modify entity @e[limit=1,x=-675,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Leaf Stone Helmet"}


#Joins armor stand teams if player has item
execute as @a[scores={TalkTrigger=41}] run team join red @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=41}] run team join red @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=41}] run team join red @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=41}] run team join red @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=41}] run team join red @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=41}] run team join red @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=41}] run team join red @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]

execute as @a[scores={TalkTrigger=41,Hat8=1}] run team join green @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=41,Hat9=1}] run team join green @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=41,Hat10=1}] run team join green @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=41,Hat11=1}] run team join green @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=41,Hat12=1}] run team join green @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=41,Hat13=1}] run team join green @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=41,Hat14=1}] run team join green @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]


#Tellraw Hats Page 2
tellraw @a[scores={TalkTrigger=41}] ["",{"text":"["},{"selector":"@e[x=-687,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 52"}},{"text":"]\n["},{"selector":"@e[x=-685,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 59"}},{"text":"]\n["},{"selector":"@e[x=-683,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 60"}},{"text":"]\n["},{"selector":"@e[x=-681,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 61"}},{"text":"]\n["},{"selector":"@e[x=-679,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 62"}},{"text":"]\n["},{"selector":"@e[x=-677,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 63"}},{"text":"]\n["},{"selector":"@e[x=-675,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 64"}},{"text":"]\n["},{"text":"Next Page >>","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 42"}},{"text":"]"}]





#Hats Page 3
#Renames reference armor stands before showing player
execute as @a[scores={TalkTrigger=42}] run data modify entity @e[limit=1,x=-687,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Thunder Stone Helmet"}
execute as @a[scores={TalkTrigger=42}] run data modify entity @e[limit=1,x=-685,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Sun Stone Helmet"}
execute as @a[scores={TalkTrigger=42}] run data modify entity @e[limit=1,x=-683,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Moon Stone Helmet"}
execute as @a[scores={TalkTrigger=42}] run data modify entity @e[limit=1,x=-681,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Dawn Stone Helmet"}
execute as @a[scores={TalkTrigger=42}] run data modify entity @e[limit=1,x=-679,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Dusk Stone Helmet"}
execute as @a[scores={TalkTrigger=42}] run data modify entity @e[limit=1,x=-677,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Aluminum Helmet"}



#Joins armor stand teams if player has item
execute as @a[scores={TalkTrigger=42}] run team join red @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=42}] run team join red @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=42}] run team join red @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=42}] run team join red @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=42}] run team join red @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=42}] run team join red @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]

execute as @a[scores={TalkTrigger=42,Hat15=1}] run team join green @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=42,Hat16=1}] run team join green @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=42,Hat17=1}] run team join green @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=42,Hat18=1}] run team join green @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=42,Hat19=1}] run team join green @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=42,Hat20=1}] run team join green @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]


#Tellraw Hats Page 3
tellraw @a[scores={TalkTrigger=42}] ["",{"text":"["},{"selector":"@e[x=-687,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 66"}},{"text":"]\n["},{"selector":"@e[x=-685,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 67"}},{"text":"]\n["},{"selector":"@e[x=-683,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 68"}},{"text":"]\n["},{"selector":"@e[x=-681,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 69"}},{"text":"]\n["},{"selector":"@e[x=-679,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 70"}},{"text":"]\n["},{"selector":"@e[x=-677,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 71"}},{"text":"]\n["},{"text":"Page 1 >>","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 40"}},{"text":"]"}]




#--------------------------------------------------------------------------------------------------------------------------------------------





#Shirts Page 1
#Renames reference armor stands before showing player
execute as @a[scores={TalkTrigger=43}] run data modify entity @e[limit=1,x=-687,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Leather Chestplate"}
execute as @a[scores={TalkTrigger=43}] run data modify entity @e[limit=1,x=-685,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Chainmail Chestplate"}
execute as @a[scores={TalkTrigger=43}] run data modify entity @e[limit=1,x=-683,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Iron Chestplate"}
execute as @a[scores={TalkTrigger=43}] run data modify entity @e[limit=1,x=-681,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Diamond Chestplate"}
execute as @a[scores={TalkTrigger=43}] run data modify entity @e[limit=1,x=-679,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Golden Chestplate"}
execute as @a[scores={TalkTrigger=43}] run data modify entity @e[limit=1,x=-677,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Ruby Chestplate"}
execute as @a[scores={TalkTrigger=43}] run data modify entity @e[limit=1,x=-675,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Sapphire Chestplate"}

#Joins armor stand teams if player has item, red by default
execute as @a[scores={TalkTrigger=43}] run team join red @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=43}] run team join red @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=43}] run team join red @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=43}] run team join red @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=43}] run team join red @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=43}] run team join red @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=43}] run team join red @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]

execute as @a[scores={TalkTrigger=43,Shirt1=1}] run team join green @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=43,Shirt2=1}] run team join green @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=43,Shirt3=1}] run team join green @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=43,Shirt4=1}] run team join green @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=43,Shirt5=1}] run team join green @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=43,Shirt6=1}] run team join green @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=43,Shirt7=1}] run team join green @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]


#Tellraw Hats Page 1
tellraw @a[scores={TalkTrigger=43}] ["",{"text":"["},{"selector":"@e[x=-687,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 72"}},{"text":"]\n["},{"selector":"@e[x=-685,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 73"}},{"text":"]\n["},{"selector":"@e[x=-683,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 74"}},{"text":"]\n["},{"selector":"@e[x=-681,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 75"}},{"text":"]\n["},{"selector":"@e[x=-679,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 76"}},{"text":"]\n["},{"selector":"@e[x=-677,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 77"}},{"text":"]\n["},{"selector":"@e[x=-675,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 78"}},{"text":"]\n["},{"text":"Next Page >>","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 44"}},{"text":"]"}]






#Shirts Page 2
#Renames reference armor stands before showing player
execute as @a[scores={TalkTrigger=44}] run data modify entity @e[limit=1,x=-687,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Plasma Chestplate"}
execute as @a[scores={TalkTrigger=44}] run data modify entity @e[limit=1,x=-685,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Galactic Chestplate"}
execute as @a[scores={TalkTrigger=44}] run data modify entity @e[limit=1,x=-683,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Neo Plasma Chestplate"}
execute as @a[scores={TalkTrigger=44}] run data modify entity @e[limit=1,x=-681,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Rocket Chestplate"}
execute as @a[scores={TalkTrigger=44}] run data modify entity @e[limit=1,x=-679,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Fire Stone Chestplate"}
execute as @a[scores={TalkTrigger=44}] run data modify entity @e[limit=1,x=-677,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Water Stone Chestplate"}
execute as @a[scores={TalkTrigger=44}] run data modify entity @e[limit=1,x=-675,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Leaf Stone Chestplate"}



#Joins armor stand teams if player has item, red by default
execute as @a[scores={TalkTrigger=44}] run team join red @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=44}] run team join red @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=44}] run team join red @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=44}] run team join red @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=44}] run team join red @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=44}] run team join red @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=44}] run team join red @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]

execute as @a[scores={TalkTrigger=44,Shirt8=1}] run team join green @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=44,Shirt9=1}] run team join green @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=44,Shirt10=1}] run team join green @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=44,Shirt11=1}] run team join green @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=44,Shirt12=1}] run team join green @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=44,Shirt13=1}] run team join green @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=44,Shirt14=1}] run team join green @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]


#Tellraw Hats Page 2
tellraw @a[scores={TalkTrigger=44}] ["",{"text":"["},{"selector":"@e[x=-687,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 79"}},{"text":"]\n["},{"selector":"@e[x=-685,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 80"}},{"text":"]\n["},{"selector":"@e[x=-683,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 81"}},{"text":"]\n["},{"selector":"@e[x=-681,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 82"}},{"text":"]\n["},{"selector":"@e[x=-679,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 83"}},{"text":"]\n["},{"selector":"@e[x=-677,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 84"}},{"text":"]\n["},{"selector":"@e[x=-675,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 85"}},{"text":"]\n["},{"text":"Next Page >>","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 45"}},{"text":"]"}]






#Shirts Page 3
#Renames reference armor stands before showing player
execute as @a[scores={TalkTrigger=45}] run data modify entity @e[limit=1,x=-687,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Thunder Stone Chestplate"}
execute as @a[scores={TalkTrigger=45}] run data modify entity @e[limit=1,x=-685,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Sun Stone Chestplate"}
execute as @a[scores={TalkTrigger=45}] run data modify entity @e[limit=1,x=-683,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Moon Stone Chestplate"}
execute as @a[scores={TalkTrigger=45}] run data modify entity @e[limit=1,x=-681,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Dawn Stone Chestplate"}
execute as @a[scores={TalkTrigger=45}] run data modify entity @e[limit=1,x=-679,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Dusk Stone Chestplate"}
execute as @a[scores={TalkTrigger=45}] run data modify entity @e[limit=1,x=-677,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Aluminum Chestplate"}



#Joins armor stand teams if player has item
execute as @a[scores={TalkTrigger=45}] run team join red @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=45}] run team join red @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=45}] run team join red @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=45}] run team join red @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=45}] run team join red @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=45}] run team join red @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]

execute as @a[scores={TalkTrigger=45,Shirt15=1}] run team join green @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=45,Shirt16=1}] run team join green @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=45,Shirt17=1}] run team join green @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=45,Shirt18=1}] run team join green @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=45,Shirt19=1}] run team join green @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=45,Shirt20=1}] run team join green @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]


#Tellraw Shirts Page 3
tellraw @a[scores={TalkTrigger=45}] ["",{"text":"["},{"selector":"@e[x=-687,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 86"}},{"text":"]\n["},{"selector":"@e[x=-685,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 87"}},{"text":"]\n["},{"selector":"@e[x=-683,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 88"}},{"text":"]\n["},{"selector":"@e[x=-681,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 89"}},{"text":"]\n["},{"selector":"@e[x=-679,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 90"}},{"text":"]\n["},{"selector":"@e[x=-677,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 91"}},{"text":"]\n["},{"text":"Page 1 >>","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 43"}},{"text":"]"}]




#--------------------------------------------------------------------------------------------------------------------------------------------


#Pants Page 1
#Renames reference armor stands before showing player
execute as @a[scores={TalkTrigger=46}] run data modify entity @e[limit=1,x=-687,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Leather Leggings"}
execute as @a[scores={TalkTrigger=46}] run data modify entity @e[limit=1,x=-685,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Chainmail Leggings"}
execute as @a[scores={TalkTrigger=46}] run data modify entity @e[limit=1,x=-683,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Iron Leggings"}
execute as @a[scores={TalkTrigger=46}] run data modify entity @e[limit=1,x=-681,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Diamond Leggings"}
execute as @a[scores={TalkTrigger=46}] run data modify entity @e[limit=1,x=-679,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Golden Leggings"}
execute as @a[scores={TalkTrigger=46}] run data modify entity @e[limit=1,x=-677,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Ruby Leggings"}
execute as @a[scores={TalkTrigger=46}] run data modify entity @e[limit=1,x=-675,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Sapphire Leggings"}

#Joins armor stand teams if player has item, red by default
execute as @a[scores={TalkTrigger=46}] run team join red @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=46}] run team join red @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=46}] run team join red @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=46}] run team join red @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=46}] run team join red @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=46}] run team join red @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=46}] run team join red @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]

execute as @a[scores={TalkTrigger=46,Pants1=1}] run team join green @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=46,Pants2=1}] run team join green @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=46,Pants3=1}] run team join green @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=46,Pants4=1}] run team join green @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=46,Pants5=1}] run team join green @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=46,Pants6=1}] run team join green @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=46,Pants7=1}] run team join green @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]


#Tellraw Pants Page 1
tellraw @a[scores={TalkTrigger=46}] ["",{"text":"["},{"selector":"@e[x=-687,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 92"}},{"text":"]\n["},{"selector":"@e[x=-685,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 93"}},{"text":"]\n["},{"selector":"@e[x=-683,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 94"}},{"text":"]\n["},{"selector":"@e[x=-681,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 95"}},{"text":"]\n["},{"selector":"@e[x=-679,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 96"}},{"text":"]\n["},{"selector":"@e[x=-677,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 97"}},{"text":"]\n["},{"selector":"@e[x=-675,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 98"}},{"text":"]\n["},{"text":"Next Page >>","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 47"}},{"text":"]"}]






#Pants Page 2
#Renames reference armor stands before showing player
execute as @a[scores={TalkTrigger=47}] run data modify entity @e[limit=1,x=-687,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Plasma Leggings"}
execute as @a[scores={TalkTrigger=47}] run data modify entity @e[limit=1,x=-685,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Galactic Leggings"}
execute as @a[scores={TalkTrigger=47}] run data modify entity @e[limit=1,x=-683,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Neo Plasma Leggings"}
execute as @a[scores={TalkTrigger=47}] run data modify entity @e[limit=1,x=-681,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Rocket Leggings"}
execute as @a[scores={TalkTrigger=47}] run data modify entity @e[limit=1,x=-679,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Fire Stone Leggings"}
execute as @a[scores={TalkTrigger=47}] run data modify entity @e[limit=1,x=-677,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Water Stone Leggings"}
execute as @a[scores={TalkTrigger=47}] run data modify entity @e[limit=1,x=-675,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Leaf Stone Leggings"}



#Joins armor stand teams if player has item, red by default
execute as @a[scores={TalkTrigger=47}] run team join red @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=47}] run team join red @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=47}] run team join red @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=47}] run team join red @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=47}] run team join red @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=47}] run team join red @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=47}] run team join red @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]

execute as @a[scores={TalkTrigger=47,Pants8=1}] run team join green @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=47,Pants9=1}] run team join green @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=47,Pants10=1}] run team join green @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=47,Pants11=1}] run team join green @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=47,Pants12=1}] run team join green @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=47,Pants13=1}] run team join green @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=47,Pants14=1}] run team join green @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]


#Tellraw Hats Page 2
tellraw @a[scores={TalkTrigger=47}] ["",{"text":"["},{"selector":"@e[x=-687,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 99"}},{"text":"]\n["},{"selector":"@e[x=-685,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 100"}},{"text":"]\n["},{"selector":"@e[x=-683,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 101"}},{"text":"]\n["},{"selector":"@e[x=-681,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 102"}},{"text":"]\n["},{"selector":"@e[x=-679,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 103"}},{"text":"]\n["},{"selector":"@e[x=-677,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 104"}},{"text":"]\n["},{"selector":"@e[x=-675,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 105"}},{"text":"]\n["},{"text":"Next Page >>","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 48"}},{"text":"]"}]






#Pants Page 3
#Renames reference armor stands before showing player
execute as @a[scores={TalkTrigger=48}] run data modify entity @e[limit=1,x=-687,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Thunder Stone Leggings"}
execute as @a[scores={TalkTrigger=48}] run data modify entity @e[limit=1,x=-685,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Sun Stone Leggings"}
execute as @a[scores={TalkTrigger=48}] run data modify entity @e[limit=1,x=-683,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Moon Stone Leggings"}
execute as @a[scores={TalkTrigger=48}] run data modify entity @e[limit=1,x=-681,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Dawn Stone Leggings"}
execute as @a[scores={TalkTrigger=48}] run data modify entity @e[limit=1,x=-679,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Dusk Stone Leggings"}
execute as @a[scores={TalkTrigger=48}] run data modify entity @e[limit=1,x=-677,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Aluminum Leggings"}



#Joins armor stand teams if player has item
execute as @a[scores={TalkTrigger=48}] run team join red @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=48}] run team join red @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=48}] run team join red @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=48}] run team join red @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=48}] run team join red @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=48}] run team join red @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]

execute as @a[scores={TalkTrigger=48,Pants15=1}] run team join green @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=48,Pants16=1}] run team join green @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=48,Pants17=1}] run team join green @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=48,Pants18=1}] run team join green @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=48,Pants19=1}] run team join green @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=48,Pants20=1}] run team join green @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]


#Tellraw Pants Page 3
tellraw @a[scores={TalkTrigger=48}] ["",{"text":"["},{"selector":"@e[x=-687,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 106"}},{"text":"]\n["},{"selector":"@e[x=-685,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 107"}},{"text":"]\n["},{"selector":"@e[x=-683,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 108"}},{"text":"]\n["},{"selector":"@e[x=-681,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 109"}},{"text":"]\n["},{"selector":"@e[x=-679,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 110"}},{"text":"]\n["},{"selector":"@e[x=-677,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 111"}},{"text":"]\n["},{"text":"Page 1 >>","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 46"}},{"text":"]"}]




#--------------------------------------------------------------------------------------------------------------------------------------------
#49 - Shoes page 1
#50 - Shoes page 2
#51 - Shoes page 3
#112-131 - Shoes give



#Shoes Page 1
#Renames reference armor stands before showing player
execute as @a[scores={TalkTrigger=49}] run data modify entity @e[limit=1,x=-687,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Leather Boots"}
execute as @a[scores={TalkTrigger=49}] run data modify entity @e[limit=1,x=-685,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Chainmail Boots"}
execute as @a[scores={TalkTrigger=49}] run data modify entity @e[limit=1,x=-683,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Iron Boots"}
execute as @a[scores={TalkTrigger=49}] run data modify entity @e[limit=1,x=-681,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Diamond Boots"}
execute as @a[scores={TalkTrigger=49}] run data modify entity @e[limit=1,x=-679,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Golden Boots"}
execute as @a[scores={TalkTrigger=49}] run data modify entity @e[limit=1,x=-677,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Ruby Boots"}
execute as @a[scores={TalkTrigger=49}] run data modify entity @e[limit=1,x=-675,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Sapphire Boots"}

#Joins armor stand teams if player has item, red by default
execute as @a[scores={TalkTrigger=49}] run team join red @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=49}] run team join red @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=49}] run team join red @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=49}] run team join red @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=49}] run team join red @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=49}] run team join red @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=49}] run team join red @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]

execute as @a[scores={TalkTrigger=49,Shoes1=1}] run team join green @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=49,Shoes2=1}] run team join green @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=49,Shoes3=1}] run team join green @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=49,Shoes4=1}] run team join green @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=49,Shoes5=1}] run team join green @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=49,Shoes6=1}] run team join green @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=49,Shoes7=1}] run team join green @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]


#Tellraw Shoes Page 1
tellraw @a[scores={TalkTrigger=49}] ["",{"text":"["},{"selector":"@e[x=-687,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 112"}},{"text":"]\n["},{"selector":"@e[x=-685,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 113"}},{"text":"]\n["},{"selector":"@e[x=-683,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 114"}},{"text":"]\n["},{"selector":"@e[x=-681,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 115"}},{"text":"]\n["},{"selector":"@e[x=-679,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 116"}},{"text":"]\n["},{"selector":"@e[x=-677,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 117"}},{"text":"]\n["},{"selector":"@e[x=-675,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 118"}},{"text":"]\n["},{"text":"Next Page >>","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 50"}},{"text":"]"}]






#Shoes Page 2
#Renames reference armor stands before showing player
execute as @a[scores={TalkTrigger=50}] run data modify entity @e[limit=1,x=-687,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Plasma Boots"}
execute as @a[scores={TalkTrigger=50}] run data modify entity @e[limit=1,x=-685,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Galactic Boots"}
execute as @a[scores={TalkTrigger=50}] run data modify entity @e[limit=1,x=-683,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Neo Plasma Boots"}
execute as @a[scores={TalkTrigger=50}] run data modify entity @e[limit=1,x=-681,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Rocket Boots"}
execute as @a[scores={TalkTrigger=50}] run data modify entity @e[limit=1,x=-679,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Fire Stone Boots"}
execute as @a[scores={TalkTrigger=50}] run data modify entity @e[limit=1,x=-677,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Water Stone Boots"}
execute as @a[scores={TalkTrigger=50}] run data modify entity @e[limit=1,x=-675,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Leaf Stone Boots"}



#Joins armor stand teams if player has item, red by default
execute as @a[scores={TalkTrigger=50}] run team join red @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=50}] run team join red @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=50}] run team join red @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=50}] run team join red @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=50}] run team join red @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=50}] run team join red @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=50}] run team join red @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]

execute as @a[scores={TalkTrigger=50,Shoes8=1}] run team join green @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=50,Shoes9=1}] run team join green @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=50,Shoes10=1}] run team join green @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=50,Shoes11=1}] run team join green @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=50,Shoes12=1}] run team join green @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=50,Shoes13=1}] run team join green @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=50,Shoes14=1}] run team join green @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]


#Tellraw Shoes Page 2
tellraw @a[scores={TalkTrigger=50}] ["",{"text":"["},{"selector":"@e[x=-687,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 119"}},{"text":"]\n["},{"selector":"@e[x=-685,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 120"}},{"text":"]\n["},{"selector":"@e[x=-683,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 121"}},{"text":"]\n["},{"selector":"@e[x=-681,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 122"}},{"text":"]\n["},{"selector":"@e[x=-679,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 123"}},{"text":"]\n["},{"selector":"@e[x=-677,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 124"}},{"text":"]\n["},{"selector":"@e[x=-675,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 125"}},{"text":"]\n["},{"text":"Next Page >>","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 51"}},{"text":"]"}]






#Shoes Page 3
#Renames reference armor stands before showing player
execute as @a[scores={TalkTrigger=51}] run data modify entity @e[limit=1,x=-687,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Thunder Stone Boots"}
execute as @a[scores={TalkTrigger=51}] run data modify entity @e[limit=1,x=-685,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Sun Stone Boots"}
execute as @a[scores={TalkTrigger=51}] run data modify entity @e[limit=1,x=-683,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Moon Stone Boots"}
execute as @a[scores={TalkTrigger=51}] run data modify entity @e[limit=1,x=-681,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Dawn Stone Boots"}
execute as @a[scores={TalkTrigger=51}] run data modify entity @e[limit=1,x=-679,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Dusk Stone Boots"}
execute as @a[scores={TalkTrigger=51}] run data modify entity @e[limit=1,x=-677,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Aluminum Boots"}



#Joins armor stand teams if player has item
execute as @a[scores={TalkTrigger=51}] run team join red @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=51}] run team join red @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=51}] run team join red @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=51}] run team join red @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=51}] run team join red @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=51}] run team join red @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]

execute as @a[scores={TalkTrigger=51,Shoes15=1}] run team join green @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=51,Shoes16=1}] run team join green @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=51,Shoes17=1}] run team join green @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=51,Shoes18=1}] run team join green @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=51,Shoes19=1}] run team join green @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute as @a[scores={TalkTrigger=51,Shoes20=1}] run team join green @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]


#Tellraw Shoes Page 3
tellraw @a[scores={TalkTrigger=51}] ["",{"text":"["},{"selector":"@e[x=-687,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 126"}},{"text":"]\n["},{"selector":"@e[x=-685,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 127"}},{"text":"]\n["},{"selector":"@e[x=-683,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 128"}},{"text":"]\n["},{"selector":"@e[x=-681,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 129"}},{"text":"]\n["},{"selector":"@e[x=-679,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 130"}},{"text":"]\n["},{"selector":"@e[x=-677,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 131"}},{"text":"]\n["},{"text":"Page 1 >>","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 49"}},{"text":"]"}]




#--------------------------------------------------------------------------------------------------------------------------------------------


#If clothing isn't present when player clicks on a Red team score
execute as @a[scores={TalkTrigger=52,Hat1=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=53,Hat2=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=54,Hat3=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=55,Hat4=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=56,Hat5=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=57,Hat6=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=58,Hat7=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=59,Hat8=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=60,Hat9=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=61,Hat10=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=62,Hat11=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=63,Hat12=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=64,Hat13=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=65,Hat14=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=66,Hat15=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=67,Hat16=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=68,Hat17=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=69,Hat18=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=70,Hat19=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=71,Hat20=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=72,Shirt1=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=73,Shirt2=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=74,Shirt3=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=75,Shirt4=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=76,Shirt5=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=77,Shirt6=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=78,Shirt7=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=79,Shirt8=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=80,Shirt9=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=81,Shirt10=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=82,Shirt11=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=83,Shirt12=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=84,Shirt13=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=85,Shirt14=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=86,Shirt15=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=87,Shirt16=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=88,Shirt17=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=89,Shirt18=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=90,Shirt19=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=91,Shirt20=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=92,Pants1=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=93,Pants2=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=94,Pants3=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=95,Pants4=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=96,Pants5=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=97,Pants6=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=98,Pants7=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=99,Pants8=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=100,Pants9=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=101,Pants10=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=102,Pants11=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=103,Pants12=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=104,Pants13=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=105,Pants14=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=106,Pants15=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=107,Pants16=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=108,Pants17=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=109,Pants18=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=110,Pants19=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=111,Pants20=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=112,Shoes1=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=113,Shoes2=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=114,Shoes3=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=115,Shoes4=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=116,Shoes5=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=117,Shoes6=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=118,Shoes7=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=119,Shoes8=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=120,Shoes9=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=121,Shoes10=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=122,Shoes11=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=123,Shoes12=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=124,Shoes13=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=125,Shoes14=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=126,Shoes15=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=127,Shoes16=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=128,Shoes17=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=129,Shoes18=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=130,Shoes19=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute as @a[scores={TalkTrigger=131,Shoes20=0}] run tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}

#--------------------------------------------------------------------------------------------------------------------------------------------





#Clothing gives

#Hats

execute as @a[scores={TalkTrigger=52}] run give @s[scores={Hat1=1..}] minecraft:leather_helmet
execute as @a[scores={TalkTrigger=52}] run scoreboard players remove @s[scores={Hat1=1..}] Hat1 1

execute as @a[scores={TalkTrigger=53}] run give @s[scores={Hat2=1..}] minecraft:chainmail_helmet
execute as @a[scores={TalkTrigger=53}] run scoreboard players remove @s[scores={Hat2=1..}] Hat2 1

execute as @a[scores={TalkTrigger=54}] run give @s[scores={Hat3=1..}] minecraft:iron_helmet
execute as @a[scores={TalkTrigger=54}] run scoreboard players remove @s[scores={Hat3=1..}] Hat3 1

execute as @a[scores={TalkTrigger=55}] run give @s[scores={Hat4=1..}] minecraft:diamond_helmet
execute as @a[scores={TalkTrigger=55}] run scoreboard players remove @s[scores={Hat4=1..}] Hat4 1

execute as @a[scores={TalkTrigger=56}] run give @s[scores={Hat5=1..}] minecraft:golden_helmet
execute as @a[scores={TalkTrigger=56}] run scoreboard players remove @s[scores={Hat5=1..}] Hat5 1

execute as @a[scores={TalkTrigger=57}] run give @s[scores={Hat6=1..}] pixelmon:ruby_helm
execute as @a[scores={TalkTrigger=57}] run scoreboard players remove @s[scores={Hat6=1..}] Hat6 1

execute as @a[scores={TalkTrigger=58}] run give @s[scores={Hat7=1..}] pixelmon:sapphire_helm
execute as @a[scores={TalkTrigger=58}] run scoreboard players remove @s[scores={Hat7=1..}] Hat7 1

execute as @a[scores={TalkTrigger=59}] run give @s[scores={Hat8=1..}] pixelmon:plasma_helm
execute as @a[scores={TalkTrigger=59}] run scoreboard players remove @s[scores={Hat8=1..}] Hat8 1

execute as @a[scores={TalkTrigger=60}] run give @s[scores={Hat9=1..}] pixelmon:galactic_helm
execute as @a[scores={TalkTrigger=60}] run scoreboard players remove @s[scores={Hat9=1..}] Hat9 1

execute as @a[scores={TalkTrigger=61}] run give @s[scores={Hat10=1..}] pixelmon:neo_plasma_helm
execute as @a[scores={TalkTrigger=61}] run scoreboard players remove @s[scores={Hat10=1..}] Hat10 1

execute as @a[scores={TalkTrigger=62}] run give @s[scores={Hat11=1..}] pixelmon:rocket_helm
execute as @a[scores={TalkTrigger=62}] run scoreboard players remove @s[scores={Hat11=1..}] Hat11 1

execute as @a[scores={TalkTrigger=63}] run give @s[scores={Hat12=1..}] pixelmon:fire_stone_helm
execute as @a[scores={TalkTrigger=63}] run scoreboard players remove @s[scores={Hat12=1..}] Hat12 1

execute as @a[scores={TalkTrigger=64}] run give @s[scores={Hat13=1..}] pixelmon:water_stone_helm
execute as @a[scores={TalkTrigger=64}] run scoreboard players remove @s[scores={Hat13=1..}] Hat13 1

execute as @a[scores={TalkTrigger=65}] run give @s[scores={Hat14=1..}] pixelmon:leaf_stone_helm
execute as @a[scores={TalkTrigger=65}] run scoreboard players remove @s[scores={Hat14=1..}] Hat14 1

execute as @a[scores={TalkTrigger=66}] run give @s[scores={Hat15=1..}] pixelmon:thunder_stone_helm
execute as @a[scores={TalkTrigger=66}] run scoreboard players remove @s[scores={Hat15=1..}] Hat15 1

execute as @a[scores={TalkTrigger=67}] run give @s[scores={Hat16=1..}] pixelmon:sun_stone_helm
execute as @a[scores={TalkTrigger=67}] run scoreboard players remove @s[scores={Hat16=1..}] Hat16 1

execute as @a[scores={TalkTrigger=68}] run give @s[scores={Hat17=1..}] pixelmon:moon_stone_helm
execute as @a[scores={TalkTrigger=68}] run scoreboard players remove @s[scores={Hat17=1..}] Hat17 1

execute as @a[scores={TalkTrigger=69}] run give @s[scores={Hat18=1..}] pixelmon:dawn_stone_helm
execute as @a[scores={TalkTrigger=69}] run scoreboard players remove @s[scores={Hat18=1..}] Hat18 1

execute as @a[scores={TalkTrigger=70}] run give @s[scores={Hat19=1..}] pixelmon:dusk_stone_helm
execute as @a[scores={TalkTrigger=70}] run scoreboard players remove @s[scores={Hat19=1..}] Hat19 1

execute as @a[scores={TalkTrigger=71}] run give @s[scores={Hat20=1..}] pixelmon:aluminium_helmet
execute as @a[scores={TalkTrigger=71}] run scoreboard players remove @s[scores={Hat20=1..}] Hat20 1

execute as @a[scores={TalkTrigger=72}] run give @s[scores={Shirt1=1..}] minecraft:leather_chestplate
execute as @a[scores={TalkTrigger=72}] run scoreboard players remove @s[scores={Shirt1=1..}] Shirt1 1

execute as @a[scores={TalkTrigger=73}] run give @s[scores={Shirt2=1..}] minecraft:chainmail_chestplate
execute as @a[scores={TalkTrigger=73}] run scoreboard players remove @s[scores={Shirt2=1..}] Shirt2 1

execute as @a[scores={TalkTrigger=74}] run give @s[scores={Shirt3=1..}] minecraft:iron_chestplate
execute as @a[scores={TalkTrigger=74}] run scoreboard players remove @s[scores={Shirt3=1..}] Shirt3 1

execute as @a[scores={TalkTrigger=75}] run give @s[scores={Shirt4=1..}] minecraft:diamond_chestplate
execute as @a[scores={TalkTrigger=75}] run scoreboard players remove @s[scores={Shirt4=1..}] Shirt4 1

execute as @a[scores={TalkTrigger=76}] run give @s[scores={Shirt5=1..}] minecraft:golden_chestplate
execute as @a[scores={TalkTrigger=76}] run scoreboard players remove @s[scores={Shirt5=1..}] Shirt5 1

execute as @a[scores={TalkTrigger=77}] run give @s[scores={Shirt6=1..}] pixelmon:ruby_plate
execute as @a[scores={TalkTrigger=77}] run scoreboard players remove @s[scores={Shirt6=1..}] Shirt6 1

execute as @a[scores={TalkTrigger=78}] run give @s[scores={Shirt7=1..}] pixelmon:sapphire_plate
execute as @a[scores={TalkTrigger=78}] run scoreboard players remove @s[scores={Shirt7=1..}] Shirt7 1

execute as @a[scores={TalkTrigger=79}] run give @s[scores={Shirt8=1..}] pixelmon:plasma_plate
execute as @a[scores={TalkTrigger=79}] run scoreboard players remove @s[scores={Shirt8=1..}] Shirt8 1

execute as @a[scores={TalkTrigger=80}] run give @s[scores={Shirt9=1..}] pixelmon:galactic_plate
execute as @a[scores={TalkTrigger=80}] run scoreboard players remove @s[scores={Shirt9=1..}] Shirt9 1

execute as @a[scores={TalkTrigger=81}] run give @s[scores={Shirt10=1..}] pixelmon:neo_plasma_plate
execute as @a[scores={TalkTrigger=81}] run scoreboard players remove @s[scores={Shirt10=1..}] Shirt10 1

execute as @a[scores={TalkTrigger=82}] run give @s[scores={Shirt11=1..}] pixelmon:rocket_plate
execute as @a[scores={TalkTrigger=82}] run scoreboard players remove @s[scores={Shirt11=1..}] Shirt11 1

execute as @a[scores={TalkTrigger=83}] run give @s[scores={Shirt12=1..}] pixelmon:fire_stone_plate
execute as @a[scores={TalkTrigger=83}] run scoreboard players remove @s[scores={Shirt12=1..}] Shirt12 1

execute as @a[scores={TalkTrigger=84}] run give @s[scores={Shirt13=1..}] pixelmon:water_stone_plate
execute as @a[scores={TalkTrigger=84}] run scoreboard players remove @s[scores={Shirt13=1..}] Shirt13 1

execute as @a[scores={TalkTrigger=85}] run give @s[scores={Shirt14=1..}] pixelmon:leaf_stone_plate
execute as @a[scores={TalkTrigger=85}] run scoreboard players remove @s[scores={Shirt14=1..}] Shirt14 1

execute as @a[scores={TalkTrigger=86}] run give @s[scores={Shirt15=1..}] pixelmon:thunder_stone_plate
execute as @a[scores={TalkTrigger=86}] run scoreboard players remove @s[scores={Shirt15=1..}] Shirt15 1

execute as @a[scores={TalkTrigger=87}] run give @s[scores={Shirt16=1..}] pixelmon:sun_stone_plate
execute as @a[scores={TalkTrigger=87}] run scoreboard players remove @s[scores={Shirt16=1..}] Shirt16 1

execute as @a[scores={TalkTrigger=88}] run give @s[scores={Shirt17=1..}] pixelmon:moon_stone_plate
execute as @a[scores={TalkTrigger=88}] run scoreboard players remove @s[scores={Shirt17=1..}] Shirt17 1

execute as @a[scores={TalkTrigger=89}] run give @s[scores={Shirt18=1..}] pixelmon:dawn_stone_plate
execute as @a[scores={TalkTrigger=89}] run scoreboard players remove @s[scores={Shirt18=1..}] Shirt18 1

execute as @a[scores={TalkTrigger=90}] run give @s[scores={Shirt19=1..}] pixelmon:dusk_stone_plate
execute as @a[scores={TalkTrigger=90}] run scoreboard players remove @s[scores={Shirt19=1..}] Shirt19 1

execute as @a[scores={TalkTrigger=91}] run give @s[scores={Shirt20=1..}] pixelmon:aluminium_chestplate
execute as @a[scores={TalkTrigger=91}] run scoreboard players remove @s[scores={Shirt20=1..}] Shirt20 1

execute as @a[scores={TalkTrigger=92}] run give @s[scores={Pants1=1..}] minecraft:leather_leggings
execute as @a[scores={TalkTrigger=92}] run scoreboard players remove @s[scores={Pants1=1..}] Pants1 1

execute as @a[scores={TalkTrigger=93}] run give @s[scores={Pants2=1..}] minecraft:chainmail_leggings
execute as @a[scores={TalkTrigger=93}] run scoreboard players remove @s[scores={Pants2=1..}] Pants2 1

execute as @a[scores={TalkTrigger=94}] run give @s[scores={Pants3=1..}] minecraft:iron_leggings
execute as @a[scores={TalkTrigger=94}] run scoreboard players remove @s[scores={Pants3=1..}] Pants3 1

execute as @a[scores={TalkTrigger=95}] run give @s[scores={Pants4=1..}] minecraft:diamond_leggings
execute as @a[scores={TalkTrigger=95}] run scoreboard players remove @s[scores={Pants4=1..}] Pants4 1

execute as @a[scores={TalkTrigger=96}] run give @s[scores={Pants5=1..}] minecraft:golden_leggings
execute as @a[scores={TalkTrigger=96}] run scoreboard players remove @s[scores={Pants5=1..}] Pants5 1

execute as @a[scores={TalkTrigger=97}] run give @s[scores={Pants6=1..}] pixelmon:ruby_legs
execute as @a[scores={TalkTrigger=97}] run scoreboard players remove @s[scores={Pants6=1..}] Pants6 1

execute as @a[scores={TalkTrigger=98}] run give @s[scores={Pants7=1..}] pixelmon:sapphire_legs
execute as @a[scores={TalkTrigger=98}] run scoreboard players remove @s[scores={Pants7=1..}] Pants7 1

execute as @a[scores={TalkTrigger=99}] run give @s[scores={Pants8=1..}] pixelmon:plasma_legs
execute as @a[scores={TalkTrigger=99}] run scoreboard players remove @s[scores={Pants8=1..}] Pants8 1

execute as @a[scores={TalkTrigger=100}] run give @s[scores={Pants9=1..}] pixelmon:galactic_legs
execute as @a[scores={TalkTrigger=100}] run scoreboard players remove @s[scores={Pants9=1..}] Pants9 1

execute as @a[scores={TalkTrigger=101}] run give @s[scores={Pants10=1..}] pixelmon:neo_plasma_legs
execute as @a[scores={TalkTrigger=101}] run scoreboard players remove @s[scores={Pants10=1..}] Pants10 1

execute as @a[scores={TalkTrigger=102}] run give @s[scores={Pants11=1..}] pixelmon:rocket_legs
execute as @a[scores={TalkTrigger=102}] run scoreboard players remove @s[scores={Pants11=1..}] Pants11 1

execute as @a[scores={TalkTrigger=103}] run give @s[scores={Pants12=1..}] pixelmon:fire_stone_legs
execute as @a[scores={TalkTrigger=103}] run scoreboard players remove @s[scores={Pants12=1..}] Pants12 1

execute as @a[scores={TalkTrigger=104}] run give @s[scores={Pants13=1..}] pixelmon:water_stone_legs
execute as @a[scores={TalkTrigger=104}] run scoreboard players remove @s[scores={Pants13=1..}] Pants13 1

execute as @a[scores={TalkTrigger=105}] run give @s[scores={Pants14=1..}] pixelmon:leaf_stone_legs
execute as @a[scores={TalkTrigger=105}] run scoreboard players remove @s[scores={Pants14=1..}] Pants14 1

execute as @a[scores={TalkTrigger=106}] run give @s[scores={Pants15=1..}] pixelmon:thunder_stone_legs
execute as @a[scores={TalkTrigger=106}] run scoreboard players remove @s[scores={Pants15=1..}] Pants15 1

execute as @a[scores={TalkTrigger=107}] run give @s[scores={Pants16=1..}] pixelmon:sun_stone_legs
execute as @a[scores={TalkTrigger=107}] run scoreboard players remove @s[scores={Pants16=1..}] Pants16 1

execute as @a[scores={TalkTrigger=108}] run give @s[scores={Pants17=1..}] pixelmon:moon_stone_legs
execute as @a[scores={TalkTrigger=108}] run scoreboard players remove @s[scores={Pants17=1..}] Pants17 1

execute as @a[scores={TalkTrigger=109}] run give @s[scores={Pants18=1..}] pixelmon:dawn_stone_legs
execute as @a[scores={TalkTrigger=109}] run scoreboard players remove @s[scores={Pants18=1..}] Pants18 1

execute as @a[scores={TalkTrigger=110}] run give @s[scores={Pants19=1..}] pixelmon:dusk_stone_legs
execute as @a[scores={TalkTrigger=110}] run scoreboard players remove @s[scores={Pants19=1..}] Pants19 1

execute as @a[scores={TalkTrigger=111}] run give @s[scores={Pants20=1..}] pixelmon:aluminium_leggings
execute as @a[scores={TalkTrigger=111}] run scoreboard players remove @s[scores={Pants20=1..}] Pants20 1

execute as @a[scores={TalkTrigger=112}] run give @s[scores={Shoes1=1..}] minecraft:leather_boots
execute as @a[scores={TalkTrigger=112}] run scoreboard players remove @s Shoes1 1

execute as @a[scores={TalkTrigger=113}] run give @s[scores={Shoes2=1..}] minecraft:chainmail_boots
execute as @a[scores={TalkTrigger=113}] run scoreboard players remove @s[scores={Shoes2=1..}] Shoes2 1

execute as @a[scores={TalkTrigger=114}] run give @s[scores={Shoes3=1..}] minecraft:iron_boots
execute as @a[scores={TalkTrigger=114}] run scoreboard players remove @s[scores={Shoes3=1..}] Shoes3 1

execute as @a[scores={TalkTrigger=115}] run give @s[scores={Shoes4=1..}] minecraft:diamond_boots
execute as @a[scores={TalkTrigger=115}] run scoreboard players remove @s[scores={Shoes4=1..}] Shoes4 1

execute as @a[scores={TalkTrigger=116}] run give @s[scores={Shoes5=1..}] minecraft:golden_boots
execute as @a[scores={TalkTrigger=116}] run scoreboard players remove @s[scores={Shoes5=1..}] Shoes5 1

execute as @a[scores={TalkTrigger=117}] run give @s[scores={Shoes6=1..}] pixelmon:ruby_boots
execute as @a[scores={TalkTrigger=117}] run scoreboard players remove @s[scores={Shoes6=1..}] Shoes6 1

execute as @a[scores={TalkTrigger=118}] run give @s[scores={Shoes7=1..}] pixelmon:sapphire_boots
execute as @a[scores={TalkTrigger=118}] run scoreboard players remove @s[scores={Shoes7=1..}] Shoes7 1

execute as @a[scores={TalkTrigger=119}] run give @s[scores={Shoes8=1..}] pixelmon:plasma_boots
execute as @a[scores={TalkTrigger=119}] run scoreboard players remove @s[scores={Shoes8=1..}] Shoes8 1

execute as @a[scores={TalkTrigger=120}] run give @s[scores={Shoes9=1..}] pixelmon:galactic_boots
execute as @a[scores={TalkTrigger=120}] run scoreboard players remove @s[scores={Shoes9=1..}] Shoes9 1

execute as @a[scores={TalkTrigger=121}] run give @s[scores={Shoes10=1..}] pixelmon:neo_plasma_boots
execute as @a[scores={TalkTrigger=121}] run scoreboard players remove @s[scores={Shoes10=1..}] Shoes10 1

execute as @a[scores={TalkTrigger=122}] run give @s[scores={Shoes11=1..}] pixelmon:rocket_boots
execute as @a[scores={TalkTrigger=122}] run scoreboard players remove @s[scores={Shoes11=1..}] Shoes11 1

execute as @a[scores={TalkTrigger=123}] run give @s[scores={Shoes12=1..}] pixelmon:fire_stone_boots
execute as @a[scores={TalkTrigger=123}] run scoreboard players remove @s[scores={Shoes12=1..}] Shoes12 1

execute as @a[scores={TalkTrigger=124}] run give @s[scores={Shoes13=1..}] pixelmon:water_stone_boots
execute as @a[scores={TalkTrigger=124}] run scoreboard players remove @s[scores={Shoes13=1..}] Shoes13 1

execute as @a[scores={TalkTrigger=125}] run give @s[scores={Shoes14=1..}] pixelmon:leaf_stone_boots
execute as @a[scores={TalkTrigger=125}] run scoreboard players remove @s[scores={Shoes14=1..}] Shoes14 1

execute as @a[scores={TalkTrigger=126}] run give @s[scores={Shoes15=1..}] pixelmon:thunder_stone_boots
execute as @a[scores={TalkTrigger=126}] run scoreboard players remove @s[scores={Shoes15=1..}] Shoes15 1

execute as @a[scores={TalkTrigger=127}] run give @s[scores={Shoes16=1..}] pixelmon:sun_stone_boots
execute as @a[scores={TalkTrigger=127}] run scoreboard players remove @s[scores={Shoes16=1..}] Shoes16 1

execute as @a[scores={TalkTrigger=128}] run give @s[scores={Shoes17=1..}] pixelmon:moon_stone_boots
execute as @a[scores={TalkTrigger=128}] run scoreboard players remove @s[scores={Shoes17=1..}] Shoes17 1

execute as @a[scores={TalkTrigger=129}] run give @s[scores={Shoes18=1..}] pixelmon:dawn_stone_boots
execute as @a[scores={TalkTrigger=129}] run scoreboard players remove @s[scores={Shoes18=1..}] Shoes18 1

execute as @a[scores={TalkTrigger=130}] run give @s[scores={Shoes19=1..}] pixelmon:dusk_stone_boots
execute as @a[scores={TalkTrigger=130}] run scoreboard players remove @s[scores={Shoes19=1..}] Shoes19 1

execute as @a[scores={TalkTrigger=131}] run give @s[scores={Shoes20=1..}] pixelmon:aluminium_boots
execute as @a[scores={TalkTrigger=131}] run scoreboard players remove @s[scores={Shoes20=1..}] Shoes20 1








execute as @a[scores={TalkTrigger=52..131}] run scoreboard players set @s TalkTrigger 0









#s={