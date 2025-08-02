#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,60f,0f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^-5.537 ^-1.918 ^3.197 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^-5.641 ^-1.918 ^3.257 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^-5.745 ^-1.918 ^3.317 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^-5.852 ^-1.918 ^3.378 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^-5.952 ^-1.918 ^3.436 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^-6.032 ^-1.918 ^3.483 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^-6.106 ^-1.918 ^3.525 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^-6.178 ^-1.918 ^3.567 ~ ~
execute if score #this.aj.anim aj.i matches 71..72 run tp @s ^-6.19 ^-1.918 ^3.574 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1836}
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1837}
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1838}
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1839}
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1840}
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1841}
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1842}