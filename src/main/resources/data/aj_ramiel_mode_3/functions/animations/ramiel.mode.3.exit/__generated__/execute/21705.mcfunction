#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down11,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-15f,0f]
execute if score #this.aj.anim aj.i matches 91 run tp @s ^6.068 ^-1.918 ^3.503 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^5.898 ^-1.918 ^3.405 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^5.729 ^-1.918 ^3.307 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^5.525 ^-1.918 ^3.19 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^5.329 ^-1.918 ^3.077 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^5.133 ^-1.918 ^2.963 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^4.929 ^-1.918 ^2.846 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^4.732 ^-1.918 ^2.732 ~ ~
execute if score #this.aj.anim aj.i matches 99 run tp @s ^4.528 ^-1.918 ^2.614 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^4.328 ^-1.918 ^2.499 ~ ~
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5367}
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5368}
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5510}
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5369}