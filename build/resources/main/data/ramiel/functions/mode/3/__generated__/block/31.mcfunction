#built using mc-build (https://github.com/mc-build/mc-build)

execute as @e[tag=RAMIEL,tag=mode3] at @s run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/start
function aj_ramiel_mode_3:show_model
playsound ramiel:ramiel.mode_3.enter master @a[distance=..100] ~ ~ ~ 100