#built using mc-build (https://github.com/mc-build/mc-build)

data modify entity @s Pose.Head set value [112.208f,20.705f,49.107f]
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~