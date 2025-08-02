#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.145f,7.533f,-104.859f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-143.955f,14.231f,-107.067f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-143.736f,20.712f,-109.158f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-143.467f,27.373f,-111.247f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-143.14f,33.947f,-113.231f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-142.708f,40.838f,-115.202f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-142.162f,47.504f,-116.959f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-141.375f,54.486f,-118.565f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-140.173f,61.649f,-119.794f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^-4.623 ^-2.915 ^-1.701 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^-4.773 ^-2.937 ^-1.655 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^-4.931 ^-2.971 ^-1.587 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-5.102 ^-3.022 ^-1.496 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-5.278 ^-3.091 ^-1.385 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^-5.465 ^-3.183 ^-1.248 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^-5.647 ^-3.294 ^-1.097 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^-5.834 ^-3.433 ^-0.921 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^-6.017 ^-3.6 ^-0.726 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:400}