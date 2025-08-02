#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem10,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-45f,90f]
execute if score #this.aj.anim aj.i matches 53 run tp @s ^6.65 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 54 run tp @s ^6.686 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^6.723 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^6.756 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^6.791 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^6.827 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^6.862 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^6.896 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^6.931 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^6.967 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5122}
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5124}
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5126}
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5127}