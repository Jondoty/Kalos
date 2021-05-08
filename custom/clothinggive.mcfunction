
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
scoreboard players enable @a[score_TalkTrigger_min=40,score_TalkTrigger=131] TalkTrigger


#Hats Page 1
#Renames reference armor stands before showing player
execute @a[score_TalkTrigger_min=40,score_TalkTrigger=40] ~ ~ ~ entitydata @e[x=-687,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Leather Helmet"}
execute @a[score_TalkTrigger_min=40,score_TalkTrigger=40] ~ ~ ~ entitydata @e[x=-685,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Chainmail Helmet"}
execute @a[score_TalkTrigger_min=40,score_TalkTrigger=40] ~ ~ ~ entitydata @e[x=-683,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Iron Helmet"}
execute @a[score_TalkTrigger_min=40,score_TalkTrigger=40] ~ ~ ~ entitydata @e[x=-681,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Diamond Helmet"}
execute @a[score_TalkTrigger_min=40,score_TalkTrigger=40] ~ ~ ~ entitydata @e[x=-679,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Golden Helmet"}
execute @a[score_TalkTrigger_min=40,score_TalkTrigger=40] ~ ~ ~ entitydata @e[x=-677,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Ruby Helmet"}
execute @a[score_TalkTrigger_min=40,score_TalkTrigger=40] ~ ~ ~ entitydata @e[x=-675,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Sapphire Helmet"}

#Joins armor stand teams if player has item, red by default
execute @a[score_TalkTrigger_min=40,score_TalkTrigger=40] ~ ~ ~ scoreboard teams join red @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=40,score_TalkTrigger=40] ~ ~ ~ scoreboard teams join red @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=40,score_TalkTrigger=40] ~ ~ ~ scoreboard teams join red @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=40,score_TalkTrigger=40] ~ ~ ~ scoreboard teams join red @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=40,score_TalkTrigger=40] ~ ~ ~ scoreboard teams join red @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=40,score_TalkTrigger=40] ~ ~ ~ scoreboard teams join red @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=40,score_TalkTrigger=40] ~ ~ ~ scoreboard teams join red @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]

execute @a[score_TalkTrigger_min=40,score_TalkTrigger=40,score_Hat1_min=1] ~ ~ ~ scoreboard teams join green @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=40,score_TalkTrigger=40,score_Hat2_min=1] ~ ~ ~ scoreboard teams join green @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=40,score_TalkTrigger=40,score_Hat3_min=1] ~ ~ ~ scoreboard teams join green @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=40,score_TalkTrigger=40,score_Hat4_min=1] ~ ~ ~ scoreboard teams join green @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=40,score_TalkTrigger=40,score_Hat5_min=1] ~ ~ ~ scoreboard teams join green @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=40,score_TalkTrigger=40,score_Hat6_min=1] ~ ~ ~ scoreboard teams join green @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=40,score_TalkTrigger=40,score_Hat7_min=1] ~ ~ ~ scoreboard teams join green @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]


#Tellraw Hats Page 1
tellraw @a[score_TalkTrigger_min=40,score_TalkTrigger=40] ["",{"text":"["},{"selector":"@e[x=-687,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 52"}},{"text":"]\n["},{"selector":"@e[x=-685,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 53"}},{"text":"]\n["},{"selector":"@e[x=-683,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 54"}},{"text":"]\n["},{"selector":"@e[x=-681,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 55"}},{"text":"]\n["},{"selector":"@e[x=-679,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 56"}},{"text":"]\n["},{"selector":"@e[x=-677,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 57"}},{"text":"]\n["},{"selector":"@e[x=-675,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 58"}},{"text":"]\n["},{"text":"Next Page >>","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 41"}},{"text":"]"}]




#Hats Page 2
#Renames reference armor stands before showing player
execute @a[score_TalkTrigger_min=41,score_TalkTrigger=41] ~ ~ ~ entitydata @e[x=-687,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Plasma Helmet"}
execute @a[score_TalkTrigger_min=41,score_TalkTrigger=41] ~ ~ ~ entitydata @e[x=-685,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Galactic Helmet"}
execute @a[score_TalkTrigger_min=41,score_TalkTrigger=41] ~ ~ ~ entitydata @e[x=-683,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Neo Plasma Helmet"}
execute @a[score_TalkTrigger_min=41,score_TalkTrigger=41] ~ ~ ~ entitydata @e[x=-681,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Rocket Helmet"}
execute @a[score_TalkTrigger_min=41,score_TalkTrigger=41] ~ ~ ~ entitydata @e[x=-679,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Fire Stone Helmet"}
execute @a[score_TalkTrigger_min=41,score_TalkTrigger=41] ~ ~ ~ entitydata @e[x=-677,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Water Stone Helmet"}
execute @a[score_TalkTrigger_min=41,score_TalkTrigger=41] ~ ~ ~ entitydata @e[x=-675,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Leaf Stone Helmet"}


#Joins armor stand teams if player has item
execute @a[score_TalkTrigger_min=41,score_TalkTrigger=41] ~ ~ ~ scoreboard teams join red @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=41,score_TalkTrigger=41] ~ ~ ~ scoreboard teams join red @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=41,score_TalkTrigger=41] ~ ~ ~ scoreboard teams join red @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=41,score_TalkTrigger=41] ~ ~ ~ scoreboard teams join red @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=41,score_TalkTrigger=41] ~ ~ ~ scoreboard teams join red @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=41,score_TalkTrigger=41] ~ ~ ~ scoreboard teams join red @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=41,score_TalkTrigger=41] ~ ~ ~ scoreboard teams join red @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]

execute @a[score_TalkTrigger_min=41,score_TalkTrigger=41,score_Hat8_min=1] ~ ~ ~ scoreboard teams join green @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=41,score_TalkTrigger=41,score_Hat9_min=1] ~ ~ ~ scoreboard teams join green @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=41,score_TalkTrigger=41,score_Hat10_min=1] ~ ~ ~ scoreboard teams join green @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=41,score_TalkTrigger=41,score_Hat11_min=1] ~ ~ ~ scoreboard teams join green @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=41,score_TalkTrigger=41,score_Hat12_min=1] ~ ~ ~ scoreboard teams join green @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=41,score_TalkTrigger=41,score_Hat13_min=1] ~ ~ ~ scoreboard teams join green @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=41,score_TalkTrigger=41,score_Hat14_min=1] ~ ~ ~ scoreboard teams join green @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]


#Tellraw Hats Page 2
tellraw @a[score_TalkTrigger_min=41,score_TalkTrigger=41] ["",{"text":"["},{"selector":"@e[x=-687,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 52"}},{"text":"]\n["},{"selector":"@e[x=-685,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 59"}},{"text":"]\n["},{"selector":"@e[x=-683,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 60"}},{"text":"]\n["},{"selector":"@e[x=-681,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 61"}},{"text":"]\n["},{"selector":"@e[x=-679,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 62"}},{"text":"]\n["},{"selector":"@e[x=-677,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 63"}},{"text":"]\n["},{"selector":"@e[x=-675,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 64"}},{"text":"]\n["},{"text":"Next Page >>","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 42"}},{"text":"]"}]





#Hats Page 3
#Renames reference armor stands before showing player
execute @a[score_TalkTrigger_min=42,score_TalkTrigger=42] ~ ~ ~ entitydata @e[x=-687,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Thunder Stone Helmet"}
execute @a[score_TalkTrigger_min=42,score_TalkTrigger=42] ~ ~ ~ entitydata @e[x=-685,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Sun Stone Helmet"}
execute @a[score_TalkTrigger_min=42,score_TalkTrigger=42] ~ ~ ~ entitydata @e[x=-683,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Moon Stone Helmet"}
execute @a[score_TalkTrigger_min=42,score_TalkTrigger=42] ~ ~ ~ entitydata @e[x=-681,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Dawn Stone Helmet"}
execute @a[score_TalkTrigger_min=42,score_TalkTrigger=42] ~ ~ ~ entitydata @e[x=-679,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Dusk Stone Helmet"}
execute @a[score_TalkTrigger_min=42,score_TalkTrigger=42] ~ ~ ~ entitydata @e[x=-677,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Aluminum Helmet"}



#Joins armor stand teams if player has item
execute @a[score_TalkTrigger_min=42,score_TalkTrigger=42] ~ ~ ~ scoreboard teams join red @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=42,score_TalkTrigger=42] ~ ~ ~ scoreboard teams join red @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=42,score_TalkTrigger=42] ~ ~ ~ scoreboard teams join red @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=42,score_TalkTrigger=42] ~ ~ ~ scoreboard teams join red @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=42,score_TalkTrigger=42] ~ ~ ~ scoreboard teams join red @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=42,score_TalkTrigger=42] ~ ~ ~ scoreboard teams join red @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]

execute @a[score_TalkTrigger_min=42,score_TalkTrigger=42,score_Hat15_min=1] ~ ~ ~ scoreboard teams join green @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=42,score_TalkTrigger=42,score_Hat16_min=1] ~ ~ ~ scoreboard teams join green @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=42,score_TalkTrigger=42,score_Hat17_min=1] ~ ~ ~ scoreboard teams join green @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=42,score_TalkTrigger=42,score_Hat18_min=1] ~ ~ ~ scoreboard teams join green @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=42,score_TalkTrigger=42,score_Hat19_min=1] ~ ~ ~ scoreboard teams join green @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=42,score_TalkTrigger=42,score_Hat20_min=1] ~ ~ ~ scoreboard teams join green @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]


