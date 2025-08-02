#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-86.404f,-180f]
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-89.508f,0f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-85.485f,0f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-81.285f,0f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-77.157f,0f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-73.023f,0f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-68.886f,0f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-64.749f,0f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-60.617f,0f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^0.422 ^-6.449 ^-0.027 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^0.423 ^-6.452 ^0.004 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^0.421 ^-6.455 ^0.033 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^0.418 ^-6.458 ^0.064 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^0.412 ^-6.46 ^0.094 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^0.404 ^-6.462 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^0.394 ^-6.463 ^0.152 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^0.382 ^-6.464 ^0.18 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^0.368 ^-6.465 ^0.207 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:866}