#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-90f,0f,135f]
execute if score #this.aj.anim aj.i matches 0..4 run tp @s ^0 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^0 ^-1.918 ^-0.186 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^0 ^-1.918 ^-2.343 ~ ~
execute if score #this.aj.anim aj.i matches 7 run tp @s ^0 ^-1.918 ^-2.372 ~ ~
execute if score #this.aj.anim aj.i matches 8 run tp @s ^0 ^-1.918 ^-2.404 ~ ~
execute if score #this.aj.anim aj.i matches 9 run tp @s ^0 ^-1.918 ^-2.434 ~ ~
execute if score #this.aj.anim aj.i matches 10 run tp @s ^0 ^-1.918 ^-2.471 ~ ~
execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3831}
execute if score #this.aj.anim aj.i matches 7 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3833}
execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3835}
execute if score #this.aj.anim aj.i matches 10 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3836}