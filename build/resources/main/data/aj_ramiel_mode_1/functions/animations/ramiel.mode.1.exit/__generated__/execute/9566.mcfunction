#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,3.596f,-180f]
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-0.492f,180f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-4.515f,180f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-8.715f,-180f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-12.843f,-180f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-16.977f,180f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-21.114f,180f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-25.251f,-180f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-29.383f,-180f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^-0.03 ^-6.416 ^-0.475 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^0.004 ^-6.42 ^-0.476 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^0.037 ^-6.423 ^-0.475 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^0.072 ^-6.425 ^-0.471 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^0.106 ^-6.428 ^-0.464 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^0.139 ^-6.43 ^-0.455 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^0.172 ^-6.431 ^-0.444 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^0.203 ^-6.432 ^-0.431 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^0.234 ^-6.432 ^-0.415 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:569}