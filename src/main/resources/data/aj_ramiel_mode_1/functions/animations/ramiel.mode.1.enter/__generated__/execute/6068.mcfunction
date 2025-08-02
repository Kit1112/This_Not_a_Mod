#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-36.21f,0f]
execute if score #this.aj.anim aj.i matches 107 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-34.74f,0f]
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-33.24f,0f]
execute if score #this.aj.anim aj.i matches 109 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-31.74f,0f]
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-30.27f,0f]
execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-28.77f,0f]
execute if score #this.aj.anim aj.i matches 112 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-27.24f,0f]
execute if score #this.aj.anim aj.i matches 113 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-25.74f,0f]
execute if score #this.aj.anim aj.i matches 114 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-24.24f,0f]
execute if score #this.aj.anim aj.i matches 106 run tp @s ^0 ^1.032 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^0 ^1.045 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^0 ^1.058 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^0 ^1.073 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^0 ^1.087 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^0 ^1.103 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^0 ^1.119 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^0 ^1.136 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 114 run tp @s ^0 ^1.153 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2104}