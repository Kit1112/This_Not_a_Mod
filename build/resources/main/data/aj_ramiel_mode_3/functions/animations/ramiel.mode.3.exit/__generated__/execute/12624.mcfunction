#built using mc-build (https://github.com/mc-build/mc-build)

tp @s ^-6.556 ^0.495 ^-3.785 ~ ~
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12625
execute store result entity @s Air short 1 run time query gametime