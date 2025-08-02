#built using mc-build (https://github.com/mc-build/mc-build)

tp @s ^0.366 ^-7.277 ^0.211 ~ ~
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.exit_scaled/__generated__/execute/14047
execute store result entity @s Air short 1 run time query gametime