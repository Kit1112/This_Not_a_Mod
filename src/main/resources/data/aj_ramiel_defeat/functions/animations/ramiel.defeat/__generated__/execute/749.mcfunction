#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [145.18f,-44.427f,-90.513f]
execute if score #this.aj.anim aj.i matches 1 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [148.039f,-40.441f,-94.096f]
execute if score #this.aj.anim aj.i matches 2 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [151.31f,-35.377f,-98.883f]
execute if score #this.aj.anim aj.i matches 3 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [154.351f,-30.12f,-104.634f]
execute if score #this.aj.anim aj.i matches 4 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [157.511f,-24.925f,-112.027f]
execute if score #this.aj.anim aj.i matches 5 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [161.337f,-20.88f,-119.96f]
execute if score #this.aj.anim aj.i matches 6 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [156.24f,-26.859f,-108.989f]
execute if score #this.aj.anim aj.i matches 7 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [150.411f,-36.833f,-97.459f]
execute if score #this.aj.anim aj.i matches 8 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [139.511f,-51.568f,-83.969f]
execute if score #this.aj.anim aj.i matches 0 run tp @s ^2.591 ^-3.096 ^-1.178 ~ ~
execute if score #this.aj.anim aj.i matches 1 run tp @s ^2.111 ^-3.096 ^-1.178 ~ ~
execute if score #this.aj.anim aj.i matches 2 run tp @s ^1.567 ^-3.096 ^-1.178 ~ ~
execute if score #this.aj.anim aj.i matches 3 run tp @s ^1.034 ^-3.096 ^-1.178 ~ ~
execute if score #this.aj.anim aj.i matches 4 run tp @s ^0.49 ^-3.096 ^-1.178 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^0.021 ^-3.087 ^-1.169 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^0.565 ^-2.871 ^-0.953 ~ ~
execute if score #this.aj.anim aj.i matches 7 run tp @s ^1.087 ^-2.663 ^-0.745 ~ ~
execute if score #this.aj.anim aj.i matches 8 run tp @s ^1.642 ^-2.443 ^-0.525 ~ ~
execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:99}
execute if score #this.aj.anim aj.i matches 1 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:100}
execute if score #this.aj.anim aj.i matches 2 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:101}
execute if score #this.aj.anim aj.i matches 3 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:102}
execute if score #this.aj.anim aj.i matches 4 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:103}
execute if score #this.aj.anim aj.i matches 5 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:104}
execute if score #this.aj.anim aj.i matches 6 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:105}
execute if score #this.aj.anim aj.i matches 7 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:106}
execute if score #this.aj.anim aj.i matches 8 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:107}