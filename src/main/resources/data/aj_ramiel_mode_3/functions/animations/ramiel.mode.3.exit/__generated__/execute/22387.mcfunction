#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 51 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,15f,0f]
execute if score #this.aj.anim aj.i matches 51 run tp @s ^3.785 ^-2.63 ^6.556 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^3.785 ^-2.571 ^6.556 ~ ~
execute if score #this.aj.anim aj.i matches 53 run tp @s ^3.785 ^-2.513 ^6.556 ~ ~
execute if score #this.aj.anim aj.i matches 54 run tp @s ^3.785 ^-2.454 ^6.556 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^3.785 ^-2.396 ^6.556 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^3.785 ^-2.336 ^6.556 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^3.785 ^-2.279 ^6.556 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^3.785 ^-2.219 ^6.556 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^3.785 ^-2.161 ^6.556 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^3.785 ^-2.102 ^6.556 ~ ~
execute if score #this.aj.anim aj.i matches 51 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5912}
execute if score #this.aj.anim aj.i matches 52 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5913}
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5808}
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5915}
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5916}
execute if score #this.aj.anim aj.i matches 56 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5805}
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5918}
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5803}
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5920}
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5921}