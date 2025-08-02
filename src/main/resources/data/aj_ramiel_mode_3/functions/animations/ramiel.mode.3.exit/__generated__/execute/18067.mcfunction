#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,-15f,180f]
execute if score #this.aj.anim aj.i matches 111 run tp @s ^-2.194 ^-1.918 ^-3.8 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^-2.077 ^-1.918 ^-3.598 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^-1.948 ^-1.918 ^-3.374 ~ ~
execute if score #this.aj.anim aj.i matches 114 run tp @s ^-1.816 ^-1.918 ^-3.145 ~ ~
execute if score #this.aj.anim aj.i matches 115 run tp @s ^-1.683 ^-1.918 ^-2.916 ~ ~
execute if score #this.aj.anim aj.i matches 116 run tp @s ^-1.551 ^-1.918 ^-2.687 ~ ~
execute if score #this.aj.anim aj.i matches 117 run tp @s ^-1.419 ^-1.918 ^-2.458 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^-1.287 ^-1.918 ^-2.228 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^-1.15 ^-1.918 ^-1.992 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^-1.013 ^-1.918 ^-1.754 ~ ~
execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3259}