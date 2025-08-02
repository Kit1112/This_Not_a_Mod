#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,41.029f,0f]
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,37.447f,0f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,33.927f,0f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,30.474f,0f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,26.958f,0f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,23.782f,0f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,20.55f,0f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,17.273f,0f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,14.269f,0f]
execute if score #this.aj.anim aj.i matches 80 run tp @s ^-0.343 ^-6.321 ^0.395 ~ ~
execute if score #this.aj.anim aj.i matches 81 run tp @s ^-0.318 ^-6.317 ^0.415 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^-0.292 ^-6.314 ^0.434 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^-0.265 ^-6.31 ^0.451 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-0.237 ^-6.307 ^0.466 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-0.211 ^-6.305 ^0.479 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^-0.184 ^-6.303 ^0.49 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^-0.155 ^-6.301 ^0.5 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^-0.129 ^-6.3 ^0.507 ~ ~
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:668}