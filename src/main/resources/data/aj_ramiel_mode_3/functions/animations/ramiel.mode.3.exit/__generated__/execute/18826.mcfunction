#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,-45f,180f]
execute if score #this.aj.anim aj.i matches 131 run tp @s ^0 ^-1.918 ^-0.606 ~ ~
execute if score #this.aj.anim aj.i matches 132 run tp @s ^0 ^-1.918 ^-0.601 ~ ~
execute if score #this.aj.anim aj.i matches 133 run tp @s ^0 ^-1.918 ^-0.596 ~ ~
execute if score #this.aj.anim aj.i matches 134 run tp @s ^0 ^-1.918 ^-0.59 ~ ~
execute if score #this.aj.anim aj.i matches 135 run tp @s ^0 ^-1.918 ^-0.584 ~ ~
execute if score #this.aj.anim aj.i matches 136 run tp @s ^0 ^-1.918 ^-0.578 ~ ~
execute if score #this.aj.anim aj.i matches 137 run tp @s ^0 ^-1.918 ^-0.571 ~ ~
execute if score #this.aj.anim aj.i matches 138 run tp @s ^0 ^-1.918 ^-0.563 ~ ~
execute if score #this.aj.anim aj.i matches 139 run tp @s ^0 ^-1.918 ^-0.555 ~ ~
execute if score #this.aj.anim aj.i matches 140 run tp @s ^0 ^-1.918 ^-0.546 ~ ~
execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3680}