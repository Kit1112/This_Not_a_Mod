#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-89.137f]
execute if score #this.aj.anim aj.i matches 1 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-65.993f]
execute if score #this.aj.anim aj.i matches 2 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-42.849f]
execute if score #this.aj.anim aj.i matches 3 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-19.705f]
execute if score #this.aj.anim aj.i matches 4 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,3.438f]
execute if score #this.aj.anim aj.i matches 5 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,26.582f]
execute if score #this.aj.anim aj.i matches 6 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,49.726f]
execute if score #this.aj.anim aj.i matches 7 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,72.869f]
execute if score #this.aj.anim aj.i matches 8 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,96.013f]
execute if score #this.aj.anim aj.i matches 0 run tp @s ^-0.046 ^-1.963 ^3.824 ~ ~
execute if score #this.aj.anim aj.i matches 1 run tp @s ^-0.06 ^-1.941 ^3.824 ~ ~
execute if score #this.aj.anim aj.i matches 2 run tp @s ^-0.064 ^-1.916 ^3.824 ~ ~
execute if score #this.aj.anim aj.i matches 3 run tp @s ^-0.058 ^-1.89 ^3.824 ~ ~
execute if score #this.aj.anim aj.i matches 4 run tp @s ^-0.043 ^-1.87 ^3.824 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^-0.02 ^-1.857 ^3.824 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^0.005 ^-1.854 ^3.824 ~ ~
execute if score #this.aj.anim aj.i matches 7 run tp @s ^0.03 ^-1.861 ^3.824 ~ ~
execute if score #this.aj.anim aj.i matches 8 run tp @s ^0.05 ^-1.877 ^3.824 ~ ~
execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer4,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:2691}