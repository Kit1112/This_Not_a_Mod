#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 151 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [37.57f,27.184f,7.768f]
execute if score #this.aj.anim aj.i matches 152 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [37.477f,26.863f,7.804f]
execute if score #this.aj.anim aj.i matches 153 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [37.714f,27.72f,7.702f]
execute if score #this.aj.anim aj.i matches 154 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [38.148f,29.846f,7.375f]
execute if score #this.aj.anim aj.i matches 155 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [38.4f,32.828f,6.711f]
execute if score #this.aj.anim aj.i matches 156 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [38.183f,36.298f,5.556f]
execute if score #this.aj.anim aj.i matches 157 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [37.522f,39.437f,4.06f]
execute if score #this.aj.anim aj.i matches 158 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [36.68f,41.937f,2.487f]
execute if score #this.aj.anim aj.i matches 159 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.874f,43.781f,1.071f]
execute if score #this.aj.anim aj.i matches 160 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.309f,44.891f,0.1f]
execute if score #this.aj.anim aj.i matches 151 run tp @s ^-0.158 ^-4.104 ^0.158 ~ ~
execute if score #this.aj.anim aj.i matches 152 run tp @s ^-0.173 ^-4.439 ^0.173 ~ ~
execute if score #this.aj.anim aj.i matches 153 run tp @s ^-0.217 ^-4.679 ^0.217 ~ ~
execute if score #this.aj.anim aj.i matches 154 run tp @s ^-0.3 ^-4.806 ^0.3 ~ ~
execute if score #this.aj.anim aj.i matches 155 run tp @s ^-0.419 ^-4.858 ^0.419 ~ ~
execute if score #this.aj.anim aj.i matches 156 run tp @s ^-0.571 ^-4.858 ^0.571 ~ ~
execute if score #this.aj.anim aj.i matches 157 run tp @s ^-0.731 ^-4.823 ^0.731 ~ ~
execute if score #this.aj.anim aj.i matches 158 run tp @s ^-0.882 ^-4.773 ^0.882 ~ ~
execute if score #this.aj.anim aj.i matches 159 run tp @s ^-1.015 ^-4.725 ^1.015 ~ ~
execute if score #this.aj.anim aj.i matches 160 run tp @s ^-1.111 ^-4.7 ^1.111 ~ ~
execute if score #this.aj.anim aj.i matches 151 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:589}
execute if score #this.aj.anim aj.i matches 152 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:590}
execute if score #this.aj.anim aj.i matches 153 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:515}
execute if score #this.aj.anim aj.i matches 154 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:591}
execute if score #this.aj.anim aj.i matches 155 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:592}
execute if score #this.aj.anim aj.i matches 156 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:593}
execute if score #this.aj.anim aj.i matches 157 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:594}
execute if score #this.aj.anim aj.i matches 158 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:595}
execute if score #this.aj.anim aj.i matches 159 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:596}
execute if score #this.aj.anim aj.i matches 160 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:597}