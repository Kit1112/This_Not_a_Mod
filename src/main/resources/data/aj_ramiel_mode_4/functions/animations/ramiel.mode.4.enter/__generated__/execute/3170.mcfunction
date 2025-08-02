#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-55.498f,29.959f,-35.788f]
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-55.395f,29.986f,-35.722f]
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-55.293f,30.014f,-35.656f]
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-55.191f,30.042f,-35.591f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-55.09f,30.069f,-35.525f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-54.99f,30.096f,-35.461f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-54.893f,30.122f,-35.398f]
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-54.793f,30.149f,-35.334f]
execute if score #this.aj.anim aj.i matches 91 run tp @s ^-0.001 ^4.458 ^-6.4 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^0 ^4.451 ^-6.387 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^0 ^4.444 ^-6.374 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^0 ^4.437 ^-6.36 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^0.001 ^4.43 ^-6.347 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^0.001 ^4.423 ^-6.334 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^0.001 ^4.416 ^-6.321 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^0.002 ^4.41 ^-6.308 ~ ~
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:597}
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:596}