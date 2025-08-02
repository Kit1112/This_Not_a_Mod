#built using mc-build (https://github.com/mc-build/mc-build)

data modify entity @s Pose.Head set value [180f,-0.12f,-180f]
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~