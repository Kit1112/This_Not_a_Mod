#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 155 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down11,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-15f,0f]
execute if score #this.aj.anim aj.i matches 155 run tp @s ^6.556 ^-4.131 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 156 run tp @s ^6.556 ^-4.16 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 157 run tp @s ^6.556 ^-4.19 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 158 run tp @s ^6.556 ^-4.219 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 159 run tp @s ^6.556 ^-4.25 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 160 run tp @s ^6.556 ^-4.281 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 161..164 run tp @s ^6.556 ^-4.285 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 155 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5435}
execute if score #this.aj.anim aj.i matches 156 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5436}
execute if score #this.aj.anim aj.i matches 157 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5437}
execute if score #this.aj.anim aj.i matches 158 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5438}
execute if score #this.aj.anim aj.i matches 159 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5439}
execute if score #this.aj.anim aj.i matches 160 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5440}