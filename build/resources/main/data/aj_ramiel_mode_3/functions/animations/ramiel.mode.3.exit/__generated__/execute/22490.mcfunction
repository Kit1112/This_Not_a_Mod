#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,15f,0f]
execute if score #this.aj.anim aj.i matches 121 run tp @s ^0.876 ^-1.918 ^1.517 ~ ~
execute if score #this.aj.anim aj.i matches 122 run tp @s ^0.736 ^-1.918 ^1.274 ~ ~
execute if score #this.aj.anim aj.i matches 123 run tp @s ^0.601 ^-1.918 ^1.041 ~ ~
execute if score #this.aj.anim aj.i matches 124 run tp @s ^0.464 ^-1.918 ^0.803 ~ ~
execute if score #this.aj.anim aj.i matches 125 run tp @s ^0.321 ^-1.918 ^0.556 ~ ~
execute if score #this.aj.anim aj.i matches 126..127 run tp @s ^0.305 ^-1.918 ^0.527 ~ ~
execute if score #this.aj.anim aj.i matches 128..130 run tp @s ^0.305 ^-1.918 ^0.528 ~ ~
execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5785}