#Triggered by DialogueTrigger X score and !DialogueX tag
#/execute as @s[score_DialogueTrigger_min=1] run function dialogues:events

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Scans and removes DialogueTrigger score if player already has specific Dialogue tag

execute as @s[scores={score_DialogueTrigger=1..,TalkTime=0}] run function kalos:dialogue/duplicateend

#Adds timings
scoreboard players add @s[scores={DialogueTrigger=1..}] TalkTime 1

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Dialogue 32, Pardfum Palace Firework Show

#Fireworks Show
execute as @s[scores={DialogueTrigger=32,TalkTime=36}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=3] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:31,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:1,colors:[I;11743532,2437522],fade_colors:[I;3887386,2437522]},{shape:"large_ball",has_twinkle:0,has_trail:0,colors:[I;14188952,12801229]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=46}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=3] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:34,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:1,colors:[I;11743532,2437522],fade_colors:[I;3887386,2437522]},{shape:"large_ball",has_twinkle:0,has_trail:0,colors:[I;14188952,12801229]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=56}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=5] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:31,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:1,colors:[I;11743532,2437522],fade_colors:[I;3887386,2437522]},{shape:"large_ball",has_twinkle:0,has_trail:0,colors:[I;14188952,12801229]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=66}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=4] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:38,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:1,colors:[I;11743532,2437522],fade_colors:[I;3887386,2437522]},{shape:"large_ball",has_twinkle:0,has_trail:0,colors:[I;14188952,12801229]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=76}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=3] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:36,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:1,colors:[I;11743532,2437522],fade_colors:[I;3887386,2437522]},{shape:"large_ball",has_twinkle:0,has_trail:0,colors:[I;14188952,12801229]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=86}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=2] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:33,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:1,colors:[I;11743532,2437522],fade_colors:[I;3887386,2437522]},{shape:"large_ball",has_twinkle:0,has_trail:0,colors:[I;14188952,12801229]}]}}}}


execute as @s[scores={DialogueTrigger=32,TalkTime=40}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=2] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:19,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:1,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:1,colors:[I;11743532,2437522],fade_colors:[I;3887386,2437522]},{shape:"star",has_twinkle:1,has_trail:1,colors:[I;2651799,15790320],fade_colors:[I;8073150,14602026]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=50}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=6] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:12,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:1,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:1,colors:[I;11743532,2437522],fade_colors:[I;3887386,2437522]},{shape:"star",has_twinkle:1,has_trail:1,colors:[I;2651799,15790320],fade_colors:[I;8073150,14602026]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=60}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=2] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:18,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:1,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:1,colors:[I;11743532,2437522],fade_colors:[I;3887386,2437522]},{shape:"star",has_twinkle:1,has_trail:1,colors:[I;2651799,15790320],fade_colors:[I;8073150,14602026]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=70}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=5] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:14,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:1,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:1,colors:[I;11743532,2437522],fade_colors:[I;3887386,2437522]},{shape:"star",has_twinkle:1,has_trail:1,colors:[I;2651799,15790320],fade_colors:[I;8073150,14602026]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=80}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=2] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:17,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:1,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:1,colors:[I;11743532,2437522],fade_colors:[I;3887386,2437522]},{shape:"star",has_twinkle:1,has_trail:1,colors:[I;2651799,15790320],fade_colors:[I;8073150,14602026]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=90}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=1] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:15,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:1,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:1,colors:[I;11743532,2437522],fade_colors:[I;3887386,2437522]},{shape:"star",has_twinkle:1,has_trail:1,colors:[I;2651799,15790320],fade_colors:[I;8073150,14602026]}]}}}}


execute as @s[scores={DialogueTrigger=32,TalkTime=43}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=1] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:45,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"creeper",has_twinkle:1,has_trail:1,colors:[I;2437522,6719955],fade_colors:[I;2651799]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=53}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=2] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:42,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"creeper",has_twinkle:1,has_trail:1,colors:[I;2437522,6719955],fade_colors:[I;2651799]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=63}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=4] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:47,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"creeper",has_twinkle:1,has_trail:1,colors:[I;2437522,6719955],fade_colors:[I;2651799]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=73}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=3] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:45,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"creeper",has_twinkle:1,has_trail:1,colors:[I;2437522,6719955],fade_colors:[I;2651799]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=83}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=2] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:42,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"creeper",has_twinkle:1,has_trail:1,colors:[I;2437522,6719955],fade_colors:[I;2651799]}]}}}}


execute as @s[scores={DialogueTrigger=32,TalkTime=38}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=2] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:21,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"creeper",has_twinkle:1,has_trail:1,colors:[I;4312372,15435844],fade_colors:[I;11743532]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=48}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=2] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:26,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"creeper",has_twinkle:1,has_trail:1,colors:[I;4312372,15435844],fade_colors:[I;11743532]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=58}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=2] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:28,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"creeper",has_twinkle:1,has_trail:1,colors:[I;4312372,15435844],fade_colors:[I;11743532]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=68}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=2] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:23,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"creeper",has_twinkle:1,has_trail:1,colors:[I;4312372,15435844],fade_colors:[I;11743532]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=78}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=2] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:24,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"creeper",has_twinkle:1,has_trail:1,colors:[I;4312372,15435844],fade_colors:[I;11743532]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=88}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=2] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:26,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"creeper",has_twinkle:1,has_trail:1,colors:[I;4312372,15435844],fade_colors:[I;11743532]}]}}}}

execute as @s[scores={DialogueTrigger=32,TalkTime=39}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=2] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:31,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:3,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:0,colors:[I;15790320],fade_colors:[I;2651799]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=46}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=2] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:32,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:3,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:0,colors:[I;15790320],fade_colors:[I;2651799]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=58}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=2] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:33,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:3,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:0,colors:[I;15790320],fade_colors:[I;2651799]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=62}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=2] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:34,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:3,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:0,colors:[I;15790320],fade_colors:[I;2651799]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=71}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=2] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:35,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:3,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:0,colors:[I;15790320],fade_colors:[I;2651799]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=85}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=2] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:36,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:3,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:0,colors:[I;15790320],fade_colors:[I;2651799]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=41}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=2] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:37,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:3,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:0,colors:[I;15790320],fade_colors:[I;2651799]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=56}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=2] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:38,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:3,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:0,colors:[I;15790320],fade_colors:[I;2651799]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=63}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=2] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:39,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:3,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:0,colors:[I;15790320],fade_colors:[I;2651799]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=77}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=2] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:40,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:3,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:0,colors:[I;15790320],fade_colors:[I;2651799]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=84}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=2] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:41,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:3,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:0,colors:[I;15790320],fade_colors:[I;2651799]}]}}}}


