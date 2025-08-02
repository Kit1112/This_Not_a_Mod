#built using mc-build (https://github.com/mc-build/mc-build)

tp @s ^-2.81 ^-0.922 ^-0.996 ~ ~
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/186
execute store result entity @s Air short 1 run time query gametime