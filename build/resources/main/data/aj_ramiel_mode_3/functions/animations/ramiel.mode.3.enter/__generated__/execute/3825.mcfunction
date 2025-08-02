#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,0f,0f]
execute if score #this.aj.anim aj.i matches 83 run tp @s ^0 ^-1.918 ^5.244 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^0 ^-1.918 ^4.56 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^0 ^-1.918 ^3.903 ~ ~
execute if score #this.aj.anim aj.i matches 86..89 run tp @s ^0 ^-1.918 ^3.796 ~ ~
execute if score #this.aj.anim aj.i matches 90 run tp @s ^0 ^-1.918 ^6.967 ~ ~
execute if score #this.aj.anim aj.i matches 91 run tp @s ^0 ^-1.869 ^7.57 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^0 ^-1.812 ^7.57 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^0 ^-1.756 ^7.57 ~ ~
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:969}
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1003}
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1004}
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1005}