#Restaurant Le Nah

execute as @a[limit=1,scores={RestaurantBattle=1},tag=RunTimer] run scoreboard players add @e[x=-685,y=100,z=1368,dy=3,type=armor_stand] RestaurantTimer 1

execute as @e[x=-685,y=100,z=1368,dy=3,type=armor_stand,scores={RestaurantTimer=20..}] run scoreboard players add @a[limit=1,scores={RestaurantBattle=1},tag=RunTimer] RestaurantTimer 1
execute as @e[x=-685,y=100,z=1368,dy=3,type=armor_stand,scores={RestaurantTimer=20..}] run scoreboard players add Le_Nah Battle_Time 1
execute as @e[x=-685,y=100,z=1368,dy=3,type=armor_stand,scores={RestaurantTimer=20..}] run scoreboard players set @s RestaurantTimer 0




#Restaurant Le Yeah

execute as @a[limit=1,scores={RestaurantBattle=2},tag=RunTimer] run scoreboard players add @e[x=-683,y=100,z=1368,dy=3,type=armor_stand] RestaurantTimer 1

execute as @e[x=-683,y=100,z=1368,dy=3,type=armor_stand,scores={RestaurantTimer=20..}] run scoreboard players add @a[limit=1,scores={RestaurantBattle=2},tag=RunTimer] RestaurantTimer 1
execute as @e[x=-683,y=100,z=1368,dy=3,type=armor_stand,scores={RestaurantTimer=20..}] run scoreboard players add Le_Yeah Battle_Time 1
execute as @e[x=-683,y=100,z=1368,dy=3,type=armor_stand,scores={RestaurantTimer=20..}] run scoreboard players set @s RestaurantTimer 0



#Restaurant Le Wow

execute as @a[limit=1,scores={RestaurantBattle=3},tag=RunTimer] run scoreboard players add @e[x=-681,y=100,z=1368,dy=3,type=armor_stand] RestaurantTimer 1

execute as @e[x=-681,y=100,z=1368,dy=3,type=armor_stand,scores={RestaurantTimer=20..}] run scoreboard players add @a[limit=1,scores={RestaurantBattle=3},tag=RunTimer] RestaurantTimer 1
execute as @e[x=-681,y=100,z=1368,dy=3,type=armor_stand,scores={RestaurantTimer=20..}] run scoreboard players add Le_Wow Battle_Time 1
execute as @e[x=-681,y=100,z=1368,dy=3,type=armor_stand,scores={RestaurantTimer=20..}] run scoreboard players set @s RestaurantTimer 0



#Restaurant Sushi High Roller

execute as @a[limit=1,scores={RestaurantBattle=4},tag=RunTimer] run scoreboard players add @e[x=-679,y=100,z=1368,dy=3,type=armor_stand] RestaurantTimer 1

execute as @e[x=-679,y=100,z=1368,dy=3,type=armor_stand,scores={RestaurantTimer=20..}] run scoreboard players add @a[limit=1,scores={RestaurantBattle=4},tag=RunTimer] RestaurantTimer 1
execute as @e[x=-679,y=100,z=1368,dy=3,type=armor_stand,scores={RestaurantTimer=20..}] run scoreboard players add High_Roller Battle_Time 1
execute as @e[x=-679,y=100,z=1368,dy=3,type=armor_stand,scores={RestaurantTimer=20..}] run scoreboard players set @s RestaurantTimer 0


#Tells the player the target time
#Le Nah
execute as @a[scores={RestaurantBattle=1,TalkTime=0},tag=RunTimer,tag=Dialogue242] run title @s[tag=!Dialogue243] actionbar {"text":"Target Time: 60 seconds"}
execute as @a[scores={RestaurantBattle=1,TalkTime=0},tag=RunTimer,tag=Dialogue243] run title @s[tag=!Dialogue244] actionbar {"text":"Target Time: 60 seconds"}
execute as @a[scores={RestaurantBattle=1,TalkTime=0},tag=RunTimer,tag=Dialogue244] run title @s[tag=!Dialogue245] actionbar {"text":"Target Time: 60 seconds"}

#Le Yeah
execute as @a[scores={RestaurantBattle=2,TalkTime=0},tag=RunTimer,tag=Dialogue246] run title @s[tag=!Dialogue247] actionbar {"text":"Target Time: 90 seconds"}
execute as @a[scores={RestaurantBattle=2,TalkTime=0},tag=RunTimer,tag=Dialogue247] run title @s[tag=!Dialogue248] actionbar {"text":"Target Time: 90 seconds"}
execute as @a[scores={RestaurantBattle=2,TalkTime=0},tag=RunTimer,tag=Dialogue248] run title @s[tag=!Dialogue249] actionbar {"text":"Target Time: 120 seconds"}
execute as @a[scores={RestaurantBattle=2,TalkTime=0},tag=RunTimer,tag=Dialogue249] run title @s[tag=!Dialogue250] actionbar {"text":"Target Time: 90 seconds"}

#Le Wow
execute as @a[scores={RestaurantBattle=3,TalkTime=0},tag=RunTimer,tag=Dialogue251] run title @s[tag=!Dialogue252] actionbar {"text":"Target Time: 60 seconds"}
execute as @a[scores={RestaurantBattle=3,TalkTime=0},tag=RunTimer,tag=Dialogue252] run title @s[tag=!Dialogue253] actionbar {"text":"Target Time: 60 seconds"}
execute as @a[scores={RestaurantBattle=3,TalkTime=0},tag=RunTimer,tag=Dialogue253] run title @s[tag=!Dialogue254] actionbar {"text":"Target Time: 90 seconds"}
execute as @a[scores={RestaurantBattle=3,TalkTime=0},tag=RunTimer,tag=Dialogue254] run title @s[tag=!Dialogue255] actionbar {"text":"Target Time: 60 seconds"}
execute as @a[scores={RestaurantBattle=3,TalkTime=0},tag=RunTimer,tag=Dialogue255] run title @s[tag=!Dialogue256] actionbar {"text":"Target Time: 60 seconds"}

#Sushi High Roller
execute as @a[scores={RestaurantBattle=4,TalkTime=0},tag=RunTimer,tag=Dialogue257] run title @s[tag=!Dialogue258] actionbar {"text":"Target Time: 90 seconds"}
execute as @a[scores={RestaurantBattle=4,TalkTime=0},tag=RunTimer,tag=Dialogue258] run title @s[tag=!Dialogue259] actionbar {"text":"Target Time: 90 seconds"}
execute as @a[scores={RestaurantBattle=4,TalkTime=0},tag=RunTimer,tag=Dialogue259] run title @s[tag=!Dialogue260] actionbar {"text":"Target Time: 90 seconds"}
execute as @a[scores={RestaurantBattle=4,TalkTime=0},tag=RunTimer,tag=Dialogue260] run title @s[tag=!Dialogue261] actionbar {"text":"Target Time: 90 seconds"}
execute as @a[scores={RestaurantBattle=4,TalkTime=0},tag=RunTimer,tag=Dialogue261] run title @s[tag=!Dialogue262] actionbar {"text":"Target Time: 90 seconds"}



















#
