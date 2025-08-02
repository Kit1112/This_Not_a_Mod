#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,39.159f,-180f]
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,35.374f,-180f]
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,31.465f,-180f]
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,27.588f,-180f]
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,23.67f,-180f]
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,19.716f,-180f]
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,15.728f,-180f]
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,11.71f,-180f]
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,7.665f,-180f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^0.022 ^-5.544 ^0.002 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^0.022 ^-5.548 ^0.004 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^0.021 ^-5.553 ^0.005 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^0.021 ^-5.557 ^0.007 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^0.021 ^-5.562 ^0.008 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^0.02 ^-5.566 ^0.009 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^0.019 ^-5.57 ^0.011 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^0.018 ^-5.574 ^0.012 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^0.018 ^-5.578 ^0.013 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:965}