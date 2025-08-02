#built using mc-build (https://github.com/mc-build/mc-build)

execute if score @s aj.i matches 0..27 run tp @s ~ ~ ~ ~10 ~
execute if score @s aj.i matches 28..54 run tp @s ~ ~ ~ ~10 ~
execute if score @s aj.i matches 55..81 run tp @s ~ ~ ~ ~8 ~
execute if score @s aj.i matches 82..108 run tp @s ~ ~ ~ ~4 ~
execute if score @s aj.i matches 109..135 run tp @s ~ ~ ~ ~2 ~
execute if score @s aj.i matches 0136..166 run tp @s ~ ~ ~ ~1 ~
scoreboard players set #execute LANG_MC_INTERNAL 1