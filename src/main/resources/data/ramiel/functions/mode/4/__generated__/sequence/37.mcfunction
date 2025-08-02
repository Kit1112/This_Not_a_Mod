#built using mc-build (https://github.com/mc-build/mc-build)

execute as @e[tag=RAMIEL] at @s run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/reset
function ramiel:mode/4/exit
scoreboard players reset shootLength value