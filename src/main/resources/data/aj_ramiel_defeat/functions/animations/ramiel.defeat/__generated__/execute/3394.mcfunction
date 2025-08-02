#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [14.55f,2.233f,155.85f]
execute if score #this.aj.anim aj.i matches 109 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [14.284f,1.572f,158.405f]
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [13.971f,0.888f,160.961f]
execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [13.609f,0.185f,163.519f]
execute if score #this.aj.anim aj.i matches 112 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [13.546f,0.07f,163.928f]
execute if score #this.aj.anim aj.i matches 108 run tp @s ^5.146 ^-5.617 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^5.219 ^-5.691 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^5.285 ^-5.757 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^5.343 ^-5.816 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 112..116 run tp @s ^5.352 ^-5.824 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike5,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:274}