execute as @s[scores={DialogueTrigger=32,TalkTime=90}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=2] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:40,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"creeper",has_twinkle:1,has_trail:1,colors:[I;2437522,6719955],fade_colors:[I;2651799]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=91}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=5] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"creeper",has_twinkle:1,has_trail:1,colors:[I;4312372,15435844],fade_colors:[I;11743532]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=92}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=3] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:30,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:1,colors:[I;11743532,2437522],fade_colors:[I;3887386,2437522]},{shape:"large_ball",has_twinkle:0,has_trail:0,colors:[I;14188952,12801229]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=93}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=4] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:40,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"creeper",has_twinkle:1,has_trail:1,colors:[I;2437522,6719955],fade_colors:[I;2651799]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=94}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=6] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"creeper",has_twinkle:1,has_trail:1,colors:[I;4312372,15435844],fade_colors:[I;11743532]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=95}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=2] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:15,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:1,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:1,colors:[I;11743532,2437522],fade_colors:[I;3887386,2437522]},{shape:"star",has_twinkle:1,has_trail:1,colors:[I;2651799,15790320],fade_colors:[I;8073150,14602026]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=96}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=1] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:40,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"creeper",has_twinkle:1,has_trail:1,colors:[I;2437522,6719955],fade_colors:[I;2651799]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=97}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=4] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:15,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:1,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:1,colors:[I;11743532,2437522],fade_colors:[I;3887386,2437522]},{shape:"star",has_twinkle:1,has_trail:1,colors:[I;2651799,15790320],fade_colors:[I;8073150,14602026]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=98}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=5] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"creeper",has_twinkle:1,has_trail:1,colors:[I;4312372,15435844],fade_colors:[I;11743532]}]}}}}
execute as @s[scores={DialogueTrigger=32,TalkTime=99}] as @e[x=-1450,y=112,z=-393,dy=5,dz=40,sort=random,limit=1] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:15,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:1,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:1,colors:[I;11743532,2437522],fade_colors:[I;3887386,2437522]},{shape:"star",has_twinkle:1,has_trail:1,colors:[I;2651799,15790320],fade_colors:[I;8073150,14602026]}]}}}}

execute as @s[scores={DialogueTrigger=32,TalkTime=104}] run opendialogue shauna_dialogue32b @s
execute as @s[scores={DialogueTrigger=32,TalkTime=104}] run data merge entity @e[limit=1,x=-1434,y=110,z=-374,dy=3,type=cobblemon:npc] {NoAI:0b}
execute as @s[scores={DialogueTrigger=32,TalkTime=104}] run data merge entity @e[limit=1,x=-1434,y=110,z=-374,dy=3,type=cobblemon:npc] {Rotation:[-90.0f,0.0f]}
execute as @s[scores={DialogueTrigger=32,TalkTime=104}] unless entity @e[x=-1430,y=110,z=-378,dy=3,type=cobblemon:npc] run npcspawnat -1430 111 -378 monsieur_generic
execute as @s[scores={DialogueTrigger=32,TalkTime=104}] unless entity @e[x=-1427,y=110,z=-377,dy=3,type=cobblemon:npc] run npcspawnat -1427 111 -377 butler_generic

tag @s[scores={DialogueTrigger=32,TalkTime=105..}] add Dialogue32
scoreboard players set @s[scores={DialogueTrigger=32},tag=Dialogue32] TalkTime 0
scoreboard players set @s[scores={DialogueTrigger=32},tag=Dialogue32] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Lysandre and Az imprisoned
#scoreboard players set @a[x=-395,y=110,z=392,dx=18,dy=10,dz=11,tag=!Dialogue116] DialogueTrigger 116
#execute as @s[x=-376,y=110,z=396,dx=41,dy=10,dz=7,tag=!Dialogue116] run tp @e[x=-504,y=240,z=1274,dy=3,type=pixelmon:npc_chatting] -386 111 390
#execute as @s[x=-376,y=110,z=396,dx=41,dy=10,dz=7,tag=!Dialogue116] run tp @e[x=-504,y=240,z=1276,dy=3,type=pixelmon:npc_chatting] -388 111 394

tellraw @s[scores={DialogueTrigger=116,TalkTime=3}] {"text":"<...> Listen, one who will face Lysandre."}

#switches music
execute as @s[scores={DialogueTrigger=116,TalkTime=10}] run function kalos:triggers/stopsound
execute as @s[scores={DialogueTrigger=116,TalkTime=200}] run function kalos:triggers/stopsound

#gives night vision and takes away
execute as @s[x=-392,y=100,z=353,dx=46,dy=5,dz=36,scores={DialogueTrigger=116,TalkTime=10..199}] run effect give @s minecraft:night_vision 15 1 true
execute as @s[x=-392,y=100,z=353,dx=46,dy=5,dz=36,scores={DialogueTrigger=116,TalkTime=200}] run effect clear @s

#keeps player facing paintings
#execute as @s[x=-392,y=100,z=353,dx=46,dy=5,dz=36,scores={DialogueTrigger=116,TalkTime=10..199}] run tp @s[type=player,ry=135,rym=-135] run 180 ~


#tp player to this story sequence
execute as @s[scores={DialogueTrigger=116,TalkTime=10}] run tp @s -388 101 356 180 -10
execute as @s[scores={DialogueTrigger=116,TalkTime=20}] run tp @s -380 101 357 180 -10
execute as @s[scores={DialogueTrigger=116,TalkTime=30}] run tp @s -373 101 355 180 -22
execute as @s[scores={DialogueTrigger=116,TalkTime=50}] run tp @s -364 101 356 180 -10
execute as @s[scores={DialogueTrigger=116,TalkTime=60}] run tp @s -357 101 356 180 -20
execute as @s[scores={DialogueTrigger=116,TalkTime=70}] run tp @s -350 101 356 180 -10

execute as @s[scores={DialogueTrigger=116,TalkTime=80}] run tp @s -380 101 368 180 -10
execute as @s[scores={DialogueTrigger=116,TalkTime=90}] run tp @s -372 101 368 180 -10
execute as @s[scores={DialogueTrigger=116,TalkTime=100}] run tp @s -366 101 367 -167 -16
execute as @s[scores={DialogueTrigger=116,TalkTime=130}] run tp @s -356 101 368 180 -10
execute as @s[scores={DialogueTrigger=116,TalkTime=140}] run tp @s -349 101 368 -180 -22

execute as @s[scores={DialogueTrigger=116,TalkTime=145}] run tp @s -388 101 380 180 -10
execute as @s[scores={DialogueTrigger=116,TalkTime=150}] run tp @s -380 101 380 180 -10
execute as @s[scores={DialogueTrigger=116,TalkTime=155}] run tp @s -372 101 380 180 -10
execute as @s[scores={DialogueTrigger=116,TalkTime=165}] run tp @s -364 101 380 180 -10
execute as @s[scores={DialogueTrigger=116,TalkTime=185}] run tp @s -356 101 379 180 -20

execute as @s[scores={DialogueTrigger=116,TalkTime=200}] run tp @s -381 111 398 130 10


execute as @s[scores={DialogueTrigger=116},x=-391,y=100,z=354,dx=6,dy=5,dz=7] run title @s actionbar {"text":"A terribly long time ago..."}
execute as @s[scores={DialogueTrigger=116},x=-383,y=100,z=354,dx=6,dy=5,dz=7] run title @s actionbar {"text":"There was a man and a Pokémon. He loved that Pokémon very much."}
execute as @s[scores={DialogueTrigger=116,TalkTime=30..35},x=-375,y=100,z=354,dx=6,dy=5,dz=7] run title @s actionbar {"text":"A war began."}
execute as @s[scores={DialogueTrigger=116,TalkTime=36..43},x=-375,y=100,z=354,dx=6,dy=5,dz=7] run title @s actionbar {"text":"The man's beloved Pokémon took part in the war."}
execute as @s[scores={DialogueTrigger=116,TalkTime=44..50},x=-375,y=100,z=354,dx=6,dy=5,dz=7] run title @s actionbar {"text":"Several years passed."}
execute as @s[scores={DialogueTrigger=116},x=-367,y=100,z=354,dx=6,dy=5,dz=7] run title @s actionbar {"text":"He was given a tiny box."}
execute as @s[scores={DialogueTrigger=116},x=-359,y=100,z=354,dx=4,dy=5,dz=7] run title @s actionbar {"text":"The man wanted to bring the Pokémon back. No matter what it took."}
execute as @s[scores={DialogueTrigger=116},x=-353,y=100,z=354,dx=6,dy=5,dz=7] run title @s actionbar {"text":"The man built a machine to give it life."}

