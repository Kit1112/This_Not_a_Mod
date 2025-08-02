#built using mc-build (https://github.com/mc-build/mc-build)

tp @s ^-0.046 ^3.797 ^0.045 ~ ~
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer5,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10959
execute store result entity @s Air short 1 run time query gametime