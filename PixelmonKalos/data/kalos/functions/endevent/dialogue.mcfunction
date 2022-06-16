tellraw @s[scores={DialogueTrigger=1..}] {"text":"Ending Dialogue...","italic":true}
tellraw @s[scores={TalkTime=1..}] {"text":"Removing TalkTime...","italic":true}

scoreboard players set @s DialogueTrigger 0
scoreboard players set @s TalkTime 0

tellraw @s {"text":"Please try revisiting the area or going through a door again!","italic":true}
