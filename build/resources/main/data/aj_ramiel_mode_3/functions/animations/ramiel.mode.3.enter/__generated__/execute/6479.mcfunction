#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 11 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,45f,90f]
execute if score #this.aj.anim aj.i matches 11 run tp @s ^-2.51 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 12 run tp @s ^-2.554 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 13 run tp @s ^-2.586 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 14 run tp @s ^-2.611 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 15 run tp @s ^-2.624 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 16 run tp @s ^-2.637 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^-2.648 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 18 run tp @s ^-2.659 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 19 run tp @s ^-2.67 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 20 run tp @s ^-2.678 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 11 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2573}
execute if score #this.aj.anim aj.i matches 12 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2575}
execute if score #this.aj.anim aj.i matches 13 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2576}
execute if score #this.aj.anim aj.i matches 14 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2577}