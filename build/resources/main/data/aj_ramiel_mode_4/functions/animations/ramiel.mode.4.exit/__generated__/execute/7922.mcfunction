#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.5f,30.5f,-34.5f]
execute if score #this.aj.anim aj.i matches 76 run tp @s ^0.009 ^2.257 ^-4.155 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^0.009 ^2.245 ^-4.144 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^0.009 ^2.234 ^-4.133 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^0.009 ^2.222 ^-4.121 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^0.009 ^2.21 ^-4.109 ~ ~
execute if score #this.aj.anim aj.i matches 81 run tp @s ^0.009 ^2.198 ^-4.097 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^0.009 ^2.186 ^-4.085 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^0.009 ^2.174 ^-4.073 ~ ~
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:578}