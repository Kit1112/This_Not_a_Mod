#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 155 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,-30f,180f]
execute if score #this.aj.anim aj.i matches 155 run tp @s ^3.785 ^0.334 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 156 run tp @s ^3.785 ^0.365 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 157 run tp @s ^3.785 ^0.396 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 158 run tp @s ^3.785 ^0.427 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 159 run tp @s ^3.785 ^0.459 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 160 run tp @s ^3.785 ^0.492 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 161..164 run tp @s ^3.785 ^0.496 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 155 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4008}
execute if score #this.aj.anim aj.i matches 156 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4009}
execute if score #this.aj.anim aj.i matches 157 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4010}
execute if score #this.aj.anim aj.i matches 158 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4011}
execute if score #this.aj.anim aj.i matches 159 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4012}
execute if score #this.aj.anim aj.i matches 160 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4013}