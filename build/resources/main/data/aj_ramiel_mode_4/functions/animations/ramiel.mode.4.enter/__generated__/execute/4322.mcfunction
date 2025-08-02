#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 16 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,45f,0f]
execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0.141f,45.144f,0.017f]
execute if score #this.aj.anim aj.i matches 19 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [4.265f,49.367f,0.508f]
execute if score #this.aj.anim aj.i matches 20 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [9.789f,55.022f,1.165f]
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [16.235f,61.622f,1.933f]
execute if score #this.aj.anim aj.i matches 22 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [23.514f,69.074f,2.799f]
execute if score #this.aj.anim aj.i matches 23 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [31.275f,77.019f,3.723f]
execute if score #this.aj.anim aj.i matches 16 run tp @s ^0 ^-1.694 ^-3.264 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^0 ^-1.583 ^-3.106 ~ ~
execute if score #this.aj.anim aj.i matches 18 run tp @s ^-0.002 ^-1.457 ^-2.926 ~ ~
execute if score #this.aj.anim aj.i matches 19 run tp @s ^-0.096 ^-1.374 ^-2.717 ~ ~
execute if score #this.aj.anim aj.i matches 20 run tp @s ^-0.272 ^-1.322 ^-2.495 ~ ~
execute if score #this.aj.anim aj.i matches 21 run tp @s ^-0.535 ^-1.317 ^-2.299 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^-0.887 ^-1.371 ^-2.161 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^-1.294 ^-1.482 ^-2.115 ~ ~
execute if score #this.aj.anim aj.i matches 16 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:657}