#Tellraw Hats Page 3
tellraw @a[score_TalkTrigger_min=42,score_TalkTrigger=42] ["",{"text":"["},{"selector":"@e[x=-687,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 66"}},{"text":"]\n["},{"selector":"@e[x=-685,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 67"}},{"text":"]\n["},{"selector":"@e[x=-683,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 68"}},{"text":"]\n["},{"selector":"@e[x=-681,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 69"}},{"text":"]\n["},{"selector":"@e[x=-679,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 70"}},{"text":"]\n["},{"selector":"@e[x=-677,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 71"}},{"text":"]\n["},{"text":"Page 1 >>","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 40"}},{"text":"]"}]




#--------------------------------------------------------------------------------------------------------------------------------------------





#Shirts Page 1
#Renames reference armor stands before showing player
execute @a[score_TalkTrigger_min=43,score_TalkTrigger=43] ~ ~ ~ entitydata @e[x=-687,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Leather Chestplate"}
execute @a[score_TalkTrigger_min=43,score_TalkTrigger=43] ~ ~ ~ entitydata @e[x=-685,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Chainmail Chestplate"}
execute @a[score_TalkTrigger_min=43,score_TalkTrigger=43] ~ ~ ~ entitydata @e[x=-683,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Iron Chestplate"}
execute @a[score_TalkTrigger_min=43,score_TalkTrigger=43] ~ ~ ~ entitydata @e[x=-681,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Diamond Chestplate"}
execute @a[score_TalkTrigger_min=43,score_TalkTrigger=43] ~ ~ ~ entitydata @e[x=-679,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Golden Chestplate"}
execute @a[score_TalkTrigger_min=43,score_TalkTrigger=43] ~ ~ ~ entitydata @e[x=-677,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Ruby Chestplate"}
execute @a[score_TalkTrigger_min=43,score_TalkTrigger=43] ~ ~ ~ entitydata @e[x=-675,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Sapphire Chestplate"}

#Joins armor stand teams if player has item, red by default
execute @a[score_TalkTrigger_min=43,score_TalkTrigger=43] ~ ~ ~ scoreboard teams join red @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=43,score_TalkTrigger=43] ~ ~ ~ scoreboard teams join red @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=43,score_TalkTrigger=43] ~ ~ ~ scoreboard teams join red @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=43,score_TalkTrigger=43] ~ ~ ~ scoreboard teams join red @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=43,score_TalkTrigger=43] ~ ~ ~ scoreboard teams join red @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=43,score_TalkTrigger=43] ~ ~ ~ scoreboard teams join red @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=43,score_TalkTrigger=43] ~ ~ ~ scoreboard teams join red @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]

execute @a[score_TalkTrigger_min=43,score_TalkTrigger=43,score_Shirt1_min=1] ~ ~ ~ scoreboard teams join green @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=43,score_TalkTrigger=43,score_Shirt2_min=1] ~ ~ ~ scoreboard teams join green @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=43,score_TalkTrigger=43,score_Shirt3_min=1] ~ ~ ~ scoreboard teams join green @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=43,score_TalkTrigger=43,score_Shirt4_min=1] ~ ~ ~ scoreboard teams join green @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=43,score_TalkTrigger=43,score_Shirt5_min=1] ~ ~ ~ scoreboard teams join green @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=43,score_TalkTrigger=43,score_Shirt6_min=1] ~ ~ ~ scoreboard teams join green @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=43,score_TalkTrigger=43,score_Shirt7_min=1] ~ ~ ~ scoreboard teams join green @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]


#Tellraw Hats Page 1
tellraw @a[score_TalkTrigger_min=43,score_TalkTrigger=43] ["",{"text":"["},{"selector":"@e[x=-687,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 72"}},{"text":"]\n["},{"selector":"@e[x=-685,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 73"}},{"text":"]\n["},{"selector":"@e[x=-683,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 74"}},{"text":"]\n["},{"selector":"@e[x=-681,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 75"}},{"text":"]\n["},{"selector":"@e[x=-679,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 76"}},{"text":"]\n["},{"selector":"@e[x=-677,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 77"}},{"text":"]\n["},{"selector":"@e[x=-675,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 78"}},{"text":"]\n["},{"text":"Next Page >>","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 44"}},{"text":"]"}]






#Shirts Page 2
#Renames reference armor stands before showing player
execute @a[score_TalkTrigger_min=44,score_TalkTrigger=44] ~ ~ ~ entitydata @e[x=-687,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Plasma Chestplate"}
execute @a[score_TalkTrigger_min=44,score_TalkTrigger=44] ~ ~ ~ entitydata @e[x=-685,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Galactic Chestplate"}
execute @a[score_TalkTrigger_min=44,score_TalkTrigger=44] ~ ~ ~ entitydata @e[x=-683,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Neo Plasma Chestplate"}
execute @a[score_TalkTrigger_min=44,score_TalkTrigger=44] ~ ~ ~ entitydata @e[x=-681,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Rocket Chestplate"}
execute @a[score_TalkTrigger_min=44,score_TalkTrigger=44] ~ ~ ~ entitydata @e[x=-679,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Fire Stone Chestplate"}
execute @a[score_TalkTrigger_min=44,score_TalkTrigger=44] ~ ~ ~ entitydata @e[x=-677,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Water Stone Chestplate"}
execute @a[score_TalkTrigger_min=44,score_TalkTrigger=44] ~ ~ ~ entitydata @e[x=-675,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Leaf Stone Chestplate"}



#Joins armor stand teams if player has item, red by default
execute @a[score_TalkTrigger_min=44,score_TalkTrigger=44] ~ ~ ~ scoreboard teams join red @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=44,score_TalkTrigger=44] ~ ~ ~ scoreboard teams join red @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=44,score_TalkTrigger=44] ~ ~ ~ scoreboard teams join red @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=44,score_TalkTrigger=44] ~ ~ ~ scoreboard teams join red @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=44,score_TalkTrigger=44] ~ ~ ~ scoreboard teams join red @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=44,score_TalkTrigger=44] ~ ~ ~ scoreboard teams join red @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=44,score_TalkTrigger=44] ~ ~ ~ scoreboard teams join red @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]

execute @a[score_TalkTrigger_min=44,score_TalkTrigger=44,score_Shirt8_min=1] ~ ~ ~ scoreboard teams join green @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=44,score_TalkTrigger=44,score_Shirt9_min=1] ~ ~ ~ scoreboard teams join green @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=44,score_TalkTrigger=44,score_Shirt10_min=1] ~ ~ ~ scoreboard teams join green @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=44,score_TalkTrigger=44,score_Shirt11_min=1] ~ ~ ~ scoreboard teams join green @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=44,score_TalkTrigger=44,score_Shirt12_min=1] ~ ~ ~ scoreboard teams join green @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=44,score_TalkTrigger=44,score_Shirt13_min=1] ~ ~ ~ scoreboard teams join green @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=44,score_TalkTrigger=44,score_Shirt14_min=1] ~ ~ ~ scoreboard teams join green @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]


#Tellraw Hats Page 2
tellraw @a[score_TalkTrigger_min=44,score_TalkTrigger=44] ["",{"text":"["},{"selector":"@e[x=-687,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 79"}},{"text":"]\n["},{"selector":"@e[x=-685,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 80"}},{"text":"]\n["},{"selector":"@e[x=-683,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 81"}},{"text":"]\n["},{"selector":"@e[x=-681,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 82"}},{"text":"]\n["},{"selector":"@e[x=-679,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 83"}},{"text":"]\n["},{"selector":"@e[x=-677,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 84"}},{"text":"]\n["},{"selector":"@e[x=-675,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 85"}},{"text":"]\n["},{"text":"Next Page >>","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 45"}},{"text":"]"}]






#Shirts Page 3
#Renames reference armor stands before showing player
execute @a[score_TalkTrigger_min=45,score_TalkTrigger=45] ~ ~ ~ entitydata @e[x=-687,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Thunder Stone Chestplate"}
execute @a[score_TalkTrigger_min=45,score_TalkTrigger=45] ~ ~ ~ entitydata @e[x=-685,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Sun Stone Chestplate"}
execute @a[score_TalkTrigger_min=45,score_TalkTrigger=45] ~ ~ ~ entitydata @e[x=-683,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Moon Stone Chestplate"}
execute @a[score_TalkTrigger_min=45,score_TalkTrigger=45] ~ ~ ~ entitydata @e[x=-681,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Dawn Stone Chestplate"}
execute @a[score_TalkTrigger_min=45,score_TalkTrigger=45] ~ ~ ~ entitydata @e[x=-679,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Dusk Stone Chestplate"}
execute @a[score_TalkTrigger_min=45,score_TalkTrigger=45] ~ ~ ~ entitydata @e[x=-677,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Aluminum Chestplate"}



#Joins armor stand teams if player has item
execute @a[score_TalkTrigger_min=45,score_TalkTrigger=45] ~ ~ ~ scoreboard teams join red @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=45,score_TalkTrigger=45] ~ ~ ~ scoreboard teams join red @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=45,score_TalkTrigger=45] ~ ~ ~ scoreboard teams join red @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=45,score_TalkTrigger=45] ~ ~ ~ scoreboard teams join red @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=45,score_TalkTrigger=45] ~ ~ ~ scoreboard teams join red @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=45,score_TalkTrigger=45] ~ ~ ~ scoreboard teams join red @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]

