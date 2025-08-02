#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 11 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,45f]
execute if score #this.aj.anim aj.i matches 11 run tp @s ^0 ^-1.918 ^2.51 ~ ~
execute if score #this.aj.anim aj.i matches 12 run tp @s ^0 ^-1.918 ^2.554 ~ ~
execute if score #this.aj.anim aj.i matches 13 run tp @s ^0 ^-1.918 ^2.586 ~ ~
execute if score #this.aj.anim aj.i matches 14 run tp @s ^0 ^-1.918 ^2.611 ~ ~
execute if score #this.aj.anim aj.i matches 15 run tp @s ^0 ^-1.918 ^2.624 ~ ~
execute if score #this.aj.anim aj.i matches 16 run tp @s ^0 ^-1.918 ^2.637 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^0 ^-1.918 ^2.648 ~ ~
execute if score #this.aj.anim aj.i matches 18 run tp @s ^0 ^-1.918 ^2.659 ~ ~
execute if score #this.aj.anim aj.i matches 19 run tp @s ^0 ^-1.918 ^2.67 ~ ~
execute if score #this.aj.anim aj.i matches 20 run tp @s ^0 ^-1.918 ^2.678 ~ ~
execute if score #this.aj.anim aj.i matches 11 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1310}
execute if score #this.aj.anim aj.i matches 12 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1312}
execute if score #this.aj.anim aj.i matches 13 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1313}
execute if score #this.aj.anim aj.i matches 14 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1314}