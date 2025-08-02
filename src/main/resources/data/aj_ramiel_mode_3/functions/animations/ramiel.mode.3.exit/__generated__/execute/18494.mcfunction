#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,0f,180f]
execute if score #this.aj.anim aj.i matches 101 run tp @s ^0 ^-1.918 ^-5.948 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^0 ^-1.918 ^-5.899 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^0 ^-1.918 ^-5.863 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^0 ^-1.918 ^-5.829 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^0 ^-1.918 ^-5.793 ~ ~
execute if score #this.aj.anim aj.i matches 106 run tp @s ^0 ^-1.918 ^-5.759 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^0 ^-1.918 ^-5.723 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^0 ^-1.918 ^-5.687 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^0 ^-1.918 ^-5.652 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^0 ^-1.918 ^-5.618 ~ ~
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3520}