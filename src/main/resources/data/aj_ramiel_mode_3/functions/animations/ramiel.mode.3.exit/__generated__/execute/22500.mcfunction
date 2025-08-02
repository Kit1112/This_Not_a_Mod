#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,15f,0f]
execute if score #this.aj.anim aj.i matches 131 run tp @s ^0.303 ^-1.918 ^0.524 ~ ~
execute if score #this.aj.anim aj.i matches 132 run tp @s ^0.3 ^-1.918 ^0.52 ~ ~
execute if score #this.aj.anim aj.i matches 133 run tp @s ^0.298 ^-1.918 ^0.516 ~ ~
execute if score #this.aj.anim aj.i matches 134 run tp @s ^0.295 ^-1.918 ^0.511 ~ ~
execute if score #this.aj.anim aj.i matches 135 run tp @s ^0.292 ^-1.918 ^0.506 ~ ~
execute if score #this.aj.anim aj.i matches 136 run tp @s ^0.289 ^-1.918 ^0.5 ~ ~
execute if score #this.aj.anim aj.i matches 137 run tp @s ^0.285 ^-1.918 ^0.494 ~ ~
execute if score #this.aj.anim aj.i matches 138 run tp @s ^0.281 ^-1.918 ^0.487 ~ ~
execute if score #this.aj.anim aj.i matches 139 run tp @s ^0.277 ^-1.918 ^0.48 ~ ~
execute if score #this.aj.anim aj.i matches 140 run tp @s ^0.273 ^-1.918 ^0.473 ~ ~
execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5785}