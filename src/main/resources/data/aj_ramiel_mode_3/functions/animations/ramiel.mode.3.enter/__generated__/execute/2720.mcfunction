#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.667f,-46.02f,0.985f]
execute if score #this.aj.anim aj.i matches 125 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.695f,-45.973f,0.938f]
execute if score #this.aj.anim aj.i matches 126 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.724f,-45.926f,0.891f]
execute if score #this.aj.anim aj.i matches 127 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.751f,-45.88f,0.844f]
execute if score #this.aj.anim aj.i matches 128 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.778f,-45.834f,0.799f]
execute if score #this.aj.anim aj.i matches 129 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.805f,-45.789f,0.755f]
execute if score #this.aj.anim aj.i matches 130 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.83f,-45.745f,0.711f]
execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.856f,-45.702f,0.669f]
execute if score #this.aj.anim aj.i matches 132 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.88f,-45.659f,0.627f]
execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.904f,-45.619f,0.588f]
execute if score #this.aj.anim aj.i matches 134 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.927f,-45.578f,0.548f]
execute if score #this.aj.anim aj.i matches 124 run tp @s ^0.246 ^-2.394 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 125 run tp @s ^0.246 ^-2.397 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 126 run tp @s ^0.246 ^-2.399 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 127 run tp @s ^0.246 ^-2.401 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 128 run tp @s ^0.246 ^-2.403 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 129 run tp @s ^0.246 ^-2.405 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 130 run tp @s ^0.246 ^-2.407 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 131 run tp @s ^0.246 ^-2.409 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 132 run tp @s ^0.246 ^-2.411 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 133 run tp @s ^0.246 ^-2.413 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 134 run tp @s ^0.246 ^-2.415 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:617}
execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:615}