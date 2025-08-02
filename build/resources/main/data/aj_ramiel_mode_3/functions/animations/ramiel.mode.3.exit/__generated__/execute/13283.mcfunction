#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 151 as @e[type=armor_stand,tag=aj.ramiel_mode_3.base,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,45f,0f]
execute if score #this.aj.anim aj.i matches 151 run tp @s ^0 ^-1.918 ^-0.01 ~ ~
execute if score #this.aj.anim aj.i matches 152 run tp @s ^0 ^-1.918 ^-0.011 ~ ~
execute if score #this.aj.anim aj.i matches 153 run tp @s ^0 ^-1.918 ^-0.014 ~ ~
execute if score #this.aj.anim aj.i matches 154 run tp @s ^0 ^-1.918 ^-0.02 ~ ~
execute if score #this.aj.anim aj.i matches 155 run tp @s ^0 ^-1.918 ^-0.027 ~ ~
execute if score #this.aj.anim aj.i matches 156 run tp @s ^0 ^-1.918 ^-0.037 ~ ~
execute if score #this.aj.anim aj.i matches 157 run tp @s ^0 ^-1.918 ^-0.048 ~ ~
execute if score #this.aj.anim aj.i matches 158 run tp @s ^0 ^-1.918 ^-0.058 ~ ~
execute if score #this.aj.anim aj.i matches 159 run tp @s ^0 ^-1.918 ^-0.066 ~ ~
execute if score #this.aj.anim aj.i matches 160 run tp @s ^0 ^-1.918 ^-0.073 ~ ~
execute if score #this.aj.anim aj.i matches 151 as @e[type=armor_stand,tag=aj.ramiel_mode_3.base,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:499}
execute if score #this.aj.anim aj.i matches 152 as @e[type=armor_stand,tag=aj.ramiel_mode_3.base,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:500}
execute if score #this.aj.anim aj.i matches 153 as @e[type=armor_stand,tag=aj.ramiel_mode_3.base,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:414}
execute if score #this.aj.anim aj.i matches 154 as @e[type=armor_stand,tag=aj.ramiel_mode_3.base,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:501}
execute if score #this.aj.anim aj.i matches 155 as @e[type=armor_stand,tag=aj.ramiel_mode_3.base,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:502}
execute if score #this.aj.anim aj.i matches 156 as @e[type=armor_stand,tag=aj.ramiel_mode_3.base,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:503}
execute if score #this.aj.anim aj.i matches 157 as @e[type=armor_stand,tag=aj.ramiel_mode_3.base,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:504}
execute if score #this.aj.anim aj.i matches 158 as @e[type=armor_stand,tag=aj.ramiel_mode_3.base,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:505}
execute if score #this.aj.anim aj.i matches 159 as @e[type=armor_stand,tag=aj.ramiel_mode_3.base,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:506}
execute if score #this.aj.anim aj.i matches 160 as @e[type=armor_stand,tag=aj.ramiel_mode_3.base,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:407}