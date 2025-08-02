#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,39.159f,-180f]
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,35.374f,-180f]
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,31.465f,-180f]
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,27.588f,180f]
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,23.67f,180f]
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,19.716f,-180f]
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,15.728f,180f]
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,11.71f,-180f]
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,7.665f,-180f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^-0.301 ^-6.379 ^-0.369 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^-0.276 ^-6.383 ^-0.388 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^-0.249 ^-6.388 ^-0.406 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^-0.221 ^-6.392 ^-0.422 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^-0.191 ^-6.396 ^-0.436 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^-0.161 ^-6.401 ^-0.448 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^-0.129 ^-6.405 ^-0.458 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^-0.097 ^-6.409 ^-0.466 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^-0.064 ^-6.413 ^-0.472 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:569}