#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 31 as @e[type=armor_stand,tag=aj.ramiel_mode_4.innerspike,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,1.681f]
execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_4.innerspike,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-65.388f]
execute if score #this.aj.anim aj.i matches 33 as @e[type=armor_stand,tag=aj.ramiel_mode_4.innerspike,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-131.833f]
execute if score #this.aj.anim aj.i matches 34 as @e[type=armor_stand,tag=aj.ramiel_mode_4.innerspike,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,165.142f]
execute if score #this.aj.anim aj.i matches 35 as @e[type=armor_stand,tag=aj.ramiel_mode_4.innerspike,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,104.402f]
execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_4.innerspike,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,46.133f]
execute if score #this.aj.anim aj.i matches 37 as @e[type=armor_stand,tag=aj.ramiel_mode_4.innerspike,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-8.392f]
execute if score #this.aj.anim aj.i matches 38 as @e[type=armor_stand,tag=aj.ramiel_mode_4.innerspike,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-62.24f]
execute if score #this.aj.anim aj.i matches 31 run tp @s ^0 ^-1.918 ^7.324 ~ ~
execute if score #this.aj.anim aj.i matches 32 run tp @s ^0 ^-1.918 ^7.329 ~ ~
execute if score #this.aj.anim aj.i matches 33 run tp @s ^0 ^-1.918 ^7.335 ~ ~
execute if score #this.aj.anim aj.i matches 34 run tp @s ^0 ^-1.918 ^7.34 ~ ~
execute if score #this.aj.anim aj.i matches 35 run tp @s ^0 ^-1.918 ^7.345 ~ ~
execute if score #this.aj.anim aj.i matches 36 run tp @s ^0 ^-1.918 ^7.351 ~ ~
execute if score #this.aj.anim aj.i matches 37 run tp @s ^0 ^-1.918 ^7.356 ~ ~
execute if score #this.aj.anim aj.i matches 38 run tp @s ^0 ^-1.918 ^7.362 ~ ~
execute if score #this.aj.anim aj.i matches 31 as @e[type=armor_stand,tag=aj.ramiel_mode_4.innerspike,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1241}
execute if score #this.aj.anim aj.i matches 33 as @e[type=armor_stand,tag=aj.ramiel_mode_4.innerspike,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1238}
execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_4.innerspike,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1235}