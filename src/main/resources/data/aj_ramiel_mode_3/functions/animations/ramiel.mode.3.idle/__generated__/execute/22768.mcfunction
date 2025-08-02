#built using mc-build (https://github.com/mc-build/mc-build)

data modify entity @s Pose.Head set value [0f,30f,0f]
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.up2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~