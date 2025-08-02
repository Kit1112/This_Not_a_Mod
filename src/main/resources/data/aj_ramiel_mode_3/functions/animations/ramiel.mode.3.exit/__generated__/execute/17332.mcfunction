#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,15f,180f]
execute if score #this.aj.anim aj.i matches 111 run tp @s ^-3.8 ^-1.918 ^-2.194 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^-3.598 ^-1.918 ^-2.077 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^-3.374 ^-1.918 ^-1.948 ~ ~
execute if score #this.aj.anim aj.i matches 114 run tp @s ^-3.145 ^-1.918 ^-1.816 ~ ~
execute if score #this.aj.anim aj.i matches 115 run tp @s ^-2.916 ^-1.918 ^-1.683 ~ ~
execute if score #this.aj.anim aj.i matches 116 run tp @s ^-2.687 ^-1.918 ^-1.551 ~ ~
execute if score #this.aj.anim aj.i matches 117 run tp @s ^-2.458 ^-1.918 ^-1.419 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^-2.228 ^-1.918 ^-1.287 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^-1.992 ^-1.918 ^-1.15 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^-1.754 ^-1.918 ^-1.013 ~ ~
execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2838}