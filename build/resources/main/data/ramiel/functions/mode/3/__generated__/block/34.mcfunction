#built using mc-build (https://github.com/mc-build/mc-build)

function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/start
playsound ramiel:ramiel.mode_3.exit master @a[distance=..100] ~ ~ ~ 100
scoreboard players set r.animating value 1
scoreboard players set r.firing_mode value 0