execute as @s[scores={DialogueTrigger=116},tag=!Dialogue116,x=-383,y=100,z=366,dx=6,dy=5,dz=7] run title @s actionbar {"text":"He brought his beloved Pokémon back."}
execute as @s[scores={DialogueTrigger=116,TalkTime=100..110},tag=!Dialogue116,x=-367,y=100,z=366,dx=6,dy=5,dz=7] run title @s actionbar {"text":"The man had suffered too much. His rage still had not subsided."}
execute as @s[scores={DialogueTrigger=116,TalkTime=111..120},tag=!Dialogue116,x=-367,y=100,z=366,dx=6,dy=5,dz=7] run title @s actionbar {"text":"He could not forgive the world that had hurt the Pokémon he loved."}
execute as @s[scores={DialogueTrigger=116,TalkTime=121..130},tag=!Dialogue116,x=-367,y=100,z=366,dx=6,dy=5,dz=7] run title @s actionbar {"text":"He turned the machine into the ultimate weapon."}
execute as @s[scores={DialogueTrigger=116},tag=!Dialogue116,x=-375,y=100,z=378,dx=6,dy=5,dz=7] run title @s actionbar {"text":"The man became a bringer of destruction that ended the war."}
execute as @s[scores={DialogueTrigger=116,TalkTime=165..172},tag=!Dialogue116,x=-367,y=100,z=378,dx=6,dy=5,dz=7] run title @s actionbar {"text":"The Pokémon that was given life must have known..."}
execute as @s[scores={DialogueTrigger=116,TalkTime=173..181},tag=!Dialogue116,x=-367,y=100,z=378,dx=6,dy=5,dz=7] run title @s actionbar {"text":"That the lives of many Pokémon were taken to restore its life."}
execute as @s[scores={DialogueTrigger=116,TalkTime=182..190},tag=!Dialogue116,x=-367,y=100,z=378,dx=6,dy=5,dz=7] run title @s actionbar {"text":"The resurrected Pokémon left the man."}

#Finishes dialogue in text box form
execute as @s[scores={DialogueTrigger=116,TalkTime=200}] run opendialogue az_dialogue116b @s

tag @s[scores={DialogueTrigger=116,TalkTime=200..}] add Dialogue116
scoreboard players set @s[scores={DialogueTrigger=116},tag=Dialogue116] TalkTime 0
scoreboard players set @s[scores={DialogueTrigger=116},tag=Dialogue116] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#dialogue when pushed button

#Replaces the screen entitydata with frames of the weapon going off
execute as @s[scores={DialogueTrigger=120,TalkTime=35}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":101},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=36}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":102},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=37}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":103},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=38}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":104},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=39}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":105},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=40}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":106},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=41}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":107},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=42}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":108},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=43}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":109},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=44}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":110},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=45}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":111},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=46}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":112},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=47}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":113},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=48}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":114},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=49}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":115},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=50}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":116},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=51}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":117},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=52}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":118},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=53}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":119},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=54}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":120},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=55}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":121},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=56}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":122},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=57}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":123},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=58}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":124},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=59}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":125},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=60}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":126},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=61}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":127},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=62}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":128},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=63}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":129},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=64}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":130},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=65}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":131},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=66}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":132},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=67}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":133},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=68}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":134},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=69}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":135},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=70}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":136},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=71}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":137},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=72}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":138},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=73}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":139},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=74}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":140},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=75}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":141},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=76}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":142},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=77}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":143},count:1,id:"minecraft:diamond_hoe"}}
execute as @s[scores={DialogueTrigger=120,TalkTime=78}] run data merge entity @e[limit=1,x=-311,y=110,z=306,distance=..2,type=item_frame] {Item:{components:{"minecraft:custom_model_data":144},count:1,id:"minecraft:diamond_hoe"}}

execute as @s[scores={DialogueTrigger=120,TalkTime=83}] run opendialogue xerosic_dialogue120b @s
execute as @s[scores={DialogueTrigger=120,TalkTime=83}] run scoreboard players set @s Geosenge 1
execute as @s[scores={DialogueTrigger=120,TalkTime=83}] run advancement grant @s only kalos:flare7

tag @s[scores={DialogueTrigger=120,TalkTime=83..}] add Dialogue120
scoreboard players set @s[scores={DialogueTrigger=120},tag=Dialogue120] TalkTime 0
scoreboard players set @s[scores={DialogueTrigger=120},tag=Dialogue120] DialogueTrigger 0


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Legendary Pokemon spawn
#Dialogue131
#execute as @s[x=-2336,y=42,z=-1017,r=10,score_Yveltal_min=1,score_Yveltal=1,tag=Dialogue130,score_TalkTime=0] run scoreboard players enable @s[tag=!Dialogue131] TalkTrigger
#execute as @s[x=-2336,y=42,z=-1017,r=10,score_Xerneas_min=1,score_Xerneas=1,tag=Dialogue130,score_TalkTime=0] run scoreboard players enable @s[tag=!Dialogue131] TalkTrigger

execute as @s[scores={DialogueTrigger=131,TalkTime=1,GameVersion=1}] run summon armor_stand -2336 49 -1022 {Invisible:true,Invulnerable:true,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":47}}],NoGravity:1b}
execute as @s[scores={DialogueTrigger=131,TalkTime=1,GameVersion=2}] run summon armor_stand -2336 50.5 -1022 {Invisible:true,Invulnerable:true,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"iron_hoe",Count:1,components:{"minecraft:custom_model_data":48}}],NoGravity:1b}

execute as @s[scores={DialogueTrigger=131,TalkTime=1}] run function kalos:triggers/stopsound
execute as @s[scores={DialogueTrigger=131,TalkTime=1}] run playsound legendaryawaken record @s[tag=!RadioOff] ~ ~ ~ 1 1 1
execute as @s[scores={DialogueTrigger=131,TalkTime=1}] run scoreboard players set @s[tag=!RadioOff] MusicCooldown 94

tellraw @s[scores={DialogueTrigger=131,TalkTime=10,GameVersion=1}] ["",{"text":"<"},{"text":"Xerneas","color":"aqua"},{"text":"> "},{"text":"Xsaaaaaah!","bold":true,"italic":true}]
tellraw @s[scores={DialogueTrigger=131,TalkTime=10,GameVersion=2}] ["",{"text":"<"},{"text":"Yveltal","color":"dark_red"},{"text":"> "},{"text":"Yvaaaaaar!","bold":true,"italic":true}]
execute as @s[scores={DialogueTrigger=131,TalkTime=10,GameVersion=1}] run playsound xerneas hostile @s ~ ~ ~ 1 1 1
execute as @s[scores={DialogueTrigger=131,TalkTime=10,GameVersion=2}] run playsound yveltal hostile @s ~ ~ ~ 1 1 1

#Activates Particle 1
#execute as @s[scores={DialogueTrigger=131,TalkTime=20}] run setblock -674 100 1364 minecraft:redstone_block
execute as @s[scores={DialogueTrigger=131,TalkTime=1..}] positioned -2336 50 -1022 run particle minecraft:enchant ~ ~5 ~ 5 5 5 1 10 normal

