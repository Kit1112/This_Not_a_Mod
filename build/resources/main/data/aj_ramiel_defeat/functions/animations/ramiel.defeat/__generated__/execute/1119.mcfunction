#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-32.871f,-7.135f,125.863f]
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-32.705f,-0.178f,128.549f]
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-32.509f,6.87f,131.348f]
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-32.282f,13.868f,134.21f]
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-32.009f,20.955f,137.2f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-31.698f,27.716f,140.149f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-31.305f,34.706f,143.313f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-30.827f,41.511f,146.53f]
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-30.215f,48.272f,149.899f]
execute if score #this.aj.anim aj.i matches 90 run tp @s ^5.104 ^-5.297 ^2.022 ~ ~
execute if score #this.aj.anim aj.i matches 91 run tp @s ^5.283 ^-5.312 ^2.034 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^5.476 ^-5.34 ^2.015 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^5.665 ^-5.376 ^1.957 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^5.836 ^-5.419 ^1.849 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^5.962 ^-5.461 ^1.698 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^6.032 ^-5.499 ^1.49 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^6.035 ^-5.53 ^1.251 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^5.945 ^-5.537 ^0.981 ~ ~
execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:147}
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:148}
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:150}
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:151}
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:152}
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:153}
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:154}
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:155}