#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.079f,23.486f,-167.033f]
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.28f,23.691f,-167.057f]
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.481f,23.897f,-167.081f]
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.681f,24.102f,-167.105f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.879f,24.305f,-167.128f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-72.076f,24.506f,-167.152f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-72.266f,24.701f,-167.175f]
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-72.461f,24.901f,-167.198f]
execute if score #this.aj.anim aj.i matches 91 run tp @s ^-3.833 ^-4.571 ^-5.554 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^-3.835 ^-4.556 ^-5.55 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^-3.836 ^-4.541 ^-5.545 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^-3.838 ^-4.526 ^-5.541 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^-3.839 ^-4.512 ^-5.537 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^-3.841 ^-4.497 ^-5.532 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^-3.842 ^-4.483 ^-5.528 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^-3.843 ^-4.468 ^-5.523 ~ ~
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:768}
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:766}