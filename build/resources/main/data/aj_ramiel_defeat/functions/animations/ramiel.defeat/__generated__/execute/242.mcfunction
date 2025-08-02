#built using mc-build (https://github.com/mc-build/mc-build)

data modify entity @s Pose.Head set value [-167.175f,48.714f,100.779f]
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.spike13,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~