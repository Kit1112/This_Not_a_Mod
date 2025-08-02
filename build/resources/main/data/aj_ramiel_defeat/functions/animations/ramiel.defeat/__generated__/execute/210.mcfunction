#built using mc-build (https://github.com/mc-build/mc-build)

data modify entity @s Pose.Head set value [13.546f,0.07f,73.928f]
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.spike5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~