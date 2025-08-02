#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [179.374f,-16.678f,-74.882f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [179.154f,-24.378f,-72.388f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [178.885f,-31.727f,-69.897f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [178.53f,-39.176f,-67.234f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [178.062f,-46.426f,-64.465f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [177.377f,-53.916f,-61.342f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [176.386f,-61.054f,-57.968f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [174.666f,-68.417f,-53.725f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [171.096f,-75.829f,-47.539f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^2 ^-2.488 ^0.065 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^2.108 ^-2.584 ^0.069 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^2.217 ^-2.681 ^0.072 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^2.333 ^-2.785 ^0.073 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^2.452 ^-2.89 ^0.073 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^2.579 ^-3.004 ^0.073 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^2.704 ^-3.117 ^0.071 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^2.837 ^-3.238 ^0.067 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^2.975 ^-3.364 ^0.063 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:178}