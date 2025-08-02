#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,-27.5f,167.5f]
execute if score #this.aj.anim aj.i matches 76 run tp @s ^3.425 ^-4.036 ^-5.008 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^3.416 ^-4.026 ^-5.008 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^3.407 ^-4.015 ^-5.008 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^3.398 ^-4.005 ^-5.008 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^3.389 ^-3.995 ^-5.008 ~ ~
execute if score #this.aj.anim aj.i matches 81 run tp @s ^3.38 ^-3.985 ^-5.008 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^3.37 ^-3.974 ^-5.008 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^3.362 ^-3.964 ^-5.008 ~ ~
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1102}