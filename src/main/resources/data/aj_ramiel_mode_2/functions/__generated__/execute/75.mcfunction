#built using mc-build (https://github.com/mc-build/mc-build)

tp @s ~ ~ ~ ~ ~
scoreboard players operation @s aj.id = #last_model.id aj.i
tag @s add aj.state.mode_2
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.inner2,tag=new,distance=..16.57] run function aj_ramiel_mode_2:__generated__/execute/76
execute store result entity @s Air short 1 run time query gametime
tag @s remove new