#Activates Particle 2
#execute as @s[scores={DialogueTrigger=131,TalkTime=35}] run setblock -674 101 1364 minecraft:redstone_block
#execute as @e[x=-2336,y=49,z=-1022,r=3,type=armor_stand] run particle endRod ~ ~ ~ 0 10 0 1 1

#Activates Particle 3
#execute as @s[scores={DialogueTrigger=131,TalkTime=60}] run setblock -674 102 1364 minecraft:redstone_block
#execute as @e[x=-2336,y=49,z=-1022,r=3,type=armor_stand] run particle fireworksSpark ~ ~ ~ 0 1 1 0.5 5

#Activates Particle 4
#execute as @s[scores={DialogueTrigger=131,TalkTime=80}] run setblock -674 103 1364 minecraft:redstone_block
#execute as @e[x=-2336,y=49,z=-1022,r=3,type=armor_stand] run particle blockdust ~ ~ ~ 0 1 0 1 10 normal @a 173

execute as @s[scores={DialogueTrigger=131,TalkTime=45..90}] run execute as @e[x=-2336,y=49,z=-1022,distance=..3,type=armor_stand] run particle crit ~ ~5 ~ 5 5 5 1 50 normal


execute as @s[scores={DialogueTrigger=131,TalkTime=90}] positioned -2336 50 -1022 run particle minecraft:explosion ~ ~ ~ 2 2 2 2 30
execute as @a[scores={DialogueTrigger=131,TalkTime=90,GameVersion=1}] run pokespawnat -2336 50.5 -1022 xerneas level=50 moves=gravity,geomancy,moonblast,megahorn
execute as @a[scores={DialogueTrigger=131,TalkTime=90,GameVersion=2}] run pokespawnat -2336 50.5 -1022 yveltal level=50 moves=snarl,oblivionwing,disable,darkpulse

execute as @s[scores={DialogueTrigger=131,TalkTime=90,GameVersion=1}] run playsound xerneas hostile @s ~ ~ ~ 100 1 1
execute as @s[scores={DialogueTrigger=131,TalkTime=90,GameVersion=2}] run playsound yveltal hostile @s ~ ~ ~ 100 1 1
tellraw @s[scores={DialogueTrigger=131,TalkTime=90,GameVersion=1}] ["",{"text":"<"},{"text":"Xerneas","color":"aqua"},{"text":"> "},{"text":"Xsaaaaaah!","bold":true,"italic":true}]
tellraw @s[scores={DialogueTrigger=131,TalkTime=90,GameVersion=2}] ["",{"text":"<"},{"text":"Yveltal","color":"dark_red"},{"text":"> "},{"text":"Yvaaaaaar!","bold":true,"italic":true}]

execute as @s[scores={DialogueTrigger=131,TalkTime=90}] run kill @e[x=-2336,y=49,z=-1022,distance=..3,type=armor_stand]

execute as @s[scores={DialogueTrigger=131,TalkTime=96}] run function kalos:triggers/stopsound

#Disables particles
#execute as @s[scores={DialogueTrigger=131,TalkTime=95..96}] run fill -674 100 1364 -674 103 1364 minecraft:iron_block

tag @s[scores={DialogueTrigger=131,TalkTime=96..}] add Dialogue131
scoreboard players set @s[scores={DialogueTrigger=131},tag=Dialogue131] TalkTime 0
scoreboard players set @s[scores={DialogueTrigger=131},tag=Dialogue131] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Hall of Fame credits (activated by healer)
#scoreboard players set @a[r=20,score_TalkTime=0] DialogueTrigger 154
#REPEATED, Will be reset when player enters the Pokemon League again along with E4 tags

#Applies ribbons to entire party
execute as @s[scores={DialogueTrigger=154,TalkTime=1}] run givemark @s 1 cobblemon:ribbon_champion_kalos
execute as @s[scores={DialogueTrigger=154,TalkTime=1}] run givemark @s 2 cobblemon:ribbon_champion_kalos
execute as @s[scores={DialogueTrigger=154,TalkTime=1}] run givemark @s 3 cobblemon:ribbon_champion_kalos
execute as @s[scores={DialogueTrigger=154,TalkTime=1}] run givemark @s 4 cobblemon:ribbon_champion_kalos
execute as @s[scores={DialogueTrigger=154,TalkTime=1}] run givemark @s 5 cobblemon:ribbon_champion_kalos
execute as @s[scores={DialogueTrigger=154,TalkTime=1}] run givemark @s 6 cobblemon:ribbon_champion_kalos

execute as @s[scores={DialogueTrigger=154,TalkTime=1}] run scoreboard players add @s PokemonLeague 1
execute as @s[scores={DialogueTrigger=154,TalkTime=1}] run pokeheal
execute as @s[scores={DialogueTrigger=154,TalkTime=1}] run function kalos:triggers/stopsound
execute as @s[scores={DialogueTrigger=154,TalkTime=1}] run advancement grant @s only kalos:badges/champion
tellraw @s[scores={DialogueTrigger=154,TalkTime=3}] {"text":"Thank you for playing Cobblemon Kalos!","color":"white"}
tellraw @s[scores={DialogueTrigger=154,TalkTime=12}] {"text":"Map Creators:\nJond - Organizer, terrain, commands, builder, Cobblemon adaptation.\nOzzy/PixelmonChampion - Head builder, custom models."}
tellraw @s[scores={DialogueTrigger=154,TalkTime=25}] {"text":"Helpers:\nMystcraftMC | The_GlassPhoenix | callthemuffinman | xuambacraft | Tyranium | Wither999 | Dark_Spartan_"}
tellraw @s[scores={DialogueTrigger=154,TalkTime=35}] {"text":"Check out my other region maps if you liked this one!"}
tellraw @s[scores={DialogueTrigger=154,TalkTime=35}] ["",{"text":"["},{"text":"Cobblemon Hoenn","color":"aqua","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/worlds/cobblemon-hoenn"}},{"text":"] ["},{"text":"Cobblemon Kanto","color":"yellow","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/worlds/cobblemon-kanto"}},{"text":"] ["},{"text":"Cobblemon Johto","color":"red","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/worlds/cobblemon-johto"}},{"text":"]"}]
tellraw @s[scores={DialogueTrigger=154,TalkTime=45}] {"text":"All source material credit to Game Freak, The Pokemon Company, and Nintendo."}
tellraw @s[scores={DialogueTrigger=154,TalkTime=55,PokemonLeague=1}] {"text":"You can now encounter post-game Legendaries and Mythicals.","italic":true,"color":"gray"}
execute as @s[scores={DialogueTrigger=154,TalkTime=55}] run advancement grant @s only kalos:legendroot
execute as @s[scores={DialogueTrigger=154,TalkTime=55}] run advancement grant @s only kalos:mythicalroot

#Runs legendary reset dialogue
execute as @s[scores={DialogueTrigger=154,TalkTime=65}] run function kalos:triggers/legendaryreset

execute as @s[scores={DialogueTrigger=154,TalkTime=65,PokemonLeague=1}] run effect give @s minecraft:blindness 7 1 true
execute as @s[scores={DialogueTrigger=154,TalkTime=65,PokemonLeague=2..}] run effect give @s minecraft:blindness 5 1 true

