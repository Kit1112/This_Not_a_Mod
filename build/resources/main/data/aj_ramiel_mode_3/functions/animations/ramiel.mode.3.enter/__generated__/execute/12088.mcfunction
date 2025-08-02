#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,15f,0f]
execute if score #this.aj.anim aj.i matches 0..4 run tp @s ^0 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^0.008 ^-1.918 ^0.013 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^0.105 ^-1.918 ^0.182 ~ ~
execute if score #this.aj.anim aj.i matches 7 run tp @s ^0.12 ^-1.918 ^0.207 ~ ~
execute if score #this.aj.anim aj.i matches 8 run tp @s ^0.135 ^-1.918 ^0.234 ~ ~
execute if score #this.aj.anim aj.i matches 9 run tp @s ^0.15 ^-1.918 ^0.26 ~ ~
execute if score #this.aj.anim aj.i matches 10 run tp @s ^0.169 ^-1.918 ^0.293 ~ ~
execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5785}