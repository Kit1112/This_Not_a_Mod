#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 151 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,15f,0f]
execute if score #this.aj.anim aj.i matches 151 run tp @s ^0.156 ^-1.918 ^0.27 ~ ~
execute if score #this.aj.anim aj.i matches 152 run tp @s ^0.137 ^-1.918 ^0.237 ~ ~
execute if score #this.aj.anim aj.i matches 153 run tp @s ^0.12 ^-1.918 ^0.207 ~ ~
execute if score #this.aj.anim aj.i matches 154 run tp @s ^0.105 ^-1.918 ^0.183 ~ ~
execute if score #this.aj.anim aj.i matches 155 run tp @s ^0.015 ^-1.918 ^0.026 ~ ~
execute if score #this.aj.anim aj.i matches 156..160 run tp @s ^0 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 151 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5785}