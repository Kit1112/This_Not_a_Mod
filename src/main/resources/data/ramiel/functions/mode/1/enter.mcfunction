#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players set shootmode value 1
execute as @e[tag=RAMIEL] at @s run function ramiel:mode/1/__generated__/block/17
function aj_ramiel_statue:remove/all_models
execute as @e[tag=RAMIEL,tag=mode1] at @s run function ramiel:mode/1/__generated__/block/18
schedule function ramiel:mode/1/__generated__/schedule/0 7.2s replace