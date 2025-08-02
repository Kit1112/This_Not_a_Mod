#built using mc-build (https://github.com/mc-build/mc-build)

tp @s ^-1.364 ^0.864 ^-1.364 ~ ~
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/216
execute store result entity @s Air short 1 run time query gametime