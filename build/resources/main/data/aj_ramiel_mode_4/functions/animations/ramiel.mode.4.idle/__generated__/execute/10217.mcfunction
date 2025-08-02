#built using mc-build (https://github.com/mc-build/mc-build)

tp @s ^-4.911 ^-4.613 ^-7.295 ~ ~
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10218
execute store result entity @s Air short 1 run time query gametime