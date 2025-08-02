#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,7.574f,0f]
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-62.447f,0f]
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-50.317f,-180f]
execute if score #this.aj.anim aj.i matches 102 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,18.058f,-180f]
execute if score #this.aj.anim aj.i matches 103 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,86.004f,-180f]
execute if score #this.aj.anim aj.i matches 104 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,26.677f,0f]
execute if score #this.aj.anim aj.i matches 105 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-39.822f,0f]
execute if score #this.aj.anim aj.i matches 99 run tp @s ^-0.019 ^-6.051 ^-0.025 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^-0.03 ^-6.059 ^0.009 ~ ~
execute if score #this.aj.anim aj.i matches 101 run tp @s ^-0.003 ^-6.066 ^0.031 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^0.028 ^-6.073 ^0.014 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^0.024 ^-6.08 ^-0.021 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^-0.01 ^-6.087 ^-0.03 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^-0.032 ^-6.094 ^-0.003 ~ ~
execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:3629}
execute if score #this.aj.anim aj.i matches 103 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:3633}
execute if score #this.aj.anim aj.i matches 105 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:3635}