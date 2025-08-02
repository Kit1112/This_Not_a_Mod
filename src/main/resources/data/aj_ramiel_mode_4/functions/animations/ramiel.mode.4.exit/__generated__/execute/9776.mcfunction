#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,-27.5f,167.5f]
execute if score #this.aj.anim aj.i matches 54 run tp @s ^3.794 ^-4.243 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^3.792 ^-4.24 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^3.789 ^-4.237 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^3.787 ^-4.235 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^3.785 ^-4.232 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^3.782 ^-4.23 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^3.78 ^-4.227 ^-5.458 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1023}