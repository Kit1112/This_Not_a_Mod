#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 126 as @e[type=armor_stand,tag=aj.ramiel_defeat.piece6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,45f,0f]
execute if score #this.aj.anim aj.i matches 126 run tp @s ^0 ^-2.51 ^0.377 ~ ~
execute if score #this.aj.anim aj.i matches 127 run tp @s ^0 ^-2.513 ^0.381 ~ ~
execute if score #this.aj.anim aj.i matches 128 run tp @s ^0 ^-2.516 ^0.384 ~ ~
execute if score #this.aj.anim aj.i matches 129 run tp @s ^0 ^-2.52 ^0.387 ~ ~
execute if score #this.aj.anim aj.i matches 130 run tp @s ^0 ^-2.523 ^0.391 ~ ~
execute if score #this.aj.anim aj.i matches 131 run tp @s ^0 ^-2.955 ^0.823 ~ ~
execute if score #this.aj.anim aj.i matches 132 run tp @s ^0 ^-3.715 ^1.583 ~ ~
execute if score #this.aj.anim aj.i matches 133 run tp @s ^0 ^-4.583 ^2.451 ~ ~
execute if score #this.aj.anim aj.i matches 134 run tp @s ^0 ^-5.393 ^3.26 ~ ~
execute if score #this.aj.anim aj.i matches 126 as @e[type=armor_stand,tag=aj.ramiel_defeat.piece6,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:706}
execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_defeat.piece6,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:707}
execute if score #this.aj.anim aj.i matches 132 as @e[type=armor_stand,tag=aj.ramiel_defeat.piece6,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:708}
execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_defeat.piece6,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:709}
execute if score #this.aj.anim aj.i matches 134 as @e[type=armor_stand,tag=aj.ramiel_defeat.piece6,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:710}