#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 151 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,45f,0f]
execute if score #this.aj.anim aj.i matches 151 run tp @s ^0 ^-1.918 ^0.311 ~ ~
execute if score #this.aj.anim aj.i matches 152 run tp @s ^0 ^-1.918 ^0.274 ~ ~
execute if score #this.aj.anim aj.i matches 153 run tp @s ^0 ^-1.918 ^0.239 ~ ~
execute if score #this.aj.anim aj.i matches 154 run tp @s ^0 ^-1.918 ^0.211 ~ ~
execute if score #this.aj.anim aj.i matches 155 run tp @s ^0 ^-1.918 ^0.03 ~ ~
execute if score #this.aj.anim aj.i matches 156..160 run tp @s ^0 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 151 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1154}