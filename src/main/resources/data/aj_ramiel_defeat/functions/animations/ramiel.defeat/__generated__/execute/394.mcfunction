#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,51.565f,-90f]
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,44.506f,-90f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,37.306f,-90f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.738f,29.58f,-88.238f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.698f,21.763f,-86.121f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.633f,13.987f,-83.972f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.546f,6.253f,-81.782f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.437f,-1.283f,-79.588f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.296f,-9.08f,-77.246f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^4.085 ^0.027 ^-1.328 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^4.195 ^-0.227 ^-1.524 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^4.383 ^-0.59 ^-1.699 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^4.504 ^-1.003 ^-1.858 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^4.591 ^-1.441 ^-1.982 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^4.66 ^-1.902 ^-2.067 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^4.711 ^-2.377 ^-2.113 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^4.742 ^-2.85 ^-2.12 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^4.754 ^-3.343 ^-2.086 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:50}