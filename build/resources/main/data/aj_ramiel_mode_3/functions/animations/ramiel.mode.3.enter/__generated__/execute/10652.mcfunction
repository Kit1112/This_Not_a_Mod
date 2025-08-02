#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down10,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-45f,0f]
execute if score #this.aj.anim aj.i matches 32..34 run tp @s ^0.609 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 35 run tp @s ^0.625 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 36 run tp @s ^0.9 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 37 run tp @s ^1.169 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 38 run tp @s ^1.444 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 39 run tp @s ^1.724 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 40 run tp @s ^1.998 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^2.267 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4943}