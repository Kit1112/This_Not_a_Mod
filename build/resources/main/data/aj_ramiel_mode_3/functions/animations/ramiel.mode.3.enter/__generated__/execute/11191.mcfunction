#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up11,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-60f,0f]
execute if score #this.aj.anim aj.i matches 83 run tp @s ^4.541 ^-1.918 ^2.622 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^3.949 ^-1.918 ^2.28 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^3.38 ^-1.918 ^1.952 ~ ~
execute if score #this.aj.anim aj.i matches 86..89 run tp @s ^3.287 ^-1.918 ^1.898 ~ ~
execute if score #this.aj.anim aj.i matches 90 run tp @s ^6.033 ^-1.918 ^3.483 ~ ~
execute if score #this.aj.anim aj.i matches 91 run tp @s ^6.556 ^-1.869 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^6.556 ^-1.812 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^6.556 ^-1.756 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5179}
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5213}
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5214}
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5215}