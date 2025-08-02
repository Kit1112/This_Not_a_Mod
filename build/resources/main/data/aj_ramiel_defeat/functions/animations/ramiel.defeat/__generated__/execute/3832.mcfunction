#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-9.918f,57.203f,71.282f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-10.302f,57.838f,72.726f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-10.707f,58.566f,74.512f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-11.053f,59.264f,76.375f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-11.338f,59.929f,78.315f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-11.556f,60.548f,80.293f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-11.719f,61.155f,82.433f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^4.391 ^0.895 ^2.067 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^4.501 ^0.816 ^2.067 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^4.689 ^0.657 ^2.067 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^4.856 ^0.497 ^2.038 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^5.015 ^0.334 ^2.006 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^5.178 ^0.155 ^1.977 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^5.344 ^-0.036 ^1.951 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^5.51 ^-0.237 ^1.929 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^5.684 ^-0.459 ^1.908 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike8,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:337}