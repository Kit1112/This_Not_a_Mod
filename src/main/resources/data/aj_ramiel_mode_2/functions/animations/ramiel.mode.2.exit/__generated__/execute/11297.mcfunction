#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [149.646f,33.547f,-90.631f]
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [150.18f,30.487f,-90.868f]
execute if score #this.aj.anim aj.i matches 56 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [150.665f,27.402f,-91.122f]
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [151.129f,24.113f,-91.405f]
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [151.556f,20.692f,-91.707f]
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [151.948f,17.072f,-92.03f]
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [152.645f,8.386f,-92.78f]
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [153.022f,-3.321f,-93.628f]
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [152.554f,-16.025f,-94.097f]
execute if score #this.aj.anim aj.i matches 54 run tp @s ^4.426 ^-1.508 ^-0.545 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^4.351 ^-1.48 ^-0.632 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^4.274 ^-1.462 ^-0.717 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^4.192 ^-1.454 ^-0.806 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^4.107 ^-1.458 ^-0.893 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^4.018 ^-1.474 ^-0.981 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^3.807 ^-1.561 ^-1.164 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^3.537 ^-1.771 ^-1.336 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^3.269 ^-2.089 ^-1.407 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:176}
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:177}
execute if score #this.aj.anim aj.i matches 56 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:178}
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:179}
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:161}
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:180}
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:181}
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:158}
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:183}