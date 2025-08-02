#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,45f,0f]
execute if score #this.aj.anim aj.i matches 106 run tp @s ^0 ^-1.789 ^-3.512 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^0 ^-1.931 ^-3.612 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^0 ^0.203 ^-0.58 ~ ~
execute if score #this.aj.anim aj.i matches 109..113 run tp @s ^0 ^0.613 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:746}
execute if score #this.aj.anim aj.i matches 107 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:745}