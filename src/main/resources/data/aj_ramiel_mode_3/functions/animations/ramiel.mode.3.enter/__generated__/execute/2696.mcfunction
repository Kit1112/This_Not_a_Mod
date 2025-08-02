#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 114 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.354f,-46.529f,1.509f]
execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.388f,-46.476f,1.453f]
execute if score #this.aj.anim aj.i matches 116 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.42f,-46.424f,1.399f]
execute if score #this.aj.anim aj.i matches 117 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.453f,-46.372f,1.345f]
execute if score #this.aj.anim aj.i matches 118 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.484f,-46.321f,1.292f]
execute if score #this.aj.anim aj.i matches 119 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.516f,-46.269f,1.239f]
execute if score #this.aj.anim aj.i matches 120 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.546f,-46.22f,1.188f]
execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.578f,-46.168f,1.135f]
execute if score #this.aj.anim aj.i matches 122 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.608f,-46.119f,1.085f]
execute if score #this.aj.anim aj.i matches 123 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.638f,-46.07f,1.035f]
execute if score #this.aj.anim aj.i matches 114 run tp @s ^0.246 ^-2.371 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 115 run tp @s ^0.246 ^-2.373 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 116 run tp @s ^0.246 ^-2.376 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 117 run tp @s ^0.246 ^-2.378 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^0.246 ^-2.38 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^0.246 ^-2.383 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^0.246 ^-2.385 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 121 run tp @s ^0.246 ^-2.388 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 122 run tp @s ^0.246 ^-2.39 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 123 run tp @s ^0.246 ^-2.392 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 114 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:620}