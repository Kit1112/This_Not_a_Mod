#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-90f,0f]
execute if score #this.aj.anim aj.i matches 131 run tp @s ^3.363 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 132 run tp @s ^3.322 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 133 run tp @s ^3.279 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 134 run tp @s ^3.237 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 135 run tp @s ^3.194 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 136 run tp @s ^3.151 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 137 run tp @s ^3.108 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 138 run tp @s ^3.068 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 139 run tp @s ^3.029 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 140 run tp @s ^2.989 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4774}
execute if score #this.aj.anim aj.i matches 132 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4766}
execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4767}
execute if score #this.aj.anim aj.i matches 134 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4768}
execute if score #this.aj.anim aj.i matches 136 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4769}
execute if score #this.aj.anim aj.i matches 140 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4768}