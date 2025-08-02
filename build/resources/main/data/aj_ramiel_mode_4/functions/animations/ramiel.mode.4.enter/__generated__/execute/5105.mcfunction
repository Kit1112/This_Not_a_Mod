#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.079f,23.486f,-167.033f]
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.28f,23.691f,-167.057f]
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.481f,23.897f,-167.081f]
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.681f,24.102f,-167.105f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.879f,24.305f,-167.128f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-72.076f,24.506f,-167.152f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-72.266f,24.701f,-167.175f]
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-72.461f,24.901f,-167.198f]
execute if score #this.aj.anim aj.i matches 91 run tp @s ^-4.81 ^-5.084 ^-7.479 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^-4.815 ^-5.06 ^-7.47 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^-4.821 ^-5.036 ^-7.462 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^-4.826 ^-5.012 ^-7.453 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^-4.832 ^-4.988 ^-7.445 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^-4.837 ^-4.964 ^-7.436 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^-4.842 ^-4.941 ^-7.428 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^-4.848 ^-4.917 ^-7.419 ~ ~
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:859}
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:858}