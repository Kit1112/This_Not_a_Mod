#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike13,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-166.732f,53.317f,86.162f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike13,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-166.852f,53.842f,83.735f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike13,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-167.009f,54.302f,81.347f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike13,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-167.206f,54.726f,78.859f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike13,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-167.432f,55.095f,76.373f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike13,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-167.698f,55.429f,73.74f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike13,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-167.977f,55.702f,71.172f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike13,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-168.287f,55.935f,68.465f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike13,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-168.616f,56.117f,65.676f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^-3.963 ^-6.033 ^-0.621 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^-3.923 ^-6.221 ^-0.587 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^-3.885 ^-6.4 ^-0.556 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-3.846 ^-6.581 ^-0.526 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-3.807 ^-6.756 ^-0.499 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^-3.767 ^-6.935 ^-0.473 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^-3.727 ^-7.104 ^-0.45 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^-3.685 ^-7.275 ^-0.43 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^-3.641 ^-7.443 ^-0.411 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike13,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:596}