#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-146.813f,61.714f,84.611f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-146.842f,62.243f,86.915f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-146.809f,62.712f,89.205f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-146.714f,63.149f,91.617f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-146.565f,63.534f,94.052f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-146.354f,63.889f,96.655f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-146.102f,64.185f,99.219f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.796f,64.443f,101.946f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.445f,64.654f,104.78f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^1.654 ^-6.737 ^-1.714 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^1.587 ^-6.84 ^-1.675 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^1.527 ^-6.935 ^-1.64 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^1.469 ^-7.028 ^-1.608 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^1.415 ^-7.115 ^-1.58 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^1.362 ^-7.2 ^-1.555 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^1.315 ^-7.276 ^-1.534 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^1.269 ^-7.349 ^-1.516 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^1.226 ^-7.416 ^-1.502 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike7,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:318}