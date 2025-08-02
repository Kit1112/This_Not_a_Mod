#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,45f,90f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0.015f,45.667f,91.778f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0.07f,46.426f,93.949f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0.167f,47.143f,96.178f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0.302f,47.817f,98.464f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0.472f,48.435f,100.758f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0.684f,49.031f,103.199f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^2.32 ^-0.044 ^3.121 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^2.431 ^-0.123 ^3.121 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^2.619 ^-0.282 ^3.121 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^2.758 ^-0.365 ^3.103 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^2.886 ^-0.436 ^3.081 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^3.022 ^-0.52 ^3.062 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^3.164 ^-0.616 ^3.043 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^3.31 ^-0.722 ^3.026 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^3.467 ^-0.844 ^3.01 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:198}