execute @a[score_TalkTrigger_min=45,score_TalkTrigger=45,score_Shirt15_min=1] ~ ~ ~ scoreboard teams join green @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=45,score_TalkTrigger=45,score_Shirt16_min=1] ~ ~ ~ scoreboard teams join green @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=45,score_TalkTrigger=45,score_Shirt17_min=1] ~ ~ ~ scoreboard teams join green @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=45,score_TalkTrigger=45,score_Shirt18_min=1] ~ ~ ~ scoreboard teams join green @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=45,score_TalkTrigger=45,score_Shirt19_min=1] ~ ~ ~ scoreboard teams join green @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=45,score_TalkTrigger=45,score_Shirt20_min=1] ~ ~ ~ scoreboard teams join green @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]


#Tellraw Shirts Page 3
tellraw @a[score_TalkTrigger_min=45,score_TalkTrigger=45] ["",{"text":"["},{"selector":"@e[x=-687,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 86"}},{"text":"]\n["},{"selector":"@e[x=-685,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 87"}},{"text":"]\n["},{"selector":"@e[x=-683,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 88"}},{"text":"]\n["},{"selector":"@e[x=-681,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 89"}},{"text":"]\n["},{"selector":"@e[x=-679,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 90"}},{"text":"]\n["},{"selector":"@e[x=-677,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 91"}},{"text":"]\n["},{"text":"Page 1 >>","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 43"}},{"text":"]"}]




#--------------------------------------------------------------------------------------------------------------------------------------------


#Pants Page 1
#Renames reference armor stands before showing player
execute @a[score_TalkTrigger_min=46,score_TalkTrigger=46] ~ ~ ~ entitydata @e[x=-687,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Leather Leggings"}
execute @a[score_TalkTrigger_min=46,score_TalkTrigger=46] ~ ~ ~ entitydata @e[x=-685,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Chainmail Leggings"}
execute @a[score_TalkTrigger_min=46,score_TalkTrigger=46] ~ ~ ~ entitydata @e[x=-683,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Iron Leggings"}
execute @a[score_TalkTrigger_min=46,score_TalkTrigger=46] ~ ~ ~ entitydata @e[x=-681,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Diamond Leggings"}
execute @a[score_TalkTrigger_min=46,score_TalkTrigger=46] ~ ~ ~ entitydata @e[x=-679,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Golden Leggings"}
execute @a[score_TalkTrigger_min=46,score_TalkTrigger=46] ~ ~ ~ entitydata @e[x=-677,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Ruby Leggings"}
execute @a[score_TalkTrigger_min=46,score_TalkTrigger=46] ~ ~ ~ entitydata @e[x=-675,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Sapphire Leggings"}

#Joins armor stand teams if player has item, red by default
execute @a[score_TalkTrigger_min=46,score_TalkTrigger=46] ~ ~ ~ scoreboard teams join red @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=46,score_TalkTrigger=46] ~ ~ ~ scoreboard teams join red @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=46,score_TalkTrigger=46] ~ ~ ~ scoreboard teams join red @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=46,score_TalkTrigger=46] ~ ~ ~ scoreboard teams join red @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=46,score_TalkTrigger=46] ~ ~ ~ scoreboard teams join red @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=46,score_TalkTrigger=46] ~ ~ ~ scoreboard teams join red @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=46,score_TalkTrigger=46] ~ ~ ~ scoreboard teams join red @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]

execute @a[score_TalkTrigger_min=46,score_TalkTrigger=46,score_Pants1_min=1] ~ ~ ~ scoreboard teams join green @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=46,score_TalkTrigger=46,score_Pants2_min=1] ~ ~ ~ scoreboard teams join green @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=46,score_TalkTrigger=46,score_Pants3_min=1] ~ ~ ~ scoreboard teams join green @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=46,score_TalkTrigger=46,score_Pants4_min=1] ~ ~ ~ scoreboard teams join green @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=46,score_TalkTrigger=46,score_Pants5_min=1] ~ ~ ~ scoreboard teams join green @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=46,score_TalkTrigger=46,score_Pants6_min=1] ~ ~ ~ scoreboard teams join green @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=46,score_TalkTrigger=46,score_Pants7_min=1] ~ ~ ~ scoreboard teams join green @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]


#Tellraw Pants Page 1
tellraw @a[score_TalkTrigger_min=46,score_TalkTrigger=46] ["",{"text":"["},{"selector":"@e[x=-687,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 92"}},{"text":"]\n["},{"selector":"@e[x=-685,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 93"}},{"text":"]\n["},{"selector":"@e[x=-683,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 94"}},{"text":"]\n["},{"selector":"@e[x=-681,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 95"}},{"text":"]\n["},{"selector":"@e[x=-679,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 96"}},{"text":"]\n["},{"selector":"@e[x=-677,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 97"}},{"text":"]\n["},{"selector":"@e[x=-675,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 98"}},{"text":"]\n["},{"text":"Next Page >>","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 47"}},{"text":"]"}]






#Pants Page 2
#Renames reference armor stands before showing player
execute @a[score_TalkTrigger_min=47,score_TalkTrigger=47] ~ ~ ~ entitydata @e[x=-687,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Plasma Leggings"}
execute @a[score_TalkTrigger_min=47,score_TalkTrigger=47] ~ ~ ~ entitydata @e[x=-685,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Galactic Leggings"}
execute @a[score_TalkTrigger_min=47,score_TalkTrigger=47] ~ ~ ~ entitydata @e[x=-683,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Neo Plasma Leggings"}
execute @a[score_TalkTrigger_min=47,score_TalkTrigger=47] ~ ~ ~ entitydata @e[x=-681,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Rocket Leggings"}
execute @a[score_TalkTrigger_min=47,score_TalkTrigger=47] ~ ~ ~ entitydata @e[x=-679,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Fire Stone Leggings"}
execute @a[score_TalkTrigger_min=47,score_TalkTrigger=47] ~ ~ ~ entitydata @e[x=-677,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Water Stone Leggings"}
execute @a[score_TalkTrigger_min=47,score_TalkTrigger=47] ~ ~ ~ entitydata @e[x=-675,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Leaf Stone Leggings"}



#Joins armor stand teams if player has item, red by default
execute @a[score_TalkTrigger_min=47,score_TalkTrigger=47] ~ ~ ~ scoreboard teams join red @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=47,score_TalkTrigger=47] ~ ~ ~ scoreboard teams join red @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=47,score_TalkTrigger=47] ~ ~ ~ scoreboard teams join red @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=47,score_TalkTrigger=47] ~ ~ ~ scoreboard teams join red @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=47,score_TalkTrigger=47] ~ ~ ~ scoreboard teams join red @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=47,score_TalkTrigger=47] ~ ~ ~ scoreboard teams join red @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=47,score_TalkTrigger=47] ~ ~ ~ scoreboard teams join red @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]

execute @a[score_TalkTrigger_min=47,score_TalkTrigger=47,score_Pants8_min=1] ~ ~ ~ scoreboard teams join green @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=47,score_TalkTrigger=47,score_Pants9_min=1] ~ ~ ~ scoreboard teams join green @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=47,score_TalkTrigger=47,score_Pants10_min=1] ~ ~ ~ scoreboard teams join green @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=47,score_TalkTrigger=47,score_Pants11_min=1] ~ ~ ~ scoreboard teams join green @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=47,score_TalkTrigger=47,score_Pants12_min=1] ~ ~ ~ scoreboard teams join green @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=47,score_TalkTrigger=47,score_Pants13_min=1] ~ ~ ~ scoreboard teams join green @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=47,score_TalkTrigger=47,score_Pants14_min=1] ~ ~ ~ scoreboard teams join green @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]


#Tellraw Hats Page 2
tellraw @a[score_TalkTrigger_min=47,score_TalkTrigger=47] ["",{"text":"["},{"selector":"@e[x=-687,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 99"}},{"text":"]\n["},{"selector":"@e[x=-685,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 100"}},{"text":"]\n["},{"selector":"@e[x=-683,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 101"}},{"text":"]\n["},{"selector":"@e[x=-681,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 102"}},{"text":"]\n["},{"selector":"@e[x=-679,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 103"}},{"text":"]\n["},{"selector":"@e[x=-677,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 104"}},{"text":"]\n["},{"selector":"@e[x=-675,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 105"}},{"text":"]\n["},{"text":"Next Page >>","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 48"}},{"text":"]"}]






