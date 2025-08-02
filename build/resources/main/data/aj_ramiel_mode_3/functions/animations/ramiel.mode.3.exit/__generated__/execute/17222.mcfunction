#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 41 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,15f,180f]
execute if score #this.aj.anim aj.i matches 41 run tp @s ^-6.556 ^-3.037 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 42 run tp @s ^-6.556 ^-3.006 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^-6.556 ^-2.976 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^-6.556 ^-2.946 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 45 run tp @s ^-6.556 ^-2.915 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 46 run tp @s ^-6.556 ^-2.891 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^-6.556 ^-2.86 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 48 run tp @s ^-6.556 ^-2.805 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^-6.556 ^-2.748 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^-6.556 ^-2.688 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 41 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2955}
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2872}
execute if score #this.aj.anim aj.i matches 43 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2871}
execute if score #this.aj.anim aj.i matches 44 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2870}
execute if score #this.aj.anim aj.i matches 45 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2869}
execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2960}
execute if score #this.aj.anim aj.i matches 47 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2868}
execute if score #this.aj.anim aj.i matches 48 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2866}
execute if score #this.aj.anim aj.i matches 49 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2963}
execute if score #this.aj.anim aj.i matches 50 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2964}