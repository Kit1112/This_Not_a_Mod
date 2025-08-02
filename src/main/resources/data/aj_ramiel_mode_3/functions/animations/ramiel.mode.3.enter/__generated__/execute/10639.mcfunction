#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down10,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-45f,0f]
execute if score #this.aj.anim aj.i matches 21 run tp @s ^0.554 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^0.562 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^0.57 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 24 run tp @s ^0.577 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^0.584 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^0.59 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 27 run tp @s ^0.596 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^0.601 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^0.605 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 30..31 run tp @s ^0.609 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4943}