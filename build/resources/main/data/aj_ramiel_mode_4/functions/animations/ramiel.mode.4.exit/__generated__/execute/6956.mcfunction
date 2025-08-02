#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 114 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone5,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [30.063f,52.073f,-7.363f]
execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone5,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [30.502f,51.081f,-7.305f]
execute if score #this.aj.anim aj.i matches 116 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone5,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [31.764f,49.897f,-5.575f]
execute if score #this.aj.anim aj.i matches 117 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone5,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [32.848f,48.653f,-3.942f]
execute if score #this.aj.anim aj.i matches 118 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone5,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [33.725f,47.477f,-2.544f]
execute if score #this.aj.anim aj.i matches 119 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone5,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.503f,46.29f,-1.261f]
execute if score #this.aj.anim aj.i matches 120 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone5,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.155f,45.174f,-0.162f]
execute if score #this.aj.anim aj.i matches 114 run tp @s ^-0.913 ^-2.835 ^0.883 ~ ~
execute if score #this.aj.anim aj.i matches 115 run tp @s ^-0.898 ^-2.995 ^0.898 ~ ~
execute if score #this.aj.anim aj.i matches 116 run tp @s ^-0.898 ^-3.214 ^0.898 ~ ~
execute if score #this.aj.anim aj.i matches 117 run tp @s ^-0.898 ^-3.441 ^0.898 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^-0.898 ^-3.659 ^0.898 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^-0.898 ^-3.886 ^0.898 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^-0.898 ^-4.108 ^0.898 ~ ~
execute if score #this.aj.anim aj.i matches 114 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone5,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:216}
execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone5,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:241}
execute if score #this.aj.anim aj.i matches 116 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone5,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:242}
execute if score #this.aj.anim aj.i matches 117 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone5,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:243}
execute if score #this.aj.anim aj.i matches 118 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone5,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:244}
execute if score #this.aj.anim aj.i matches 119 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone5,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:245}
execute if score #this.aj.anim aj.i matches 120 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone5,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:246}