#built using mc-build (https://github.com/mc-build/mc-build)

data modify entity @s Pose.Head set value [-35.2f,44.856f,-89.954f]
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone15,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~