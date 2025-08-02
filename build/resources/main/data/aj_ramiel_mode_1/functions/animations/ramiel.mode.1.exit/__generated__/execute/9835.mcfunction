#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 45 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-4.8f,0f]
execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-2.957f,0f]
execute if score #this.aj.anim aj.i matches 47 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-0.449f,0f]
execute if score #this.aj.anim aj.i matches 48 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,2.117f,0f]
execute if score #this.aj.anim aj.i matches 49 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,4.731f,0f]
execute if score #this.aj.anim aj.i matches 50 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,7.551f,0f]
execute if score #this.aj.anim aj.i matches 51 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,10.355f,0f]
execute if score #this.aj.anim aj.i matches 52 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,13.365f,0f]
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,16.406f,0f]
execute if score #this.aj.anim aj.i matches 45 run tp @s ^0.044 ^-6.308 ^0.521 ~ ~
execute if score #this.aj.anim aj.i matches 46 run tp @s ^0.027 ^-6.306 ^0.522 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^0.004 ^-6.303 ^0.523 ~ ~
execute if score #this.aj.anim aj.i matches 48 run tp @s ^-0.019 ^-6.301 ^0.523 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^-0.043 ^-6.299 ^0.521 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^-0.069 ^-6.299 ^0.519 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^-0.094 ^-6.299 ^0.515 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^-0.121 ^-6.299 ^0.509 ~ ~
execute if score #this.aj.anim aj.i matches 53 run tp @s ^-0.148 ^-6.3 ^0.502 ~ ~
execute if score #this.aj.anim aj.i matches 45 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:668}