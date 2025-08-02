#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike11,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-59.985f,-54.32f,-44.985f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike11,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-60.791f,-54.797f,-46.096f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike11,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-61.698f,-55.35f,-47.483f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike11,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-62.545f,-55.889f,-48.943f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike11,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-63.328f,-56.411f,-50.479f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike11,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-64.031f,-56.906f,-52.059f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike11,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-64.693f,-57.403f,-53.784f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^-3.837 ^1.829 ^-0.098 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^-3.948 ^1.751 ^-0.098 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^-4.136 ^1.591 ^-0.098 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^-4.331 ^1.423 ^-0.138 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^-4.524 ^1.249 ^-0.182 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^-4.722 ^1.062 ^-0.222 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^-4.923 ^0.86 ^-0.259 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^-5.123 ^0.65 ^-0.291 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^-5.333 ^0.419 ^-0.32 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike11,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:558}