#Pants Page 3
#Renames reference armor stands before showing player
execute @a[score_TalkTrigger_min=48,score_TalkTrigger=48] ~ ~ ~ entitydata @e[x=-687,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Thunder Stone Leggings"}
execute @a[score_TalkTrigger_min=48,score_TalkTrigger=48] ~ ~ ~ entitydata @e[x=-685,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Sun Stone Leggings"}
execute @a[score_TalkTrigger_min=48,score_TalkTrigger=48] ~ ~ ~ entitydata @e[x=-683,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Moon Stone Leggings"}
execute @a[score_TalkTrigger_min=48,score_TalkTrigger=48] ~ ~ ~ entitydata @e[x=-681,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Dawn Stone Leggings"}
execute @a[score_TalkTrigger_min=48,score_TalkTrigger=48] ~ ~ ~ entitydata @e[x=-679,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Dusk Stone Leggings"}
execute @a[score_TalkTrigger_min=48,score_TalkTrigger=48] ~ ~ ~ entitydata @e[x=-677,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Aluminum Leggings"}



#Joins armor stand teams if player has item
execute @a[score_TalkTrigger_min=48,score_TalkTrigger=48] ~ ~ ~ scoreboard teams join red @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=48,score_TalkTrigger=48] ~ ~ ~ scoreboard teams join red @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=48,score_TalkTrigger=48] ~ ~ ~ scoreboard teams join red @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=48,score_TalkTrigger=48] ~ ~ ~ scoreboard teams join red @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=48,score_TalkTrigger=48] ~ ~ ~ scoreboard teams join red @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=48,score_TalkTrigger=48] ~ ~ ~ scoreboard teams join red @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]

execute @a[score_TalkTrigger_min=48,score_TalkTrigger=48,score_Pants15_min=1] ~ ~ ~ scoreboard teams join green @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=48,score_TalkTrigger=48,score_Pants16_min=1] ~ ~ ~ scoreboard teams join green @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=48,score_TalkTrigger=48,score_Pants17_min=1] ~ ~ ~ scoreboard teams join green @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=48,score_TalkTrigger=48,score_Pants18_min=1] ~ ~ ~ scoreboard teams join green @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=48,score_TalkTrigger=48,score_Pants19_min=1] ~ ~ ~ scoreboard teams join green @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=48,score_TalkTrigger=48,score_Pants20_min=1] ~ ~ ~ scoreboard teams join green @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]


#Tellraw Pants Page 3
tellraw @a[score_TalkTrigger_min=48,score_TalkTrigger=48] ["",{"text":"["},{"selector":"@e[x=-687,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 106"}},{"text":"]\n["},{"selector":"@e[x=-685,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 107"}},{"text":"]\n["},{"selector":"@e[x=-683,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 108"}},{"text":"]\n["},{"selector":"@e[x=-681,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 109"}},{"text":"]\n["},{"selector":"@e[x=-679,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 110"}},{"text":"]\n["},{"selector":"@e[x=-677,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 111"}},{"text":"]\n["},{"text":"Page 1 >>","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 46"}},{"text":"]"}]




#--------------------------------------------------------------------------------------------------------------------------------------------
#49 - Shoes page 1
#50 - Shoes page 2
#51 - Shoes page 3
#112-131 - Shoes give



#Shoes Page 1
#Renames reference armor stands before showing player
execute @a[score_TalkTrigger_min=49,score_TalkTrigger=49] ~ ~ ~ entitydata @e[x=-687,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Leather Boots"}
execute @a[score_TalkTrigger_min=49,score_TalkTrigger=49] ~ ~ ~ entitydata @e[x=-685,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Chainmail Boots"}
execute @a[score_TalkTrigger_min=49,score_TalkTrigger=49] ~ ~ ~ entitydata @e[x=-683,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Iron Boots"}
execute @a[score_TalkTrigger_min=49,score_TalkTrigger=49] ~ ~ ~ entitydata @e[x=-681,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Diamond Boots"}
execute @a[score_TalkTrigger_min=49,score_TalkTrigger=49] ~ ~ ~ entitydata @e[x=-679,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Golden Boots"}
execute @a[score_TalkTrigger_min=49,score_TalkTrigger=49] ~ ~ ~ entitydata @e[x=-677,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Ruby Boots"}
execute @a[score_TalkTrigger_min=49,score_TalkTrigger=49] ~ ~ ~ entitydata @e[x=-675,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Sapphire Boots"}

#Joins armor stand teams if player has item, red by default
execute @a[score_TalkTrigger_min=49,score_TalkTrigger=49] ~ ~ ~ scoreboard teams join red @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=49,score_TalkTrigger=49] ~ ~ ~ scoreboard teams join red @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=49,score_TalkTrigger=49] ~ ~ ~ scoreboard teams join red @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=49,score_TalkTrigger=49] ~ ~ ~ scoreboard teams join red @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=49,score_TalkTrigger=49] ~ ~ ~ scoreboard teams join red @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=49,score_TalkTrigger=49] ~ ~ ~ scoreboard teams join red @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=49,score_TalkTrigger=49] ~ ~ ~ scoreboard teams join red @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]

execute @a[score_TalkTrigger_min=49,score_TalkTrigger=49,score_Shoes1_min=1] ~ ~ ~ scoreboard teams join green @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=49,score_TalkTrigger=49,score_Shoes2_min=1] ~ ~ ~ scoreboard teams join green @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=49,score_TalkTrigger=49,score_Shoes3_min=1] ~ ~ ~ scoreboard teams join green @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=49,score_TalkTrigger=49,score_Shoes4_min=1] ~ ~ ~ scoreboard teams join green @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=49,score_TalkTrigger=49,score_Shoes5_min=1] ~ ~ ~ scoreboard teams join green @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=49,score_TalkTrigger=49,score_Shoes6_min=1] ~ ~ ~ scoreboard teams join green @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=49,score_TalkTrigger=49,score_Shoes7_min=1] ~ ~ ~ scoreboard teams join green @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]


#Tellraw Shoes Page 1
tellraw @a[score_TalkTrigger_min=49,score_TalkTrigger=49] ["",{"text":"["},{"selector":"@e[x=-687,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 112"}},{"text":"]\n["},{"selector":"@e[x=-685,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 113"}},{"text":"]\n["},{"selector":"@e[x=-683,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 114"}},{"text":"]\n["},{"selector":"@e[x=-681,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 115"}},{"text":"]\n["},{"selector":"@e[x=-679,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 116"}},{"text":"]\n["},{"selector":"@e[x=-677,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 117"}},{"text":"]\n["},{"selector":"@e[x=-675,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 118"}},{"text":"]\n["},{"text":"Next Page >>","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 50"}},{"text":"]"}]






#Shoes Page 2
#Renames reference armor stands before showing player
execute @a[score_TalkTrigger_min=50,score_TalkTrigger=50] ~ ~ ~ entitydata @e[x=-687,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Plasma Boots"}
execute @a[score_TalkTrigger_min=50,score_TalkTrigger=50] ~ ~ ~ entitydata @e[x=-685,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Galactic Boots"}
execute @a[score_TalkTrigger_min=50,score_TalkTrigger=50] ~ ~ ~ entitydata @e[x=-683,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Neo Plasma Boots"}
execute @a[score_TalkTrigger_min=50,score_TalkTrigger=50] ~ ~ ~ entitydata @e[x=-681,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Team Rocket Boots"}
execute @a[score_TalkTrigger_min=50,score_TalkTrigger=50] ~ ~ ~ entitydata @e[x=-679,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Fire Stone Boots"}
execute @a[score_TalkTrigger_min=50,score_TalkTrigger=50] ~ ~ ~ entitydata @e[x=-677,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Water Stone Boots"}
execute @a[score_TalkTrigger_min=50,score_TalkTrigger=50] ~ ~ ~ entitydata @e[x=-675,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Leaf Stone Boots"}



#Joins armor stand teams if player has item, red by default
execute @a[score_TalkTrigger_min=50,score_TalkTrigger=50] ~ ~ ~ scoreboard teams join red @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=50,score_TalkTrigger=50] ~ ~ ~ scoreboard teams join red @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=50,score_TalkTrigger=50] ~ ~ ~ scoreboard teams join red @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=50,score_TalkTrigger=50] ~ ~ ~ scoreboard teams join red @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=50,score_TalkTrigger=50] ~ ~ ~ scoreboard teams join red @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=50,score_TalkTrigger=50] ~ ~ ~ scoreboard teams join red @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=50,score_TalkTrigger=50] ~ ~ ~ scoreboard teams join red @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]

execute @a[score_TalkTrigger_min=50,score_TalkTrigger=50,score_Shoes8_min=1] ~ ~ ~ scoreboard teams join green @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=50,score_TalkTrigger=50,score_Shoes9_min=1] ~ ~ ~ scoreboard teams join green @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=50,score_TalkTrigger=50,score_Shoes10_min=1] ~ ~ ~ scoreboard teams join green @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=50,score_TalkTrigger=50,score_Shoes11_min=1] ~ ~ ~ scoreboard teams join green @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=50,score_TalkTrigger=50,score_Shoes12_min=1] ~ ~ ~ scoreboard teams join green @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=50,score_TalkTrigger=50,score_Shoes13_min=1] ~ ~ ~ scoreboard teams join green @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=50,score_TalkTrigger=50,score_Shoes14_min=1] ~ ~ ~ scoreboard teams join green @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]


