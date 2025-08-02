#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_defeat.piece8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,45f,0f]
execute if score #this.aj.anim aj.i matches 108 run tp @s ^0 ^-2.451 ^-0.623 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^0 ^-2.455 ^-0.626 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^0 ^-2.458 ^-0.629 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^0 ^-2.461 ^-0.632 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^0 ^-2.464 ^-0.636 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^0 ^-2.468 ^-0.639 ~ ~
execute if score #this.aj.anim aj.i matches 114 run tp @s ^0 ^-2.471 ^-0.642 ~ ~
execute if score #this.aj.anim aj.i matches 115 run tp @s ^0 ^-2.474 ^-0.645 ~ ~
execute if score #this.aj.anim aj.i matches 116 run tp @s ^0 ^-2.477 ^-0.649 ~ ~
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_defeat.piece8,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:720}