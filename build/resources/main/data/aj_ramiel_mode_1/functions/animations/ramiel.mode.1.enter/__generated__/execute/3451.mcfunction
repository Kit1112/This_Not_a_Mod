#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,48.971f,-180f]
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,52.553f,-180f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,56.073f,-180f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,59.526f,-180f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,63.042f,-180f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,66.218f,-180f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,69.45f,-180f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,72.727f,-180f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,75.731f,-180f]
execute if score #this.aj.anim aj.i matches 80 run tp @s ^0.022 ^-5.533 ^-0.002 ~ ~
execute if score #this.aj.anim aj.i matches 81 run tp @s ^0.022 ^-5.529 ^-0.003 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^0.022 ^-5.526 ^-0.004 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^0.021 ^-5.522 ^-0.006 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^0.021 ^-5.519 ^-0.007 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^0.021 ^-5.517 ^-0.008 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^0.02 ^-5.515 ^-0.009 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^0.02 ^-5.513 ^-0.01 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^0.019 ^-5.512 ^-0.011 ~ ~
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:965}