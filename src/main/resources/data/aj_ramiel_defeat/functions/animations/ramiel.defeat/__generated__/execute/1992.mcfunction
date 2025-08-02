#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [30.684f,82.443f,70.535f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [32.118f,75.748f,69.702f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [32.571f,69.264f,67.978f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [32.773f,62.599f,65.963f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [32.86f,56.019f,63.887f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [32.889f,49.12f,61.677f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [32.881f,42.443f,59.532f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [32.844f,35.443f,57.292f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [32.785f,28.253f,55.008f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^-5.193 ^-1.916 ^0.208 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^-5.308 ^-2.178 ^0.372 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^-5.409 ^-2.452 ^0.527 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-5.5 ^-2.751 ^0.681 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-5.576 ^-3.062 ^0.824 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^-5.639 ^-3.401 ^0.964 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^-5.683 ^-3.739 ^1.087 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^-5.709 ^-4.1 ^1.202 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^-5.715 ^-4.474 ^1.302 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:432}