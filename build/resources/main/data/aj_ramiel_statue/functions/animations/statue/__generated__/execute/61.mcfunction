#built using mc-build (https://github.com/mc-build/mc-build)

tp @s ^1.233 ^0.826 ^1.233 ~ ~
execute as @e[type=armor_stand,tag=aj.ramiel_statue.bone2,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_statue:animations/statue/__generated__/execute/62
execute store result entity @s Air short 1 run time query gametime