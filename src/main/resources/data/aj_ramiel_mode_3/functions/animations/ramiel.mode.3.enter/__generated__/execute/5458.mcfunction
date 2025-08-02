#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,75f,180f]
execute if score #this.aj.anim aj.i matches 0..4 run tp @s ^0 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^-0.013 ^-1.918 ^0.008 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^-0.182 ^-1.918 ^0.105 ~ ~
execute if score #this.aj.anim aj.i matches 7 run tp @s ^-0.207 ^-1.918 ^0.12 ~ ~
execute if score #this.aj.anim aj.i matches 8 run tp @s ^-0.234 ^-1.918 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 9 run tp @s ^-0.26 ^-1.918 ^0.15 ~ ~
execute if score #this.aj.anim aj.i matches 10 run tp @s ^-0.293 ^-1.918 ^0.169 ~ ~
execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1996}