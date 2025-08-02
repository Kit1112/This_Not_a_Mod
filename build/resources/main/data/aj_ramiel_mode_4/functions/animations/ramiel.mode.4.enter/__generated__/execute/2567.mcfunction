#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.202f,29.768f,-36.243f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.103f,29.794f,-36.179f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.005f,29.821f,-36.115f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-55.905f,29.848f,-36.051f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-55.804f,29.876f,-35.986f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-55.702f,29.903f,-35.92f]
execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-55.6f,29.931f,-35.854f]
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-0.019 ^1.647 ^-3.517 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-0.018 ^1.641 ^-3.513 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^-0.017 ^1.635 ^-3.51 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^-0.016 ^1.629 ^-3.506 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^-0.014 ^1.623 ^-3.503 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^-0.013 ^1.617 ^-3.499 ~ ~
execute if score #this.aj.anim aj.i matches 90 run tp @s ^-0.012 ^1.611 ^-3.495 ~ ~
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:415}