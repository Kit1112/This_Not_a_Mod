#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 117 as @e[type=armor_stand,tag=aj.ramiel_defeat.piece,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,45f,0f]
execute if score #this.aj.anim aj.i matches 117 run tp @s ^0 ^-1.57 ^0.348 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^0 ^-1.567 ^0.351 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^0 ^-1.564 ^0.355 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^0 ^-1.56 ^0.358 ~ ~
execute if score #this.aj.anim aj.i matches 121 run tp @s ^0 ^-1.557 ^0.361 ~ ~
execute if score #this.aj.anim aj.i matches 122 run tp @s ^0 ^-1.554 ^0.364 ~ ~
execute if score #this.aj.anim aj.i matches 123 run tp @s ^0 ^-1.551 ^0.368 ~ ~
execute if score #this.aj.anim aj.i matches 124 run tp @s ^0 ^-1.547 ^0.371 ~ ~
execute if score #this.aj.anim aj.i matches 125 run tp @s ^0 ^-1.544 ^0.374 ~ ~
execute if score #this.aj.anim aj.i matches 117 as @e[type=armor_stand,tag=aj.ramiel_defeat.piece,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:671}