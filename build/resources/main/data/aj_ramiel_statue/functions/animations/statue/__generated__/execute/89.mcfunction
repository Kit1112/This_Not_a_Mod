#built using mc-build (https://github.com/mc-build/mc-build)

tp @s ^-0.996 ^-4.809 ^-0.996 ~ ~
execute as @e[type=armor_stand,tag=aj.ramiel_statue.bone8,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_statue:animations/statue/__generated__/execute/90
execute store result entity @s Air short 1 run time query gametime