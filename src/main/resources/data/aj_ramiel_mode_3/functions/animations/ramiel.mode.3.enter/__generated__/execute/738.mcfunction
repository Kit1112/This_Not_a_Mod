#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 145 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.135f,45.21f,0.196f]
execute if score #this.aj.anim aj.i matches 146 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.149f,45.184f,0.172f]
execute if score #this.aj.anim aj.i matches 147 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.162f,45.16f,0.149f]
execute if score #this.aj.anim aj.i matches 148 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.174f,45.138f,0.129f]
execute if score #this.aj.anim aj.i matches 149 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.186f,45.117f,0.109f]
execute if score #this.aj.anim aj.i matches 150 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.197f,45.098f,0.091f]
execute if score #this.aj.anim aj.i matches 151 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.206f,45.08f,0.074f]
execute if score #this.aj.anim aj.i matches 152 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.215f,45.064f,0.059f]
execute if score #this.aj.anim aj.i matches 153 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.223f,45.049f,0.046f]
execute if score #this.aj.anim aj.i matches 154 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.23f,45.037f,0.034f]
execute if score #this.aj.anim aj.i matches 145 run tp @s ^-0.302 ^-1.335 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 146 run tp @s ^-0.302 ^-1.334 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 147 run tp @s ^-0.302 ^-1.332 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 148 run tp @s ^-0.302 ^-1.331 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 149 run tp @s ^-0.302 ^-1.33 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 150 run tp @s ^-0.302 ^-1.329 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 151 run tp @s ^-0.302 ^-1.328 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 152 run tp @s ^-0.302 ^-1.327 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 153..154 run tp @s ^-0.302 ^-1.326 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 145 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:61}