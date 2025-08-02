#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,75f,180f]
execute if score #this.aj.anim aj.i matches 121 run tp @s ^-1.517 ^-1.918 ^0.876 ~ ~
execute if score #this.aj.anim aj.i matches 122 run tp @s ^-1.274 ^-1.918 ^0.736 ~ ~
execute if score #this.aj.anim aj.i matches 123 run tp @s ^-1.041 ^-1.918 ^0.601 ~ ~
execute if score #this.aj.anim aj.i matches 124 run tp @s ^-0.803 ^-1.918 ^0.464 ~ ~
execute if score #this.aj.anim aj.i matches 125 run tp @s ^-0.556 ^-1.918 ^0.321 ~ ~
execute if score #this.aj.anim aj.i matches 126..127 run tp @s ^-0.527 ^-1.918 ^0.305 ~ ~
execute if score #this.aj.anim aj.i matches 128..130 run tp @s ^-0.528 ^-1.918 ^0.305 ~ ~
execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1996}