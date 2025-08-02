#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,19.532f,0f]
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,22.674f,0f]
execute if score #this.aj.anim aj.i matches 56 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,26.024f,0f]
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,29.384f,0f]
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,32.815f,0f]
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,36.243f,0f]
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,39.876f,0f]
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,43.427f,0f]
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,47.107f,0f]
execute if score #this.aj.anim aj.i matches 54 run tp @s ^-0.175 ^-6.302 ^0.493 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^-0.202 ^-6.304 ^0.483 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^-0.23 ^-6.306 ^0.47 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^-0.257 ^-6.309 ^0.456 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^-0.283 ^-6.312 ^0.44 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^-0.309 ^-6.316 ^0.422 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^-0.335 ^-6.32 ^0.401 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^-0.36 ^-6.324 ^0.38 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^-0.383 ^-6.328 ^0.356 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:668}