#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-23.791f,43.822f,-163.682f]
execute if score #this.aj.anim aj.i matches 40 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-23.551f,43.771f,-163.336f]
execute if score #this.aj.anim aj.i matches 41 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-23.334f,43.724f,-163.022f]
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-23.139f,43.68f,-162.739f]
execute if score #this.aj.anim aj.i matches 43 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-22.965f,43.641f,-162.487f]
execute if score #this.aj.anim aj.i matches 44 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-22.811f,43.606f,-162.265f]
execute if score #this.aj.anim aj.i matches 45 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-22.678f,43.575f,-162.072f]
execute if score #this.aj.anim aj.i matches 39..45 run tp @s ^0 ^-1.918 ^-3.845 ~ ~
execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:80}