#built using mc-build (https://github.com/mc-build/mc-build)

execute as @e[tag=RAMIEL,tag=statue] at @s run function ramiel:mode/2/__generated__/block/29
function aj_ramiel_mode_2:remove/all_models
scoreboard players set r.animating value 0
scoreboard players reset shootmode value
scoreboard players set r.attacking value 0