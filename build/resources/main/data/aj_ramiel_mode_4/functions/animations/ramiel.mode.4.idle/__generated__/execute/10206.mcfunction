#built using mc-build (https://github.com/mc-build/mc-build)

data modify entity @s Pose.Head set value [90.005f,0.005f,-14.297f]
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~