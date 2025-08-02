#built using mc-build (https://github.com/mc-build/mc-build)

data modify entity @s Pose.Head set value [90f,0f,45f]
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~