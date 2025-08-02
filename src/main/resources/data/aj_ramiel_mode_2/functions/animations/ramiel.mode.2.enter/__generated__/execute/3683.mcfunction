#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,38.721f,-90f]
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,33.139f,-90f]
execute if score #this.aj.anim aj.i matches 56 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,27.325f,-90f]
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,21.331f,-90f]
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,14.567f,-90f]
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,7.741f,-90f]
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,0.403f,-90f]
execute if score #this.aj.anim aj.i matches 54 run tp @s ^-5.195 ^-1.924 ^-0.058 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^-5.195 ^-1.93 ^-0.057 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^-5.195 ^-1.936 ^-0.056 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^-5.195 ^-1.942 ^-0.054 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^-5.195 ^-1.948 ^-0.051 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^-5.195 ^-1.953 ^-0.047 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^-5.199 ^-1.959 ^-0.042 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1167}