#Tellraw Shoes Page 2
tellraw @a[score_TalkTrigger_min=50,score_TalkTrigger=50] ["",{"text":"["},{"selector":"@e[x=-687,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 119"}},{"text":"]\n["},{"selector":"@e[x=-685,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 120"}},{"text":"]\n["},{"selector":"@e[x=-683,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 121"}},{"text":"]\n["},{"selector":"@e[x=-681,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 122"}},{"text":"]\n["},{"selector":"@e[x=-679,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 123"}},{"text":"]\n["},{"selector":"@e[x=-677,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 124"}},{"text":"]\n["},{"selector":"@e[x=-675,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 125"}},{"text":"]\n["},{"text":"Next Page >>","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 51"}},{"text":"]"}]






#Shoes Page 3
#Renames reference armor stands before showing player
execute @a[score_TalkTrigger_min=51,score_TalkTrigger=51] ~ ~ ~ entitydata @e[x=-687,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Thunder Stone Boots"}
execute @a[score_TalkTrigger_min=51,score_TalkTrigger=51] ~ ~ ~ entitydata @e[x=-685,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Sun Stone Boots"}
execute @a[score_TalkTrigger_min=51,score_TalkTrigger=51] ~ ~ ~ entitydata @e[x=-683,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Moon Stone Boots"}
execute @a[score_TalkTrigger_min=51,score_TalkTrigger=51] ~ ~ ~ entitydata @e[x=-681,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Dawn Stone Boots"}
execute @a[score_TalkTrigger_min=51,score_TalkTrigger=51] ~ ~ ~ entitydata @e[x=-679,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Dusk Stone Boots"}
execute @a[score_TalkTrigger_min=51,score_TalkTrigger=51] ~ ~ ~ entitydata @e[x=-677,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Aluminum Boots"}



#Joins armor stand teams if player has item
execute @a[score_TalkTrigger_min=51,score_TalkTrigger=51] ~ ~ ~ scoreboard teams join red @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=51,score_TalkTrigger=51] ~ ~ ~ scoreboard teams join red @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=51,score_TalkTrigger=51] ~ ~ ~ scoreboard teams join red @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=51,score_TalkTrigger=51] ~ ~ ~ scoreboard teams join red @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=51,score_TalkTrigger=51] ~ ~ ~ scoreboard teams join red @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=51,score_TalkTrigger=51] ~ ~ ~ scoreboard teams join red @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]

execute @a[score_TalkTrigger_min=51,score_TalkTrigger=51,score_Shoes15_min=1] ~ ~ ~ scoreboard teams join green @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=51,score_TalkTrigger=51,score_Shoes16_min=1] ~ ~ ~ scoreboard teams join green @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=51,score_TalkTrigger=51,score_Shoes17_min=1] ~ ~ ~ scoreboard teams join green @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=51,score_TalkTrigger=51,score_Shoes18_min=1] ~ ~ ~ scoreboard teams join green @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=51,score_TalkTrigger=51,score_Shoes19_min=1] ~ ~ ~ scoreboard teams join green @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=51,score_TalkTrigger=51,score_Shoes20_min=1] ~ ~ ~ scoreboard teams join green @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]


#Tellraw Shoes Page 3
tellraw @a[score_TalkTrigger_min=51,score_TalkTrigger=51] ["",{"text":"["},{"selector":"@e[x=-687,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 126"}},{"text":"]\n["},{"selector":"@e[x=-685,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 127"}},{"text":"]\n["},{"selector":"@e[x=-683,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 128"}},{"text":"]\n["},{"selector":"@e[x=-681,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 129"}},{"text":"]\n["},{"selector":"@e[x=-679,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 130"}},{"text":"]\n["},{"selector":"@e[x=-677,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 131"}},{"text":"]\n["},{"text":"Page 1 >>","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 49"}},{"text":"]"}]




#--------------------------------------------------------------------------------------------------------------------------------------------


#If clothing isn't present when player clicks on a Red team score
execute @a[score_TalkTrigger_min=52,score_TalkTrigger=52,score_Hat1=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=53,score_TalkTrigger=53,score_Hat2=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=54,score_TalkTrigger=54,score_Hat3=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=55,score_TalkTrigger=55,score_Hat4=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=56,score_TalkTrigger=56,score_Hat5=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=57,score_TalkTrigger=57,score_Hat6=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=58,score_TalkTrigger=58,score_Hat7=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=59,score_TalkTrigger=59,score_Hat8=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=60,score_TalkTrigger=60,score_Hat9=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=61,score_TalkTrigger=61,score_Hat10=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=62,score_TalkTrigger=62,score_Hat11=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=63,score_TalkTrigger=63,score_Hat12=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=64,score_TalkTrigger=64,score_Hat13=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=65,score_TalkTrigger=65,score_Hat14=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=66,score_TalkTrigger=66,score_Hat15=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=67,score_TalkTrigger=67,score_Hat16=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=68,score_TalkTrigger=68,score_Hat17=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=69,score_TalkTrigger=69,score_Hat18=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=70,score_TalkTrigger=70,score_Hat19=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=71,score_TalkTrigger=71,score_Hat20=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=72,score_TalkTrigger=72,score_Shirt1=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=73,score_TalkTrigger=73,score_Shirt2=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=74,score_TalkTrigger=74,score_Shirt3=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=75,score_TalkTrigger=75,score_Shirt4=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=76,score_TalkTrigger=76,score_Shirt5=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=77,score_TalkTrigger=77,score_Shirt6=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=78,score_TalkTrigger=78,score_Shirt7=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=79,score_TalkTrigger=79,score_Shirt8=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=80,score_TalkTrigger=80,score_Shirt9=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=81,score_TalkTrigger=81,score_Shirt10=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=82,score_TalkTrigger=82,score_Shirt11=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=83,score_TalkTrigger=83,score_Shirt12=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=84,score_TalkTrigger=84,score_Shirt13=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=85,score_TalkTrigger=85,score_Shirt14=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=86,score_TalkTrigger=86,score_Shirt15=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=87,score_TalkTrigger=87,score_Shirt16=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=88,score_TalkTrigger=88,score_Shirt17=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=89,score_TalkTrigger=89,score_Shirt18=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=90,score_TalkTrigger=90,score_Shirt19=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=91,score_TalkTrigger=91,score_Shirt20=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=92,score_TalkTrigger=92,score_Pants1=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=93,score_TalkTrigger=93,score_Pants2=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=94,score_TalkTrigger=94,score_Pants3=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=95,score_TalkTrigger=95,score_Pants4=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=96,score_TalkTrigger=96,score_Pants5=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=97,score_TalkTrigger=97,score_Pants6=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=98,score_TalkTrigger=98,score_Pants7=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=99,score_TalkTrigger=99,score_Pants8=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=100,score_TalkTrigger=100,score_Pants9=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=101,score_TalkTrigger=101,score_Pants10=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=102,score_TalkTrigger=102,score_Pants11=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=103,score_TalkTrigger=103,score_Pants12=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=104,score_TalkTrigger=104,score_Pants13=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=105,score_TalkTrigger=105,score_Pants14=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=106,score_TalkTrigger=106,score_Pants15=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=107,score_TalkTrigger=107,score_Pants16=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=108,score_TalkTrigger=108,score_Pants17=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=109,score_TalkTrigger=109,score_Pants18=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=110,score_TalkTrigger=110,score_Pants19=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=111,score_TalkTrigger=111,score_Pants20=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=112,score_TalkTrigger=112,score_Shoes1=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=113,score_TalkTrigger=113,score_Shoes2=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=114,score_TalkTrigger=114,score_Shoes3=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=115,score_TalkTrigger=115,score_Shoes4=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=116,score_TalkTrigger=116,score_Shoes5=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=117,score_TalkTrigger=117,score_Shoes6=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=118,score_TalkTrigger=118,score_Shoes7=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=119,score_TalkTrigger=119,score_Shoes8=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=120,score_TalkTrigger=120,score_Shoes9=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=121,score_TalkTrigger=121,score_Shoes10=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=122,score_TalkTrigger=122,score_Shoes11=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=123,score_TalkTrigger=123,score_Shoes12=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=124,score_TalkTrigger=124,score_Shoes13=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=125,score_TalkTrigger=125,score_Shoes14=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=126,score_TalkTrigger=126,score_Shoes15=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=127,score_TalkTrigger=127,score_Shoes16=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=128,score_TalkTrigger=128,score_Shoes17=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=129,score_TalkTrigger=129,score_Shoes18=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=130,score_TalkTrigger=130,score_Shoes19=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=131,score_TalkTrigger=131,score_Shoes20=0] ~ ~ ~ tellraw @s {"text":"Clothing not found in bag!","italic":true,"color":"gray"}

#--------------------------------------------------------------------------------------------------------------------------------------------





#Clothing gives

#Hats

execute @a[score_TalkTrigger_min=52,score_TalkTrigger=52] ~ ~ ~ give @s[score_Hat1_min=1] minecraft:leather_helmet
execute @a[score_TalkTrigger_min=52,score_TalkTrigger=52] ~ ~ ~ scoreboard players remove @s[score_Hat1_min=1] Hat1 1

