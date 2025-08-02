#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_4.base,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [178.506f,45f,0f]
execute if score #this.aj.anim aj.i matches 107 as @e[type=armor_stand,tag=aj.ramiel_mode_4.base,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [178.691f,45f,0f]
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_mode_4.base,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [178.873f,45f,0f]
execute if score #this.aj.anim aj.i matches 109 as @e[type=armor_stand,tag=aj.ramiel_mode_4.base,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [179.04f,45f,0f]
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_mode_4.base,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [179.196f,45f,0f]
execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_4.base,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [179.339f,45f,0f]
execute if score #this.aj.anim aj.i matches 112 as @e[type=armor_stand,tag=aj.ramiel_mode_4.base,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [179.47f,45f,0f]
execute if score #this.aj.anim aj.i matches 113 as @e[type=armor_stand,tag=aj.ramiel_mode_4.base,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [179.588f,45f,0f]
execute if score #this.aj.anim aj.i matches 106..113 run tp @s ^0 ^-1.918 ^-3.845 ~ ~
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_4.base,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:191}