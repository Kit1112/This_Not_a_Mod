#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,27.5f,-167.5f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-78.415f,30.997f,-167.907f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-83.616f,36.321f,-168.526f]
execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-89.873f,42.727f,-169.271f]
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-3.369 ^-3.966 ^-5.008 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-3.357 ^-3.954 ^-5.008 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^-3.345 ^-3.942 ^-5.008 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^-3.334 ^-3.93 ^-5.008 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^-3.428 ^-3.76 ^-4.964 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^-3.576 ^-3.494 ^-4.854 ~ ~
execute if score #this.aj.anim aj.i matches 90 run tp @s ^-3.744 ^-3.162 ^-4.654 ~ ~
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:840}