execute @a[score_TalkTrigger_min=53,score_TalkTrigger=53] ~ ~ ~ give @s[score_Hat2_min=1] minecraft:chainmail_helmet
execute @a[score_TalkTrigger_min=53,score_TalkTrigger=53] ~ ~ ~ scoreboard players remove @s[score_Hat2_min=1] Hat2 1

execute @a[score_TalkTrigger_min=54,score_TalkTrigger=54] ~ ~ ~ give @s[score_Hat3_min=1] minecraft:iron_helmet
execute @a[score_TalkTrigger_min=54,score_TalkTrigger=54] ~ ~ ~ scoreboard players remove @s[score_Hat3_min=1] Hat3 1

execute @a[score_TalkTrigger_min=55,score_TalkTrigger=55] ~ ~ ~ give @s[score_Hat4_min=1] minecraft:diamond_helmet
execute @a[score_TalkTrigger_min=55,score_TalkTrigger=55] ~ ~ ~ scoreboard players remove @s[score_Hat4_min=1] Hat4 1

execute @a[score_TalkTrigger_min=56,score_TalkTrigger=56] ~ ~ ~ give @s[score_Hat5_min=1] minecraft:golden_helmet
execute @a[score_TalkTrigger_min=56,score_TalkTrigger=56] ~ ~ ~ scoreboard players remove @s[score_Hat5_min=1] Hat5 1

execute @a[score_TalkTrigger_min=57,score_TalkTrigger=57] ~ ~ ~ give @s[score_Hat6_min=1] pixelmon:ruby_helm
execute @a[score_TalkTrigger_min=57,score_TalkTrigger=57] ~ ~ ~ scoreboard players remove @s[score_Hat6_min=1] Hat6 1

execute @a[score_TalkTrigger_min=58,score_TalkTrigger=58] ~ ~ ~ give @s[score_Hat7_min=1] pixelmon:sapphire_helm
execute @a[score_TalkTrigger_min=58,score_TalkTrigger=58] ~ ~ ~ scoreboard players remove @s[score_Hat7_min=1] Hat7 1

execute @a[score_TalkTrigger_min=59,score_TalkTrigger=59] ~ ~ ~ give @s[score_Hat8_min=1] pixelmon:plasma_helm
execute @a[score_TalkTrigger_min=59,score_TalkTrigger=59] ~ ~ ~ scoreboard players remove @s[score_Hat8_min=1] Hat8 1

execute @a[score_TalkTrigger_min=60,score_TalkTrigger=60] ~ ~ ~ give @s[score_Hat9_min=1] pixelmon:galactic_helm
execute @a[score_TalkTrigger_min=60,score_TalkTrigger=60] ~ ~ ~ scoreboard players remove @s[score_Hat9_min=1] Hat9 1

execute @a[score_TalkTrigger_min=61,score_TalkTrigger=61] ~ ~ ~ give @s[score_Hat10_min=1] pixelmon:neo_plasma_helm
execute @a[score_TalkTrigger_min=61,score_TalkTrigger=61] ~ ~ ~ scoreboard players remove @s[score_Hat10_min=1] Hat10 1

execute @a[score_TalkTrigger_min=62,score_TalkTrigger=62] ~ ~ ~ give @s[score_Hat11_min=1] pixelmon:rocket_helm
execute @a[score_TalkTrigger_min=62,score_TalkTrigger=62] ~ ~ ~ scoreboard players remove @s[score_Hat11_min=1] Hat11 1

execute @a[score_TalkTrigger_min=63,score_TalkTrigger=63] ~ ~ ~ give @s[score_Hat12_min=1] pixelmon:fire_stone_helm
execute @a[score_TalkTrigger_min=63,score_TalkTrigger=63] ~ ~ ~ scoreboard players remove @s[score_Hat12_min=1] Hat12 1

execute @a[score_TalkTrigger_min=64,score_TalkTrigger=64] ~ ~ ~ give @s[score_Hat13_min=1] pixelmon:water_stone_helm
execute @a[score_TalkTrigger_min=64,score_TalkTrigger=64] ~ ~ ~ scoreboard players remove @s[score_Hat13_min=1] Hat13 1

execute @a[score_TalkTrigger_min=65,score_TalkTrigger=65] ~ ~ ~ give @s[score_Hat14_min=1] pixelmon:leaf_stone_helm
execute @a[score_TalkTrigger_min=65,score_TalkTrigger=65] ~ ~ ~ scoreboard players remove @s[score_Hat14_min=1] Hat14 1

execute @a[score_TalkTrigger_min=66,score_TalkTrigger=66] ~ ~ ~ give @s[score_Hat15_min=1] pixelmon:thunder_stone_helm
execute @a[score_TalkTrigger_min=66,score_TalkTrigger=66] ~ ~ ~ scoreboard players remove @s[score_Hat15_min=1] Hat15 1

execute @a[score_TalkTrigger_min=67,score_TalkTrigger=67] ~ ~ ~ give @s[score_Hat16_min=1] pixelmon:sun_stone_helm
execute @a[score_TalkTrigger_min=67,score_TalkTrigger=67] ~ ~ ~ scoreboard players remove @s[score_Hat16_min=1] Hat16 1

execute @a[score_TalkTrigger_min=68,score_TalkTrigger=68] ~ ~ ~ give @s[score_Hat17_min=1] pixelmon:moon_stone_helm
execute @a[score_TalkTrigger_min=68,score_TalkTrigger=68] ~ ~ ~ scoreboard players remove @s[score_Hat17_min=1] Hat17 1

execute @a[score_TalkTrigger_min=69,score_TalkTrigger=69] ~ ~ ~ give @s[score_Hat18_min=1] pixelmon:dawn_stone_helm
execute @a[score_TalkTrigger_min=69,score_TalkTrigger=69] ~ ~ ~ scoreboard players remove @s[score_Hat18_min=1] Hat18 1

execute @a[score_TalkTrigger_min=70,score_TalkTrigger=70] ~ ~ ~ give @s[score_Hat19_min=1] pixelmon:dusk_stone_helm
execute @a[score_TalkTrigger_min=70,score_TalkTrigger=70] ~ ~ ~ scoreboard players remove @s[score_Hat19_min=1] Hat19 1

execute @a[score_TalkTrigger_min=71,score_TalkTrigger=71] ~ ~ ~ give @s[score_Hat20_min=1] pixelmon:aluminium_helmet
execute @a[score_TalkTrigger_min=71,score_TalkTrigger=71] ~ ~ ~ scoreboard players remove @s[score_Hat20_min=1] Hat20 1

execute @a[score_TalkTrigger_min=72,score_TalkTrigger=72] ~ ~ ~ give @s[score_Shirt1_min=1] minecraft:leather_chestplate
execute @a[score_TalkTrigger_min=72,score_TalkTrigger=72] ~ ~ ~ scoreboard players remove @s[score_Shirt1_min=1] Shirt1 1

execute @a[score_TalkTrigger_min=73,score_TalkTrigger=73] ~ ~ ~ give @s[score_Shirt2_min=1] minecraft:chainmail_chestplate
execute @a[score_TalkTrigger_min=73,score_TalkTrigger=73] ~ ~ ~ scoreboard players remove @s[score_Shirt2_min=1] Shirt2 1

execute @a[score_TalkTrigger_min=74,score_TalkTrigger=74] ~ ~ ~ give @s[score_Shirt3_min=1] minecraft:iron_chestplate
execute @a[score_TalkTrigger_min=74,score_TalkTrigger=74] ~ ~ ~ scoreboard players remove @s[score_Shirt3_min=1] Shirt3 1

execute @a[score_TalkTrigger_min=75,score_TalkTrigger=75] ~ ~ ~ give @s[score_Shirt4_min=1] minecraft:diamond_chestplate
execute @a[score_TalkTrigger_min=75,score_TalkTrigger=75] ~ ~ ~ scoreboard players remove @s[score_Shirt4_min=1] Shirt4 1

execute @a[score_TalkTrigger_min=76,score_TalkTrigger=76] ~ ~ ~ give @s[score_Shirt5_min=1] minecraft:golden_chestplate
execute @a[score_TalkTrigger_min=76,score_TalkTrigger=76] ~ ~ ~ scoreboard players remove @s[score_Shirt5_min=1] Shirt5 1

execute @a[score_TalkTrigger_min=77,score_TalkTrigger=77] ~ ~ ~ give @s[score_Shirt6_min=1] pixelmon:ruby_plate
execute @a[score_TalkTrigger_min=77,score_TalkTrigger=77] ~ ~ ~ scoreboard players remove @s[score_Shirt6_min=1] Shirt6 1

execute @a[score_TalkTrigger_min=78,score_TalkTrigger=78] ~ ~ ~ give @s[score_Shirt7_min=1] pixelmon:sapphire_plate
execute @a[score_TalkTrigger_min=78,score_TalkTrigger=78] ~ ~ ~ scoreboard players remove @s[score_Shirt7_min=1] Shirt7 1

execute @a[score_TalkTrigger_min=79,score_TalkTrigger=79] ~ ~ ~ give @s[score_Shirt8_min=1] pixelmon:plasma_plate
execute @a[score_TalkTrigger_min=79,score_TalkTrigger=79] ~ ~ ~ scoreboard players remove @s[score_Shirt8_min=1] Shirt8 1

