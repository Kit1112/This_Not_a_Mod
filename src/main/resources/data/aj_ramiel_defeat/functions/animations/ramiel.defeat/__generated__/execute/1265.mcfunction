#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,65.047f,90f]
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,72.106f,90f]
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,79.024f,90f]
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,86.224f,90f]
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,86.718f,-90f]
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,79.8f,-90f]
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,72.741f,-90f]
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,65.682f,-90f]
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,58.624f,-90f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^0.554 ^-1.943 ^-0.069 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^0.786 ^-1.951 ^-0.065 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^0.973 ^-1.959 ^-0.061 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^1.05 ^-1.951 ^-0.055 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^1.07 ^-1.908 ^-0.049 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^1.064 ^-1.847 ^-0.042 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^1.049 ^-1.781 ^-0.034 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^1.04 ^-1.727 ^-0.026 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^1.055 ^-1.701 ^-0.017 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:178}