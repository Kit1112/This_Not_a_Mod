#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,86.404f,0f]
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,89.508f,-180f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,85.485f,-180f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,81.285f,-180f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,77.157f,-180f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,73.023f,-180f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,68.886f,-180f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,64.749f,-180f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,60.617f,-180f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^-0.522 ^-6.37 ^0.033 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^-0.523 ^-6.373 ^-0.004 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^-0.521 ^-6.376 ^-0.041 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^-0.517 ^-6.379 ^-0.079 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^-0.51 ^-6.381 ^-0.116 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^-0.5 ^-6.383 ^-0.153 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^-0.488 ^-6.384 ^-0.188 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^-0.473 ^-6.385 ^-0.223 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^-0.456 ^-6.385 ^-0.257 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:668}