#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,-45f,180f]
execute if score #this.aj.anim aj.i matches 32..34 run tp @s ^0 ^-1.918 ^-0.609 ~ ~
execute if score #this.aj.anim aj.i matches 35 run tp @s ^0 ^-1.918 ^-0.625 ~ ~
execute if score #this.aj.anim aj.i matches 36 run tp @s ^0 ^-1.918 ^-0.9 ~ ~
execute if score #this.aj.anim aj.i matches 37 run tp @s ^0 ^-1.918 ^-1.169 ~ ~
execute if score #this.aj.anim aj.i matches 38 run tp @s ^0 ^-1.918 ^-1.444 ~ ~
execute if score #this.aj.anim aj.i matches 39 run tp @s ^0 ^-1.918 ^-1.724 ~ ~
execute if score #this.aj.anim aj.i matches 40 run tp @s ^0 ^-1.918 ^-1.998 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^0 ^-1.918 ^-2.267 ~ ~
execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3680}