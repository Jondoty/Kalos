#/execute positioned -258 101 -655 run function kalos:spawn/taxi

#When there's a power outage
execute as @s[tag=!LumiosePower] run opendialogue taxi_poweroutage @s

execute as @s[tag=LumiosePower] run opendialogue lumiose_taxi @s

advancement revoke @s only kalos:click/taxis