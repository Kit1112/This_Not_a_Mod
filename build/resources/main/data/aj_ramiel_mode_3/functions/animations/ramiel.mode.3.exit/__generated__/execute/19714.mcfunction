#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.792f,-20.705f,130.893f]
execute if score #this.aj.anim aj.i matches 121 run tp @s ^1.942 ^-1.918 ^-3.364 ~ ~
execute if score #this.aj.anim aj.i matches 122 run tp @s ^1.802 ^-1.918 ^-3.121 ~ ~
execute if score #this.aj.anim aj.i matches 123 run tp @s ^1.667 ^-1.918 ^-2.888 ~ ~
execute if score #this.aj.anim aj.i matches 124 run tp @s ^1.53 ^-1.918 ^-2.65 ~ ~
execute if score #this.aj.anim aj.i matches 125 run tp @s ^1.387 ^-1.918 ^-2.403 ~ ~
execute if score #this.aj.anim aj.i matches 126..130 run tp @s ^1.371 ^-1.918 ^-2.375 ~ ~
execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4328}
execute if score #this.aj.anim aj.i matches 122 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4329}
execute if score #this.aj.anim aj.i matches 123 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4330}
execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4331}
execute if score #this.aj.anim aj.i matches 125 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4262}
execute if score #this.aj.anim aj.i matches 126 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4261}