#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-84.121f,31.739f,49.576f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^3.406 ^0.23 ^0.469 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^3.638 ^0.23 ^0.469 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^3.825 ^0.23 ^0.469 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^3.902 ^0.246 ^0.469 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^3.922 ^0.295 ^0.469 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^3.916 ^0.362 ^0.469 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^3.901 ^0.433 ^0.469 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^3.892 ^0.491 ^0.469 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^3.907 ^0.519 ^0.469 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike2,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:219}