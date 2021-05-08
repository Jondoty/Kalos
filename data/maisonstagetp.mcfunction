
#Singles
execute @p[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,score_BattleMaison_min=1,score_BattleMaison=1,score_BattleStreak_min=0,score_BattleStreak=18] ~ ~ ~ tp @e[x=1213,y=65,z=1549,dy=3,type=pixelmon:npc_trainer] 1215 75 1545
execute @p[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,score_BattleMaison_min=1,score_BattleMaison=1,score_BattleStreak_min=19,score_BattleStreak=19] ~ ~ ~ tp @e[x=1227,y=65,z=1548,dy=3,type=pixelmon:npc_trainer] 1215 75 1545
execute @p[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,score_BattleMaison_min=1,score_BattleMaison=1,score_BattleStreak_min=20] ~ ~ ~ tp @e[x=1213,y=65,z=1549,dy=3,type=pixelmon:npc_trainer] 1215 75 1545

#Singles Super
execute @p[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,score_BattleMaison_min=2,score_BattleMaison=2,score_BattleStreak_min=0,score_BattleStreak=48] ~ ~ ~ tp @e[x=1213,y=65,z=1549,dy=3,type=pixelmon:npc_trainer] 1215 75 1545
execute @p[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,score_BattleMaison_min=2,score_BattleMaison=2,score_BattleStreak_min=49,score_BattleStreak=49] ~ ~ ~ tp @e[x=1227,y=65,z=1550,dy=3,type=pixelmon:npc_trainer] 1215 75 1545
execute @p[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,score_BattleMaison_min=2,score_BattleMaison=2,score_BattleStreak_min=50] ~ ~ ~ tp @e[x=1213,y=65,z=1549,dy=3,type=pixelmon:npc_trainer] 1215 75 1545


#Doubles
execute @p[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,score_BattleMaison_min=3,score_BattleMaison=3,score_BattleStreak_min=0,score_BattleStreak=18] ~ ~ ~ tp @e[x=1213,y=65,z=1544,dy=3,type=pixelmon:npc_trainer] 1215 75 1545
execute @p[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,score_BattleMaison_min=3,score_BattleMaison=3,score_BattleStreak_min=19,score_BattleStreak=19] ~ ~ ~ tp @e[x=1227,y=65,z=1543,dy=3,type=pixelmon:npc_trainer] 1215 75 1545
execute @p[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,score_BattleMaison_min=3,score_BattleMaison=3,score_BattleStreak_min=20] ~ ~ ~ tp @e[x=1213,y=65,z=1544,dy=3,type=pixelmon:npc_trainer] 1215 75 1545

#Doubles Super
execute @p[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,score_BattleMaison_min=4,score_BattleMaison=4,score_BattleStreak_min=0,score_BattleStreak=48] ~ ~ ~ tp @e[x=1213,y=65,z=1544,dy=3,type=pixelmon:npc_trainer] 1215 75 1545
execute @p[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,score_BattleMaison_min=4,score_BattleMaison=4,score_BattleStreak_min=49,score_BattleStreak=49] ~ ~ ~ tp @e[x=1227,y=65,z=1545,dy=3,type=pixelmon:npc_trainer] 1215 75 1545
execute @p[x=1209,y=74,z=1537,dx=22,dy=10,dz=14,score_BattleMaison_min=4,score_BattleMaison=4,score_BattleStreak_min=50] ~ ~ ~ tp @e[x=1213,y=65,z=1544,dy=3,type=pixelmon:npc_trainer] 1215 75 1545


entitydata @e[x=1215,y=75,z=1545,dy=3,type=pixelmon:npc_trainer] {Rotation:[-90.0f,0.0f]}

function data:maisonsingles if @e[x=1215,y=75,z=1545,dy=3,type=pixelmon:npc_trainer,tag=Single]
function data:maisondoubles if @e[x=1215,y=75,z=1545,dy=3,type=pixelmon:npc_trainer,tag=Double]

function data:maisonskins if @e[x=1215,y=75,z=1545,dy=3,type=pixelmon:npc_trainer,tag=Single]
function data:maisonskins if @e[x=1215,y=75,z=1545,dy=3,type=pixelmon:npc_trainer,tag=Double]
