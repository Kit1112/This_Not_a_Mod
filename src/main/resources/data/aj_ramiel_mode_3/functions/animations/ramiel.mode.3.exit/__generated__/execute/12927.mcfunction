#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 151 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-37.57f,-27.184f,7.768f]
execute if score #this.aj.anim aj.i matches 152 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-37.477f,-26.863f,7.804f]
execute if score #this.aj.anim aj.i matches 153 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-37.714f,-27.72f,7.702f]
execute if score #this.aj.anim aj.i matches 154 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-38.148f,-29.846f,7.375f]
execute if score #this.aj.anim aj.i matches 155 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-38.4f,-32.828f,6.711f]
execute if score #this.aj.anim aj.i matches 156 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-38.183f,-36.298f,5.556f]
execute if score #this.aj.anim aj.i matches 157 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-37.522f,-39.437f,4.06f]
execute if score #this.aj.anim aj.i matches 158 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-36.68f,-41.937f,2.487f]
execute if score #this.aj.anim aj.i matches 159 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.874f,-43.781f,1.071f]
execute if score #this.aj.anim aj.i matches 160 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.309f,-44.891f,0.1f]
execute if score #this.aj.anim aj.i matches 151 run tp @s ^0.174 ^0.237 ^0.174 ~ ~
execute if score #this.aj.anim aj.i matches 152 run tp @s ^0.19 ^0.568 ^0.19 ~ ~
execute if score #this.aj.anim aj.i matches 153 run tp @s ^0.238 ^0.805 ^0.238 ~ ~
execute if score #this.aj.anim aj.i matches 154 run tp @s ^0.33 ^0.93 ^0.33 ~ ~
execute if score #this.aj.anim aj.i matches 155 run tp @s ^0.46 ^0.981 ^0.46 ~ ~
execute if score #this.aj.anim aj.i matches 156 run tp @s ^0.627 ^0.981 ^0.627 ~ ~
execute if score #this.aj.anim aj.i matches 157 run tp @s ^0.803 ^0.946 ^0.803 ~ ~
execute if score #this.aj.anim aj.i matches 158 run tp @s ^0.968 ^0.897 ^0.968 ~ ~
execute if score #this.aj.anim aj.i matches 159 run tp @s ^1.115 ^0.85 ^1.115 ~ ~
execute if score #this.aj.anim aj.i matches 160 run tp @s ^1.22 ^0.825 ^1.22 ~ ~
execute if score #this.aj.anim aj.i matches 151 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:218}
execute if score #this.aj.anim aj.i matches 152 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:219}
execute if score #this.aj.anim aj.i matches 153 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:144}
execute if score #this.aj.anim aj.i matches 154 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:220}
execute if score #this.aj.anim aj.i matches 155 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:221}
execute if score #this.aj.anim aj.i matches 156 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:222}
execute if score #this.aj.anim aj.i matches 157 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:223}
execute if score #this.aj.anim aj.i matches 158 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:224}
execute if score #this.aj.anim aj.i matches 159 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:225}
execute if score #this.aj.anim aj.i matches 160 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:226}