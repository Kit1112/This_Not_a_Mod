#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,38.721f,0f]
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,33.139f,0f]
execute if score #this.aj.anim aj.i matches 56 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,27.325f,0f]
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,21.331f,0f]
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,14.567f,0f]
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,7.741f,0f]
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,0.403f,0f]
execute if score #this.aj.anim aj.i matches 54 run tp @s ^-0.003 ^-5.785 ^-0.029 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^-0.006 ^-5.785 ^-0.029 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^-0.009 ^-5.785 ^-0.028 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^-0.012 ^-5.785 ^-0.027 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^-0.015 ^-5.785 ^-0.025 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^-0.018 ^-5.785 ^-0.023 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^-0.021 ^-5.788 ^-0.021 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:3589}