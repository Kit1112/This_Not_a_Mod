#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike15,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [37.044f,-3.837f,87.832f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike15,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [36.988f,-3.311f,85.506f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike15,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [36.911f,-2.848f,83.249f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike15,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [36.812f,-2.421f,80.926f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike15,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [36.695f,-2.047f,78.63f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike15,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [36.558f,-1.706f,76.22f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike15,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [36.412f,-1.427f,73.886f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike15,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [36.25f,-1.186f,71.439f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike15,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [36.077f,-0.993f,68.925f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^-2.69 ^-3.373 ^4.107 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^-2.758 ^-3.467 ^4.116 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^-2.828 ^-3.564 ^4.123 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-2.902 ^-3.669 ^4.131 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-2.978 ^-3.777 ^4.137 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^-3.06 ^-3.895 ^4.143 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^-3.139 ^-4.012 ^4.148 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^-3.224 ^-4.138 ^4.153 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^-3.311 ^-4.27 ^4.158 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike15,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:636}