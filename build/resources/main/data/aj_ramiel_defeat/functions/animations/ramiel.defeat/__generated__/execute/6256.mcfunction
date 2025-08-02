#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 117 as @e[type=armor_stand,tag=aj.ramiel_defeat.piece8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,45f,0f]
execute if score #this.aj.anim aj.i matches 117 run tp @s ^0 ^-2.481 ^-0.652 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^0 ^-2.484 ^-0.655 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^0 ^-2.487 ^-0.658 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^0 ^-2.49 ^-0.662 ~ ~
execute if score #this.aj.anim aj.i matches 121 run tp @s ^0 ^-2.494 ^-0.665 ~ ~
execute if score #this.aj.anim aj.i matches 122 run tp @s ^0 ^-2.497 ^-0.668 ~ ~
execute if score #this.aj.anim aj.i matches 123 run tp @s ^0 ^-2.5 ^-0.672 ~ ~
execute if score #this.aj.anim aj.i matches 124 run tp @s ^0 ^-2.503 ^-0.675 ~ ~
execute if score #this.aj.anim aj.i matches 125 run tp @s ^0 ^-2.507 ^-0.678 ~ ~
execute if score #this.aj.anim aj.i matches 117 as @e[type=armor_stand,tag=aj.ramiel_defeat.piece8,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:720}