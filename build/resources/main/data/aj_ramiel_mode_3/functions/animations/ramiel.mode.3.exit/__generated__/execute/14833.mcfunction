#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,30f,0f]
execute if score #this.aj.anim aj.i matches 111 run tp @s ^-2.791 ^-1.918 ^4.835 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^-2.675 ^-1.918 ^4.633 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^-2.545 ^-1.918 ^4.408 ~ ~
execute if score #this.aj.anim aj.i matches 114 run tp @s ^-3.191 ^-1.918 ^5.526 ~ ~
execute if score #this.aj.anim aj.i matches 115 run tp @s ^-3.207 ^-1.918 ^5.554 ~ ~
execute if score #this.aj.anim aj.i matches 116 run tp @s ^-3.074 ^-1.918 ^5.325 ~ ~
execute if score #this.aj.anim aj.i matches 117 run tp @s ^-2.942 ^-1.918 ^5.096 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^-2.81 ^-1.918 ^4.867 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^-2.673 ^-1.918 ^4.63 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^-2.536 ^-1.918 ^4.393 ~ ~
execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1415}
execute if score #this.aj.anim aj.i matches 114 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1422}
execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1390}