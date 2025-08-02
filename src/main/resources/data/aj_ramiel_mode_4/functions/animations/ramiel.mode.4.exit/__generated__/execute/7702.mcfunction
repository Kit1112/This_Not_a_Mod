#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.5f,30.5f,-34.5f]
execute if score #this.aj.anim aj.i matches 54 run tp @s ^0.008 ^2.761 ^-4.645 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^0.008 ^2.76 ^-4.643 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^0.008 ^2.758 ^-4.642 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^0.008 ^2.756 ^-4.64 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^0.008 ^2.754 ^-4.638 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^0.008 ^2.751 ^-4.635 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^0.008 ^2.748 ^-4.632 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:499}