#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,71.617f,0f]
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,75.835f,0f]
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,79.965f,0f]
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,84.086f,0f]
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,88.114f,0f]
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,87.71f,-180f]
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,83.716f,-180f]
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,79.582f,180f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^-0.474 ^2.559 ^0.158 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^-0.484 ^2.557 ^0.122 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^-0.492 ^2.555 ^0.087 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^-0.497 ^2.552 ^0.051 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^-0.499 ^2.55 ^0.016 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^-0.499 ^2.546 ^-0.02 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^-0.497 ^2.543 ^-0.055 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^-0.491 ^2.539 ^-0.09 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:272}