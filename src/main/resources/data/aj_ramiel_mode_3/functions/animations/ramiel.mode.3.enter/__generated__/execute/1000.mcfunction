#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.669f,-47.557f,-2.635f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.703f,-47.508f,-2.579f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.736f,-47.461f,-2.526f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.77f,-47.412f,-2.47f]
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.805f,-47.362f,-2.413f]
execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.839f,-47.312f,-2.357f]
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.874f,-47.261f,-2.301f]
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.908f,-47.211f,-2.245f]
execute if score #this.aj.anim aj.i matches 102 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.944f,-47.158f,-2.186f]
execute if score #this.aj.anim aj.i matches 103 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.979f,-47.106f,-2.129f]
execute if score #this.aj.anim aj.i matches 94 run tp @s ^0.246 ^-1.493 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^0.246 ^-1.491 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^0.246 ^-1.489 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^0.246 ^-1.486 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^0.246 ^-1.484 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 99 run tp @s ^0.246 ^-1.482 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^0.246 ^-1.479 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 101 run tp @s ^0.246 ^-1.477 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^0.246 ^-1.474 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^0.246 ^-1.472 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:174}
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:170}
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:165}