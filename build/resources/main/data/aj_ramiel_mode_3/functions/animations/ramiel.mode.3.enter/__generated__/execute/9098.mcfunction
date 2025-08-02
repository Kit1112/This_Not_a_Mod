#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 145 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,-30f,180f]
execute if score #this.aj.anim aj.i matches 145 run tp @s ^3.785 ^0.013 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 146 run tp @s ^3.785 ^0.045 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 147 run tp @s ^3.785 ^0.077 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 148 run tp @s ^3.785 ^0.108 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 149 run tp @s ^3.785 ^0.141 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 150 run tp @s ^3.785 ^0.172 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 151 run tp @s ^3.785 ^0.204 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 152 run tp @s ^3.785 ^0.236 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 153 run tp @s ^3.785 ^0.268 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 154 run tp @s ^3.785 ^0.299 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 145 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3998}
execute if score #this.aj.anim aj.i matches 146 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3999}
execute if score #this.aj.anim aj.i matches 147 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4000}
execute if score #this.aj.anim aj.i matches 148 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4001}
execute if score #this.aj.anim aj.i matches 149 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4002}
execute if score #this.aj.anim aj.i matches 150 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4003}
execute if score #this.aj.anim aj.i matches 151 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4004}
execute if score #this.aj.anim aj.i matches 152 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4005}
execute if score #this.aj.anim aj.i matches 153 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4006}
execute if score #this.aj.anim aj.i matches 154 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4007}