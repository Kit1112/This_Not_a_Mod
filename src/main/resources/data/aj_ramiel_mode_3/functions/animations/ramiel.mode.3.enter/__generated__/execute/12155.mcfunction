#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,15f,0f]
execute if score #this.aj.anim aj.i matches 53 run tp @s ^2.259 ^-1.918 ^3.912 ~ ~
execute if score #this.aj.anim aj.i matches 54 run tp @s ^2.277 ^-1.918 ^3.943 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^2.295 ^-1.918 ^3.975 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^2.311 ^-1.918 ^4.004 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^2.329 ^-1.918 ^4.035 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^2.347 ^-1.918 ^4.066 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^2.365 ^-1.918 ^4.096 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^2.464 ^-1.918 ^4.268 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^2.58 ^-1.918 ^4.468 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^2.698 ^-1.918 ^4.672 ~ ~
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5788}
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5789}
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5790}