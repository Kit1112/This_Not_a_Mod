#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 114 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone6,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [30.52f,-52.562f,8.829f]
execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone6,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [30.502f,-51.081f,7.305f]
execute if score #this.aj.anim aj.i matches 116 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone6,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [31.764f,-49.897f,5.575f]
execute if score #this.aj.anim aj.i matches 117 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone6,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [32.848f,-48.653f,3.942f]
execute if score #this.aj.anim aj.i matches 118 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone6,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [33.725f,-47.477f,2.544f]
execute if score #this.aj.anim aj.i matches 119 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone6,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.503f,-46.29f,1.261f]
execute if score #this.aj.anim aj.i matches 120 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone6,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.155f,-45.174f,0.162f]
execute if score #this.aj.anim aj.i matches 114 run tp @s ^0.972 ^-2.822 ^0.972 ~ ~
execute if score #this.aj.anim aj.i matches 115 run tp @s ^0.986 ^-2.935 ^0.986 ~ ~
execute if score #this.aj.anim aj.i matches 116 run tp @s ^0.986 ^-3.141 ^0.986 ~ ~
execute if score #this.aj.anim aj.i matches 117 run tp @s ^0.986 ^-3.355 ^0.986 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^0.986 ^-3.561 ^0.986 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^0.986 ^-3.775 ^0.986 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^0.986 ^-3.985 ^0.986 ~ ~
execute if score #this.aj.anim aj.i matches 114 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone6,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:253}
execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone6,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:278}
execute if score #this.aj.anim aj.i matches 116 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone6,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:279}
execute if score #this.aj.anim aj.i matches 117 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone6,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:280}
execute if score #this.aj.anim aj.i matches 118 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone6,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:281}
execute if score #this.aj.anim aj.i matches 119 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone6,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:282}
execute if score #this.aj.anim aj.i matches 120 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone6,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:283}