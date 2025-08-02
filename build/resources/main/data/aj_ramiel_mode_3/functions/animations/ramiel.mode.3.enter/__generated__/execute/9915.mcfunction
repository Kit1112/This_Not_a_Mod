#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down9,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-75f,0f]
execute if score #this.aj.anim aj.i matches 32 run tp @s ^0.528 ^-1.918 ^-0.305 ~ ~
execute if score #this.aj.anim aj.i matches 33..34 run tp @s ^0.527 ^-1.918 ^-0.305 ~ ~
execute if score #this.aj.anim aj.i matches 35 run tp @s ^0.542 ^-1.918 ^-0.313 ~ ~
execute if score #this.aj.anim aj.i matches 36 run tp @s ^0.779 ^-1.918 ^-0.45 ~ ~
execute if score #this.aj.anim aj.i matches 37 run tp @s ^1.012 ^-1.918 ^-0.585 ~ ~
execute if score #this.aj.anim aj.i matches 38 run tp @s ^1.25 ^-1.918 ^-0.722 ~ ~
execute if score #this.aj.anim aj.i matches 39 run tp @s ^1.493 ^-1.918 ^-0.862 ~ ~
execute if score #this.aj.anim aj.i matches 40 run tp @s ^1.731 ^-1.918 ^-0.999 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^1.964 ^-1.918 ^-1.134 ~ ~
execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down9,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4522}