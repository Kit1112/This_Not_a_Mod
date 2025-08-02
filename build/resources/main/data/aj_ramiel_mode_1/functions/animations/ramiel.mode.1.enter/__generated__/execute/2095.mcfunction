#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,14.445f,-180f]
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,18.443f,180f]
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,22.409f,180f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,26.338f,-180f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,30.151f,-180f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,34f,180f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,37.802f,-180f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,41.629f,-180f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,45.255f,180f]
execute if score #this.aj.anim aj.i matches 71 run tp @s ^-0.119 ^-6.406 ^-0.461 ~ ~
execute if score #this.aj.anim aj.i matches 72 run tp @s ^-0.151 ^-6.402 ^-0.452 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^-0.182 ^-6.398 ^-0.44 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^-0.211 ^-6.393 ^-0.427 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^-0.239 ^-6.389 ^-0.412 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^-0.266 ^-6.385 ^-0.395 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^-0.292 ^-6.38 ^-0.376 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^-0.316 ^-6.376 ^-0.356 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^-0.338 ^-6.372 ^-0.335 ~ ~
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:569}