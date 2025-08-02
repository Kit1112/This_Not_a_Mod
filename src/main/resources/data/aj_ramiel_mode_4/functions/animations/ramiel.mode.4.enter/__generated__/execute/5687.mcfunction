#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.079f,-23.486f,167.033f]
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.28f,-23.691f,167.057f]
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.481f,-23.897f,167.081f]
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.681f,-24.102f,167.105f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.879f,-24.305f,167.128f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-72.076f,-24.506f,167.152f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-72.266f,-24.701f,167.175f]
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-72.461f,-24.901f,167.198f]
execute if score #this.aj.anim aj.i matches 91 run tp @s ^3.597 ^-4.588 ^-5.657 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^3.609 ^-4.571 ^-5.648 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^3.621 ^-4.555 ^-5.638 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^3.633 ^-4.538 ^-5.628 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^3.645 ^-4.522 ^-5.619 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^3.657 ^-4.506 ^-5.609 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^3.668 ^-4.491 ^-5.6 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^3.68 ^-4.475 ^-5.59 ~ ~
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1030}
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1028}