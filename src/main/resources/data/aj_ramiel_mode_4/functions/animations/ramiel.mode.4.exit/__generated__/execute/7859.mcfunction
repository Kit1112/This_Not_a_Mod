#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.5f,30.5f,-34.5f]
execute if score #this.aj.anim aj.i matches 46..47 run tp @s ^0.007 ^4.313 ^-6.135 ~ ~
execute if score #this.aj.anim aj.i matches 48..49 run tp @s ^0.007 ^4.312 ^-6.134 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^0.007 ^4.311 ^-6.133 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^0.007 ^4.288 ^-6.111 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^0.007 ^4.257 ^-6.082 ~ ~
execute if score #this.aj.anim aj.i matches 53 run tp @s ^0.007 ^4.222 ^-6.048 ~ ~
execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:595}
execute if score #this.aj.anim aj.i matches 51 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:636}
execute if score #this.aj.anim aj.i matches 52 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:594}
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:593}