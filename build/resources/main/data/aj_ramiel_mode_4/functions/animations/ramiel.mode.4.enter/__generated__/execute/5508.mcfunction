#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 24 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [39.651f,-85.595f,-4.72f]
execute if score #this.aj.anim aj.i matches 25 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-131.522f,-85.368f,174.229f]
execute if score #this.aj.anim aj.i matches 26 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-122.78f,-76.418f,173.188f]
execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-114.309f,-67.745f,172.18f]
execute if score #this.aj.anim aj.i matches 28 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-105.785f,-59.018f,171.165f]
execute if score #this.aj.anim aj.i matches 29 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-98.057f,-51.106f,170.245f]
execute if score #this.aj.anim aj.i matches 30 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-90.55f,-43.42f,169.351f]
execute if score #this.aj.anim aj.i matches 24 run tp @s ^1.414 ^0.226 ^-4.254 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^1.963 ^0.147 ^-4.316 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^2.474 ^-0.047 ^-4.501 ~ ~
execute if score #this.aj.anim aj.i matches 27 run tp @s ^2.897 ^-0.363 ^-4.782 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^3.217 ^-0.827 ^-5.126 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^3.4 ^-1.388 ^-5.436 ~ ~
execute if score #this.aj.anim aj.i matches 30 run tp @s ^3.469 ^-2.109 ^-5.6 ~ ~
execute if score #this.aj.anim aj.i matches 24 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1018}
execute if score #this.aj.anim aj.i matches 25 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1019}
execute if score #this.aj.anim aj.i matches 26 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1020}
execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1021}
execute if score #this.aj.anim aj.i matches 28 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1022}
execute if score #this.aj.anim aj.i matches 29 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1023}