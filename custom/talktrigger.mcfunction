#Command to activate in tellraws:
#/trigger TalkTrigger set 1
#/scoreboard players enable @p TalkTrigger

#For NPCS & Statues
#/tedit add INTERACT /scoreboard players set @pl TalkTrigger 9

#Gender Pick
#Male
tellraw @a[score_TalkTrigger_min=12,score_TalkTrigger=12] {"text":"Your gender has been set to male.","italic":true,"color":"gray"}
scoreboard players set @a[score_TalkTrigger_min=12,score_TalkTrigger=12] Gender 1
execute @a[score_TalkTrigger_min=12,score_TalkTrigger=12] ~ ~ ~ /scoreboard players set @s TalkTrigger 0


#Female
tellraw @a[score_TalkTrigger_min=13,score_TalkTrigger=13] {"text":"Your gender has been set to female.","italic":true,"color":"gray"}
scoreboard players set @a[score_TalkTrigger_min=13,score_TalkTrigger=13] Gender 2
execute @a[score_TalkTrigger_min=13,score_TalkTrigger=13] ~ ~ ~ /scoreboard players set @s TalkTrigger 0



#Yveltal Activate
execute @a[score_TalkTrigger_min=1,score_TalkTrigger=1] ~ ~ ~ /scoreboard players set @s DialogueTrigger 131
execute @a[score_TalkTrigger_min=1,score_TalkTrigger=1] ~ ~ ~ /scoreboard players set @s TalkTrigger 0

#Xerneas Activate
execute @a[score_TalkTrigger_min=2,score_TalkTrigger=2] ~ ~ ~ /scoreboard players set @s DialogueTrigger 131
execute @a[score_TalkTrigger_min=2,score_TalkTrigger=2] ~ ~ ~ /scoreboard players set @s TalkTrigger 0


#Lumiose Gym Would you like to return to the lobby?
execute @a[score_TalkTrigger_min=3,score_TalkTrigger=3] ~ ~ ~ /tp @s -1823 100 -1703 0 ~
execute @a[score_TalkTrigger_min=3,score_TalkTrigger=3] ~ ~ ~ /scoreboard players set @s TalkTrigger 0

#Pokemon League RIGHT would you like to end your progress?
scoreboard players tag @a[c=1,score_TalkTrigger_min=4,score_TalkTrigger=4] remove Diantha
scoreboard players tag @a[c=1,score_TalkTrigger_min=4,score_TalkTrigger=4] remove Wikstrom
scoreboard players tag @a[c=1,score_TalkTrigger_min=4,score_TalkTrigger=4] remove Drasna
scoreboard players tag @a[c=1,score_TalkTrigger_min=4,score_TalkTrigger=4] remove Siebold
scoreboard players tag @a[c=1,score_TalkTrigger_min=4,score_TalkTrigger=4] remove Malva
tp @a[c=1,score_TalkTrigger_min=4,score_TalkTrigger=4] -1875 31 2107 0 ~

#Pokemon League LEFT would you like to end your progress?
scoreboard players tag @a[c=1,score_TalkTrigger_min=5,score_TalkTrigger=5] remove Diantha
scoreboard players tag @a[c=1,score_TalkTrigger_min=5,score_TalkTrigger=5] remove Wikstrom
scoreboard players tag @a[c=1,score_TalkTrigger_min=5,score_TalkTrigger=5] remove Drasna
scoreboard players tag @a[c=1,score_TalkTrigger_min=5,score_TalkTrigger=5] remove Siebold
scoreboard players tag @a[c=1,score_TalkTrigger_min=5,score_TalkTrigger=5] remove Malva
tp @a[c=1,score_TalkTrigger_min=5,score_TalkTrigger=5] -1939 31 2107 0 ~

execute @a[score_TalkTrigger_min=4,score_TalkTrigger=5] ~ ~ ~ /scoreboard players set @s TalkTrigger 0



#Starter Pokemon
#Chespin - Shauna picks Froakie, Serena picks Fennekin
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokegive @a[score_TalkTrigger_min=6,score_TalkTrigger=6,score_StarterPick=0] Chespin lvl:5 gr:7
execute @a[score_TalkTrigger_min=6,score_TalkTrigger=6,score_StarterPick=0] ~ ~ ~ /tellraw @s {"text":"An excellent choice!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=6,score_TalkTrigger=6,score_StarterPick=0] ~ ~ ~ /scoreboard players set @s StarterPick 1
execute @a[score_TalkTrigger_min=6,score_TalkTrigger=6,score_StarterPick_min=1] ~ ~ ~ /tp @s 443 108 1369 88 6
execute @a[score_TalkTrigger_min=6,score_TalkTrigger=6,score_StarterPick_min=1] ~ ~ ~ /scoreboard players set @s TalkTrigger 0




#Fennekin - Shauna picks Chespin, Serena picks Froakie
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokegive @a[score_TalkTrigger_min=7,score_TalkTrigger=7,score_StarterPick=0] Fennekin lvl:5 gr:7
execute @a[score_TalkTrigger_min=7,score_TalkTrigger=7,score_StarterPick=0] ~ ~ ~ /tellraw @s {"text":"An excellent choice!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=7,score_TalkTrigger=7,score_StarterPick=0] ~ ~ ~ /scoreboard players set @s StarterPick 2
execute @a[score_TalkTrigger_min=7,score_TalkTrigger=7,score_StarterPick_min=1] ~ ~ ~ /tp @s 443 108 1369 88 6
execute @a[score_TalkTrigger_min=7,score_TalkTrigger=7,score_StarterPick_min=1] ~ ~ ~ /scoreboard players set @s TalkTrigger 0



#Froakie - Shauna picks Fennekin, Serena picks Chespin
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokegive @a[score_TalkTrigger_min=8,score_TalkTrigger=8,score_StarterPick=0] Froakie lvl:5 gr:7
execute @a[score_TalkTrigger_min=8,score_TalkTrigger=8,score_StarterPick=0] ~ ~ ~ /tellraw @s {"text":"An excellent choice!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=8,score_TalkTrigger=8,score_StarterPick=0] ~ ~ ~ /scoreboard players set @s StarterPick 3
execute @a[score_TalkTrigger_min=8,score_TalkTrigger=8,score_StarterPick_min=1] ~ ~ ~ /tp @s 443 108 1369 88 6
execute @a[score_TalkTrigger_min=8,score_TalkTrigger=8,score_StarterPick_min=1] ~ ~ ~ /scoreboard players set @s TalkTrigger 0



#Bulbasaur
give @a[score_TalkTrigger_min=9,score_TalkTrigger=9,tag=!KantoStarters] pixelmon:venusaurite
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokegive @a[score_TalkTrigger_min=9,score_TalkTrigger=9,tag=!KantoStarters] Bulbasaur lvl:10 gr:7
scoreboard players tag @a[score_TalkTrigger_min=9,score_TalkTrigger=9,tag=!KantoStarters] add KantoStarters
scoreboard players set @a[score_TalkTrigger_min=9,score_TalkTrigger=9] DialogueTrigger 20
execute @a[score_TalkTrigger_min=9,score_TalkTrigger=9,tag=KantoStarters] ~ ~ ~ /tp @s -265 121.15 96 180 8
execute @a[score_TalkTrigger_min=9,score_TalkTrigger=9,tag=KantoStarters] ~ ~ ~ /scoreboard players set @s TalkTrigger 0



#Charmander
give @a[score_TalkTrigger_min=10,score_TalkTrigger=10,tag=!KantoStarters] pixelmon:charizardite_y
give @a[score_TalkTrigger_min=10,score_TalkTrigger=10,tag=!KantoStarters] pixelmon:charizardite_x
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokegive @a[score_TalkTrigger_min=10,score_TalkTrigger=10,tag=!KantoStarters] Charmander lvl:10 gr:7
scoreboard players tag @a[score_TalkTrigger_min=10,score_TalkTrigger=10,tag=!KantoStarters] add KantoStarters
scoreboard players set @a[score_TalkTrigger_min=10,score_TalkTrigger=10] DialogueTrigger 20
execute @a[score_TalkTrigger_min=10,score_TalkTrigger=10,tag=KantoStarters] ~ ~ ~ /tp @s -265 121.15 96 180 8
execute @a[score_TalkTrigger_min=10,score_TalkTrigger=10,tag=KantoStarters] ~ ~ ~ /scoreboard players set @s TalkTrigger 0




#Squirtle
give @a[score_TalkTrigger_min=11,score_TalkTrigger=11,tag=!KantoStarters] pixelmon:blastoisinite
execute @e[x=-683,y=100,z=1388,dy=3,type=armor_stand] ~ ~ ~ /pokegive @a[score_TalkTrigger_min=11,score_TalkTrigger=11,tag=!KantoStarters] Squirtle lvl:10 gr:7
scoreboard players tag @a[score_TalkTrigger_min=11,score_TalkTrigger=11,tag=!KantoStarters] add KantoStarters
scoreboard players set @a[score_TalkTrigger_min=11,score_TalkTrigger=11] DialogueTrigger 20
execute @a[score_TalkTrigger_min=11,score_TalkTrigger=11,tag=KantoStarters] ~ ~ ~ /tp @s -265 121.15 96 180 8
execute @a[score_TalkTrigger_min=11,score_TalkTrigger=11,tag=KantoStarters] ~ ~ ~ /scoreboard players set @s TalkTrigger 0






#Jaw Fossil - 14
give @a[score_TalkTrigger_min=14,score_TalkTrigger=14] pixelmon:jaw_fossil
scoreboard players set @a[score_TalkTrigger_min=14,score_TalkTrigger=14] DialogueTrigger 45
execute @a[score_TalkTrigger_min=14,score_TalkTrigger=14] ~ ~ ~ /scoreboard players set @s TalkTrigger 0


#Sail Fossil - 15
give @a[score_TalkTrigger_min=15,score_TalkTrigger=15] pixelmon:sail_fossil
scoreboard players set @a[score_TalkTrigger_min=15,score_TalkTrigger=15] DialogueTrigger 45
execute @a[score_TalkTrigger_min=15,score_TalkTrigger=15] ~ ~ ~ /scoreboard players set @s TalkTrigger 0


#Master Ball - 16
execute @a[score_TalkTrigger_min=16,score_TalkTrigger=16] ~ ~ ~ /scoreboard players set @s DialogueTrigger 91
execute @a[score_TalkTrigger_min=16,score_TalkTrigger=16] ~ ~ ~ /scoreboard players set @s TalkTrigger 0


#Big Nugget - 17
execute @a[score_TalkTrigger_min=17,score_TalkTrigger=17] ~ ~ ~ /scoreboard players set @s DialogueTrigger 92
execute @a[score_TalkTrigger_min=17,score_TalkTrigger=17] ~ ~ ~ /scoreboard players set @s TalkTrigger 0



#Red Button (Yveltal) - 18
execute @a[score_TalkTrigger_min=18,score_TalkTrigger=18,score_TalkTime=0,tag=Dialogue118] ~ ~ ~ /scoreboard players set @s Yveltal 1
execute @a[score_TalkTrigger_min=18,score_TalkTrigger=18,score_TalkTime=0,tag=Dialogue118] ~ ~ ~ /scoreboard players set @s Xerneas 0
execute @a[score_TalkTrigger_min=18,score_TalkTrigger=18,score_TalkTime=0,tag=Dialogue118] ~ ~ ~ /scoreboard players set @s DialogueTrigger 119
execute @a[score_TalkTrigger_min=18,score_TalkTrigger=18] ~ ~ ~ /scoreboard players set @s TalkTrigger 0


#Blue Button (Xerneas) - 19
execute @a[score_TalkTrigger_min=19,score_TalkTrigger=19,score_TalkTime=0,tag=Dialogue118] ~ ~ ~ /scoreboard players set @s Xerneas 1
execute @a[score_TalkTrigger_min=19,score_TalkTrigger=19,score_TalkTime=0,tag=Dialogue118] ~ ~ ~ /scoreboard players set @s Yveltal 0
execute @a[score_TalkTrigger_min=19,score_TalkTrigger=19,score_TalkTime=0,tag=Dialogue118] ~ ~ ~ /scoreboard players set @s DialogueTrigger 120
execute @a[score_TalkTrigger_min=19,score_TalkTrigger=19] ~ ~ ~ /scoreboard players set @s TalkTrigger 0




#Lumiose Press EIC Would you like to read the memo? [Yes] - 20
#testfor @a[x=-444,y=101,z=206,r=6,tag=Dialogue168]
#execute @a[x=-444,y=101,z=206,r=6,tag=Dialogue168,score_TalkTime=0] ~ ~ ~ scoreboard players set @s TalkTrigger 20
tellraw @a[score_TalkTrigger_min=20,score_TalkTrigger=20] ["",{"text":"<Editor-in-chief> Which part of the memo do you want to read?\n["},{"text":"The secret of the power","color":"red","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 22"}},{"text":"] \u0020 ["},{"text":"In the fog","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 23"}},{"text":"] \u0020 ["},{"text":"A nation-building...","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 24"}},{"text":"]"}]
execute @a[score_TalkTrigger_min=20,score_TalkTrigger=20] ~ ~ ~ /scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=20,score_TalkTrigger=20] ~ ~ ~ /scoreboard players set @s TalkTrigger 0



#Lumiose Press EIC Would you like to read the memo? [No] - 21
tellraw @a[score_TalkTrigger_min=21,score_TalkTrigger=21] {"text":"<Editor-in-chief> If you feel like reading my memo, come visit me anytime."}
execute @a[score_TalkTrigger_min=21,score_TalkTrigger=21] ~ ~ ~ /scoreboard players set @s TalkTrigger 0


#[The secret of the power] Volcanion Memo - 22
execute @a[score_TalkTrigger_min=22,score_TalkTrigger=22,score_TalkTime=0] ~ ~ ~ /scoreboard players tag @s remove Dialogue169
execute @a[score_TalkTrigger_min=22,score_TalkTrigger=22,score_TalkTime=0] ~ ~ ~ /scoreboard players set @s DialogueTrigger 169
execute @a[score_TalkTrigger_min=22,score_TalkTrigger=22,score_TalkTime_min=1] ~ ~ ~ /scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=22,score_TalkTrigger=22] ~ ~ ~ /scoreboard players set @s TalkTrigger 0


#[In the fog] Volcanion Memo - 23
execute @a[score_TalkTrigger_min=23,score_TalkTrigger=23,score_TalkTime=0] ~ ~ ~ /scoreboard players tag @s remove Dialogue170
execute @a[score_TalkTrigger_min=23,score_TalkTrigger=23,score_TalkTime=0] ~ ~ ~ /scoreboard players set @s DialogueTrigger 170
execute @a[score_TalkTrigger_min=23,score_TalkTrigger=23,score_TalkTime_min=1] ~ ~ ~ /scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=23,score_TalkTrigger=23] ~ ~ ~ /scoreboard players set @s TalkTrigger 0


#[A nation-building...] Volcanion Memo - 24
execute @a[score_TalkTrigger_min=24,score_TalkTrigger=24,score_TalkTime=0] ~ ~ ~ /scoreboard players tag @s remove Dialogue171
execute @a[score_TalkTrigger_min=24,score_TalkTrigger=24,score_TalkTime=0] ~ ~ ~ /scoreboard players set @s DialogueTrigger 171
execute @a[score_TalkTrigger_min=24,score_TalkTrigger=24,score_TalkTime_min=1] ~ ~ ~ /scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=24,score_TalkTrigger=24] ~ ~ ~ /scoreboard players set @s TalkTrigger 0


#Looker first dialogue, would you like to fight crime with me? - 25
execute @a[score_TalkTrigger_min=25,score_TalkTrigger=25,score_TalkTime=0] ~ ~ ~ /scoreboard players set @s DialogueTrigger 173
execute @a[score_TalkTrigger_min=25,score_TalkTrigger=25] ~ ~ ~ /scoreboard players set @s TalkTrigger 0


#---------------------------------------------------------------------------------------------------------------------------------------------------------------


#The Looker's Notebook - 26

