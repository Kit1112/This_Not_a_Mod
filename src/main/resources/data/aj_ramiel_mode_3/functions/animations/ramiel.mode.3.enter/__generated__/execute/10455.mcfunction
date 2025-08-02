#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-90f,0f]
execute if score #this.aj.anim aj.i matches 83 run tp @s ^5.244 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^4.56 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^3.903 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 86..89 run tp @s ^3.796 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 90 run tp @s ^6.967 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 91 run tp @s ^7.57 ^-1.869 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^7.57 ^-1.812 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^7.57 ^-1.756 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4758}
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4792}
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4793}
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4794}