#built using mc-build (https://github.com/mc-build/mc-build)

data modify entity @s Pose.Head set value [35.226f,45.043f,-0.04f]
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone5,distance=..21] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~