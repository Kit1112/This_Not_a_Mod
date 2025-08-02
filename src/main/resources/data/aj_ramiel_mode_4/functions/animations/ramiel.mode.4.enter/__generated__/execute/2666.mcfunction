#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 8 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,45f,0f]
execute if score #this.aj.anim aj.i matches 8..11 run tp @s ^0 ^0.613 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 12 run tp @s ^0 ^0.511 ^-0.145 ~ ~
execute if score #this.aj.anim aj.i matches 13 run tp @s ^0 ^-1.947 ^-3.623 ~ ~
execute if score #this.aj.anim aj.i matches 14 run tp @s ^0 ^-1.814 ^-3.529 ~ ~
execute if score #this.aj.anim aj.i matches 15 run tp @s ^0 ^-1.641 ^-3.407 ~ ~
execute if score #this.aj.anim aj.i matches 8 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:483}
execute if score #this.aj.anim aj.i matches 14 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:484}
execute if score #this.aj.anim aj.i matches 15 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:485}