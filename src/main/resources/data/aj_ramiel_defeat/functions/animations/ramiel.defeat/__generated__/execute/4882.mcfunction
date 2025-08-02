#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike14,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [141.613f,-8.429f,102.841f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^-4.956 ^-3.022 ^0.674 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^-5.188 ^-3.022 ^0.674 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^-5.375 ^-3.022 ^0.674 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^-5.452 ^-3.007 ^0.674 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^-5.472 ^-2.958 ^0.674 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^-5.466 ^-2.891 ^0.674 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^-5.451 ^-2.82 ^0.674 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^-5.442 ^-2.762 ^0.674 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^-5.457 ^-2.734 ^0.674 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike14,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:616}