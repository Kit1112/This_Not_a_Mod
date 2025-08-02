#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-65.047f,90f]
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-72.106f,90f]
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-79.024f,90f]
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-86.224f,90f]
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-86.718f,-90f]
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-79.8f,-90f]
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-72.741f,-90f]
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-65.682f,-90f]
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-58.624f,-90f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^-3.181 ^-3.499 ^0.736 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^-3.412 ^-3.577 ^0.536 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^-3.6 ^-3.63 ^0.332 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^-3.676 ^-3.642 ^0.115 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^-3.696 ^-3.594 ^-0.1 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^-3.691 ^-3.502 ^-0.309 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^-3.675 ^-3.381 ^-0.517 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^-3.667 ^-3.247 ^-0.718 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^-3.681 ^-3.118 ^-0.908 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:400}