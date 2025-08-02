#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.079f,23.486f,-167.033f]
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.28f,23.691f,-167.057f]
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.481f,23.897f,-167.081f]
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.681f,24.102f,-167.105f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.879f,24.305f,-167.128f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-72.076f,24.506f,-167.152f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-72.266f,24.701f,-167.175f]
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-72.461f,24.901f,-167.198f]
execute if score #this.aj.anim aj.i matches 91 run tp @s ^-3.016 ^-4.141 ^-3.943 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^-3.014 ^-4.134 ^-3.943 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^-3.012 ^-4.127 ^-3.942 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^-3.01 ^-4.12 ^-3.941 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^-3.008 ^-4.113 ^-3.94 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^-3.007 ^-4.106 ^-3.939 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^-3.005 ^-4.1 ^-3.938 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^-3.003 ^-4.093 ^-3.937 ~ ~
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:676}