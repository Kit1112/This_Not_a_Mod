#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players set r.animating value 0
scoreboard players set r.firing_mode value 1
execute as @e[tag=RAMIEL,tag=mode3] at @s run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/reset
execute as @e[tag=RAMIEL,tag=mode3] at @s run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/start