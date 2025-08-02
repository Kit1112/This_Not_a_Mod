#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 45 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,85.2f,0f]
execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,87.043f,0f]
execute if score #this.aj.anim aj.i matches 47 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,89.551f,0f]
execute if score #this.aj.anim aj.i matches 48 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,87.883f,180f]
execute if score #this.aj.anim aj.i matches 49 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,85.269f,180f]
execute if score #this.aj.anim aj.i matches 50 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,82.449f,180f]
execute if score #this.aj.anim aj.i matches 51 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,79.645f,180f]
execute if score #this.aj.anim aj.i matches 52 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,76.635f,-180f]
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,73.594f,-180f]
execute if score #this.aj.anim aj.i matches 45 run tp @s ^-0.475 ^-6.355 ^0.04 ~ ~
execute if score #this.aj.anim aj.i matches 46 run tp @s ^-0.476 ^-6.352 ^0.025 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^-0.476 ^-6.35 ^0.004 ~ ~
execute if score #this.aj.anim aj.i matches 48 run tp @s ^-0.476 ^-6.348 ^-0.018 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^-0.475 ^-6.346 ^-0.039 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^-0.472 ^-6.346 ^-0.063 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^-0.468 ^-6.346 ^-0.086 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^-0.463 ^-6.346 ^-0.11 ~ ~
execute if score #this.aj.anim aj.i matches 53 run tp @s ^-0.457 ^-6.347 ^-0.135 ~ ~
execute if score #this.aj.anim aj.i matches 45 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:569}