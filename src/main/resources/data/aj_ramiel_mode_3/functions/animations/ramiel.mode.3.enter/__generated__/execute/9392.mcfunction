#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 155 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,-75f,180f]
execute if score #this.aj.anim aj.i matches 155 run tp @s ^3.785 ^-4.131 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 156 run tp @s ^3.785 ^-4.16 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 157 run tp @s ^3.785 ^-4.19 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 158 run tp @s ^3.785 ^-4.219 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 159 run tp @s ^3.785 ^-4.25 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 160 run tp @s ^3.785 ^-4.281 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 161..164 run tp @s ^3.785 ^-4.285 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 155 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4172}
execute if score #this.aj.anim aj.i matches 156 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4173}
execute if score #this.aj.anim aj.i matches 157 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4174}
execute if score #this.aj.anim aj.i matches 158 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4175}
execute if score #this.aj.anim aj.i matches 159 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4176}
execute if score #this.aj.anim aj.i matches 160 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4177}