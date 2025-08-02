#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 11 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,75f,180f]
execute if score #this.aj.anim aj.i matches 11 run tp @s ^-0.326 ^-1.918 ^0.188 ~ ~
execute if score #this.aj.anim aj.i matches 12 run tp @s ^-0.365 ^-1.918 ^0.211 ~ ~
execute if score #this.aj.anim aj.i matches 13 run tp @s ^-0.393 ^-1.918 ^0.227 ~ ~
execute if score #this.aj.anim aj.i matches 14 run tp @s ^-0.414 ^-1.918 ^0.239 ~ ~
execute if score #this.aj.anim aj.i matches 15 run tp @s ^-0.426 ^-1.918 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 16 run tp @s ^-0.437 ^-1.918 ^0.252 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^-0.446 ^-1.918 ^0.257 ~ ~
execute if score #this.aj.anim aj.i matches 18 run tp @s ^-0.455 ^-1.918 ^0.263 ~ ~
execute if score #this.aj.anim aj.i matches 19 run tp @s ^-0.465 ^-1.918 ^0.269 ~ ~
execute if score #this.aj.anim aj.i matches 20 run tp @s ^-0.472 ^-1.918 ^0.273 ~ ~
execute if score #this.aj.anim aj.i matches 11 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1996}