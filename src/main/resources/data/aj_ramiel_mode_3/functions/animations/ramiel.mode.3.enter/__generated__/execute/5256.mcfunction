#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,60f,0f]
execute if score #this.aj.anim aj.i matches 53 run tp @s ^-4.947 ^-1.918 ^2.856 ~ ~
execute if score #this.aj.anim aj.i matches 54 run tp @s ^-4.978 ^-1.918 ^2.874 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^-5.01 ^-1.918 ^2.892 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^-5.038 ^-1.918 ^2.909 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^-5.069 ^-1.918 ^2.927 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^-5.1 ^-1.918 ^2.945 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^-5.13 ^-1.918 ^2.962 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^-5.222 ^-1.918 ^3.015 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^-5.326 ^-1.918 ^3.075 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^-5.433 ^-1.918 ^3.136 ~ ~
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1836}