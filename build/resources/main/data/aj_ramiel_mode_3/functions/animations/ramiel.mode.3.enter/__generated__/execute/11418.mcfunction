#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down11,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-15f,0f]
execute if score #this.aj.anim aj.i matches 53 run tp @s ^3.912 ^-1.918 ^2.259 ~ ~
execute if score #this.aj.anim aj.i matches 54 run tp @s ^3.943 ^-1.918 ^2.277 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^3.975 ^-1.918 ^2.295 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^4.004 ^-1.918 ^2.311 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^4.035 ^-1.918 ^2.329 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^4.066 ^-1.918 ^2.347 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^4.096 ^-1.918 ^2.365 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^4.268 ^-1.918 ^2.464 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^4.468 ^-1.918 ^2.58 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^4.672 ^-1.918 ^2.698 ~ ~
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5367}
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5368}
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5369}