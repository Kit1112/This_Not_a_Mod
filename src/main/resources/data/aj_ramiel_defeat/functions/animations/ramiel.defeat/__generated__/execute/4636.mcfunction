#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike12,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-28.72f,7.056f,173.837f]
execute if score #this.aj.anim aj.i matches 109 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike12,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-29.288f,7.492f,171.202f]
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike12,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-29.91f,7.923f,168.555f]
execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike12,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-30.586f,8.345f,165.898f]
execute if score #this.aj.anim aj.i matches 112 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike12,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-30.699f,8.411f,165.472f]
execute if score #this.aj.anim aj.i matches 108 run tp @s ^-5.146 ^-5.617 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^-5.219 ^-5.691 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^-5.285 ^-5.757 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^-5.343 ^-5.816 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 112..116 run tp @s ^-5.352 ^-5.824 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike12,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:573}