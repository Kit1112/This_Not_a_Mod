#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,75f,0f]
execute if score #this.aj.anim aj.i matches 141 run tp @s ^-0.268 ^-1.918 ^0.464 ~ ~
execute if score #this.aj.anim aj.i matches 142 run tp @s ^-0.263 ^-1.918 ^0.456 ~ ~
execute if score #this.aj.anim aj.i matches 143 run tp @s ^-0.258 ^-1.918 ^0.447 ~ ~
execute if score #this.aj.anim aj.i matches 144 run tp @s ^-0.252 ^-1.918 ^0.437 ~ ~
execute if score #this.aj.anim aj.i matches 145 run tp @s ^-0.246 ^-1.918 ^0.426 ~ ~
execute if score #this.aj.anim aj.i matches 146 run tp @s ^-0.24 ^-1.918 ^0.415 ~ ~
execute if score #this.aj.anim aj.i matches 147 run tp @s ^-0.227 ^-1.918 ^0.394 ~ ~
execute if score #this.aj.anim aj.i matches 148 run tp @s ^-0.212 ^-1.918 ^0.367 ~ ~
execute if score #this.aj.anim aj.i matches 149 run tp @s ^-0.194 ^-1.918 ^0.335 ~ ~
execute if score #this.aj.anim aj.i matches 150 run tp @s ^-0.175 ^-1.918 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1575}