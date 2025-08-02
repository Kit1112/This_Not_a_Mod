#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-55.108f,30.064f,-35.537f]
execute if score #this.aj.anim aj.i matches 40 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-55.328f,30.004f,-35.679f]
execute if score #this.aj.anim aj.i matches 41 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-55.536f,29.948f,-35.813f]
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-55.732f,29.895f,-35.939f]
execute if score #this.aj.anim aj.i matches 43 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-55.916f,29.845f,-36.058f]
execute if score #this.aj.anim aj.i matches 44 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.088f,29.799f,-36.169f]
execute if score #this.aj.anim aj.i matches 45 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.248f,29.755f,-36.272f]
execute if score #this.aj.anim aj.i matches 39 run tp @s ^-0.004 ^2.747 ^-4.597 ~ ~
execute if score #this.aj.anim aj.i matches 40 run tp @s ^-0.005 ^2.77 ^-4.627 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^-0.007 ^2.793 ^-4.655 ~ ~
execute if score #this.aj.anim aj.i matches 42 run tp @s ^-0.008 ^2.814 ^-4.682 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^-0.01 ^2.834 ^-4.709 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^-0.011 ^2.854 ^-4.734 ~ ~
execute if score #this.aj.anim aj.i matches 45 run tp @s ^-0.012 ^2.872 ^-4.757 ~ ~
execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:507}
execute if score #this.aj.anim aj.i matches 40 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:510}
execute if score #this.aj.anim aj.i matches 41 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:511}
execute if score #this.aj.anim aj.i matches 45 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:515}