#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 104 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.281f,-47.055f,177.946f]
execute if score #this.aj.anim aj.i matches 105 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.243f,-47.002f,178.003f]
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.204f,-46.949f,178.06f]
execute if score #this.aj.anim aj.i matches 107 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.167f,-46.897f,178.115f]
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.129f,-46.846f,178.171f]
execute if score #this.aj.anim aj.i matches 109 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.09f,-46.792f,178.228f]
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.051f,-46.739f,178.284f]
execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.013f,-46.686f,178.339f]
execute if score #this.aj.anim aj.i matches 112 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [145.975f,-46.634f,178.394f]
execute if score #this.aj.anim aj.i matches 113 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [145.935f,-46.58f,178.45f]
execute if score #this.aj.anim aj.i matches 104 run tp @s ^0.235 ^-1.482 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^0.235 ^-1.48 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 106 run tp @s ^0.235 ^-1.478 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^0.235 ^-1.475 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^0.235 ^-1.473 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^0.235 ^-1.47 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^0.235 ^-1.468 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^0.235 ^-1.466 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^0.235 ^-1.463 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^0.235 ^-1.461 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 104 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:255}
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:249}