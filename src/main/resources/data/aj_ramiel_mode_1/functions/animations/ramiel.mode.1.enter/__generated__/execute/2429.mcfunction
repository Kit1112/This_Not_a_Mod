#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,75.555f,0f]
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,71.557f,0f]
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,67.591f,0f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,63.662f,0f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,59.849f,0f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,56f,0f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,52.198f,0f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,48.371f,0f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,44.745f,0f]
execute if score #this.aj.anim aj.i matches 71 run tp @s ^-0.507 ^-6.359 ^0.13 ~ ~
execute if score #this.aj.anim aj.i matches 72 run tp @s ^-0.496 ^-6.355 ^0.165 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^-0.484 ^-6.351 ^0.199 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^-0.469 ^-6.347 ^0.232 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^-0.452 ^-6.342 ^0.263 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^-0.434 ^-6.338 ^0.293 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^-0.413 ^-6.333 ^0.321 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^-0.391 ^-6.329 ^0.348 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^-0.368 ^-6.325 ^0.372 ~ ~
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:668}