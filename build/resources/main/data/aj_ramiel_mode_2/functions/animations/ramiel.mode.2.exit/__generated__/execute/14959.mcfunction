#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer6,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,4.256f,-180f]
execute if score #this.aj.anim aj.i matches 28 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer6,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-18.888f,-180f]
execute if score #this.aj.anim aj.i matches 29 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer6,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-42.032f,-180f]
execute if score #this.aj.anim aj.i matches 30 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer6,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-65.176f,-180f]
execute if score #this.aj.anim aj.i matches 31 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer6,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-88.32f,-180f]
execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer6,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-68.537f,0f]
execute if score #this.aj.anim aj.i matches 33 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer6,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-45.393f,0f]
execute if score #this.aj.anim aj.i matches 34 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer6,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-22.249f,0f]
execute if score #this.aj.anim aj.i matches 35 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer6,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,0.894f,0f]
execute if score #this.aj.anim aj.i matches 27 run tp @s ^0 ^-2.97 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^0 ^-7.624 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^0 ^-7.403 ^0.006 ~ ~
execute if score #this.aj.anim aj.i matches 30 run tp @s ^-0.004 ^-7.182 ^0.01 ~ ~
execute if score #this.aj.anim aj.i matches 31 run tp @s ^-0.011 ^-6.962 ^0.012 ~ ~
execute if score #this.aj.anim aj.i matches 32 run tp @s ^-0.02 ^-6.741 ^0.009 ~ ~
execute if score #this.aj.anim aj.i matches 33 run tp @s ^-0.027 ^-6.52 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 34 run tp @s ^-0.03 ^-6.299 ^-0.013 ~ ~
execute if score #this.aj.anim aj.i matches 35 run tp @s ^-0.026 ^-6.079 ^-0.027 ~ ~
execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer6,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:2119}
execute if score #this.aj.anim aj.i matches 28 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer6,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:2120}
execute if score #this.aj.anim aj.i matches 29 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer6,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:2121}
execute if score #this.aj.anim aj.i matches 30 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer6,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:2122}
execute if score #this.aj.anim aj.i matches 31 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer6,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:2123}
execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer6,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:2124}
execute if score #this.aj.anim aj.i matches 33 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer6,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:2125}
execute if score #this.aj.anim aj.i matches 34 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer6,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:2126}
execute if score #this.aj.anim aj.i matches 35 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer6,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:2127}