#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.232f,19.547f,-166.575f]
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.222f,19.537f,-166.574f]
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.227f,19.542f,-166.575f]
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.245f,19.561f,-166.577f]
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.276f,19.592f,-166.58f]
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.32f,19.637f,-166.586f]
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.376f,19.694f,-166.592f]
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.443f,19.763f,-166.6f]
execute if score #this.aj.anim aj.i matches 61 run tp @s ^-3.042 ^-4.255 ^-3.951 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^-3.044 ^-4.258 ^-3.951 ~ ~
execute if score #this.aj.anim aj.i matches 63 run tp @s ^-3.045 ^-4.26 ^-3.951 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^-3.046 ^-4.261 ^-3.951 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^-3.047 ^-4.261 ^-3.951 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^-3.048 ^-4.26 ^-3.951 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^-3.048 ^-4.259 ^-3.951 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^-3.047 ^-4.258 ^-3.951 ~ ~
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:680}