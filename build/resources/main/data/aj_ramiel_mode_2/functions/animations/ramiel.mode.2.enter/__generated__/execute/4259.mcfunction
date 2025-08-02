#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,5.381f,-90f]
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,68.536f,-90f]
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,46.723f,90f]
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-15.474f,90f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-81.373f,90f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-30.441f,-90f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,37.159f,-90f]
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,76.064f,90f]
execute if score #this.aj.anim aj.i matches 91 run tp @s ^5.469 ^-1.966 ^0.039 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^5.48 ^-1.975 ^-0.025 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^5.491 ^-1.92 ^-0.062 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^5.501 ^-1.864 ^-0.031 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^5.512 ^-1.868 ^0.037 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^5.522 ^-1.934 ^0.06 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^5.533 ^-1.98 ^0.009 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^5.543 ^-1.95 ^-0.054 ~ ~
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1492}
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1496}