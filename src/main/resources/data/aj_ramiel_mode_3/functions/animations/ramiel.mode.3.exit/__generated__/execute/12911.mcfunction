#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-45f,0f]
execute if score #this.aj.anim aj.i matches 147 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-36.92f,-41.303f,2.922f]
execute if score #this.aj.anim aj.i matches 148 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-38.186f,-36.276f,5.565f]
execute if score #this.aj.anim aj.i matches 149 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-38.351f,-31.674f,7f]
execute if score #this.aj.anim aj.i matches 150 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-37.94f,-28.695f,7.565f]
execute if score #this.aj.anim aj.i matches 141..146 run tp @s ^0.246 ^-1.37 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 147 run tp @s ^0.24 ^-1.184 ^0.24 ~ ~
execute if score #this.aj.anim aj.i matches 148 run tp @s ^0.221 ^-0.894 ^0.221 ~ ~
execute if score #this.aj.anim aj.i matches 149 run tp @s ^0.198 ^-0.522 ^0.198 ~ ~
execute if score #this.aj.anim aj.i matches 150 run tp @s ^0.179 ^-0.132 ^0.179 ~ ~
execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:151}
execute if score #this.aj.anim aj.i matches 147 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:150}
execute if score #this.aj.anim aj.i matches 148 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:215}
execute if score #this.aj.anim aj.i matches 149 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:216}
execute if score #this.aj.anim aj.i matches 150 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:217}