execute @a[score_TalkTrigger_min=26,score_TalkTrigger=26,tag=!Dialogue173,score_TalkTime=0] ~ ~ ~ tellraw @s[tag=!Dialogue175] {"text":"It's the Looker's notebook!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=26,score_TalkTrigger=26,tag=Dialogue173,score_TalkTime=0] ~ ~ ~ tellraw @s[tag=!Dialogue175] ["",{"text":"LOOKER\u2019S NOTEBOOK","italic":true},{"text":"\nLooker Ticket Locations\n1. In the Pokémon Center next to Magenta Plaza\n2. In Centrico Plaza, in the tower illuminating the city\n3. On Vernal Avenue, at a shop selling medicines\n4. On North Boulevard, 1F, in a place where people rest\n5. On North Boulevard, 1F, in a place filled with art"}]

execute @a[score_TalkTrigger_min=26,score_TalkTrigger=26,tag=Dialogue176,score_TalkTime=0] ~ ~ ~ tellraw @s[tag=!Dialogue178] ["",{"text":"LOOKER\u2019S NOTEBOOK","italic":true},{"text":"\nClient: A rep from a Lumiose City mothers\u2019 group \nDetails: \u201cKids in Lumiose City seem to be spending a lot of time in back alleys recently.\u201d\n\u201cWhat are they up to in these shadowy, suspicious places? Inquiring mothers want to know!\u201d\n\u201cMy son is about to take the entrance exam for an elite school for future Ace Trainers!\u201d\n\u201cI can\u2019t have him do anything stupid and get a black mark on his academic record!\u201d\n\u201cYou must do something to make kids stop hanging out in those suspicious alleys!\u201d \nReward: Enough dough to last for a week"}]
execute @a[score_TalkTrigger_min=26,score_TalkTrigger=26,tag=Dialogue176,score_TalkTime=0] ~ ~ ~ tellraw @s[tag=Dialogue178] {"text":"It's the Looker's notebook!","italic":true,"color":"gray"}

execute @a[score_TalkTrigger_min=26,score_TalkTrigger=26] ~ ~ ~ /scoreboard players set @s TalkTrigger 0



execute @a[score_TalkTrigger_min=29,score_TalkTrigger=29,score_TalkTime=0] ~ ~ ~ tellraw @s {"text":"LOOKER\u2019S TOP-SECRET JOURNAL\nThe XXth day of the XXth month... I sense that my duties here in the Kalos region draw near their end. I will attempt to contact that one who is rumored to have ties to Team Flare. This will not come without cost, truly. Such a one does not do favors for nothing. I will need something that I can use to persuade such a fiend... Some bargaining chip..."}
execute @a[score_TalkTrigger_min=29,score_TalkTrigger=29] ~ ~ ~ /scoreboard players set @s TalkTrigger 0







#Looker Chapter 3 start, is something wrong with Emma [Yes] - 27
execute @a[score_TalkTrigger_min=27,score_TalkTrigger=27] ~ ~ ~ /scoreboard players set @s DialogueTrigger 180
execute @a[score_TalkTrigger_min=27,score_TalkTrigger=27] ~ ~ ~ /scoreboard players set @s TalkTrigger 0


#Looker Chapter 3 start, is something wrong with Emma [No] - 28
execute @a[score_TalkTrigger_min=28,score_TalkTrigger=28] ~ ~ ~ /scoreboard players set @s DialogueTrigger 181
execute @a[score_TalkTrigger_min=28,score_TalkTrigger=28] ~ ~ ~ /scoreboard players set @s TalkTrigger 0


#---------------------------------------------------------------------------------------------------------------------------------------------------------------


#Hotel Guests

#Removes dialogue tags if present
execute @a[score_TalkTrigger_min=30,score_TalkTrigger=35] ~ ~ ~ scoreboard players tag @s remove Dialogue218
execute @a[score_TalkTrigger_min=30,score_TalkTrigger=35] ~ ~ ~ scoreboard players tag @s remove Dialogue219
execute @a[score_TalkTrigger_min=30,score_TalkTrigger=35] ~ ~ ~ scoreboard players tag @s remove Dialogue220
execute @a[score_TalkTrigger_min=30,score_TalkTrigger=35] ~ ~ ~ scoreboard players tag @s remove Dialogue221
execute @a[score_TalkTrigger_min=30,score_TalkTrigger=35] ~ ~ ~ scoreboard players tag @s remove Dialogue222
execute @a[score_TalkTrigger_min=30,score_TalkTrigger=35] ~ ~ ~ scoreboard players tag @s remove Dialogue223
execute @a[score_TalkTrigger_min=30,score_TalkTrigger=35] ~ ~ ~ scoreboard players tag @s remove Dialogue224


#Maid - 30
execute @a[score_TalkTrigger_min=30,score_TalkTrigger=30,score_TalkTime_min=1] ~ ~ ~ scoreboard players set @s TalkTrigger 0
execute @a[score_TalkTrigger_min=30,score_TalkTrigger=30] ~ ~ ~ scoreboard players add @s[tag=!MaidCD] TrainerLoot102 1
execute @a[score_TalkTrigger_min=30,score_TalkTrigger=30] ~ ~ ~ scoreboard players tag @s add MaidCD
execute @a[score_TalkTrigger_min=30,score_TalkTrigger=30] ~ ~ ~ scoreboard players set @s DialogueTrigger 218
execute @a[score_TalkTrigger_min=30,score_TalkTrigger=30] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#Tourist - 31
execute @a[score_TalkTrigger_min=31,score_TalkTrigger=31,score_TalkTime_min=1] ~ ~ ~ scoreboard players set @s TalkTrigger 0
execute @a[score_TalkTrigger_min=31,score_TalkTrigger=31] ~ ~ ~ scoreboard players add @s[tag=!TouristCD] TrainerLoot103 1
execute @a[score_TalkTrigger_min=31,score_TalkTrigger=31] ~ ~ ~ scoreboard players tag @s add TouristCD
execute @a[score_TalkTrigger_min=31,score_TalkTrigger=31] ~ ~ ~ scoreboard players set @s DialogueTrigger 220
execute @a[score_TalkTrigger_min=31,score_TalkTrigger=31] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#Backpacker - 32
execute @a[score_TalkTrigger_min=32,score_TalkTrigger=32,score_TalkTime_min=1] ~ ~ ~ scoreboard players set @s TalkTrigger 0
execute @a[score_TalkTrigger_min=32,score_TalkTrigger=32] ~ ~ ~ scoreboard players add @s[tag=!BackpackerCD] TrainerLoot104 1
execute @a[score_TalkTrigger_min=32,score_TalkTrigger=32] ~ ~ ~ scoreboard players tag @s add BackpackerCD
execute @a[score_TalkTrigger_min=32,score_TalkTrigger=32] ~ ~ ~ scoreboard players set @s DialogueTrigger 219
execute @a[score_TalkTrigger_min=32,score_TalkTrigger=32] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#Hiker - 33
execute @a[score_TalkTrigger_min=33,score_TalkTrigger=33,score_TalkTime_min=1] ~ ~ ~ scoreboard players set @s TalkTrigger 0
execute @a[score_TalkTrigger_min=33,score_TalkTrigger=33] ~ ~ ~ scoreboard players add @s[tag=!HikerCD] TrainerLoot105 1
execute @a[score_TalkTrigger_min=33,score_TalkTrigger=33] ~ ~ ~ scoreboard players tag @s add HikerCD
execute @a[score_TalkTrigger_min=33,score_TalkTrigger=33] ~ ~ ~ scoreboard players set @s DialogueTrigger 222
execute @a[score_TalkTrigger_min=33,score_TalkTrigger=33] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#Waiter - 34
execute @a[score_TalkTrigger_min=34,score_TalkTrigger=34,score_TalkTime_min=1] ~ ~ ~ scoreboard players set @s TalkTrigger 0
execute @a[score_TalkTrigger_min=34,score_TalkTrigger=34] ~ ~ ~ scoreboard players add @s[tag=!WaiterCD] TrainerLoot106 1
execute @a[score_TalkTrigger_min=34,score_TalkTrigger=34] ~ ~ ~ scoreboard players tag @s add WaiterCD
execute @a[score_TalkTrigger_min=34,score_TalkTrigger=34] ~ ~ ~ scoreboard players set @s DialogueTrigger 223
execute @a[score_TalkTrigger_min=34,score_TalkTrigger=34] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#Madame - 35
execute @a[score_TalkTrigger_min=35,score_TalkTrigger=35,score_TalkTime_min=1] ~ ~ ~ scoreboard players set @s TalkTrigger 0
execute @a[score_TalkTrigger_min=35,score_TalkTrigger=35] ~ ~ ~ scoreboard players add @s[tag=!MadameCD] TrainerLoot107 1
execute @a[score_TalkTrigger_min=35,score_TalkTrigger=35] ~ ~ ~ scoreboard players tag @s add MadameCD
execute @a[score_TalkTrigger_min=35,score_TalkTrigger=35] ~ ~ ~ scoreboard players set @s DialogueTrigger 224
execute @a[score_TalkTrigger_min=35,score_TalkTrigger=35] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#Tourist info on trainers - 36-39
execute @a[score_TalkTrigger_min=36,score_TalkTrigger=39] ~ ~ ~ scoreboard players tag @s remove Dialogue221
execute @a[score_TalkTrigger_min=36,score_TalkTrigger=39] ~ ~ ~ scoreboard players set @s[score_TalkTime=0] DialogueTrigger 221


#---------------------------------------------------------------------------------------------------------------------------------------------------------------


#Clothing
function custom:clothinggive if @a[score_TalkTrigger_min=40,score_TalkTrigger=131]
execute @a[score_TalkTrigger_min=40,score_TalkTrigger=131] ~ ~ ~ scoreboard players set @s TalkTrigger 0



#Left in some growing room if more clothing were to be added


#---------------------------------------------------------------------------------------------------------------------------------------------------------------


#Xerosic's Notes
#200-208

#Xerosic's Notes #1
execute @a[score_TalkTrigger_min=200,score_TalkTrigger=200,score_TalkTime=0] ~ ~ ~ scoreboard players tag @s remove Dialogue202
execute @a[score_TalkTrigger_min=200,score_TalkTrigger=200,score_TalkTime=0] ~ ~ ~ scoreboard players set @s DialogueTrigger 202
execute @a[score_TalkTrigger_min=200,score_TalkTrigger=200] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#Xerosic's Notes #2
execute @a[score_TalkTrigger_min=201,score_TalkTrigger=201,score_TalkTime=0] ~ ~ ~ scoreboard players tag @s remove Dialogue203
execute @a[score_TalkTrigger_min=201,score_TalkTrigger=201,score_TalkTime=0] ~ ~ ~ scoreboard players set @s DialogueTrigger 203
execute @a[score_TalkTrigger_min=201,score_TalkTrigger=201] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#Xerosic's Notes #3
execute @a[score_TalkTrigger_min=202,score_TalkTrigger=202,score_TalkTime=0] ~ ~ ~ scoreboard players tag @s remove Dialogue204
execute @a[score_TalkTrigger_min=202,score_TalkTrigger=202,score_TalkTime=0] ~ ~ ~ scoreboard players set @s DialogueTrigger 204
execute @a[score_TalkTrigger_min=202,score_TalkTrigger=202] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#Xerosic's Notes #4
execute @a[score_TalkTrigger_min=203,score_TalkTrigger=203,score_TalkTime=0] ~ ~ ~ scoreboard players tag @s remove Dialogue205
execute @a[score_TalkTrigger_min=203,score_TalkTrigger=203,score_TalkTime=0] ~ ~ ~ scoreboard players set @s DialogueTrigger 205
execute @a[score_TalkTrigger_min=203,score_TalkTrigger=203] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#Xerosic's Notes #5
execute @a[score_TalkTrigger_min=204,score_TalkTrigger=204,score_TalkTime=0] ~ ~ ~ scoreboard players tag @s remove Dialogue206
execute @a[score_TalkTrigger_min=204,score_TalkTrigger=204,score_TalkTime=0] ~ ~ ~ scoreboard players set @s DialogueTrigger 206
execute @a[score_TalkTrigger_min=204,score_TalkTrigger=204] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#Xerosic's Notes #6
execute @a[score_TalkTrigger_min=205,score_TalkTrigger=205,score_TalkTime=0] ~ ~ ~ scoreboard players tag @s remove Dialogue207
execute @a[score_TalkTrigger_min=205,score_TalkTrigger=205,score_TalkTime=0] ~ ~ ~ scoreboard players set @s DialogueTrigger 207
execute @a[score_TalkTrigger_min=205,score_TalkTrigger=205] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#Poke loot statue over object
#/tedit add INTERACT /scoreboard players set @pl TalkTrigger 206
execute @a[score_TalkTrigger_min=206,score_TalkTrigger=206,score_TalkTime=0] ~ ~ ~ tellraw @s {"text":"It’s someone’s Poké Ball.","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=206,score_TalkTrigger=206] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#Emma's Looker Bureau notebook
#/tedit add INTERACT /scoreboard players set @pl TalkTrigger 207
execute @a[score_TalkTrigger_min=207,score_TalkTrigger=207,score_TalkTime=0] ~ ~ ~ tellraw @s {"text":"It is an empty notebook.","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=207,score_TalkTrigger=207] ~ ~ ~ scoreboard players set @s TalkTrigger 0



#---------------------------------------------------------------------------------------------------------------------------------------------------------------


#Battle Maison Menus
execute @a[score_TalkTrigger_min=208,score_TalkTrigger=208,score_TalkTime=0] ~ ~ ~ scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=208,score_TalkTrigger=208,score_TalkTime=0] ~ ~ ~ tellraw @s[score_BattleMaison=0] ["",{"text":"Welcome to the Battle Maison. What would you like to do today?\n["},{"text":"Challenge","color":"red","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 214"}},{"text":"] \u0020 \u0020["},{"text":"Info","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 219"}},{"text":"] \u0020 \u0020["},{"text":"Change Music","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 209"}},{"text":"]"}]
execute @a[score_TalkTrigger_min=208,score_TalkTrigger=208,score_TalkTime=0] ~ ~ ~ tellraw @s[score_BattleMaison_min=1] ["",{"text":"Welcome to the Battle Maison. What would you like to do today?\n["},{"text":"Challenge","color":"red","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 214"}},{"text":"]    ["},{"text":"Info","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 219"}},{"text":"]    ["},{"text":"Change Music","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 209"}},{"text":"]   ["},{"text":"End Challenge","color":"gold","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 222"}},{"text":"]"}]
execute @a[score_TalkTrigger_min=208,score_TalkTrigger=208] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#Change Music
#209 - Prompt
execute @a[score_TalkTrigger_min=209,score_TalkTrigger=209,score_TalkTime=0] ~ ~ ~ scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=209,score_TalkTrigger=209,score_TalkTime=0] ~ ~ ~ tellraw @s[tag=Music1] ["",{"text":"The current selection is Music 1. Which music would you like to choose?\n["},{"text":"Music 1","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 210"},"hoverEvent":{"action":"show_text","value":"Regular Trainer battle music"}},{"text":"]  ["},{"text":"Music 2","color":"green","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 211"},"hoverEvent":{"action":"show_text","value":"Wild Pokemon battle music"}},{"text":"]  ["},{"text":"Music 3","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 212"},"hoverEvent":{"action":"show_text","value":"Friend battle music"}},{"text":"]  ["},{"text":"Music 4","color":"gold","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 213"},"hoverEvent":{"action":"show_text","value":"Gym Leader battle music"}},{"text":"]  ["},{"text":"Music 5","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 223"},"hoverEvent":{"action":"show_text","value":"Korrina Successor battle music"}},{"text":"]  ["},{"text":"Music 6","color":"red","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 224"},"hoverEvent":{"action":"show_text","value":"Lysandre battle music"}},{"text":"]  ["},{"text":"Music 7","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 225"},"hoverEvent":{"action":"show_text","value":"World Championship battle music"}},{"text":"] "}]
execute @a[score_TalkTrigger_min=209,score_TalkTrigger=209,score_TalkTime=0] ~ ~ ~ tellraw @s[tag=Music2] ["",{"text":"The current selection is Music 2. Which music would you like to choose?\n["},{"text":"Music 1","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 210"},"hoverEvent":{"action":"show_text","value":"Regular Trainer battle music"}},{"text":"]  ["},{"text":"Music 2","color":"green","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 211"},"hoverEvent":{"action":"show_text","value":"Wild Pokemon battle music"}},{"text":"]  ["},{"text":"Music 3","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 212"},"hoverEvent":{"action":"show_text","value":"Friend battle music"}},{"text":"]  ["},{"text":"Music 4","color":"gold","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 213"},"hoverEvent":{"action":"show_text","value":"Gym Leader battle music"}},{"text":"]  ["},{"text":"Music 5","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 223"},"hoverEvent":{"action":"show_text","value":"Korrina Successor battle music"}},{"text":"]  ["},{"text":"Music 6","color":"red","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 224"},"hoverEvent":{"action":"show_text","value":"Lysandre battle music"}},{"text":"]  ["},{"text":"Music 7","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 225"},"hoverEvent":{"action":"show_text","value":"World Championship battle music"}},{"text":"] "}]
execute @a[score_TalkTrigger_min=209,score_TalkTrigger=209,score_TalkTime=0] ~ ~ ~ tellraw @s[tag=Music3] ["",{"text":"The current selection is Music 3. Which music would you like to choose?\n["},{"text":"Music 1","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 210"},"hoverEvent":{"action":"show_text","value":"Regular Trainer battle music"}},{"text":"]  ["},{"text":"Music 2","color":"green","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 211"},"hoverEvent":{"action":"show_text","value":"Wild Pokemon battle music"}},{"text":"]  ["},{"text":"Music 3","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 212"},"hoverEvent":{"action":"show_text","value":"Friend battle music"}},{"text":"]  ["},{"text":"Music 4","color":"gold","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 213"},"hoverEvent":{"action":"show_text","value":"Gym Leader battle music"}},{"text":"]  ["},{"text":"Music 5","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 223"},"hoverEvent":{"action":"show_text","value":"Korrina Successor battle music"}},{"text":"]  ["},{"text":"Music 6","color":"red","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 224"},"hoverEvent":{"action":"show_text","value":"Lysandre battle music"}},{"text":"]  ["},{"text":"Music 7","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 225"},"hoverEvent":{"action":"show_text","value":"World Championship battle music"}},{"text":"] "}]
execute @a[score_TalkTrigger_min=209,score_TalkTrigger=209,score_TalkTime=0] ~ ~ ~ tellraw @s[tag=Music4] ["",{"text":"The current selection is Music 4. Which music would you like to choose?\n["},{"text":"Music 1","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 210"},"hoverEvent":{"action":"show_text","value":"Regular Trainer battle music"}},{"text":"]  ["},{"text":"Music 2","color":"green","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 211"},"hoverEvent":{"action":"show_text","value":"Wild Pokemon battle music"}},{"text":"]  ["},{"text":"Music 3","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 212"},"hoverEvent":{"action":"show_text","value":"Friend battle music"}},{"text":"]  ["},{"text":"Music 4","color":"gold","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 213"},"hoverEvent":{"action":"show_text","value":"Gym Leader battle music"}},{"text":"]  ["},{"text":"Music 5","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 223"},"hoverEvent":{"action":"show_text","value":"Korrina Successor battle music"}},{"text":"]  ["},{"text":"Music 6","color":"red","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 224"},"hoverEvent":{"action":"show_text","value":"Lysandre battle music"}},{"text":"]  ["},{"text":"Music 7","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 225"},"hoverEvent":{"action":"show_text","value":"World Championship battle music"}},{"text":"] "}]
execute @a[score_TalkTrigger_min=209,score_TalkTrigger=209,score_TalkTime=0] ~ ~ ~ tellraw @s[tag=Music5] ["",{"text":"The current selection is Music 5. Which music would you like to choose?\n["},{"text":"Music 1","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 210"},"hoverEvent":{"action":"show_text","value":"Regular Trainer battle music"}},{"text":"]  ["},{"text":"Music 2","color":"green","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 211"},"hoverEvent":{"action":"show_text","value":"Wild Pokemon battle music"}},{"text":"]  ["},{"text":"Music 3","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 212"},"hoverEvent":{"action":"show_text","value":"Friend battle music"}},{"text":"]  ["},{"text":"Music 4","color":"gold","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 213"},"hoverEvent":{"action":"show_text","value":"Gym Leader battle music"}},{"text":"]  ["},{"text":"Music 5","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 223"},"hoverEvent":{"action":"show_text","value":"Korrina Successor battle music"}},{"text":"]  ["},{"text":"Music 6","color":"red","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 224"},"hoverEvent":{"action":"show_text","value":"Lysandre battle music"}},{"text":"]  ["},{"text":"Music 7","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 225"},"hoverEvent":{"action":"show_text","value":"World Championship battle music"}},{"text":"] "}]
execute @a[score_TalkTrigger_min=209,score_TalkTrigger=209,score_TalkTime=0] ~ ~ ~ tellraw @s[tag=Music6] ["",{"text":"The current selection is Music 6. Which music would you like to choose?\n["},{"text":"Music 1","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 210"},"hoverEvent":{"action":"show_text","value":"Regular Trainer battle music"}},{"text":"]  ["},{"text":"Music 2","color":"green","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 211"},"hoverEvent":{"action":"show_text","value":"Wild Pokemon battle music"}},{"text":"]  ["},{"text":"Music 3","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 212"},"hoverEvent":{"action":"show_text","value":"Friend battle music"}},{"text":"]  ["},{"text":"Music 4","color":"gold","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 213"},"hoverEvent":{"action":"show_text","value":"Gym Leader battle music"}},{"text":"]  ["},{"text":"Music 5","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 223"},"hoverEvent":{"action":"show_text","value":"Korrina Successor battle music"}},{"text":"]  ["},{"text":"Music 6","color":"red","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 224"},"hoverEvent":{"action":"show_text","value":"Lysandre battle music"}},{"text":"]  ["},{"text":"Music 7","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 225"},"hoverEvent":{"action":"show_text","value":"World Championship battle music"}},{"text":"] "}]
execute @a[score_TalkTrigger_min=209,score_TalkTrigger=209,score_TalkTime=0] ~ ~ ~ tellraw @s[tag=Music7] ["",{"text":"The current selection is Music 7. Which music would you like to choose?\n["},{"text":"Music 1","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 210"},"hoverEvent":{"action":"show_text","value":"Regular Trainer battle music"}},{"text":"]  ["},{"text":"Music 2","color":"green","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 211"},"hoverEvent":{"action":"show_text","value":"Wild Pokemon battle music"}},{"text":"]  ["},{"text":"Music 3","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 212"},"hoverEvent":{"action":"show_text","value":"Friend battle music"}},{"text":"]  ["},{"text":"Music 4","color":"gold","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 213"},"hoverEvent":{"action":"show_text","value":"Gym Leader battle music"}},{"text":"]  ["},{"text":"Music 5","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 223"},"hoverEvent":{"action":"show_text","value":"Korrina Successor battle music"}},{"text":"]  ["},{"text":"Music 6","color":"red","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 224"},"hoverEvent":{"action":"show_text","value":"Lysandre battle music"}},{"text":"]  ["},{"text":"Music 7","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 225"},"hoverEvent":{"action":"show_text","value":"World Championship battle music"}},{"text":"] "}]
execute @a[score_TalkTrigger_min=209,score_TalkTrigger=209] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#210 - Music 1 enable (Regular Trainer battle music)
execute @a[score_TalkTrigger_min=210,score_TalkTrigger=210] ~ ~ ~ scoreboard players tag @s add Music1
execute @a[score_TalkTrigger_min=210,score_TalkTrigger=210] ~ ~ ~ scoreboard players tag @s remove Music2
execute @a[score_TalkTrigger_min=210,score_TalkTrigger=210] ~ ~ ~ scoreboard players tag @s remove Music3
execute @a[score_TalkTrigger_min=210,score_TalkTrigger=210] ~ ~ ~ scoreboard players tag @s remove Music4
execute @a[score_TalkTrigger_min=210,score_TalkTrigger=210] ~ ~ ~ scoreboard players tag @s remove Music5
execute @a[score_TalkTrigger_min=210,score_TalkTrigger=210] ~ ~ ~ scoreboard players tag @s remove Music6
execute @a[score_TalkTrigger_min=210,score_TalkTrigger=210] ~ ~ ~ scoreboard players tag @s remove Music7
execute @a[score_TalkTrigger_min=210,score_TalkTrigger=210] ~ ~ ~ tellraw @a {"text":"The music has been set."}
execute @a[score_TalkTrigger_min=210,score_TalkTrigger=210] ~ ~ ~ scoreboard players set @s TalkTrigger 0

#211 - Music 2 enable (Wild Pokemon battle music)
execute @a[score_TalkTrigger_min=211,score_TalkTrigger=211] ~ ~ ~ scoreboard players tag @s remove Music1
execute @a[score_TalkTrigger_min=211,score_TalkTrigger=211] ~ ~ ~ scoreboard players tag @s add Music2
execute @a[score_TalkTrigger_min=211,score_TalkTrigger=211] ~ ~ ~ scoreboard players tag @s remove Music3
execute @a[score_TalkTrigger_min=211,score_TalkTrigger=211] ~ ~ ~ scoreboard players tag @s remove Music4
execute @a[score_TalkTrigger_min=211,score_TalkTrigger=211] ~ ~ ~ scoreboard players tag @s remove Music5
execute @a[score_TalkTrigger_min=211,score_TalkTrigger=211] ~ ~ ~ scoreboard players tag @s remove Music6
execute @a[score_TalkTrigger_min=211,score_TalkTrigger=211] ~ ~ ~ scoreboard players tag @s remove Music7
execute @a[score_TalkTrigger_min=211,score_TalkTrigger=211] ~ ~ ~ tellraw @a {"text":"The music has been set."}
execute @a[score_TalkTrigger_min=211,score_TalkTrigger=211] ~ ~ ~ scoreboard players set @s TalkTrigger 0

