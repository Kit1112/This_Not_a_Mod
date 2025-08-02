#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 31 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-48.814f,31.77f,-31.478f]
execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-51.473f,31.049f,-33.193f]
execute if score #this.aj.anim aj.i matches 33 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.512f,30.497f,-34.508f]
execute if score #this.aj.anim aj.i matches 34 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.812f,30.415f,-34.701f]
execute if score #this.aj.anim aj.i matches 35 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-54.098f,30.338f,-34.886f]
execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-54.365f,30.266f,-35.058f]
execute if score #this.aj.anim aj.i matches 37 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-54.629f,30.194f,-35.228f]
execute if score #this.aj.anim aj.i matches 38 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-54.871f,30.129f,-35.384f]
execute if score #this.aj.anim aj.i matches 31 run tp @s ^0.048 ^2.156 ^-3.72 ~ ~
execute if score #this.aj.anim aj.i matches 32 run tp @s ^0.026 ^2.182 ^-3.893 ~ ~
execute if score #this.aj.anim aj.i matches 33 run tp @s ^0.009 ^2.205 ^-4.03 ~ ~
execute if score #this.aj.anim aj.i matches 34 run tp @s ^0.006 ^2.233 ^-4.061 ~ ~
execute if score #this.aj.anim aj.i matches 35 run tp @s ^0.004 ^2.26 ^-4.092 ~ ~
execute if score #this.aj.anim aj.i matches 36 run tp @s ^0.002 ^2.286 ^-4.122 ~ ~
execute if score #this.aj.anim aj.i matches 37 run tp @s ^-0.001 ^2.312 ^-4.152 ~ ~
execute if score #this.aj.anim aj.i matches 38 run tp @s ^-0.003 ^2.337 ^-4.18 ~ ~
execute if score #this.aj.anim aj.i matches 31 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:578}