#execute @a[tag=!Beta2_2Patch] ~ ~ ~ function custom:2.0beta2patch

advancement grant @s only kalos:root

scoreboard objectives add Style armor
scoreboard objectives add Grass dummy
scoreboard objectives add SelectedSlot dummy
scoreboard objectives add ItemStore dummy
scoreboard objectives add ChateauCD dummy
scoreboard objectives add WritCD dummy
scoreboard objectives add Active_Writs dummy Active Writs
scoreboard objectives add BattleStreak dummy
scoreboard objectives add BattlePoint dummy
scoreboard objectives add BattleMaison dummy
scoreboard objectives add CatchCount dummy
scoreboard objectives add RestaurantBattle dummy
scoreboard objectives add RestaurantTimer dummy
scoreboard objectives add RestaurantTotal dummy
scoreboard objectives add PhotoSpot dummy
scoreboard objectives add Deaths stat.deaths
scoreboard objectives add PlayedDays dummy
scoreboard objectives add Rotation dummy
scoreboard objectives add Cooldown dummy


scoreboard players set @s SelectedSlot 0
scoreboard players set @s ItemStore 0
scoreboard players set @s ChateauCD 0
scoreboard players set @s WritCD 0
scoreboard players set @s BattleStreak 0
scoreboard players set @s BattlePoint 0
scoreboard players set @s BattleMaison 0
scoreboard players set @s CatchCount 0
scoreboard players set @s RestaurantBattle 0


scoreboard teams add Chateau
scoreboard teams option Chateau color red
scoreboard objectives setdisplay sidebar.team.red Active_Writs

scoreboard teams add Restaurant
scoreboard teams option Restaurant color aqua
scoreboard objectives add Battle_Time dummy Battle Time
scoreboard objectives setdisplay sidebar.team.aqua Battle_Time





scoreboard players tag @s add Music1

scoreboard objectives add Hat1 dummy
scoreboard objectives add Hat2 dummy
scoreboard objectives add Hat3 dummy
scoreboard objectives add Hat4 dummy
scoreboard objectives add Hat5 dummy
scoreboard objectives add Hat6 dummy
scoreboard objectives add Hat7 dummy
scoreboard objectives add Hat8 dummy
scoreboard objectives add Hat9 dummy
scoreboard objectives add Hat10 dummy
scoreboard objectives add Hat11 dummy
scoreboard objectives add Hat12 dummy
scoreboard objectives add Hat13 dummy
scoreboard objectives add Hat14 dummy
scoreboard objectives add Hat15 dummy
scoreboard objectives add Hat16 dummy
scoreboard objectives add Hat17 dummy
scoreboard objectives add Hat18 dummy
scoreboard objectives add Hat19 dummy
scoreboard objectives add Hat20 dummy


scoreboard objectives add Shirt1 dummy
scoreboard objectives add Shirt2 dummy
scoreboard objectives add Shirt3 dummy
scoreboard objectives add Shirt4 dummy
scoreboard objectives add Shirt5 dummy
scoreboard objectives add Shirt6 dummy
scoreboard objectives add Shirt7 dummy
scoreboard objectives add Shirt8 dummy
scoreboard objectives add Shirt9 dummy
scoreboard objectives add Shirt10 dummy
scoreboard objectives add Shirt11 dummy
scoreboard objectives add Shirt12 dummy
scoreboard objectives add Shirt13 dummy
scoreboard objectives add Shirt14 dummy
scoreboard objectives add Shirt15 dummy
scoreboard objectives add Shirt16 dummy
scoreboard objectives add Shirt17 dummy
scoreboard objectives add Shirt18 dummy
scoreboard objectives add Shirt19 dummy
scoreboard objectives add Shirt20 dummy


scoreboard objectives add Pants1 dummy
scoreboard objectives add Pants2 dummy
scoreboard objectives add Pants3 dummy
scoreboard objectives add Pants4 dummy
scoreboard objectives add Pants5 dummy
scoreboard objectives add Pants6 dummy
scoreboard objectives add Pants7 dummy
scoreboard objectives add Pants8 dummy
scoreboard objectives add Pants9 dummy
scoreboard objectives add Pants10 dummy
scoreboard objectives add Pants11 dummy
scoreboard objectives add Pants12 dummy
scoreboard objectives add Pants13 dummy
scoreboard objectives add Pants14 dummy
scoreboard objectives add Pants15 dummy
scoreboard objectives add Pants16 dummy
scoreboard objectives add Pants17 dummy
scoreboard objectives add Pants18 dummy
scoreboard objectives add Pants19 dummy
scoreboard objectives add Pants20 dummy


