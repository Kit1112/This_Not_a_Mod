#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-50.841f,-180f]
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-54.626f,-180f]
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-58.535f,180f]
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-62.412f,180f]
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-66.33f,-180f]
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-70.284f,-180f]
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-74.272f,180f]
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-78.29f,180f]
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-82.335f,-180f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^0.328 ^-6.411 ^-0.267 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^0.345 ^-6.415 ^-0.245 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^0.36 ^-6.42 ^-0.221 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^0.374 ^-6.424 ^-0.196 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^0.387 ^-6.429 ^-0.17 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^0.398 ^-6.433 ^-0.143 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^0.407 ^-6.437 ^-0.115 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^0.414 ^-6.441 ^-0.086 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^0.419 ^-6.445 ^-0.056 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:866}