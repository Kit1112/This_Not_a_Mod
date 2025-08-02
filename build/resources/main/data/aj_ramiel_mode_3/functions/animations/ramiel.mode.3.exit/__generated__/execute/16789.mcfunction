#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,45f,90f]
execute if score #this.aj.anim aj.i matches 131 run tp @s ^-2.738 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 132 run tp @s ^-2.734 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 133 run tp @s ^-2.729 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 134 run tp @s ^-2.723 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 135 run tp @s ^-2.717 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 136 run tp @s ^-2.71 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 137 run tp @s ^-2.703 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 138 run tp @s ^-2.696 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 139 run tp @s ^-2.687 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 140 run tp @s ^-2.679 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2577}