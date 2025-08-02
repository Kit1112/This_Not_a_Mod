#built using mc-build (https://github.com/mc-build/mc-build)

tp @s ^2.705 ^-0.547 ^-1.371 ~ ~
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/166
execute store result entity @s Air short 1 run time query gametime