#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube14,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-8.274f,-180f]
execute if score #this.aj.anim aj.i matches 134 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube14,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-9.368f,-180f]
execute if score #this.aj.anim aj.i matches 135 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube14,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-10.393f,-180f]
execute if score #this.aj.anim aj.i matches 136 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube14,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-11.41f,-180f]
execute if score #this.aj.anim aj.i matches 137 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube14,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-12.357f,-180f]
execute if score #this.aj.anim aj.i matches 138 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube14,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-13.251f,-180f]
execute if score #this.aj.anim aj.i matches 139 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube14,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-14.076f,-180f]
execute if score #this.aj.anim aj.i matches 140 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube14,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-14.879f,-180f]
execute if score #this.aj.anim aj.i matches 133 run tp @s ^0 ^-0.818 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 134 run tp @s ^0 ^-0.813 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 135 run tp @s ^0 ^-0.809 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 136 run tp @s ^0 ^-0.806 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 137 run tp @s ^0 ^-0.802 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 138 run tp @s ^0 ^-0.799 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 139 run tp @s ^0 ^-0.796 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 140 run tp @s ^0 ^-0.793 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube14,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2664}