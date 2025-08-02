#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.792f,-20.705f,130.893f]
execute if score #this.aj.anim aj.i matches 53 run tp @s ^3.325 ^-1.918 ^-5.759 ~ ~
execute if score #this.aj.anim aj.i matches 54 run tp @s ^3.343 ^-1.918 ^-5.79 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^3.361 ^-1.918 ^-5.822 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^3.378 ^-1.918 ^-5.851 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^3.396 ^-1.918 ^-5.882 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^3.414 ^-1.918 ^-5.913 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^3.431 ^-1.918 ^-5.942 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^3.448 ^-1.918 ^-5.972 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^3.466 ^-1.918 ^-6.003 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^3.484 ^-1.918 ^-6.034 ~ ~
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4280}
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4282}
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4284}
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4285}