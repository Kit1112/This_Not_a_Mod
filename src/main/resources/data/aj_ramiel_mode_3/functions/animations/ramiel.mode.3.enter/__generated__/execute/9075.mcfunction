#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 135 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,-30f,180f]
execute if score #this.aj.anim aj.i matches 135 run tp @s ^3.785 ^-0.307 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 136 run tp @s ^3.785 ^-0.275 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 137 run tp @s ^3.785 ^-0.242 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 138 run tp @s ^3.785 ^-0.211 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 139 run tp @s ^3.785 ^-0.179 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 140 run tp @s ^3.785 ^-0.147 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 141 run tp @s ^3.785 ^-0.115 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 142 run tp @s ^3.785 ^-0.084 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 143 run tp @s ^3.785 ^-0.051 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 144 run tp @s ^3.785 ^-0.02 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 135 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3988}
execute if score #this.aj.anim aj.i matches 136 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3989}
execute if score #this.aj.anim aj.i matches 137 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3990}
execute if score #this.aj.anim aj.i matches 138 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3991}
execute if score #this.aj.anim aj.i matches 139 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3992}
execute if score #this.aj.anim aj.i matches 140 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3993}
execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3994}
execute if score #this.aj.anim aj.i matches 142 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3995}
execute if score #this.aj.anim aj.i matches 143 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3996}
execute if score #this.aj.anim aj.i matches 144 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3997}