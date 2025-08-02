#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 51 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-90f,0f]
execute if score #this.aj.anim aj.i matches 51..54 run tp @s ^7.571 ^-1.004 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^7.571 ^-1.052 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^7.571 ^-1.11 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^7.571 ^-1.166 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^7.571 ^-1.224 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^7.571 ^-1.282 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^7.571 ^-1.339 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 51 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4807}
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4806}
execute if score #this.aj.anim aj.i matches 56 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4904}
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4905}
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4906}
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4907}
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4801}