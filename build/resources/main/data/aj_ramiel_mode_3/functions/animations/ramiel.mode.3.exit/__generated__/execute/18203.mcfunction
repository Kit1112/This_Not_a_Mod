#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-112.208f,20.705f,130.893f]
execute if score #this.aj.anim aj.i matches 101 run tp @s ^-3.436 ^-1.918 ^-5.952 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^-3.419 ^-1.918 ^-5.921 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^-3.401 ^-1.918 ^-5.89 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^-3.383 ^-1.918 ^-5.86 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^-3.365 ^-1.918 ^-5.829 ~ ~
execute if score #this.aj.anim aj.i matches 106 run tp @s ^-3.348 ^-1.918 ^-5.799 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^-3.331 ^-1.918 ^-5.769 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^-3.313 ^-1.918 ^-5.738 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^-3.295 ^-1.918 ^-5.707 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^-3.278 ^-1.918 ^-5.678 ~ ~
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3443}
execute if score #this.aj.anim aj.i matches 103 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3442}
execute if score #this.aj.anim aj.i matches 105 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3440}
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3438}
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3436}
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3435}