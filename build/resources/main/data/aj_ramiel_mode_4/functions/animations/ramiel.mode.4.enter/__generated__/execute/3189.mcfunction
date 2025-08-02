#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-54.699f,30.175f,-35.273f]
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-54.604f,30.201f,-35.212f]
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-54.512f,30.226f,-35.152f]
execute if score #this.aj.anim aj.i matches 102 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-54.422f,30.25f,-35.095f]
execute if score #this.aj.anim aj.i matches 103 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-54.335f,30.274f,-35.039f]
execute if score #this.aj.anim aj.i matches 104 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-54.253f,30.296f,-34.986f]
execute if score #this.aj.anim aj.i matches 105 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-54.172f,30.318f,-34.934f]
execute if score #this.aj.anim aj.i matches 99 run tp @s ^0.002 ^4.403 ^-6.296 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^0.003 ^4.396 ^-6.283 ~ ~
execute if score #this.aj.anim aj.i matches 101 run tp @s ^0.003 ^4.39 ^-6.271 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^0.003 ^4.384 ^-6.26 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^0.004 ^4.377 ^-6.248 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^0.004 ^4.372 ^-6.238 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^0.004 ^4.366 ^-6.227 ~ ~
execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:596}