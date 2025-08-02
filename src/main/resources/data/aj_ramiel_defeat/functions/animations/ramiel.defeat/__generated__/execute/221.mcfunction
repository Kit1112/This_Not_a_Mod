#built using mc-build (https://github.com/mc-build/mc-build)

tp @s ^3.281 ^0.623 ^2.067 ~ ~
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.spike8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/222
execute store result entity @s Air short 1 run time query gametime