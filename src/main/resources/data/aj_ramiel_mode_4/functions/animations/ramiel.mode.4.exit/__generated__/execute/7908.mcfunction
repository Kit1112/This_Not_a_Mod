#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.5f,30.5f,-34.5f]
execute if score #this.aj.anim aj.i matches 69 run tp @s ^0.008 ^2.613 ^-4.5 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^0.008 ^2.496 ^-4.387 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^0.009 ^2.39 ^-4.285 ~ ~
execute if score #this.aj.anim aj.i matches 72 run tp @s ^0.009 ^2.308 ^-4.207 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^0.009 ^2.288 ^-4.186 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^0.009 ^2.278 ^-4.176 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^0.009 ^2.268 ^-4.166 ~ ~
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:581}
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:654}
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:579}
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:578}