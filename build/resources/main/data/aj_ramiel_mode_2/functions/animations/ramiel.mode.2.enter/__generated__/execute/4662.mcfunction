#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer3,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-90f,0f,7.686f]
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer3,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-90f,0f,16.64f]
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer3,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-90f,0f,26.584f]
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer3,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-90f,0f,36.349f]
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer3,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-90f,0f,47.856f]
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer3,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-90f,0f,59.876f]
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer3,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-90f,0f,73.746f]
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer3,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-90f,0f,87.941f]
execute if score #this.aj.anim aj.i matches 61 run tp @s ^-0.047 ^-1.954 ^-3.443 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^-0.052 ^-1.946 ^-3.447 ~ ~
execute if score #this.aj.anim aj.i matches 63 run tp @s ^-0.056 ^-1.937 ^-3.451 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^-0.058 ^-1.927 ^-3.454 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^-0.059 ^-1.915 ^-3.458 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^-0.057 ^-1.903 ^-3.463 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^-0.052 ^-1.89 ^-3.468 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^-0.043 ^-1.878 ^-3.472 ~ ~
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer3,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:2337}
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer3,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:2342}