#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike9,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [166.896f,7.072f,74.987f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike9,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [166.723f,7.573f,72.635f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike9,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [166.543f,8.007f,70.35f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike9,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [166.348f,8.402f,67.994f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike9,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [166.149f,8.74f,65.664f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike9,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [165.936f,9.041f,63.217f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike9,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [165.729f,9.281f,60.846f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike9,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [165.513f,9.479f,58.36f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike9,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [165.297f,9.627f,55.807f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^-3.797 ^-4.554 ^-2.78 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^-3.818 ^-4.756 ^-2.759 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^-3.838 ^-4.95 ^-2.74 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-3.859 ^-5.147 ^-2.721 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-3.88 ^-5.339 ^-2.703 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^-3.901 ^-5.536 ^-2.686 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^-3.92 ^-5.724 ^-2.671 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^-3.94 ^-5.915 ^-2.657 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^-3.959 ^-6.106 ^-2.644 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike9,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:516}