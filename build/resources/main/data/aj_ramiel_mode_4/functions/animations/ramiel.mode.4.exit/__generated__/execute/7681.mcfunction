#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.5f,30.5f,-34.5f]
execute if score #this.aj.anim aj.i matches 39..40 run tp @s ^0.008 ^2.771 ^-4.655 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^0.008 ^2.77 ^-4.654 ~ ~
execute if score #this.aj.anim aj.i matches 42 run tp @s ^0.008 ^2.769 ^-4.653 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^0.008 ^2.768 ^-4.652 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^0.008 ^2.768 ^-4.651 ~ ~
execute if score #this.aj.anim aj.i matches 45 run tp @s ^0.008 ^2.767 ^-4.651 ~ ~
execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:499}