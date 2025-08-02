#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 126 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,2.52f,0f]
execute if score #this.aj.anim aj.i matches 127 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,5.46f,0f]
execute if score #this.aj.anim aj.i matches 128 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,8.46f,0f]
execute if score #this.aj.anim aj.i matches 129 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,11.52f,0f]
execute if score #this.aj.anim aj.i matches 130 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,14.52f,0f]
execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,17.52f,0f]
execute if score #this.aj.anim aj.i matches 132 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,20.46f,0f]
execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,23.52f,0f]
execute if score #this.aj.anim aj.i matches 134 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,26.52f,0f]
execute if score #this.aj.anim aj.i matches 126 run tp @s ^-0.027 ^-4.525 ^-0.03 ~ ~
execute if score #this.aj.anim aj.i matches 127 run tp @s ^-0.026 ^-4.508 ^-0.032 ~ ~
execute if score #this.aj.anim aj.i matches 128 run tp @s ^-0.025 ^-4.485 ^-0.033 ~ ~
execute if score #this.aj.anim aj.i matches 129 run tp @s ^-0.023 ^-4.454 ^-0.035 ~ ~
execute if score #this.aj.anim aj.i matches 130 run tp @s ^-0.022 ^-4.416 ^-0.037 ~ ~
execute if score #this.aj.anim aj.i matches 131 run tp @s ^-0.02 ^-4.368 ^-0.038 ~ ~
execute if score #this.aj.anim aj.i matches 132 run tp @s ^-0.018 ^-4.312 ^-0.04 ~ ~
execute if score #this.aj.anim aj.i matches 133 run tp @s ^-0.017 ^-4.126 ^-0.043 ~ ~
execute if score #this.aj.anim aj.i matches 134 run tp @s ^-0.016 ^-3.845 ^-0.047 ~ ~
execute if score #this.aj.anim aj.i matches 126 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1001}
execute if score #this.aj.anim aj.i matches 127 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:944}
execute if score #this.aj.anim aj.i matches 129 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1004}
execute if score #this.aj.anim aj.i matches 130 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1005}
execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1006}
execute if score #this.aj.anim aj.i matches 132 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1007}
execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:942}
execute if score #this.aj.anim aj.i matches 134 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1009}