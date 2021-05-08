#Current Map Version
tellraw @s {"text":"Map version: Kalos 2.0"}

scoreboard players tag @s add verify

#Spawn core commands load test
execute @e[x=-688,y=250,z=1136,dy=3,type=armor_stand] ~ ~ ~ tellraw @a[tag=verify] {"text":"-Northwest spawn corner confirmed loaded","italic":true,"color":"green"}
execute @e[x=-417,y=250,z=1136,dy=3,type=armor_stand] ~ ~ ~ tellraw @a[tag=verify] {"text":"-Northeast spawn corner confirmed loaded","italic":true,"color":"green"}
execute @e[x=-417,y=250,z=1391,dy=3,type=armor_stand] ~ ~ ~ tellraw @a[tag=verify] {"text":"-Southeast spawn corner confirmed loaded","italic":true,"color":"green"}
execute @e[x=-687,y=100,z=1390,dy=3,type=armor_stand] ~ ~ ~ tellraw @a[tag=verify] {"text":"-Southwest spawn corner confirmed loaded","italic":true,"color":"green"}


#Tests for a vanilla villager to ensure proper config files are present
execute @e[x=-504,y=101,z=1229,r=3,type=villager] ~ ~ ~ tellraw @a[tag=verify] {"text":"-Vanilla villager found","italic":true,"color":"green"}
execute @e[x=-504,y=101,z=1229,r=3,type=!villager] ~ ~ ~ tellraw @a[tag=verify] {"text":"-Entity type NOT villager found","italic":true,"color":"red"}


#Tests for a Pixelmon statue, ensures Pixelmon is installed
execute @e[x=-498,y=101,z=1229,r=3,type=pixelmon:statue] ~ ~ ~ tellraw @a[tag=verify] {"text":"-Pixelmon statue found","italic":true,"color":"green"}

#Detects if a player is stuck or currently in a dialogue
tellraw @a[score_TalkTime_min=1] {"text":"-Score of TalkTime_min=1 found","italic":true,"color":"yellow"}
tellraw @a[score_DialogueTrigger_min=1] {"text":"-Score of DialogueTrigger_min=1 found","italic":true,"color":"yellow"}
tellraw @a[score_TalkTime=0,score_DialogueTrigger=0] {"text":"-Player confirmed not in dialogue","italic":true,"color":"green"}

scoreboard players tag @s remove verify





#Successful results:
#All 4 corners found of spawn (tests if spawn chunks deloaded or redstone should be active)
#Vanilla villager found (tests for if player has the Pixelmon config files added)
#Pixelmon statue found (ensures Pixelmon itself is installed)
#Player confirmed not in dialogue (helps diagnose if player is stuck with a TalkTime or DialogueTrigger score when one trips to 0 but not the other)
