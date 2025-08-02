#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,30f,180f]
execute if score #this.aj.anim aj.i matches 73..80 run tp @s ^-3.574 ^-1.918 ^-6.19 ~ ~
execute if score #this.aj.anim aj.i matches 81 run tp @s ^-3.285 ^-1.918 ^-5.691 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^-2.95 ^-1.918 ^-5.11 ~ ~
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3106}
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3074}