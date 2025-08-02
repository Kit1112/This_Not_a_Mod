#built using mc-build (https://github.com/mc-build/mc-build)

execute if score shootmode value matches 3 run function ramiel:__generated__/block/10
execute unless score shootmode value matches 3 unless score shootmode value matches 2 if score shootLength value matches 1.. run function ramiel:__generated__/block/11
execute positioned ~ ~ ~ run function ramiel:__generated__/block/12
scoreboard players remove shootLength value 1
execute if score shootLength value matches 0 run tag @a remove hit