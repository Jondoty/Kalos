kill @e[distance=..1,tag=TrashCan,type=armor_stand]
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Invulnerable:true,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":49}}],Tags:[TrashCan]}
execute as @e[distance=..3,type=minecraft:armor_stand] at @s run summon minecraft:interaction ~ ~ ~ {width:1.5,height:2,response:1,Tags:[TrashCan]}