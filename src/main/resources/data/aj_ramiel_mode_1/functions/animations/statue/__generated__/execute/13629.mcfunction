#built using mc-build (https://github.com/mc-build/mc-build)

tp @s ^-1.744 ^0.826 ^0 ~ ~
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13630
execute store result entity @s Air short 1 run time query gametime