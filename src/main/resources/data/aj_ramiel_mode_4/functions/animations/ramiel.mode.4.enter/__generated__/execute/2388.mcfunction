#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 16 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,45f,0f]
execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-0.072f,44.981f,-0.046f]
execute if score #this.aj.anim aj.i matches 19 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-2.173f,44.411f,-1.401f]
execute if score #this.aj.anim aj.i matches 20 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-4.988f,43.648f,-3.216f]
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-8.272f,42.758f,-5.334f]
execute if score #this.aj.anim aj.i matches 22 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-11.981f,41.753f,-7.726f]
execute if score #this.aj.anim aj.i matches 23 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-15.935f,40.681f,-10.276f]
execute if score #this.aj.anim aj.i matches 16 run tp @s ^0 ^-1.694 ^-3.264 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^0 ^-1.583 ^-3.106 ~ ~
execute if score #this.aj.anim aj.i matches 18 run tp @s ^0 ^-1.455 ^-2.927 ~ ~
execute if score #this.aj.anim aj.i matches 19 run tp @s ^0.01 ^-1.303 ^-2.761 ~ ~
execute if score #this.aj.anim aj.i matches 20 run tp @s ^0.027 ^-1.12 ^-2.596 ~ ~
execute if score #this.aj.anim aj.i matches 21 run tp @s ^0.049 ^-0.917 ^-2.452 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^0.074 ^-0.686 ^-2.337 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^0.1 ^-0.442 ^-2.257 ~ ~
execute if score #this.aj.anim aj.i matches 16 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:395}