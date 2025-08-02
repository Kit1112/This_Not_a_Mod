#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-71.617f,-180f]
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-75.835f,-180f]
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-79.965f,-180f]
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-84.086f,-180f]
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-88.114f,-180f]
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-87.71f,0f]
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-83.716f,0f]
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-79.582f,0f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^-0.01 ^1.759 ^0.02 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^-0.011 ^1.758 ^0.019 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^-0.013 ^1.755 ^0.018 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^-0.014 ^1.753 ^0.017 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^-0.015 ^1.75 ^0.016 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^-0.016 ^1.747 ^0.015 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^-0.017 ^1.743 ^0.014 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^-0.018 ^1.739 ^0.013 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:470}