#212 - Music 3 enable (Friend battle music)
execute @a[score_TalkTrigger_min=212,score_TalkTrigger=212] ~ ~ ~ scoreboard players tag @s remove Music1
execute @a[score_TalkTrigger_min=212,score_TalkTrigger=212] ~ ~ ~ scoreboard players tag @s remove Music2
execute @a[score_TalkTrigger_min=212,score_TalkTrigger=212] ~ ~ ~ scoreboard players tag @s add Music3
execute @a[score_TalkTrigger_min=212,score_TalkTrigger=212] ~ ~ ~ scoreboard players tag @s remove Music4
execute @a[score_TalkTrigger_min=212,score_TalkTrigger=212] ~ ~ ~ scoreboard players tag @s remove Music5
execute @a[score_TalkTrigger_min=212,score_TalkTrigger=212] ~ ~ ~ scoreboard players tag @s remove Music6
execute @a[score_TalkTrigger_min=212,score_TalkTrigger=212] ~ ~ ~ scoreboard players tag @s remove Music7
execute @a[score_TalkTrigger_min=212,score_TalkTrigger=212] ~ ~ ~ tellraw @a {"text":"The music has been set."}
execute @a[score_TalkTrigger_min=212,score_TalkTrigger=212] ~ ~ ~ scoreboard players set @s TalkTrigger 0

#213 - Music 4 enable (Gym Leader battle music)
execute @a[score_TalkTrigger_min=213,score_TalkTrigger=213] ~ ~ ~ scoreboard players tag @s remove Music1
execute @a[score_TalkTrigger_min=213,score_TalkTrigger=213] ~ ~ ~ scoreboard players tag @s remove Music2
execute @a[score_TalkTrigger_min=213,score_TalkTrigger=213] ~ ~ ~ scoreboard players tag @s remove Music3
execute @a[score_TalkTrigger_min=213,score_TalkTrigger=213] ~ ~ ~ scoreboard players tag @s add Music4
execute @a[score_TalkTrigger_min=213,score_TalkTrigger=213] ~ ~ ~ scoreboard players tag @s remove Music5
execute @a[score_TalkTrigger_min=213,score_TalkTrigger=213] ~ ~ ~ scoreboard players tag @s remove Music6
execute @a[score_TalkTrigger_min=213,score_TalkTrigger=213] ~ ~ ~ scoreboard players tag @s remove Music7
execute @a[score_TalkTrigger_min=213,score_TalkTrigger=213] ~ ~ ~ tellraw @a {"text":"The music has been set."}
execute @a[score_TalkTrigger_min=213,score_TalkTrigger=213] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#223 - Music 5 enable (Korrina Successor battle music)
execute @a[score_TalkTrigger_min=223,score_TalkTrigger=223] ~ ~ ~ scoreboard players tag @s remove Music1
execute @a[score_TalkTrigger_min=223,score_TalkTrigger=223] ~ ~ ~ scoreboard players tag @s remove Music2
execute @a[score_TalkTrigger_min=223,score_TalkTrigger=223] ~ ~ ~ scoreboard players tag @s remove Music3
execute @a[score_TalkTrigger_min=223,score_TalkTrigger=223] ~ ~ ~ scoreboard players tag @s remove Music4
execute @a[score_TalkTrigger_min=223,score_TalkTrigger=223] ~ ~ ~ scoreboard players tag @s add Music5
execute @a[score_TalkTrigger_min=223,score_TalkTrigger=223] ~ ~ ~ scoreboard players tag @s remove Music6
execute @a[score_TalkTrigger_min=223,score_TalkTrigger=223] ~ ~ ~ scoreboard players tag @s remove Music7
execute @a[score_TalkTrigger_min=223,score_TalkTrigger=223] ~ ~ ~ tellraw @a {"text":"The music has been set."}
execute @a[score_TalkTrigger_min=223,score_TalkTrigger=223] ~ ~ ~ scoreboard players set @s TalkTrigger 0

#224 - Music 6 enable (Lysandre battle music)
execute @a[score_TalkTrigger_min=224,score_TalkTrigger=224] ~ ~ ~ scoreboard players tag @s remove Music1
execute @a[score_TalkTrigger_min=224,score_TalkTrigger=224] ~ ~ ~ scoreboard players tag @s remove Music2
execute @a[score_TalkTrigger_min=224,score_TalkTrigger=224] ~ ~ ~ scoreboard players tag @s remove Music3
execute @a[score_TalkTrigger_min=224,score_TalkTrigger=224] ~ ~ ~ scoreboard players tag @s remove Music4
execute @a[score_TalkTrigger_min=224,score_TalkTrigger=224] ~ ~ ~ scoreboard players tag @s remove Music5
execute @a[score_TalkTrigger_min=224,score_TalkTrigger=224] ~ ~ ~ scoreboard players tag @s add Music6
execute @a[score_TalkTrigger_min=224,score_TalkTrigger=224] ~ ~ ~ scoreboard players tag @s remove Music7
execute @a[score_TalkTrigger_min=224,score_TalkTrigger=224] ~ ~ ~ tellraw @a {"text":"The music has been set."}
execute @a[score_TalkTrigger_min=224,score_TalkTrigger=224] ~ ~ ~ scoreboard players set @s TalkTrigger 0

#225 - Music 7 enable (World Championship battle music)
execute @a[score_TalkTrigger_min=225,score_TalkTrigger=225] ~ ~ ~ scoreboard players tag @s remove Music1
execute @a[score_TalkTrigger_min=225,score_TalkTrigger=225] ~ ~ ~ scoreboard players tag @s remove Music2
execute @a[score_TalkTrigger_min=225,score_TalkTrigger=225] ~ ~ ~ scoreboard players tag @s remove Music3
execute @a[score_TalkTrigger_min=225,score_TalkTrigger=225] ~ ~ ~ scoreboard players tag @s remove Music4
execute @a[score_TalkTrigger_min=225,score_TalkTrigger=225] ~ ~ ~ scoreboard players tag @s remove Music5
execute @a[score_TalkTrigger_min=225,score_TalkTrigger=225] ~ ~ ~ scoreboard players tag @s remove Music6
execute @a[score_TalkTrigger_min=225,score_TalkTrigger=225] ~ ~ ~ scoreboard players tag @s add Music7
execute @a[score_TalkTrigger_min=225,score_TalkTrigger=225] ~ ~ ~ tellraw @a {"text":"The music has been set."}
execute @a[score_TalkTrigger_min=225,score_TalkTrigger=225] ~ ~ ~ scoreboard players set @s TalkTrigger 0

#226 -



#214 - Challenge Prompt

#No supers unlocked
execute @a[score_TalkTrigger_min=214,score_TalkTrigger=214] ~ ~ ~ scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=214,score_TalkTrigger=214,tag=!SingleSuper] ~ ~ ~ tellraw @s[tag=!DoubleSuper] ["",{"text":"Which battle format would you like to choose?\n["},{"text":"Single Battle","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 215"},"hoverEvent":{"action":"show_text","value":"Any above Lv. 50 will be set to Lv. 50. Three Pokémon may enter. Pokémon limitations exist. Item limitations exist."}},{"text":"]    ["},{"text":"Double Battle","color":"green","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 216"},"hoverEvent":{"action":"show_text","value":"Any above Lv. 50 will be set to Lv. 50. Four Pokémon may enter. Pokémon limitations exist. Item limitations exist."}},{"text":"]"}]


#Single Supers unlocked
execute @a[score_TalkTrigger_min=214,score_TalkTrigger=214,tag=SingleSuper] ~ ~ ~ tellraw @s[tag=!DoubleSuper] ["",{"text":"Which battle format would you like to choose?\n["},{"text":"Single Battle","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 215"},"hoverEvent":{"action":"show_text","value":"Any above Lv. 50 will be set to Lv. 50. Three Pokémon may enter. Pokémon limitations exist. Item limitations exist."}},{"text":"]    ["},{"text":"Double Battle","color":"green","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 216"},"hoverEvent":{"action":"show_text","value":"Any above Lv. 50 will be set to Lv. 50. Four Pokémon may enter. Pokémon limitations exist. Item limitations exist."}},{"text":"]   ["},{"text":"Single Super","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 217"},"hoverEvent":{"action":"show_text","value":"Any above Lv. 50 will be set to Lv. 50. Three Pokémon may enter. Pokémon limitations exist. Item limitations exist."}},{"text":"]"}]

#Double Supers unlocked
execute @a[score_TalkTrigger_min=214,score_TalkTrigger=214,tag=!SingleSuper] ~ ~ ~ tellraw @s[tag=DoubleSuper] ["",{"text":"Which battle format would you like to choose?\n["},{"text":"Single Battle","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 215"},"hoverEvent":{"action":"show_text","value":"Any above Lv. 50 will be set to Lv. 50. Three Pokémon may enter. Pokémon limitations exist. Item limitations exist."}},{"text":"]    ["},{"text":"Double Battle","color":"green","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 216"},"hoverEvent":{"action":"show_text","value":"Any above Lv. 50 will be set to Lv. 50. Four Pokémon may enter. Pokémon limitations exist. Item limitations exist."}},{"text":"]   ["},{"text":"Double Super","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 218"},"hoverEvent":{"action":"show_text","value":"Any above Lv. 50 will be set to Lv. 50. Four Pokémon may enter. Pokémon limitations exist. Item limitations exist."}},{"text":"]"}]

#Both supers unlocked
execute @a[score_TalkTrigger_min=214,score_TalkTrigger=214,tag=SingleSuper] ~ ~ ~ tellraw @s[tag=DoubleSuper] ["",{"text":"Which battle format would you like to choose?\n["},{"text":"Single Battle","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 215"},"hoverEvent":{"action":"show_text","value":"Any above Lv. 50 will be set to Lv. 50. Three Pokémon may enter. Pokémon limitations exist. Item limitations exist."}},{"text":"]    ["},{"text":"Double Battle","color":"green","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 216"},"hoverEvent":{"action":"show_text","value":"Any above Lv. 50 will be set to Lv. 50. Four Pokémon may enter. Pokémon limitations exist. Item limitations exist."}},{"text":"]   ["},{"text":"Single Super","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 217"},"hoverEvent":{"action":"show_text","value":"Any above Lv. 50 will be set to Lv. 50. Three Pokémon may enter. Pokémon limitations exist. Item limitations exist."}},{"text":"]   ["},{"text":"Double Super","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 218"},"hoverEvent":{"action":"show_text","value":"Any above Lv. 50 will be set to Lv. 50. Four Pokémon may enter. Pokémon limitations exist. Item limitations exist."}},{"text":"]"}]
execute @a[score_TalkTrigger_min=214,score_TalkTrigger=214] ~ ~ ~ scoreboard players set @s TalkTrigger 0




#215 - Single Battle
execute @a[score_TalkTrigger_min=215,score_TalkTrigger=215] ~ ~ ~ tellraw @s {"text":"Your challenge has been registered. Please step on the stage to begin!","color":"white"}
execute @a[score_TalkTrigger_min=215,score_TalkTrigger=215] ~ ~ ~ scoreboard players set @s BattleMaison 1
execute @a[score_TalkTrigger_min=215,score_TalkTrigger=215] ~ ~ ~ function data:maisonstreakstarting
execute @a[score_TalkTrigger_min=215,score_TalkTrigger=215] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#216 - Double Battle
execute @a[score_TalkTrigger_min=216,score_TalkTrigger=216] ~ ~ ~ tellraw @s {"text":"Your challenge has been registered. Please step on the stage to begin!","color":"white"}
execute @a[score_TalkTrigger_min=216,score_TalkTrigger=216] ~ ~ ~ scoreboard players set @s BattleMaison 3
execute @a[score_TalkTrigger_min=216,score_TalkTrigger=216] ~ ~ ~ function data:maisonstreakstarting
execute @a[score_TalkTrigger_min=216,score_TalkTrigger=216] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#217 - Single Super
execute @a[score_TalkTrigger_min=217,score_TalkTrigger=217] ~ ~ ~ tellraw @s {"text":"Your challenge has been registered. Please step on the stage to begin!","color":"white"}
execute @a[score_TalkTrigger_min=217,score_TalkTrigger=217] ~ ~ ~ scoreboard players set @s BattleMaison 2
execute @a[score_TalkTrigger_min=217,score_TalkTrigger=217] ~ ~ ~ function data:maisonstreakstarting
execute @a[score_TalkTrigger_min=217,score_TalkTrigger=217] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#218 - Double Super
execute @a[score_TalkTrigger_min=218,score_TalkTrigger=218] ~ ~ ~ tellraw @s {"text":"Your challenge has been registered. Please step on the stage to begin!","color":"white"}
execute @a[score_TalkTrigger_min=218,score_TalkTrigger=218] ~ ~ ~ scoreboard players set @s BattleMaison 4
execute @a[score_TalkTrigger_min=218,score_TalkTrigger=218] ~ ~ ~ function data:maisonstreakstarting
execute @a[score_TalkTrigger_min=218,score_TalkTrigger=218] ~ ~ ~ scoreboard players set @s TalkTrigger 0




#219 - Info Prompt
execute @a[score_TalkTrigger_min=219,score_TalkTrigger=219] ~ ~ ~ scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=219,score_TalkTrigger=219] ~ ~ ~ tellraw @s ["",{"text":"What would you like to hear about?\n[","color":"white"},{"text":"The Battle Maison","color":"gold","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 220"}},{"text":"] \u0020 \u0020[","color":"white"},{"text":"The rules","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 221"}},{"text":"]","color":"white"}]
execute @a[score_TalkTrigger_min=219,score_TalkTrigger=219] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#220 - Info about the Battle Maison
execute @a[score_TalkTrigger_min=220,score_TalkTrigger=220] ~ ~ ~ scoreboard players tag @s remove Dialogue228
execute @a[score_TalkTrigger_min=220,score_TalkTrigger=220,score_TalkTime=0] ~ ~ ~ scoreboard players set @s DialogueTrigger 228
execute @a[score_TalkTrigger_min=220,score_TalkTrigger=220] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#221 - Info about the rules
execute @a[score_TalkTrigger_min=221,score_TalkTrigger=221] ~ ~ ~ scoreboard players tag @s remove Dialogue229
execute @a[score_TalkTrigger_min=221,score_TalkTrigger=221,score_TalkTime=0] ~ ~ ~ scoreboard players set @s DialogueTrigger 229
execute @a[score_TalkTrigger_min=221,score_TalkTrigger=221] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#222 - Formally ends players challenge. Will also reset if walk out of room
execute @a[score_TalkTrigger_min=222,score_TalkTrigger=222] ~ ~ ~ scoreboard players set @s BattleMaison 0
execute @a[score_TalkTrigger_min=222,score_TalkTrigger=222] ~ ~ ~ tellraw @s {"text":"Your current challenge has ended! Please come again!","color":"white"}
execute @a[score_TalkTrigger_min=222,score_TalkTrigger=222] ~ ~ ~ scoreboard players set @s TalkTrigger 0




#---------------------------------------------------------------------------------------------------------------------------------------------------------------
#Lumiose Taxis

#227 - When Lumiose City's Power is shut down
execute @a[score_TalkTrigger_min=227,score_TalkTrigger=227,score_TalkTime=0,tag=!LumiosePower] ~ ~ ~ scoreboard players tag @s remove Dialogue239
execute @a[score_TalkTrigger_min=227,score_TalkTrigger=227,score_TalkTime=0,tag=!LumiosePower] ~ ~ ~ scoreboard players set @s DialogueTrigger 239
execute @a[score_TalkTrigger_min=227,score_TalkTrigger=227,tag=!LumiosePower] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#227 - Lumiose Taxi Prompt
execute @a[score_TalkTrigger_min=227,score_TalkTrigger=227,tag=LumiosePower] ~ ~ ~ scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=227,score_TalkTrigger=227,tag=LumiosePower] ~ ~ ~ tellraw @s {"text":"<Cab Driver> Thanks for choosing Lumi Cab! The base fare's $710. What are you in the mood for?"}
execute @a[score_TalkTrigger_min=227,score_TalkTrigger=227,tag=LumiosePower] ~ ~ ~ tellraw @s ["",{"text":"["},{"text":"Services","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 229"}},{"text":"] \u0020 \u0020["},{"text":"Transportation","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 230"}},{"text":"] \u0020 \u0020["},{"text":"Facilities","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 231"}},{"text":"] \u0020 \u0020["},{"text":"More","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 228"}},{"text":"]"}]
execute @a[score_TalkTrigger_min=227,score_TalkTrigger=227,tag=LumiosePower] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#Adds a blank line between dialogues
execute @a[score_TalkTrigger_min=228,score_TalkTrigger=236] ~ ~ ~ tellraw @s {"text":""}

#228 - Lumiose Taxi Prompt Page 2
execute @a[score_TalkTrigger_min=228,score_TalkTrigger=228] ~ ~ ~ scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=228,score_TalkTrigger=228] ~ ~ ~ tellraw @s ["",{"text":"["},{"text":"Shopping","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 232"}},{"text":"] \u0020 \u0020["},{"text":"Fine Dining","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 233"}},{"text":"] \u0020 \u0020["},{"text":"Cafes","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 234"}},{"text":"] \u0020 \u0020["},{"text":"Back","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 227"}},{"text":"] "}]
execute @a[score_TalkTrigger_min=228,score_TalkTrigger=228] ~ ~ ~ scoreboard players set @s TalkTrigger 0

#[Services]    [Transportation]    [Facilities]    [More]
#[Shopping]    [Fine Dining]    [Cafes]    [Back]


