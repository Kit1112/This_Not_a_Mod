#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 104 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.013f,47.055f,-2.073f]
execute if score #this.aj.anim aj.i matches 105 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.048f,47.002f,-2.016f]
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.083f,46.949f,-1.957f]
execute if score #this.aj.anim aj.i matches 107 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.117f,46.897f,-1.901f]
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.151f,46.846f,-1.845f]
execute if score #this.aj.anim aj.i matches 109 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.186f,46.792f,-1.787f]
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.22f,46.739f,-1.731f]
execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.254f,46.686f,-1.674f]
execute if score #this.aj.anim aj.i matches 112 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.287f,46.634f,-1.62f]
execute if score #this.aj.anim aj.i matches 113 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.322f,46.58f,-1.563f]
execute if score #this.aj.anim aj.i matches 104 run tp @s ^-0.224 ^-2.373 ^0.224 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^-0.224 ^-2.375 ^0.224 ~ ~
execute if score #this.aj.anim aj.i matches 106 run tp @s ^-0.224 ^-2.378 ^0.224 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^-0.224 ^-2.38 ^0.224 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^-0.224 ^-2.383 ^0.224 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^-0.224 ^-2.385 ^0.224 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^-0.224 ^-2.388 ^0.224 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^-0.224 ^-2.39 ^0.224 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^-0.224 ^-2.393 ^0.224 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^-0.224 ^-2.395 ^0.224 ~ ~
execute if score #this.aj.anim aj.i matches 104 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:536}
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:530}