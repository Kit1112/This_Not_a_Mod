#built using mc-build (https://github.com/mc-build/mc-build)

playsound ramiel:ramiel.mode_2.fire master @a[distance=..100] ~ ~ ~ 100
execute as @e[tag=RAMIEL] rotated as @e[tag=emitter,limit=1] run tp @s ~ ~ ~ ~ 0
scoreboard players set #execute LANG_MC_INTERNAL 1