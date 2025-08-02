#built using mc-build (https://github.com/mc-build/mc-build)

data modify entity @s Pose.Head set value [-35.862f,45.978f,89.431f]
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~