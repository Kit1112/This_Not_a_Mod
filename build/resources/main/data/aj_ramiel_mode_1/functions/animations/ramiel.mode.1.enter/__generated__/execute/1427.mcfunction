#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,14.445f,0f]
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,18.443f,0f]
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,22.409f,0f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,26.338f,0f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,30.151f,0f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,34f,0f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,37.802f,0f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,41.629f,0f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,45.255f,0f]
execute if score #this.aj.anim aj.i matches 71 run tp @s ^-0.145 ^2.57 ^0.563 ~ ~
execute if score #this.aj.anim aj.i matches 72 run tp @s ^-0.184 ^2.566 ^0.552 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^-0.222 ^2.562 ^0.538 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^-0.258 ^2.557 ^0.521 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^-0.292 ^2.553 ^0.503 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^-0.325 ^2.549 ^0.482 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^-0.357 ^2.544 ^0.46 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^-0.386 ^2.54 ^0.435 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^-0.413 ^2.536 ^0.409 ~ ~
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:371}