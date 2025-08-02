#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,56.409f,180f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,52.295f,180f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,48.277f,180f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,44.194f,-180f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,40.132f,-180f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,36.095f,-180f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,32.165f,-180f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,28.186f,-180f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,24.163f,180f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^-0.436 ^-6.385 ^-0.289 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^-0.414 ^-6.384 ^-0.32 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^-0.39 ^-6.382 ^-0.348 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-0.365 ^-6.38 ^-0.375 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-0.337 ^-6.377 ^-0.4 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^-0.308 ^-6.373 ^-0.423 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^-0.278 ^-6.368 ^-0.443 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^-0.247 ^-6.363 ^-0.461 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^-0.214 ^-6.356 ^-0.477 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:668}