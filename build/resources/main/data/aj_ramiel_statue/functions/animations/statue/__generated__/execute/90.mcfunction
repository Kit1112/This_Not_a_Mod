#built using mc-build (https://github.com/mc-build/mc-build)

data modify entity @s Pose.Head set value [-144.75f,45f,-180f]
execute as @e[type=armor_stand,tag=aj.ramiel_statue.bone8,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~