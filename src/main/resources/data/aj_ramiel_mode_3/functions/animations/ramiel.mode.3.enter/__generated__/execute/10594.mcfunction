#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 155 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-90f,0f]
execute if score #this.aj.anim aj.i matches 155 run tp @s ^7.57 ^0.334 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 156 run tp @s ^7.57 ^0.365 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 157 run tp @s ^7.57 ^0.396 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 158 run tp @s ^7.57 ^0.427 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 159 run tp @s ^7.57 ^0.459 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 160 run tp @s ^7.57 ^0.492 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 161..164 run tp @s ^7.57 ^0.496 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 155 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4850}
execute if score #this.aj.anim aj.i matches 156 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4851}
execute if score #this.aj.anim aj.i matches 157 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4852}
execute if score #this.aj.anim aj.i matches 158 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4853}
execute if score #this.aj.anim aj.i matches 159 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4854}
execute if score #this.aj.anim aj.i matches 160 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4855}