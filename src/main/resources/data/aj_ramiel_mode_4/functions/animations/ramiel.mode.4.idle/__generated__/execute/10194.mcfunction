#built using mc-build (https://github.com/mc-build/mc-build)

data modify entity @s Pose.Head set value [90.007f,-0.002f,45.703f]
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.innerspike,distance=..21] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~