#Takes the player to the parade on first win
execute as @s[scores={DialogueTrigger=154,TalkTime=67,PokemonLeague=1}] run gamemode spectator @s
execute as @s[scores={DialogueTrigger=154,TalkTime=67,PokemonLeague=1}] run tp @s 1488 137 -1900 155 40

#Takes player home on second+ wins
execute as @s[scores={DialogueTrigger=154,TalkTime=67,PokemonLeague=2..}] run tp @s 506 118 1558 180 10

tag @s[scores={DialogueTrigger=154,TalkTime=67..}] add Dialogue154
scoreboard players set @s[scores={DialogueTrigger=154},tag=Dialogue154] TalkTime 0
scoreboard players set @s[scores={DialogueTrigger=154},tag=Dialogue154] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Parade scene if this is the first time player has beaten the Pokemon League
#Directly from the Hall of Fame to this dialogue if score_PokemonLeague=1
#scoreboard players set @a[x=1467,y=104,z=-1982,r=20,score_TalkTime=0,tag=!Dialogue155] DialogueTrigger 155
#scoreboard players set @a[x=1488,y=137,z=-1900,r=20,score_TalkTime=0,tag=!Dialogue155] DialogueTrigger 155

#Music

#pans player towards the parade in 20tps
#tp @a[scores={DialogueTrigger155,TalkTime=5..20},tag=!Dialogue155] ~ ~ ~-0.10 ~ ~

execute as @s[scores={DialogueTrigger=155,TalkTime=21}] run function kalos:triggers/stopsound
execute as @s[scores={DialogueTrigger=155,TalkTime=21}] run gamemode adventure @s
execute as @s[scores={DialogueTrigger=155,TalkTime=21}] run tp @s 1467 104 -1982 0 ~

tellraw @s[scores={DialogueTrigger=155,TalkTime=5}] ["",{"text":"A few days later... Crowds of people gathered in Lumiose City to celebrate the five defenders of the Kalos region and to cheer for its new Champion, "},{"selector":"@s"}]
tellraw @s[scores={DialogueTrigger=155,TalkTime=25}] {"text":"<Sycamore> What an amazing turnout! All of these people are here to celebrate your achievements."}
tellraw @s[scores={DialogueTrigger=155,TalkTime=35}] {"text":"<Sycamore> I'd like to present you with the Honor of Kalos for the bravery you showed battling Team Flare!"}
execute as @s[scores={DialogueTrigger=155,TalkTime=40}] run give @s diamond_horse_armor[custom_name='["",{"text":"Honor of Kalos","italic":false}]',lore=['["",{"text":"A precious symbol that is awarded","italic":false}]','["",{"text":"only to an individual who has done","italic":false}]','["",{"text":"great things for the Kalos region.","italic":false}]']]
execute as @s[scores={DialogueTrigger=155,TalkTime=40}] run playsound minecraft:itemget ambient @s ~ ~ ~ 1 1 1
#tellraw @s[scores={DialogueTrigger=155,TalkTime=45}] {"text":"<Sycamore> I'd also like to give you this Shiny Charm, for all your work on the Pokédex!"}]
#execute as @a[scores={DialogueTrigger=155,TalkTime=50}] run shinycharm @s
tellraw @s[scores={DialogueTrigger=155,TalkTime=45}] {"text":"<Sycamore> I'm so proud of you all!"}
tellraw @s[scores={DialogueTrigger=155,TalkTime=54}] {"text":"<Sycamore> On behalf of the entire Kalos region, I'd like to say..."}
tellraw @s[scores={DialogueTrigger=155,TalkTime=63}] {"text":"<Sycamore> Thank you!"}

execute as @s[scores={DialogueTrigger=155,TalkTime=63}] run summon firework_rocket 1480 115 -1986 {LifeTime:30,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:1,colors:[I;11743532],fade_colors:[I;2437522]}]}}}}
execute as @s[scores={DialogueTrigger=155,TalkTime=63}] run summon firework_rocket 1458 115 -1986 {LifeTime:30,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:1,colors:[I;2437522],fade_colors:[I;11743532]}]}}}}


#Az tps in on the red carpet
execute as @s[scores={DialogueTrigger=155,TalkTime=73}] run particle cloud 1469 101 -1954 2 2 2 1 100
execute as @s[scores={DialogueTrigger=155,TalkTime=73}] unless entity @e[x=1469,y=101,z=-1954,dy=3,type=cobblemon:npc] run npcspawnat 1469 101 -1954 lumiose_az
execute as @s[scores={DialogueTrigger=155,TalkTime=74}] as @e[x=1469,y=101,z=-1954,distance=..5,type=cobblemon:npc] at @s run tp @s ~ ~ ~ 180 ~

tellraw @s[scores={DialogueTrigger=155,TalkTime=80}] {"text":"<Az> Battle with me."}
tellraw @s[scores={DialogueTrigger=155,TalkTime=87}] {"text":"<Az> I want to know what a \u201cTrainer\u201d is."}

tag @s[scores={DialogueTrigger=155,TalkTime=87..}] add Dialogue155
scoreboard players set @s[scores={DialogueTrigger=155},tag=Dialogue155] TalkTime 0
scoreboard players set @s[scores={DialogueTrigger=155},tag=Dialogue155] DialogueTrigger 0


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Az post-battle
#/tedit add LOSS /scoreboard players set @pl DialogueTrigger 156
#/tedit add WIN /scoreboard players set @pl DialogueTrigger 156
#/tedit add LOSS /scoreboard players set @pl TalkTime 0
#/tedit add WIN /scoreboard players set @pl TalkTime 0

#Music is 29. The Sun Shines Down
execute as @s[scores={DialogueTrigger=156,TalkTime=1}] run tag @s remove Dialogue156
execute as @s[scores={DialogueTrigger=156,TalkTime=1}] run scoreboard players set @s BattleStart 0
execute as @s[scores={DialogueTrigger=156,TalkTime=1}] run function kalos:triggers/stopsound

tellraw @s[scores={DialogueTrigger=156,TalkTime=10}] {"text":"<Az> Thank you very much for battling with me."}
tellraw @s[scores={DialogueTrigger=156,TalkTime=20}] {"text":"<Az> Now I finally feel free..."}
tellraw @s[scores={DialogueTrigger=156,TalkTime=30}] {"text":"<Az> Free from the part of me mired in sorrow--"}
tellraw @s[scores={DialogueTrigger=156,TalkTime=40}] {"text":"<Az> the part of me that built the ultimate weapon..."}

#Eternal Floette floats down
execute as @s[scores={DialogueTrigger=156,TalkTime=33}] run spawnpokemonat 1469 130 -1957 floette flower=eternal no_ai=yes level=60 uncatchable=yes
execute as @s[scores={DialogueTrigger=156,TalkTime=33}] run particle cloud 1469 130 -1954 2 2 2 1 100
execute as @s[scores={DialogueTrigger=156,TalkTime=34}] run execute positioned 1469 130 -1957 as @e[distance=..10,type=cobblemon:pokemon] run data modify entity @s Unbattleable set value 1b

#Motion data
#execute if entity @a[scores={DialogueTrigger=156}] as @e[x=1469,y=102,z=-1957,dy=40,type=cobblemon:pokemon] at @s run tp @s ~ ~-0.08 ~

