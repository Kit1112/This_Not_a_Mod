#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-38.435f,90f]
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-45.494f,90f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-52.694f,90f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.23f,-59.085f,88.25f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.134f,-65.386f,86.208f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.888f,-71.728f,84.287f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.265f,-78.111f,82.724f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [32.04f,-84.403f,82.79f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-120.885f,-88.892f,-126.543f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^-3.892 ^-2.633 ^1.243 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^-4.002 ^-2.857 ^1.113 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^-4.19 ^-3.147 ^0.962 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^-4.236 ^-3.412 ^0.816 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^-4.244 ^-3.658 ^0.663 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^-4.25 ^-3.893 ^0.503 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^-4.255 ^-4.115 ^0.337 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^-4.263 ^-4.319 ^0.17 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^-4.275 ^-4.516 ^-0.006 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:368}