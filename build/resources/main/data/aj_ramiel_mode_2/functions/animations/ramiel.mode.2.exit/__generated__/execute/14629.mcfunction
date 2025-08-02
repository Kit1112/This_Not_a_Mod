#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer5,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,24.038f,0f]
execute if score #this.aj.anim aj.i matches 37 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer5,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,47.182f,0f]
execute if score #this.aj.anim aj.i matches 38 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer5,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,70.326f,0f]
execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer5,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,86.068f,-180f]
execute if score #this.aj.anim aj.i matches 40 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer5,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,63.387f,-180f]
execute if score #this.aj.anim aj.i matches 41 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer5,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,40.243f,-180f]
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer5,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,16.636f,-180f]
execute if score #this.aj.anim aj.i matches 43 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer5,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-6.045f,-180f]
execute if score #this.aj.anim aj.i matches 44 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer5,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-29.188f,-180f]
execute if score #this.aj.anim aj.i matches 36 run tp @s ^-0.015 ^2.022 ^-0.04 ~ ~
execute if score #this.aj.anim aj.i matches 37 run tp @s ^0.002 ^1.801 ^-0.049 ~ ~
execute if score #this.aj.anim aj.i matches 38 run tp @s ^0.023 ^1.58 ^-0.049 ~ ~
execute if score #this.aj.anim aj.i matches 39 run tp @s ^0.045 ^1.355 ^-0.039 ~ ~
execute if score #this.aj.anim aj.i matches 40 run tp @s ^0.061 ^1.14 ^-0.02 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^0.059 ^0.956 ^0.005 ~ ~
execute if score #this.aj.anim aj.i matches 42 run tp @s ^0.047 ^0.768 ^0.025 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^0.03 ^0.588 ^0.037 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^0.012 ^0.404 ^0.041 ~ ~
execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer5,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1836}
execute if score #this.aj.anim aj.i matches 37 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer5,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1837}
execute if score #this.aj.anim aj.i matches 38 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer5,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1838}
execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer5,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1839}
execute if score #this.aj.anim aj.i matches 40 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer5,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1840}
execute if score #this.aj.anim aj.i matches 41 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer5,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1841}
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer5,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1842}
execute if score #this.aj.anim aj.i matches 43 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer5,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1843}
execute if score #this.aj.anim aj.i matches 44 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer5,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1844}