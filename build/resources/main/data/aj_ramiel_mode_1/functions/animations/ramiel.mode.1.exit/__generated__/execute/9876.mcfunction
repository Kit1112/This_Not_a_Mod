#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,50.841f,0f]
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,54.626f,0f]
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,58.535f,0f]
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,62.412f,0f]
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,66.33f,0f]
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,70.284f,0f]
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,74.272f,0f]
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,78.29f,0f]
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,82.335f,0f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^-0.406 ^-6.332 ^0.33 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^-0.427 ^-6.336 ^0.303 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^-0.446 ^-6.341 ^0.273 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^-0.464 ^-6.345 ^0.242 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^-0.479 ^-6.349 ^0.21 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^-0.492 ^-6.354 ^0.176 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^-0.504 ^-6.358 ^0.142 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^-0.512 ^-6.362 ^0.106 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^-0.518 ^-6.366 ^0.07 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:668}