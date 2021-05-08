#Sets score based on initial stats
#If those stats change, execute Mega cry above or below the initial value
#
#

#/scoreboard objectives add MegaTrack dummy
#/scoreboard objectives add MegaTrackOutput dummy
#/scoreboard objectives add MegaTrackFinal dummy

#Constantly-assigning values based on changing Pixelmon stat scores
scoreboard players set @e[r=5,type=pixelmon:pixelmon,tag=!Initial] MegaTrack 66 {StatsSpeed:66s}

scoreboard players set @e[r=5,type=pixelmon:pixelmon] MegaTrack 80 {StatsSpeed:80s}


#Assigns value of Pokemon to armor stand

#Tags the Pokemon with Initial to not clone more than once
scoreboard players tag @e[r=5,type=pixelmon:pixelmon,score_MegaTrack_min=0] add Initial

#




#Runs mega cries















































#
