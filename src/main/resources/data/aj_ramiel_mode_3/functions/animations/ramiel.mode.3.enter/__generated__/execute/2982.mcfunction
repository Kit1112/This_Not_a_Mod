#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-147.17f,-48.308f,-176.515f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-147.155f,-48.286f,-176.54f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-147.139f,-48.263f,-176.569f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-147.122f,-48.238f,-176.598f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-147.103f,-48.211f,-176.631f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-147.083f,-48.183f,-176.665f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-147.062f,-48.153f,-176.7f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-147.04f,-48.122f,-176.737f]
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-147.017f,-48.089f,-176.776f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-146.994f,-48.055f,-176.816f]
execute if score #this.aj.anim aj.i matches 73 run tp @s ^0.191 ^-2.336 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^0.191 ^-2.337 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^0.191 ^-2.339 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^0.191 ^-2.34 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^0.191 ^-2.341 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^0.191 ^-2.342 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^0.191 ^-2.344 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^0.191 ^-2.345 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 81 run tp @s ^0.191 ^-2.347 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^0.191 ^-2.349 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:725}