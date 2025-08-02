#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,45f,180f]
execute if score #this.aj.anim aj.i matches 141 run tp @s ^-0.536 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 142 run tp @s ^-0.526 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 143 run tp @s ^-0.516 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 144 run tp @s ^-0.504 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 145 run tp @s ^-0.492 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 146 run tp @s ^-0.48 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 147 run tp @s ^-0.454 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 148 run tp @s ^-0.424 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 149 run tp @s ^-0.387 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 150 run tp @s ^-0.349 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2417}