#built using mc-build (https://github.com/mc-build/mc-build)

execute as @e[tag=emitter] at @s facing entity @a[limit=1,tag=targeted] eyes run tp @s ~ ~ ~ ~ ~
execute at @e[tag=emitter] run function ramiel:flare
scoreboard players set #execute LANG_MC_INTERNAL 0
execute if score shootmode value matches 1 run function ramiel:__generated__/conditional/4
execute if score #execute LANG_MC_INTERNAL matches 0 if score shootmode value matches 2 run function ramiel:__generated__/conditional/5
execute if score #execute LANG_MC_INTERNAL matches 0 if score shootmode value matches 3 run function ramiel:__generated__/conditional/6
execute if score #execute LANG_MC_INTERNAL matches 0 if score shootmode value matches 4 run function ramiel:__generated__/conditional/7
particle flash ~ ~ ~ 1 1 1 0 5 force