#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,45f,0f]
execute if score #this.aj.anim aj.i matches 121..130 run tp @s ^-0.302 ^-1.323 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:61}