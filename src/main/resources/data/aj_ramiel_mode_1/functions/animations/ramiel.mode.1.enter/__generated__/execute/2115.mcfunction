#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,48.971f,180f]
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,52.553f,-180f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,56.073f,-180f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,59.526f,-180f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,63.042f,-180f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,66.218f,-180f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,69.45f,180f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,72.727f,-180f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,75.731f,180f]
execute if score #this.aj.anim aj.i matches 80 run tp @s ^-0.359 ^-6.368 ^-0.313 ~ ~
execute if score #this.aj.anim aj.i matches 81 run tp @s ^-0.378 ^-6.364 ^-0.29 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^-0.395 ^-6.36 ^-0.266 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^-0.41 ^-6.357 ^-0.242 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-0.424 ^-6.354 ^-0.216 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-0.436 ^-6.352 ^-0.192 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^-0.446 ^-6.349 ^-0.167 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^-0.455 ^-6.348 ^-0.141 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^-0.462 ^-6.346 ^-0.117 ~ ~
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:569}