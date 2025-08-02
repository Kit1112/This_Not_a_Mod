#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer3,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-90f,0f,-174.619f]
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer3,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-90f,0f,-111.464f]
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer3,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-90f,0f,-46.723f]
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer3,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-90f,0f,15.474f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer3,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-90f,0f,81.373f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer3,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-90f,0f,149.559f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer3,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-90f,0f,-142.841f]
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer3,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-90f,0f,-76.064f]
execute if score #this.aj.anim aj.i matches 91 run tp @s ^0.048 ^-1.879 ^-3.619 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^0.057 ^-1.943 ^-3.626 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^0.002 ^-1.98 ^-3.633 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^-0.054 ^-1.949 ^-3.64 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^-0.05 ^-1.881 ^-3.647 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^0.016 ^-1.858 ^-3.654 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^0.062 ^-1.909 ^-3.661 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^0.032 ^-1.972 ^-3.667 ~ ~
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer3,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:2369}
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer3,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:2373}