#229 - Category Services
execute @a[score_TalkTrigger_min=229,score_TalkTrigger=229] ~ ~ ~ scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=229,score_TalkTrigger=229] ~ ~ ~ tellraw @s ["",{"text":"Got it. And where are we headed?\n["},{"text":"South Pokémon Center","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 237"},"hoverEvent":{"action":"show_text","value":"That\u2019s gotta be the Pokémon Center that\u2019s on South Boulevard, right?"}},{"text":"]\n["},{"text":"PR Video Studio","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 238"},"hoverEvent":{"action":"show_text","value":"That\u2019s the place on South Boulevard where you can make Trainer PR Videos, right?"}},{"text":"]\n["},{"text":"Friseur Furfrou","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 239"},"hoverEvent":{"action":"show_text","value":"That\u2019s the shop on Vernal Avenue that\u2019ll trim and style your Pokémon\u2019s pelt, right?"}},{"text":"]\n["},{"text":"Coiffure Clips","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 240"},"hoverEvent":{"action":"show_text","value":"That\u2019s the shop on South Boulevard where you can get your hair cut and dyed, right?"}},{"text":"]\n["},{"text":"Loto-ID Center","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 241"},"hoverEvent":{"action":"show_text","value":"That\u2019s the shop where you can win big on Estival Avenue, isn\u2019t it?"}},{"text":"]\n["},{"text":"North Pokémon Center","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 242"},"hoverEvent":{"action":"show_text","value":"That\u2019s gotta be the Pokémon Center that\u2019s on North Boulevard, right?"}},{"text":"]\n["},{"text":"Hotel Richissime","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 243"},"hoverEvent":{"action":"show_text","value":"That\u2019s the one swanky-looking hotel up on North Boulevard, right?"}},{"text":"]\n["},{"text":"Magenta Pokémon Center","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 244"},"hoverEvent":{"action":"show_text","value":"That\u2019s the Pokémon Center near Magenta Plaza, right?"}},{"text":"]"}]
execute @a[score_TalkTrigger_min=229,score_TalkTrigger=229] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#230 - Category Transportation
execute @a[score_TalkTrigger_min=230,score_TalkTrigger=230] ~ ~ ~ scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=230,score_TalkTrigger=230] ~ ~ ~ tellraw @s ["",{"text":"Got it. And where are we headed?\n["},{"text":"Gate to Route 4","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 245"},"hoverEvent":{"action":"show_text","value":"Sure, down on South Boulevard where Route 4 enters the city, right?"}},{"text":"]\n["},{"text":"Gate to Route 5","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 246"},"hoverEvent":{"action":"show_text","value":"Sure, down on South Boulevard where Route 5 enters the city, right?"}},{"text":"]\n["},{"text":"Gate to Route 13","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 247"},"hoverEvent":{"action":"show_text","value":"Sure, up on North Boulevard where Route 13 enters the city, right?"}},{"text":"]\n["},{"text":"Gate to Route 14","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 248"},"hoverEvent":{"action":"show_text","value":"Sure, up on North Boulevard where Route 14 enters the city, right?"}},{"text":"]\n["},{"text":"Gate to Route 16","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 249"},"hoverEvent":{"action":"show_text","value":"Sure, up on North Boulevard where Route 16 enters the city, right?"}},{"text":"]\n["},{"text":"Lumiose Station","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 250"},"hoverEvent":{"action":"show_text","value":"That\u2019s the train station where you can board the TMV trains--on North Boulevard, right?"}},{"text":"]"}]
execute @a[score_TalkTrigger_min=230,score_TalkTrigger=230] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#231 - Category Facilities
execute @a[score_TalkTrigger_min=231,score_TalkTrigger=231] ~ ~ ~ scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=231,score_TalkTrigger=231,score_PokemonLeague=0] ~ ~ ~ tellraw @s ["",{"text":"Got it. And where are we headed?\n["},{"text":"Pokémon Lab","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 251"},"hoverEvent":{"action":"show_text","value":"Yeah. Right. That research place down on South Boulevard, right?"}},{"text":"]\n["},{"text":"Lumiose Press","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 252"},"hoverEvent":{"action":"show_text","value":"I know it. It\u2019s that place where they print the books, right? On Estival Avenue?"}},{"text":"]\n["},{"text":"Vacant Storefront","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 253"},"hoverEvent":{"action":"show_text","value":"I don\u2019t know much about it myself, but I can get you there, at least!"}},{"text":"]\n["},{"text":"Lumiose Museum","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 254"},"hoverEvent":{"action":"show_text","value":"That place with all the pictures and stuff on North Boulevard, right? I know it well."}},{"text":"]\n["},{"text":"Battle Institute","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 255"},"hoverEvent":{"action":"show_text","value":"Sure, that\u2019s the place up on North Boulevard where you can do the Battle Tests, right?"}},{"text":"]\n["},{"text":"Prism Tower","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 256"},"hoverEvent":{"action":"show_text","value":"Sure, you\u2019ve got to mean the Pokémon Gym that\u2019s smack in the middle of Centrico Plaza."}},{"text":"]"}]
execute @a[score_TalkTrigger_min=231,score_TalkTrigger=231,score_PokemonLeague_min=1] ~ ~ ~ tellraw @s ["",{"text":"Got it. And where are we headed?\n["},{"text":"Pokémon Lab","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 251"},"hoverEvent":{"action":"show_text","value":"Yeah. Right. That research place down on South Boulevard, right?"}},{"text":"]\n["},{"text":"Lumiose Press","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 252"},"hoverEvent":{"action":"show_text","value":"I know it. It\u2019s that place where they print the books, right? On Estival Avenue?"}},{"text":"]\n["},{"text":"Looker Bureau","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 253"},"hoverEvent":{"action":"show_text","value":"I don\u2019t know much about it myself, but I can get you there, at least!"}},{"text":"]\n["},{"text":"Lumiose Museum","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 254"},"hoverEvent":{"action":"show_text","value":"That place with all the pictures and stuff on North Boulevard, right? I know it well."}},{"text":"]\n["},{"text":"Battle Institute","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 255"},"hoverEvent":{"action":"show_text","value":"Sure, that\u2019s the place up on North Boulevard where you can do the Battle Tests, right?"}},{"text":"]\n["},{"text":"Prism Tower","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 256"},"hoverEvent":{"action":"show_text","value":"Sure, you\u2019ve got to mean the Pokémon Gym that\u2019s smack in the middle of Centrico Plaza."}},{"text":"]"}]
execute @a[score_TalkTrigger_min=231,score_TalkTrigger=231] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#232 - Category Shopping
execute @a[score_TalkTrigger_min=232,score_TalkTrigger=232] ~ ~ ~ scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=232,score_TalkTrigger=232] ~ ~ ~ tellraw @s ["",{"text":"Got it. And where are we headed?\n["},{"text":"Boutique Couture","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 257"},"hoverEvent":{"action":"show_text","value":"It\u2019s that fancy brand-name shop that\u2019s on Vernal Avenue, right?"}},{"text":"]\n["},{"text":"Herboriste","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 258"},"hoverEvent":{"action":"show_text","value":"It\u2019s that place on Vernal Avenue that sells medicines and stuff, right?"}},{"text":"]\n["},{"text":"Stone Emporium","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 259"},"hoverEvent":{"action":"show_text","value":"Isn\u2019t that the shop on Vernal Avenue that sells rocks or something?"}},{"text":"]\n["},{"text":"Poké Ball Boutique","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 260"},"hoverEvent":{"action":"show_text","value":"It\u2019s that place on Autumnal Avenue where they only sell Poké Balls, right?"}},{"text":"]"}]
execute @a[score_TalkTrigger_min=232,score_TalkTrigger=232] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#233 - Category Fine Dining
execute @a[score_TalkTrigger_min=233,score_TalkTrigger=233] ~ ~ ~ scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=233,score_TalkTrigger=233] ~ ~ ~ tellraw @s ["",{"text":"Got it. And where are we headed?\n["},{"text":"Restaurant Le Nah","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 261"},"hoverEvent":{"action":"show_text","value":"It\u2019s that average place with the average food on South Boulevard, right?"}},{"text":"]\n["},{"text":"Galette Stand","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 262"},"hoverEvent":{"action":"show_text","value":"Sure, sure, it\u2019s that stand on North Boulevard where they sell fresh galettes, right?"}},{"text":"]\n["},{"text":"Juice Shoppe","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 263"},"hoverEvent":{"action":"show_text","value":"Yeah, that\u2019s the shop where you can get fresh juice to drink. On Autumnal Avenue, right?"}},{"text":"]\n["},{"text":"Restaurant Le Yeah","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 264"},"hoverEvent":{"action":"show_text","value":"It\u2019s that expensive place on Autumnal Avenue, right? But the food sure is good."}},{"text":"]\n["},{"text":"Restaurant Le Wow","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 265"},"hoverEvent":{"action":"show_text","value":"It\u2019s the best restaurant in town, you know! On Hibernal Avenue, right? Sure, I know it."}},{"text":"]\n["},{"text":"Sushi High Roller","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 266"},"hoverEvent":{"action":"show_text","value":"Haven\u2019t you got to be a member or something to eat there? I think I know where it is, at least."}},{"text":"]"}]
execute @a[score_TalkTrigger_min=233,score_TalkTrigger=233] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#234 - Category Cafes No 1
execute @a[score_TalkTrigger_min=234,score_TalkTrigger=234] ~ ~ ~ scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=234,score_TalkTrigger=234] ~ ~ ~ tellraw @s ["",{"text":"Got it. And where are we headed?\n["},{"text":"Café Cyclone","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 267"},"hoverEvent":{"action":"show_text","value":"That kinda weird café near Vert Plaza, right? OK then..."}},{"text":"]\n["},{"text":"Café Introversion","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 268"},"hoverEvent":{"action":"show_text","value":"It\u2019s the place on South Boulevard where all those communications nuts hang out, right?"}},{"text":"]\n["},{"text":"Café Classe","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 269"},"hoverEvent":{"action":"show_text","value":"That\u2019s the one on Vernal Avenue where all the fashionistas hang out, right?"}},{"text":"]\n["},{"text":"Café Woof","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 270"},"hoverEvent":{"action":"show_text","value":"That\u2019s the place on Vernal Avenue where all the Furfrou-loving folks go, right?"}},{"text":"]\n["},{"text":"Café Soleil","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 271"},"hoverEvent":{"action":"show_text","value":"That\u2019s the totally normal café on South Boulevard, isn\u2019t it?"}},{"text":"]\n["},{"text":"Shutterbug Café","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 272"},"hoverEvent":{"action":"show_text","value":"That\u2019s the one those crazy camera fanatics go to, down on South Boulevard, right?"}},{"text":"]\n["},{"text":"Café Rouleau","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 273"},"hoverEvent":{"action":"show_text","value":"Sure, sure. Where all the Roller Skaters hang out on Estival Avenue, right?"}},{"text":"]\n["},{"text":"Café Gallant","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 274"},"hoverEvent":{"action":"show_text","value":"It\u2019s on Estival Avenue, right? I don\u2019t really get it, but OK..."}},{"text":"]\n["},{"text":"More >>>","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 235"}},{"text":"]"}]
execute @a[score_TalkTrigger_min=234,score_TalkTrigger=234] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#235 - Category Cafes No 2
execute @a[score_TalkTrigger_min=235,score_TalkTrigger=235] ~ ~ ~ scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=235,score_TalkTrigger=235] ~ ~ ~ tellraw @s ["",{"text":"Got it. And where are we headed?\n["},{"text":"Café Triste","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 275"},"hoverEvent":{"action":"show_text","value":"That one on North Boulevard? The one that looks like it\u2019s going out of business?"}},{"text":"]\n["},{"text":"Lysandre Café","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 276"},"hoverEvent":{"action":"show_text","value":"Yeah, I feel like there was some café like that near Magenta Plaza, huh?"}},{"text":"]\n["},{"text":"Café Pokémon-Amie","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 277"},"hoverEvent":{"action":"show_text","value":"I know it. It\u2019s on Autumnal Avenue, yeah? And all the Poké Fans like to hang out there?"}},{"text":"]\n["},{"text":"Café Ultimo","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 278"},"hoverEvent":{"action":"show_text","value":"Right. That place were all the S.T. meatheads hang out on North Boulevard, right?"}},{"text":"]\n["},{"text":"Café Kizuna","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 279"},"hoverEvent":{"action":"show_text","value":"That gloomy café on Hibernal Avenue, right?"}},{"text":"]\n["},{"text":"Café Action!","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 280"},"hoverEvent":{"action":"show_text","value":"Isn\u2019t that the café on North Boulevard where the promo prima donnas hang?"}},{"text":"]\n["},{"text":"Café Bataille","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 281"},"hoverEvent":{"action":"show_text","value":"Yeah, it\u2019s the one on North Boulevard where the battle fanatics get together, right?"}},{"text":"]\n["},{"text":"<<< Back","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 234"}},{"text":"]"}]
execute @a[score_TalkTrigger_min=235,score_TalkTrigger=235] ~ ~ ~ scoreboard players set @s TalkTrigger 0




#237 - 244 Services Activate


#245 - 250 - Transportation Activate


#251 - 256 - Facilities Activate


#257 - 260 - Shopping Activate


#261 - 266 - Fine Dining Activate


#267 - 281 - Cafes Activate

execute @a[score_TalkTrigger_min=237,score_TalkTrigger=281] ~ ~ ~ scoreboard players tag @s remove Dialogue238
execute @a[score_TalkTrigger_min=237,score_TalkTrigger=281] ~ ~ ~ scoreboard players set @s[score_TalkTime=0] DialogueTrigger 238


#--------------------------------------------------------------------------------------------------------------------------------


#Loto-ID Center

#282 - Activate first dialogue

#if player has already drawn today
execute @a[score_TalkTrigger_min=282,score_TalkTrigger=283,tag=Dialogue240] ~ ~ ~ tellraw @s {"text":"<Loto-ID Clerk> You can draw a Loto Ticket once a day. Please come back tomorrow!"}
execute @a[score_TalkTrigger_min=282,score_TalkTrigger=283,tag=Dialogue240] ~ ~ ~ scoreboard players set @s TalkTrigger 0

execute @a[score_TalkTrigger_min=282,score_TalkTrigger=282] ~ ~ ~ scoreboard players tag @s remove Dialogue241
execute @a[score_TalkTrigger_min=282,score_TalkTrigger=282] ~ ~ ~ scoreboard players set @s[score_TalkTime=0] DialogueTrigger 241
execute @a[score_TalkTrigger_min=282,score_TalkTrigger=282] ~ ~ ~ scoreboard players set @s TalkTrigger 0

#283 - Rolls IDs
execute @a[score_TalkTrigger_min=283,score_TalkTrigger=283] ~ ~ ~ scoreboard players tag @s remove Dialogue240
execute @a[score_TalkTrigger_min=283,score_TalkTrigger=283] ~ ~ ~ scoreboard players set @s[score_TalkTime=0] DialogueTrigger 240
execute @a[score_TalkTrigger_min=283,score_TalkTrigger=283] ~ ~ ~ scoreboard players set @s TalkTrigger 0



#--------------------------------------------------------------------------------------------------------------------------------



#Battle Maison Battle Point Withdraws
#/tedit add INTERACT /scoreboard players set @pl TalkTrigger 284
execute @a[score_TalkTrigger_min=284,score_TalkTrigger=284] ~ ~ ~ function data:maisonbattlepoints
execute @a[score_TalkTrigger_min=284,score_TalkTrigger=284] ~ ~ ~ scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=284,score_TalkTrigger=284] ~ ~ ~ tellraw @s ["",{"text":"["},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 285"}},{"text":"]"}]
execute @a[score_TalkTrigger_min=284,score_TalkTrigger=284] ~ ~ ~ scoreboard players set @s TalkTrigger 0

#285 - Withdraw how many prompt

#Configures teams based on available points
execute @a[score_TalkTrigger_min=285,score_TalkTrigger=291] ~ ~ ~ scoreboard teams join red @e[x=-685,y=100,z=1372,dx=10,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=285,score_TalkTrigger=291,score_BattlePoint_min=2] ~ ~ ~ scoreboard teams join green @e[x=-685,y=100,z=1372,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=285,score_TalkTrigger=291,score_BattlePoint_min=8] ~ ~ ~ scoreboard teams join green @e[x=-683,y=100,z=1372,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=285,score_TalkTrigger=291,score_BattlePoint_min=16] ~ ~ ~ scoreboard teams join green @e[x=-681,y=100,z=1372,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=285,score_TalkTrigger=291,score_BattlePoint_min=32] ~ ~ ~ scoreboard teams join green @e[x=-679,y=100,z=1372,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=285,score_TalkTrigger=291,score_BattlePoint_min=48] ~ ~ ~ scoreboard teams join green @e[x=-677,y=100,z=1372,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=285,score_TalkTrigger=291,score_BattlePoint_min=64] ~ ~ ~ scoreboard teams join green @e[x=-675,y=100,z=1372,dy=5,type=armor_stand]

execute @a[score_TalkTrigger_min=285,score_TalkTrigger=285] ~ ~ ~ tellraw @s {"text":"<Maison Clerk> How many would you like to withdraw?"}
execute @a[score_TalkTrigger_min=285,score_TalkTrigger=285] ~ ~ ~ scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=285,score_TalkTrigger=285] ~ ~ ~ tellraw @s ["",{"text":"["},{"selector":"@e[x=-685,y=100,z=1372,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 286"}},{"text":"]  ["},{"selector":"@e[x=-683,y=100,z=1372,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 287"}},{"text":"]  ["},{"selector":"@e[x=-681,y=100,z=1372,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 288"}},{"text":"]  ["},{"selector":"@e[x=-679,y=100,z=1372,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 289"}},{"text":"]  ["},{"selector":"@e[x=-677,y=100,z=1372,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 290"}},{"text":"]  ["},{"selector":"@e[x=-675,y=100,z=1372,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 291"}},{"text":"]"}]
execute @a[score_TalkTrigger_min=285,score_TalkTrigger=285] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#286 - 2BP
execute @a[score_TalkTrigger_min=286,score_TalkTrigger=286,score_BattlePoint_min=0,score_BattlePoint=1] ~ ~ ~ tellraw @s {"text":"You don't have that many points stored!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=286,score_TalkTrigger=286,score_BattlePoint_min=0,score_BattlePoint=1] ~ ~ ~ scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=286,score_TalkTrigger=286,score_BattlePoint_min=0,score_BattlePoint=1] ~ ~ ~ scoreboard players set @s TalkTrigger 0

execute @a[score_TalkTrigger_min=286,score_TalkTrigger=286,score_BattlePoint_min=2] ~ ~ ~ playsound minecraft:block.note.bell ambient @s ~ ~ ~ 100 1 1
execute @a[score_TalkTrigger_min=286,score_TalkTrigger=286,score_BattlePoint_min=2] ~ ~ ~ give @s pixelmon:ruby 2 0 {display:{Name:"Battle Point",Lore:["Used to exchange for items in the","Battle Maison in Kiloude City."]}}
execute @a[score_TalkTrigger_min=286,score_TalkTrigger=286,score_BattlePoint_min=2] ~ ~ ~ scoreboard players remove @s BattlePoint 2


#287 - 8BP
execute @a[score_TalkTrigger_min=287,score_TalkTrigger=287,score_BattlePoint_min=0,score_BattlePoint=7] ~ ~ ~ tellraw @s {"text":"You don't have that many points stored!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=287,score_TalkTrigger=287,score_BattlePoint_min=0,score_BattlePoint=7] ~ ~ ~ scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=287,score_TalkTrigger=287,score_BattlePoint_min=0,score_BattlePoint=7] ~ ~ ~ scoreboard players set @s TalkTrigger 0

execute @a[score_TalkTrigger_min=287,score_TalkTrigger=287,score_BattlePoint_min=8] ~ ~ ~ playsound minecraft:block.note.bell ambient @s ~ ~ ~ 100 1 1
execute @a[score_TalkTrigger_min=287,score_TalkTrigger=287,score_BattlePoint_min=8] ~ ~ ~ give @s pixelmon:ruby 8 0 {display:{Name:"Battle Point",Lore:["Used to exchange for items in the","Battle Maison in Kiloude City."]}}
execute @a[score_TalkTrigger_min=287,score_TalkTrigger=287,score_BattlePoint_min=8] ~ ~ ~ scoreboard players remove @s BattlePoint 8


#288 - 16BP
execute @a[score_TalkTrigger_min=288,score_TalkTrigger=288,score_BattlePoint_min=0,score_BattlePoint=15] ~ ~ ~ tellraw @s {"text":"You don't have that many points stored!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=288,score_TalkTrigger=288,score_BattlePoint_min=0,score_BattlePoint=15] ~ ~ ~ scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=288,score_TalkTrigger=288,score_BattlePoint_min=0,score_BattlePoint=15] ~ ~ ~ scoreboard players set @s TalkTrigger 0

execute @a[score_TalkTrigger_min=288,score_TalkTrigger=288,score_BattlePoint_min=16] ~ ~ ~ playsound minecraft:block.note.bell ambient @s ~ ~ ~ 100 1 1
execute @a[score_TalkTrigger_min=288,score_TalkTrigger=288,score_BattlePoint_min=16] ~ ~ ~ give @s pixelmon:ruby 16 0 {display:{Name:"Battle Point",Lore:["Used to exchange for items in the","Battle Maison in Kiloude City."]}}
execute @a[score_TalkTrigger_min=288,score_TalkTrigger=288,score_BattlePoint_min=16] ~ ~ ~ scoreboard players remove @s BattlePoint 16


#289 - 32BP
execute @a[score_TalkTrigger_min=289,score_TalkTrigger=289,score_BattlePoint_min=0,score_BattlePoint=31] ~ ~ ~ tellraw @s {"text":"You don't have that many points stored!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=289,score_TalkTrigger=289,score_BattlePoint_min=0,score_BattlePoint=31] ~ ~ ~ scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=289,score_TalkTrigger=289,score_BattlePoint_min=0,score_BattlePoint=31] ~ ~ ~ scoreboard players set @s TalkTrigger 0

execute @a[score_TalkTrigger_min=289,score_TalkTrigger=289,score_BattlePoint_min=32] ~ ~ ~ playsound minecraft:block.note.bell ambient @s ~ ~ ~ 100 1 1
execute @a[score_TalkTrigger_min=289,score_TalkTrigger=289,score_BattlePoint_min=32] ~ ~ ~ give @s pixelmon:ruby 32 0 {display:{Name:"Battle Point",Lore:["Used to exchange for items in the","Battle Maison in Kiloude City."]}}
execute @a[score_TalkTrigger_min=289,score_TalkTrigger=289,score_BattlePoint_min=32] ~ ~ ~ scoreboard players remove @s BattlePoint 32


#290 - 48BP
execute @a[score_TalkTrigger_min=290,score_TalkTrigger=290,score_BattlePoint_min=0,score_BattlePoint=47] ~ ~ ~ tellraw @s {"text":"You don't have that many points stored!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=290,score_TalkTrigger=290,score_BattlePoint_min=0,score_BattlePoint=47] ~ ~ ~ scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=290,score_TalkTrigger=290,score_BattlePoint_min=0,score_BattlePoint=47] ~ ~ ~ scoreboard players set @s TalkTrigger 0

execute @a[score_TalkTrigger_min=290,score_TalkTrigger=290,score_BattlePoint_min=48] ~ ~ ~ playsound minecraft:block.note.bell ambient @s ~ ~ ~ 100 1 1
execute @a[score_TalkTrigger_min=290,score_TalkTrigger=290,score_BattlePoint_min=48] ~ ~ ~ give @s pixelmon:ruby 48 0 {display:{Name:"Battle Point",Lore:["Used to exchange for items in the","Battle Maison in Kiloude City."]}}
execute @a[score_TalkTrigger_min=290,score_TalkTrigger=290,score_BattlePoint_min=48] ~ ~ ~ scoreboard players remove @s BattlePoint 48


#291 - 64BP
execute @a[score_TalkTrigger_min=291,score_TalkTrigger=291,score_BattlePoint_min=0,score_BattlePoint=63] ~ ~ ~ tellraw @s {"text":"You don't have that many points stored!","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=291,score_TalkTrigger=291,score_BattlePoint_min=0,score_BattlePoint=63] ~ ~ ~ scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=291,score_TalkTrigger=291,score_BattlePoint_min=0,score_BattlePoint=63] ~ ~ ~ scoreboard players set @s TalkTrigger 0

execute @a[score_TalkTrigger_min=291,score_TalkTrigger=291,score_BattlePoint_min=64] ~ ~ ~ playsound minecraft:block.note.bell ambient @s ~ ~ ~ 100 1 1
execute @a[score_TalkTrigger_min=291,score_TalkTrigger=291,score_BattlePoint_min=64] ~ ~ ~ give @s pixelmon:ruby 64 0 {display:{Name:"Battle Point",Lore:["Used to exchange for items in the","Battle Maison in Kiloude City."]}}
execute @a[score_TalkTrigger_min=291,score_TalkTrigger=291,score_BattlePoint_min=64] ~ ~ ~ scoreboard players remove @s BattlePoint 64


#Withdraw anymore prompt after withdrawing some

execute @a[score_TalkTrigger_min=286,score_TalkTrigger=291] ~ ~ ~ scoreboard teams join red @e[x=-685,y=100,z=1372,dx=10,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=286,score_TalkTrigger=291,score_BattlePoint_min=2] ~ ~ ~ scoreboard teams join green @e[x=-685,y=100,z=1372,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=286,score_TalkTrigger=291,score_BattlePoint_min=8] ~ ~ ~ scoreboard teams join green @e[x=-683,y=100,z=1372,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=286,score_TalkTrigger=291,score_BattlePoint_min=16] ~ ~ ~ scoreboard teams join green @e[x=-681,y=100,z=1372,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=286,score_TalkTrigger=291,score_BattlePoint_min=32] ~ ~ ~ scoreboard teams join green @e[x=-679,y=100,z=1372,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=286,score_TalkTrigger=291,score_BattlePoint_min=48] ~ ~ ~ scoreboard teams join green @e[x=-677,y=100,z=1372,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=286,score_TalkTrigger=291,score_BattlePoint_min=64] ~ ~ ~ scoreboard teams join green @e[x=-675,y=100,z=1372,dy=5,type=armor_stand]

execute @a[score_TalkTrigger_min=286,score_TalkTrigger=291] ~ ~ ~ function data:maisonpointwithdraw
execute @a[score_TalkTrigger_min=286,score_TalkTrigger=291] ~ ~ ~ scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=286,score_TalkTrigger=291] ~ ~ ~ tellraw @s ["",{"text":"["},{"selector":"@e[x=-685,y=100,z=1372,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 286"}},{"text":"]  ["},{"selector":"@e[x=-683,y=100,z=1372,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 287"}},{"text":"]  ["},{"selector":"@e[x=-681,y=100,z=1372,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 288"}},{"text":"]  ["},{"selector":"@e[x=-679,y=100,z=1372,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 289"}},{"text":"]  ["},{"selector":"@e[x=-677,y=100,z=1372,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 290"}},{"text":"]  ["},{"selector":"@e[x=-675,y=100,z=1372,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 291"}},{"text":"]"}]


