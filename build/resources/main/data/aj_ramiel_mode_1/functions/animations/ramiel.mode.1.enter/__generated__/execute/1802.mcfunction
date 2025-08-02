#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-11.348f,0f]
execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-8.457f,0f]
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-5.66f,0f]
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-2.907f,0f]
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-0.361f,0f]
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,2.134f,0f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,4.474f,0f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,6.797f,0f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,8.959f,0f]
execute if score #this.aj.anim aj.i matches 89 run tp @s ^-0.018 ^1.675 ^-0.012 ~ ~
execute if score #this.aj.anim aj.i matches 90 run tp @s ^-0.018 ^1.675 ^-0.013 ~ ~
execute if score #this.aj.anim aj.i matches 91 run tp @s ^-0.017 ^1.675 ^-0.014 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^-0.016 ^1.676 ^-0.015 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^-0.016 ^1.678 ^-0.015 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^-0.015 ^1.681 ^-0.016 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^-0.014 ^1.684 ^-0.017 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^-0.014 ^1.688 ^-0.017 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^-0.013 ^1.693 ^-0.018 ~ ~
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:470}