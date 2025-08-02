#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [33.118f,48.308f,-3.518f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [33.135f,48.286f,-3.492f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [33.153f,48.263f,-3.464f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [33.172f,48.238f,-3.434f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [33.192f,48.211f,-3.401f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [33.214f,48.183f,-3.367f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [33.236f,48.153f,-3.331f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [33.259f,48.122f,-3.294f]
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [33.284f,48.089f,-3.255f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [33.309f,48.055f,-3.215f]
execute if score #this.aj.anim aj.i matches 73 run tp @s ^-0.224 ^-2.314 ^0.224 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^-0.224 ^-2.315 ^0.224 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^-0.224 ^-2.316 ^0.224 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^-0.224 ^-2.317 ^0.224 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^-0.224 ^-2.319 ^0.224 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^-0.224 ^-2.32 ^0.224 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^-0.224 ^-2.321 ^0.224 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^-0.224 ^-2.323 ^0.224 ~ ~
execute if score #this.aj.anim aj.i matches 81 run tp @s ^-0.224 ^-2.324 ^0.224 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^-0.224 ^-2.326 ^0.224 ~ ~
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:545}