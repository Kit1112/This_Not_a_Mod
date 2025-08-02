#built using mc-build (https://github.com/mc-build/mc-build)

data modify entity @s Pose.Head set value [-0.05f,44.856f,89.954f]
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.base3,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~