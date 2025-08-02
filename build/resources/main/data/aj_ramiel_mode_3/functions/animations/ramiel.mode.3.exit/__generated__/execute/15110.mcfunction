#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,75f,0f]
execute if score #this.aj.anim aj.i matches 101 run tp @s ^-2.386 ^-1.918 ^4.132 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^-2.352 ^-1.918 ^4.074 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^-2.334 ^-1.918 ^4.043 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^-2.317 ^-1.918 ^4.013 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^-2.299 ^-1.918 ^3.982 ~ ~
execute if score #this.aj.anim aj.i matches 106 run tp @s ^-2.282 ^-1.918 ^3.952 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^-2.264 ^-1.918 ^3.922 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^-2.246 ^-1.918 ^3.891 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^-2.229 ^-1.918 ^3.86 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^-2.212 ^-1.918 ^3.831 ~ ~
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1580}
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1721}
execute if score #this.aj.anim aj.i matches 107 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1578}
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1718}
execute if score #this.aj.anim aj.i matches 109 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1716}
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1575}