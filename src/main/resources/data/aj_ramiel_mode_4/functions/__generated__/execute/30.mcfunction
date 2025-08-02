#built using mc-build (https://github.com/mc-build/mc-build)

tp @s ~ ~ ~ ~ ~
scoreboard players operation @s aj.id = #last_model.id aj.i
tag @s add aj.state.default
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.base2,tag=new,distance=..21] run function aj_ramiel_mode_4:__generated__/execute/31
execute store result entity @s Air short 1 run time query gametime
tag @s remove new