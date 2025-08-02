#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.521f,-19.843f,166.61f]
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.61f,-19.934f,166.62f]
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.709f,-20.036f,166.632f]
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.818f,-20.147f,166.645f]
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.933f,-20.265f,166.659f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-68.062f,-20.397f,166.674f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-68.197f,-20.535f,166.69f]
execute if score #this.aj.anim aj.i matches 69 run tp @s ^4.227 ^-5.539 ^-7.77 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^4.253 ^-5.542 ^-7.799 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^4.266 ^-5.532 ^-7.798 ~ ~
execute if score #this.aj.anim aj.i matches 72 run tp @s ^4.278 ^-5.519 ^-7.791 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^4.29 ^-5.506 ^-7.784 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^4.304 ^-5.491 ^-7.776 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^4.318 ^-5.475 ^-7.767 ~ ~
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1123}
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1124}