execute @a[score_TalkTrigger_min=286,score_TalkTrigger=291] ~ ~ ~ scoreboard players set @s TalkTrigger 0

#--------------------------------------------------------------------------------------------------------------------------------


#292 - Restaurant Le Nah Begin

#If Restaurant is busy
execute @e[x=-687,y=100,z=1368,dy=3,type=armor_stand,tag=NahBusy] ~ ~ ~ execute @a[score_TalkTrigger_min=292,score_TalkTrigger=292] ~ ~ ~ tellraw @s {"text":"<Restaurant Owner> I'm terribly sorry, but we cannot accommodate more trainers at this time. Please try again in a bit!"}
execute @e[x=-687,y=100,z=1368,dy=3,type=armor_stand,tag=NahBusy] ~ ~ ~ execute @a[score_TalkTrigger_min=292,score_TalkTrigger=292] ~ ~ ~ scoreboard players set @s TalkTrigger 0

execute @a[score_TalkTrigger_min=292,score_TalkTrigger=292] ~ ~ ~ scoreboard players tag @s add verify {Inventory:[{tag:{display:{Name:"Double Battle, LN"}}}]}
execute @a[score_TalkTrigger_min=292,score_TalkTrigger=292] ~ ~ ~ scoreboard players tag @s remove Dialogue242
execute @a[score_TalkTrigger_min=292,score_TalkTrigger=292] ~ ~ ~ scoreboard players tag @s remove Dialogue243
execute @a[score_TalkTrigger_min=292,score_TalkTrigger=292] ~ ~ ~ scoreboard players tag @s remove Dialogue244
execute @a[score_TalkTrigger_min=292,score_TalkTrigger=292] ~ ~ ~ scoreboard players tag @s remove Dialogue245
execute @a[score_TalkTrigger_min=292,score_TalkTrigger=292,tag=verify] ~ ~ ~ scoreboard players set @s DialogueTrigger 242
execute @a[score_TalkTrigger_min=292,score_TalkTrigger=292,tag=verify] ~ ~ ~ scoreboard players tag @s remove verify
execute @a[score_TalkTrigger_min=292,score_TalkTrigger=292] ~ ~ ~ scoreboard players set @s TalkTrigger 0

#-----------------------

#293 - Restaurant Le Yeah Begin

#clear @a[x=-400,y=101,z=174,r=10,score_RestaurantBattle=0] minecraft:paper 0 0 {display:{Name:"Double Battle, LY"}}
#scoreboard players enable @a[x=-400,y=101,z=174,r=10,score_RestaurantBattle=0] TalkTrigger
#tellraw @a[x=-400,y=101,z=174,r=10,score_RestaurantBattle=0] ["",{"text":"<Waiter> Begin your dining experience? We recommend for the Double Battle you have at least two Pokemon with you.\n["},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 293"}},{"text":"]"}]


#If Restaurant is busy
execute @e[x=-687,y=100,z=1368,dy=3,type=armor_stand,tag=YeahBusy] ~ ~ ~ execute @a[score_TalkTrigger_min=293,score_TalkTrigger=293] ~ ~ ~ tellraw @s {"text":"<Waiter> I'm terribly sorry, but we cannot accommodate more trainers at this time. Please try again in a bit!"}
execute @e[x=-687,y=100,z=1368,dy=3,type=armor_stand,tag=YeahBusy] ~ ~ ~ execute @a[score_TalkTrigger_min=293,score_TalkTrigger=293] ~ ~ ~ scoreboard players set @s TalkTrigger 0

execute @a[score_TalkTrigger_min=293,score_TalkTrigger=293] ~ ~ ~ scoreboard players tag @s add verify {Inventory:[{tag:{display:{Name:"Double Battle, LY"}}}]}
execute @a[score_TalkTrigger_min=293,score_TalkTrigger=293] ~ ~ ~ scoreboard players tag @s remove Dialogue246
execute @a[score_TalkTrigger_min=293,score_TalkTrigger=293] ~ ~ ~ scoreboard players tag @s remove Dialogue247
execute @a[score_TalkTrigger_min=293,score_TalkTrigger=293] ~ ~ ~ scoreboard players tag @s remove Dialogue248
execute @a[score_TalkTrigger_min=293,score_TalkTrigger=293] ~ ~ ~ scoreboard players tag @s remove Dialogue249
execute @a[score_TalkTrigger_min=293,score_TalkTrigger=293] ~ ~ ~ scoreboard players tag @s remove Dialogue250
execute @a[score_TalkTrigger_min=293,score_TalkTrigger=293,tag=verify] ~ ~ ~ scoreboard players set @s DialogueTrigger 246
execute @a[score_TalkTrigger_min=293,score_TalkTrigger=293,tag=verify] ~ ~ ~ scoreboard players tag @s remove verify
execute @a[score_TalkTrigger_min=293,score_TalkTrigger=293] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#-----------------------

#294 - Restaurant Le Wow Begin

#clear @a[x=-293,y=101,z=174,r=10,score_RestaurantBattle=0] minecraft:paper 0 0 {display:{Name:"Double Battle, Lw"}}
#scoreboard players enable @a[x=-293,y=101,z=174,r=10,score_RestaurantBattle=0] TalkTrigger
#tellraw @a[x=-293,y=101,z=174,r=10,score_RestaurantBattle=0] ["",{"text":"<Waiter> Begin your dining experience? We recommend for the Double Battle you have at least two Pokemon with you.\n["},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 294"}},{"text":"]"}]


#If Restaurant is busy
execute @e[x=-687,y=100,z=1368,dy=3,type=armor_stand,tag=WowBusy] ~ ~ ~ execute @a[score_TalkTrigger_min=294,score_TalkTrigger=294] ~ ~ ~ tellraw @s {"text":"<Waiter> I'm terribly sorry, but we cannot accommodate more trainers at this time. Please try again in a bit!"}
execute @e[x=-687,y=100,z=1368,dy=3,type=armor_stand,tag=WowBusy] ~ ~ ~ execute @a[score_TalkTrigger_min=294,score_TalkTrigger=294] ~ ~ ~ scoreboard players set @s TalkTrigger 0

execute @a[score_TalkTrigger_min=294,score_TalkTrigger=294] ~ ~ ~ scoreboard players tag @s add verify {Inventory:[{tag:{display:{Name:"Double Battle, LW"}}}]}
execute @a[score_TalkTrigger_min=294,score_TalkTrigger=294] ~ ~ ~ scoreboard players tag @s remove Dialogue251
execute @a[score_TalkTrigger_min=294,score_TalkTrigger=294] ~ ~ ~ scoreboard players tag @s remove Dialogue252
execute @a[score_TalkTrigger_min=294,score_TalkTrigger=294] ~ ~ ~ scoreboard players tag @s remove Dialogue253
execute @a[score_TalkTrigger_min=294,score_TalkTrigger=294] ~ ~ ~ scoreboard players tag @s remove Dialogue254
execute @a[score_TalkTrigger_min=294,score_TalkTrigger=294] ~ ~ ~ scoreboard players tag @s remove Dialogue255
execute @a[score_TalkTrigger_min=294,score_TalkTrigger=294] ~ ~ ~ scoreboard players tag @s remove Dialogue256
execute @a[score_TalkTrigger_min=294,score_TalkTrigger=294,tag=verify] ~ ~ ~ scoreboard players set @s DialogueTrigger 251
execute @a[score_TalkTrigger_min=294,score_TalkTrigger=294,tag=verify] ~ ~ ~ scoreboard players tag @s remove verify
execute @a[score_TalkTrigger_min=294,score_TalkTrigger=294] ~ ~ ~ scoreboard players set @s TalkTrigger 0



#-----------------------

#295 - Restaurant Sushi High Roller Begin

#clear @a[x=-487,y=101,z=174,r=10,score_RestaurantBattle=0] minecraft:paper 0 0 {display:{Name:"Double Battle, HR"}}
#scoreboard players enable @a[x=-487,y=101,z=174,r=10,score_RestaurantBattle=0] TalkTrigger
#tellraw @a[x=-487,y=101,z=174,r=10,score_RestaurantBattle=0] ["",{"text":"<Server> Begin your dining experience? We recommend for the Double Battle you have at least two Pokemon with you.\n["},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 295"}},{"text":"]"}]

#if player is not the champion
execute @a[score_TalkTrigger_min=295,score_TalkTrigger=295,score_PokemonLeague=0] ~ ~ ~ tellraw @s {"text":"<Server> Ah... I’m afraid that I must apologize. Only those who are on par with the Champion are allowed to dine here."}
execute @a[score_TalkTrigger_min=295,score_TalkTrigger=295,score_PokemonLeague=0] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#If Restaurant is busy
execute @e[x=-687,y=100,z=1368,dy=3,type=armor_stand,tag=HighRollerBusy] ~ ~ ~ execute @a[score_TalkTrigger_min=295,score_TalkTrigger=295] ~ ~ ~ tellraw @s {"text":"<Server> I'm terribly sorry, but we cannot accommodate more trainers at this time. Please try again in a bit!"}
execute @e[x=-687,y=100,z=1368,dy=3,type=armor_stand,tag=HighRollerBusy] ~ ~ ~ execute @a[score_TalkTrigger_min=295,score_TalkTrigger=295] ~ ~ ~ scoreboard players set @s TalkTrigger 0

execute @a[score_TalkTrigger_min=295,score_TalkTrigger=295] ~ ~ ~ scoreboard players tag @s add verify {Inventory:[{tag:{display:{Name:"Double Battle, HR"}}}]}
execute @a[score_TalkTrigger_min=295,score_TalkTrigger=295] ~ ~ ~ scoreboard players tag @s remove Dialogue257
execute @a[score_TalkTrigger_min=295,score_TalkTrigger=295] ~ ~ ~ scoreboard players tag @s remove Dialogue258
execute @a[score_TalkTrigger_min=295,score_TalkTrigger=295] ~ ~ ~ scoreboard players tag @s remove Dialogue259
execute @a[score_TalkTrigger_min=295,score_TalkTrigger=295] ~ ~ ~ scoreboard players tag @s remove Dialogue260
execute @a[score_TalkTrigger_min=295,score_TalkTrigger=295] ~ ~ ~ scoreboard players tag @s remove Dialogue261
execute @a[score_TalkTrigger_min=295,score_TalkTrigger=295] ~ ~ ~ scoreboard players tag @s remove Dialogue262
execute @a[score_TalkTrigger_min=295,score_TalkTrigger=295,tag=verify] ~ ~ ~ scoreboard players set @s DialogueTrigger 257
execute @a[score_TalkTrigger_min=295,score_TalkTrigger=295,tag=verify] ~ ~ ~ scoreboard players tag @s remove verify
execute @a[score_TalkTrigger_min=295,score_TalkTrigger=295] ~ ~ ~ scoreboard players set @s TalkTrigger 0




#--------------------------------------------------------------------------------------------------------------------------------
#Photo Spot Commands

#Summons Armor Stands (place in front of sign 1 block)
#/summon pixelmon:statue ~ ~0.5 ~-1 {ndex:101s,Growth:6b,CustomTexture:"invisible",ForgeData:{SpongeData:{},trainercommands:{interact:["/scoreboard players set @pl TalkTrigger 296"]}}}
#/summon pixelmon:statue ~ ~-0.5 ~-1 {ndex:101s,Growth:6b,CustomTexture:"invisible",ForgeData:{SpongeData:{},trainercommands:{interact:["/scoreboard players set @pl TalkTrigger 296"]}}}

#296 - Interact Command
#When Photo Spots are under construction
#UNSURE OF ACTUAL CRITERIA REQUIRED

#tellraw @a {"text":"The photo spot is still under construction.","italic":true,"color":"gray"}
#execute @a[score_TalkTrigger_min=296,score_TalkTrigger=296] ~ ~ ~ scoreboard players set @s TalkTrigger 0

execute @a[score_TalkTrigger_min=296,score_TalkTrigger=296] ~ ~ ~ scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=296,score_TalkTrigger=296] ~ ~ ~ tellraw @s ["",{"text":"It's a photo spot! Do you want to call Phil the Photo Guy?\n["},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 297"}},{"text":"]"}]
execute @a[score_TalkTrigger_min=296,score_TalkTrigger=296] ~ ~ ~ scoreboard players set @s TalkTrigger 0



#297 - Summons Phil the Photo Guy

#Assigns a PhotoSpot score depending on the player's location
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,x=518,y=100,z=1289,r=50] ~ ~ ~ scoreboard players set @s PhotoSpot 1
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,x=-161,y=102,z=-358,r=50] ~ ~ ~ scoreboard players set @s PhotoSpot 2
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,x=-1297,y=100,z=-387,r=50] ~ ~ ~ scoreboard players set @s PhotoSpot 3
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,x=-1629,y=103,z=-51,r=50] ~ ~ ~ scoreboard players set @s PhotoSpot 4
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,x=-1071,y=109,z=2014,r=50] ~ ~ ~ scoreboard players set @s PhotoSpot 5
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,x=-351,y=109,z=2014,r=50] ~ ~ ~ scoreboard players set @s PhotoSpot 6
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,x=-2151,y=104,z=-706,r=50] ~ ~ ~ scoreboard players set @s PhotoSpot 7
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,x=-1623,y=76,z=-944,r=50] ~ ~ ~ scoreboard players set @s PhotoSpot 8
#execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,] ~ ~ ~ scoreboard players set @s PhotoSpot 9
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,x=657,y=120,z=-781,r=50] ~ ~ ~ scoreboard players set @s PhotoSpot 10
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,x=1195,y=108,z=-310,r=50] ~ ~ ~ scoreboard players set @s PhotoSpot 11
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,x=1551,y=115,z=278,r=50] ~ ~ ~ scoreboard players set @s PhotoSpot 12
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,x=1150,y=102,z=532,r=50] ~ ~ ~ scoreboard players set @s PhotoSpot 13
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,x=-1890,y=88,z=2257,r=50] ~ ~ ~ scoreboard players set @s PhotoSpot 14


#Particles while Phil tps in
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,score_PhotoSpot_min=1,score_PhotoSpot=1] ~ ~ ~ particle cloud 516 100 1289 2 2 2 1 100
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,score_PhotoSpot_min=2,score_PhotoSpot=2] ~ ~ ~ particle cloud -163 102 -358 2 2 2 1 100
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,score_PhotoSpot_min=3,score_PhotoSpot=3] ~ ~ ~ particle cloud -1299 100 -387 2 2 2 1 100
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,score_PhotoSpot_min=4,score_PhotoSpot=4] ~ ~ ~ particle cloud -1631 103 -51 2 2 2 1 100
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,score_PhotoSpot_min=5,score_PhotoSpot=5] ~ ~ ~ particle cloud -1073 109 2014 2 2 2 1 100
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,score_PhotoSpot_min=6,score_PhotoSpot=6] ~ ~ ~ particle cloud -353 109 2014 2 2 2 1 100
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,score_PhotoSpot_min=7,score_PhotoSpot=7] ~ ~ ~ particle cloud -2153 104 -706 2 2 2 1 100
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,score_PhotoSpot_min=8,score_PhotoSpot=8] ~ ~ ~ particle cloud -1625 76 -944 2 2 2 1 100
#
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,score_PhotoSpot_min=10,score_PhotoSpot=10] ~ ~ ~ particle cloud 655 120 -781 2 2 2 1 100
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,score_PhotoSpot_min=11,score_PhotoSpot=11] ~ ~ ~ particle cloud 1195 108 -308 2 2 2 1 100
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,score_PhotoSpot_min=12,score_PhotoSpot=12] ~ ~ ~ particle cloud 1551 115 278 2 2 2 1 100
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,score_PhotoSpot_min=13,score_PhotoSpot=13] ~ ~ ~ particle cloud 1152 102 532 2 2 2 1 100
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,score_PhotoSpot_min=14,score_PhotoSpot=14] ~ ~ ~ particle cloud -1892 88 2257 2 2 2 1 100


