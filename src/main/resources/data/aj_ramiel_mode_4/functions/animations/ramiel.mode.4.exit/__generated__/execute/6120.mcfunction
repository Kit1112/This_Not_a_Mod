#built using mc-build (https://github.com/mc-build/mc-build)

tp @s ^0 ^-1.918 ^-3.845 ~ ~
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6121
execute store result entity @s Air short 1 run time query gametime