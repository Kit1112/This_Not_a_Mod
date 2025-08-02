#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,34.808f,-180f]
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,38.837f,-180f]
execute if score #this.aj.anim aj.i matches 56 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,42.892f,180f]
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,46.968f,-180f]
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,51.063f,-180f]
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,55.174f,-180f]
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,59.378f,180f]
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,63.426f,-180f]
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,67.562f,-180f]
execute if score #this.aj.anim aj.i matches 54 run tp @s ^-0.299 ^-6.372 ^-0.43 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^-0.328 ^-6.376 ^-0.407 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^-0.356 ^-6.379 ^-0.383 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^-0.382 ^-6.382 ^-0.357 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^-0.407 ^-6.384 ^-0.329 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^-0.429 ^-6.385 ^-0.299 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^-0.45 ^-6.385 ^-0.266 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^-0.468 ^-6.385 ^-0.234 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^-0.484 ^-6.384 ^-0.2 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:668}