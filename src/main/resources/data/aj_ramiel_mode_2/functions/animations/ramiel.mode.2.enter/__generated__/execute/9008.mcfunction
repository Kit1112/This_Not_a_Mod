#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,84.101f,0f]
execute if score #this.aj.anim aj.i matches 47 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,77.78f,0f]
execute if score #this.aj.anim aj.i matches 48 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,71.699f,0f]
execute if score #this.aj.anim aj.i matches 49 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,65.916f,0f]
execute if score #this.aj.anim aj.i matches 50 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,60.246f,0f]
execute if score #this.aj.anim aj.i matches 51 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,54.835f,0f]
execute if score #this.aj.anim aj.i matches 52 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,49.6f,0f]
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,44.148f,0f]
execute if score #this.aj.anim aj.i matches 46 run tp @s ^0.018 ^-5.776 ^-0.022 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^0.016 ^-5.785 ^-0.025 ~ ~
execute if score #this.aj.anim aj.i matches 48 run tp @s ^0.013 ^-5.785 ^-0.026 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^0.01 ^-5.785 ^-0.027 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^0.008 ^-5.785 ^-0.028 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^0.005 ^-5.785 ^-0.029 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^0.002 ^-5.785 ^-0.029 ~ ~
execute if score #this.aj.anim aj.i matches 53 run tp @s ^0 ^-5.785 ^-0.029 ~ ~
execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:3588}
execute if score #this.aj.anim aj.i matches 47 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:3589}