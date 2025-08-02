#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-41.029f,-180f]
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-37.447f,-180f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-33.927f,-180f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-30.474f,-180f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-26.958f,180f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-23.782f,-180f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-20.55f,180f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-17.273f,-180f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-14.269f,-180f]
execute if score #this.aj.anim aj.i matches 80 run tp @s ^0.277 ^-6.4 ^-0.319 ~ ~
execute if score #this.aj.anim aj.i matches 81 run tp @s ^0.257 ^-6.396 ^-0.335 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^0.236 ^-6.393 ^-0.351 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^0.214 ^-6.39 ^-0.364 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^0.192 ^-6.387 ^-0.377 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^0.17 ^-6.384 ^-0.387 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^0.148 ^-6.382 ^-0.396 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^0.125 ^-6.38 ^-0.403 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^0.104 ^-6.379 ^-0.409 ~ ~
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:866}