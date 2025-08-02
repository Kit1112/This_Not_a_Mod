#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up9,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,-60f,180f]
execute if score #this.aj.anim aj.i matches 0..4 run tp @s ^0 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^0.161 ^-1.918 ^-0.093 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^2.029 ^-1.918 ^-1.172 ~ ~
execute if score #this.aj.anim aj.i matches 7 run tp @s ^2.054 ^-1.918 ^-1.186 ~ ~
execute if score #this.aj.anim aj.i matches 8 run tp @s ^2.082 ^-1.918 ^-1.202 ~ ~
execute if score #this.aj.anim aj.i matches 9 run tp @s ^2.108 ^-1.918 ^-1.217 ~ ~
execute if score #this.aj.anim aj.i matches 10 run tp @s ^2.14 ^-1.918 ^-1.236 ~ ~
execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up9,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4337}