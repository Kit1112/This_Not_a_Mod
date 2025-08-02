#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-84.121f,31.739f,49.576f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-84.624f,32.253f,51.078f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-85.178f,32.851f,52.91f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-85.683f,33.434f,54.793f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-86.138f,33.999f,56.726f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-86.536f,34.535f,58.67f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-86.898f,35.07f,60.744f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^3.961 ^0.502 ^0.469 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^4.071 ^0.424 ^0.469 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^4.259 ^0.264 ^0.469 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^4.414 ^0.099 ^0.444 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^4.558 ^-0.069 ^0.418 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^4.706 ^-0.249 ^0.394 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^4.857 ^-0.441 ^0.373 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^5.008 ^-0.641 ^0.355 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^5.166 ^-0.859 ^0.339 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike2,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:219}