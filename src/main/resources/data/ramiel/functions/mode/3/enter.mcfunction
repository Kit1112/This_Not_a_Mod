#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players set shootmode value 3
execute as @e[tag=RAMIEL] at @s run function ramiel:mode/3/__generated__/block/30
function aj_ramiel_statue:remove/all_models
execute as @e[tag=RAMIEL,tag=mode3] at @s run function ramiel:mode/3/__generated__/block/31
schedule function ramiel:mode/3/__generated__/schedule/2 8.3s replace