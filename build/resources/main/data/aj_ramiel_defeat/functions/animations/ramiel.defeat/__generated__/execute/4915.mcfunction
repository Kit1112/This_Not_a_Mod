#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike14,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [142.044f,-3.837f,87.832f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike14,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [141.988f,-3.311f,85.506f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike14,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [141.911f,-2.848f,83.249f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike14,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [141.812f,-2.421f,80.926f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike14,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [141.695f,-2.047f,78.63f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike14,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [141.558f,-1.706f,76.22f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike14,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [141.412f,-1.427f,73.886f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike14,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [141.25f,-1.186f,71.439f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike14,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [141.077f,-0.993f,68.925f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^-5.984 ^-4.599 ^0.806 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^-6.001 ^-4.857 ^0.828 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^-6.014 ^-5.107 ^0.85 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-6.025 ^-5.365 ^0.872 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-6.033 ^-5.619 ^0.893 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^-6.037 ^-5.884 ^0.914 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^-6.036 ^-6.139 ^0.934 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^-6.032 ^-6.403 ^0.953 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^-6.022 ^-6.669 ^0.972 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike14,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:616}