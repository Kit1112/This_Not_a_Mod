#built using mc-build (https://github.com/mc-build/mc-build)

data modify entity @s Pose.Head set value [35.25f,89.88f,0f]
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~