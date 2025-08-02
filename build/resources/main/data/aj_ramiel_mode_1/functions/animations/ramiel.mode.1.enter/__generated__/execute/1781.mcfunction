#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-41.029f,0f]
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-37.447f,0f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-33.927f,0f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-30.474f,0f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-26.958f,0f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-23.782f,0f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-20.55f,0f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-17.273f,0f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-14.269f,0f]
execute if score #this.aj.anim aj.i matches 80 run tp @s ^-0.022 ^1.697 ^-0.002 ~ ~
execute if score #this.aj.anim aj.i matches 81 run tp @s ^-0.022 ^1.693 ^-0.003 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^-0.022 ^1.69 ^-0.004 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^-0.021 ^1.686 ^-0.006 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-0.021 ^1.683 ^-0.007 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-0.021 ^1.681 ^-0.008 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^-0.02 ^1.679 ^-0.009 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^-0.02 ^1.677 ^-0.01 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^-0.019 ^1.676 ^-0.011 ~ ~
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:470}