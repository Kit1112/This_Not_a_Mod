#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-71.617f,0f]
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-75.835f,0f]
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-79.965f,0f]
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-84.086f,0f]
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-88.114f,0f]
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-87.71f,-180f]
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-83.716f,180f]
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-79.582f,-180f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^0.401 ^-6.463 ^0.133 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^0.41 ^-6.461 ^0.103 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^0.416 ^-6.459 ^0.074 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^0.42 ^-6.456 ^0.044 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^0.422 ^-6.453 ^0.014 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^0.422 ^-6.45 ^-0.017 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^0.42 ^-6.446 ^-0.046 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^0.416 ^-6.443 ^-0.076 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:866}