#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 31 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter3,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,90f,0f]
execute if score #this.aj.anim aj.i matches 31 run tp @s ^1.024 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 32..33 run tp @s ^1.016 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 34 run tp @s ^1.011 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 35 run tp @s ^0.992 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 36 run tp @s ^0.969 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 37 run tp @s ^0.951 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 38 run tp @s ^0.947 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 31 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter3,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:702}