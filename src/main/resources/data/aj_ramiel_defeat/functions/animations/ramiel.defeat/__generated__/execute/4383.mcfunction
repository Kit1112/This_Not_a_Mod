#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike11,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-65.27f,-57.87f,-55.558f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike11,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-65.782f,-58.326f,-57.453f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike11,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-66.201f,-58.741f,-59.356f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike11,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-66.553f,-59.14f,-61.383f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike11,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-66.822f,-59.507f,-63.452f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike11,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.023f,-59.86f,-65.693f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike11,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.14f,-60.169f,-67.93f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike11,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.183f,-60.459f,-70.343f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike11,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.148f,-60.718f,-72.89f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^-5.54 ^0.181 ^-0.346 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^-5.751 ^-0.073 ^-0.368 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^-5.954 ^-0.327 ^-0.386 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-6.16 ^-0.596 ^-0.4 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-6.359 ^-0.869 ^-0.411 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^-6.564 ^-1.16 ^-0.419 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^-6.758 ^-1.447 ^-0.424 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^-6.955 ^-1.753 ^-0.426 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^-7.15 ^-2.071 ^-0.425 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike11,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:558}