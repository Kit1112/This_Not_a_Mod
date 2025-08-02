#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer6,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-7.686f,0f]
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer6,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-16.64f,0f]
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer6,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-26.584f,0f]
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer6,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-36.349f,0f]
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer6,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-47.856f,0f]
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer6,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-59.876f,0f]
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer6,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-73.746f,0f]
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer6,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-87.941f,0f]
execute if score #this.aj.anim aj.i matches 61 run tp @s ^-0.047 ^-7.122 ^-0.036 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^-0.052 ^-7.127 ^-0.028 ~ ~
execute if score #this.aj.anim aj.i matches 63 run tp @s ^-0.056 ^-7.133 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^-0.058 ^-7.139 ^-0.009 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^-0.059 ^-7.145 ^0.003 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^-0.057 ^-7.152 ^0.015 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^-0.052 ^-7.159 ^0.028 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^-0.043 ^-7.166 ^0.04 ~ ~
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer6,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:2045}
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer6,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:2050}