scoreboard objectives add Shoes1 dummy
scoreboard objectives add Shoes2 dummy
scoreboard objectives add Shoes3 dummy
scoreboard objectives add Shoes4 dummy
scoreboard objectives add Shoes5 dummy
scoreboard objectives add Shoes6 dummy
scoreboard objectives add Shoes7 dummy
scoreboard objectives add Shoes8 dummy
scoreboard objectives add Shoes9 dummy
scoreboard objectives add Shoes10 dummy
scoreboard objectives add Shoes11 dummy
scoreboard objectives add Shoes12 dummy
scoreboard objectives add Shoes13 dummy
scoreboard objectives add Shoes14 dummy
scoreboard objectives add Shoes15 dummy
scoreboard objectives add Shoes16 dummy
scoreboard objectives add Shoes17 dummy
scoreboard objectives add Shoes18 dummy
scoreboard objectives add Shoes19 dummy
scoreboard objectives add Shoes20 dummy



scoreboard players set @s Hat1 0
scoreboard players set @s Hat2 0
scoreboard players set @s Hat3 0
scoreboard players set @s Hat4 0
scoreboard players set @s Hat5 0
scoreboard players set @s Hat6 0
scoreboard players set @s Hat7 0
scoreboard players set @s Hat8 0
scoreboard players set @s Hat9 0
scoreboard players set @s Hat10 0
scoreboard players set @s Hat11 0
scoreboard players set @s Hat12 0
scoreboard players set @s Hat13 0
scoreboard players set @s Hat14 0
scoreboard players set @s Hat15 0
scoreboard players set @s Hat16 0
scoreboard players set @s Hat17 0
scoreboard players set @s Hat18 0
scoreboard players set @s Hat19 0
scoreboard players set @s Hat20 0


scoreboard players set @s Shirt1 0
scoreboard players set @s Shirt2 0
scoreboard players set @s Shirt3 0
scoreboard players set @s Shirt4 0
scoreboard players set @s Shirt5 0
scoreboard players set @s Shirt6 0
scoreboard players set @s Shirt7 0
scoreboard players set @s Shirt8 0
scoreboard players set @s Shirt9 0
scoreboard players set @s Shirt10 0
scoreboard players set @s Shirt11 0
scoreboard players set @s Shirt12 0
scoreboard players set @s Shirt13 0
scoreboard players set @s Shirt14 0
scoreboard players set @s Shirt15 0
scoreboard players set @s Shirt16 0
scoreboard players set @s Shirt17 0
scoreboard players set @s Shirt18 0
scoreboard players set @s Shirt19 0
scoreboard players set @s Shirt20 0


scoreboard players set @s Pants1 0
scoreboard players set @s Pants2 0
scoreboard players set @s Pants3 0
scoreboard players set @s Pants4 0
scoreboard players set @s Pants5 0
scoreboard players set @s Pants6 0
scoreboard players set @s Pants7 0
scoreboard players set @s Pants8 0
scoreboard players set @s Pants9 0
scoreboard players set @s Pants10 0
scoreboard players set @s Pants11 0
scoreboard players set @s Pants12 0
scoreboard players set @s Pants13 0
scoreboard players set @s Pants14 0
scoreboard players set @s Pants15 0
scoreboard players set @s Pants16 0
scoreboard players set @s Pants17 0
scoreboard players set @s Pants18 0
scoreboard players set @s Pants19 0
scoreboard players set @s Pants20 0


scoreboard players set @s Shoes1 0
scoreboard players set @s Shoes2 0
scoreboard players set @s Shoes3 0
scoreboard players set @s Shoes4 0
scoreboard players set @s Shoes5 0
scoreboard players set @s Shoes6 0
scoreboard players set @s Shoes7 0
scoreboard players set @s Shoes8 0
scoreboard players set @s Shoes9 0
scoreboard players set @s Shoes10 0
scoreboard players set @s Shoes11 0
scoreboard players set @s Shoes12 0
scoreboard players set @s Shoes13 0
scoreboard players set @s Shoes14 0
scoreboard players set @s Shoes15 0
scoreboard players set @s Shoes16 0
scoreboard players set @s Shoes17 0
scoreboard players set @s Shoes18 0
scoreboard players set @s Shoes19 0
scoreboard players set @s Shoes20 0

advancement grant @s[tag=Dialogue45] only kalos:flare1
advancement grant @s[tag=Dialogue63] only kalos:mega1
advancement grant @s[tag=Dialogue75] only kalos:flare2
advancement grant @s[tag=Dialogue92] only kalos:flare3
advancement grant @s[tag=Dialogue98] only kalos:flare4
advancement grant @s[tag=Dialogue104] only kalos:flare5
advancement grant @s[tag=Dialogue118] only kalos:flare6
advancement grant @s[tag=Dialogue120] only kalos:flare7
advancement grant @s[tag=Dialogue132,score_Xerneas_min=1] only kalos:flare8
advancement grant @s[tag=Dialogue132,score_Yveltal_min=1] only kalos:flare9
advancement grant @s[score_PokemonLeague_min=1] only kalos:champion
advancement grant @s[tag=Dialogue163] only kalos:mega2
advancement grant @s[score_PokemonLeague_min=1] only kalos:legendroot
advancement grant @s[score_PokemonLeague_min=1] only kalos:mythicalroot
advancement grant @s[tag=Dialogue262] only kalos:adventurer1

give @s pixelmon:blackbadgecase
give @s[tag=Viola] pixelmon:bug_badge


scoreboard players tag @s add Beta2_2Patch
