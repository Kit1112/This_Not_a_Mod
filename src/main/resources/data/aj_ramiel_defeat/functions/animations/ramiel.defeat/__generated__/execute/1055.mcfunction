#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,24.953f,-90f]
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,17.894f,-90f]
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,10.976f,-90f]
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,3.776f,-90f]
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-3.282f,-90f]
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-10.2f,-90f]
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-17.259f,-90f]
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-24.318f,-90f]
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-31.376f,-90f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^3.337 ^-1.1 ^-1.758 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^3.569 ^-1.322 ^-1.845 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^3.756 ^-1.549 ^-1.904 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^3.833 ^-1.775 ^-1.935 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^3.853 ^-1.964 ^-1.936 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^3.847 ^-2.13 ^-1.908 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^3.832 ^-2.291 ^-1.852 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^3.823 ^-2.456 ^-1.767 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^3.838 ^-2.639 ^-1.655 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:146}