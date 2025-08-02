#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-97f,-50.024f,170.119f]
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-104.811f,-58.02f,171.049f]
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-113.117f,-66.525f,172.038f]
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-121.734f,-75.347f,173.064f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-130.474f,-84.295f,174.104f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [41.022f,-86.998f,-4.884f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [32.588f,-78.364f,-3.88f]
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [24.434f,-70.016f,-2.909f]
execute if score #this.aj.anim aj.i matches 91 run tp @s ^3.03 ^-1.618 ^-5.125 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^2.854 ^-1.084 ^-4.906 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^2.57 ^-0.664 ^-4.65 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^2.187 ^-0.362 ^-4.433 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^1.736 ^-0.176 ^-4.3 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^1.271 ^-0.093 ^-4.269 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^0.813 ^-0.088 ^-4.329 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^0.395 ^-0.139 ^-4.454 ~ ~
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1102}