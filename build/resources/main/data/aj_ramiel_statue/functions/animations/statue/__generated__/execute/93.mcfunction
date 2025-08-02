#built using mc-build (https://github.com/mc-build/mc-build)

tp @s ^0 ^-1.918 ^-0.074 ~ ~
execute as @e[type=armor_stand,tag=aj.ramiel_statue.base2,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_statue:animations/statue/__generated__/execute/94
execute store result entity @s Air short 1 run time query gametime