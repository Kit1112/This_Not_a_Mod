#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down11,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-15f,0f]
execute if score #this.aj.anim aj.i matches 101 run tp @s ^4.132 ^-1.918 ^2.386 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^4.074 ^-1.918 ^2.352 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^4.043 ^-1.918 ^2.334 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^4.013 ^-1.918 ^2.317 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^3.982 ^-1.918 ^2.299 ~ ~
execute if score #this.aj.anim aj.i matches 106 run tp @s ^3.952 ^-1.918 ^2.282 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^3.922 ^-1.918 ^2.264 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^3.891 ^-1.918 ^2.246 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^3.86 ^-1.918 ^2.229 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^3.831 ^-1.918 ^2.212 ~ ~
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5369}
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5510}
execute if score #this.aj.anim aj.i matches 107 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5367}
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5507}
execute if score #this.aj.anim aj.i matches 109 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5505}
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5364}