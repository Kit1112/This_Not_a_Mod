#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike14,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [141.613f,-8.429f,102.841f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike14,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [141.753f,-7.776f,101.053f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike14,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [141.885f,-7.028f,98.905f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike14,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [141.981f,-6.315f,96.735f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike14,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [142.043f,-5.637f,94.543f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike14,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [142.073f,-5.01f,92.373f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike14,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [142.073f,-4.397f,90.091f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^-5.511 ^-2.751 ^0.674 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^-5.622 ^-2.829 ^0.674 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^-5.81 ^-2.989 ^0.674 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^-5.863 ^-3.197 ^0.688 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^-5.883 ^-3.413 ^0.705 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^-5.905 ^-3.637 ^0.724 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^-5.926 ^-3.869 ^0.743 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^-5.946 ^-4.102 ^0.763 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^-5.966 ^-4.351 ^0.785 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike14,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:616}