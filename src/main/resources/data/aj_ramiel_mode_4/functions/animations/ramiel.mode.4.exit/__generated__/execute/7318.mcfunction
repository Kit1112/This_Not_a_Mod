#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-1.139f,15.242f,19.762f]
execute if score #this.aj.anim aj.i matches 107 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-8.818f,23.745f,9.25f]
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-24.855f,30.386f,-8.89f]
execute if score #this.aj.anim aj.i matches 109 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [137.463f,32.153f,169.705f]
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [152.926f,36.539f,164.997f]
execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [167.847f,41.327f,162.673f]
execute if score #this.aj.anim aj.i matches 112 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-177.124f,46.122f,162.688f]
execute if score #this.aj.anim aj.i matches 113 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-163.48f,50.024f,164.704f]
execute if score #this.aj.anim aj.i matches 106 run tp @s ^-1.049 ^-2.189 ^-3.558 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^-1.229 ^-2.457 ^-3.382 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^-1.312 ^-2.743 ^-3.116 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^-1.3 ^-2.988 ^-2.754 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^-1.214 ^-3.136 ^-2.318 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^-1.095 ^-3.159 ^-1.857 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^-0.977 ^-3.062 ^-1.382 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^-0.898 ^-2.89 ^-0.954 ~ ~
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:343}
execute if score #this.aj.anim aj.i matches 107 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:344}
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:345}
execute if score #this.aj.anim aj.i matches 109 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:346}
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:347}
execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:348}
execute if score #this.aj.anim aj.i matches 112 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:349}
execute if score #this.aj.anim aj.i matches 113 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:350}