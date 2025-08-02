#built using mc-build (https://github.com/mc-build/mc-build)

data modify entity @s Pose.Head set value [-84.121f,31.739f,49.576f]
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.spike2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~