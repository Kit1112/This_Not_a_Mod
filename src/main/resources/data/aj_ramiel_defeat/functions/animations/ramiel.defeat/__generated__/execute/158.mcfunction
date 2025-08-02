#built using mc-build (https://github.com/mc-build/mc-build)

data modify entity @s Pose.Head set value [-34.212f,-44.427f,88.414f]
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~