#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [140.768f,37.761f,63.435f]
execute if score #this.aj.anim aj.i matches 101 run tp @s ^-5.952 ^-1.918 ^3.436 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^-5.921 ^-1.918 ^3.419 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^-5.89 ^-1.918 ^3.401 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^-5.86 ^-1.918 ^3.383 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^-5.829 ^-1.918 ^3.365 ~ ~
execute if score #this.aj.anim aj.i matches 106 run tp @s ^-5.799 ^-1.918 ^3.348 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^-5.769 ^-1.918 ^3.331 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^-5.738 ^-1.918 ^3.313 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^-5.707 ^-1.918 ^3.295 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^-5.678 ^-1.918 ^3.278 ~ ~
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2180}
execute if score #this.aj.anim aj.i matches 103 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2179}
execute if score #this.aj.anim aj.i matches 105 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2177}
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2175}
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2173}
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2172}