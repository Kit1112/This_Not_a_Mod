#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,75f,180f]
execute if score #this.aj.anim aj.i matches 0 run tp @s ^-6.556 ^-4.284 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 1 run tp @s ^-6.556 ^-4.254 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 2 run tp @s ^-6.556 ^-4.223 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 3 run tp @s ^-6.556 ^-4.193 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 4 run tp @s ^-6.556 ^-4.162 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^-6.556 ^-4.131 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^-6.556 ^-4.101 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 7 run tp @s ^-6.556 ^-4.072 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 8 run tp @s ^-6.556 ^-4.041 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 9 run tp @s ^-6.556 ^-4.016 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 10 run tp @s ^-6.556 ^-3.986 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2072}
execute if score #this.aj.anim aj.i matches 1 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2075}
execute if score #this.aj.anim aj.i matches 2 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2070}
execute if score #this.aj.anim aj.i matches 3 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2069}
execute if score #this.aj.anim aj.i matches 4 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2068}
execute if score #this.aj.anim aj.i matches 5 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2067}
execute if score #this.aj.anim aj.i matches 6 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2066}
execute if score #this.aj.anim aj.i matches 7 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2080}
execute if score #this.aj.anim aj.i matches 8 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2064}
execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2063}
execute if score #this.aj.anim aj.i matches 10 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2062}