#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-72.646f,-25.09f,167.22f]
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-72.834f,-25.283f,167.242f]
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-73.014f,-25.467f,167.264f]
execute if score #this.aj.anim aj.i matches 102 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-73.19f,-25.647f,167.285f]
execute if score #this.aj.anim aj.i matches 103 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-73.36f,-25.821f,167.305f]
execute if score #this.aj.anim aj.i matches 104 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-73.522f,-25.987f,167.324f]
execute if score #this.aj.anim aj.i matches 105 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-73.681f,-26.149f,167.343f]
execute if score #this.aj.anim aj.i matches 99 run tp @s ^3.691 ^-4.461 ^-5.581 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^3.702 ^-4.446 ^-5.571 ~ ~
execute if score #this.aj.anim aj.i matches 101 run tp @s ^3.713 ^-4.431 ^-5.562 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^3.723 ^-4.417 ^-5.553 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^3.733 ^-4.404 ^-5.544 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^3.742 ^-4.391 ^-5.536 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^3.751 ^-4.379 ^-5.528 ~ ~
execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1028}
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1027}
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1025}