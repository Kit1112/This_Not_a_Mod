#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up12,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-30f,0f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^3.197 ^-1.918 ^5.537 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^3.257 ^-1.918 ^5.641 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^3.317 ^-1.918 ^5.745 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^3.378 ^-1.918 ^5.852 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^3.436 ^-1.918 ^5.952 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^3.483 ^-1.918 ^6.032 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^3.525 ^-1.918 ^6.106 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^3.567 ^-1.918 ^6.178 ~ ~
execute if score #this.aj.anim aj.i matches 71..72 run tp @s ^3.574 ^-1.918 ^6.19 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5625}
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5626}
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5627}
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5628}
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5629}
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5630}
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5631}