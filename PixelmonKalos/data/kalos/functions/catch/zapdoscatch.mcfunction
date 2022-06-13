tag @s add ZapdosCatch
stopsound @s[scores={MusicCooldown=1..}] record
scoreboard players set @s[scores={MusicCooldown=1..}] MusicCooldown 60
playsound pixelmon:pixelmon.block.pokeballcapturesuccess ambient @s ~ ~ ~ 1000 1 1
