#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 11 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up11,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-60f,0f]
execute if score #this.aj.anim aj.i matches 11 run tp @s ^6.556 ^0.149 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 12 run tp @s ^6.556 ^0.112 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 13 run tp @s ^6.556 ^0.08 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 14 run tp @s ^6.556 ^0.048 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 15 run tp @s ^6.556 ^0.016 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 16 run tp @s ^6.556 ^-0.016 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^6.556 ^-0.048 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 18 run tp @s ^6.556 ^-0.08 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 19 run tp @s ^6.556 ^-0.112 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 20 run tp @s ^6.556 ^-0.144 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 11 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5265}
execute if score #this.aj.anim aj.i matches 12 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5289}
execute if score #this.aj.anim aj.i matches 13 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5263}
execute if score #this.aj.anim aj.i matches 14 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5262}
execute if score #this.aj.anim aj.i matches 15 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5261}
execute if score #this.aj.anim aj.i matches 16 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5260}
execute if score #this.aj.anim aj.i matches 17 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5259}
execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5295}
execute if score #this.aj.anim aj.i matches 19 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5257}
execute if score #this.aj.anim aj.i matches 20 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5256}