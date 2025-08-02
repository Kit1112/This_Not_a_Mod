#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0..6 run function aj_ramiel_statue:animations/statue/__generated__/execute/162
execute if score #this.aj.anim aj.i matches 7..12 run function aj_ramiel_statue:animations/statue/__generated__/execute/167
execute as @e[type=armor_stand,tag=aj.ramiel_statue.base,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~
execute store result entity @s Air short 1 run time query gametime