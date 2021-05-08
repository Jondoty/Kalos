#Ends Dialogues if present
scoreboard players set @s TalkTime 0
scoreboard players set @s DialogueTrigger 0

scoreboard players set @s EscapeRope 0


#Standard TP commands
scoreboard teams join Default @s

effect @s minecraft:resistance 3 5 true
tp @s 1489.5 211 -1333.5 180 51
tellraw @s {"text":"You used fly!","italic":true,"color":"gray"}
playsound entity.arrow.shoot ambient @s ~ ~ ~ 10 1 1
