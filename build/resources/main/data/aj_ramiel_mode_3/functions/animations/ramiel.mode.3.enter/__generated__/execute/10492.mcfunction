#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 104 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-90f,0f]
execute if score #this.aj.anim aj.i matches 104 run tp @s ^7.571 ^-1.126 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^7.571 ^-1.069 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 106 run tp @s ^7.571 ^-1.011 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 107..113 run tp @s ^7.571 ^-1.004 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 104 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4805}
execute if score #this.aj.anim aj.i matches 105 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4806}
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4807}