#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.534f,24.485f,172.588f]
execute if score #this.aj.anim aj.i matches 109 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.938f,30.985f,175.129f]
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-34.45f,37.477f,177.512f]
execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.122f,43.963f,179.679f]
execute if score #this.aj.anim aj.i matches 112 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,45f,180f]
execute if score #this.aj.anim aj.i matches 108 run tp @s ^5.146 ^-5.617 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^5.219 ^-5.691 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^5.285 ^-5.757 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^5.343 ^-5.816 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 112..116 run tp @s ^5.352 ^-5.824 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:66}