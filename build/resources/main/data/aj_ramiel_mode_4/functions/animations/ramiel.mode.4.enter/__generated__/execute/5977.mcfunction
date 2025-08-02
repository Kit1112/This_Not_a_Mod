#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.079f,-23.486f,167.033f]
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.28f,-23.691f,167.057f]
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.481f,-23.897f,167.081f]
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.681f,-24.102f,167.105f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.879f,-24.305f,167.128f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-72.076f,-24.506f,167.152f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-72.266f,-24.701f,167.175f]
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-72.461f,-24.901f,167.198f]
execute if score #this.aj.anim aj.i matches 91 run tp @s ^4.573 ^-5.101 ^-7.582 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^4.589 ^-5.075 ^-7.568 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^4.606 ^-5.049 ^-7.554 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^4.622 ^-5.024 ^-7.541 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^4.638 ^-4.998 ^-7.527 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^4.654 ^-4.973 ^-7.513 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^4.669 ^-4.949 ^-7.5 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^4.685 ^-4.924 ^-7.486 ~ ~
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1121}
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1120}