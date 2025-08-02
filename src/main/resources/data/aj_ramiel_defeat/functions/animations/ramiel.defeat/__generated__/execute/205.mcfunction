#built using mc-build (https://github.com/mc-build/mc-build)

tp @s ^1.836 ^-3.285 ^-1.875 ~ ~
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.spike4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/206
execute store result entity @s Air short 1 run time query gametime