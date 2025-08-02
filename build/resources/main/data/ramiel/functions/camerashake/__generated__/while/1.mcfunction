#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players remove cs.temp cs.shakeViolence 1
execute if score cs.rng cs.value matches 1 at @s run tp @s ~ ~ ~ ~ ~0.1
execute if score cs.rng cs.value matches 2 at @s run tp @s ~ ~ ~ ~ ~-0.1
execute if score cs.rng cs.value matches 3 at @s run tp @s ~ ~ ~ ~0.1 ~
execute if score cs.rng cs.value matches 4 at @s run tp @s ~ ~ ~ ~-0.1 ~
scoreboard players set #WHILE_0 LANG_MC_INTERNAL 1
function ramiel:camerashake/__generated__/while/0