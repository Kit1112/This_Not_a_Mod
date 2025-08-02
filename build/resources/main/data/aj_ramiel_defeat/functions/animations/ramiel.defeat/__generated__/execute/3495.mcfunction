#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-41.813f,61.714f,84.611f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-41.842f,62.243f,86.915f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-41.809f,62.712f,89.205f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-41.714f,63.149f,91.617f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-41.565f,63.534f,94.052f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-41.354f,63.889f,96.655f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-41.102f,64.185f,99.219f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-40.796f,64.443f,101.946f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-40.445f,64.654f,104.78f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^4.613 ^-4.026 ^0.858 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^4.654 ^-4.228 ^0.874 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^4.693 ^-4.425 ^0.889 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^4.733 ^-4.63 ^0.904 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^4.771 ^-4.832 ^0.919 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^4.809 ^-5.045 ^0.934 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^4.844 ^-5.25 ^0.948 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^4.879 ^-5.463 ^0.961 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^4.911 ^-5.681 ^0.974 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike6,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:298}