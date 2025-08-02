#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-18.383f,180f]
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-14.165f,-180f]
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-10.035f,180f]
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-5.914f,-180f]
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-1.886f,-180f]
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,2.29f,-180f]
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,6.284f,180f]
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,10.418f,180f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^0.15 ^-6.43 ^-0.452 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^0.117 ^-6.428 ^-0.462 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^0.083 ^-6.426 ^-0.469 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^0.049 ^-6.424 ^-0.474 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^0.016 ^-6.421 ^-0.476 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^-0.019 ^-6.417 ^-0.476 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^-0.052 ^-6.414 ^-0.473 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^-0.086 ^-6.41 ^-0.468 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:569}