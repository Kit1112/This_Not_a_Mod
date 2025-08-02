#built using mc-build (https://github.com/mc-build/mc-build)

tp @s ^3.208 ^-0.716 ^0.969 ~ ~
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone9,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/223
execute store result entity @s Air short 1 run time query gametime