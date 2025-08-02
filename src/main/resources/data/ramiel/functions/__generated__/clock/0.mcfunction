#built using mc-build (https://github.com/mc-build/mc-build)

schedule function ramiel:__generated__/clock/0 3.5s
execute at @e[tag=RAMIEL] unless score r.firing_mode value matches 1 unless score r.animating value matches 1 unless score r.dying value matches 1 run playsound ramiel:ramiel.sing master @a[distance=..100] ~ ~ ~ 100