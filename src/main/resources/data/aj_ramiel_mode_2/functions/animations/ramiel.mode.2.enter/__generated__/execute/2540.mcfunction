#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 114 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core3,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,90f,0f]
execute if score #this.aj.anim aj.i matches 114 run tp @s ^5.126 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 115 run tp @s ^5.132 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 116 run tp @s ^5.137 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 117 run tp @s ^5.142 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^5.147 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^5.152 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^5.156 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 114 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core3,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1075}
execute if score #this.aj.anim aj.i matches 120 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core3,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1085}