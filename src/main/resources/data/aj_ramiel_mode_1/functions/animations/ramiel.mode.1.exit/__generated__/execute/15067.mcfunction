#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube14,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,21.175f,-180f]
execute if score #this.aj.anim aj.i matches 28 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube14,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,22.976f,-180f]
execute if score #this.aj.anim aj.i matches 29 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube14,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,24.723f,-180f]
execute if score #this.aj.anim aj.i matches 30 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube14,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,26.52f,-180f]
execute if score #this.aj.anim aj.i matches 31 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube14,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,28.369f,-180f]
execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube14,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,30.157f,-180f]
execute if score #this.aj.anim aj.i matches 33 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube14,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,31.992f,-180f]
execute if score #this.aj.anim aj.i matches 34 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube14,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,33.838f,-180f]
execute if score #this.aj.anim aj.i matches 35 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube14,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,35.766f,-180f]
execute if score #this.aj.anim aj.i matches 27 run tp @s ^0 ^-0.927 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^0 ^-0.932 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^0 ^-0.937 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 30 run tp @s ^0 ^-0.943 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 31 run tp @s ^0 ^-0.947 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 32 run tp @s ^0 ^-0.952 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 33 run tp @s ^0 ^-0.957 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 34 run tp @s ^0 ^-0.961 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 35 run tp @s ^0 ^-0.965 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube14,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2664}