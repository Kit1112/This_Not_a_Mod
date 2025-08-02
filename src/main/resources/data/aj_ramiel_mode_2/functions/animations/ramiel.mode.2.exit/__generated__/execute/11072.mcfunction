#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 45 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone9,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.264f,-52.453f,90.001f]
execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone9,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.653f,-51.35f,90.033f]
execute if score #this.aj.anim aj.i matches 47 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone9,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-36.175f,-49.785f,90.057f]
execute if score #this.aj.anim aj.i matches 48 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone9,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-36.726f,-48.019f,90.057f]
execute if score #this.aj.anim aj.i matches 49 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone9,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-37.297f,-46.058f,90.027f]
execute if score #this.aj.anim aj.i matches 50 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone9,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-37.877f,-43.909f,89.965f]
execute if score #this.aj.anim aj.i matches 51 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone9,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-38.459f,-41.576f,89.868f]
execute if score #this.aj.anim aj.i matches 52 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone9,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-39.035f,-39.067f,89.736f]
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone9,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-39.599f,-36.388f,89.569f]
execute if score #this.aj.anim aj.i matches 45 run tp @s ^4.861 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 46 run tp @s ^4.843 ^-1.907 ^-0.009 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^4.818 ^-1.892 ^-0.021 ~ ~
execute if score #this.aj.anim aj.i matches 48 run tp @s ^4.79 ^-1.876 ^-0.032 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^4.758 ^-1.86 ^-0.044 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^4.724 ^-1.844 ^-0.054 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^4.688 ^-1.828 ^-0.063 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^4.648 ^-1.812 ^-0.069 ~ ~
execute if score #this.aj.anim aj.i matches 53 run tp @s ^4.607 ^-1.797 ^-0.073 ~ ~
execute if score #this.aj.anim aj.i matches 45 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone9,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:76}
execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone9,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:78}
execute if score #this.aj.anim aj.i matches 47 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone9,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:79}
execute if score #this.aj.anim aj.i matches 48 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone9,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:75}
execute if score #this.aj.anim aj.i matches 49 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone9,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:81}
execute if score #this.aj.anim aj.i matches 50 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone9,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:82}
execute if score #this.aj.anim aj.i matches 51 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone9,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:83}
execute if score #this.aj.anim aj.i matches 52 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone9,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:84}
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone9,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:73}