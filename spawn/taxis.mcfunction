summon armor_stand ~0.133 ~-0.35 ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,HideFlags:6},Damage:55s}],HandItems:[{},{}],DisabledSlots:2039327,NoGravity:1b}

summon pixelmon:statue ~ ~-0.35 ~ {ndex:321s,Growth:4b,CustomTexture:"invisible",ForgeData:{SpongeData:{},trainercommands:{interact:["/scoreboard players set @pl TalkTrigger 227"]}}}

entitydata @e[dy=3,type=pixelmon:npc_chatting] {NoGravity:1b}

tp @e[dy=3,type=pixelmon:npc_chatting] ~ ~-0.5 ~

setblock ~ ~ ~ minecraft:air


#/tp @e[r=4,type=armor_stand] ~ ~ ~ ~45 ~
