#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-68.337f,-20.678f,166.707f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-68.486f,-20.831f,166.725f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-68.652f,-21.001f,166.744f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-68.805f,-21.158f,166.763f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-68.977f,-21.334f,166.783f]
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-69.151f,-21.512f,166.804f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-69.33f,-21.695f,166.825f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-69.513f,-21.882f,166.847f]
execute if score #this.aj.anim aj.i matches 76 run tp @s ^4.332 ^-5.458 ^-7.759 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^4.347 ^-5.44 ^-7.749 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^4.364 ^-5.42 ^-7.739 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^4.379 ^-5.401 ^-7.729 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^4.396 ^-5.381 ^-7.719 ~ ~
execute if score #this.aj.anim aj.i matches 81 run tp @s ^4.412 ^-5.357 ^-7.708 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^4.427 ^-5.333 ^-7.696 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^4.442 ^-5.308 ^-7.685 ~ ~
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1123}
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1122}