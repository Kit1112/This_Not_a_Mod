#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 117 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-24.48f,0f]
execute if score #this.aj.anim aj.i matches 118 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-21.48f,0f]
execute if score #this.aj.anim aj.i matches 119 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-18.48f,0f]
execute if score #this.aj.anim aj.i matches 120 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-15.48f,0f]
execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-12.54f,0f]
execute if score #this.aj.anim aj.i matches 122 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-9.48f,0f]
execute if score #this.aj.anim aj.i matches 123 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-6.48f,0f]
execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-3.48f,0f]
execute if score #this.aj.anim aj.i matches 125 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-0.48f,0f]
execute if score #this.aj.anim aj.i matches 117 run tp @s ^-0.036 ^-4.539 ^-0.014 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^-0.036 ^-4.539 ^-0.016 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^-0.035 ^-4.541 ^-0.017 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^-0.034 ^-4.544 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 121 run tp @s ^-0.033 ^-4.546 ^-0.021 ~ ~
execute if score #this.aj.anim aj.i matches 122 run tp @s ^-0.032 ^-4.548 ^-0.023 ~ ~
execute if score #this.aj.anim aj.i matches 123 run tp @s ^-0.031 ^-4.547 ^-0.025 ~ ~
execute if score #this.aj.anim aj.i matches 124 run tp @s ^-0.03 ^-4.544 ^-0.027 ~ ~
execute if score #this.aj.anim aj.i matches 125 run tp @s ^-0.029 ^-4.537 ^-0.028 ~ ~
execute if score #this.aj.anim aj.i matches 117 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:945}
execute if score #this.aj.anim aj.i matches 120 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:995}
execute if score #this.aj.anim aj.i matches 123 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:998}