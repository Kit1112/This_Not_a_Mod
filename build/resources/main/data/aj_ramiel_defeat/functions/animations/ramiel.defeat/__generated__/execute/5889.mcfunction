#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_defeat.piece5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,45f,0f]
execute if score #this.aj.anim aj.i matches 99..103 run tp @s ^-0.152 ^-2.133 ^-0.152 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^-0.239 ^-2.22 ^-0.152 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^-0.344 ^-2.325 ^-0.152 ~ ~
execute if score #this.aj.anim aj.i matches 106 run tp @s ^-0.446 ^-2.427 ^-0.152 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^-0.467 ^-2.448 ^-0.152 ~ ~
execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_defeat.piece5,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:699}