#tps in Phil depending on the player's location
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,score_PhotoSpot_min=1,score_PhotoSpot=1] ~ ~ ~ tp @e[x=-477,y=100,z=1243,dy=3,type=pixelmon:npc_chatting] 516 100 1289
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,score_PhotoSpot_min=2,score_PhotoSpot=2] ~ ~ ~ tp @e[x=-477,y=100,z=1245,dy=3,type=pixelmon:npc_chatting] -163 102 -358
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,score_PhotoSpot_min=3,score_PhotoSpot=3] ~ ~ ~ tp @e[x=-477,y=100,z=1247,dy=3,type=pixelmon:npc_chatting] -1299 100 -387
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,score_PhotoSpot_min=4,score_PhotoSpot=4] ~ ~ ~ tp @e[x=-477,y=100,z=1249,dy=3,type=pixelmon:npc_chatting] -1631 103 -51
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,score_PhotoSpot_min=5,score_PhotoSpot=5] ~ ~ ~ tp @e[x=-477,y=100,z=1251,dy=3,type=pixelmon:npc_chatting] -1073 109 2014
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,score_PhotoSpot_min=6,score_PhotoSpot=6] ~ ~ ~ tp @e[x=-477,y=100,z=1253,dy=3,type=pixelmon:npc_chatting] -353 109 2014
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,score_PhotoSpot_min=7,score_PhotoSpot=7] ~ ~ ~ tp @e[x=-477,y=100,z=1255,dy=3,type=pixelmon:npc_chatting] -2153 104 -706
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,score_PhotoSpot_min=8,score_PhotoSpot=8] ~ ~ ~ tp @e[x=-473,y=100,z=1243,dy=3,type=pixelmon:npc_chatting] -1625 76 -944
#execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,score_PhotoSpot_min=9,score_PhotoSpot=9] ~ ~ ~ tp @e[x=-473,y=100,z=1245,dy=3,type=pixelmon:npc_chatting]
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,score_PhotoSpot_min=10,score_PhotoSpot=10] ~ ~ ~ tp @e[x=-473,y=100,z=1247,dy=3,type=pixelmon:npc_chatting] 655 120 -781
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,score_PhotoSpot_min=11,score_PhotoSpot=11] ~ ~ ~ tp @e[x=-473,y=100,z=1249,dy=3,type=pixelmon:npc_chatting] 1195 108 -308
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,score_PhotoSpot_min=12,score_PhotoSpot=12] ~ ~ ~ tp @e[x=-473,y=100,z=1251,dy=3,type=pixelmon:npc_chatting] 1551 115 278
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,score_PhotoSpot_min=13,score_PhotoSpot=13] ~ ~ ~ tp @e[x=-473,y=100,z=1253,dy=3,type=pixelmon:npc_chatting] 1152 102 532
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,score_PhotoSpot_min=14,score_PhotoSpot=14] ~ ~ ~ tp @e[x=-473,y=100,z=1255,dy=3,type=pixelmon:npc_chatting] -1892 88 2257

execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,score_PhotoSpot_min=1] ~ ~ ~ tellraw @s {"text":"<Phil> Hey! What do you want to do?"}
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,score_PhotoSpot_min=1] ~ ~ ~ scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297,score_PhotoSpot_min=1] ~ ~ ~ tellraw @s ["",{"text":"["},{"text":"Take a photo","color":"red","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 298"}},{"text":"] \u0020["},{"text":"View a photo","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 300"}},{"text":"] \u0020["},{"text":"Good-bye","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 299"}},{"text":"]"}]

execute @a[score_TalkTrigger_min=297,score_TalkTrigger=297] ~ ~ ~ scoreboard players set @s TalkTrigger 0



#298 - Take a Photo Dialogue Activate
execute @a[score_TalkTrigger_min=298,score_TalkTrigger=298] ~ ~ ~ scoreboard players tag @s remove Dialogue263
execute @a[score_TalkTrigger_min=298,score_TalkTrigger=298] ~ ~ ~ scoreboard players set @s DialogueTrigger 263
execute @a[score_TalkTrigger_min=298,score_TalkTrigger=298] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#299 - Dismisses Phil

#Prevents if player in dialogue
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_DialogueTrigger_min=1] ~ ~ ~ scoreboard players set @s TalkTrigger 0

execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299] ~ ~ ~ tellraw @s {"text":"<Phil> All right. See ya!"}

#Particles for Phil Tp
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=1,score_PhotoSpot=1] ~ ~ ~ particle cloud 516 100 1289 2 2 2 1 100
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=2,score_PhotoSpot=2] ~ ~ ~ particle cloud -163 102 -358 2 2 2 1 100
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=3,score_PhotoSpot=3] ~ ~ ~ particle cloud -1299 100 -387 2 2 2 1 100
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=4,score_PhotoSpot=4] ~ ~ ~ particle cloud -1631 103 -51 2 2 2 1 100
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=5,score_PhotoSpot=5] ~ ~ ~ particle cloud -1073 109 2014 2 2 2 1 100
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=6,score_PhotoSpot=6] ~ ~ ~ particle cloud -353 109 2014 2 2 2 1 100
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=7,score_PhotoSpot=7] ~ ~ ~ particle cloud -2153 104 -706 2 2 2 1 100
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=8,score_PhotoSpot=8] ~ ~ ~ particle cloud -1625 76 -944 2 2 2 1 100
#
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=10,score_PhotoSpot=10] ~ ~ ~ particle cloud 655 120 -781 2 2 2 1 100
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=11,score_PhotoSpot=11] ~ ~ ~ particle cloud 1195 108 -308 2 2 2 1 100
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=12,score_PhotoSpot=12] ~ ~ ~ particle cloud 1551 115 278 2 2 2 1 100
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=13,score_PhotoSpot=13] ~ ~ ~ particle cloud 1152 102 532 2 2 2 1 100
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=14,score_PhotoSpot=14] ~ ~ ~ particle cloud -1892 88 2257 2 2 2 1 100


#tps Phil out
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=1,score_PhotoSpot=1] ~ ~ ~ tp @e[x=516,y=100,z=1289,dy=3,type=pixelmon:npc_chatting] -477 101 1243
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=2,score_PhotoSpot=2] ~ ~ ~ tp @e[x=-163,y=102,z=-358,dy=3,type=pixelmon:npc_chatting] -477 101 1245
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=3,score_PhotoSpot=3] ~ ~ ~ tp @e[x=-1299,y=100,z=-387,dy=3,type=pixelmon:npc_chatting] -477 101 1247
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=4,score_PhotoSpot=4] ~ ~ ~ tp @e[x=-1631,y=103,z=-51,dy=3,type=pixelmon:npc_chatting] -477 101 1249
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=5,score_PhotoSpot=5] ~ ~ ~ tp @e[x=-1073,y=109,z=2014,dy=3,type=pixelmon:npc_chatting] -477 101 1251
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=6,score_PhotoSpot=6] ~ ~ ~ tp @e[x=-353,y=109,z=2014,dy=3,type=pixelmon:npc_chatting] -477 101 1253
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=7,score_PhotoSpot=7] ~ ~ ~ tp @e[x=-2153,y=104,z=-706,dy=3,type=pixelmon:npc_chatting] -477 101 1255
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=8,score_PhotoSpot=8] ~ ~ ~ tp @e[x=-1625,y=76,z=-944,dy=3,type=pixelmon:npc_chatting] -473 101 1243
#
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=10,score_PhotoSpot=10] ~ ~ ~ tp @e[x=655,y=120,z=-781,dy=3,type=pixelmon:npc_chatting] -473 101 1247
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=11,score_PhotoSpot=11] ~ ~ ~ tp @e[x=1195,y=108,z=-308,dy=3,type=pixelmon:npc_chatting] -473 101 1249
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=12,score_PhotoSpot=12] ~ ~ ~ tp @e[x=1551,y=115,z=278,dy=3,type=pixelmon:npc_chatting] -473 101 1251
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=13,score_PhotoSpot=13] ~ ~ ~ tp @e[x=1152,y=102,z=532,dy=3,type=pixelmon:npc_chatting] -473 101 1253
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=14,score_PhotoSpot=14] ~ ~ ~ tp @e[x=-1892,y=88,z=2257,dy=3,type=pixelmon:npc_chatting] -473 101 1255

#Kills armor stand
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=1,score_PhotoSpot=1] ~ ~ ~ kill @e[x=513,y=100,z=1289,r=2,type=armor_stand]
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=2,score_PhotoSpot=2] ~ ~ ~ kill @e[x=-166,y=102,z=-358,r=2,type=armor_stand]
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=3,score_PhotoSpot=3] ~ ~ ~ kill @e[x=-1302,y=100,z=-387,r=2,type=armor_stand]
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=4,score_PhotoSpot=4] ~ ~ ~ kill @e[x=-1634,y=103,z=-51,r=2,type=armor_stand]
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=5,score_PhotoSpot=5] ~ ~ ~ kill @e[x=-1076,y=109,z=2014,r=2,type=armor_stand]
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=6,score_PhotoSpot=6] ~ ~ ~ kill @e[x=-356,y=109,z=2014,r=2,type=armor_stand]
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=7,score_PhotoSpot=7] ~ ~ ~ kill @e[x=-2156,y=104,z=-706,r=2,type=armor_stand]
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=8,score_PhotoSpot=8] ~ ~ ~ kill @e[x=-1628,y=76,z=-944,r=2,type=armor_stand]
#
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=10,score_PhotoSpot=10] ~ ~ ~ kill @e[x=652,y=120,z=-781,r=2,type=armor_stand]
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=11,score_PhotoSpot=11] ~ ~ ~ kill @e[x=1195,y=107.5,z=-305,r=2,type=armor_stand]
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=12,score_PhotoSpot=12] ~ ~ ~ kill @e[x=1548,y=115,z=278,r=2,type=armor_stand]
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=13,score_PhotoSpot=13] ~ ~ ~ kill @e[x=1155,y=102,z=532,r=2,type=armor_stand]
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299,score_PhotoSpot_min=14,score_PhotoSpot=14] ~ ~ ~ kill @e[x=-1895,y=88,z=2257,r=2,type=armor_stand]


execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299] ~ ~ ~ scoreboard players set @s PhotoSpot 0
execute @a[score_TalkTrigger_min=299,score_TalkTrigger=299] ~ ~ ~ scoreboard players set @s TalkTrigger 0









#300 - View a Photo Prompt 1

#renames armor stands
execute @a[score_TalkTrigger_min=300,score_TalkTrigger=300] ~ ~ ~ scoreboard teams join red @e[x=-687,y=100,z=1380,dx=12,dy=3,type=armor_stand]
execute @a[score_TalkTrigger_min=300,score_TalkTrigger=300] ~ ~ ~ entitydata @e[x=-687,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Aquacorde Town"}
execute @a[score_TalkTrigger_min=300,score_TalkTrigger=300] ~ ~ ~ entitydata @e[x=-685,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Lumiose City"}
execute @a[score_TalkTrigger_min=300,score_TalkTrigger=300] ~ ~ ~ entitydata @e[x=-683,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Parfum Palace"}
execute @a[score_TalkTrigger_min=300,score_TalkTrigger=300] ~ ~ ~ entitydata @e[x=-681,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Route 7"}
execute @a[score_TalkTrigger_min=300,score_TalkTrigger=300] ~ ~ ~ entitydata @e[x=-679,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Geosenge Town"}
execute @a[score_TalkTrigger_min=300,score_TalkTrigger=300] ~ ~ ~ entitydata @e[x=-677,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Shalour City"}
#execute @a[score_TalkTrigger_min=300,score_TalkTrigger=300] ~ ~ ~ entitydata @e[x=-675,y=100,z=1380,dy=5,type=armor_stand] {CustomName:""}

execute @a[score_TalkTrigger_min=300,score_TalkTrigger=300,tag=PhotoSpot1] ~ ~ ~ scoreboard teams join green @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=300,score_TalkTrigger=300,tag=PhotoSpot2] ~ ~ ~ scoreboard teams join green @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=300,score_TalkTrigger=300,tag=PhotoSpot3] ~ ~ ~ scoreboard teams join green @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=300,score_TalkTrigger=300,tag=PhotoSpot4] ~ ~ ~ scoreboard teams join green @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=300,score_TalkTrigger=300,tag=PhotoSpot6] ~ ~ ~ scoreboard teams join green @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=300,score_TalkTrigger=300,tag=PhotoSpot8] ~ ~ ~ scoreboard teams join green @e[x=-677,y=100,z=1380,dy=5,type=armor_stand]
#execute @a[score_TalkTrigger_min=300,score_TalkTrigger=300,tag=] ~ ~ ~ scoreboard teams join green @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]


execute @a[score_TalkTrigger_min=315,score_TalkTrigger=315] ~ ~ ~ scoreboard teams join red @e[x=-687,y=100,z=1380,dx=12,dy=3,type=armor_stand]
execute @a[score_TalkTrigger_min=315,score_TalkTrigger=315] ~ ~ ~ entitydata @e[x=-687,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Frost Cavern"}
execute @a[score_TalkTrigger_min=315,score_TalkTrigger=315] ~ ~ ~ entitydata @e[x=-685,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Anistar City"}
execute @a[score_TalkTrigger_min=315,score_TalkTrigger=315] ~ ~ ~ entitydata @e[x=-683,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Couriway Town"}
execute @a[score_TalkTrigger_min=315,score_TalkTrigger=315] ~ ~ ~ entitydata @e[x=-681,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Snowbelle City"}
execute @a[score_TalkTrigger_min=315,score_TalkTrigger=315] ~ ~ ~ entitydata @e[x=-679,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Pokémon League"}
#execute @a[score_TalkTrigger_min=315,score_TalkTrigger=315] ~ ~ ~ entitydata @e[x=-677,y=100,z=1380,dy=5,type=armor_stand] {CustomName:"Shalour City"}
#execute @a[score_TalkTrigger_min=315,score_TalkTrigger=315] ~ ~ ~ entitydata @e[x=-675,y=100,z=1380,dy=5,type=armor_stand] {CustomName:""}

execute @a[score_TalkTrigger_min=315,score_TalkTrigger=315,tag=PhotoSpot10] ~ ~ ~ scoreboard teams join green @e[x=-687,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=315,score_TalkTrigger=315,tag=PhotoSpot11] ~ ~ ~ scoreboard teams join green @e[x=-685,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=315,score_TalkTrigger=315,tag=PhotoSpot12] ~ ~ ~ scoreboard teams join green @e[x=-683,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=315,score_TalkTrigger=315,tag=PhotoSpot13] ~ ~ ~ scoreboard teams join green @e[x=-681,y=100,z=1380,dy=5,type=armor_stand]
execute @a[score_TalkTrigger_min=315,score_TalkTrigger=315,tag=PhotoSpot14] ~ ~ ~ scoreboard teams join green @e[x=-679,y=100,z=1380,dy=5,type=armor_stand]
#execute @a[score_TalkTrigger_min=315,score_TalkTrigger=315,tag=] ~ ~ ~ scoreboard teams join green @e[x=-675,y=100,z=1380,dy=5,type=armor_stand]



execute @a[score_TalkTrigger_min=300,score_TalkTrigger=300] ~ ~ ~ tellraw @s {"text":"<Phil> Oh, you want to see a photo? Which one do you want to see?"}
execute @a[score_TalkTrigger_min=300,score_TalkTrigger=300] ~ ~ ~ scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=300,score_TalkTrigger=300] ~ ~ ~ tellraw @s ["",{"text":"["},{"selector":"@e[x=-687,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 301"}},{"text":"]\n["},{"selector":"@e[x=-685,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 302"}},{"text":"]\n["},{"selector":"@e[x=-683,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 303"}},{"text":"]\n["},{"selector":"@e[x=-681,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 304"}},{"text":"]\n["},{"selector":"@e[x=-679,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 306"}},{"text":"]\n["},{"selector":"@e[x=-677,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 308"}},{"text":"]\n["},{"text":"Next Page >>","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 315"}},{"text":"] "}]
execute @a[score_TalkTrigger_min=300,score_TalkTrigger=300] ~ ~ ~ scoreboard players set @s TalkTrigger 0




#315 - View a Photo Prompt 2
execute @a[score_TalkTrigger_min=315,score_TalkTrigger=315] ~ ~ ~ scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=315,score_TalkTrigger=315] ~ ~ ~ tellraw @s ["",{"text":"["},{"selector":"@e[x=-687,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 310"}},{"text":"]\n["},{"selector":"@e[x=-685,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 311"}},{"text":"]\n["},{"selector":"@e[x=-683,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 312"}},{"text":"]\n["},{"selector":"@e[x=-681,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 313"}},{"text":"]\n["},{"selector":"@e[x=-679,y=100,z=1380,dy=5,type=armor_stand]","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 314"}},{"text":"]\n["},{"text":"<< Back","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 300"}},{"text":"]\n["},{"text":"<<< Main Menu","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 316"}},{"text":"]"}]
execute @a[score_TalkTrigger_min=315,score_TalkTrigger=315] ~ ~ ~ scoreboard players set @s TalkTrigger 0



#316 - Phil's first menu repeated
execute @a[score_TalkTrigger_min=316,score_TalkTrigger=316] ~ ~ ~ tellraw @s {"text":"<Phil> What do you want to do?"}
execute @a[score_TalkTrigger_min=316,score_TalkTrigger=316] ~ ~ ~ scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=316,score_TalkTrigger=316] ~ ~ ~ tellraw @s ["",{"text":"["},{"text":"Take a photo","color":"red","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 298"}},{"text":"] \u0020["},{"text":"View a photo","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 300"}},{"text":"] \u0020["},{"text":"Good-bye","color":"gray","clickEvent":{"action":"run_command","value":"/trigger TalkTrigger set 299"}},{"text":"]"}]
execute @a[score_TalkTrigger_min=316,score_TalkTrigger=316] ~ ~ ~ scoreboard players set @s TalkTrigger 0



#----------------
#If player hasn't unlocked that photo yet
execute @a[score_TalkTrigger_min=301,score_TalkTrigger=314] ~ ~ ~ scoreboard players enable @s TalkTrigger
execute @a[score_TalkTrigger_min=301,score_TalkTrigger=301,tag=!PhotoSpot1] ~ ~ ~ tellraw @s {"text":"<Phil> I don't think I have a photo from there yet!"}
execute @a[score_TalkTrigger_min=302,score_TalkTrigger=302,tag=!PhotoSpot2] ~ ~ ~ tellraw @s {"text":"<Phil> I don't think I have a photo from there yet!"}
execute @a[score_TalkTrigger_min=303,score_TalkTrigger=303,tag=!PhotoSpot3] ~ ~ ~ tellraw @s {"text":"<Phil> I don't think I have a photo from there yet!"}
execute @a[score_TalkTrigger_min=304,score_TalkTrigger=304,tag=!PhotoSpot4] ~ ~ ~ tellraw @s {"text":"<Phil> I don't think I have a photo from there yet!"}
execute @a[score_TalkTrigger_min=305,score_TalkTrigger=305,tag=!PhotoSpot5] ~ ~ ~ tellraw @s {"text":"<Phil> I don't think I have a photo from there yet!"}
execute @a[score_TalkTrigger_min=306,score_TalkTrigger=306,tag=!PhotoSpot6] ~ ~ ~ tellraw @s {"text":"<Phil> I don't think I have a photo from there yet!"}
execute @a[score_TalkTrigger_min=307,score_TalkTrigger=307,tag=!PhotoSpot7] ~ ~ ~ tellraw @s {"text":"<Phil> I don't think I have a photo from there yet!"}
execute @a[score_TalkTrigger_min=308,score_TalkTrigger=308,tag=!PhotoSpot8] ~ ~ ~ tellraw @s {"text":"<Phil> I don't think I have a photo from there yet!"}
execute @a[score_TalkTrigger_min=309,score_TalkTrigger=309,tag=!PhotoSpot9] ~ ~ ~ tellraw @s {"text":"<Phil> I don't think I have a photo from there yet!"}
execute @a[score_TalkTrigger_min=310,score_TalkTrigger=310,tag=!PhotoSpot10] ~ ~ ~ tellraw @s {"text":"<Phil> I don't think I have a photo from there yet!"}
execute @a[score_TalkTrigger_min=311,score_TalkTrigger=311,tag=!PhotoSpot11] ~ ~ ~ tellraw @s {"text":"<Phil> I don't think I have a photo from there yet!"}
execute @a[score_TalkTrigger_min=312,score_TalkTrigger=312,tag=!PhotoSpot12] ~ ~ ~ tellraw @s {"text":"<Phil> I don't think I have a photo from there yet!"}
execute @a[score_TalkTrigger_min=313,score_TalkTrigger=313,tag=!PhotoSpot13] ~ ~ ~ tellraw @s {"text":"<Phil> I don't think I have a photo from there yet!"}
execute @a[score_TalkTrigger_min=314,score_TalkTrigger=314,tag=!PhotoSpot14] ~ ~ ~ tellraw @s {"text":"<Phil> I don't think I have a photo from there yet!"}

