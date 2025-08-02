#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,-27.5f,167.5f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-78.415f,-30.997f,167.907f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-83.616f,-36.321f,168.526f]
execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-89.873f,-42.727f,169.271f]
execute if score #this.aj.anim aj.i matches 84 run tp @s ^3.61 ^-4.036 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^3.601 ^-4.026 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^3.592 ^-4.015 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^3.583 ^-4.005 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^3.52 ^-3.525 ^-5.563 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^3.489 ^-2.882 ^-5.62 ~ ~
execute if score #this.aj.anim aj.i matches 90 run tp @s ^3.467 ^-2.19 ^-5.587 ~ ~
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1023}