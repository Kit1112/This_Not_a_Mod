#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_defeat.piece3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,45f,0f]
execute if score #this.aj.anim aj.i matches 108 run tp @s ^0 ^-1.6 ^-0.623 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^0 ^-1.596 ^-0.626 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^0 ^-1.593 ^-0.629 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^0 ^-1.59 ^-0.632 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^0 ^-1.586 ^-0.636 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^0 ^-1.583 ^-0.639 ~ ~
execute if score #this.aj.anim aj.i matches 114 run tp @s ^0 ^-1.58 ^-0.642 ~ ~
execute if score #this.aj.anim aj.i matches 115 run tp @s ^0 ^-1.577 ^-0.645 ~ ~
execute if score #this.aj.anim aj.i matches 116 run tp @s ^0 ^-1.573 ^-0.649 ~ ~
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_defeat.piece3,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:685}