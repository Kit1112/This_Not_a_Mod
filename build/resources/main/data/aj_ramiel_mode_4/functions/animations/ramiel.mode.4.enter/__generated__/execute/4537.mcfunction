#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-72.646f,25.09f,-167.22f]
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-72.834f,25.283f,-167.242f]
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-73.014f,25.467f,-167.264f]
execute if score #this.aj.anim aj.i matches 102 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-73.19f,25.647f,-167.285f]
execute if score #this.aj.anim aj.i matches 103 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-73.36f,25.821f,-167.305f]
execute if score #this.aj.anim aj.i matches 104 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-73.522f,25.987f,-167.324f]
execute if score #this.aj.anim aj.i matches 105 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-73.681f,26.149f,-167.343f]
execute if score #this.aj.anim aj.i matches 99 run tp @s ^-3.001 ^-4.086 ^-3.936 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^-2.999 ^-4.079 ^-3.935 ~ ~
execute if score #this.aj.anim aj.i matches 101 run tp @s ^-2.997 ^-4.073 ^-3.934 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^-2.995 ^-4.066 ^-3.933 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^-2.994 ^-4.06 ^-3.932 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^-2.992 ^-4.054 ^-3.931 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^-2.99 ^-4.048 ^-3.93 ~ ~
execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:676}
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:675}