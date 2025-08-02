#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players set #execute LANG_MC_INTERNAL 0
execute as @s[tag=aj.ramiel_mode_3.animations.ramiel.mode.3.enter] run function ramiel:mode/3/__generated__/conditional/8
execute if score #execute LANG_MC_INTERNAL matches 0 as @s[tag=aj.ramiel_mode_3.animations.ramiel.mode.3.exit] run function ramiel:mode/3/__generated__/conditional/9
execute if score #execute LANG_MC_INTERNAL matches 0 run function ramiel:mode/3/__generated__/conditional/10