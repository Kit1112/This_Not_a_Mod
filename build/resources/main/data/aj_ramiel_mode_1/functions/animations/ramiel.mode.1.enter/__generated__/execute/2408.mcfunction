#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,71.617f,180f]
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,75.835f,-180f]
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,79.965f,-180f]
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,84.086f,-180f]
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,88.114f,-180f]
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,87.71f,0f]
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,83.716f,0f]
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,79.582f,0f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^-0.496 ^-6.383 ^-0.165 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^-0.507 ^-6.382 ^-0.128 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^-0.515 ^-6.379 ^-0.091 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^-0.52 ^-6.377 ^-0.054 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^-0.523 ^-6.374 ^-0.017 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^-0.523 ^-6.371 ^0.021 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^-0.52 ^-6.367 ^0.057 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^-0.514 ^-6.363 ^0.095 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:668}