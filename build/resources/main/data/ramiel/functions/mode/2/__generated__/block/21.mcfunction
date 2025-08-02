#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players set r.animating value 1
function aj_ramiel_mode_2:summon_model
execute as @e[tag=RAMIEL,tag=mode2] run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/start
playsound ramiel:ramiel.mode_2.enter master @a[distance=..90] ~ ~ ~ 90
function aj_ramiel_statue:remove/all_models