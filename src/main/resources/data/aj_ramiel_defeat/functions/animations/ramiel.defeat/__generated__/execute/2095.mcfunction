#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0..71 run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/2096
execute if score #this.aj.anim aj.i matches 72..142 run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/2197
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~
execute store result entity @s Air short 1 run time query gametime