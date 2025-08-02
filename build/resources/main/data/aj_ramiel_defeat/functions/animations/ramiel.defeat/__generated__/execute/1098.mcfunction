#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.161f,-73.311f,102.937f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.383f,-65.609f,105.563f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.448f,-58.255f,107.984f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.446f,-50.8f,110.439f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.407f,-43.543f,112.861f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.339f,-36.041f,115.413f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.253f,-28.883f,117.904f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.144f,-21.485f,120.541f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.012f,-13.997f,123.283f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^4.213 ^-4.965 ^0.586 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^4.239 ^-5.069 ^0.838 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^4.279 ^-5.144 ^1.066 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^4.338 ^-5.199 ^1.28 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^4.415 ^-5.236 ^1.47 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^4.516 ^-5.26 ^1.642 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^4.634 ^-5.274 ^1.782 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^4.778 ^-5.284 ^1.898 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^4.946 ^-5.295 ^1.985 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:146}