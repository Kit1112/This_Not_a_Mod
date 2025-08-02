#built using mc-build (https://github.com/mc-build/mc-build)

data modify entity @s Pose.Head set value [114.037f,13.836f,122.368f]
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.spike10,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~