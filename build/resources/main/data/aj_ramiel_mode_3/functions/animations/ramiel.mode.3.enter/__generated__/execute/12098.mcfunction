#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 11 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,15f,0f]
execute if score #this.aj.anim aj.i matches 11 run tp @s ^0.188 ^-1.918 ^0.326 ~ ~
execute if score #this.aj.anim aj.i matches 12 run tp @s ^0.211 ^-1.918 ^0.365 ~ ~
execute if score #this.aj.anim aj.i matches 13 run tp @s ^0.227 ^-1.918 ^0.393 ~ ~
execute if score #this.aj.anim aj.i matches 14 run tp @s ^0.239 ^-1.918 ^0.414 ~ ~
execute if score #this.aj.anim aj.i matches 15 run tp @s ^0.246 ^-1.918 ^0.426 ~ ~
execute if score #this.aj.anim aj.i matches 16 run tp @s ^0.252 ^-1.918 ^0.437 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^0.257 ^-1.918 ^0.446 ~ ~
execute if score #this.aj.anim aj.i matches 18 run tp @s ^0.263 ^-1.918 ^0.455 ~ ~
execute if score #this.aj.anim aj.i matches 19 run tp @s ^0.269 ^-1.918 ^0.465 ~ ~
execute if score #this.aj.anim aj.i matches 20 run tp @s ^0.273 ^-1.918 ^0.472 ~ ~
execute if score #this.aj.anim aj.i matches 11 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5785}