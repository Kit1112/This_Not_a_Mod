#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 45 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,4.8f,-180f]
execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,2.957f,-180f]
execute if score #this.aj.anim aj.i matches 47 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,0.449f,-180f]
execute if score #this.aj.anim aj.i matches 48 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-2.117f,-180f]
execute if score #this.aj.anim aj.i matches 49 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-4.731f,-180f]
execute if score #this.aj.anim aj.i matches 50 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-7.551f,180f]
execute if score #this.aj.anim aj.i matches 51 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-10.355f,180f]
execute if score #this.aj.anim aj.i matches 52 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-13.365f,-180f]
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-16.406f,180f]
execute if score #this.aj.anim aj.i matches 45 run tp @s ^-0.035 ^-6.388 ^-0.421 ~ ~
execute if score #this.aj.anim aj.i matches 46 run tp @s ^-0.022 ^-6.385 ^-0.422 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^-0.003 ^-6.382 ^-0.423 ~ ~
execute if score #this.aj.anim aj.i matches 48 run tp @s ^0.016 ^-6.38 ^-0.422 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^0.035 ^-6.379 ^-0.421 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^0.056 ^-6.378 ^-0.419 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^0.076 ^-6.378 ^-0.416 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^0.098 ^-6.379 ^-0.411 ~ ~
execute if score #this.aj.anim aj.i matches 53 run tp @s ^0.119 ^-6.38 ^-0.405 ~ ~
execute if score #this.aj.anim aj.i matches 45 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:866}