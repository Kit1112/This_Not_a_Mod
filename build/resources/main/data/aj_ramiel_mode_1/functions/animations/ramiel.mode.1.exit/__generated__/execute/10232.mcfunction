#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-3.596f,0f]
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,0.492f,0f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,4.515f,0f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,8.715f,0f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,12.843f,0f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,16.977f,0f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,21.114f,0f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,25.251f,0f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,29.383f,0f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^0.025 ^-6.463 ^0.405 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^-0.003 ^-6.467 ^0.406 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^-0.032 ^-6.47 ^0.405 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^-0.062 ^-6.472 ^0.401 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^-0.09 ^-6.475 ^0.396 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^-0.119 ^-6.476 ^0.388 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^-0.146 ^-6.478 ^0.379 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^-0.173 ^-6.479 ^0.367 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^-0.199 ^-6.479 ^0.354 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:767}