#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,90f,0f]
execute if score #this.aj.anim aj.i matches 76 run tp @s ^0 ^2.878 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^0 ^2.886 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^0 ^2.895 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^0 ^2.904 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^0 ^2.913 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 81 run tp @s ^0 ^2.922 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^0 ^2.931 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^0 ^2.941 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:972}
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:980}