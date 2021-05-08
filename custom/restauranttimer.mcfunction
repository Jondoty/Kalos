#Restaurant Le Nah

execute @a[c=1,score_RestaurantBattle_min=1,score_RestaurantBattle=1,tag=RunTimer] ~ ~ ~ scoreboard players add @e[x=-685,y=100,z=1368,dy=3,type=armor_stand] RestaurantTimer 1

execute @e[x=-685,y=100,z=1368,dy=3,type=armor_stand,score_RestaurantTimer_min=20] ~ ~ ~ scoreboard players add @a[c=1,score_RestaurantBattle_min=1,score_RestaurantBattle=1,tag=RunTimer] RestaurantTimer 1
execute @e[x=-685,y=100,z=1368,dy=3,type=armor_stand,score_RestaurantTimer_min=20] ~ ~ ~ scoreboard players add Le_Nah Battle_Time 1
execute @e[x=-685,y=100,z=1368,dy=3,type=armor_stand,score_RestaurantTimer_min=20] ~ ~ ~ scoreboard players set @s RestaurantTimer 0




#Restaurant Le Yeah

execute @a[c=1,score_RestaurantBattle_min=2,score_RestaurantBattle=2,tag=RunTimer] ~ ~ ~ scoreboard players add @e[x=-683,y=100,z=1368,dy=3,type=armor_stand] RestaurantTimer 1

execute @e[x=-683,y=100,z=1368,dy=3,type=armor_stand,score_RestaurantTimer_min=20] ~ ~ ~ scoreboard players add @a[c=1,score_RestaurantBattle_min=2,score_RestaurantBattle=2,tag=RunTimer] RestaurantTimer 1
execute @e[x=-683,y=100,z=1368,dy=3,type=armor_stand,score_RestaurantTimer_min=20] ~ ~ ~ scoreboard players add Le_Yeah Battle_Time 1
execute @e[x=-683,y=100,z=1368,dy=3,type=armor_stand,score_RestaurantTimer_min=20] ~ ~ ~ scoreboard players set @s RestaurantTimer 0



#Restaurant Le Wow

execute @a[c=1,score_RestaurantBattle_min=3,score_RestaurantBattle=3,tag=RunTimer] ~ ~ ~ scoreboard players add @e[x=-681,y=100,z=1368,dy=3,type=armor_stand] RestaurantTimer 1

execute @e[x=-681,y=100,z=1368,dy=3,type=armor_stand,score_RestaurantTimer_min=20] ~ ~ ~ scoreboard players add @a[c=1,score_RestaurantBattle_min=3,score_RestaurantBattle=3,tag=RunTimer] RestaurantTimer 1
execute @e[x=-681,y=100,z=1368,dy=3,type=armor_stand,score_RestaurantTimer_min=20] ~ ~ ~ scoreboard players add Le_Wow Battle_Time 1
execute @e[x=-681,y=100,z=1368,dy=3,type=armor_stand,score_RestaurantTimer_min=20] ~ ~ ~ scoreboard players set @s RestaurantTimer 0



#Restaurant Sushi High Roller

execute @a[c=1,score_RestaurantBattle_min=4,score_RestaurantBattle=4,tag=RunTimer] ~ ~ ~ scoreboard players add @e[x=-679,y=100,z=1368,dy=3,type=armor_stand] RestaurantTimer 1

execute @e[x=-679,y=100,z=1368,dy=3,type=armor_stand,score_RestaurantTimer_min=20] ~ ~ ~ scoreboard players add @a[c=1,score_RestaurantBattle_min=4,score_RestaurantBattle=4,tag=RunTimer] RestaurantTimer 1
execute @e[x=-679,y=100,z=1368,dy=3,type=armor_stand,score_RestaurantTimer_min=20] ~ ~ ~ scoreboard players add High_Roller Battle_Time 1
execute @e[x=-679,y=100,z=1368,dy=3,type=armor_stand,score_RestaurantTimer_min=20] ~ ~ ~ scoreboard players set @s RestaurantTimer 0


#Tells the player the target time
#Le Nah
execute @a[score_RestaurantBattle_min=1,score_RestaurantBattle=1,tag=RunTimer,score_TalkTime=0] ~ ~ ~ execute @s[tag=Dialogue242] ~ ~ ~ title @s[tag=!Dialogue243] actionbar {"text":"Target Time: 60 seconds"}
execute @a[score_RestaurantBattle_min=1,score_RestaurantBattle=1,tag=RunTimer,score_TalkTime=0] ~ ~ ~ execute @s[tag=Dialogue243] ~ ~ ~ title @s[tag=!Dialogue244] actionbar {"text":"Target Time: 60 seconds"}
execute @a[score_RestaurantBattle_min=1,score_RestaurantBattle=1,tag=RunTimer,score_TalkTime=0] ~ ~ ~ execute @s[tag=Dialogue244] ~ ~ ~ title @s[tag=!Dialogue245] actionbar {"text":"Target Time: 60 seconds"}

