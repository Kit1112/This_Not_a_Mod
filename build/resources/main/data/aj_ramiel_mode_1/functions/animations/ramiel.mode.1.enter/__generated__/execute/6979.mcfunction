#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube11,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,77.78f,-180f]
execute if score #this.aj.anim aj.i matches 134 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube11,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,77.623f,-180f]
execute if score #this.aj.anim aj.i matches 135 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube11,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,77.417f,-180f]
execute if score #this.aj.anim aj.i matches 136 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube11,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,77.136f,-180f]
execute if score #this.aj.anim aj.i matches 137 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube11,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,76.781f,-180f]
execute if score #this.aj.anim aj.i matches 138 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube11,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,76.335f,-180f]
execute if score #this.aj.anim aj.i matches 139 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube11,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,75.797f,-180f]
execute if score #this.aj.anim aj.i matches 140 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube11,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,75.118f,-180f]
execute if score #this.aj.anim aj.i matches 133 run tp @s ^0 ^0.007 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 134 run tp @s ^0 ^0.015 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 135 run tp @s ^0 ^0.022 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 136 run tp @s ^0 ^0.029 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 137 run tp @s ^0 ^0.035 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 138 run tp @s ^0 ^0.041 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 139 run tp @s ^0 ^0.045 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 140 run tp @s ^0 ^0.05 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube11,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2477}