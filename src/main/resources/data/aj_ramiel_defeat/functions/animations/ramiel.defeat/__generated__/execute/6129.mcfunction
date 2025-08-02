#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_defeat.piece7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,45f,0f]
execute if score #this.aj.anim aj.i matches 108 run tp @s ^0.471 ^-2.451 ^-0.152 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^0.474 ^-2.455 ^-0.152 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^0.477 ^-2.458 ^-0.152 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^0.48 ^-2.461 ^-0.152 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^0.484 ^-2.464 ^-0.152 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^0.487 ^-2.468 ^-0.152 ~ ~
execute if score #this.aj.anim aj.i matches 114 run tp @s ^0.49 ^-2.471 ^-0.152 ~ ~
execute if score #this.aj.anim aj.i matches 115 run tp @s ^0.493 ^-2.474 ^-0.152 ~ ~
execute if score #this.aj.anim aj.i matches 116 run tp @s ^0.497 ^-2.477 ^-0.152 ~ ~
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_defeat.piece7,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:713}