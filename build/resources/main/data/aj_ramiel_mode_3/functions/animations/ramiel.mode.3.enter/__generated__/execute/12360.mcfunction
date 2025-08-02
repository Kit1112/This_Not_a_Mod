#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem12,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [67.792f,-20.705f,49.107f]
execute if score #this.aj.anim aj.i matches 0..4 run tp @s ^0 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^0.093 ^-1.918 ^0.161 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^1.172 ^-1.918 ^2.029 ~ ~
execute if score #this.aj.anim aj.i matches 7 run tp @s ^1.186 ^-1.918 ^2.054 ~ ~
execute if score #this.aj.anim aj.i matches 8 run tp @s ^1.202 ^-1.918 ^2.082 ~ ~
execute if score #this.aj.anim aj.i matches 9 run tp @s ^1.217 ^-1.918 ^2.108 ~ ~
execute if score #this.aj.anim aj.i matches 10 run tp @s ^1.236 ^-1.918 ^2.14 ~ ~
execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5936}
execute if score #this.aj.anim aj.i matches 7 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5938}
execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5940}
execute if score #this.aj.anim aj.i matches 10 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5941}