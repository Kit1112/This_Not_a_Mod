#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.5f,30.5f,-34.5f]
execute if score #this.aj.anim aj.i matches 61 run tp @s ^0.008 ^2.745 ^-4.628 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^0.008 ^2.741 ^-4.625 ~ ~
execute if score #this.aj.anim aj.i matches 63 run tp @s ^0.008 ^2.737 ^-4.62 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^0.008 ^2.732 ^-4.615 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^0.008 ^2.726 ^-4.61 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^0.008 ^2.72 ^-4.604 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^0.008 ^2.714 ^-4.598 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^0.008 ^2.708 ^-4.591 ~ ~
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:499}