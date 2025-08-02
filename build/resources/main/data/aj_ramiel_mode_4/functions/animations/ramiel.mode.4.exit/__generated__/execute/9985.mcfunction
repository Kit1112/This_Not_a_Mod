#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,-27.5f,167.5f]
execute if score #this.aj.anim aj.i matches 69 run tp @s ^3.687 ^-4.171 ^-5.354 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^3.603 ^-4.137 ^-5.223 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^3.528 ^-4.105 ^-5.108 ~ ~
execute if score #this.aj.anim aj.i matches 72 run tp @s ^3.469 ^-4.08 ^-5.021 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^3.452 ^-4.067 ^-5.008 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^3.443 ^-4.056 ^-5.008 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^3.434 ^-4.046 ^-5.008 ~ ~
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1105}
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1178}
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1103}
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1102}