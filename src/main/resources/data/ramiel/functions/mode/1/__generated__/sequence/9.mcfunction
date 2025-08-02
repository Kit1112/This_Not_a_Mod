#built using mc-build (https://github.com/mc-build/mc-build)

execute as @e[tag=RAMIEL,tag=statue] at @s run function ramiel:mode/1/__generated__/block/23
function aj_ramiel_mode_1:remove/all_models
scoreboard players set r.animating value 0
scoreboard players reset shootmode value
scoreboard players set r.attacking value 0