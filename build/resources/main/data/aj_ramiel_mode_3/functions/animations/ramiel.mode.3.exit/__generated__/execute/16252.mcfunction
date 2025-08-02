#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,90f,0f]
execute if score #this.aj.anim aj.i matches 71 run tp @s ^-4.4 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 72..75 run tp @s ^-3.796 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^-4.372 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^-5.029 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^-5.7 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^-6.37 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^-7.04 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2232}