execute @a[score_TalkTrigger_min=81,score_TalkTrigger=80] ~ ~ ~ give @s[score_Shirt9_min=1] pixelmon:galactic_plate
execute @a[score_TalkTrigger_min=81,score_TalkTrigger=80] ~ ~ ~ scoreboard players remove @s[score_Shirt9_min=1] Shirt9 1

execute @a[score_TalkTrigger_min=82,score_TalkTrigger=81] ~ ~ ~ give @s[score_Shirt10_min=1] pixelmon:neo_plasma_plate
execute @a[score_TalkTrigger_min=82,score_TalkTrigger=81] ~ ~ ~ scoreboard players remove @s[score_Shirt10_min=1] Shirt10 1

execute @a[score_TalkTrigger_min=83,score_TalkTrigger=82] ~ ~ ~ give @s[score_Shirt11_min=1] pixelmon:rocket_plate
execute @a[score_TalkTrigger_min=83,score_TalkTrigger=82] ~ ~ ~ scoreboard players remove @s[score_Shirt11_min=1] Shirt11 1

execute @a[score_TalkTrigger_min=84,score_TalkTrigger=83] ~ ~ ~ give @s[score_Shirt12_min=1] pixelmon:fire_stone_plate
execute @a[score_TalkTrigger_min=84,score_TalkTrigger=83] ~ ~ ~ scoreboard players remove @s[score_Shirt12_min=1] Shirt12 1

execute @a[score_TalkTrigger_min=84,score_TalkTrigger=84] ~ ~ ~ give @s[score_Shirt13_min=1] pixelmon:water_stone_plate
execute @a[score_TalkTrigger_min=84,score_TalkTrigger=84] ~ ~ ~ scoreboard players remove @s[score_Shirt13_min=1] Shirt13 1

execute @a[score_TalkTrigger_min=85,score_TalkTrigger=85] ~ ~ ~ give @s[score_Shirt14_min=1] pixelmon:leaf_stone_plate
execute @a[score_TalkTrigger_min=85,score_TalkTrigger=85] ~ ~ ~ scoreboard players remove @s[score_Shirt14_min=1] Shirt14 1

execute @a[score_TalkTrigger_min=86,score_TalkTrigger=86] ~ ~ ~ give @s[score_Shirt15_min=1] pixelmon:thunder_stone_plate
execute @a[score_TalkTrigger_min=86,score_TalkTrigger=86] ~ ~ ~ scoreboard players remove @s[score_Shirt15_min=1] Shirt15 1

execute @a[score_TalkTrigger_min=87,score_TalkTrigger=87] ~ ~ ~ give @s[score_Shirt16_min=1] pixelmon:sun_stone_plate
execute @a[score_TalkTrigger_min=87,score_TalkTrigger=87] ~ ~ ~ scoreboard players remove @s[score_Shirt16_min=1] Shirt16 1

execute @a[score_TalkTrigger_min=88,score_TalkTrigger=88] ~ ~ ~ give @s[score_Shirt17_min=1] pixelmon:moon_stone_plate
execute @a[score_TalkTrigger_min=88,score_TalkTrigger=88] ~ ~ ~ scoreboard players remove @s[score_Shirt17_min=1] Shirt17 1

execute @a[score_TalkTrigger_min=89,score_TalkTrigger=89] ~ ~ ~ give @s[score_Shirt18_min=1] pixelmon:dawn_stone_plate
execute @a[score_TalkTrigger_min=89,score_TalkTrigger=89] ~ ~ ~ scoreboard players remove @s[score_Shirt18_min=1] Shirt18 1

execute @a[score_TalkTrigger_min=90,score_TalkTrigger=90] ~ ~ ~ give @s[score_Shirt19_min=1] pixelmon:dusk_stone_plate
execute @a[score_TalkTrigger_min=90,score_TalkTrigger=90] ~ ~ ~ scoreboard players remove @s[score_Shirt19_min=1] Shirt19 1

execute @a[score_TalkTrigger_min=91,score_TalkTrigger=91] ~ ~ ~ give @s[score_Shirt20_min=1] pixelmon:aluminium_chestplate
execute @a[score_TalkTrigger_min=91,score_TalkTrigger=91] ~ ~ ~ scoreboard players remove @s[score_Shirt20_min=1] Shirt20 1

execute @a[score_TalkTrigger_min=92,score_TalkTrigger=92] ~ ~ ~ give @s[score_Pants1_min=1] minecraft:leather_leggings
execute @a[score_TalkTrigger_min=92,score_TalkTrigger=92] ~ ~ ~ scoreboard players remove @s[score_Pants1_min=1] Pants1 1

execute @a[score_TalkTrigger_min=93,score_TalkTrigger=93] ~ ~ ~ give @s[score_Pants2_min=1] minecraft:chainmail_leggings
execute @a[score_TalkTrigger_min=93,score_TalkTrigger=93] ~ ~ ~ scoreboard players remove @s[score_Pants2_min=1] Pants2 1

execute @a[score_TalkTrigger_min=94,score_TalkTrigger=94] ~ ~ ~ give @s[score_Pants3_min=1] minecraft:iron_leggings
execute @a[score_TalkTrigger_min=94,score_TalkTrigger=94] ~ ~ ~ scoreboard players remove @s[score_Pants3_min=1] Pants3 1

execute @a[score_TalkTrigger_min=95,score_TalkTrigger=95] ~ ~ ~ give @s[score_Pants4_min=1] minecraft:diamond_leggings
execute @a[score_TalkTrigger_min=95,score_TalkTrigger=95] ~ ~ ~ scoreboard players remove @s[score_Pants4_min=1] Pants4 1

execute @a[score_TalkTrigger_min=96,score_TalkTrigger=96] ~ ~ ~ give @s[score_Pants5_min=1] minecraft:golden_leggings
execute @a[score_TalkTrigger_min=96,score_TalkTrigger=96] ~ ~ ~ scoreboard players remove @s[score_Pants5_min=1] Pants5 1

execute @a[score_TalkTrigger_min=97,score_TalkTrigger=97] ~ ~ ~ give @s[score_Pants6_min=1] pixelmon:ruby_legs
execute @a[score_TalkTrigger_min=97,score_TalkTrigger=97] ~ ~ ~ scoreboard players remove @s[score_Pants6_min=1] Pants6 1

execute @a[score_TalkTrigger_min=98,score_TalkTrigger=98] ~ ~ ~ give @s[score_Pants7_min=1] pixelmon:sapphire_legs
execute @a[score_TalkTrigger_min=98,score_TalkTrigger=98] ~ ~ ~ scoreboard players remove @s[score_Pants7_min=1] Pants7 1

execute @a[score_TalkTrigger_min=99,score_TalkTrigger=99] ~ ~ ~ give @s[score_Pants8_min=1] pixelmon:plasma_legs
execute @a[score_TalkTrigger_min=99,score_TalkTrigger=99] ~ ~ ~ scoreboard players remove @s[score_Pants8_min=1] Pants8 1

execute @a[score_TalkTrigger_min=100,score_TalkTrigger=100] ~ ~ ~ give @s[score_Pants9_min=1] pixelmon:galactic_legs
execute @a[score_TalkTrigger_min=100,score_TalkTrigger=100] ~ ~ ~ scoreboard players remove @s[score_Pants9_min=1] Pants9 1

execute @a[score_TalkTrigger_min=101,score_TalkTrigger=101] ~ ~ ~ give @s[score_Pants10_min=1] pixelmon:neo_plasma_legs
execute @a[score_TalkTrigger_min=101,score_TalkTrigger=101] ~ ~ ~ scoreboard players remove @s[score_Pants10_min=1] Pants10 1

execute @a[score_TalkTrigger_min=102,score_TalkTrigger=102] ~ ~ ~ give @s[score_Pants11_min=1] pixelmon:rocket_legs
execute @a[score_TalkTrigger_min=102,score_TalkTrigger=102] ~ ~ ~ scoreboard players remove @s[score_Pants11_min=1] Pants11 1

execute @a[score_TalkTrigger_min=103,score_TalkTrigger=103] ~ ~ ~ give @s[score_Pants12_min=1] pixelmon:fire_stone_legs
execute @a[score_TalkTrigger_min=103,score_TalkTrigger=103] ~ ~ ~ scoreboard players remove @s[score_Pants12_min=1] Pants12 1

execute @a[score_TalkTrigger_min=104,score_TalkTrigger=104] ~ ~ ~ give @s[score_Pants13_min=1] pixelmon:water_stone_legs
execute @a[score_TalkTrigger_min=104,score_TalkTrigger=104] ~ ~ ~ scoreboard players remove @s[score_Pants13_min=1] Pants13 1

execute @a[score_TalkTrigger_min=105,score_TalkTrigger=105] ~ ~ ~ give @s[score_Pants14_min=1] pixelmon:leaf_stone_legs
execute @a[score_TalkTrigger_min=105,score_TalkTrigger=105] ~ ~ ~ scoreboard players remove @s[score_Pants14_min=1] Pants14 1

