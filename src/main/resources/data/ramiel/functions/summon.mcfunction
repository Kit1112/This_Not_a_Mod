#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players reset r.firing_mode value
execute at @s positioned ~ ~10 ~ rotated 0 0 run function aj_ramiel_statue:summon_model
execute as @e[tag=RAMIEL] at @s run function ramiel:__generated__/block/9
scoreboard players set Ramiel r.health 500