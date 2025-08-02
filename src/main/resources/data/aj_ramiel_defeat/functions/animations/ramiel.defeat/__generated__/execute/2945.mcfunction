#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.77f,9.692f,-125.649f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [145.156f,9.143f,-123.819f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [145.57f,8.504f,-121.624f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [145.938f,7.883f,-119.413f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.259f,7.281f,-117.185f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.529f,6.713f,-114.984f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.766f,6.148f,-112.676f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^2.828 ^0.736 ^-2.461 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^2.939 ^0.658 ^-2.461 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^3.127 ^0.498 ^-2.461 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^3.288 ^0.335 ^-2.488 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^3.441 ^0.169 ^-2.518 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^3.598 ^-0.006 ^-2.545 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^3.759 ^-0.191 ^-2.569 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^3.92 ^-0.382 ^-2.59 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^4.09 ^-0.589 ^-2.609 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike3,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:240}