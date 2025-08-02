#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,38.721f]
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,33.139f]
execute if score #this.aj.anim aj.i matches 56 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,27.325f]
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,21.331f]
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,14.567f]
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,7.741f]
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,0.403f]
execute if score #this.aj.anim aj.i matches 54 run tp @s ^-0.006 ^-1.86 ^3.477 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^-0.012 ^-1.861 ^3.477 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^-0.018 ^-1.862 ^3.477 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^-0.024 ^-1.864 ^3.477 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^-0.03 ^-1.867 ^3.477 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^-0.035 ^-1.871 ^3.477 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^-0.041 ^-1.876 ^3.479 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer4,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:2630}