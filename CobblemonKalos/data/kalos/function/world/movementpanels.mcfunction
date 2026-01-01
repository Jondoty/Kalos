#Throws the player around should they step on glazed magenta arrow blocks

#Removes tags if player is standing on a movement block to potentially change directions
execute as @s[tag=MoveSouth] at @s if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta run tag @s remove MoveSouth
execute as @s[tag=MoveEast] at @s if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta run tag @s remove MoveEast
execute as @s[tag=MoveWest] at @s if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta run tag @s remove MoveWest
execute as @s[tag=MoveNorth] at @s if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta run tag @s remove MoveNorth

#Applies the tag in the direction they're going to move
execute as @s[tag=!MoveSouth] at @s if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=north] run tag @s add MoveSouth
execute as @s[tag=!MoveEast] at @s if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=west] run tag @s add MoveEast
execute as @s[tag=!MoveWest] at @s if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=east] run tag @s add MoveWest
execute as @s[tag=!MoveNorth] at @s if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=south] run tag @s add MoveNorth

#Applies slowness as to not drift off course from the direction they should be going
execute as @s[tag=MoveSouth] run effect give @s minecraft:slowness 4 255 true
execute as @s[tag=MoveEast] run effect give @s minecraft:slowness 4 255 true
execute as @s[tag=MoveWest] run effect give @s minecraft:slowness 4 255 true
execute as @s[tag=MoveNorth] run effect give @s minecraft:slowness 4 255 true



#Removes all tags and effects if player lands on a stop block (polished blackstone for Lysandre Labs)
execute as @s at @s if block ~ ~-1 ~ minecraft:polished_blackstone run tag @s remove MoveSouth
execute as @s at @s if block ~ ~-1 ~ minecraft:polished_blackstone run tag @s remove MoveEast
execute as @s at @s if block ~ ~-1 ~ minecraft:polished_blackstone run tag @s remove MoveWest
execute as @s at @s if block ~ ~-1 ~ minecraft:polished_blackstone run tag @s remove MoveNorth
execute as @s at @s if block ~ ~-1 ~ minecraft:polished_blackstone run effect clear @s minecraft:slowness


#Pushes player in specific directions
execute as @s[tag=MoveSouth] at @s run tp @s ~ ~ ~0.25 ~5 ~
execute as @s[tag=MoveEast] at @s run tp @s ~0.25 ~ ~ ~5 ~
execute as @s[tag=MoveWest] at @s run tp @s ~-0.25 ~ ~ ~5 ~
execute as @s[tag=MoveNorth] at @s run tp @s ~ ~ ~-0.25 ~5 ~