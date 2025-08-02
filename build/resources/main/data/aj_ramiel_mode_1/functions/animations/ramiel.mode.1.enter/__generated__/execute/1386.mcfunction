#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-55.192f,0f]
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-51.163f,0f]
execute if score #this.aj.anim aj.i matches 56 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-47.108f,0f]
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-43.032f,0f]
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-38.937f,0f]
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-34.826f,0f]
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-30.622f,0f]
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-26.574f,0f]
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-22.438f,0f]
execute if score #this.aj.anim aj.i matches 54 run tp @s ^0.478 ^2.583 ^0.332 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^0.453 ^2.587 ^0.365 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^0.426 ^2.59 ^0.396 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^0.397 ^2.593 ^0.425 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^0.366 ^2.594 ^0.452 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^0.332 ^2.596 ^0.478 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^0.296 ^2.596 ^0.501 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^0.26 ^2.596 ^0.52 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^0.222 ^2.595 ^0.538 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:371}