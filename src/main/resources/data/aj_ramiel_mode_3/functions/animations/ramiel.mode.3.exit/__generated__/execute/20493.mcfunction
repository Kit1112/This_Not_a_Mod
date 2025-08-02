#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 151 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem9,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-39.232f,-37.761f,116.565f]
execute if score #this.aj.anim aj.i matches 151 run tp @s ^2.117 ^-1.918 ^-1.222 ~ ~
execute if score #this.aj.anim aj.i matches 152 run tp @s ^2.084 ^-1.918 ^-1.203 ~ ~
execute if score #this.aj.anim aj.i matches 153 run tp @s ^2.054 ^-1.918 ^-1.186 ~ ~
execute if score #this.aj.anim aj.i matches 154 run tp @s ^2.03 ^-1.918 ^-1.172 ~ ~
execute if score #this.aj.anim aj.i matches 155 run tp @s ^0.322 ^-1.918 ^-0.186 ~ ~
execute if score #this.aj.anim aj.i matches 156..160 run tp @s ^0 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 151 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem9,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4677}
execute if score #this.aj.anim aj.i matches 153 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem9,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4675}
execute if score #this.aj.anim aj.i matches 154 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem9,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4673}