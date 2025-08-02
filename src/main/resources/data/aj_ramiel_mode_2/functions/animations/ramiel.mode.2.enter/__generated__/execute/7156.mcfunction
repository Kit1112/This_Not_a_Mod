#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer8,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,5.381f,-90f]
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer8,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,68.536f,-90f]
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer8,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,46.723f,90f]
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer8,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-15.474f,90f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer8,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-81.373f,90f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer8,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-30.441f,-90f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer8,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,37.159f,-90f]
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer8,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,76.064f,90f]
execute if score #this.aj.anim aj.i matches 91 run tp @s ^4.071 ^-1.942 ^0.02 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^4.079 ^-1.946 ^-0.012 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^4.087 ^-1.919 ^-0.031 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^4.095 ^-1.891 ^-0.015 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^4.103 ^-1.893 ^0.018 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^4.111 ^-1.926 ^0.03 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^4.118 ^-1.949 ^0.004 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^4.126 ^-1.934 ^-0.027 ~ ~
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer8,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:3177}
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer8,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:3181}
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer8,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:3183}