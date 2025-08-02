#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 135 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [145.16f,-45.539f,179.492f]
execute if score #this.aj.anim aj.i matches 136 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [145.131f,-45.501f,179.528f]
execute if score #this.aj.anim aj.i matches 137 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [145.102f,-45.463f,179.565f]
execute if score #this.aj.anim aj.i matches 138 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [145.075f,-45.428f,179.598f]
execute if score #this.aj.anim aj.i matches 139 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [145.049f,-45.392f,179.632f]
execute if score #this.aj.anim aj.i matches 140 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [145.023f,-45.358f,179.664f]
execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.999f,-45.327f,179.694f]
execute if score #this.aj.anim aj.i matches 142 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.975f,-45.296f,179.724f]
execute if score #this.aj.anim aj.i matches 143 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.952f,-45.265f,179.752f]
execute if score #this.aj.anim aj.i matches 144 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.931f,-45.237f,179.779f]
execute if score #this.aj.anim aj.i matches 135 run tp @s ^0.235 ^-1.412 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 136 run tp @s ^0.235 ^-1.41 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 137 run tp @s ^0.235 ^-1.408 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 138 run tp @s ^0.235 ^-1.406 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 139 run tp @s ^0.235 ^-1.405 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 140 run tp @s ^0.235 ^-1.403 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 141 run tp @s ^0.235 ^-1.401 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 142 run tp @s ^0.235 ^-1.4 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 143 run tp @s ^0.235 ^-1.398 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 144 run tp @s ^0.235 ^-1.397 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 135 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:244}
execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:241}