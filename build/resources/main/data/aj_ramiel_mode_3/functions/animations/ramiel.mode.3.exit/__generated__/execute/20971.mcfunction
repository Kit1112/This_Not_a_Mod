#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down10,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-45f,0f]
execute if score #this.aj.anim aj.i matches 91 run tp @s ^7.007 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^6.811 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^6.615 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^6.38 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^6.154 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^5.927 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^5.691 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^5.465 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 99 run tp @s ^5.229 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^4.998 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4946}
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4947}
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5089}
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4948}