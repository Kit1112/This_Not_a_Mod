#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer8,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,38.721f,90f]
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer8,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,33.139f,90f]
execute if score #this.aj.anim aj.i matches 56 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer8,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,27.325f,90f]
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer8,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,21.331f,90f]
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer8,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,14.567f,90f]
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer8,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,7.741f,90f]
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer8,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,0.403f,90f]
execute if score #this.aj.anim aj.i matches 54 run tp @s ^3.867 ^-1.915 ^-0.029 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^3.867 ^-1.912 ^-0.029 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^3.867 ^-1.909 ^-0.028 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^3.867 ^-1.906 ^-0.027 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^3.867 ^-1.903 ^-0.025 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^3.867 ^-1.9 ^-0.023 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^3.87 ^-1.897 ^-0.021 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer8,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:3145}