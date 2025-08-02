#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,45f,0f]
execute if score #this.aj.anim aj.i matches 12 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,40.793f,0f]
execute if score #this.aj.anim aj.i matches 13 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,36.748f,0f]
execute if score #this.aj.anim aj.i matches 14 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,32.703f,0f]
execute if score #this.aj.anim aj.i matches 15 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,28.658f,0f]
execute if score #this.aj.anim aj.i matches 16 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,24.613f,0f]
execute if score #this.aj.anim aj.i matches 17 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,20.569f,0f]
execute if score #this.aj.anim aj.i matches 9..11 run tp @s ^0 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 12 run tp @s ^0 ^-1.955 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 13 run tp @s ^0 ^-1.994 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 14 run tp @s ^0 ^-2.038 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 15 run tp @s ^0 ^-2.085 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 16 run tp @s ^0 ^-2.138 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^0 ^-2.195 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1016}
execute if score #this.aj.anim aj.i matches 12 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1017}
execute if score #this.aj.anim aj.i matches 13 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1018}
execute if score #this.aj.anim aj.i matches 14 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1019}
execute if score #this.aj.anim aj.i matches 15 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1020}
execute if score #this.aj.anim aj.i matches 16 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1021}
execute if score #this.aj.anim aj.i matches 17 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1022}