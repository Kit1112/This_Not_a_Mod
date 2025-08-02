#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 45 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,85.2f,-180f]
execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,87.043f,180f]
execute if score #this.aj.anim aj.i matches 47 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,89.551f,-180f]
execute if score #this.aj.anim aj.i matches 48 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,87.883f,0f]
execute if score #this.aj.anim aj.i matches 49 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,85.269f,0f]
execute if score #this.aj.anim aj.i matches 50 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,82.449f,0f]
execute if score #this.aj.anim aj.i matches 51 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,79.645f,0f]
execute if score #this.aj.anim aj.i matches 52 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,76.635f,0f]
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,73.594f,0f]
execute if score #this.aj.anim aj.i matches 45 run tp @s ^-0.58 ^2.519 ^-0.049 ~ ~
execute if score #this.aj.anim aj.i matches 46 run tp @s ^-0.581 ^2.517 ^-0.03 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^-0.582 ^2.514 ^-0.005 ~ ~
execute if score #this.aj.anim aj.i matches 48 run tp @s ^-0.581 ^2.512 ^0.021 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^-0.58 ^2.51 ^0.048 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^-0.577 ^2.51 ^0.076 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^-0.572 ^2.51 ^0.105 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^-0.566 ^2.51 ^0.134 ~ ~
execute if score #this.aj.anim aj.i matches 53 run tp @s ^-0.558 ^2.511 ^0.164 ~ ~
execute if score #this.aj.anim aj.i matches 45 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:371}