#built using mc-build (https://github.com/mc-build/mc-build)

data modify entity @s Pose.Head set value [36.613f,-8.429f,102.841f]
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.spike15,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~