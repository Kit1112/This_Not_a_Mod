#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem9,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-39.232f,-37.761f,116.565f]
execute if score #this.aj.anim aj.i matches 53 run tp @s ^5.759 ^-1.918 ^-3.325 ~ ~
execute if score #this.aj.anim aj.i matches 54 run tp @s ^5.79 ^-1.918 ^-3.343 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^5.822 ^-1.918 ^-3.361 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^5.851 ^-1.918 ^-3.378 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^5.882 ^-1.918 ^-3.396 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^5.913 ^-1.918 ^-3.414 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^5.942 ^-1.918 ^-3.431 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^5.972 ^-1.918 ^-3.448 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^6.003 ^-1.918 ^-3.466 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^6.034 ^-1.918 ^-3.484 ~ ~
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem9,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4701}
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem9,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4703}
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem9,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4705}
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem9,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4706}