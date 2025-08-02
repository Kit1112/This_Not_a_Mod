#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 45 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-85.2f,180f]
execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-87.043f,180f]
execute if score #this.aj.anim aj.i matches 47 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-89.551f,180f]
execute if score #this.aj.anim aj.i matches 48 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-87.883f,0f]
execute if score #this.aj.anim aj.i matches 49 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-85.269f,0f]
execute if score #this.aj.anim aj.i matches 50 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-82.449f,0f]
execute if score #this.aj.anim aj.i matches 51 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-79.645f,0f]
execute if score #this.aj.anim aj.i matches 52 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-76.635f,0f]
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-73.594f,0f]
execute if score #this.aj.anim aj.i matches 45 run tp @s ^0.404 ^-6.402 ^-0.034 ~ ~
execute if score #this.aj.anim aj.i matches 46 run tp @s ^0.405 ^-6.399 ^-0.021 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^0.406 ^-6.397 ^-0.003 ~ ~
execute if score #this.aj.anim aj.i matches 48 run tp @s ^0.406 ^-6.395 ^0.015 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^0.405 ^-6.393 ^0.033 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^0.402 ^-6.393 ^0.053 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^0.399 ^-6.392 ^0.073 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^0.395 ^-6.393 ^0.094 ~ ~
execute if score #this.aj.anim aj.i matches 53 run tp @s ^0.389 ^-6.394 ^0.115 ~ ~
execute if score #this.aj.anim aj.i matches 45 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:767}