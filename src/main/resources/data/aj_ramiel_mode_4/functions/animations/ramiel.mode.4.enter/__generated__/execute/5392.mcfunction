#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.079f,-23.486f,167.033f]
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.28f,-23.691f,167.057f]
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.481f,-23.897f,167.081f]
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.681f,-24.102f,167.105f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.879f,-24.305f,167.128f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-72.076f,-24.506f,167.152f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-72.266f,-24.701f,167.175f]
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-72.461f,-24.901f,167.198f]
execute if score #this.aj.anim aj.i matches 91 run tp @s ^2.779 ^-4.158 ^-4.047 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^2.788 ^-4.15 ^-4.04 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^2.797 ^-4.141 ^-4.034 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^2.806 ^-4.132 ^-4.028 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^2.815 ^-4.124 ^-4.022 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^2.823 ^-4.116 ^-4.016 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^2.831 ^-4.108 ^-4.01 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^2.84 ^-4.1 ^-4.004 ~ ~
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:938}