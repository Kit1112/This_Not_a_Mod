#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_4.base,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [168.715f,45f,0f]
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_4.base,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [168.938f,45f,0f]
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_4.base,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [169.17f,45f,0f]
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_4.base,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [169.409f,45f,0f]
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_mode_4.base,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [169.651f,45f,0f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_mode_4.base,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [169.909f,45f,0f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_mode_4.base,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [170.169f,45f,0f]
execute if score #this.aj.anim aj.i matches 69..75 run tp @s ^0 ^-1.918 ^-3.845 ~ ~
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_4.base,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:191}