#built using mc-build (https://github.com/mc-build/mc-build)

data modify entity @s Pose.Head set value [-59.985f,-54.32f,-44.985f]
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.spike11,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~