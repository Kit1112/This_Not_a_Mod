#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,-27.5f,167.5f]
execute if score #this.aj.anim aj.i matches 54 run tp @s ^4.763 ^-4.551 ^-7.148 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^4.731 ^-4.539 ^-7.096 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^4.694 ^-4.525 ^-7.036 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^4.652 ^-4.51 ^-6.966 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^4.605 ^-4.493 ^-6.888 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^4.549 ^-4.473 ^-6.794 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^4.486 ^-4.451 ^-6.689 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1163}
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1116}
execute if score #this.aj.anim aj.i matches 56 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1165}
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1115}
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1167}
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1113}
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1169}