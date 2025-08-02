#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 16 as @e[type=armor_stand,tag=aj.ramiel_mode_2.base4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [178.012f,17.777f,92.631f]
execute if score #this.aj.anim aj.i matches 17 as @e[type=armor_stand,tag=aj.ramiel_mode_2.base4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [177.931f,22.119f,92.307f]
execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_2.base4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [177.938f,26.326f,91.971f]
execute if score #this.aj.anim aj.i matches 19 as @e[type=armor_stand,tag=aj.ramiel_mode_2.base4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [178.033f,30.653f,91.611f]
execute if score #this.aj.anim aj.i matches 20 as @e[type=armor_stand,tag=aj.ramiel_mode_2.base4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [178.222f,35.097f,91.236f]
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_2.base4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [178.497f,39.393f,90.881f]
execute if score #this.aj.anim aj.i matches 22 as @e[type=armor_stand,tag=aj.ramiel_mode_2.base4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [178.881f,43.801f,90.537f]
execute if score #this.aj.anim aj.i matches 23 as @e[type=armor_stand,tag=aj.ramiel_mode_2.base4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [179.395f,48.319f,90.227f]
execute if score #this.aj.anim aj.i matches 16 run tp @s ^-2.157 ^-1.76 ^0.09 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^-2.559 ^-1.748 ^0.099 ~ ~
execute if score #this.aj.anim aj.i matches 18 run tp @s ^-2.953 ^-1.742 ^0.105 ~ ~
execute if score #this.aj.anim aj.i matches 19 run tp @s ^-3.351 ^-1.743 ^0.105 ~ ~
execute if score #this.aj.anim aj.i matches 20 run tp @s ^-3.742 ^-1.754 ^0.098 ~ ~
execute if score #this.aj.anim aj.i matches 21 run tp @s ^-4.091 ^-1.775 ^0.084 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^-4.406 ^-1.81 ^0.062 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^-4.674 ^-1.86 ^0.033 ~ ~
execute if score #this.aj.anim aj.i matches 16 as @e[type=armor_stand,tag=aj.ramiel_mode_2.base4,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:473}
execute if score #this.aj.anim aj.i matches 17 as @e[type=armor_stand,tag=aj.ramiel_mode_2.base4,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:474}
execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_2.base4,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:475}
execute if score #this.aj.anim aj.i matches 19 as @e[type=armor_stand,tag=aj.ramiel_mode_2.base4,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:476}
execute if score #this.aj.anim aj.i matches 20 as @e[type=armor_stand,tag=aj.ramiel_mode_2.base4,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:477}
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_2.base4,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:478}
execute if score #this.aj.anim aj.i matches 22 as @e[type=armor_stand,tag=aj.ramiel_mode_2.base4,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:479}
execute if score #this.aj.anim aj.i matches 23 as @e[type=armor_stand,tag=aj.ramiel_mode_2.base4,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:480}