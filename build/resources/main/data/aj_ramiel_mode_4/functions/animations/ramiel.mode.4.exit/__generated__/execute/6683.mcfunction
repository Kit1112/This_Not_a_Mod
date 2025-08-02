#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-176.353f,-44.565f,-69.8f]
execute if score #this.aj.anim aj.i matches 107 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-173.425f,-36.967f,-83.525f]
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-173.663f,-29.149f,-94.259f]
execute if score #this.aj.anim aj.i matches 109 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-173.189f,34.434f,-97.299f]
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-174.993f,42.169f,-109.964f]
execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-179.993f,48.475f,-123.535f]
execute if score #this.aj.anim aj.i matches 112 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [171.517f,52.546f,-138.793f]
execute if score #this.aj.anim aj.i matches 113 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [161.311f,53.814f,-153.734f]
execute if score #this.aj.anim aj.i matches 106 run tp @s ^0.84 ^-1.341 ^-4.112 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^0.868 ^-0.914 ^-3.986 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^0.742 ^-0.495 ^-3.71 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^0.473 ^-0.178 ^-3.291 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^0.105 ^-0.044 ^-2.773 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^-0.287 ^-0.119 ^-2.233 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^-0.663 ^-0.387 ^-1.705 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^-0.956 ^-0.758 ^-1.261 ~ ~
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:158}
execute if score #this.aj.anim aj.i matches 107 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:159}
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:160}
execute if score #this.aj.anim aj.i matches 109 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:161}
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:162}
execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:163}
execute if score #this.aj.anim aj.i matches 112 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:164}
execute if score #this.aj.anim aj.i matches 113 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:165}