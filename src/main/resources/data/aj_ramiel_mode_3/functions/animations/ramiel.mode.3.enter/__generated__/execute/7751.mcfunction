#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,-15f,180f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^-2.813 ^-1.918 ^-4.873 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^-2.929 ^-1.918 ^-5.073 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^-3.044 ^-1.918 ^-5.273 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^-3.162 ^-1.918 ^-5.477 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^-3.273 ^-1.918 ^-5.669 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^-3.376 ^-1.918 ^-5.847 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^-3.474 ^-1.918 ^-6.017 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^-3.57 ^-1.918 ^-6.184 ~ ~
execute if score #this.aj.anim aj.i matches 71..72 run tp @s ^-3.586 ^-1.918 ^-6.211 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3264}
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3266}
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3263}
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3262}
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3268}
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3261}
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3270}