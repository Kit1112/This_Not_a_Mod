#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,30f,0f]
execute if score #this.aj.anim aj.i matches 53 run tp @s ^-2.856 ^-1.918 ^4.947 ~ ~
execute if score #this.aj.anim aj.i matches 54 run tp @s ^-2.874 ^-1.918 ^4.978 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^-2.892 ^-1.918 ^5.01 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^-2.909 ^-1.918 ^5.038 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^-2.927 ^-1.918 ^5.069 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^-2.945 ^-1.918 ^5.1 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^-2.962 ^-1.918 ^5.13 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^-3.015 ^-1.918 ^5.222 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^-3.075 ^-1.918 ^5.326 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^-3.136 ^-1.918 ^5.433 ~ ~
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1415}