#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,90f,0f]
execute if score #this.aj.anim aj.i matches 111 run tp @s ^-5.583 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^-5.35 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^-5.09 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 114 run tp @s ^-6.381 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 115 run tp @s ^-6.413 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 116 run tp @s ^-6.149 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 117 run tp @s ^-5.884 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^-5.62 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^-5.347 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^-5.072 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2257}
execute if score #this.aj.anim aj.i matches 114 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2264}
execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2232}