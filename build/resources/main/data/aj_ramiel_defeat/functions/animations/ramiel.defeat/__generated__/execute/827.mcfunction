#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-65.047f,-90f]
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-72.106f,-90f]
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-79.024f,-90f]
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-86.224f,-90f]
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-86.718f,90f]
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-79.8f,90f]
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-72.741f,90f]
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-65.682f,90f]
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-58.624f,90f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^3.219 ^-3.428 ^-0.703 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^3.451 ^-3.503 ^-0.512 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^3.639 ^-3.553 ^-0.317 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^3.715 ^-3.564 ^-0.11 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^3.735 ^-3.516 ^0.095 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^3.73 ^-3.425 ^0.295 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^3.714 ^-3.306 ^0.494 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^3.706 ^-3.176 ^0.686 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^3.72 ^-3.051 ^0.867 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:114}