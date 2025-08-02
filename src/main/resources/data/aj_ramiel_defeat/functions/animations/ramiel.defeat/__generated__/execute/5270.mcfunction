#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike16,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [172.044f,-3.837f,87.832f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike16,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [171.988f,-3.311f,85.506f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike16,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [171.911f,-2.848f,83.249f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike16,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [171.812f,-2.421f,80.926f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike16,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [171.695f,-2.047f,78.63f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike16,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [171.558f,-1.706f,76.22f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike16,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [171.412f,-1.427f,73.886f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike16,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [171.25f,-1.186f,71.439f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike16,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [171.077f,-0.993f,68.925f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^-6.662 ^-3.474 ^-2.66 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^-6.725 ^-3.792 ^-2.648 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^-6.781 ^-4.1 ^-2.634 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-6.834 ^-4.417 ^-2.619 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-6.882 ^-4.728 ^-2.604 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^-6.926 ^-5.052 ^-2.587 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^-6.962 ^-5.362 ^-2.57 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^-6.995 ^-5.683 ^-2.553 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^-7.021 ^-6.008 ^-2.536 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike16,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:655}