#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,78.652f,-180f]
execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,81.543f,-180f]
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,84.34f,-180f]
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,87.093f,-180f]
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,89.639f,-180f]
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,87.866f,0f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,85.526f,0f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,83.203f,0f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,81.041f,0f]
execute if score #this.aj.anim aj.i matches 89 run tp @s ^0.018 ^-5.511 ^-0.012 ~ ~
execute if score #this.aj.anim aj.i matches 90 run tp @s ^0.018 ^-5.511 ^-0.013 ~ ~
execute if score #this.aj.anim aj.i matches 91 run tp @s ^0.017 ^-5.511 ^-0.014 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^0.016 ^-5.512 ^-0.015 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^0.016 ^-5.514 ^-0.015 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^0.015 ^-5.517 ^-0.016 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^0.014 ^-5.52 ^-0.017 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^0.014 ^-5.524 ^-0.017 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^0.013 ^-5.529 ^-0.018 ~ ~
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:965}