tellraw @s[scores={DialogueTrigger=156,TalkTime=60}] {"text":"<Az> Floette..."}
tellraw @s[scores={DialogueTrigger=156,TalkTime=70}] {"text":"<Az> It's been 3,000 years..."}
tellraw @s[scores={DialogueTrigger=156,TalkTime=90}] {"text":"<Sycamore> His Pokémon was waiting all this time..."}
tellraw @s[scores={DialogueTrigger=156,TalkTime=100}] {"text":"<Sycamore> Waiting for him to return to the man he was."}
tellraw @s[scores={DialogueTrigger=156,TalkTime=110}] {"text":"<Sycamore> The man who loved Pokémon with all his heart."}

#lets the music play for a bit

execute as @s[scores={DialogueTrigger=156,TalkTime=130}] run title @s times 200 100 100
execute as @s[scores={DialogueTrigger=156,TalkTime=130}] run title @s title {"text":"The End."}

#blinds player
execute as @s[scores={DialogueTrigger=156,TalkTime=150}] run effect give @s minecraft:blindness 10 1 true

#tp Floette and Az out
execute as @s[scores={DialogueTrigger=156,TalkTime=155}] run tp @e[x=1469,y=100,z=-1957,dy=40,type=cobblemon:pokemon] 10000000 -50000 -10000000
execute as @s[scores={DialogueTrigger=156,TalkTime=155}] run tp @e[x=1469,y=100,z=-1954,dy=3,type=cobblemon:npc] 10000000 -50000 -10000000

#tp player to Vaniville Home
execute as @s[scores={DialogueTrigger=156,TalkTime=155}] run scoreboard players set @s MusicCheck 1
execute as @s[scores={DialogueTrigger=156,TalkTime=155}] run tp @s 506 118 1558 180 10

tag @s[scores={DialogueTrigger=156,TalkTime=155..}] add Dialogue156
scoreboard players set @s[scores={DialogueTrigger=156},tag=Dialogue156] TalkTime 0
scoreboard players set @s[scores={DialogueTrigger=156},tag=Dialogue156] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Ghost Girl Event
#scoreboard players set @a[x=-162,y=110,z=196,dx=8,dy=5,dz=10,tag=!Dialogue165] DialogueTrigger 165


execute as @s[scores={DialogueTrigger=165,TalkTime=1}] run function kalos:triggers/stopsound

#gives Blindness
execute as @s[scores={DialogueTrigger=165,TalkTime=2}] run effect give @s minecraft:blindness 4 1 true
execute as @s[scores={DialogueTrigger=165,TalkTime=2}] run fill -143 119 226 -173 119 195 minecraft:iron_block

#tp girl in
execute as @s[scores={DialogueTrigger=165,TalkTime=2}] unless entity @e[x=-159,y=110,z=193,dx=2,dy=3,dz=12,type=cobblemon:npc] run npcspawnat -158 111 195 hexmaniac_generic

#slows player (repeated)
#effect @s[score_DialogueTrigger_min=165,score_DialogueTrigger=165] minecraft:slowness 3 10 true

#holds player in place (repeated)
#tp @s[score_DialogueTrigger_min=165,score_DialogueTrigger=165,type=player] -158 111 197 ~ ~

#Ghost Girl movement (repeated)
#tp @e[x=-159,y=110,z=193,dx=2,dy=3,dz=12,type=pixelmon:npc_chatting] run tp @e[x=-159,y=110,z=193,dx=2,dy=3,dz=12,type=pixelmon:npc_chatting] ~ ~ ~0.1

#Little flickering lights
execute as @s[scores={DialogueTrigger=165,TalkTime=20}] run setblock -158 119 206 minecraft:redstone_block
execute as @s[scores={DialogueTrigger=165,TalkTime=21}] run setblock -158 119 206 minecraft:iron_block

tellraw @s[scores={DialogueTrigger=165,TalkTime=25}] {"text":"<...> No, you're not the one..."}

#blindness again
execute as @s[scores={DialogueTrigger=165,TalkTime=35}] run effect give @s minecraft:blindness 5 1 true

#return TP
execute as @s[scores={DialogueTrigger=165,TalkTime=37}] run tp @e[x=-175,y=110,z=195,dx=30,dy=5,dz=31,type=cobblemon:npc] 10000000 -50000 -10000000

execute as @s[scores={DialogueTrigger=165,TalkTime=40}] run function kalos:triggers/stopsound
execute as @s[scores={DialogueTrigger=165,TalkTime=40}] run fill -143 119 226 -173 119 195 minecraft:redstone_block

tag @s[scores={DialogueTrigger=165,TalkTime=40..}] add Dialogue165
scoreboard players set @s[scores={DialogueTrigger=165,TalkTime=40..},tag=Dialogue165] TalkTime 0
scoreboard players set @s[scores={DialogueTrigger=165,TalkTime=40..},tag=Dialogue165] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Legendary bird encoutners
#execute as @s[scores={PokemonLeague=1..,Articuno=..4},tag=!Dialogue167] if block ~ ~ ~ minecraft:short_grass run scoreboard players set @s DialogueTrigger 167
#execute as @s[scores={PokemonLeague=1..,Zapdos=..4},tag=!Dialogue167] if block ~ ~ ~ minecraft:short_grass run scoreboard players set @s DialogueTrigger 167
#execute as @s[scores={PokemonLeague=1..,Moltres=..4},tag=!Dialogue167] if block ~ ~ ~ minecraft:short_grass run scoreboard players set @s DialogueTrigger 167

#tps statue above player
execute as @s[scores={DialogueTrigger=167,TalkTime=3,StarterPick=1}] at @s run pokespawnat ~ ~5 ~ articuno level=70 uncatchable=yes pokeball=ancient_azure_ball
execute as @s[scores={DialogueTrigger=167,TalkTime=3,StarterPick=2}] at @s run pokespawnat ~ ~5 ~ zapdos level=70 uncatchable=yes pokeball=ancient_azure_ball
execute as @s[scores={DialogueTrigger=167,TalkTime=3,StarterPick=3}] at @s run pokespawnat ~ ~5 ~ moltres level=70 uncatchable=yes pokeball=ancient_azure_ball
execute if entity @s[scores={DialogueTrigger=167,TalkTime=3}] as @e[distance=..20,type=cobblemon:pokemon,nbt={Pokemon:{CaughtBall:"cobblemon:ancient_azure_ball"}}] at @s run particle cloud ~ ~ ~ 2 2 2 1 100
execute if entity @s[scores={DialogueTrigger=167,TalkTime=3..4}] as @e[distance=..20,type=cobblemon:pokemon,nbt={Pokemon:{CaughtBall:"cobblemon:ancient_azure_ball"}}] run data modify entity @s Unbattleable set value 1b

#Switches music to legendary encounter music
execute as @s[scores={DialogueTrigger=167,TalkTime=3}] run function kalos:triggers/stopsound

#Pokemon cry
execute as @s[scores={DialogueTrigger=167,TalkTime=6,StarterPick=1}] run playsound articuno hostile @s ~ ~ ~ 100 1 1
execute as @s[scores={DialogueTrigger=167,TalkTime=6,StarterPick=2}] run playsound zapdos hostile @s ~ ~ ~ 100 1 1
execute as @s[scores={DialogueTrigger=167,TalkTime=6,StarterPick=3}] run playsound moltres hostile @s ~ ~ ~ 100 1 1

#Delay of 10 seconds or so (14 ticks)

