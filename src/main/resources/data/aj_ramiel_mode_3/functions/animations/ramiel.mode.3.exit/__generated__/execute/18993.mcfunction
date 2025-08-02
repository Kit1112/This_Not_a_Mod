#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-90f,0f,135f]
execute if score #this.aj.anim aj.i matches 131 run tp @s ^0 ^-1.918 ^-2.738 ~ ~
execute if score #this.aj.anim aj.i matches 132 run tp @s ^0 ^-1.918 ^-2.734 ~ ~
execute if score #this.aj.anim aj.i matches 133 run tp @s ^0 ^-1.918 ^-2.729 ~ ~
execute if score #this.aj.anim aj.i matches 134 run tp @s ^0 ^-1.918 ^-2.723 ~ ~
execute if score #this.aj.anim aj.i matches 135 run tp @s ^0 ^-1.918 ^-2.717 ~ ~
execute if score #this.aj.anim aj.i matches 136 run tp @s ^0 ^-1.918 ^-2.71 ~ ~
execute if score #this.aj.anim aj.i matches 137 run tp @s ^0 ^-1.918 ^-2.703 ~ ~
execute if score #this.aj.anim aj.i matches 138 run tp @s ^0 ^-1.918 ^-2.696 ~ ~
execute if score #this.aj.anim aj.i matches 139 run tp @s ^0 ^-1.918 ^-2.687 ~ ~
execute if score #this.aj.anim aj.i matches 140 run tp @s ^0 ^-1.918 ^-2.679 ~ ~
execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3840}