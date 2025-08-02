#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-19.532f,180f]
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-22.674f,180f]
execute if score #this.aj.anim aj.i matches 56 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-26.024f,-180f]
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-29.384f,180f]
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-32.815f,180f]
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-36.243f,-180f]
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-39.876f,-180f]
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-43.427f,-180f]
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-47.107f,-180f]
execute if score #this.aj.anim aj.i matches 54 run tp @s ^0.141 ^-6.381 ^-0.398 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^0.163 ^-6.383 ^-0.39 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^0.185 ^-6.386 ^-0.38 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^0.207 ^-6.389 ^-0.368 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^0.229 ^-6.392 ^-0.355 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^0.25 ^-6.395 ^-0.341 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^0.271 ^-6.399 ^-0.324 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^0.29 ^-6.403 ^-0.307 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^0.31 ^-6.407 ^-0.288 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:866}