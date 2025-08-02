#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core3,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,90f,0f]
execute if score #this.aj.anim aj.i matches 61 run tp @s ^4.695 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^4.7 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 63 run tp @s ^4.705 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^4.71 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^4.716 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^4.722 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^4.728 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^4.735 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core3,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1026}
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core3,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1031}