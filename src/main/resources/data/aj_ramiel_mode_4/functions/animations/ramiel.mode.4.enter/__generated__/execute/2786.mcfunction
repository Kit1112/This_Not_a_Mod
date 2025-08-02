#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-57.206f,29.496f,-36.89f]
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-57.267f,29.479f,-36.929f]
execute if score #this.aj.anim aj.i matches 56 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-57.319f,29.465f,-36.963f]
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-57.362f,29.453f,-36.991f]
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-57.399f,29.443f,-37.014f]
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-57.426f,29.436f,-37.032f]
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-57.446f,29.431f,-37.045f]
execute if score #this.aj.anim aj.i matches 54 run tp @s ^-0.019 ^2.986 ^-4.908 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^-0.02 ^2.994 ^-4.919 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^-0.02 ^3.001 ^-4.928 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^-0.02 ^3.006 ^-4.937 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^-0.021 ^3.012 ^-4.944 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^-0.021 ^3.016 ^-4.95 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^-0.021 ^3.019 ^-4.955 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:523}