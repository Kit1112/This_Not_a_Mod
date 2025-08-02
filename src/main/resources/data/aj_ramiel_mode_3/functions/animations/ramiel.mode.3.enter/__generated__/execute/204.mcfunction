#built using mc-build (https://github.com/mc-build/mc-build)

data modify entity @s Pose.Head set value [-35.278f,44.948f,-0.048f]
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~