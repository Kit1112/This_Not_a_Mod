#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,45f,90f]
execute if score #this.aj.anim aj.i matches 91..93 run tp @s ^-7.148 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^-7.117 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^-7.083 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^-7.048 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^-7.012 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^-6.978 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 99 run tp @s ^-6.942 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^-6.907 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2601}