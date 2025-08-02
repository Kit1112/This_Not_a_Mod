#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,45f,90f]
execute if score #this.aj.anim aj.i matches 141 run tp @s ^-2.669 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 142 run tp @s ^-2.659 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 143 run tp @s ^-2.649 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 144 run tp @s ^-2.637 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 145 run tp @s ^-2.625 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 146 run tp @s ^-2.612 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 147 run tp @s ^-2.587 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 148 run tp @s ^-2.557 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 149 run tp @s ^-2.52 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 150 run tp @s ^-2.482 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2577}
execute if score #this.aj.anim aj.i matches 147 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2576}
execute if score #this.aj.anim aj.i matches 148 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2575}
execute if score #this.aj.anim aj.i matches 150 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2573}