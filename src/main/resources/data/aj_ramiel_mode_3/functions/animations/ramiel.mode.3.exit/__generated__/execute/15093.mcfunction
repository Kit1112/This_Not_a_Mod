#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,75f,0f]
execute if score #this.aj.anim aj.i matches 91 run tp @s ^-3.503 ^-1.918 ^6.068 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^-3.405 ^-1.918 ^5.898 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^-3.307 ^-1.918 ^5.729 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^-3.19 ^-1.918 ^5.525 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^-3.077 ^-1.918 ^5.329 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^-2.963 ^-1.918 ^5.133 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^-2.846 ^-1.918 ^4.929 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^-2.732 ^-1.918 ^4.732 ~ ~
execute if score #this.aj.anim aj.i matches 99 run tp @s ^-2.614 ^-1.918 ^4.528 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^-2.499 ^-1.918 ^4.328 ~ ~
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1578}
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1579}
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1721}
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1580}