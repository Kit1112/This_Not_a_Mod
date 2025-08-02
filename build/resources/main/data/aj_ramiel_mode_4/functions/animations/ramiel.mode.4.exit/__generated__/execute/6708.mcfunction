#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 114 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [151.284f,52.4f,-168.412f]
execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [149.039f,51.081f,-172.58f]
execute if score #this.aj.anim aj.i matches 116 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [148.25f,49.897f,-174.428f]
execute if score #this.aj.anim aj.i matches 117 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [147.409f,48.653f,-176.09f]
execute if score #this.aj.anim aj.i matches 118 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.585f,47.477f,-177.481f]
execute if score #this.aj.anim aj.i matches 119 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [145.722f,46.29f,-178.748f]
execute if score #this.aj.anim aj.i matches 120 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.883f,45.174f,-179.838f]
execute if score #this.aj.anim aj.i matches 114 run tp @s ^-1.081 ^-1.001 ^-1.112 ~ ~
execute if score #this.aj.anim aj.i matches 115 run tp @s ^-1.097 ^-0.841 ^-1.097 ~ ~
execute if score #this.aj.anim aj.i matches 116 run tp @s ^-1.097 ^-0.622 ^-1.097 ~ ~
execute if score #this.aj.anim aj.i matches 117 run tp @s ^-1.097 ^-0.395 ^-1.097 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^-1.097 ^-0.177 ^-1.097 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^-1.097 ^0.05 ^-1.097 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^-1.097 ^0.272 ^-1.097 ~ ~
execute if score #this.aj.anim aj.i matches 114 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:142}
execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:167}
execute if score #this.aj.anim aj.i matches 116 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:168}
execute if score #this.aj.anim aj.i matches 117 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:169}
execute if score #this.aj.anim aj.i matches 118 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:170}
execute if score #this.aj.anim aj.i matches 119 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:171}
execute if score #this.aj.anim aj.i matches 120 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:172}