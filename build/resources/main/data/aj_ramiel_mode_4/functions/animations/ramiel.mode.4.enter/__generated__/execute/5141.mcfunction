#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-73.836f,26.308f,-167.361f]
execute if score #this.aj.anim aj.i matches 107 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-73.978f,26.453f,-167.378f]
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.118f,26.597f,-167.395f]
execute if score #this.aj.anim aj.i matches 109 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.247f,26.729f,-167.41f]
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.368f,26.853f,-167.425f]
execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.479f,26.967f,-167.438f]
execute if score #this.aj.anim aj.i matches 112 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.581f,27.072f,-167.45f]
execute if score #this.aj.anim aj.i matches 113 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.674f,27.166f,-167.461f]
execute if score #this.aj.anim aj.i matches 106 run tp @s ^-4.883 ^-4.752 ^-7.354 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^-4.887 ^-4.735 ^-7.347 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^-4.89 ^-4.719 ^-7.34 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^-4.893 ^-4.703 ^-7.334 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^-4.896 ^-4.689 ^-7.328 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^-4.899 ^-4.675 ^-7.322 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^-4.901 ^-4.663 ^-7.317 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^-4.904 ^-4.652 ^-7.312 ~ ~
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:858}
execute if score #this.aj.anim aj.i matches 107 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:857}