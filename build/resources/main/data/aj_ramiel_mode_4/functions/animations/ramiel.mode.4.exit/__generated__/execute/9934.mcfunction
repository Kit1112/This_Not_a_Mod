#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,-27.5f,167.5f]
execute if score #this.aj.anim aj.i matches 46 run tp @s ^4.866 ^-4.598 ^-7.295 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^4.864 ^-4.596 ^-7.295 ~ ~
execute if score #this.aj.anim aj.i matches 48 run tp @s ^4.861 ^-4.593 ^-7.295 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^4.859 ^-4.59 ^-7.295 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^4.857 ^-4.588 ^-7.295 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^4.839 ^-4.58 ^-7.268 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^4.816 ^-4.571 ^-7.232 ~ ~
execute if score #this.aj.anim aj.i matches 53 run tp @s ^4.791 ^-4.561 ^-7.192 ~ ~
execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1119}
execute if score #this.aj.anim aj.i matches 51 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1160}
execute if score #this.aj.anim aj.i matches 52 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1118}
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1117}