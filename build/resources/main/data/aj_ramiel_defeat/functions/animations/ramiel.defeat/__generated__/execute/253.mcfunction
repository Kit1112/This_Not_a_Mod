#built using mc-build (https://github.com/mc-build/mc-build)

tp @s ^-4.731 ^-1.488 ^-2.684 ~ ~
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.spike16,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/254
execute store result entity @s Air short 1 run time query gametime