#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 24 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [39.651f,85.595f,4.72f]
execute if score #this.aj.anim aj.i matches 25 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-131.522f,85.368f,-174.229f]
execute if score #this.aj.anim aj.i matches 26 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-122.78f,76.418f,-173.188f]
execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-114.309f,67.745f,-172.18f]
execute if score #this.aj.anim aj.i matches 28 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-105.785f,59.018f,-171.165f]
execute if score #this.aj.anim aj.i matches 29 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-98.057f,51.106f,-170.245f]
execute if score #this.aj.anim aj.i matches 30 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-90.55f,43.42f,-169.351f]
execute if score #this.aj.anim aj.i matches 24 run tp @s ^-1.735 ^-1.653 ^-2.179 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^-2.162 ^-1.884 ^-2.359 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^-2.515 ^-2.155 ^-2.623 ~ ~
execute if score #this.aj.anim aj.i matches 27 run tp @s ^-2.769 ^-2.449 ^-2.926 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^-2.927 ^-2.765 ^-3.241 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^-2.987 ^-3.057 ^-3.502 ~ ~
execute if score #this.aj.anim aj.i matches 30 run tp @s ^-2.923 ^-3.306 ^-3.707 ~ ~
execute if score #this.aj.anim aj.i matches 24 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:657}