#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.642f,47.557f,-177.391f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.607f,47.508f,-177.446f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.573f,47.461f,-177.499f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.538f,47.412f,-177.554f]
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.502f,47.362f,-177.61f]
execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.466f,47.312f,-177.665f]
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.43f,47.261f,-177.721f]
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.394f,47.211f,-177.776f]
execute if score #this.aj.anim aj.i matches 102 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.355f,47.158f,-177.834f]
execute if score #this.aj.anim aj.i matches 103 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.318f,47.106f,-177.891f]
execute if score #this.aj.anim aj.i matches 94 run tp @s ^-0.274 ^-1.487 ^-0.274 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^-0.274 ^-1.485 ^-0.274 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^-0.274 ^-1.482 ^-0.274 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^-0.274 ^-1.48 ^-0.274 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^-0.274 ^-1.478 ^-0.274 ~ ~
execute if score #this.aj.anim aj.i matches 99 run tp @s ^-0.274 ^-1.475 ^-0.274 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^-0.274 ^-1.473 ^-0.274 ~ ~
execute if score #this.aj.anim aj.i matches 101 run tp @s ^-0.274 ^-1.471 ^-0.274 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^-0.274 ^-1.468 ^-0.274 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^-0.274 ^-1.466 ^-0.274 ~ ~
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:354}
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:350}
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:345}