#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,15f,0f]
execute if score #this.aj.anim aj.i matches 32 run tp @s ^0.305 ^-1.918 ^0.528 ~ ~
execute if score #this.aj.anim aj.i matches 33..34 run tp @s ^0.305 ^-1.918 ^0.527 ~ ~
execute if score #this.aj.anim aj.i matches 35 run tp @s ^0.313 ^-1.918 ^0.542 ~ ~
execute if score #this.aj.anim aj.i matches 36 run tp @s ^0.45 ^-1.918 ^0.779 ~ ~
execute if score #this.aj.anim aj.i matches 37 run tp @s ^0.585 ^-1.918 ^1.012 ~ ~
execute if score #this.aj.anim aj.i matches 38 run tp @s ^0.722 ^-1.918 ^1.25 ~ ~
execute if score #this.aj.anim aj.i matches 39 run tp @s ^0.862 ^-1.918 ^1.493 ~ ~
execute if score #this.aj.anim aj.i matches 40 run tp @s ^0.999 ^-1.918 ^1.731 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^1.134 ^-1.918 ^1.964 ~ ~
execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5785}