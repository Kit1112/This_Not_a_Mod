#built using mc-build (https://github.com/mc-build/mc-build)

data modify entity @s Pose.Head set value [-30.699f,8.411f,-104.528f]
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.spike12,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~