#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-143.078f,20.885f,-171.281f]
execute if score #this.aj.anim aj.i matches 109 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-143.471f,28.508f,-173.843f]
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-143.964f,36.141f,-176.562f]
execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.623f,43.778f,-179.502f]
execute if score #this.aj.anim aj.i matches 112 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,45f,-180f]
execute if score #this.aj.anim aj.i matches 108 run tp @s ^-5.146 ^-5.617 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^-5.219 ^-5.691 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^-5.285 ^-5.757 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^-5.343 ^-5.816 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 112..116 run tp @s ^-5.352 ^-5.824 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:480}