#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [13.546f,0.07f,73.928f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [13.371f,0.715f,75.695f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [13.198f,1.454f,77.823f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [13.062f,2.161f,79.977f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [12.961f,2.834f,82.159f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [12.895f,3.458f,84.322f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [12.86f,4.07f,86.601f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^2.867 ^-2.475 ^3.425 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^2.978 ^-2.553 ^3.425 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^3.166 ^-2.713 ^3.425 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^3.229 ^-2.808 ^3.435 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^3.267 ^-2.89 ^3.446 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^3.31 ^-2.981 ^3.457 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^3.358 ^-3.082 ^3.468 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^3.41 ^-3.189 ^3.478 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^3.469 ^-3.308 ^3.489 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike5,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:278}