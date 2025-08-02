#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down11,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-15f,0f]
execute if score #this.aj.anim aj.i matches 131 run tp @s ^0.524 ^-1.918 ^0.303 ~ ~
execute if score #this.aj.anim aj.i matches 132 run tp @s ^0.52 ^-1.918 ^0.3 ~ ~
execute if score #this.aj.anim aj.i matches 133 run tp @s ^0.516 ^-1.918 ^0.298 ~ ~
execute if score #this.aj.anim aj.i matches 134 run tp @s ^0.511 ^-1.918 ^0.295 ~ ~
execute if score #this.aj.anim aj.i matches 135 run tp @s ^0.506 ^-1.918 ^0.292 ~ ~
execute if score #this.aj.anim aj.i matches 136 run tp @s ^0.5 ^-1.918 ^0.289 ~ ~
execute if score #this.aj.anim aj.i matches 137 run tp @s ^0.494 ^-1.918 ^0.285 ~ ~
execute if score #this.aj.anim aj.i matches 138 run tp @s ^0.487 ^-1.918 ^0.281 ~ ~
execute if score #this.aj.anim aj.i matches 139 run tp @s ^0.48 ^-1.918 ^0.277 ~ ~
execute if score #this.aj.anim aj.i matches 140 run tp @s ^0.473 ^-1.918 ^0.273 ~ ~
execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down11,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5364}