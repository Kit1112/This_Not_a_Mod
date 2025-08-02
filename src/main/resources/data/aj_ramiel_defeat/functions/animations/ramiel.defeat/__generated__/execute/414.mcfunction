#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.124f,-16.678f,-74.882f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [143.904f,-24.378f,-72.388f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [143.635f,-31.727f,-69.897f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [143.28f,-39.176f,-67.234f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [142.812f,-46.426f,-64.465f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [142.127f,-53.916f,-61.342f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [141.136f,-61.054f,-57.968f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [139.416f,-68.417f,-53.725f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [135.846f,-75.829f,-47.539f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^4.747 ^-3.82 ^-2.015 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^4.721 ^-4.293 ^-1.906 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^4.681 ^-4.729 ^-1.768 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^4.627 ^-5.15 ^-1.596 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^4.566 ^-5.536 ^-1.402 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^4.495 ^-5.904 ^-1.177 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^4.425 ^-6.225 ^-0.941 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^4.354 ^-6.522 ^-0.681 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^4.289 ^-6.785 ^-0.404 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:50}