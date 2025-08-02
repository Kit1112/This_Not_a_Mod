#built using mc-build (https://github.com/mc-build/mc-build)

data modify entity @s Pose.Head set value [-180f,-60f,180f]
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.up9,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~