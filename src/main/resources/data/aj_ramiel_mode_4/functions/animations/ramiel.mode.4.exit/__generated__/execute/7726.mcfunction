#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.5f,30.5f,-34.5f]
execute if score #this.aj.anim aj.i matches 69 run tp @s ^0.008 ^2.701 ^-4.584 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^0.008 ^2.693 ^-4.577 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^0.008 ^2.685 ^-4.568 ~ ~
execute if score #this.aj.anim aj.i matches 72 run tp @s ^0.008 ^2.676 ^-4.56 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^0.008 ^2.666 ^-4.55 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^0.008 ^2.656 ^-4.54 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^0.008 ^2.646 ^-4.53 ~ ~
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:499}