execute @a[score_TalkTrigger_min=106,score_TalkTrigger=106] ~ ~ ~ give @s[score_Pants15_min=1] pixelmon:thunder_stone_legs
execute @a[score_TalkTrigger_min=106,score_TalkTrigger=106] ~ ~ ~ scoreboard players remove @s[score_Pants15_min=1] Pants15 1

execute @a[score_TalkTrigger_min=107,score_TalkTrigger=107] ~ ~ ~ give @s[score_Pants16_min=1] pixelmon:sun_stone_legs
execute @a[score_TalkTrigger_min=107,score_TalkTrigger=107] ~ ~ ~ scoreboard players remove @s[score_Pants16_min=1] Pants16 1

execute @a[score_TalkTrigger_min=108,score_TalkTrigger=108] ~ ~ ~ give @s[score_Pants17_min=1] pixelmon:moon_stone_legs
execute @a[score_TalkTrigger_min=108,score_TalkTrigger=108] ~ ~ ~ scoreboard players remove @s[score_Pants17_min=1] Pants17 1

execute @a[score_TalkTrigger_min=109,score_TalkTrigger=109] ~ ~ ~ give @s[score_Pants18_min=1] pixelmon:dawn_stone_legs
execute @a[score_TalkTrigger_min=109,score_TalkTrigger=109] ~ ~ ~ scoreboard players remove @s[score_Pants18_min=1] Pants18 1

execute @a[score_TalkTrigger_min=110,score_TalkTrigger=110] ~ ~ ~ give @s[score_Pants19_min=1] pixelmon:dusk_stone_legs
execute @a[score_TalkTrigger_min=110,score_TalkTrigger=110] ~ ~ ~ scoreboard players remove @s[score_Pants19_min=1] Pants19 1

execute @a[score_TalkTrigger_min=111,score_TalkTrigger=111] ~ ~ ~ give @s[score_Pants20_min=1] pixelmon:aluminium_leggings
execute @a[score_TalkTrigger_min=111,score_TalkTrigger=111] ~ ~ ~ scoreboard players remove @s[score_Pants20_min=1] Pants20 1

execute @a[score_TalkTrigger_min=112,score_TalkTrigger=112] ~ ~ ~ give @s[score_Shoes1_min=1] minecraft:leather_boots
execute @a[score_TalkTrigger_min=112,score_TalkTrigger=112] ~ ~ ~ scoreboard players remove @s Shoes1 1

execute @a[score_TalkTrigger_min=113,score_TalkTrigger=113] ~ ~ ~ give @s[score_Shoes2_min=1] minecraft:chainmail_boots
execute @a[score_TalkTrigger_min=113,score_TalkTrigger=113] ~ ~ ~ scoreboard players remove @s[score_Shoes2_min=1] Shoes2 1

execute @a[score_TalkTrigger_min=114,score_TalkTrigger=114] ~ ~ ~ give @s[score_Shoes3_min=1] minecraft:iron_boots
execute @a[score_TalkTrigger_min=114,score_TalkTrigger=114] ~ ~ ~ scoreboard players remove @s[score_Shoes3_min=1] Shoes3 1

execute @a[score_TalkTrigger_min=115,score_TalkTrigger=115] ~ ~ ~ give @s[score_Shoes4_min=1] minecraft:diamond_boots
execute @a[score_TalkTrigger_min=115,score_TalkTrigger=115] ~ ~ ~ scoreboard players remove @s[score_Shoes4_min=1] Shoes4 1

execute @a[score_TalkTrigger_min=116,score_TalkTrigger=116] ~ ~ ~ give @s[score_Shoes5_min=1] minecraft:golden_boots
execute @a[score_TalkTrigger_min=116,score_TalkTrigger=116] ~ ~ ~ scoreboard players remove @s[score_Shoes5_min=1] Shoes5 1

execute @a[score_TalkTrigger_min=117,score_TalkTrigger=117] ~ ~ ~ give @s[score_Shoes6_min=1] pixelmon:ruby_boots
execute @a[score_TalkTrigger_min=117,score_TalkTrigger=117] ~ ~ ~ scoreboard players remove @s[score_Shoes6_min=1] Shoes6 1

execute @a[score_TalkTrigger_min=118,score_TalkTrigger=118] ~ ~ ~ give @s[score_Shoes7_min=1] pixelmon:sapphire_boots
execute @a[score_TalkTrigger_min=118,score_TalkTrigger=118] ~ ~ ~ scoreboard players remove @s[score_Shoes7_min=1] Shoes7 1

execute @a[score_TalkTrigger_min=119,score_TalkTrigger=119] ~ ~ ~ give @s[score_Shoes8_min=1] pixelmon:plasma_boots
execute @a[score_TalkTrigger_min=119,score_TalkTrigger=119] ~ ~ ~ scoreboard players remove @s[score_Shoes8_min=1] Shoes8 1

execute @a[score_TalkTrigger_min=120,score_TalkTrigger=120] ~ ~ ~ give @s[score_Shoes9_min=1] pixelmon:galactic_boots
execute @a[score_TalkTrigger_min=120,score_TalkTrigger=120] ~ ~ ~ scoreboard players remove @s[score_Shoes9_min=1] Shoes9 1

execute @a[score_TalkTrigger_min=121,score_TalkTrigger=121] ~ ~ ~ give @s[score_Shoes10_min=1] pixelmon:neo_plasma_boots
execute @a[score_TalkTrigger_min=121,score_TalkTrigger=121] ~ ~ ~ scoreboard players remove @s[score_Shoes10_min=1] Shoes10 1

execute @a[score_TalkTrigger_min=122,score_TalkTrigger=122] ~ ~ ~ give @s[score_Shoes11_min=1] pixelmon:rocket_boots
execute @a[score_TalkTrigger_min=122,score_TalkTrigger=122] ~ ~ ~ scoreboard players remove @s[score_Shoes11_min=1] Shoes11 1

execute @a[score_TalkTrigger_min=123,score_TalkTrigger=123] ~ ~ ~ give @s[score_Shoes12_min=1] pixelmon:fire_stone_boots
execute @a[score_TalkTrigger_min=123,score_TalkTrigger=123] ~ ~ ~ scoreboard players remove @s[score_Shoes12_min=1] Shoes12 1

execute @a[score_TalkTrigger_min=124,score_TalkTrigger=124] ~ ~ ~ give @s[score_Shoes13_min=1] pixelmon:water_stone_boots
execute @a[score_TalkTrigger_min=124,score_TalkTrigger=124] ~ ~ ~ scoreboard players remove @s[score_Shoes13_min=1] Shoes13 1

execute @a[score_TalkTrigger_min=125,score_TalkTrigger=125] ~ ~ ~ give @s[score_Shoes14_min=1] pixelmon:leaf_stone_boots
execute @a[score_TalkTrigger_min=125,score_TalkTrigger=125] ~ ~ ~ scoreboard players remove @s[score_Shoes14_min=1] Shoes14 1

execute @a[score_TalkTrigger_min=126,score_TalkTrigger=126] ~ ~ ~ give @s[score_Shoes15_min=1] pixelmon:thunder_stone_boots
execute @a[score_TalkTrigger_min=126,score_TalkTrigger=126] ~ ~ ~ scoreboard players remove @s[score_Shoes15_min=1] Shoes15 1

execute @a[score_TalkTrigger_min=127,score_TalkTrigger=127] ~ ~ ~ give @s[score_Shoes16_min=1] pixelmon:sun_stone_boots
execute @a[score_TalkTrigger_min=127,score_TalkTrigger=127] ~ ~ ~ scoreboard players remove @s[score_Shoes16_min=1] Shoes16 1

execute @a[score_TalkTrigger_min=128,score_TalkTrigger=128] ~ ~ ~ give @s[score_Shoes17_min=1] pixelmon:moon_stone_boots
execute @a[score_TalkTrigger_min=128,score_TalkTrigger=128] ~ ~ ~ scoreboard players remove @s[score_Shoes17_min=1] Shoes17 1

execute @a[score_TalkTrigger_min=129,score_TalkTrigger=129] ~ ~ ~ give @s[score_Shoes18_min=1] pixelmon:dawn_stone_boots
execute @a[score_TalkTrigger_min=129,score_TalkTrigger=129] ~ ~ ~ scoreboard players remove @s[score_Shoes18_min=1] Shoes18 1

execute @a[score_TalkTrigger_min=130,score_TalkTrigger=130] ~ ~ ~ give @s[score_Shoes19_min=1] pixelmon:dusk_stone_boots
execute @a[score_TalkTrigger_min=130,score_TalkTrigger=130] ~ ~ ~ scoreboard players remove @s[score_Shoes19_min=1] Shoes19 1

execute @a[score_TalkTrigger_min=131,score_TalkTrigger=131] ~ ~ ~  give @s[score_Shoes20_min=1] pixelmon:aluminium_boots
execute @a[score_TalkTrigger_min=131,score_TalkTrigger=131] ~ ~ ~ scoreboard players remove @s[score_Shoes20_min=1] Shoes20 1








execute @a[score_TalkTrigger_min=52,score_TalkTrigger=131] ~ ~ ~ scoreboard players set @s TalkTrigger 0









#
