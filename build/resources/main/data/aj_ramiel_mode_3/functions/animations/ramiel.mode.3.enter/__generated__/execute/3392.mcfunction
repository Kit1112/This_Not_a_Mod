#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-146.969f,48.02f,176.857f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-146.943f,47.983f,176.901f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-146.917f,47.946f,176.945f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-146.889f,47.907f,176.99f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-146.861f,47.866f,177.037f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-146.832f,47.825f,177.085f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-146.802f,47.783f,177.134f]
execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-146.771f,47.739f,177.184f]
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-146.739f,47.694f,177.235f]
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-146.707f,47.649f,177.287f]
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-146.675f,47.604f,177.338f]
execute if score #this.aj.anim aj.i matches 83 run tp @s ^-0.199 ^-2.343 ^-0.199 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-0.199 ^-2.345 ^-0.199 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-0.199 ^-2.347 ^-0.199 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^-0.199 ^-2.349 ^-0.199 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^-0.199 ^-2.351 ^-0.199 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^-0.199 ^-2.353 ^-0.199 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^-0.199 ^-2.355 ^-0.199 ~ ~
execute if score #this.aj.anim aj.i matches 90 run tp @s ^-0.199 ^-2.357 ^-0.199 ~ ~
execute if score #this.aj.anim aj.i matches 91 run tp @s ^-0.199 ^-2.359 ^-0.199 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^-0.199 ^-2.361 ^-0.199 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^-0.199 ^-2.363 ^-0.199 ~ ~
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:815}