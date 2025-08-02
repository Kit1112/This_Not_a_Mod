#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,45f,0f]
execute if score #this.aj.anim aj.i matches 141 run tp @s ^0 ^-1.918 ^0.536 ~ ~
execute if score #this.aj.anim aj.i matches 142 run tp @s ^0 ^-1.918 ^0.526 ~ ~
execute if score #this.aj.anim aj.i matches 143 run tp @s ^0 ^-1.918 ^0.516 ~ ~
execute if score #this.aj.anim aj.i matches 144 run tp @s ^0 ^-1.918 ^0.504 ~ ~
execute if score #this.aj.anim aj.i matches 145 run tp @s ^0 ^-1.918 ^0.492 ~ ~
execute if score #this.aj.anim aj.i matches 146 run tp @s ^0 ^-1.918 ^0.48 ~ ~
execute if score #this.aj.anim aj.i matches 147 run tp @s ^0 ^-1.918 ^0.454 ~ ~
execute if score #this.aj.anim aj.i matches 148 run tp @s ^0 ^-1.918 ^0.424 ~ ~
execute if score #this.aj.anim aj.i matches 149 run tp @s ^0 ^-1.918 ^0.387 ~ ~
execute if score #this.aj.anim aj.i matches 150 run tp @s ^0 ^-1.918 ^0.349 ~ ~
execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1154}