#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-15f,0f]
execute if score #this.aj.anim aj.i matches 40 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-14.966f,0f]
execute if score #this.aj.anim aj.i matches 41 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-13.148f,0f]
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-11.201f,0f]
execute if score #this.aj.anim aj.i matches 43 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-9.252f,0f]
execute if score #this.aj.anim aj.i matches 44 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-7.107f,0f]
execute if score #this.aj.anim aj.i matches 36 run tp @s ^0.135 ^-6.393 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 37 run tp @s ^0.135 ^-6.378 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 38 run tp @s ^0.135 ^-6.363 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 39 run tp @s ^0.135 ^-6.35 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 40 run tp @s ^0.135 ^-6.339 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^0.119 ^-6.331 ^0.509 ~ ~
execute if score #this.aj.anim aj.i matches 42 run tp @s ^0.102 ^-6.323 ^0.513 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^0.084 ^-6.318 ^0.516 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^0.065 ^-6.313 ^0.519 ~ ~
execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:668}