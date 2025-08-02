#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,15f,180f]
execute if score #this.aj.anim aj.i matches 141 run tp @s ^-0.464 ^-1.918 ^-0.268 ~ ~
execute if score #this.aj.anim aj.i matches 142 run tp @s ^-0.456 ^-1.918 ^-0.263 ~ ~
execute if score #this.aj.anim aj.i matches 143 run tp @s ^-0.447 ^-1.918 ^-0.258 ~ ~
execute if score #this.aj.anim aj.i matches 144 run tp @s ^-0.437 ^-1.918 ^-0.252 ~ ~
execute if score #this.aj.anim aj.i matches 145 run tp @s ^-0.426 ^-1.918 ^-0.246 ~ ~
execute if score #this.aj.anim aj.i matches 146 run tp @s ^-0.415 ^-1.918 ^-0.24 ~ ~
execute if score #this.aj.anim aj.i matches 147 run tp @s ^-0.394 ^-1.918 ^-0.227 ~ ~
execute if score #this.aj.anim aj.i matches 148 run tp @s ^-0.367 ^-1.918 ^-0.212 ~ ~
execute if score #this.aj.anim aj.i matches 149 run tp @s ^-0.335 ^-1.918 ^-0.194 ~ ~
execute if score #this.aj.anim aj.i matches 150 run tp @s ^-0.302 ^-1.918 ^-0.175 ~ ~
execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2838}