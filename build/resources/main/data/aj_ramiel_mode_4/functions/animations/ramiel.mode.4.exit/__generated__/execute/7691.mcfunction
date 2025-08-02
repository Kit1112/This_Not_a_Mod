#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.5f,30.5f,-34.5f]
execute if score #this.aj.anim aj.i matches 46 run tp @s ^0.008 ^2.767 ^-4.651 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^0.008 ^2.767 ^-4.65 ~ ~
execute if score #this.aj.anim aj.i matches 48 run tp @s ^0.008 ^2.766 ^-4.65 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^0.008 ^2.766 ^-4.649 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^0.008 ^2.765 ^-4.649 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^0.008 ^2.764 ^-4.648 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^0.008 ^2.763 ^-4.647 ~ ~
execute if score #this.aj.anim aj.i matches 53 run tp @s ^0.008 ^2.762 ^-4.646 ~ ~
execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:499}