#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-73.836f,26.308f,-167.361f]
execute if score #this.aj.anim aj.i matches 107 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-73.978f,26.453f,-167.378f]
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.118f,26.597f,-167.395f]
execute if score #this.aj.anim aj.i matches 109 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.247f,26.729f,-167.41f]
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.368f,26.853f,-167.425f]
execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.479f,26.967f,-167.438f]
execute if score #this.aj.anim aj.i matches 112 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.581f,27.072f,-167.45f]
execute if score #this.aj.anim aj.i matches 113 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.674f,27.166f,-167.461f]
execute if score #this.aj.anim aj.i matches 106 run tp @s ^-2.989 ^-4.042 ^-3.929 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^-2.987 ^-4.037 ^-3.929 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^-2.986 ^-4.032 ^-3.928 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^-2.984 ^-4.027 ^-3.927 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^-2.983 ^-4.022 ^-3.926 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^-2.982 ^-4.018 ^-3.925 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^-2.981 ^-4.014 ^-3.924 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^-2.98 ^-4.011 ^-3.924 ~ ~
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:675}
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:718}