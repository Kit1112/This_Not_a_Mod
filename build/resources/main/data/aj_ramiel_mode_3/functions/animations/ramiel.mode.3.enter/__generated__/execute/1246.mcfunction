#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.35f,-47.15f,177.843f]
execute if score #this.aj.anim aj.i matches 33 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.411f,-47.235f,177.749f]
execute if score #this.aj.anim aj.i matches 34 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.474f,-47.322f,177.654f]
execute if score #this.aj.anim aj.i matches 35 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.529f,-47.399f,177.568f]
execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.584f,-47.476f,177.482f]
execute if score #this.aj.anim aj.i matches 37 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.636f,-47.548f,177.401f]
execute if score #this.aj.anim aj.i matches 38 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.686f,-47.619f,177.321f]
execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.734f,-47.687f,177.243f]
execute if score #this.aj.anim aj.i matches 40 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.78f,-47.751f,177.17f]
execute if score #this.aj.anim aj.i matches 41 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.822f,-47.811f,177.101f]
execute if score #this.aj.anim aj.i matches 32 run tp @s ^0.235 ^-1.487 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 33 run tp @s ^0.235 ^-1.491 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 34 run tp @s ^0.235 ^-1.495 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 35 run tp @s ^0.235 ^-1.498 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 36 run tp @s ^0.235 ^-1.502 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 37 run tp @s ^0.235 ^-1.505 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 38 run tp @s ^0.235 ^-1.508 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 39 run tp @s ^0.235 ^-1.511 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 40 run tp @s ^0.235 ^-1.514 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^0.235 ^-1.517 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:255}
execute if score #this.aj.anim aj.i matches 33 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:260}
execute if score #this.aj.anim aj.i matches 37 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:264}