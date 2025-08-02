#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,90f,0f]
execute if score #this.aj.anim aj.i matches 69 run tp @s ^0 ^2.824 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^0 ^2.831 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^0 ^2.838 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 72 run tp @s ^0 ^2.846 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^0 ^2.854 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^0 ^2.861 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^0 ^2.87 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:963}
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:972}