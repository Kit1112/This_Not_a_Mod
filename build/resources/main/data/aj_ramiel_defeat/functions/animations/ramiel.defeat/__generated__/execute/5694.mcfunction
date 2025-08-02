#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 126 as @e[type=armor_stand,tag=aj.ramiel_defeat.piece3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,45f,0f]
execute if score #this.aj.anim aj.i matches 126 run tp @s ^0 ^-1.541 ^-0.681 ~ ~
execute if score #this.aj.anim aj.i matches 127 run tp @s ^0 ^-1.538 ^-0.685 ~ ~
execute if score #this.aj.anim aj.i matches 128 run tp @s ^0 ^-1.534 ^-0.688 ~ ~
execute if score #this.aj.anim aj.i matches 129 run tp @s ^0 ^-1.531 ^-0.691 ~ ~
execute if score #this.aj.anim aj.i matches 130 run tp @s ^0 ^-1.528 ^-0.694 ~ ~
execute if score #this.aj.anim aj.i matches 131 run tp @s ^0 ^-1.095 ^-1.127 ~ ~
execute if score #this.aj.anim aj.i matches 132 run tp @s ^0 ^-0.336 ^-1.886 ~ ~
execute if score #this.aj.anim aj.i matches 133 run tp @s ^0 ^0.532 ^-2.754 ~ ~
execute if score #this.aj.anim aj.i matches 134 run tp @s ^0 ^1.342 ^-3.564 ~ ~
execute if score #this.aj.anim aj.i matches 126 as @e[type=armor_stand,tag=aj.ramiel_defeat.piece3,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:685}
execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_defeat.piece3,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:686}
execute if score #this.aj.anim aj.i matches 132 as @e[type=armor_stand,tag=aj.ramiel_defeat.piece3,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:687}
execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_defeat.piece3,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:688}
execute if score #this.aj.anim aj.i matches 134 as @e[type=armor_stand,tag=aj.ramiel_defeat.piece3,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:689}