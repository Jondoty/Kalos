#stops current sounds
execute @s[tag=!RadioOff,score_click_min=2] ~ ~ ~ scoreboard players tag @s add Temp
tellraw @s[tag=Temp] {"text":"Music toggled off... Double click the Holo Caster again to turn on!"}
scoreboard players tag @s[tag=Temp] add RadioOff
stopsound @s[tag=Temp] record
scoreboard players set @s[tag=Temp] MusicCooldown 0
scoreboard players set @s[tag=Temp] click 0
scoreboard players tag @s remove Temp





#Turns radio on
execute @s[tag=RadioOff,score_click_min=2] ~ ~ ~ scoreboard players tag @s add Temp
tellraw @s[tag=Temp] {"text":"Music toggled on! Double click the Holo Caster again to turn off!"}
scoreboard players tag @s[tag=Temp] remove RadioOff
scoreboard players set @s[tag=Temp] click 0
scoreboard players tag @s remove Temp





#Only one click, stops current sounds
stopsound @s[score_click_min=1] record
scoreboard players set @s[score_click_min=1] MusicCooldown 0
scoreboard players set @s[score_click_min=1] click 0






scoreboard players tag @s remove TempDelay
#scoreboard players set @s click 0