#Le Yeah
execute @a[score_RestaurantBattle_min=2,score_RestaurantBattle=2,tag=RunTimer,score_TalkTime=0] ~ ~ ~ execute @s[tag=Dialogue246] ~ ~ ~ title @s[tag=!Dialogue247] actionbar {"text":"Target Time: 90 seconds"}
execute @a[score_RestaurantBattle_min=2,score_RestaurantBattle=2,tag=RunTimer,score_TalkTime=0] ~ ~ ~ execute @s[tag=Dialogue247] ~ ~ ~ title @s[tag=!Dialogue248] actionbar {"text":"Target Time: 90 seconds"}
execute @a[score_RestaurantBattle_min=2,score_RestaurantBattle=2,tag=RunTimer,score_TalkTime=0] ~ ~ ~ execute @s[tag=Dialogue248] ~ ~ ~ title @s[tag=!Dialogue249] actionbar {"text":"Target Time: 120 seconds"}
execute @a[score_RestaurantBattle_min=2,score_RestaurantBattle=2,tag=RunTimer,score_TalkTime=0] ~ ~ ~ execute @s[tag=Dialogue249] ~ ~ ~ title @s[tag=!Dialogue250] actionbar {"text":"Target Time: 90 seconds"}

#Le Wow
execute @a[score_RestaurantBattle_min=3,score_RestaurantBattle=3,tag=RunTimer,score_TalkTime=0] ~ ~ ~ execute @s[tag=Dialogue251] ~ ~ ~ title @s[tag=!Dialogue252] actionbar {"text":"Target Time: 60 seconds"}
execute @a[score_RestaurantBattle_min=3,score_RestaurantBattle=3,tag=RunTimer,score_TalkTime=0] ~ ~ ~ execute @s[tag=Dialogue252] ~ ~ ~ title @s[tag=!Dialogue253] actionbar {"text":"Target Time: 60 seconds"}
execute @a[score_RestaurantBattle_min=3,score_RestaurantBattle=3,tag=RunTimer,score_TalkTime=0] ~ ~ ~ execute @s[tag=Dialogue253] ~ ~ ~ title @s[tag=!Dialogue254] actionbar {"text":"Target Time: 90 seconds"}
execute @a[score_RestaurantBattle_min=3,score_RestaurantBattle=3,tag=RunTimer,score_TalkTime=0] ~ ~ ~ execute @s[tag=Dialogue254] ~ ~ ~ title @s[tag=!Dialogue255] actionbar {"text":"Target Time: 60 seconds"}
execute @a[score_RestaurantBattle_min=3,score_RestaurantBattle=3,tag=RunTimer,score_TalkTime=0] ~ ~ ~ execute @s[tag=Dialogue255] ~ ~ ~ title @s[tag=!Dialogue256] actionbar {"text":"Target Time: 60 seconds"}

#Sushi High Roller
execute @a[score_RestaurantBattle_min=4,score_RestaurantBattle=4,tag=RunTimer,score_TalkTime=0] ~ ~ ~ execute @s[tag=Dialogue257] ~ ~ ~ title @s[tag=!Dialogue258] actionbar {"text":"Target Time: 90 seconds"}
execute @a[score_RestaurantBattle_min=4,score_RestaurantBattle=4,tag=RunTimer,score_TalkTime=0] ~ ~ ~ execute @s[tag=Dialogue258] ~ ~ ~ title @s[tag=!Dialogue259] actionbar {"text":"Target Time: 90 seconds"}
execute @a[score_RestaurantBattle_min=4,score_RestaurantBattle=4,tag=RunTimer,score_TalkTime=0] ~ ~ ~ execute @s[tag=Dialogue259] ~ ~ ~ title @s[tag=!Dialogue260] actionbar {"text":"Target Time: 90 seconds"}
execute @a[score_RestaurantBattle_min=4,score_RestaurantBattle=4,tag=RunTimer,score_TalkTime=0] ~ ~ ~ execute @s[tag=Dialogue260] ~ ~ ~ title @s[tag=!Dialogue261] actionbar {"text":"Target Time: 90 seconds"}
execute @a[score_RestaurantBattle_min=4,score_RestaurantBattle=4,tag=RunTimer,score_TalkTime=0] ~ ~ ~ execute @s[tag=Dialogue261] ~ ~ ~ title @s[tag=!Dialogue262] actionbar {"text":"Target Time: 90 seconds"}



















#
