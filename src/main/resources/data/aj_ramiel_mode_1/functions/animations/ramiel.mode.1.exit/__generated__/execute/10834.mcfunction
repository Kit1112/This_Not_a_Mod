#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 45 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,85.2f,0f]
execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,87.043f,0f]
execute if score #this.aj.anim aj.i matches 47 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,89.551f,0f]
execute if score #this.aj.anim aj.i matches 48 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,87.883f,-180f]
execute if score #this.aj.anim aj.i matches 49 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,85.269f,-180f]
execute if score #this.aj.anim aj.i matches 50 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,82.449f,-180f]
execute if score #this.aj.anim aj.i matches 51 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,79.645f,-180f]
execute if score #this.aj.anim aj.i matches 52 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,76.635f,-180f]
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,73.594f,-180f]
execute if score #this.aj.anim aj.i matches 45 run tp @s ^0.014 ^-5.52 ^-0.017 ~ ~
execute if score #this.aj.anim aj.i matches 46 run tp @s ^0.015 ^-5.518 ^-0.016 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^0.015 ^-5.515 ^-0.016 ~ ~
execute if score #this.aj.anim aj.i matches 48 run tp @s ^0.016 ^-5.513 ^-0.015 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^0.017 ^-5.512 ^-0.014 ~ ~
execute if score #this.aj.anim aj.i matches 50..51 run tp @s ^0.018 ^-5.511 ^-0.013 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^0.019 ^-5.511 ^-0.012 ~ ~
execute if score #this.aj.anim aj.i matches 53 run tp @s ^0.019 ^-5.512 ^-0.011 ~ ~
execute if score #this.aj.anim aj.i matches 45 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:965}