#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 151 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [112.208f,20.705f,49.107f]
execute if score #this.aj.anim aj.i matches 151 run tp @s ^-1.222 ^-1.918 ^2.117 ~ ~
execute if score #this.aj.anim aj.i matches 152 run tp @s ^-1.203 ^-1.918 ^2.084 ~ ~
execute if score #this.aj.anim aj.i matches 153 run tp @s ^-1.186 ^-1.918 ^2.054 ~ ~
execute if score #this.aj.anim aj.i matches 154 run tp @s ^-1.172 ^-1.918 ^2.03 ~ ~
execute if score #this.aj.anim aj.i matches 155 run tp @s ^-0.186 ^-1.918 ^0.322 ~ ~
execute if score #this.aj.anim aj.i matches 156..160 run tp @s ^0 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 151 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1730}
execute if score #this.aj.anim aj.i matches 153 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1728}
execute if score #this.aj.anim aj.i matches 154 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1726}