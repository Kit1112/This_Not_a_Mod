#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,45f,90f]
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,50.929f,90f]
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,57.988f,90f]
execute if score #this.aj.anim aj.i matches 54..60 run tp @s ^0 ^-1.918 ^-0.074 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^0.116 ^-1.926 ^-0.073 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^0.319 ^-1.935 ^-0.072 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:178}