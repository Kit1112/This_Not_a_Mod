#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players set shootmode value 4
execute as @e[tag=RAMIEL] at @s run function ramiel:mode/4/__generated__/block/37
function aj_ramiel_statue:remove/all_models
execute as @e[tag=RAMIEL,tag=mode4] at @s run function ramiel:mode/4/__generated__/block/38
schedule function ramiel:mode/4/__generated__/schedule/3 6s replace