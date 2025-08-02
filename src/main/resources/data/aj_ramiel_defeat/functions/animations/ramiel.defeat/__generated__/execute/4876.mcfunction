#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike14,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [141.613f,-8.429f,102.841f]
execute if score #this.aj.anim aj.i matches 54..60 run tp @s ^-4.402 ^-3.022 ^0.674 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^-4.518 ^-3.022 ^0.674 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^-4.72 ^-3.022 ^0.674 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike14,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:616}