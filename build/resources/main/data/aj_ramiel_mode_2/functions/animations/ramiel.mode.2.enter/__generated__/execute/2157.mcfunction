#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,90f,0f]
execute if score #this.aj.anim aj.i matches 61 run tp @s ^0 ^-6.613 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^0 ^-6.618 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 63 run tp @s ^0 ^-6.623 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^0 ^-6.628 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^0 ^-6.634 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^0 ^-6.64 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^0 ^-6.646 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^0 ^-6.653 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:890}
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:895}