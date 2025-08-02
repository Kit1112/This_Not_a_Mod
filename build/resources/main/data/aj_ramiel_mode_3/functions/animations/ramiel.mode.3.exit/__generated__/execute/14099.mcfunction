#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,0f,0f]
execute if score #this.aj.anim aj.i matches 111 run tp @s ^0 ^-1.918 ^5.583 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^0 ^-1.918 ^5.35 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^0 ^-1.918 ^5.09 ~ ~
execute if score #this.aj.anim aj.i matches 114 run tp @s ^0 ^-1.918 ^6.381 ~ ~
execute if score #this.aj.anim aj.i matches 115 run tp @s ^0 ^-1.918 ^6.413 ~ ~
execute if score #this.aj.anim aj.i matches 116 run tp @s ^0 ^-1.918 ^6.149 ~ ~
execute if score #this.aj.anim aj.i matches 117 run tp @s ^0 ^-1.918 ^5.884 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^0 ^-1.918 ^5.62 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^0 ^-1.918 ^5.347 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^0 ^-1.918 ^5.072 ~ ~
execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:994}
execute if score #this.aj.anim aj.i matches 114 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1001}
execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:969}