#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,15f,180f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^-4.873 ^-1.918 ^-2.813 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^-5.073 ^-1.918 ^-2.929 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^-5.273 ^-1.918 ^-3.044 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^-5.477 ^-1.918 ^-3.162 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^-5.669 ^-1.918 ^-3.273 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^-5.847 ^-1.918 ^-3.376 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^-6.017 ^-1.918 ^-3.474 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^-6.184 ^-1.918 ^-3.57 ~ ~
execute if score #this.aj.anim aj.i matches 71..72 run tp @s ^-6.211 ^-1.918 ^-3.586 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2843}
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2845}
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2842}
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2841}
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2847}
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2840}
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2849}