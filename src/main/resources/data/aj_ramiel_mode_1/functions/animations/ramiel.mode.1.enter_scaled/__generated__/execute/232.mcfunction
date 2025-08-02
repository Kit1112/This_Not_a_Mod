#built using mc-build (https://github.com/mc-build/mc-build)

tp @s ^0.004 ^1.058 ^-2.136 ~ ~
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.enter_scaled/__generated__/execute/233
execute store result entity @s Air short 1 run time query gametime