#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0.925f,49.569f,105.642f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [1.201f,50.068f,108.183f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [1.491f,50.499f,110.667f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [1.807f,50.889f,113.239f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [2.133f,51.223f,115.794f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [2.483f,51.518f,118.482f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [2.825f,51.751f,121.087f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [3.18f,51.941f,123.818f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [3.535f,52.081f,126.614f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^3.625 ^-0.975 ^2.996 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^3.79 ^-1.12 ^2.983 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^3.952 ^-1.269 ^2.973 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^4.119 ^-1.43 ^2.963 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^4.285 ^-1.596 ^2.956 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^4.458 ^-1.779 ^2.95 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^4.624 ^-1.961 ^2.946 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^4.797 ^-2.159 ^2.943 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^4.971 ^-2.367 ^2.942 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:198}