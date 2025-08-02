#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,27.5f,-167.5f]
execute if score #this.aj.anim aj.i matches 46..47 run tp @s ^-4.907 ^-4.609 ^-7.295 ~ ~
execute if score #this.aj.anim aj.i matches 48..49 run tp @s ^-4.906 ^-4.608 ^-7.295 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^-4.905 ^-4.607 ^-7.295 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^-4.889 ^-4.602 ^-7.268 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^-4.868 ^-4.594 ^-7.233 ~ ~
execute if score #this.aj.anim aj.i matches 53 run tp @s ^-4.844 ^-4.586 ^-7.192 ~ ~
execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:857}
execute if score #this.aj.anim aj.i matches 51 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:898}
execute if score #this.aj.anim aj.i matches 52 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:856}
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:855}