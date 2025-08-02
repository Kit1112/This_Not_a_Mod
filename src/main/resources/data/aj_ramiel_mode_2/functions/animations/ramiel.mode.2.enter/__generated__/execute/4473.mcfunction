#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_2.inner2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,28.597f,-90f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_mode_2.inner2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,83.422f,-90f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_mode_2.inner2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,37.764f,90f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_mode_2.inner2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-25.011f,90f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_2.inner2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-89.085f,90f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_2.inner2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-25.881f,-90f]
execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_mode_2.inner2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,42.574f,-90f]
execute if score #this.aj.anim aj.i matches 84 run tp @s ^5.111 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^5.121 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^5.131 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^5.141 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^5.151 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^5.161 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 90 run tp @s ^5.171 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_2.inner2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1590}
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_mode_2.inner2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1591}
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_mode_2.inner2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1592}
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_mode_2.inner2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1593}
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_2.inner2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1594}
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_2.inner2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1595}
execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_mode_2.inner2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1596}