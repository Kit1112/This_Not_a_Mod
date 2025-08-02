#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,60f,180f]
execute if score #this.aj.anim aj.i matches 111 run tp @s ^-4.835 ^-1.918 ^-2.791 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^-4.633 ^-1.918 ^-2.675 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^-4.408 ^-1.918 ^-2.545 ~ ~
execute if score #this.aj.anim aj.i matches 114 run tp @s ^-5.526 ^-1.918 ^-3.191 ~ ~
execute if score #this.aj.anim aj.i matches 115 run tp @s ^-5.554 ^-1.918 ^-3.207 ~ ~
execute if score #this.aj.anim aj.i matches 116 run tp @s ^-5.325 ^-1.918 ^-3.074 ~ ~
execute if score #this.aj.anim aj.i matches 117 run tp @s ^-5.096 ^-1.918 ^-2.942 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^-4.867 ^-1.918 ^-2.81 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^-4.63 ^-1.918 ^-2.673 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^-4.393 ^-1.918 ^-2.536 ~ ~
execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2678}
execute if score #this.aj.anim aj.i matches 114 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2685}
execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2653}