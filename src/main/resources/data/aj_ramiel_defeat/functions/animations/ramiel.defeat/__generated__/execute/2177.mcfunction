#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,65.047f,-90f]
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,72.106f,-90f]
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,79.024f,-90f]
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,86.224f,-90f]
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,86.718f,90f]
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,79.8f,90f]
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,72.741f,90f]
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,65.682f,90f]
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,58.624f,90f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^-3.445 ^-0.641 ^-0.594 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^-3.677 ^-0.578 ^-0.433 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^-3.864 ^-0.535 ^-0.268 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^-3.941 ^-0.497 ^-0.093 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^-3.961 ^-0.447 ^0.081 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^-3.955 ^-0.4 ^0.249 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^-3.94 ^-0.37 ^0.418 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^-3.931 ^-0.374 ^0.58 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^-3.946 ^-0.427 ^0.733 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:464}