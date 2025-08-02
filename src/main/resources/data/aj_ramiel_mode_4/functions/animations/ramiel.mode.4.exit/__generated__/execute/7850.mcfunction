#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.5f,30.5f,-34.5f]
execute if score #this.aj.anim aj.i matches 39..40 run tp @s ^0.007 ^4.317 ^-6.139 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^0.007 ^4.316 ^-6.138 ~ ~
execute if score #this.aj.anim aj.i matches 42 run tp @s ^0.007 ^4.315 ^-6.138 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^0.007 ^4.315 ^-6.137 ~ ~
execute if score #this.aj.anim aj.i matches 44..45 run tp @s ^0.007 ^4.314 ^-6.136 ~ ~
execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:595}