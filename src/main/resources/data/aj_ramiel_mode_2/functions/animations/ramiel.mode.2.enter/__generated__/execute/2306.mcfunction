#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,90f,0f]
execute if score #this.aj.anim aj.i matches 61 run tp @s ^0 ^2.777 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^0 ^2.782 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 63 run tp @s ^0 ^2.787 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^0 ^2.792 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^0 ^2.798 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^0 ^2.804 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^0 ^2.81 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^0 ^2.817 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:958}
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:963}