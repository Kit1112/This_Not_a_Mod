#built using mc-build (https://github.com/mc-build/mc-build)

function aj_ramiel_mode_1:animations/ramiel.mode.1.exit/start
playsound ramiel:ramiel.mode_1.exit master @a[distance=..100] ~ ~ ~ 100
scoreboard players set r.animating value 1
scoreboard players set r.firing_mode value 0