#Kills an armor stand if player is spawning a new one
execute @a[score_TalkTrigger_min=301,score_TalkTrigger=314,score_PhotoSpot_min=1,score_PhotoSpot=1] ~ ~ ~ kill @e[x=513,y=100,z=1289,r=2,type=armor_stand]
execute @a[score_TalkTrigger_min=301,score_TalkTrigger=314,score_PhotoSpot_min=2,score_PhotoSpot=2] ~ ~ ~ kill @e[x=-166,y=102,z=-358,r=2,type=armor_stand]
execute @a[score_TalkTrigger_min=301,score_TalkTrigger=314,score_PhotoSpot_min=3,score_PhotoSpot=3] ~ ~ ~ kill @e[x=-1302,y=100,z=-387,r=2,type=armor_stand]
execute @a[score_TalkTrigger_min=301,score_TalkTrigger=314,score_PhotoSpot_min=4,score_PhotoSpot=4] ~ ~ ~ kill @e[x=-1634,y=103,z=-51,r=2,type=armor_stand]
execute @a[score_TalkTrigger_min=301,score_TalkTrigger=314,score_PhotoSpot_min=5,score_PhotoSpot=5] ~ ~ ~ kill @e[x=-1076,y=109,z=2014,r=2,type=armor_stand]
execute @a[score_TalkTrigger_min=301,score_TalkTrigger=314,score_PhotoSpot_min=6,score_PhotoSpot=6] ~ ~ ~ kill @e[x=-356,y=109,z=2014,r=2,type=armor_stand]
execute @a[score_TalkTrigger_min=301,score_TalkTrigger=314,score_PhotoSpot_min=7,score_PhotoSpot=7] ~ ~ ~ kill @e[x=-2156,y=104,z=-706,r=2,type=armor_stand]
execute @a[score_TalkTrigger_min=301,score_TalkTrigger=314,score_PhotoSpot_min=8,score_PhotoSpot=8] ~ ~ ~ kill @e[x=-1628,y=76,z=-944,r=2,type=armor_stand]
#
execute @a[score_TalkTrigger_min=301,score_TalkTrigger=314,score_PhotoSpot_min=10,score_PhotoSpot=10] ~ ~ ~ kill @e[x=652,y=120,z=-781,r=2,type=armor_stand]
execute @a[score_TalkTrigger_min=301,score_TalkTrigger=314,score_PhotoSpot_min=11,score_PhotoSpot=11] ~ ~ ~ kill @e[x=1195,y=107.5,z=-305,r=2,type=armor_stand]
execute @a[score_TalkTrigger_min=301,score_TalkTrigger=314,score_PhotoSpot_min=12,score_PhotoSpot=12] ~ ~ ~ kill @e[x=1548,y=115,z=278,r=2,type=armor_stand]
execute @a[score_TalkTrigger_min=301,score_TalkTrigger=314,score_PhotoSpot_min=13,score_PhotoSpot=13] ~ ~ ~ kill @e[x=1155,y=102,z=532,r=2,type=armor_stand]
execute @a[score_TalkTrigger_min=301,score_TalkTrigger=314,score_PhotoSpot_min=14,score_PhotoSpot=14] ~ ~ ~ kill @e[x=-1895,y=88,z=2257,r=2,type=armor_stand]


#/summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:218s}],HandItems:[{},{}],DisabledSlots:2039327}

#301 - Aquacorde Town Photo
execute @a[score_TalkTrigger_min=301,score_TalkTrigger=301,tag=PhotoSpot1,score_PhotoSpot_min=1,score_PhotoSpot=1] ~ ~ ~ /summon armor_stand 513 100 1289 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:218s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=301,score_TalkTrigger=301,tag=PhotoSpot1,score_PhotoSpot_min=2,score_PhotoSpot=2] ~ ~ ~ /summon armor_stand -166 102 -358 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:218s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=301,score_TalkTrigger=301,tag=PhotoSpot1,score_PhotoSpot_min=3,score_PhotoSpot=3] ~ ~ ~ /summon armor_stand -1302 100 -387 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:218s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=301,score_TalkTrigger=301,tag=PhotoSpot1,score_PhotoSpot_min=4,score_PhotoSpot=4] ~ ~ ~ /summon armor_stand -1634 103 -51 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:218s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=301,score_TalkTrigger=301,tag=PhotoSpot1,score_PhotoSpot_min=5,score_PhotoSpot=5] ~ ~ ~ /summon armor_stand -1076 109 2014 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:218s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=301,score_TalkTrigger=301,tag=PhotoSpot1,score_PhotoSpot_min=6,score_PhotoSpot=6] ~ ~ ~ /summon armor_stand -356 109 2014 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:218s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=301,score_TalkTrigger=301,tag=PhotoSpot1,score_PhotoSpot_min=7,score_PhotoSpot=7] ~ ~ ~ /summon armor_stand -2156 104 -706 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:218s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=301,score_TalkTrigger=301,tag=PhotoSpot1,score_PhotoSpot_min=8,score_PhotoSpot=8] ~ ~ ~ /summon armor_stand -1628 76 -944 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:218s}],HandItems:[{},{}],DisabledSlots:2039327}
#
execute @a[score_TalkTrigger_min=301,score_TalkTrigger=301,tag=PhotoSpot1,score_PhotoSpot_min=10,score_PhotoSpot=10] ~ ~ ~ /summon armor_stand 652 120 -781 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:218s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=301,score_TalkTrigger=301,tag=PhotoSpot1,score_PhotoSpot_min=11,score_PhotoSpot=11] ~ ~ ~ /summon armor_stand 1195 107.5 -305 {Rotation:[-90.0f,0.0f],Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:218s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=301,score_TalkTrigger=301,tag=PhotoSpot1,score_PhotoSpot_min=12,score_PhotoSpot=12] ~ ~ ~ /summon armor_stand 1548 115 278 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:218s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=301,score_TalkTrigger=301,tag=PhotoSpot1,score_PhotoSpot_min=13,score_PhotoSpot=13] ~ ~ ~ /summon armor_stand 1155 102 532 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:218s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=301,score_TalkTrigger=301,tag=PhotoSpot1,score_PhotoSpot_min=14,score_PhotoSpot=14] ~ ~ ~ /summon armor_stand -1895 88 2257 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:218s}],HandItems:[{},{}],DisabledSlots:2039327}


#302 - Lumiose City Town Photo
execute @a[score_TalkTrigger_min=302,score_TalkTrigger=302,tag=PhotoSpot2,score_PhotoSpot_min=1,score_PhotoSpot=1] ~ ~ ~ /summon armor_stand 513 100 1289 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:219s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=302,score_TalkTrigger=302,tag=PhotoSpot2,score_PhotoSpot_min=2,score_PhotoSpot=2] ~ ~ ~ /summon armor_stand -166 102 -358 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:219s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=302,score_TalkTrigger=302,tag=PhotoSpot2,score_PhotoSpot_min=3,score_PhotoSpot=3] ~ ~ ~ /summon armor_stand -1302 100 -387 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:219s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=302,score_TalkTrigger=302,tag=PhotoSpot2,score_PhotoSpot_min=4,score_PhotoSpot=4] ~ ~ ~ /summon armor_stand -1634 103 -51 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:219s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=302,score_TalkTrigger=302,tag=PhotoSpot2,score_PhotoSpot_min=5,score_PhotoSpot=5] ~ ~ ~ /summon armor_stand -1076 109 2014 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:219s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=302,score_TalkTrigger=302,tag=PhotoSpot2,score_PhotoSpot_min=6,score_PhotoSpot=6] ~ ~ ~ /summon armor_stand -356 109 2014 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:219s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=302,score_TalkTrigger=302,tag=PhotoSpot2,score_PhotoSpot_min=7,score_PhotoSpot=7] ~ ~ ~ /summon armor_stand -2156 104 -706 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:219s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=302,score_TalkTrigger=302,tag=PhotoSpot2,score_PhotoSpot_min=8,score_PhotoSpot=8] ~ ~ ~ /summon armor_stand -1628 76 -944 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:219s}],HandItems:[{},{}],DisabledSlots:2039327}
#
execute @a[score_TalkTrigger_min=302,score_TalkTrigger=302,tag=PhotoSpot2,score_PhotoSpot_min=10,score_PhotoSpot=10] ~ ~ ~ /summon armor_stand 652 120 -781 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:219s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=302,score_TalkTrigger=302,tag=PhotoSpot2,score_PhotoSpot_min=11,score_PhotoSpot=11] ~ ~ ~ /summon armor_stand 1195 107.5 -305 {Rotation:[-90.0f,0.0f],Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:219s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=302,score_TalkTrigger=302,tag=PhotoSpot2,score_PhotoSpot_min=12,score_PhotoSpot=12] ~ ~ ~ /summon armor_stand 1548 115 278 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:219s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=302,score_TalkTrigger=302,tag=PhotoSpot2,score_PhotoSpot_min=13,score_PhotoSpot=13] ~ ~ ~ /summon armor_stand 1155 102 532 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:219s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=302,score_TalkTrigger=302,tag=PhotoSpot2,score_PhotoSpot_min=14,score_PhotoSpot=14] ~ ~ ~ /summon armor_stand -1895 88 2257 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:219s}],HandItems:[{},{}],DisabledSlots:2039327}


#303 - Parfum Palace Town Photo
execute @a[score_TalkTrigger_min=303,score_TalkTrigger=303,tag=PhotoSpot3,score_PhotoSpot_min=1,score_PhotoSpot=1] ~ ~ ~ /summon armor_stand 513 100 1289 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:220s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=303,score_TalkTrigger=303,tag=PhotoSpot3,score_PhotoSpot_min=2,score_PhotoSpot=2] ~ ~ ~ /summon armor_stand -166 102 -358 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:220s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=303,score_TalkTrigger=303,tag=PhotoSpot3,score_PhotoSpot_min=3,score_PhotoSpot=3] ~ ~ ~ /summon armor_stand -1302 100 -387 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:220s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=303,score_TalkTrigger=303,tag=PhotoSpot3,score_PhotoSpot_min=4,score_PhotoSpot=4] ~ ~ ~ /summon armor_stand -1634 103 -51 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:220s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=303,score_TalkTrigger=303,tag=PhotoSpot3,score_PhotoSpot_min=5,score_PhotoSpot=5] ~ ~ ~ /summon armor_stand -1076 109 2014 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:220s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=303,score_TalkTrigger=303,tag=PhotoSpot3,score_PhotoSpot_min=6,score_PhotoSpot=6] ~ ~ ~ /summon armor_stand -356 109 2014 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:220s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=303,score_TalkTrigger=303,tag=PhotoSpot3,score_PhotoSpot_min=7,score_PhotoSpot=7] ~ ~ ~ /summon armor_stand -2156 104 -706 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:220s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=303,score_TalkTrigger=303,tag=PhotoSpot3,score_PhotoSpot_min=8,score_PhotoSpot=8] ~ ~ ~ /summon armor_stand -1628 76 -944 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:220s}],HandItems:[{},{}],DisabledSlots:2039327}
#
execute @a[score_TalkTrigger_min=303,score_TalkTrigger=303,tag=PhotoSpot3,score_PhotoSpot_min=10,score_PhotoSpot=10] ~ ~ ~ /summon armor_stand 652 120 -781 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:220s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=303,score_TalkTrigger=303,tag=PhotoSpot3,score_PhotoSpot_min=11,score_PhotoSpot=11] ~ ~ ~ /summon armor_stand 1195 107.5 -305 {Rotation:[-90.0f,0.0f],Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:220s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=303,score_TalkTrigger=303,tag=PhotoSpot3,score_PhotoSpot_min=12,score_PhotoSpot=12] ~ ~ ~ /summon armor_stand 1548 115 278 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:220s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=303,score_TalkTrigger=303,tag=PhotoSpot3,score_PhotoSpot_min=13,score_PhotoSpot=13] ~ ~ ~ /summon armor_stand 1155 102 532 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:220s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=303,score_TalkTrigger=303,tag=PhotoSpot3,score_PhotoSpot_min=14,score_PhotoSpot=14] ~ ~ ~ /summon armor_stand -1895 88 2257 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:220s}],HandItems:[{},{}],DisabledSlots:2039327}


#304 - Route 7 Town Photo
execute @a[score_TalkTrigger_min=304,score_TalkTrigger=304,tag=PhotoSpot4,score_PhotoSpot_min=1,score_PhotoSpot=1] ~ ~ ~ /summon armor_stand 513 100 1289 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:221s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=304,score_TalkTrigger=304,tag=PhotoSpot4,score_PhotoSpot_min=2,score_PhotoSpot=2] ~ ~ ~ /summon armor_stand -166 102 -358 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:221s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=304,score_TalkTrigger=304,tag=PhotoSpot4,score_PhotoSpot_min=3,score_PhotoSpot=3] ~ ~ ~ /summon armor_stand -1302 100 -387 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:221s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=304,score_TalkTrigger=304,tag=PhotoSpot4,score_PhotoSpot_min=4,score_PhotoSpot=4] ~ ~ ~ /summon armor_stand -1634 103 -51 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:221s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=304,score_TalkTrigger=304,tag=PhotoSpot4,score_PhotoSpot_min=5,score_PhotoSpot=5] ~ ~ ~ /summon armor_stand -1076 109 2014 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:221s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=304,score_TalkTrigger=304,tag=PhotoSpot4,score_PhotoSpot_min=6,score_PhotoSpot=6] ~ ~ ~ /summon armor_stand -356 109 2014 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:221s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=304,score_TalkTrigger=304,tag=PhotoSpot4,score_PhotoSpot_min=7,score_PhotoSpot=7] ~ ~ ~ /summon armor_stand -2156 104 -706 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:221s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=304,score_TalkTrigger=304,tag=PhotoSpot4,score_PhotoSpot_min=8,score_PhotoSpot=8] ~ ~ ~ /summon armor_stand -1628 76 -944 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:221s}],HandItems:[{},{}],DisabledSlots:2039327}
#
execute @a[score_TalkTrigger_min=304,score_TalkTrigger=304,tag=PhotoSpot4,score_PhotoSpot_min=10,score_PhotoSpot=10] ~ ~ ~ /summon armor_stand 652 120 -781 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:221s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=304,score_TalkTrigger=304,tag=PhotoSpot4,score_PhotoSpot_min=11,score_PhotoSpot=11] ~ ~ ~ /summon armor_stand 1195 107.5 -305 {Rotation:[-90.0f,0.0f],Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:221s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=304,score_TalkTrigger=304,tag=PhotoSpot4,score_PhotoSpot_min=12,score_PhotoSpot=12] ~ ~ ~ /summon armor_stand 1548 115 278 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:221s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=304,score_TalkTrigger=304,tag=PhotoSpot4,score_PhotoSpot_min=13,score_PhotoSpot=13] ~ ~ ~ /summon armor_stand 1155 102 532 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:221s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=304,score_TalkTrigger=304,tag=PhotoSpot4,score_PhotoSpot_min=14,score_PhotoSpot=14] ~ ~ ~ /summon armor_stand -1895 88 2257 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:221s}],HandItems:[{},{}],DisabledSlots:2039327}


#305 - Geosenge Town (Weapon) Town Photo



#306 - Geosenge Town (Destroyed) Town Photo
execute @a[score_TalkTrigger_min=306,score_TalkTrigger=306,tag=PhotoSpot6,score_PhotoSpot_min=1,score_PhotoSpot=1] ~ ~ ~ /summon armor_stand 513 100 1289 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:223s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=306,score_TalkTrigger=306,tag=PhotoSpot6,score_PhotoSpot_min=2,score_PhotoSpot=2] ~ ~ ~ /summon armor_stand -166 102 -358 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:223s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=306,score_TalkTrigger=306,tag=PhotoSpot6,score_PhotoSpot_min=3,score_PhotoSpot=3] ~ ~ ~ /summon armor_stand -1302 100 -387 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:223s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=306,score_TalkTrigger=306,tag=PhotoSpot6,score_PhotoSpot_min=4,score_PhotoSpot=4] ~ ~ ~ /summon armor_stand -1634 103 -51 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:223s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=306,score_TalkTrigger=306,tag=PhotoSpot6,score_PhotoSpot_min=5,score_PhotoSpot=5] ~ ~ ~ /summon armor_stand -1076 109 2014 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:223s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=306,score_TalkTrigger=306,tag=PhotoSpot6,score_PhotoSpot_min=6,score_PhotoSpot=6] ~ ~ ~ /summon armor_stand -356 109 2014 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:223s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=306,score_TalkTrigger=306,tag=PhotoSpot6,score_PhotoSpot_min=7,score_PhotoSpot=7] ~ ~ ~ /summon armor_stand -2156 104 -706 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:223s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=306,score_TalkTrigger=306,tag=PhotoSpot6,score_PhotoSpot_min=8,score_PhotoSpot=8] ~ ~ ~ /summon armor_stand -1628 76 -944 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:223s}],HandItems:[{},{}],DisabledSlots:2039327}
#3063066223
execute @a[score_TalkTrigger_min=306,score_TalkTrigger=306,tag=PhotoSpot6,score_PhotoSpot_min=10,score_PhotoSpot=10] ~ ~ ~ /summon armor_stand 652 120 -781 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:223s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=306,score_TalkTrigger=306,tag=PhotoSpot6,score_PhotoSpot_min=11,score_PhotoSpot=11] ~ ~ ~ /summon armor_stand 1195 107.5 -305 {Rotation:[-90.0f,0.0f],Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:223s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=306,score_TalkTrigger=306,tag=PhotoSpot6,score_PhotoSpot_min=12,score_PhotoSpot=12] ~ ~ ~ /summon armor_stand 1548 115 278 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:223s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=306,score_TalkTrigger=306,tag=PhotoSpot6,score_PhotoSpot_min=13,score_PhotoSpot=13] ~ ~ ~ /summon armor_stand 1155 102 532 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:223s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=306,score_TalkTrigger=306,tag=PhotoSpot6,score_PhotoSpot_min=14,score_PhotoSpot=14] ~ ~ ~ /summon armor_stand -1895 88 2257 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:223s}],HandItems:[{},{}],DisabledSlots:2039327}


#307 - Geosenge Town (Normal) Town Photo



#308 - Shalour City Town Photo
execute @a[score_TalkTrigger_min=308,score_TalkTrigger=308,tag=PhotoSpot8,score_PhotoSpot_min=1,score_PhotoSpot=1] ~ ~ ~ /summon armor_stand 513 100 1289 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:225s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=308,score_TalkTrigger=308,tag=PhotoSpot8,score_PhotoSpot_min=2,score_PhotoSpot=2] ~ ~ ~ /summon armor_stand -166 102 -358 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:225s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=308,score_TalkTrigger=308,tag=PhotoSpot8,score_PhotoSpot_min=3,score_PhotoSpot=3] ~ ~ ~ /summon armor_stand -1302 100 -387 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:225s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=308,score_TalkTrigger=308,tag=PhotoSpot8,score_PhotoSpot_min=4,score_PhotoSpot=4] ~ ~ ~ /summon armor_stand -1634 103 -51 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:225s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=308,score_TalkTrigger=308,tag=PhotoSpot8,score_PhotoSpot_min=5,score_PhotoSpot=5] ~ ~ ~ /summon armor_stand -1076 109 2014 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:225s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=308,score_TalkTrigger=308,tag=PhotoSpot8,score_PhotoSpot_min=6,score_PhotoSpot=6] ~ ~ ~ /summon armor_stand -356 109 2014 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:225s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=308,score_TalkTrigger=308,tag=PhotoSpot8,score_PhotoSpot_min=7,score_PhotoSpot=7] ~ ~ ~ /summon armor_stand -2156 104 -706 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:225s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=308,score_TalkTrigger=308,tag=PhotoSpot8,score_PhotoSpot_min=8,score_PhotoSpot=8] ~ ~ ~ /summon armor_stand -1628 76 -944 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:225s}],HandItems:[{},{}],DisabledSlots:2039327}
#3083088225
execute @a[score_TalkTrigger_min=308,score_TalkTrigger=308,tag=PhotoSpot8,score_PhotoSpot_min=10,score_PhotoSpot=10] ~ ~ ~ /summon armor_stand 652 120 -781 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:225s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=308,score_TalkTrigger=308,tag=PhotoSpot8,score_PhotoSpot_min=11,score_PhotoSpot=11] ~ ~ ~ /summon armor_stand 1195 107.5 -305 {Rotation:[-90.0f,0.0f],Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:225s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=308,score_TalkTrigger=308,tag=PhotoSpot8,score_PhotoSpot_min=12,score_PhotoSpot=12] ~ ~ ~ /summon armor_stand 1548 115 278 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:225s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=308,score_TalkTrigger=308,tag=PhotoSpot8,score_PhotoSpot_min=13,score_PhotoSpot=13] ~ ~ ~ /summon armor_stand 1155 102 532 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:225s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=308,score_TalkTrigger=308,tag=PhotoSpot8,score_PhotoSpot_min=14,score_PhotoSpot=14] ~ ~ ~ /summon armor_stand -1895 88 2257 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:225s}],HandItems:[{},{}],DisabledSlots:2039327}


#309 - Azure Bay Town Photo