#Pokemon cry
execute as @s[scores={DialogueTrigger=167,TalkTime=20,StarterPick=1}] run playsound articuno hostile @s ~ ~ ~ 100 1 1
execute as @s[scores={DialogueTrigger=167,TalkTime=20,StarterPick=2}] run playsound zapdos hostile @s ~ ~ ~ 100 1 1
execute as @s[scores={DialogueTrigger=167,TalkTime=20,StarterPick=3}] run playsound moltres hostile @s ~ ~ ~ 100 1 1

#tps statue back to spawn
execute as @s[scores={DialogueTrigger=167,TalkTime=25}] as @e[type=cobblemon:pokemon,nbt={Pokemon:{CaughtBall:"cobblemon:ancient_azure_ball"}}] at @s run particle cloud ~ ~ ~ 2 2 2 1 100
execute as @s[scores={DialogueTrigger=167,TalkTime=25,StarterPick=1}] run tp @e[type=cobblemon:pokemon,nbt={Pokemon:{CaughtBall:"cobblemon:ancient_azure_ball"}}] 10000000 -50000 -10000000
execute as @s[scores={DialogueTrigger=167,TalkTime=25,StarterPick=2}] run tp @e[type=cobblemon:pokemon,nbt={Pokemon:{CaughtBall:"cobblemon:ancient_azure_ball"}}] 10000000 -50000 -10000000
execute as @s[scores={DialogueTrigger=167,TalkTime=25,StarterPick=3}] run tp @e[type=cobblemon:pokemon,nbt={Pokemon:{CaughtBall:"cobblemon:ancient_azure_ball"}}] 10000000 -50000 -10000000

#tellraw
tellraw @s[scores={DialogueTrigger=167,TalkTime=27,StarterPick=1,Articuno=0..3}] {"text":"Articuno fled!","italic":true,"color":"gray"}
tellraw @s[scores={DialogueTrigger=167,TalkTime=27,StarterPick=2,Zapdos=0..3}] {"text":"Zapdos fled!","italic":true,"color":"gray"}
tellraw @s[scores={DialogueTrigger=167,TalkTime=27,StarterPick=3,Moltres=0..3}] {"text":"Moltres fled!","italic":true,"color":"gray"}

tellraw @s[scores={DialogueTrigger=167,TalkTime=27,StarterPick=1,Articuno=4..}] {"text":"Articuno fled to the Sea Spirit's Den!","italic":true,"color":"gray"}
tellraw @s[scores={DialogueTrigger=167,TalkTime=27,StarterPick=2,Zapdos=4..}] {"text":"Zapdos fled to the Sea Spirit's Den!","italic":true,"color":"gray"}
tellraw @s[scores={DialogueTrigger=167,TalkTime=27,StarterPick=3,Moltres=4..}] {"text":"Moltres fled to the Sea Spirit's Den!","italic":true,"color":"gray"}

#Adds score to player for number of encounters
execute as @s[scores={DialogueTrigger=167,TalkTime=30,StarterPick=1}] run scoreboard players add @s Articuno 1
execute as @s[scores={DialogueTrigger=167,TalkTime=30,StarterPick=2}] run scoreboard players add @s Zapdos 1
execute as @s[scores={DialogueTrigger=167,TalkTime=30,StarterPick=3}] run scoreboard players add @s Moltres 1

#execute as @s[scores={DialogueTrigger=167,TalkTime=30}] run function kalos:triggers/stopsound

tag @s[scores={DialogueTrigger=167,TalkTime=30..}] add Dialogue167
scoreboard players set @s[scores={DialogueTrigger=167},tag=Dialogue167] TalkTime 0
scoreboard players set @s[scores={DialogueTrigger=167},tag=Dialogue167] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#https://youtu.be/rrMxYkXdKC8?t=676
#Looker after finding all 5 tickets
#"q.run_command('execute as ' + q.player.username + ' run scoreboard players set @s DialogueTrigger 175');",

#Blinds player, keeps player in place for spectating
execute as @s[scores={DialogueTrigger=175,TalkTime=68}] run effect give @s minecraft:blindness 5 1 true
execute as @s[scores={DialogueTrigger=175,TalkTime=68}] run gamemode spectator @s
execute as @s[scores={DialogueTrigger=175,TalkTime=69}] run tp @s -168 106 429 120 35
execute as @s[scores={DialogueTrigger=175,TalkTime=70..129}] run tp @s -168 106 429 120 35
execute as @s[scores={DialogueTrigger=175,TalkTime=68}] run function kalos:triggers/stopsound

tellraw @s[scores={DialogueTrigger=175,TalkTime=74}] ["",{"text":"<"},{"text":"Looker","color":"gray"},{"text":"> ... ... ...","italic":true}]
tellraw @s[scores={DialogueTrigger=175,TalkTime=81}] ["",{"text":"<"},{"text":"Looker","color":"gray"},{"text":"> To complete my patented training course, \u201cThe Looker Method: Yes, even YOU can become a detective in five easy steps!\u201c in so little time and with such ease...","italic":true}]
tellraw @s[scores={DialogueTrigger=175,TalkTime=93}] ["",{"text":"<"},{"text":"Looker","color":"gray"},{"text":"> "},{"selector":"@s"},{"text":", you truly are a masterful Trainer.","italic":true}]
tellraw @s[scores={DialogueTrigger=175,TalkTime=101}] ["",{"text":"<"},{"text":"Looker","color":"gray"},{"text":"> The big case on which I have been at work... It is a certainty.","italic":true}]
tellraw @s[scores={DialogueTrigger=175,TalkTime=110}] ["",{"text":"<"},{"text":"Looker","color":"gray"},{"text":"> We will crack this case together. And, as for what is past, old friend, be patient.","italic":true}]
tellraw @s[scores={DialogueTrigger=175,TalkTime=121}] ["",{"text":"<"},{"text":"Looker","color":"gray"},{"text":"> Justice will be served--enough for all!","italic":true}]

#Blinds player, tp to front of Beaureu
execute as @s[scores={DialogueTrigger=175,TalkTime=129}] run effect give @s minecraft:blindness 5 1 true
execute as @s[scores={DialogueTrigger=175,TalkTime=130}] run gamemode adventure @s
execute as @s[scores={DialogueTrigger=175,TalkTime=130}] run tp @s -190 102 -634 -90 ~
execute as @s[scores={DialogueTrigger=175,TalkTime=131}] run function kalos:triggers/stopsound
execute as @s[scores={DialogueTrigger=175,TalkTime=131}] run tag @s add LookerCooldown
execute as @s[scores={DialogueTrigger=175,TalkTime=131}] run tag @s remove InDialogue
execute as @s[scores={DialogueTrigger=175,TalkTime=131}] run advancement grant @s only kalos:looker1

tag @s[scores={DialogueTrigger=175,TalkTime=131..}] add Dialogue175
scoreboard players set @s[scores={DialogueTrigger=175},tag=Dialogue175] TalkTime 0
scoreboard players set @s[scores={DialogueTrigger=175},tag=Dialogue175] DialogueTrigger 0


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#https://youtu.be/qEms9_nJ7M0?t=64979
#"q.run_command('scoreboard players set ' + q.player.username + ' DialogueTrigger 178');",
#Finding Espurr in Alley:

#keeps player on wall
execute as @s[scores={DialogueTrigger=178,TalkTime=240}] run gamemode spectator @s
execute as @s[scores={DialogueTrigger=178,TalkTime=240}] run function kalos:triggers/stopsound
execute as @s[scores={DialogueTrigger=178,TalkTime=240..285}] run tp @s -128 100 431 -163 -6

