#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 135 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.949f,-45.539f,0.51f]
execute if score #this.aj.anim aj.i matches 136 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.971f,-45.501f,0.473f]
execute if score #this.aj.anim aj.i matches 137 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.993f,-45.463f,0.437f]
execute if score #this.aj.anim aj.i matches 138 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.013f,-45.428f,0.403f]
execute if score #this.aj.anim aj.i matches 139 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.033f,-45.392f,0.369f]
execute if score #this.aj.anim aj.i matches 140 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.052f,-45.358f,0.337f]
execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.07f,-45.327f,0.306f]
execute if score #this.aj.anim aj.i matches 142 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.087f,-45.296f,0.277f]
execute if score #this.aj.anim aj.i matches 143 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.104f,-45.265f,0.248f]
execute if score #this.aj.anim aj.i matches 144 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.12f,-45.237f,0.222f]
execute if score #this.aj.anim aj.i matches 135 run tp @s ^0.246 ^-2.417 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 136 run tp @s ^0.246 ^-2.419 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 137 run tp @s ^0.246 ^-2.421 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 138 run tp @s ^0.246 ^-2.422 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 139 run tp @s ^0.246 ^-2.424 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 140 run tp @s ^0.246 ^-2.426 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 141 run tp @s ^0.246 ^-2.427 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 142 run tp @s ^0.246 ^-2.429 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 143 run tp @s ^0.246 ^-2.43 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 144 run tp @s ^0.246 ^-2.431 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 135 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:615}
execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:612}