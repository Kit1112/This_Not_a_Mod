#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.669f,47.557f,2.635f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.703f,47.508f,2.579f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.736f,47.461f,2.526f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.77f,47.412f,2.47f]
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.805f,47.362f,2.413f]
execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.839f,47.312f,2.357f]
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.874f,47.261f,2.301f]
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.908f,47.211f,2.245f]
execute if score #this.aj.anim aj.i matches 102 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.944f,47.158f,2.186f]
execute if score #this.aj.anim aj.i matches 103 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.979f,47.106f,2.129f]
execute if score #this.aj.anim aj.i matches 94 run tp @s ^-0.302 ^-1.457 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^-0.302 ^-1.455 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^-0.302 ^-1.452 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^-0.302 ^-1.45 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^-0.302 ^-1.447 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 99 run tp @s ^-0.302 ^-1.445 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^-0.302 ^-1.442 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 101 run tp @s ^-0.302 ^-1.44 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^-0.302 ^-1.437 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^-0.302 ^-1.434 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:84}
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:80}
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:75}