tellraw @s[scores={DialogueTrigger=178,TalkTime=245}] ["",{"text":"<"},{"text":"Looker","color":"gray"},{"text":"> "},{"text":"Emma and Mimi... I was absolutely right to invite them to stay here.","italic":true}]
tellraw @s[scores={DialogueTrigger=178,TalkTime=255}] ["",{"text":"<"},{"text":"Looker","color":"gray"},{"text":"> "},{"text":"Truly genius, no doubt. What I don't know is if enough work will appear to keep food on our table.","italic":true}]
tellraw @s[scores={DialogueTrigger=178,TalkTime=267}] ["",{"text":"<"},{"text":"Looker","color":"gray"},{"text":"> "},{"text":"... ... ... I-I guess I'll roll up my sleeves and concentrate on my mission!","italic":true}]
tellraw @s[scores={DialogueTrigger=178,TalkTime=276}] ["",{"text":"<"},{"text":"Looker","color":"gray"},{"text":"> Th-this is what it means to be a hard-boiled detective.","italic":true}]

#blinds player
#gamemode 2
#tp to exterior of building

execute as @s[scores={DialogueTrigger=178,TalkTime=286}] run effect give @s minecraft:blindness 5 1 true
execute as @s[scores={DialogueTrigger=178,TalkTime=287}] run gamemode adventure @s
execute as @s[scores={DialogueTrigger=178,TalkTime=287}] run tp @s -190 102 -634 -90 ~
execute as @s[scores={DialogueTrigger=178,TalkTime=287}] run function kalos:triggers/stopsound
execute as @s[scores={DialogueTrigger=178,TalkTime=287}] run tag @s add LookerCooldown
execute as @s[scores={DialogueTrigger=178,TalkTime=287}] run advancement grant @s only kalos:looker2

tag @s[scores={DialogueTrigger=178,TalkTime=287..}] add Dialogue178
scoreboard players set @s[scores={DialogueTrigger=178},tag=Dialogue178] TalkTime 0
scoreboard players set @s[scores={DialogueTrigger=178},tag=Dialogue178] DialogueTrigger 0


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Blinds player
#tp Looker and punk guy away
#gamemode 3 fly on the wall

execute as @s[scores={DialogueTrigger=184,TalkTime=660}] run effect give @s minecraft:blindness 5 1 true
execute as @s[scores={DialogueTrigger=184,TalkTime=660}] run gamemode spectator @s
execute as @s[scores={DialogueTrigger=184,TalkTime=660..772}] run tp @s -96.5 100 437.5 127 1

tellraw @s[scores={DialogueTrigger=184,TalkTime=665}] ["",{"text":"<"},{"text":"Emma","color":"yellow"},{"text":"> Hey, Mimi..."}]
tellraw @s[scores={DialogueTrigger=184,TalkTime=670}] ["",{"text":"<"},{"text":"Mimi","color":"light_purple"},{"text":"> Mrawr?"}]
execute as @s[scores={DialogueTrigger=184,TalkTime=670}] run playsound espurr hostile @s ~ ~ ~ 100 1 1
tellraw @s[scores={DialogueTrigger=184,TalkTime=675}] ["",{"text":"<"},{"text":"Emma","color":"yellow"},{"text":"> Mr. Looker said we didn't need to worry about anything, y'know?"}]
tellraw @s[scores={DialogueTrigger=184,TalkTime=685}] ["",{"text":"<"},{"text":"Emma","color":"yellow"},{"text":"> But I just don't feel like we can keep depending on him like this forever."}]
tellraw @s[scores={DialogueTrigger=184,TalkTime=695}] ["",{"text":"<"},{"text":"Emma","color":"yellow"},{"text":"> He lets us stay here for free and pays for all the food we eat..."}]
tellraw @s[scores={DialogueTrigger=184,TalkTime=703}] ["",{"text":"<"},{"text":"Mimi","color":"light_purple"},{"text":"> Mrrrawr mrawr..."}]
execute as @s[scores={DialogueTrigger=184,TalkTime=703}] run playsound espurr hostile @s ~ ~ ~ 100 1 1
tellraw @s[scores={DialogueTrigger=184,TalkTime=708}] ["",{"text":"<"},{"text":"Emma","color":"yellow"},{"text":"> So I think I need to do something."}]
tellraw @s[scores={DialogueTrigger=184,TalkTime=715}] ["",{"text":"<"},{"text":"Mimi","color":"light_purple"},{"text":"> Mrrr-mrrrawr!"}]
execute as @s[scores={DialogueTrigger=184,TalkTime=715}] run playsound espurr hostile @s ~ ~ ~ 100 1 1
tellraw @s[scores={DialogueTrigger=184,TalkTime=720}] ["",{"text":"<"},{"text":"Emma","color":"yellow"},{"text":"> Thanks to Mr. Looker, I can read now, right?"}]
tellraw @s[scores={DialogueTrigger=184,TalkTime=727}] ["",{"text":"<"},{"text":"Emma","color":"yellow"},{"text":"> And I've seen signs around town for part-time work."}]
tellraw @s[scores={DialogueTrigger=184,TalkTime=735}] ["",{"text":"<"},{"text":"Mimi","color":"light_purple"},{"text":"> Murrr?"}]
execute as @s[scores={DialogueTrigger=184,TalkTime=735}] run playsound espurr hostile @s ~ ~ ~ 100 1 1
tellraw @s[scores={DialogueTrigger=184,TalkTime=740}] ["",{"text":"<"},{"text":"Emma","color":"yellow"},{"text":"> The signs say it's easy work and anyone can learn it. Maybe even I can do it, then!"}]
tellraw @s[scores={DialogueTrigger=184,TalkTime=750}] ["",{"text":"<"},{"text":"Emma","color":"yellow"},{"text":"> I'm going over there right now to ask them for a job! What do you think, Mimi?"}]
tellraw @s[scores={DialogueTrigger=184,TalkTime=760}] ["",{"text":"<"},{"text":"Mimi","color":"light_purple"},{"text":"> Murrr-murrrawr!"}]
execute as @s[scores={DialogueTrigger=184,TalkTime=760}] run playsound espurr hostile @s ~ ~ ~ 100 1 1
tellraw @s[scores={DialogueTrigger=184,TalkTime=765}] ["",{"text":"<"},{"text":"Emma","color":"yellow"},{"text":"> Hee hee hee, really?"}]

#blinds player
#gamemode 2
#tp to exterior of building

execute as @s[scores={DialogueTrigger=184,TalkTime=772}] run effect give @s minecraft:blindness 5 1 true
execute as @s[scores={DialogueTrigger=184,TalkTime=773}] run gamemode adventure @s
execute as @s[scores={DialogueTrigger=184,TalkTime=773}] run tp @s -190 102 -634 -90 ~
execute as @s[scores={DialogueTrigger=184,TalkTime=773}] run function kalos:triggers/stopsound
execute as @s[scores={DialogueTrigger=184,TalkTime=773}] run tag @s add LookerCooldown
execute as @s[scores={DialogueTrigger=184,TalkTime=773}] run advancement grant @s only kalos:looker3

tag @s[scores={DialogueTrigger=184,TalkTime=773..}] add Dialogue184
scoreboard players set @s[scores={DialogueTrigger=184},tag=Dialogue184] TalkTime 0
scoreboard players set @s[scores={DialogueTrigger=184},tag=Dialogue184] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


#