#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 114 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.754f,-27.248f,167.471f]
execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.826f,-27.322f,167.479f]
execute if score #this.aj.anim aj.i matches 116 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.886f,-27.383f,167.486f]
execute if score #this.aj.anim aj.i matches 117 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.932f,-27.431f,167.492f]
execute if score #this.aj.anim aj.i matches 118 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.968f,-27.468f,167.496f]
execute if score #this.aj.anim aj.i matches 119 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.991f,-27.491f,167.499f]
execute if score #this.aj.anim aj.i matches 120 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,-27.5f,167.5f]
execute if score #this.aj.anim aj.i matches 114 run tp @s ^4.861 ^-4.643 ^-7.314 ~ ~
execute if score #this.aj.anim aj.i matches 115 run tp @s ^4.867 ^-4.634 ^-7.308 ~ ~
execute if score #this.aj.anim aj.i matches 116 run tp @s ^4.871 ^-4.627 ^-7.304 ~ ~
execute if score #this.aj.anim aj.i matches 117 run tp @s ^4.875 ^-4.621 ^-7.3 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^4.877 ^-4.617 ^-7.297 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^4.879 ^-4.614 ^-7.295 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^4.88 ^-4.613 ^-7.295 ~ ~
execute if score #this.aj.anim aj.i matches 114 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1119}