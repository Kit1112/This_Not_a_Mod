#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.863f,-47.869f,177.034f]
execute if score #this.aj.anim aj.i matches 43 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.902f,-47.924f,176.97f]
execute if score #this.aj.anim aj.i matches 44 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.937f,-47.975f,176.911f]
execute if score #this.aj.anim aj.i matches 45 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.971f,-48.023f,176.854f]
execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.997f,-48.06f,176.811f]
execute if score #this.aj.anim aj.i matches 47 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [147.028f,-48.104f,176.759f]
execute if score #this.aj.anim aj.i matches 48 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [147.056f,-48.144f,176.71f]
execute if score #this.aj.anim aj.i matches 49 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [147.081f,-48.18f,176.668f]
execute if score #this.aj.anim aj.i matches 50 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [147.105f,-48.214f,176.627f]
execute if score #this.aj.anim aj.i matches 51 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [147.127f,-48.246f,176.589f]
execute if score #this.aj.anim aj.i matches 52 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [147.147f,-48.275f,176.554f]
execute if score #this.aj.anim aj.i matches 42 run tp @s ^0.235 ^-1.519 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^0.235 ^-1.522 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^0.235 ^-1.524 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 45 run tp @s ^0.235 ^-1.526 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 46 run tp @s ^0.235 ^-1.528 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^0.235 ^-1.53 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 48 run tp @s ^0.235 ^-1.531 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^0.235 ^-1.533 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^0.235 ^-1.534 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^0.235 ^-1.536 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^0.235 ^-1.537 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:264}