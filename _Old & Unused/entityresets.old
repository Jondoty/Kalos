#Player steps over ambush encounter, uses Rock Smash, etc
#In function that runs the encounter, rock, etc, apply a CooldownX tag to armor stand at spawn that manages
#     X = ID value of entity that will respawn
#Encounter function adds a Cooldown tag to the shadow/rock to not run encounter function when player is near
#Encounter function sets state of Rock Smash, shadow to broken/used
#Daily function removes all CooldownX tags that are present on the reference armor stand
#Each minute, this function runs on each respawnable entity in the world attempting to execute as the entity (so it will only run when entity is loaded, aka when player is near)
#If !CooldownX tag is present on spawn reference armor stand and Cooldown tag is still found on entity in the world, reset the world entity and remove the Cooldown score
