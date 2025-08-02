#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 16 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,45f,0f]
execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-0.072f,44.981f,-0.046f]
execute if score #this.aj.anim aj.i matches 19 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-2.173f,44.411f,-1.401f]
execute if score #this.aj.anim aj.i matches 20 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-4.988f,43.648f,-3.216f]
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-8.272f,42.758f,-5.334f]
execute if score #this.aj.anim aj.i matches 22 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-11.981f,41.753f,-7.726f]
execute if score #this.aj.anim aj.i matches 23 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-15.935f,40.681f,-10.276f]
execute if score #this.aj.anim aj.i matches 16 run tp @s ^0 ^-1.513 ^-3.264 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^0 ^-1.323 ^-3.106 ~ ~
execute if score #this.aj.anim aj.i matches 18 run tp @s ^0 ^-1.106 ^-2.928 ~ ~
execute if score #this.aj.anim aj.i matches 19 run tp @s ^0.011 ^-0.862 ^-2.773 ~ ~
execute if score #this.aj.anim aj.i matches 20 run tp @s ^0.029 ^-0.582 ^-2.63 ~ ~
execute if score #this.aj.anim aj.i matches 21 run tp @s ^0.052 ^-0.282 ^-2.519 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^0.078 ^0.042 ^-2.451 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^0.104 ^0.372 ^-2.43 ~ ~
execute if score #this.aj.anim aj.i matches 16 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:578}