#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_4.upmost,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,45f]
execute if score #this.aj.anim aj.i matches 91 run tp @s ^0 ^-1.918 ^5.275 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^0 ^-1.918 ^5.13 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^0 ^-1.918 ^5.015 ~ ~
execute if score #this.aj.anim aj.i matches 94..98 run tp @s ^0 ^-1.918 ^5 ~ ~
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_4.upmost,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1504}
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_4.upmost,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1345}
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_4.upmost,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1344}