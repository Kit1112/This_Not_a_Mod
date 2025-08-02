#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-9.918f,57.203f,71.282f]
execute if score #this.aj.anim aj.i matches 54..60 run tp @s ^3.281 ^0.623 ^2.067 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^3.398 ^0.623 ^2.067 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^3.6 ^0.623 ^2.067 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike8,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:337}