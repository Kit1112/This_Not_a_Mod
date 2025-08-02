#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-89.137f,0f]
execute if score #this.aj.anim aj.i matches 1 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-65.993f,0f]
execute if score #this.aj.anim aj.i matches 2 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-42.849f,0f]
execute if score #this.aj.anim aj.i matches 3 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-19.705f,0f]
execute if score #this.aj.anim aj.i matches 4 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,3.438f,0f]
execute if score #this.aj.anim aj.i matches 5 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,26.582f,0f]
execute if score #this.aj.anim aj.i matches 6 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,49.726f,0f]
execute if score #this.aj.anim aj.i matches 7 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,72.869f,0f]
execute if score #this.aj.anim aj.i matches 8 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,83.987f,-180f]
execute if score #this.aj.anim aj.i matches 0 run tp @s ^-0.023 ^-6.172 ^0.022 ~ ~
execute if score #this.aj.anim aj.i matches 1 run tp @s ^-0.03 ^-6.172 ^0.012 ~ ~
execute if score #this.aj.anim aj.i matches 2 run tp @s ^-0.032 ^-6.172 ^-0.001 ~ ~
execute if score #this.aj.anim aj.i matches 3 run tp @s ^-0.029 ^-6.172 ^-0.014 ~ ~
execute if score #this.aj.anim aj.i matches 4 run tp @s ^-0.021 ^-6.172 ^-0.024 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^-0.01 ^-6.172 ^-0.031 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^0.003 ^-6.172 ^-0.032 ~ ~
execute if score #this.aj.anim aj.i matches 7 run tp @s ^0.015 ^-6.172 ^-0.028 ~ ~
execute if score #this.aj.anim aj.i matches 8 run tp @s ^0.025 ^-6.172 ^-0.02 ~ ~
execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:3650}