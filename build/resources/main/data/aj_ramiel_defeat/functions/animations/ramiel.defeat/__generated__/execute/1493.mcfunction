#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,24.953f,90f]
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,17.894f,90f]
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,10.976f,90f]
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,3.776f,90f]
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-3.282f,90f]
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-10.2f,90f]
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-17.259f,90f]
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-24.318f,90f]
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-31.376f,90f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^-3.337 ^-1.248 ^1.439 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^-3.568 ^-1.43 ^1.511 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^-3.756 ^-1.616 ^1.558 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^-3.832 ^-1.798 ^1.584 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^-3.853 ^-1.944 ^1.585 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^-3.847 ^-2.067 ^1.562 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^-3.832 ^-2.186 ^1.516 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^-3.823 ^-2.311 ^1.447 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^-3.837 ^-2.456 ^1.355 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:368}