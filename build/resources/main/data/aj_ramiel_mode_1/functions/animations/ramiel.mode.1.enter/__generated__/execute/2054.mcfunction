#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-55.192f,180f]
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-51.163f,-180f]
execute if score #this.aj.anim aj.i matches 56 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-47.108f,180f]
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-43.032f,-180f]
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-38.937f,180f]
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-34.826f,-180f]
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-30.622f,180f]
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-26.574f,-180f]
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-22.438f,-180f]
execute if score #this.aj.anim aj.i matches 54 run tp @s ^0.391 ^-6.419 ^-0.272 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^0.371 ^-6.423 ^-0.299 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^0.349 ^-6.426 ^-0.324 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^0.325 ^-6.429 ^-0.348 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^0.299 ^-6.43 ^-0.37 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^0.272 ^-6.432 ^-0.391 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^0.243 ^-6.432 ^-0.41 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^0.213 ^-6.432 ^-0.426 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^0.182 ^-6.431 ^-0.44 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:569}