#310 - Frost Cavern Town Photo
execute @a[score_TalkTrigger_min=310,score_TalkTrigger=310,tag=PhotoSpot10,score_PhotoSpot_min=1,score_PhotoSpot=1] ~ ~ ~ /summon armor_stand 513 100 1289 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:227s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=310,score_TalkTrigger=310,tag=PhotoSpot10,score_PhotoSpot_min=2,score_PhotoSpot=2] ~ ~ ~ /summon armor_stand -166 102 -358 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:227s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=310,score_TalkTrigger=310,tag=PhotoSpot10,score_PhotoSpot_min=3,score_PhotoSpot=3] ~ ~ ~ /summon armor_stand -1302 100 -387 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:227s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=310,score_TalkTrigger=310,tag=PhotoSpot10,score_PhotoSpot_min=4,score_PhotoSpot=4] ~ ~ ~ /summon armor_stand -1634 103 -51 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:227s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=310,score_TalkTrigger=310,tag=PhotoSpot10,score_PhotoSpot_min=5,score_PhotoSpot=5] ~ ~ ~ /summon armor_stand -1076 109 2014 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:227s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=310,score_TalkTrigger=310,tag=PhotoSpot10,score_PhotoSpot_min=6,score_PhotoSpot=6] ~ ~ ~ /summon armor_stand -356 109 2014 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:227s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=310,score_TalkTrigger=310,tag=PhotoSpot10,score_PhotoSpot_min=7,score_PhotoSpot=7] ~ ~ ~ /summon armor_stand -2156 104 -706 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:227s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=310,score_TalkTrigger=310,tag=PhotoSpot10,score_PhotoSpot_min=8,score_PhotoSpot=8] ~ ~ ~ /summon armor_stand -1628 76 -944 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:227s}],HandItems:[{},{}],DisabledSlots:2039327}
#31031010227
execute @a[score_TalkTrigger_min=310,score_TalkTrigger=310,tag=PhotoSpot10,score_PhotoSpot_min=10,score_PhotoSpot=10] ~ ~ ~ /summon armor_stand 652 120 -781 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:227s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=310,score_TalkTrigger=310,tag=PhotoSpot10,score_PhotoSpot_min=11,score_PhotoSpot=11] ~ ~ ~ /summon armor_stand 1195 107.5 -305 {Rotation:[-90.0f,0.0f],Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:227s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=310,score_TalkTrigger=310,tag=PhotoSpot10,score_PhotoSpot_min=12,score_PhotoSpot=12] ~ ~ ~ /summon armor_stand 1548 115 278 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:227s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=310,score_TalkTrigger=310,tag=PhotoSpot10,score_PhotoSpot_min=13,score_PhotoSpot=13] ~ ~ ~ /summon armor_stand 1155 102 532 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:227s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=310,score_TalkTrigger=310,tag=PhotoSpot10,score_PhotoSpot_min=14,score_PhotoSpot=14] ~ ~ ~ /summon armor_stand -1895 88 2257 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:227s}],HandItems:[{},{}],DisabledSlots:2039327}


#311 - Anistar City Town Photo
execute @a[score_TalkTrigger_min=311,score_TalkTrigger=311,tag=PhotoSpot11,score_PhotoSpot_min=1,score_PhotoSpot=1] ~ ~ ~ /summon armor_stand 513 100 1289 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:228s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=311,score_TalkTrigger=311,tag=PhotoSpot11,score_PhotoSpot_min=2,score_PhotoSpot=2] ~ ~ ~ /summon armor_stand -166 102 -358 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:228s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=311,score_TalkTrigger=311,tag=PhotoSpot11,score_PhotoSpot_min=3,score_PhotoSpot=3] ~ ~ ~ /summon armor_stand -1302 100 -387 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:228s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=311,score_TalkTrigger=311,tag=PhotoSpot11,score_PhotoSpot_min=4,score_PhotoSpot=4] ~ ~ ~ /summon armor_stand -1634 103 -51 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:228s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=311,score_TalkTrigger=311,tag=PhotoSpot11,score_PhotoSpot_min=5,score_PhotoSpot=5] ~ ~ ~ /summon armor_stand -1076 109 2014 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:228s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=311,score_TalkTrigger=311,tag=PhotoSpot11,score_PhotoSpot_min=6,score_PhotoSpot=6] ~ ~ ~ /summon armor_stand -356 109 2014 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:228s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=311,score_TalkTrigger=311,tag=PhotoSpot11,score_PhotoSpot_min=7,score_PhotoSpot=7] ~ ~ ~ /summon armor_stand -2156 104 -706 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:228s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=311,score_TalkTrigger=311,tag=PhotoSpot11,score_PhotoSpot_min=8,score_PhotoSpot=8] ~ ~ ~ /summon armor_stand -1628 76 -944 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:228s}],HandItems:[{},{}],DisabledSlots:2039327}
#31131111228
execute @a[score_TalkTrigger_min=311,score_TalkTrigger=311,tag=PhotoSpot11,score_PhotoSpot_min=10,score_PhotoSpot=10] ~ ~ ~ /summon armor_stand 652 120 -781 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:228s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=311,score_TalkTrigger=311,tag=PhotoSpot11,score_PhotoSpot_min=11,score_PhotoSpot=11] ~ ~ ~ /summon armor_stand 1195 107.5 -305 {Rotation:[-90.0f,0.0f],Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:228s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=311,score_TalkTrigger=311,tag=PhotoSpot11,score_PhotoSpot_min=12,score_PhotoSpot=12] ~ ~ ~ /summon armor_stand 1548 115 278 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:228s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=311,score_TalkTrigger=311,tag=PhotoSpot11,score_PhotoSpot_min=13,score_PhotoSpot=13] ~ ~ ~ /summon armor_stand 1155 102 532 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:228s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=311,score_TalkTrigger=311,tag=PhotoSpot11,score_PhotoSpot_min=14,score_PhotoSpot=14] ~ ~ ~ /summon armor_stand -1895 88 2257 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:228s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=311,score_TalkTrigger=311,tag=PhotoSpot11,score_PhotoSpot_min=1,score_PhotoSpot=14] ~ ~ ~


#312 - Couriway Town Town Photo
execute @a[score_TalkTrigger_min=312,score_TalkTrigger=312,tag=PhotoSpot12,score_PhotoSpot_min=1,score_PhotoSpot=1] ~ ~ ~ /summon armor_stand 513 100 1289 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:229s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=312,score_TalkTrigger=312,tag=PhotoSpot12,score_PhotoSpot_min=2,score_PhotoSpot=2] ~ ~ ~ /summon armor_stand -166 102 -358 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:229s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=312,score_TalkTrigger=312,tag=PhotoSpot12,score_PhotoSpot_min=3,score_PhotoSpot=3] ~ ~ ~ /summon armor_stand -1302 100 -387 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:229s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=312,score_TalkTrigger=312,tag=PhotoSpot12,score_PhotoSpot_min=4,score_PhotoSpot=4] ~ ~ ~ /summon armor_stand -1634 103 -51 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:229s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=312,score_TalkTrigger=312,tag=PhotoSpot12,score_PhotoSpot_min=5,score_PhotoSpot=5] ~ ~ ~ /summon armor_stand -1076 109 2014 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:229s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=312,score_TalkTrigger=312,tag=PhotoSpot12,score_PhotoSpot_min=6,score_PhotoSpot=6] ~ ~ ~ /summon armor_stand -356 109 2014 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:229s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=312,score_TalkTrigger=312,tag=PhotoSpot12,score_PhotoSpot_min=7,score_PhotoSpot=7] ~ ~ ~ /summon armor_stand -2156 104 -706 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:229s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=312,score_TalkTrigger=312,tag=PhotoSpot12,score_PhotoSpot_min=8,score_PhotoSpot=8] ~ ~ ~ /summon armor_stand -1628 76 -944 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:229s}],HandItems:[{},{}],DisabledSlots:2039327}
#31231212229
execute @a[score_TalkTrigger_min=312,score_TalkTrigger=312,tag=PhotoSpot12,score_PhotoSpot_min=10,score_PhotoSpot=10] ~ ~ ~ /summon armor_stand 652 120 -781 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:229s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=312,score_TalkTrigger=312,tag=PhotoSpot12,score_PhotoSpot_min=11,score_PhotoSpot=11] ~ ~ ~ /summon armor_stand 1195 107.5 -305 {Rotation:[-90.0f,0.0f],Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:229s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=312,score_TalkTrigger=312,tag=PhotoSpot12,score_PhotoSpot_min=12,score_PhotoSpot=12] ~ ~ ~ /summon armor_stand 1548 115 278 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:229s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=312,score_TalkTrigger=312,tag=PhotoSpot12,score_PhotoSpot_min=13,score_PhotoSpot=13] ~ ~ ~ /summon armor_stand 1155 102 532 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:229s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=312,score_TalkTrigger=312,tag=PhotoSpot12,score_PhotoSpot_min=14,score_PhotoSpot=14] ~ ~ ~ /summon armor_stand -1895 88 2257 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:229s}],HandItems:[{},{}],DisabledSlots:2039327}


#313 - Snowbelle City Town Photo
execute @a[score_TalkTrigger_min=313,score_TalkTrigger=313,tag=PhotoSpot13,score_PhotoSpot_min=1,score_PhotoSpot=1] ~ ~ ~ /summon armor_stand 513 100 1289 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:230s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=313,score_TalkTrigger=313,tag=PhotoSpot13,score_PhotoSpot_min=2,score_PhotoSpot=2] ~ ~ ~ /summon armor_stand -166 102 -358 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:230s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=313,score_TalkTrigger=313,tag=PhotoSpot13,score_PhotoSpot_min=3,score_PhotoSpot=3] ~ ~ ~ /summon armor_stand -1302 100 -387 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:230s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=313,score_TalkTrigger=313,tag=PhotoSpot13,score_PhotoSpot_min=4,score_PhotoSpot=4] ~ ~ ~ /summon armor_stand -1634 103 -51 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:230s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=313,score_TalkTrigger=313,tag=PhotoSpot13,score_PhotoSpot_min=5,score_PhotoSpot=5] ~ ~ ~ /summon armor_stand -1076 109 2014 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:230s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=313,score_TalkTrigger=313,tag=PhotoSpot13,score_PhotoSpot_min=6,score_PhotoSpot=6] ~ ~ ~ /summon armor_stand -356 109 2014 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:230s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=313,score_TalkTrigger=313,tag=PhotoSpot13,score_PhotoSpot_min=7,score_PhotoSpot=7] ~ ~ ~ /summon armor_stand -2156 104 -706 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:230s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=313,score_TalkTrigger=313,tag=PhotoSpot13,score_PhotoSpot_min=8,score_PhotoSpot=8] ~ ~ ~ /summon armor_stand -1628 76 -944 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:230s}],HandItems:[{},{}],DisabledSlots:2039327}
#31331313230
execute @a[score_TalkTrigger_min=313,score_TalkTrigger=313,tag=PhotoSpot13,score_PhotoSpot_min=10,score_PhotoSpot=10] ~ ~ ~ /summon armor_stand 652 120 -781 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:230s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=313,score_TalkTrigger=313,tag=PhotoSpot13,score_PhotoSpot_min=11,score_PhotoSpot=11] ~ ~ ~ /summon armor_stand 1195 107.5 -305 {Rotation:[-90.0f,0.0f],Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:230s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=313,score_TalkTrigger=313,tag=PhotoSpot13,score_PhotoSpot_min=12,score_PhotoSpot=12] ~ ~ ~ /summon armor_stand 1548 115 278 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:230s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=313,score_TalkTrigger=313,tag=PhotoSpot13,score_PhotoSpot_min=13,score_PhotoSpot=13] ~ ~ ~ /summon armor_stand 1155 102 532 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:230s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=313,score_TalkTrigger=313,tag=PhotoSpot13,score_PhotoSpot_min=14,score_PhotoSpot=14] ~ ~ ~ /summon armor_stand -1895 88 2257 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:230s}],HandItems:[{},{}],DisabledSlots:2039327}


#314 - Pokémon League Town Photo
execute @a[score_TalkTrigger_min=314,score_TalkTrigger=314,tag=PhotoSpot14,score_PhotoSpot_min=1,score_PhotoSpot=1] ~ ~ ~ /summon armor_stand 513 100 1289 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:231s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=314,score_TalkTrigger=314,tag=PhotoSpot14,score_PhotoSpot_min=2,score_PhotoSpot=2] ~ ~ ~ /summon armor_stand -166 102 -358 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:231s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=314,score_TalkTrigger=314,tag=PhotoSpot14,score_PhotoSpot_min=3,score_PhotoSpot=3] ~ ~ ~ /summon armor_stand -1302 100 -387 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:231s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=314,score_TalkTrigger=314,tag=PhotoSpot14,score_PhotoSpot_min=4,score_PhotoSpot=4] ~ ~ ~ /summon armor_stand -1634 103 -51 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:231s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=314,score_TalkTrigger=314,tag=PhotoSpot14,score_PhotoSpot_min=5,score_PhotoSpot=5] ~ ~ ~ /summon armor_stand -1076 109 2014 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:231s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=314,score_TalkTrigger=314,tag=PhotoSpot14,score_PhotoSpot_min=6,score_PhotoSpot=6] ~ ~ ~ /summon armor_stand -356 109 2014 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:231s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=314,score_TalkTrigger=314,tag=PhotoSpot14,score_PhotoSpot_min=7,score_PhotoSpot=7] ~ ~ ~ /summon armor_stand -2156 104 -706 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:231s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=314,score_TalkTrigger=314,tag=PhotoSpot14,score_PhotoSpot_min=8,score_PhotoSpot=8] ~ ~ ~ /summon armor_stand -1628 76 -944 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:231s}],HandItems:[{},{}],DisabledSlots:2039327}
#31431414231
execute @a[score_TalkTrigger_min=314,score_TalkTrigger=314,tag=PhotoSpot14,score_PhotoSpot_min=10,score_PhotoSpot=10] ~ ~ ~ /summon armor_stand 652 120 -781 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:231s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=314,score_TalkTrigger=314,tag=PhotoSpot14,score_PhotoSpot_min=11,score_PhotoSpot=11] ~ ~ ~ /summon armor_stand 1195 107.5 -305 {Rotation:[-90.0f,0.0f],Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:231s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=314,score_TalkTrigger=314,tag=PhotoSpot14,score_PhotoSpot_min=12,score_PhotoSpot=12] ~ ~ ~ /summon armor_stand 1548 115 278 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:231s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=314,score_TalkTrigger=314,tag=PhotoSpot14,score_PhotoSpot_min=13,score_PhotoSpot=13] ~ ~ ~ /summon armor_stand 1155 102 532 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:231s}],HandItems:[{},{}],DisabledSlots:2039327}
execute @a[score_TalkTrigger_min=314,score_TalkTrigger=314,tag=PhotoSpot14,score_PhotoSpot_min=14,score_PhotoSpot=14] ~ ~ ~ /summon armor_stand -1895 88 2257 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:231s}],HandItems:[{},{}],DisabledSlots:2039327}

execute @a[score_TalkTrigger_min=301,score_TalkTrigger=314] ~ ~ ~ scoreboard players set @s TalkTrigger 0


#If player walks away from a photo spot:
#execute @e[type=armor_stand,tag=PhotoSpot] ~ ~ ~ execute @a[r=50,rm=20,score_DialogueTrigger=0,score_PhotoSpot_min=1] ~ ~ ~ scoreboard players set @s TalkTrigger 299


#317 - Photo Spot out of order (Geosenges)
execute @a[score_TalkTrigger_min=317,score_TalkTrigger=317] ~ ~ ~ tellraw @s {"text":"This photo spot is still under construction.","italic":true,"color":"gray"}
execute @a[score_TalkTrigger_min=317,score_TalkTrigger=317] ~ ~ ~ scoreboard players set @s TalkTrigger 0

#--------------------------------------------------------------------------------------------------------------------------------
#318 - Shalour Hiker stone prompt

execute @a[score_TalkTrigger_min=318,score_TalkTrigger=318] ~ ~ ~ scoreboard players tag @s add verify {Inventory:[{id:"minecraft:prismarine_crystals"}]}
execute @a[score_TalkTrigger_min=318,score_TalkTrigger=318,tag=verify] ~ ~ ~ playsound pixelmon:pixelmon.block.pokelootobtained ambient @s ~ ~ ~ 10 1 1
execute @a[score_TalkTrigger_min=318,score_TalkTrigger=318,tag=verify] ~ ~ ~ clear @s minecraft:prismarine_crystals
execute @a[score_TalkTrigger_min=318,score_TalkTrigger=318,tag=verify] ~ ~ ~ give @s pixelmon:sun_stone
execute @a[score_TalkTrigger_min=318,score_TalkTrigger=318,tag=verify] ~ ~ ~ tellraw @s {"text":"<Hiker> It's a funny thing. You tend to come across rare stones in Shalour City. I'll bet the Mega Evolution guru'll be really happy if this is a Mega Stone."}
execute @a[score_TalkTrigger_min=318,score_TalkTrigger=318] ~ ~ ~ scoreboard players tag @s remove verify
execute @a[score_TalkTrigger_min=318,score_TalkTrigger=318] ~ ~ ~ scoreboard players set @s TalkTrigger 0

#--------------------------------------------------------------------------------------------------------------------------------

#Languages

execute @a[score_TalkTrigger_min=319,score_TalkTrigger=325] ~ ~ ~ scoreboard players tag @s remove Japanese
execute @a[score_TalkTrigger_min=319,score_TalkTrigger=325] ~ ~ ~ scoreboard players tag @s remove English
execute @a[score_TalkTrigger_min=319,score_TalkTrigger=325] ~ ~ ~ scoreboard players tag @s remove German
execute @a[score_TalkTrigger_min=319,score_TalkTrigger=325] ~ ~ ~ scoreboard players tag @s remove Spanish
execute @a[score_TalkTrigger_min=319,score_TalkTrigger=325] ~ ~ ~ scoreboard players tag @s remove French
execute @a[score_TalkTrigger_min=319,score_TalkTrigger=325] ~ ~ ~ scoreboard players tag @s remove Italian
execute @a[score_TalkTrigger_min=319,score_TalkTrigger=325] ~ ~ ~ scoreboard players tag @s remove Korean

#Japanese
execute @a[score_TalkTrigger_min=319,score_TalkTrigger=319] ~ ~ ~ tellraw @s {"text":"日本語!"}
execute @a[score_TalkTrigger_min=319,score_TalkTrigger=319] ~ ~ ~ scoreboard players tag @s add Japanese
execute @a[score_TalkTrigger_min=319,score_TalkTrigger=319] ~ ~ ~ scoreboard players set @s TalkTrigger 0

#English
execute @a[score_TalkTrigger_min=320,score_TalkTrigger=320] ~ ~ ~ tellraw @s {"text":"English!"}
execute @a[score_TalkTrigger_min=320,score_TalkTrigger=320] ~ ~ ~ scoreboard players tag @s add English
execute @a[score_TalkTrigger_min=320,score_TalkTrigger=320] ~ ~ ~ scoreboard players set @s TalkTrigger 0

#German
execute @a[score_TalkTrigger_min=321,score_TalkTrigger=321] ~ ~ ~ tellraw @s {"text":"Deutsche!"}
execute @a[score_TalkTrigger_min=321,score_TalkTrigger=321] ~ ~ ~ scoreboard players tag @s add German
execute @a[score_TalkTrigger_min=321,score_TalkTrigger=321] ~ ~ ~ scoreboard players set @s TalkTrigger 0

#Spanish
execute @a[score_TalkTrigger_min=322,score_TalkTrigger=322] ~ ~ ~ tellraw @s {"text":"¡Español!"}
execute @a[score_TalkTrigger_min=322,score_TalkTrigger=322] ~ ~ ~ scoreboard players tag @s add Spanish
execute @a[score_TalkTrigger_min=322,score_TalkTrigger=322] ~ ~ ~ scoreboard players set @s TalkTrigger 0

#French
execute @a[score_TalkTrigger_min=323,score_TalkTrigger=323] ~ ~ ~ tellraw @s {"text":"Français!"}
execute @a[score_TalkTrigger_min=323,score_TalkTrigger=323] ~ ~ ~ scoreboard players tag @s add French
execute @a[score_TalkTrigger_min=323,score_TalkTrigger=323] ~ ~ ~ scoreboard players set @s TalkTrigger 0

#Italian
execute @a[score_TalkTrigger_min=324,score_TalkTrigger=324] ~ ~ ~ tellraw @s {"text":"Italiano!"}
execute @a[score_TalkTrigger_min=324,score_TalkTrigger=324] ~ ~ ~ scoreboard players tag @s add Italian
execute @a[score_TalkTrigger_min=324,score_TalkTrigger=324] ~ ~ ~ scoreboard players set @s TalkTrigger 0

#Korean
execute @a[score_TalkTrigger_min=325,score_TalkTrigger=325] ~ ~ ~ tellraw @s {"text":"한국어!"}
execute @a[score_TalkTrigger_min=325,score_TalkTrigger=325] ~ ~ ~ scoreboard players tag @s add Korean
execute @a[score_TalkTrigger_min=325,score_TalkTrigger=325] ~ ~ ~ scoreboard players set @s TalkTrigger 0





#--------------------------------------------------------------------------------------------------------------------------------

#Catch-all Reset
#scoreboard players set @a[score_TalkTrigger_min=1] TalkTrigger 0




#Command to activate in tellraws:
#/trigger TalkTrigger set 1
#/scoreboard players enable @p TalkTrigger

#For NPCS & Statues
#/tedit add INTERACT /scoreboard players set @pl TalkTrigger 296
