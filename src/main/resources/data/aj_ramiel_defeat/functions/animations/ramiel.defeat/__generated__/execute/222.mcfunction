#built using mc-build (https://github.com/mc-build/mc-build)

data modify entity @s Pose.Head set value [-9.918f,57.203f,71.282f]
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.spike8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~