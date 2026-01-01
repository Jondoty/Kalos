kill @e[distance=..2,type=armor_stand]
kill @e[distance=..2,type=interaction]
execute unless entity @e[type=armor_stand,distance=..3] run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Invulnerable:true,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":49}}],Tags:[TrashCan]}
execute unless entity @e[type=interaction,distance=..3] run summon minecraft:interaction ~ ~ ~ {width:1.5,height:2,response:1,Tags:[TrashCan]}