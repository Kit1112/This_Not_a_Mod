#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 135 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,60.48f,0f]
execute if score #this.aj.anim aj.i matches 136 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,57.54f,0f]
execute if score #this.aj.anim aj.i matches 137 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,54.48f,0f]
execute if score #this.aj.anim aj.i matches 138 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,51.48f,0f]
execute if score #this.aj.anim aj.i matches 139 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,48.48f,0f]
execute if score #this.aj.anim aj.i matches 140 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,45.48f,0f]
execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,45f,0f]
execute if score #this.aj.anim aj.i matches 135 run tp @s ^0.014 ^-0.325 ^-0.052 ~ ~
execute if score #this.aj.anim aj.i matches 136 run tp @s ^0.013 ^-0.68 ^-0.057 ~ ~
execute if score #this.aj.anim aj.i matches 137 run tp @s ^0.01 ^-1.051 ^-0.062 ~ ~
execute if score #this.aj.anim aj.i matches 138 run tp @s ^0.008 ^-1.391 ^-0.067 ~ ~
execute if score #this.aj.anim aj.i matches 139 run tp @s ^0.004 ^-1.68 ^-0.07 ~ ~
execute if score #this.aj.anim aj.i matches 140 run tp @s ^0.001 ^-1.893 ^-0.073 ~ ~
execute if score #this.aj.anim aj.i matches 141..142 run tp @s ^0 ^-1.918 ^-0.074 ~ ~
execute if score #this.aj.anim aj.i matches 135 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:515}
execute if score #this.aj.anim aj.i matches 136 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:516}
execute if score #this.aj.anim aj.i matches 137 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:517}
execute if score #this.aj.anim aj.i matches 138 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:438}
execute if score #this.aj.anim aj.i matches 139 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:433}
execute if score #this.aj.anim aj.i matches 140 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:422}