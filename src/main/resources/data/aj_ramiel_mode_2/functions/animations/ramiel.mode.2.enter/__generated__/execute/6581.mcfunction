#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer7,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-7.686f,-90f]
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer7,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-16.64f,-90f]
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer7,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-26.584f,-90f]
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer7,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-36.349f,-90f]
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer7,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-47.856f,-90f]
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer7,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-59.876f,-90f]
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer7,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-73.746f,-90f]
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer7,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-87.941f,-90f]
execute if score #this.aj.anim aj.i matches 61 run tp @s ^-3.874 ^-1.941 ^-0.018 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^-3.877 ^-1.944 ^-0.014 ~ ~
execute if score #this.aj.anim aj.i matches 63 run tp @s ^-3.882 ^-1.946 ^-0.009 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^-3.886 ^-1.947 ^-0.004 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^-3.891 ^-1.947 ^0.001 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^-3.896 ^-1.947 ^0.008 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^-3.901 ^-1.944 ^0.014 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^-3.906 ^-1.94 ^0.02 ~ ~
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer7,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:2921}
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer7,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:2926}