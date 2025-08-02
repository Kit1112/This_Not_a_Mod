#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [12.856f,4.63f,88.862f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [12.881f,5.159f,91.195f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [12.932f,5.626f,93.46f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [13.007f,6.058f,95.795f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [13.103f,6.438f,98.107f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [13.221f,6.786f,100.535f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [13.352f,7.073f,102.888f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [13.501f,7.323f,105.358f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [13.665f,7.525f,107.896f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^3.53 ^-3.433 ^3.499 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^3.595 ^-3.566 ^3.508 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^3.66 ^-3.701 ^3.518 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^3.729 ^-3.844 ^3.527 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^3.797 ^-3.99 ^3.535 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^3.869 ^-4.145 ^3.543 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^3.939 ^-4.299 ^3.551 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^4.011 ^-4.462 ^3.559 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^4.084 ^-4.631 ^3.566 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike5,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:278}