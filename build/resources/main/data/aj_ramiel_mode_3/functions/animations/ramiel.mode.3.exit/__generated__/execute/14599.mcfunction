#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,45f]
execute if score #this.aj.anim aj.i matches 141 run tp @s ^0 ^-1.918 ^2.669 ~ ~
execute if score #this.aj.anim aj.i matches 142 run tp @s ^0 ^-1.918 ^2.659 ~ ~
execute if score #this.aj.anim aj.i matches 143 run tp @s ^0 ^-1.918 ^2.649 ~ ~
execute if score #this.aj.anim aj.i matches 144 run tp @s ^0 ^-1.918 ^2.637 ~ ~
execute if score #this.aj.anim aj.i matches 145 run tp @s ^0 ^-1.918 ^2.625 ~ ~
execute if score #this.aj.anim aj.i matches 146 run tp @s ^0 ^-1.918 ^2.612 ~ ~
execute if score #this.aj.anim aj.i matches 147 run tp @s ^0 ^-1.918 ^2.587 ~ ~
execute if score #this.aj.anim aj.i matches 148 run tp @s ^0 ^-1.918 ^2.557 ~ ~
execute if score #this.aj.anim aj.i matches 149 run tp @s ^0 ^-1.918 ^2.52 ~ ~
execute if score #this.aj.anim aj.i matches 150 run tp @s ^0 ^-1.918 ^2.482 ~ ~
execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1314}
execute if score #this.aj.anim aj.i matches 147 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1313}
execute if score #this.aj.anim aj.i matches 148 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1312}
execute if score #this.aj.anim aj.i matches 150 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1310}