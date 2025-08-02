#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-90f,0f]
execute if score #this.aj.anim aj.i matches 42 run tp @s ^5.588 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^5.858 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^6.117 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 45 run tp @s ^6.381 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 46 run tp @s ^6.593 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^5.27 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 48 run tp @s ^5.281 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^5.535 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^5.607 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^5.642 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^5.678 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4758}
execute if score #this.aj.anim aj.i matches 47 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4782}
execute if score #this.aj.anim aj.i matches 48 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4783}